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
	<43.010063, 32.507195, 23.368250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713947, 32.755257, 23.264416>,  <42.536278, 32.904095, 23.202114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713947, 32.755257, 23.264416>,  <43.010063, 32.507195, 23.368250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713947, 32.755257, 23.264416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387342, -0.077846, 0.918643,
		0.549492, 0.780609, 0.297840,
		-0.740287, 0.620153, -0.259587,
		42.491859, 32.941303, 23.186539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892292, 33.175236, 23.661697>,  <43.010063, 32.507195, 23.368250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892292, 33.175236, 23.661697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545025, 32.987309, 23.597744>,  <42.336666, 32.874554, 23.559372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545025, 32.987309, 23.597744>,  <42.892292, 33.175236, 23.661697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545025, 32.987309, 23.597744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230310, 0.096043, 0.968366,
		-0.439602, 0.877522, -0.191585,
		-0.868163, -0.469819, -0.159882,
		42.284576, 32.846363, 23.549780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374535, 33.654179, 23.788418>,  <42.892292, 33.175236, 23.661697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374535, 33.654179, 23.788418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306770, 33.269737, 23.875675>,  <42.266109, 33.039074, 23.928030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306770, 33.269737, 23.875675>,  <42.374535, 33.654179, 23.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306770, 33.269737, 23.875675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152252, 0.244208, 0.957696,
		-0.973714, 0.129035, -0.187701,
		-0.169415, -0.961100, 0.218143,
		42.255947, 32.981407, 23.941118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728523, 33.666756, 23.996298>,  <42.374535, 33.654179, 23.788418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728523, 33.666756, 23.996298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946438, 33.381500, 24.172775>,  <42.077187, 33.210346, 24.278662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946438, 33.381500, 24.172775>,  <41.728523, 33.666756, 23.996298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946438, 33.381500, 24.172775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190646, 0.407017, 0.893303,
		-0.816619, -0.570767, 0.085779,
		0.544782, -0.713135, 0.441193,
		42.109871, 33.167561, 24.305134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945953, 33.474010, 24.015081>,  <41.728523, 33.666756, 23.996298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945953, 33.474010, 24.015081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566166, 33.420303, 23.901611>,  <40.338291, 33.388077, 23.833529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566166, 33.420303, 23.901611>,  <40.945953, 33.474010, 24.015081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566166, 33.420303, 23.901611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287765, 0.011675, 0.957630,
		-0.125271, 0.990876, -0.049724,
		-0.949473, -0.134272, -0.283677,
		40.281322, 33.380020, 23.816509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672588, 33.813786, 24.532963>,  <40.945953, 33.474010, 24.015081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672588, 33.813786, 24.532963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384769, 33.613544, 24.340443>,  <40.212078, 33.493401, 24.224930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384769, 33.613544, 24.340443>,  <40.672588, 33.813786, 24.532963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384769, 33.613544, 24.340443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447817, -0.195235, 0.872550,
		-0.530770, 0.843373, -0.083700,
		-0.719544, -0.500605, -0.481302,
		40.168907, 33.463364, 24.196053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178143, 34.021057, 24.872227>,  <40.672588, 33.813786, 24.532963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178143, 34.021057, 24.872227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043488, 33.684464, 24.703194>,  <39.962696, 33.482506, 24.601774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043488, 33.684464, 24.703194>,  <40.178143, 34.021057, 24.872227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043488, 33.684464, 24.703194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278878, -0.339549, 0.898295,
		-0.899391, 0.420246, -0.120368,
		-0.336634, -0.841486, -0.422585,
		39.942497, 33.432018, 24.576418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571571, 33.883980, 25.105536>,  <40.178143, 34.021057, 24.872227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571571, 33.883980, 25.105536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654224, 33.515343, 24.974098>,  <39.703815, 33.294159, 24.895237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654224, 33.515343, 24.974098>,  <39.571571, 33.883980, 25.105536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654224, 33.515343, 24.974098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261196, -0.375610, 0.889210,
		-0.942911, -0.097911, -0.318328,
		0.206631, -0.921592, -0.328593,
		39.716213, 33.238865, 24.875521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019260, 33.499481, 25.363365>,  <39.571571, 33.883980, 25.105536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019260, 33.499481, 25.363365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320343, 33.248005, 25.285206>,  <39.500992, 33.097118, 25.238310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320343, 33.248005, 25.285206>,  <39.019260, 33.499481, 25.363365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320343, 33.248005, 25.285206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040235, -0.340169, 0.939503,
		-0.657129, -0.699306, -0.281341,
		0.752704, -0.628694, -0.195398,
		39.546154, 33.059399, 25.226587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855438, 32.923309, 25.742235>,  <39.019260, 33.499481, 25.363365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855438, 32.923309, 25.742235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245766, 32.873550, 25.670338>,  <39.479961, 32.843693, 25.627199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245766, 32.873550, 25.670338>,  <38.855438, 32.923309, 25.742235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245766, 32.873550, 25.670338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105585, -0.451756, 0.885872,
		-0.191402, -0.883426, -0.427696,
		0.975816, -0.124400, -0.179743,
		39.538509, 32.836231, 25.616415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029282, 32.181301, 25.956156>,  <38.855438, 32.923309, 25.742235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029282, 32.181301, 25.956156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377853, 32.377460, 25.951794>,  <39.586998, 32.495155, 25.949177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377853, 32.377460, 25.951794>,  <39.029282, 32.181301, 25.956156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377853, 32.377460, 25.951794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338945, -0.585931, 0.736071,
		0.354577, -0.645132, -0.676816,
		0.871431, 0.490397, -0.010907,
		39.639282, 32.524578, 25.948523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572853, 31.639429, 25.808693>,  <39.029282, 32.181301, 25.956156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572853, 31.639429, 25.808693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755844, 31.944897, 25.990913>,  <39.865639, 32.128178, 26.100245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755844, 31.944897, 25.990913>,  <39.572853, 31.639429, 25.808693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755844, 31.944897, 25.990913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361643, -0.627801, 0.689260,
		0.812363, -0.150572, -0.563378,
		0.457473, 0.763671, 0.455549,
		39.893085, 32.174000, 26.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269222, 31.399227, 25.913158>,  <39.572853, 31.639429, 25.808693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269222, 31.399227, 25.913158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238617, 31.712883, 26.159500>,  <40.220253, 31.901075, 26.307304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238617, 31.712883, 26.159500>,  <40.269222, 31.399227, 25.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238617, 31.712883, 26.159500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293834, -0.572500, 0.765445,
		0.952789, 0.239525, -0.186602,
		-0.076514, 0.784137, 0.615852,
		40.215664, 31.948124, 26.344255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865822, 31.310457, 26.285101>,  <40.269222, 31.399227, 25.913158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865822, 31.310457, 26.285101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628277, 31.551682, 26.498135>,  <40.485752, 31.696417, 26.625956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628277, 31.551682, 26.498135>,  <40.865822, 31.310457, 26.285101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628277, 31.551682, 26.498135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264761, -0.478604, 0.837162,
		0.759757, 0.638165, 0.124557,
		-0.593861, 0.603062, 0.532584,
		40.450119, 31.732599, 26.657909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350788, 31.671919, 26.781275>,  <40.865822, 31.310457, 26.285101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350788, 31.671919, 26.781275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982285, 31.696381, 26.934921>,  <40.761181, 31.711058, 27.027109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982285, 31.696381, 26.934921>,  <41.350788, 31.671919, 26.781275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982285, 31.696381, 26.934921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290354, -0.548977, 0.783784,
		0.258801, 0.833597, 0.487994,
		-0.921258, 0.061153, 0.384114,
		40.705906, 31.714727, 27.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448696, 31.687342, 27.470087>,  <41.350788, 31.671919, 26.781275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448696, 31.687342, 27.470087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067768, 31.573158, 27.426994>,  <40.839211, 31.504648, 27.401138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067768, 31.573158, 27.426994>,  <41.448696, 31.687342, 27.470087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067768, 31.573158, 27.426994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092114, -0.605603, 0.790418,
		-0.290871, 0.742805, 0.603021,
		-0.952318, -0.285456, -0.107730,
		40.782074, 31.487522, 27.394676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419800, 31.378580, 28.079363>,  <41.448696, 31.687342, 27.470087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419800, 31.378580, 28.079363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087372, 31.250263, 27.897633>,  <40.887917, 31.173273, 27.788595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087372, 31.250263, 27.897633>,  <41.419800, 31.378580, 28.079363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087372, 31.250263, 27.897633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072734, -0.872563, 0.483056,
		-0.551389, 0.368409, 0.748495,
		-0.831071, -0.320793, -0.454326,
		40.838051, 31.154026, 27.761335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989277, 31.225389, 28.639669>,  <41.419800, 31.378580, 28.079363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989277, 31.225389, 28.639669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931808, 31.002750, 28.312363>,  <40.897327, 30.869167, 28.115978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931808, 31.002750, 28.312363>,  <40.989277, 31.225389, 28.639669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931808, 31.002750, 28.312363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190908, -0.826900, 0.528951,
		-0.971036, -0.080217, 0.225063,
		-0.143673, -0.556597, -0.818265,
		40.888706, 30.835772, 28.066883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498390, 30.737890, 28.870771>,  <40.989277, 31.225389, 28.639669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498390, 30.737890, 28.870771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646755, 30.610538, 28.521816>,  <40.735775, 30.534128, 28.312443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646755, 30.610538, 28.521816>,  <40.498390, 30.737890, 28.870771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646755, 30.610538, 28.521816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065647, -0.928058, 0.366605,
		-0.926327, -0.193264, -0.323371,
		0.370958, -0.318368, -0.872372,
		40.758030, 30.515026, 28.260099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289452, 29.967396, 28.921490>,  <40.498390, 30.737890, 28.870771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289452, 29.967396, 28.921490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553806, 29.996990, 28.622757>,  <40.712418, 30.014748, 28.443518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553806, 29.996990, 28.622757>,  <40.289452, 29.967396, 28.921490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553806, 29.996990, 28.622757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341892, -0.915550, 0.211846,
		-0.668088, -0.395342, -0.630367,
		0.660884, 0.073986, -0.746832,
		40.752071, 30.019186, 28.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208527, 29.367622, 28.582853>,  <40.289452, 29.967396, 28.921490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208527, 29.367622, 28.582853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573586, 29.492912, 28.477802>,  <40.792622, 29.568087, 28.414772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573586, 29.492912, 28.477802>,  <40.208527, 29.367622, 28.582853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573586, 29.492912, 28.477802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393388, -0.847573, 0.356183,
		-0.111032, -0.428383, -0.896750,
		0.912643, 0.313223, -0.262628,
		40.847378, 29.586880, 28.399014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426838, 28.886372, 28.105089>,  <40.208527, 29.367622, 28.582853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426838, 28.886372, 28.105089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748402, 29.042721, 28.284401>,  <40.941338, 29.136530, 28.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748402, 29.042721, 28.284401>,  <40.426838, 28.886372, 28.105089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748402, 29.042721, 28.284401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334418, -0.920352, 0.202775,
		0.491833, -0.013100, -0.870591,
		0.803906, 0.390872, 0.448278,
		40.989574, 29.159983, 28.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867954, 28.411390, 27.974941>,  <40.426838, 28.886372, 28.105089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867954, 28.411390, 27.974941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059563, 28.623486, 28.254765>,  <41.174526, 28.750744, 28.422659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059563, 28.623486, 28.254765>,  <40.867954, 28.411390, 27.974941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059563, 28.623486, 28.254765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457073, -0.831049, 0.316925,
		0.749416, 0.167937, -0.640448,
		0.479020, 0.530240, 0.699561,
		41.203270, 28.782558, 28.464632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553314, 28.276588, 27.952837>,  <40.867954, 28.411390, 27.974941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553314, 28.276588, 27.952837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515621, 28.391216, 28.334202>,  <41.493004, 28.459993, 28.563021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515621, 28.391216, 28.334202>,  <41.553314, 28.276588, 27.952837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515621, 28.391216, 28.334202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458054, -0.837806, 0.297097,
		0.883915, 0.464712, -0.052315,
		-0.094235, 0.286572, 0.953413,
		41.487350, 28.477188, 28.620226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194786, 28.103086, 28.275583>,  <41.553314, 28.276588, 27.952837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194786, 28.103086, 28.275583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950878, 28.171299, 28.585190>,  <41.804535, 28.212227, 28.770954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950878, 28.171299, 28.585190>,  <42.194786, 28.103086, 28.275583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950878, 28.171299, 28.585190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326161, -0.836065, 0.441152,
		0.722359, 0.521454, 0.454184,
		-0.609768, 0.170533, 0.774017,
		41.767948, 28.222460, 28.817394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566689, 28.052862, 28.826941>,  <42.194786, 28.103086, 28.275583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566689, 28.052862, 28.826941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188412, 27.972069, 28.928818>,  <41.961445, 27.923592, 28.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188412, 27.972069, 28.928818>,  <42.566689, 28.052862, 28.826941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188412, 27.972069, 28.928818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290871, -0.875610, 0.385619,
		0.145120, 0.438759, 0.886809,
		-0.945693, -0.201986, 0.254691,
		41.904705, 27.911472, 29.005224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591457, 27.724672, 29.499100>,  <42.566689, 28.052862, 28.826941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591457, 27.724672, 29.499100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263420, 27.606159, 29.303280>,  <42.066597, 27.535051, 29.185789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263420, 27.606159, 29.303280>,  <42.591457, 27.724672, 29.499100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263420, 27.606159, 29.303280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106773, -0.919724, 0.377767,
		-0.562175, 0.257535, 0.785898,
		-0.820097, -0.296284, -0.489548,
		42.017391, 27.517275, 29.156416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895733, 27.632969, 30.004602>,  <42.591457, 27.724672, 29.499100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895733, 27.632969, 30.004602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922935, 27.410069, 29.673580>,  <41.939259, 27.276329, 29.474966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922935, 27.410069, 29.673580>,  <41.895733, 27.632969, 30.004602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922935, 27.410069, 29.673580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008729, -0.829111, 0.559016,
		-0.997647, -0.045239, -0.051520,
		0.068005, -0.557251, -0.827555,
		41.943336, 27.242893, 29.425314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375488, 27.127781, 29.932787>,  <41.895733, 27.632969, 30.004602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375488, 27.127781, 29.932787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717934, 27.000561, 29.769859>,  <41.923401, 26.924229, 29.672102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717934, 27.000561, 29.769859>,  <41.375488, 27.127781, 29.932787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717934, 27.000561, 29.769859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004910, -0.793154, 0.609001,
		-0.516760, -0.519376, -0.680594,
		0.856117, -0.318049, -0.407320,
		41.974770, 26.905146, 29.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143486, 26.486904, 29.537233>,  <41.375488, 27.127781, 29.932787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143486, 26.486904, 29.537233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516129, 26.528370, 29.676582>,  <41.739716, 26.553249, 29.760193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516129, 26.528370, 29.676582>,  <41.143486, 26.486904, 29.537233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516129, 26.528370, 29.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194116, -0.668432, 0.717996,
		0.307295, -0.736514, -0.602592,
		0.931606, 0.103664, 0.348375,
		41.795609, 26.559469, 29.781096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426018, 26.418262, 29.321632>,  <41.143486, 26.486904, 29.537233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426018, 26.418262, 29.321632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155293, 26.315834, 29.045559>,  <39.992859, 26.254377, 28.879915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155293, 26.315834, 29.045559>,  <40.426018, 26.418262, 29.321632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155293, 26.315834, 29.045559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669467, 0.175830, -0.721733,
		0.306170, -0.950532, 0.052428,
		-0.676812, -0.256072, -0.690183,
		39.952248, 26.239014, 28.838505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848587, 26.291389, 28.836056>,  <40.426018, 26.418262, 29.321632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848587, 26.291389, 28.836056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499908, 26.318398, 28.641907>,  <40.290703, 26.334602, 28.525417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499908, 26.318398, 28.641907>,  <40.848587, 26.291389, 28.836056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499908, 26.318398, 28.641907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488648, 0.194494, -0.850526,
		0.036972, -0.978577, -0.202534,
		-0.871697, 0.067522, -0.485371,
		40.238400, 26.338654, 28.496296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615643, 25.766037, 28.314415>,  <40.848587, 26.291389, 28.836056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615643, 25.766037, 28.314415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493008, 26.139542, 28.240562>,  <40.419426, 26.363646, 28.196251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493008, 26.139542, 28.240562>,  <40.615643, 25.766037, 28.314415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493008, 26.139542, 28.240562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457324, -0.025608, -0.888931,
		-0.834780, -0.356974, -0.419181,
		-0.306591, 0.933764, -0.184630,
		40.401031, 26.419670, 28.185173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267670, 25.602844, 27.666637>,  <40.615643, 25.766037, 28.314415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267670, 25.602844, 27.666637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067162, 25.689598, 28.001705>,  <39.946857, 25.741650, 28.202745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067162, 25.689598, 28.001705>,  <40.267670, 25.602844, 27.666637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067162, 25.689598, 28.001705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426394, 0.780468, -0.457230,
		-0.752940, -0.586372, -0.298747,
		-0.501269, 0.216883, 0.837670,
		39.916782, 25.754663, 28.253006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560661, 25.562931, 27.695496>,  <40.267670, 25.602844, 27.666637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560661, 25.562931, 27.695496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638058, 25.845646, 27.967674>,  <39.684494, 26.015276, 28.130981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638058, 25.845646, 27.967674>,  <39.560661, 25.562931, 27.695496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638058, 25.845646, 27.967674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412000, 0.687974, -0.597451,
		-0.890403, -0.164744, 0.424314,
		0.193491, 0.706789, 0.680448,
		39.696106, 26.057682, 28.171808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967209, 26.045155, 27.684263>,  <39.560661, 25.562931, 27.695496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967209, 26.045155, 27.684263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271442, 26.257984, 27.833080>,  <39.453983, 26.385681, 27.922371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271442, 26.257984, 27.833080>,  <38.967209, 26.045155, 27.684263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271442, 26.257984, 27.833080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263300, 0.776585, -0.572355,
		-0.593456, 0.337364, 0.730750,
		0.760581, 0.532074, 0.372041,
		39.499619, 26.417606, 27.944693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740177, 26.624695, 27.933411>,  <38.967209, 26.045155, 27.684263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740177, 26.624695, 27.933411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115211, 26.692005, 27.811684>,  <39.340233, 26.732391, 27.738647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115211, 26.692005, 27.811684>,  <38.740177, 26.624695, 27.933411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115211, 26.692005, 27.811684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304885, 0.818675, -0.486638,
		0.167246, 0.549048, 0.818886,
		0.937589, 0.168278, -0.304317,
		39.396488, 26.742489, 27.720388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816364, 27.311447, 27.907303>,  <38.740177, 26.624695, 27.933411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816364, 27.311447, 27.907303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090267, 27.169724, 27.652565>,  <39.254608, 27.084690, 27.499722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090267, 27.169724, 27.652565>,  <38.816364, 27.311447, 27.907303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090267, 27.169724, 27.652565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179985, 0.764574, -0.618896,
		0.706194, 0.538418, 0.459779,
		0.684760, -0.354307, -0.636844,
		39.295696, 27.063431, 27.461512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201591, 27.895086, 27.751337>,  <38.816364, 27.311447, 27.907303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201591, 27.895086, 27.751337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313190, 27.654274, 27.452080>,  <39.380150, 27.509787, 27.272526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313190, 27.654274, 27.452080>,  <39.201591, 27.895086, 27.751337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313190, 27.654274, 27.452080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054714, 0.787780, -0.613522,
		0.958732, 0.130236, 0.252727,
		0.278996, -0.602031, -0.748145,
		39.396889, 27.473665, 27.227636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549541, 28.322260, 27.275343>,  <39.201591, 27.895086, 27.751337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549541, 28.322260, 27.275343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504383, 28.003605, 27.037815>,  <39.477287, 27.812412, 26.895298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504383, 28.003605, 27.037815>,  <39.549541, 28.322260, 27.275343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504383, 28.003605, 27.037815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108591, 0.584170, -0.804335,
		0.987655, -0.155288, 0.020558,
		-0.112894, -0.796638, -0.593821,
		39.470516, 27.764614, 26.859669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083359, 28.341139, 26.924574>,  <39.549541, 28.322260, 27.275343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083359, 28.341139, 26.924574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816219, 28.125607, 26.719189>,  <39.655937, 27.996288, 26.595959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816219, 28.125607, 26.719189>,  <40.083359, 28.341139, 26.924574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816219, 28.125607, 26.719189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035166, 0.666246, -0.744902,
		0.743466, -0.515538, -0.426003,
		-0.667849, -0.538829, -0.513461,
		39.615864, 27.963959, 26.565151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274498, 28.468891, 26.366133>,  <40.083359, 28.341139, 26.924574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274498, 28.468891, 26.366133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912148, 28.318130, 26.288849>,  <39.694736, 28.227674, 26.242479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912148, 28.318130, 26.288849>,  <40.274498, 28.468891, 26.366133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912148, 28.318130, 26.288849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029944, 0.512033, -0.858444,
		0.422478, -0.771861, -0.475125,
		-0.905879, -0.376900, -0.193210,
		39.640385, 28.205061, 26.230886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329720, 28.236423, 25.704908>,  <40.274498, 28.468891, 26.366133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329720, 28.236423, 25.704908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 28.278572, 25.731457>,  <39.694702, 28.303862, 25.747387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 28.278572, 25.731457>,  <40.329720, 28.236423, 25.704908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932835, 28.278572, 25.731457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020120, 0.661603, -0.749584,
		-0.122898, -0.742413, -0.658573,
		-0.992216, 0.105373, 0.066372,
		39.635170, 28.310184, 25.751368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056492, 28.155493, 25.091696>,  <40.329720, 28.236423, 25.704908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056492, 28.155493, 25.091696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812931, 28.399265, 25.294804>,  <39.666794, 28.545528, 25.416668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812931, 28.399265, 25.294804>,  <40.056492, 28.155493, 25.091696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812931, 28.399265, 25.294804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082032, 0.588309, -0.804465,
		-0.788991, -0.531495, -0.308231,
		-0.608905, 0.609431, 0.507770,
		39.630260, 28.582094, 25.447134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649296, 28.416712, 24.577335>,  <40.056492, 28.155493, 25.091696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649296, 28.416712, 24.577335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573776, 28.660641, 24.885223>,  <39.528465, 28.806999, 25.069956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573776, 28.660641, 24.885223>,  <39.649296, 28.416712, 24.577335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573776, 28.660641, 24.885223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387807, 0.673807, -0.628959,
		-0.902197, -0.417251, 0.109278,
		-0.188802, 0.609824, 0.769720,
		39.517136, 28.843588, 25.116140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931530, 28.710661, 24.383600>,  <39.649296, 28.416712, 24.577335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931530, 28.710661, 24.383600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094925, 28.947273, 24.661659>,  <39.192963, 29.089241, 24.828495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094925, 28.947273, 24.661659>,  <38.931530, 28.710661, 24.383600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094925, 28.947273, 24.661659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521834, 0.776194, -0.353854,
		-0.748886, -0.218208, 0.625744,
		0.408485, 0.591531, 0.695149,
		39.217472, 29.124733, 24.870203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409706, 29.082115, 24.741299>,  <38.931530, 28.710661, 24.383600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409706, 29.082115, 24.741299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735996, 29.309990, 24.781380>,  <38.931770, 29.446714, 24.805428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735996, 29.309990, 24.781380>,  <38.409706, 29.082115, 24.741299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735996, 29.309990, 24.781380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452845, 0.736742, -0.502139,
		-0.359885, 0.364233, 0.858962,
		0.815729, 0.569689, 0.100202,
		38.980717, 29.480896, 24.811440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095222, 29.665390, 24.870655>,  <38.409706, 29.082115, 24.741299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095222, 29.665390, 24.870655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465584, 29.784817, 24.778088>,  <38.687801, 29.856472, 24.722548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465584, 29.784817, 24.778088>,  <38.095222, 29.665390, 24.870655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465584, 29.784817, 24.778088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377708, 0.741002, -0.555205,
		0.005717, 0.601477, 0.798870,
		0.925907, 0.298566, -0.231419,
		38.743355, 29.874386, 24.708662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050644, 30.409544, 24.872131>,  <38.095222, 29.665390, 24.870655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050644, 30.409544, 24.872131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359608, 30.320023, 24.634377>,  <38.544987, 30.266310, 24.491724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359608, 30.320023, 24.634377>,  <38.050644, 30.409544, 24.872131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359608, 30.320023, 24.634377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189559, 0.811969, -0.552063,
		0.606177, 0.539090, 0.584749,
		0.772410, -0.223803, -0.594386,
		38.591331, 30.252882, 24.456060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402493, 31.151325, 24.723984>,  <38.050644, 30.409544, 24.872131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402493, 31.151325, 24.723984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562069, 30.888493, 24.468143>,  <38.657814, 30.730793, 24.314640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562069, 30.888493, 24.468143>,  <38.402493, 31.151325, 24.723984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562069, 30.888493, 24.468143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091875, 0.722644, -0.685087,
		0.912360, 0.214549, 0.348665,
		0.398945, -0.657080, -0.639601,
		38.681751, 30.691368, 24.276264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026466, 31.431507, 24.492647>,  <38.402493, 31.151325, 24.723984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026466, 31.431507, 24.492647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849369, 31.191345, 24.226265>,  <38.743111, 31.047249, 24.066435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849369, 31.191345, 24.226265>,  <39.026466, 31.431507, 24.492647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849369, 31.191345, 24.226265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076789, 0.765376, -0.638986,
		0.893355, -0.231768, -0.384969,
		-0.442742, -0.600402, -0.665954,
		38.716545, 31.011225, 24.026478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346409, 31.616213, 23.897114>,  <39.026466, 31.431507, 24.492647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346409, 31.616213, 23.897114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028900, 31.417816, 23.756306>,  <38.838394, 31.298779, 23.671822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028900, 31.417816, 23.756306>,  <39.346409, 31.616213, 23.897114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028900, 31.417816, 23.756306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132298, 0.705719, -0.696030,
		0.593650, -0.505919, -0.625799,
		-0.793774, -0.495991, -0.352018,
		38.790768, 31.269018, 23.650700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425091, 31.621346, 23.191292>,  <39.346409, 31.616213, 23.897114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425091, 31.621346, 23.191292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037987, 31.561684, 23.272469>,  <38.805725, 31.525887, 23.321175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037987, 31.561684, 23.272469>,  <39.425091, 31.621346, 23.191292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037987, 31.561684, 23.272469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251529, 0.613555, -0.748521,
		-0.012873, -0.775438, -0.631293,
		-0.967764, -0.149153, 0.202943,
		38.747658, 31.516937, 23.333351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113495, 31.751087, 22.498535>,  <39.425091, 31.621346, 23.191292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113495, 31.751087, 22.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824242, 31.763817, 22.774525>,  <38.650688, 31.771456, 22.940119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824242, 31.763817, 22.774525>,  <39.113495, 31.751087, 22.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824242, 31.763817, 22.774525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605194, 0.452255, -0.655138,
		-0.332896, -0.891320, -0.307780,
		-0.723133, 0.031826, 0.689975,
		38.607304, 31.773365, 22.981518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449577, 31.736279, 22.166485>,  <39.113495, 31.751087, 22.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449577, 31.736279, 22.166485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340191, 31.889824, 22.519272>,  <38.274559, 31.981951, 22.730944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340191, 31.889824, 22.519272>,  <38.449577, 31.736279, 22.166485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340191, 31.889824, 22.519272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409365, 0.783289, -0.467845,
		-0.870423, -0.488986, -0.057064,
		-0.273468, 0.383863, 0.881967,
		38.258152, 32.004982, 22.783861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797169, 32.044731, 22.000078>,  <38.449577, 31.736279, 22.166485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797169, 32.044731, 22.000078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892712, 32.214340, 22.349514>,  <37.950035, 32.316105, 22.559175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892712, 32.214340, 22.349514>,  <37.797169, 32.044731, 22.000078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892712, 32.214340, 22.349514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362448, 0.873541, -0.324895,
		-0.900877, -0.239028, 0.362334,
		0.238855, 0.424018, 0.873589,
		37.964367, 32.341545, 22.611591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199924, 32.344711, 22.225046>,  <37.797169, 32.044731, 22.000078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199924, 32.344711, 22.225046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512264, 32.533413, 22.388859>,  <37.699669, 32.646633, 22.487146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512264, 32.533413, 22.388859>,  <37.199924, 32.344711, 22.225046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512264, 32.533413, 22.388859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337186, 0.870128, -0.359419,
		-0.525904, 0.142564, 0.838511,
		0.780853, 0.471754, 0.409533,
		37.746521, 32.674938, 22.511719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009888, 33.041553, 22.535444>,  <37.199924, 32.344711, 22.225046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009888, 33.041553, 22.535444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391544, 33.053291, 22.416275>,  <37.620537, 33.060333, 22.344774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391544, 33.053291, 22.416275>,  <37.009888, 33.041553, 22.535444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391544, 33.053291, 22.416275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174832, 0.862454, -0.474980,
		0.243008, 0.505284, 0.828031,
		0.954139, 0.029342, -0.297923,
		37.677788, 33.062096, 22.326899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238697, 32.969379, 22.338335>,  <37.009888, 33.041553, 22.535444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238697, 32.969379, 22.338335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838959, 32.960598, 22.326881>,  <35.599113, 32.955330, 22.320009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838959, 32.960598, 22.326881>,  <36.238697, 32.969379, 22.338335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838959, 32.960598, 22.326881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005670, -0.688123, 0.725572,
		-0.035635, 0.725262, 0.687550,
		-0.999349, -0.021957, -0.028634,
		35.539154, 32.954010, 22.318291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045689, 32.812458, 23.018431>,  <36.238697, 32.969379, 22.338335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045689, 32.812458, 23.018431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718174, 32.716663, 22.809727>,  <35.521664, 32.659187, 22.684504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718174, 32.716663, 22.809727>,  <36.045689, 32.812458, 23.018431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718174, 32.716663, 22.809727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151748, -0.786231, 0.599011,
		-0.553678, 0.569639, 0.607414,
		-0.818788, -0.239485, -0.521760,
		35.472538, 32.644817, 22.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403667, 32.752556, 23.462290>,  <36.045689, 32.812458, 23.018431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403667, 32.752556, 23.462290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364265, 32.529816, 23.132389>,  <35.340622, 32.396172, 22.934448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364265, 32.529816, 23.132389>,  <35.403667, 32.752556, 23.462290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364265, 32.529816, 23.132389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350533, -0.756249, 0.552461,
		-0.931355, 0.343524, -0.120697,
		-0.098507, -0.556846, -0.824754,
		35.334713, 32.362762, 22.884962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741592, 32.538242, 23.451933>,  <35.403667, 32.752556, 23.462290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741592, 32.538242, 23.451933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992630, 32.267426, 23.298183>,  <35.143253, 32.104935, 23.205933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992630, 32.267426, 23.298183>,  <34.741592, 32.538242, 23.451933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992630, 32.267426, 23.298183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280751, -0.657306, 0.699376,
		-0.726157, -0.331011, -0.602601,
		0.627595, -0.677038, -0.384376,
		35.180908, 32.064316, 23.182871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460117, 31.834633, 23.344408>,  <34.741592, 32.538242, 23.451933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460117, 31.834633, 23.344408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845901, 31.774124, 23.431065>,  <35.077374, 31.737820, 23.483059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845901, 31.774124, 23.431065>,  <34.460117, 31.834633, 23.344408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845901, 31.774124, 23.431065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260714, -0.678047, 0.687226,
		0.042936, -0.719284, -0.693388,
		0.964461, -0.151269, 0.216640,
		35.135239, 31.728743, 23.496058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800064, 31.068468, 23.247089>,  <34.460117, 31.834633, 23.344408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800064, 31.068468, 23.247089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946510, 31.301205, 23.537582>,  <35.034378, 31.440847, 23.711878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946510, 31.301205, 23.537582>,  <34.800064, 31.068468, 23.247089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946510, 31.301205, 23.537582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316940, -0.655795, 0.685188,
		0.874933, -0.481032, -0.055688,
		0.366117, 0.581843, 0.726234,
		35.056347, 31.475758, 23.755453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411644, 30.766727, 23.675428>,  <34.800064, 31.068468, 23.247089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411644, 30.766727, 23.675428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145844, 31.012264, 23.845905>,  <34.986362, 31.159586, 23.948191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145844, 31.012264, 23.845905>,  <35.411644, 30.766727, 23.675428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145844, 31.012264, 23.845905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313331, -0.746629, 0.586829,
		0.678427, 0.256408, 0.688471,
		-0.664500, 0.613840, 0.426193,
		34.946495, 31.196417, 23.973763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474327, 30.659508, 24.338263>,  <35.411644, 30.766727, 23.675428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474327, 30.659508, 24.338263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118900, 30.842098, 24.320049>,  <34.905643, 30.951653, 24.309122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118900, 30.842098, 24.320049>,  <35.474327, 30.659508, 24.338263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118900, 30.842098, 24.320049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332247, -0.571938, 0.749999,
		0.316315, 0.681555, 0.659870,
		-0.888570, 0.456475, -0.045532,
		34.852329, 30.979040, 24.306389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305637, 30.674969, 24.952936>,  <35.474327, 30.659508, 24.338263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305637, 30.674969, 24.952936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954842, 30.700974, 24.762497>,  <34.744366, 30.716576, 24.648233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954842, 30.700974, 24.762497>,  <35.305637, 30.674969, 24.952936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954842, 30.700974, 24.762497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435573, -0.525939, 0.730523,
		-0.202905, 0.848034, 0.489559,
		-0.876987, 0.065012, -0.476097,
		34.691746, 30.720478, 24.619667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888241, 30.819834, 25.473936>,  <35.305637, 30.674969, 24.952936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888241, 30.819834, 25.473936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656963, 30.668018, 25.185036>,  <34.518196, 30.576929, 25.011696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656963, 30.668018, 25.185036>,  <34.888241, 30.819834, 25.473936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656963, 30.668018, 25.185036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425640, -0.614904, 0.663870,
		-0.696080, 0.691261, 0.193984,
		-0.578190, -0.379540, -0.722251,
		34.483505, 30.554157, 24.968361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079277, 30.974808, 25.665854>,  <34.888241, 30.819834, 25.473936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079277, 30.974808, 25.665854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121185, 30.676052, 25.403194>,  <34.146328, 30.496799, 25.245600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121185, 30.676052, 25.403194>,  <34.079277, 30.974808, 25.665854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121185, 30.676052, 25.403194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711525, -0.517600, 0.475208,
		-0.694807, 0.417433, -0.585657,
		0.104768, -0.746887, -0.656645,
		34.152615, 30.451986, 25.206202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351761, 30.798309, 25.673166>,  <34.079277, 30.974808, 25.665854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351761, 30.798309, 25.673166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549351, 30.496212, 25.500843>,  <33.667904, 30.314953, 25.397449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549351, 30.496212, 25.500843>,  <33.351761, 30.798309, 25.673166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549351, 30.496212, 25.500843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558343, -0.655356, 0.508687,
		-0.666524, -0.010726, -0.745407,
		0.493963, -0.755244, -0.430821,
		33.697544, 30.269640, 25.371601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957363, 30.402653, 25.140402>,  <33.351761, 30.798309, 25.673166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957363, 30.402653, 25.140402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234921, 30.141136, 25.261108>,  <33.401455, 29.984226, 25.333532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234921, 30.141136, 25.261108>,  <32.957363, 30.402653, 25.140402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234921, 30.141136, 25.261108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715625, -0.579622, 0.389767,
		-0.079916, -0.486410, -0.870068,
		0.693897, -0.653791, 0.301766,
		33.443089, 29.944998, 25.351639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690720, 29.778494, 24.892139>,  <32.957363, 30.402653, 25.140402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690720, 29.778494, 24.892139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940968, 29.660736, 25.181118>,  <33.091118, 29.590080, 25.354506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940968, 29.660736, 25.181118>,  <32.690720, 29.778494, 24.892139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940968, 29.660736, 25.181118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684550, -0.651310, 0.327395,
		0.374153, -0.699376, -0.609002,
		0.625621, -0.294396, 0.722447,
		33.128654, 29.572416, 25.397852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537708, 29.018272, 24.908175>,  <32.690720, 29.778494, 24.892139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537708, 29.018272, 24.908175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693859, 29.085354, 25.270275>,  <32.787548, 29.125603, 25.487535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693859, 29.085354, 25.270275>,  <32.537708, 29.018272, 24.908175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693859, 29.085354, 25.270275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463694, -0.813636, 0.350692,
		0.795358, -0.556662, -0.239860,
		0.390375, 0.167704, 0.905253,
		32.810970, 29.135666, 25.541851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592720, 28.375967, 25.231535>,  <32.537708, 29.018272, 24.908175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592720, 28.375967, 25.231535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642128, 28.610783, 25.551567>,  <32.671772, 28.751673, 25.743586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642128, 28.610783, 25.551567>,  <32.592720, 28.375967, 25.231535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642128, 28.610783, 25.551567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412278, -0.703019, 0.579475,
		0.902645, -0.401433, 0.155185,
		0.123523, 0.587040, 0.800079,
		32.679184, 28.786894, 25.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792393, 27.915470, 25.801687>,  <32.592720, 28.375967, 25.231535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792393, 27.915470, 25.801687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647995, 28.251015, 25.964657>,  <32.561356, 28.452341, 26.062439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647995, 28.251015, 25.964657>,  <32.792393, 27.915470, 25.801687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647995, 28.251015, 25.964657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474248, -0.541304, 0.694319,
		0.802978, 0.057425, 0.593236,
		-0.360992, 0.838864, 0.407422,
		32.539696, 28.502674, 26.086884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977856, 27.945465, 26.605778>,  <32.792393, 27.915470, 25.801687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977856, 27.945465, 26.605778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659996, 28.183861, 26.559605>,  <32.469280, 28.326899, 26.531900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659996, 28.183861, 26.559605>,  <32.977856, 27.945465, 26.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659996, 28.183861, 26.559605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436761, -0.429226, 0.790572,
		0.421625, 0.678647, 0.601390,
		-0.794652, 0.595989, -0.115434,
		32.421600, 28.362658, 26.524975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628300, 27.926451, 27.215067>,  <32.977856, 27.945465, 26.605778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628300, 27.926451, 27.215067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346951, 28.105808, 26.994446>,  <32.178143, 28.213423, 26.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346951, 28.105808, 26.994446>,  <32.628300, 27.926451, 27.215067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346951, 28.105808, 26.994446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669125, -0.155812, 0.726633,
		0.239879, 0.880151, 0.409626,
		-0.703371, 0.448395, -0.551554,
		32.135941, 28.240326, 26.828979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240372, 28.300426, 27.721298>,  <32.628300, 27.926451, 27.215067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240372, 28.300426, 27.721298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996572, 28.218277, 27.415009>,  <31.850292, 28.168987, 27.231236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996572, 28.218277, 27.415009>,  <32.240372, 28.300426, 27.721298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996572, 28.218277, 27.415009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759489, -0.125723, 0.638255,
		-0.227350, 0.970574, -0.079351,
		-0.609498, -0.205374, -0.765724,
		31.813723, 28.156664, 27.185291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810165, 28.855589, 27.689711>,  <32.240372, 28.300426, 27.721298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810165, 28.855589, 27.689711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679195, 28.498535, 27.565781>,  <31.600613, 28.284302, 27.491423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679195, 28.498535, 27.565781>,  <31.810165, 28.855589, 27.689711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679195, 28.498535, 27.565781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576430, -0.071111, 0.814046,
		-0.748679, 0.445133, -0.491259,
		-0.327425, -0.892637, -0.309827,
		31.580969, 28.230743, 27.472832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264460, 28.761440, 28.046137>,  <31.810165, 28.855589, 27.689711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264460, 28.761440, 28.046137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281927, 28.390404, 27.897720>,  <31.292408, 28.167782, 27.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281927, 28.390404, 27.897720>,  <31.264460, 28.761440, 28.046137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281927, 28.390404, 27.897720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354153, -0.361649, 0.862430,
		-0.934168, 0.093745, -0.344300,
		0.043667, -0.927589, -0.371041,
		31.295027, 28.112127, 27.786407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670626, 28.465866, 28.173517>,  <31.264460, 28.761440, 28.046137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670626, 28.465866, 28.173517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914240, 28.153580, 28.117573>,  <31.060408, 27.966208, 28.084005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914240, 28.153580, 28.117573>,  <30.670626, 28.465866, 28.173517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914240, 28.153580, 28.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347321, -0.421052, 0.837904,
		-0.713053, -0.461736, -0.527594,
		0.609035, -0.780715, -0.139862,
		31.096951, 27.919365, 28.075615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142881, 27.993059, 28.264065>,  <30.670626, 28.465866, 28.173517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142881, 27.993059, 28.264065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496111, 27.812382, 28.314903>,  <30.708048, 27.703976, 28.345406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496111, 27.812382, 28.314903>,  <30.142881, 27.993059, 28.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496111, 27.812382, 28.314903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396518, -0.573505, 0.716844,
		-0.250905, -0.683421, -0.685552,
		0.883074, -0.451694, 0.127094,
		30.761034, 27.676874, 28.353031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010256, 27.256798, 28.371414>,  <30.142881, 27.993059, 28.264065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010256, 27.256798, 28.371414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381807, 27.301544, 28.512650>,  <30.604738, 27.328392, 28.597391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381807, 27.301544, 28.512650>,  <30.010256, 27.256798, 28.371414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381807, 27.301544, 28.512650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179568, -0.697762, 0.693458,
		0.323944, -0.707542, -0.628049,
		0.928879, 0.111864, 0.353088,
		30.660471, 27.335104, 28.618576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271021, 26.660126, 28.481770>,  <30.010256, 27.256798, 28.371414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271021, 26.660126, 28.481770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480986, 26.890995, 28.731998>,  <30.606964, 27.029516, 28.882135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480986, 26.890995, 28.731998>,  <30.271021, 26.660126, 28.481770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480986, 26.890995, 28.731998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177163, -0.644782, 0.743551,
		0.832516, -0.501126, -0.236199,
		0.524910, 0.577173, 0.625573,
		30.638458, 27.064146, 28.919670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610086, 26.109095, 28.897684>,  <30.271021, 26.660126, 28.481770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610086, 26.109095, 28.897684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683273, 26.442825, 29.105694>,  <30.727186, 26.643063, 29.230499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683273, 26.442825, 29.105694>,  <30.610086, 26.109095, 28.897684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683273, 26.442825, 29.105694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046970, -0.535767, 0.843058,
		0.981996, -0.129828, -0.137217,
		0.182969, 0.834325, 0.520023,
		30.738163, 26.693123, 29.261702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125381, 25.910604, 29.401066>,  <30.610086, 26.109095, 28.897684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125381, 25.910604, 29.401066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960058, 26.249828, 29.533710>,  <30.860865, 26.453363, 29.613298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960058, 26.249828, 29.533710>,  <31.125381, 25.910604, 29.401066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960058, 26.249828, 29.533710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019678, -0.355770, 0.934366,
		0.910378, 0.392707, 0.130355,
		-0.413309, 0.848061, 0.331613,
		30.836065, 26.504248, 29.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348465, 25.914227, 30.125517>,  <31.125381, 25.910604, 29.401066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348465, 25.914227, 30.125517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039276, 26.166294, 30.096115>,  <30.853764, 26.317533, 30.078474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039276, 26.166294, 30.096115>,  <31.348465, 25.914227, 30.125517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039276, 26.166294, 30.096115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299293, -0.260031, 0.918045,
		0.559408, 0.731624, 0.389601,
		-0.772973, 0.630167, -0.073506,
		30.807384, 26.355345, 30.074062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337374, 26.343830, 30.678566>,  <31.348465, 25.914227, 30.125517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337374, 26.343830, 30.678566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952936, 26.333771, 30.568539>,  <30.722273, 26.327736, 30.502523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952936, 26.333771, 30.568539>,  <31.337374, 26.343830, 30.678566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952936, 26.333771, 30.568539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268815, -0.143785, 0.952399,
		-0.063502, 0.989290, 0.131431,
		-0.961096, -0.025149, -0.275067,
		30.664608, 26.326225, 30.486019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987040, 26.730635, 31.166456>,  <31.337374, 26.343830, 30.678566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987040, 26.730635, 31.166456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697107, 26.491234, 31.029976>,  <30.523148, 26.347593, 30.948088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697107, 26.491234, 31.029976>,  <30.987040, 26.730635, 31.166456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697107, 26.491234, 31.029976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282906, -0.193002, 0.939529,
		-0.628161, 0.777526, -0.029426,
		-0.724829, -0.598500, -0.341203,
		30.479658, 26.311684, 30.927614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389793, 26.809708, 31.498232>,  <30.987040, 26.730635, 31.166456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389793, 26.809708, 31.498232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285555, 26.456097, 31.343010>,  <30.223013, 26.243931, 31.249876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285555, 26.456097, 31.343010>,  <30.389793, 26.809708, 31.498232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285555, 26.456097, 31.343010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415174, -0.260266, 0.871718,
		-0.871620, 0.388274, -0.299201,
		-0.260594, -0.884027, -0.388054,
		30.207376, 26.190887, 31.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707008, 26.616583, 31.678753>,  <30.389793, 26.809708, 31.498232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707008, 26.616583, 31.678753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855356, 26.251759, 31.608780>,  <29.944365, 26.032864, 31.566795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855356, 26.251759, 31.608780>,  <29.707008, 26.616583, 31.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855356, 26.251759, 31.608780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243603, -0.277313, 0.929385,
		-0.896166, -0.302067, -0.325027,
		0.370870, -0.912060, -0.174934,
		29.966618, 25.978140, 31.556299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223297, 26.063093, 31.816973>,  <29.707008, 26.616583, 31.678753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223297, 26.063093, 31.816973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575663, 25.877396, 31.853775>,  <29.787083, 25.765978, 31.875856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575663, 25.877396, 31.853775>,  <29.223297, 26.063093, 31.816973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575663, 25.877396, 31.853775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363394, -0.538946, 0.759923,
		-0.303203, -0.702863, -0.643469,
		0.880916, -0.464243, 0.092006,
		29.839937, 25.738123, 31.881376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105280, 25.431667, 32.029598>,  <29.223297, 26.063093, 31.816973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105280, 25.431667, 32.029598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496420, 25.469646, 32.104210>,  <29.731104, 25.492434, 32.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496420, 25.469646, 32.104210>,  <29.105280, 25.431667, 32.029598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496420, 25.469646, 32.104210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081535, -0.647997, 0.757266,
		0.192771, -0.755702, -0.625903,
		0.977851, 0.094946, 0.186531,
		29.789776, 25.498131, 32.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489510, 24.747665, 31.933319>,  <29.105280, 25.431667, 32.029598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489510, 24.747665, 31.933319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681049, 24.976364, 32.199795>,  <29.795975, 25.113583, 32.359680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681049, 24.976364, 32.199795>,  <29.489510, 24.747665, 31.933319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681049, 24.976364, 32.199795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046618, -0.741217, 0.669644,
		0.876657, -0.351717, -0.328279,
		0.478852, 0.571745, 0.666190,
		29.824705, 25.147888, 32.399651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854362, 24.282490, 32.230713>,  <29.489510, 24.747665, 31.933319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854362, 24.282490, 32.230713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804609, 24.584106, 32.488689>,  <29.774757, 24.765076, 32.643475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804609, 24.584106, 32.488689>,  <29.854362, 24.282490, 32.230713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804609, 24.584106, 32.488689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168164, -0.656607, 0.735247,
		0.977880, -0.017004, 0.208473,
		-0.124383, 0.754041, 0.644943,
		29.767294, 24.810318, 32.682171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909878, 24.005308, 32.835213>,  <29.854362, 24.282490, 32.230713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909878, 24.005308, 32.835213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748404, 24.352798, 32.950001>,  <29.651518, 24.561293, 33.018871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748404, 24.352798, 32.950001>,  <29.909878, 24.005308, 32.835213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748404, 24.352798, 32.950001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386225, -0.446159, 0.807324,
		0.829377, 0.215073, 0.515633,
		-0.403688, 0.868727, 0.286968,
		29.627296, 24.613417, 33.036091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133743, 24.101677, 33.509964>,  <29.909878, 24.005308, 32.835213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133743, 24.101677, 33.509964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795519, 24.303818, 33.441090>,  <29.592585, 24.425102, 33.399765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795519, 24.303818, 33.441090>,  <30.133743, 24.101677, 33.509964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795519, 24.303818, 33.441090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404704, -0.396366, 0.824081,
		0.348202, 0.766494, 0.539669,
		-0.845559, 0.505352, -0.172188,
		29.541851, 24.455423, 33.389435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978453, 24.375465, 34.151260>,  <30.133743, 24.101677, 33.509964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978453, 24.375465, 34.151260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631210, 24.390762, 33.953300>,  <29.422865, 24.399940, 33.834522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631210, 24.390762, 33.953300>,  <29.978453, 24.375465, 34.151260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631210, 24.390762, 33.953300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445962, -0.497893, 0.743788,
		-0.217966, 0.866395, 0.449278,
		-0.868106, 0.038241, -0.494903,
		29.370779, 24.402235, 33.804829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600397, 24.610729, 34.613853>,  <29.978453, 24.375465, 34.151260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600397, 24.610729, 34.613853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336851, 24.463772, 34.351276>,  <29.178722, 24.375597, 34.193729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336851, 24.463772, 34.351276>,  <29.600397, 24.610729, 34.613853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336851, 24.463772, 34.351276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582118, -0.303719, 0.754250,
		-0.476480, 0.879078, -0.013755,
		-0.658867, -0.367392, -0.656443,
		29.139191, 24.353554, 34.154343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883650, 24.723381, 34.772694>,  <29.600397, 24.610729, 34.613853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883650, 24.723381, 34.772694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863514, 24.394539, 34.545853>,  <28.851433, 24.197233, 34.409748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863514, 24.394539, 34.545853>,  <28.883650, 24.723381, 34.772694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863514, 24.394539, 34.545853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693360, -0.379920, 0.612301,
		-0.718831, 0.424030, -0.550891,
		-0.050340, -0.822106, -0.567104,
		28.848412, 24.147907, 34.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167187, 24.502308, 34.747139>,  <28.883650, 24.723381, 34.772694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167187, 24.502308, 34.747139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378258, 24.171242, 34.670696>,  <28.504900, 23.972601, 34.624832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378258, 24.171242, 34.670696>,  <28.167187, 24.502308, 34.747139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378258, 24.171242, 34.670696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613369, -0.526902, 0.588348,
		-0.587653, -0.193236, -0.785700,
		0.527677, -0.827668, -0.191110,
		28.536562, 23.922941, 34.613365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738811, 24.064528, 34.709362>,  <28.167187, 24.502308, 34.747139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738811, 24.064528, 34.709362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052273, 23.829041, 34.788666>,  <28.240349, 23.687748, 34.836246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052273, 23.829041, 34.788666>,  <27.738811, 24.064528, 34.709362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052273, 23.829041, 34.788666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530013, -0.467190, 0.707686,
		-0.324001, -0.659658, -0.678140,
		0.783652, -0.588714, 0.198258,
		28.287369, 23.652426, 34.848141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521944, 23.433611, 34.721447>,  <27.738811, 24.064528, 34.709362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521944, 23.433611, 34.721447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836170, 23.433044, 34.968960>,  <28.024706, 23.432705, 35.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836170, 23.433044, 34.968960>,  <27.521944, 23.433611, 34.721447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836170, 23.433044, 34.968960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503366, -0.583053, 0.637709,
		0.359879, -0.812433, -0.458737,
		0.785563, -0.001415, 0.618779,
		28.071838, 23.432619, 35.154594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362719, 22.880613, 35.109619>,  <27.521944, 23.433611, 34.721447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362719, 22.880613, 35.109619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637173, 23.082191, 35.319477>,  <27.801846, 23.203138, 35.445393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637173, 23.082191, 35.319477>,  <27.362719, 22.880613, 35.109619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637173, 23.082191, 35.319477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398411, -0.343107, 0.850615,
		0.608675, -0.792663, -0.034640,
		0.686137, 0.503947, 0.524647,
		27.843014, 23.233376, 35.476871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661732, 22.408108, 35.586094>,  <27.362719, 22.880613, 35.109619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661732, 22.408108, 35.586094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755438, 22.766270, 35.737549>,  <27.811661, 22.981167, 35.828423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755438, 22.766270, 35.737549>,  <27.661732, 22.408108, 35.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755438, 22.766270, 35.737549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307036, -0.301396, 0.902712,
		0.922415, -0.327730, 0.204315,
		0.234266, 0.895407, 0.378637,
		27.825718, 23.034891, 35.851139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194910, 22.364115, 36.215412>,  <27.661732, 22.408108, 35.586094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194910, 22.364115, 36.215412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977434, 22.692192, 36.286610>,  <27.846949, 22.889038, 36.329330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977434, 22.692192, 36.286610>,  <28.194910, 22.364115, 36.215412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977434, 22.692192, 36.286610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280685, -0.377562, 0.882419,
		0.790960, 0.429801, 0.435492,
		-0.543690, 0.820194, 0.177997,
		27.814327, 22.938250, 36.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365099, 22.670113, 36.743885>,  <28.194910, 22.364115, 36.215412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365099, 22.670113, 36.743885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973761, 22.727238, 36.683960>,  <27.738956, 22.761513, 36.648006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973761, 22.727238, 36.683960>,  <28.365099, 22.670113, 36.743885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973761, 22.727238, 36.683960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198874, -0.448139, 0.871562,
		0.057333, 0.882483, 0.466837,
		-0.978347, 0.142811, -0.149810,
		27.680256, 22.770081, 36.639015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023344, 23.063265, 37.349300>,  <28.365099, 22.670113, 36.743885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023344, 23.063265, 37.349300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777924, 22.808754, 37.162239>,  <27.630671, 22.656048, 37.050003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777924, 22.808754, 37.162239>,  <28.023344, 23.063265, 37.349300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777924, 22.808754, 37.162239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198329, -0.449079, 0.871202,
		-0.764342, 0.627279, 0.149341,
		-0.613553, -0.636277, -0.467658,
		27.593857, 22.617870, 37.021942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382898, 22.788645, 37.651909>,  <28.023344, 23.063265, 37.349300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382898, 22.788645, 37.651909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399096, 23.160118, 37.504444>,  <27.408813, 23.383001, 37.415966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399096, 23.160118, 37.504444>,  <27.382898, 22.788645, 37.651909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399096, 23.160118, 37.504444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306852, -0.362690, -0.879942,
		-0.950896, -0.077493, -0.299654,
		0.040492, 0.928682, -0.368659,
		27.411243, 23.438723, 37.393845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868126, 22.369455, 37.964458>,  <27.382898, 22.788645, 37.651909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868126, 22.369455, 37.964458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628923, 22.270885, 38.269527>,  <26.485401, 22.211744, 38.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628923, 22.270885, 38.269527>,  <26.868126, 22.369455, 37.964458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628923, 22.270885, 38.269527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195171, 0.967691, 0.159636,
		-0.777365, -0.053387, -0.626780,
		-0.598007, -0.246424, 0.762669,
		26.449522, 22.196959, 38.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141220, 22.179785, 38.738171>,  <26.868126, 22.369455, 37.964458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141220, 22.179785, 38.738171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048332, 21.926575, 39.033562>,  <26.992599, 21.774649, 39.210796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048332, 21.926575, 39.033562>,  <27.141220, 22.179785, 38.738171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048332, 21.926575, 39.033562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347746, 0.655022, 0.670835,
		-0.908376, 0.412586, 0.068022,
		-0.232221, -0.633024, 0.738481,
		26.978666, 21.736668, 39.255104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707253, 22.611526, 39.186348>,  <27.141220, 22.179785, 38.738171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707253, 22.611526, 39.186348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911377, 22.321129, 39.370747>,  <27.033852, 22.146891, 39.481384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911377, 22.321129, 39.370747>,  <26.707253, 22.611526, 39.186348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911377, 22.321129, 39.370747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345538, 0.663969, 0.663136,
		-0.787520, -0.179113, 0.589687,
		0.510310, -0.725992, 0.460998,
		27.064470, 22.103331, 39.509045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055353, 23.069357, 38.738384>,  <26.707253, 22.611526, 39.186348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055353, 23.069357, 38.738384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821726, 22.763885, 38.628357>,  <26.681549, 22.580603, 38.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821726, 22.763885, 38.628357>,  <27.055353, 23.069357, 38.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821726, 22.763885, 38.628357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075879, -0.286021, 0.955214,
		-0.808149, 0.578784, 0.109110,
		-0.584070, -0.763676, -0.275065,
		26.646505, 22.534782, 38.545837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501692, 23.593969, 38.294971>,  <27.055353, 23.069357, 38.738384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501692, 23.593969, 38.294971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782228, 23.696236, 38.561131>,  <27.950550, 23.757595, 38.720825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782228, 23.696236, 38.561131>,  <27.501692, 23.593969, 38.294971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782228, 23.696236, 38.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178676, 0.840613, -0.511316,
		-0.690067, 0.477499, 0.543877,
		0.701343, 0.255664, 0.665397,
		27.992632, 23.772936, 38.760750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275900, 24.222296, 38.470963>,  <27.501692, 23.593969, 38.294971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275900, 24.222296, 38.470963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665272, 24.181641, 38.553040>,  <27.898895, 24.157248, 38.602287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665272, 24.181641, 38.553040>,  <27.275900, 24.222296, 38.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665272, 24.181641, 38.553040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152673, 0.955932, -0.250767,
		-0.170665, 0.275432, 0.946050,
		0.973429, -0.101639, 0.205195,
		27.957300, 24.151150, 38.614597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399385, 24.779913, 39.030872>,  <27.275900, 24.222296, 38.470963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399385, 24.779913, 39.030872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607018, 24.631664, 38.722797>,  <27.731596, 24.542715, 38.537952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607018, 24.631664, 38.722797>,  <27.399385, 24.779913, 39.030872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607018, 24.631664, 38.722797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080360, 0.918268, -0.387720,
		0.850939, 0.139365, 0.506439,
		0.519081, -0.370623, -0.770190,
		27.762741, 24.520477, 38.491741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050198, 25.164984, 38.836918>,  <27.399385, 24.779913, 39.030872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050198, 25.164984, 38.836918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897707, 24.974434, 38.520000>,  <27.806213, 24.860104, 38.329849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897707, 24.974434, 38.520000>,  <28.050198, 25.164984, 38.836918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897707, 24.974434, 38.520000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130923, 0.820560, -0.556364,
		0.915165, -0.315830, -0.250450,
		-0.381226, -0.476375, -0.792296,
		27.783339, 24.831522, 38.282310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521339, 25.406210, 38.405273>,  <28.050198, 25.164984, 38.836918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521339, 25.406210, 38.405273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201591, 25.277180, 38.202511>,  <28.009743, 25.199762, 38.080853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201591, 25.277180, 38.202511>,  <28.521339, 25.406210, 38.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201591, 25.277180, 38.202511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100654, 0.759848, -0.642262,
		0.592351, -0.564426, -0.574929,
		-0.799368, -0.322575, -0.506908,
		27.961781, 25.180407, 38.050438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763111, 25.335176, 37.729950>,  <28.521339, 25.406210, 38.405273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763111, 25.335176, 37.729950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365728, 25.372356, 37.703400>,  <28.127298, 25.394665, 37.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365728, 25.372356, 37.703400>,  <28.763111, 25.335176, 37.729950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365728, 25.372356, 37.703400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112181, 0.684795, -0.720049,
		-0.021477, -0.722783, -0.690742,
		-0.993456, 0.092952, -0.066375,
		28.067692, 25.400242, 37.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564188, 25.282467, 37.042866>,  <28.763111, 25.335176, 37.729950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564188, 25.282467, 37.042866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273186, 25.498959, 37.211533>,  <28.098583, 25.628855, 37.312733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273186, 25.498959, 37.211533>,  <28.564188, 25.282467, 37.042866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273186, 25.498959, 37.211533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044482, 0.650499, -0.758203,
		-0.684657, -0.532842, -0.497317,
		-0.727507, 0.541230, 0.421667,
		28.054934, 25.661327, 37.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128708, 25.419682, 36.434303>,  <28.564188, 25.282467, 37.042866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128708, 25.419682, 36.434303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035715, 25.695751, 36.708416>,  <27.979919, 25.861393, 36.872883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035715, 25.695751, 36.708416>,  <28.128708, 25.419682, 36.434303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035715, 25.695751, 36.708416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100537, 0.683759, -0.722749,
		-0.967390, -0.236923, -0.089575,
		-0.232484, 0.690174, 0.685282,
		27.965969, 25.902803, 36.914001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395321, 25.717316, 36.249039>,  <28.128708, 25.419682, 36.434303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395321, 25.717316, 36.249039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598892, 25.979797, 36.471889>,  <27.721035, 26.137287, 36.605598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598892, 25.979797, 36.471889>,  <27.395321, 25.717316, 36.249039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598892, 25.979797, 36.471889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061711, 0.673357, -0.736737,
		-0.858595, 0.340564, 0.383184,
		0.508926, 0.656206, 0.557125,
		27.751570, 26.176659, 36.639027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038660, 26.263973, 36.150131>,  <27.395321, 25.717316, 36.249039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038660, 26.263973, 36.150131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400091, 26.389095, 36.267227>,  <27.616949, 26.464169, 36.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400091, 26.389095, 36.267227>,  <27.038660, 26.263973, 36.150131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400091, 26.389095, 36.267227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083420, 0.541768, -0.836379,
		-0.420223, 0.780154, 0.463435,
		0.903578, 0.312806, 0.292743,
		27.671165, 26.482937, 36.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936502, 26.981272, 36.194195>,  <27.038660, 26.263973, 36.150131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936502, 26.981272, 36.194195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324863, 26.890022, 36.165043>,  <27.557880, 26.835274, 36.147552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324863, 26.890022, 36.165043>,  <26.936502, 26.981272, 36.194195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324863, 26.890022, 36.165043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097185, 0.653448, -0.750707,
		0.218873, 0.721780, 0.656604,
		0.970901, -0.228122, -0.072876,
		27.616135, 26.821587, 36.143181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175013, 27.508064, 35.690563>,  <26.936502, 26.981272, 36.194195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175013, 27.508064, 35.690563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530161, 27.326492, 35.720570>,  <27.743250, 27.217548, 35.738575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530161, 27.326492, 35.720570>,  <27.175013, 27.508064, 35.690563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530161, 27.326492, 35.720570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331548, 0.518209, -0.788375,
		0.318994, 0.724849, 0.610604,
		0.887873, -0.453932, 0.075017,
		27.796522, 27.190313, 35.743076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680155, 27.998310, 35.769634>,  <27.175013, 27.508064, 35.690563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680155, 27.998310, 35.769634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877993, 27.688992, 35.610947>,  <27.996695, 27.503401, 35.515732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877993, 27.688992, 35.610947>,  <27.680155, 27.998310, 35.769634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877993, 27.688992, 35.610947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266775, 0.569503, -0.777494,
		0.827169, 0.278708, 0.487969,
		0.494594, -0.773297, -0.396723,
		28.026371, 27.457003, 35.491928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263613, 28.258095, 35.342014>,  <27.680155, 27.998310, 35.769634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263613, 28.258095, 35.342014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231279, 27.881447, 35.211285>,  <28.211880, 27.655458, 35.132847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231279, 27.881447, 35.211285>,  <28.263613, 28.258095, 35.342014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231279, 27.881447, 35.211285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382234, 0.273542, -0.882650,
		0.920523, -0.196273, 0.337808,
		-0.080836, -0.941622, -0.326824,
		28.207029, 27.598961, 35.113239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887749, 28.171059, 34.897423>,  <28.263613, 28.258095, 35.342014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887749, 28.171059, 34.897423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641243, 27.877178, 34.783981>,  <28.493340, 27.700850, 34.715916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641243, 27.877178, 34.783981>,  <28.887749, 28.171059, 34.897423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641243, 27.877178, 34.783981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296486, 0.117184, -0.947821,
		0.729598, -0.668194, 0.145611,
		-0.616265, -0.734700, -0.283608,
		28.456364, 27.656769, 34.698898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196566, 27.801216, 34.391914>,  <28.887749, 28.171059, 34.897423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196566, 27.801216, 34.391914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818861, 27.690132, 34.321209>,  <28.592237, 27.623482, 34.278786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818861, 27.690132, 34.321209>,  <29.196566, 27.801216, 34.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818861, 27.690132, 34.321209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171910, 0.041937, -0.984220,
		0.280742, -0.959749, 0.008142,
		-0.944262, -0.277711, -0.176764,
		28.535582, 27.606819, 34.268181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272974, 27.445282, 33.749374>,  <29.196566, 27.801216, 34.391914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272974, 27.445282, 33.749374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880711, 27.517288, 33.780098>,  <28.645351, 27.560492, 33.798531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880711, 27.517288, 33.780098>,  <29.272974, 27.445282, 33.749374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880711, 27.517288, 33.780098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067070, 0.059580, -0.995968,
		-0.183867, -0.981858, -0.046354,
		-0.980660, 0.180016, 0.076808,
		28.586512, 27.571293, 33.803139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933784, 26.907148, 33.325344>,  <29.272974, 27.445282, 33.749374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933784, 26.907148, 33.325344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660357, 27.196705, 33.362682>,  <28.496300, 27.370438, 33.385086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660357, 27.196705, 33.362682>,  <28.933784, 26.907148, 33.325344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660357, 27.196705, 33.362682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079297, 0.053475, -0.995416,
		-0.725563, -0.687840, 0.020848,
		-0.683572, 0.723890, 0.093343,
		28.455284, 27.413872, 33.390686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387243, 26.829550, 32.830677>,  <28.933784, 26.907148, 33.325344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387243, 26.829550, 32.830677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370008, 27.216511, 32.930500>,  <28.359667, 27.448687, 32.990395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370008, 27.216511, 32.930500>,  <28.387243, 26.829550, 32.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370008, 27.216511, 32.930500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033539, 0.248246, -0.968116,
		-0.998508, -0.050085, 0.021749,
		-0.043089, 0.967401, 0.249556,
		28.357082, 27.506731, 33.005367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079908, 27.160633, 32.340122>,  <28.387243, 26.829550, 32.830677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079908, 27.160633, 32.340122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266800, 27.460079, 32.528282>,  <28.378935, 27.639748, 32.641178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266800, 27.460079, 32.528282>,  <28.079908, 27.160633, 32.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266800, 27.460079, 32.528282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218773, 0.417604, -0.881899,
		-0.856643, 0.514957, 0.031339,
		0.467227, 0.748616, 0.470396,
		28.406967, 27.684664, 32.669399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878628, 27.804150, 31.991098>,  <28.079908, 27.160633, 32.340122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878628, 27.804150, 31.991098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206400, 27.917618, 32.190323>,  <28.403063, 27.985699, 32.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206400, 27.917618, 32.190323>,  <27.878628, 27.804150, 31.991098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206400, 27.917618, 32.190323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215283, 0.653005, -0.726111,
		-0.531214, 0.702221, 0.474022,
		0.819430, 0.283672, 0.498062,
		28.452229, 28.002720, 32.339741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015898, 28.547831, 31.931633>,  <27.878628, 27.804150, 31.991098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015898, 28.547831, 31.931633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382929, 28.439037, 32.047619>,  <28.603148, 28.373762, 32.117210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382929, 28.439037, 32.047619>,  <28.015898, 28.547831, 31.931633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382929, 28.439037, 32.047619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392201, 0.499947, -0.772160,
		0.065047, 0.822240, 0.565411,
		0.917577, -0.271982, 0.289963,
		28.658201, 28.357443, 32.134609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399527, 29.202734, 31.924717>,  <28.015898, 28.547831, 31.931633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399527, 29.202734, 31.924717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667229, 28.907166, 31.893490>,  <28.827850, 28.729824, 31.874754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667229, 28.907166, 31.893490>,  <28.399527, 29.202734, 31.924717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667229, 28.907166, 31.893490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494507, 0.521359, -0.695448,
		0.554584, 0.426825, 0.714323,
		0.669253, -0.738921, -0.078070,
		28.868004, 28.685490, 31.870070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077543, 29.645145, 31.950827>,  <28.399527, 29.202734, 31.924717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077543, 29.645145, 31.950827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153830, 29.300373, 31.762909>,  <29.199602, 29.093510, 31.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153830, 29.300373, 31.762909>,  <29.077543, 29.645145, 31.950827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153830, 29.300373, 31.762909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405817, 0.504995, -0.761769,
		0.893834, -0.045368, 0.446096,
		0.190716, -0.861929, -0.469793,
		29.211044, 29.041794, 31.621971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729315, 29.659313, 31.640324>,  <29.077543, 29.645145, 31.950827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729315, 29.659313, 31.640324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558372, 29.354172, 31.446243>,  <29.455807, 29.171087, 31.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558372, 29.354172, 31.446243>,  <29.729315, 29.659313, 31.640324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558372, 29.354172, 31.446243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422977, 0.305610, -0.853049,
		0.799034, -0.569785, 0.192066,
		-0.427357, -0.762855, -0.485199,
		29.430164, 29.125315, 31.300684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255716, 29.436415, 31.203445>,  <29.729315, 29.659313, 31.640324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255716, 29.436415, 31.203445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900257, 29.305351, 31.075104>,  <29.686981, 29.226713, 30.998098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900257, 29.305351, 31.075104>,  <30.255716, 29.436415, 31.203445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900257, 29.305351, 31.075104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304865, 0.100580, -0.947070,
		0.342587, -0.939427, 0.010512,
		-0.888646, -0.327658, -0.320856,
		29.633663, 29.207054, 30.978848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356470, 28.908875, 30.642586>,  <30.255716, 29.436415, 31.203445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356470, 28.908875, 30.642586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979284, 29.040447, 30.622116>,  <29.752972, 29.119390, 30.609835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979284, 29.040447, 30.622116>,  <30.356470, 28.908875, 30.642586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979284, 29.040447, 30.622116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114318, 0.175604, -0.977801,
		-0.312643, -0.927883, -0.203192,
		-0.942966, 0.328931, -0.051172,
		29.696394, 29.139126, 30.606764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090015, 28.587879, 30.018919>,  <30.356470, 28.908875, 30.642586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090015, 28.587879, 30.018919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846621, 28.892719, 30.107414>,  <29.700584, 29.075623, 30.160511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846621, 28.892719, 30.107414>,  <30.090015, 28.587879, 30.018919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846621, 28.892719, 30.107414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004472, 0.282081, -0.959380,
		-0.793551, -0.582781, -0.175051,
		-0.608487, 0.762100, 0.221239,
		29.664074, 29.121349, 30.173786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663921, 28.462450, 29.557053>,  <30.090015, 28.587879, 30.018919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663921, 28.462450, 29.557053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605604, 28.841217, 29.671661>,  <29.570614, 29.068478, 29.740427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605604, 28.841217, 29.671661>,  <29.663921, 28.462450, 29.557053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605604, 28.841217, 29.671661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105637, 0.302861, -0.947162,
		-0.983659, -0.107821, -0.144184,
		-0.145792, 0.946916, 0.286523,
		29.561867, 29.125292, 29.757618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137266, 28.861485, 29.102545>,  <29.663921, 28.462450, 29.557053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137266, 28.861485, 29.102545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360462, 29.141735, 29.280430>,  <29.494379, 29.309885, 29.387161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360462, 29.141735, 29.280430>,  <29.137266, 28.861485, 29.102545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360462, 29.141735, 29.280430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167319, 0.429904, -0.887236,
		-0.812806, 0.569476, 0.122653,
		0.557989, 0.700628, 0.444713,
		29.527859, 29.351923, 29.413843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895390, 29.532009, 28.801561>,  <29.137266, 28.861485, 29.102545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895390, 29.532009, 28.801561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244900, 29.615074, 28.977467>,  <29.454605, 29.664913, 29.083010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244900, 29.615074, 28.977467>,  <28.895390, 29.532009, 28.801561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244900, 29.615074, 28.977467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258233, 0.568138, -0.781367,
		-0.412107, 0.796301, 0.442800,
		0.873775, 0.207661, 0.439765,
		29.507032, 29.677372, 29.109396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051846, 30.224598, 28.698332>,  <28.895390, 29.532009, 28.801561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051846, 30.224598, 28.698332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422853, 30.094193, 28.771465>,  <29.645458, 30.015949, 28.815346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422853, 30.094193, 28.771465>,  <29.051846, 30.224598, 28.698332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422853, 30.094193, 28.771465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352278, 0.598938, -0.719148,
		0.124946, 0.731430, 0.670372,
		0.927517, -0.326012, 0.182832,
		29.701109, 29.996389, 28.826315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435345, 30.831135, 28.626160>,  <29.051846, 30.224598, 28.698332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435345, 30.831135, 28.626160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682823, 30.520573, 28.578140>,  <29.831310, 30.334236, 28.549328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682823, 30.520573, 28.578140>,  <29.435345, 30.831135, 28.626160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682823, 30.520573, 28.578140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514710, 0.516024, -0.684685,
		0.593541, 0.361820, 0.718885,
		0.618694, -0.776406, -0.120049,
		29.868431, 30.287651, 28.542126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079844, 30.994390, 28.727613>,  <29.435345, 30.831135, 28.626160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079844, 30.994390, 28.727613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141737, 30.675198, 28.494621>,  <30.178873, 30.483683, 28.354826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141737, 30.675198, 28.494621>,  <30.079844, 30.994390, 28.727613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141737, 30.675198, 28.494621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596222, 0.545539, -0.588987,
		0.787767, -0.256150, 0.560188,
		0.154736, -0.797981, -0.582480,
		30.188158, 30.435802, 28.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794252, 30.992237, 28.617989>,  <30.079844, 30.994390, 28.727613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794252, 30.992237, 28.617989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660324, 30.767422, 28.315464>,  <30.579967, 30.632532, 28.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660324, 30.767422, 28.315464>,  <30.794252, 30.992237, 28.617989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660324, 30.767422, 28.315464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692867, 0.397126, -0.601852,
		0.638615, -0.725537, 0.256451,
		-0.334823, -0.562038, -0.756311,
		30.559877, 30.598810, 28.088572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344980, 30.690226, 28.376043>,  <30.794252, 30.992237, 28.617989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344980, 30.690226, 28.376043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075935, 30.664234, 28.081188>,  <30.914509, 30.648640, 27.904276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075935, 30.664234, 28.081188>,  <31.344980, 30.690226, 28.376043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075935, 30.664234, 28.081188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677338, 0.347096, -0.648643,
		0.298004, -0.935576, -0.189450,
		-0.672612, -0.064977, -0.737137,
		30.874151, 30.644741, 27.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748535, 30.527506, 27.785006>,  <31.344980, 30.690226, 28.376043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748535, 30.527506, 27.785006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399527, 30.665154, 27.646275>,  <31.190121, 30.747742, 27.563036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399527, 30.665154, 27.646275>,  <31.748535, 30.527506, 27.785006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399527, 30.665154, 27.646275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486005, 0.538605, -0.688261,
		-0.050041, -0.769082, -0.637188,
		-0.872522, 0.344118, -0.346826,
		31.137770, 30.768389, 27.542227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768738, 30.371008, 27.055719>,  <31.748535, 30.527506, 27.785006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768738, 30.371008, 27.055719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499609, 30.658298, 27.126671>,  <31.338133, 30.830673, 27.169241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499609, 30.658298, 27.126671>,  <31.768738, 30.371008, 27.055719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499609, 30.658298, 27.126671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496521, 0.616135, -0.611429,
		-0.548434, -0.323309, -0.771163,
		-0.672821, 0.718226, 0.177379,
		31.297762, 30.873766, 27.179884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545137, 30.681215, 26.330910>,  <31.768738, 30.371008, 27.055719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545137, 30.681215, 26.330910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475761, 30.943130, 26.625168>,  <31.434135, 31.100279, 26.801722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475761, 30.943130, 26.625168>,  <31.545137, 30.681215, 26.330910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475761, 30.943130, 26.625168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389265, 0.731718, -0.559519,
		-0.904650, 0.189317, -0.381796,
		-0.173440, 0.654788, 0.735643,
		31.423729, 31.139566, 26.845861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254395, 31.216259, 25.982229>,  <31.545137, 30.681215, 26.330910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254395, 31.216259, 25.982229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362637, 31.378994, 26.331230>,  <31.427582, 31.476635, 26.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362637, 31.378994, 26.331230>,  <31.254395, 31.216259, 25.982229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362637, 31.378994, 26.331230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402144, 0.775681, -0.486415,
		-0.874673, 0.482497, 0.046297,
		0.270606, 0.406837, 0.872500,
		31.443819, 31.501045, 26.592979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001812, 31.897503, 25.888708>,  <31.254395, 31.216259, 25.982229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001812, 31.897503, 25.888708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274014, 31.890141, 26.181713>,  <31.437334, 31.885723, 26.357517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274014, 31.890141, 26.181713>,  <31.001812, 31.897503, 25.888708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274014, 31.890141, 26.181713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274973, 0.933040, -0.232003,
		-0.679195, 0.359300, 0.639998,
		0.680503, -0.018407, 0.732514,
		31.478165, 31.884619, 26.401466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909004, 32.583355, 26.192524>,  <31.001812, 31.897503, 25.888708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909004, 32.583355, 26.192524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274780, 32.460953, 26.298477>,  <31.494246, 32.387512, 26.362049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274780, 32.460953, 26.298477>,  <30.909004, 32.583355, 26.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274780, 32.460953, 26.298477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360035, 0.913995, -0.187051,
		-0.184864, 0.266414, 0.945965,
		0.914440, -0.306001, 0.264883,
		31.549112, 32.369152, 26.377941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123222, 33.091282, 26.556309>,  <30.909004, 32.583355, 26.192524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123222, 33.091282, 26.556309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455923, 32.913132, 26.423748>,  <31.655544, 32.806240, 26.344212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455923, 32.913132, 26.423748>,  <31.123222, 33.091282, 26.556309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455923, 32.913132, 26.423748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453673, 0.889369, -0.056603,
		0.319948, -0.103269, 0.941790,
		0.831753, -0.445375, -0.331402,
		31.705450, 32.779518, 26.324327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926825, 33.709232, 26.124575>,  <31.123222, 33.091282, 26.556309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926825, 33.709232, 26.124575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570295, 33.843506, 26.002686>,  <30.356377, 33.924068, 25.929552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570295, 33.843506, 26.002686>,  <30.926825, 33.709232, 26.124575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570295, 33.843506, 26.002686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453028, -0.685441, 0.570032,
		-0.017519, 0.646132, 0.763025,
		-0.891324, 0.335685, -0.304724,
		30.302898, 33.944210, 25.911268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600632, 33.861824, 26.755154>,  <30.926825, 33.709232, 26.124575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600632, 33.861824, 26.755154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318775, 33.830574, 26.473053>,  <30.149662, 33.811825, 26.303793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318775, 33.830574, 26.473053>,  <30.600632, 33.861824, 26.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318775, 33.830574, 26.473053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530660, -0.601789, 0.596867,
		-0.471045, 0.794825, 0.382584,
		-0.704640, -0.078129, -0.705251,
		30.107384, 33.807137, 26.261478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011646, 34.013851, 27.166185>,  <30.600632, 33.861824, 26.755154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011646, 34.013851, 27.166185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907913, 33.829353, 26.826775>,  <29.845673, 33.718655, 26.623129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907913, 33.829353, 26.826775>,  <30.011646, 34.013851, 27.166185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907913, 33.829353, 26.826775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655461, -0.561204, 0.505392,
		-0.709307, 0.687241, -0.156790,
		-0.259335, -0.461248, -0.848525,
		29.830112, 33.690979, 26.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212751, 34.064701, 27.072281>,  <30.011646, 34.013851, 27.166185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212751, 34.064701, 27.072281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324606, 33.757721, 26.841518>,  <29.391720, 33.573532, 26.703060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324606, 33.757721, 26.841518>,  <29.212751, 34.064701, 27.072281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324606, 33.757721, 26.841518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641949, -0.596269, 0.482042,
		-0.713936, 0.235549, -0.659403,
		0.279637, -0.767450, -0.576909,
		29.408497, 33.527485, 26.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592966, 33.800812, 26.963249>,  <29.212751, 34.064701, 27.072281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592966, 33.800812, 26.963249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861952, 33.520409, 26.868267>,  <29.023342, 33.352169, 26.811277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861952, 33.520409, 26.868267>,  <28.592966, 33.800812, 26.963249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861952, 33.520409, 26.868267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610991, -0.706852, 0.356441,
		-0.417712, -0.094612, -0.903640,
		0.672463, -0.701006, -0.237453,
		29.063690, 33.310108, 26.797031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184120, 33.257103, 26.795496>,  <28.592966, 33.800812, 26.963249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184120, 33.257103, 26.795496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533953, 33.085575, 26.886021>,  <28.743853, 32.982658, 26.940334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533953, 33.085575, 26.886021>,  <28.184120, 33.257103, 26.795496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533953, 33.085575, 26.886021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463658, -0.603072, 0.649097,
		-0.141864, -0.672620, -0.726262,
		0.874583, -0.428821, 0.226311,
		28.796328, 32.956928, 26.953915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034822, 32.459206, 26.760008>,  <28.184120, 33.257103, 26.795496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034822, 32.459206, 26.760008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337082, 32.550484, 27.005585>,  <28.518436, 32.605251, 27.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337082, 32.550484, 27.005585>,  <28.034822, 32.459206, 26.760008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337082, 32.550484, 27.005585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502947, -0.398299, 0.767074,
		0.419573, -0.888418, -0.186205,
		0.755647, 0.228192, 0.613942,
		28.563776, 32.618942, 27.189768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066063, 31.898472, 27.074209>,  <28.034822, 32.459206, 26.760008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066063, 31.898472, 27.074209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275057, 32.137878, 27.317120>,  <28.400454, 32.281525, 27.462866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275057, 32.137878, 27.317120>,  <28.066063, 31.898472, 27.074209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275057, 32.137878, 27.317120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397809, -0.458844, 0.794488,
		0.754161, -0.656687, -0.001643,
		0.522484, 0.598518, 0.607278,
		28.431803, 32.317432, 27.499304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435123, 31.530413, 27.593416>,  <28.066063, 31.898472, 27.074209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435123, 31.530413, 27.593416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387484, 31.891552, 27.758671>,  <28.358900, 32.108234, 27.857824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387484, 31.891552, 27.758671>,  <28.435123, 31.530413, 27.593416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387484, 31.891552, 27.758671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438806, -0.421121, 0.793792,
		0.890654, -0.086746, 0.446331,
		-0.119101, 0.902847, 0.413137,
		28.351753, 32.162407, 27.882612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673285, 31.441801, 28.265869>,  <28.435123, 31.530413, 27.593416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673285, 31.441801, 28.265869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423275, 31.753868, 28.276321>,  <28.273270, 31.941109, 28.282593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423275, 31.753868, 28.276321>,  <28.673285, 31.441801, 28.265869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423275, 31.753868, 28.276321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428842, -0.371149, 0.823615,
		0.652259, 0.503571, 0.566546,
		-0.625022, 0.780169, 0.026133,
		28.235769, 31.987919, 28.284161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712664, 31.751768, 28.918550>,  <28.673285, 31.441801, 28.265869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712664, 31.751768, 28.918550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368345, 31.900131, 28.779148>,  <28.161755, 31.989149, 28.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368345, 31.900131, 28.779148>,  <28.712664, 31.751768, 28.918550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368345, 31.900131, 28.779148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463550, -0.288672, 0.837729,
		0.210117, 0.882664, 0.420423,
		-0.860797, 0.370908, -0.348504,
		28.110106, 32.011402, 28.674597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418449, 31.817219, 29.504492>,  <28.712664, 31.751768, 28.918550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418449, 31.817219, 29.504492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110538, 31.841030, 29.250278>,  <27.925793, 31.855316, 29.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110538, 31.841030, 29.250278>,  <28.418449, 31.817219, 29.504492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110538, 31.841030, 29.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599733, -0.408343, 0.688169,
		-0.218551, 0.910886, 0.350033,
		-0.769777, 0.059526, -0.635532,
		27.879606, 31.858889, 29.059620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776423, 32.076862, 29.890259>,  <28.418449, 31.817219, 29.504492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776423, 32.076862, 29.890259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613409, 31.899517, 29.570923>,  <27.515600, 31.793110, 29.379322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613409, 31.899517, 29.570923>,  <27.776423, 32.076862, 29.890259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613409, 31.899517, 29.570923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599616, -0.529447, 0.600122,
		-0.688750, 0.723267, -0.050081,
		-0.407533, -0.443364, -0.798339,
		27.491150, 31.766508, 29.331421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085159, 32.259613, 29.850628>,  <27.776423, 32.076862, 29.890259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085159, 32.259613, 29.850628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167860, 31.896751, 29.704025>,  <27.217480, 31.679035, 29.616064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167860, 31.896751, 29.704025>,  <27.085159, 32.259613, 29.850628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167860, 31.896751, 29.704025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508630, -0.419659, 0.751786,
		-0.835793, 0.030983, -0.548170,
		0.206752, -0.907153, -0.366507,
		27.229885, 31.624605, 29.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514784, 31.939678, 30.163271>,  <27.085159, 32.259613, 29.850628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514784, 31.939678, 30.163271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756523, 31.649727, 30.031021>,  <26.901567, 31.475756, 29.951672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756523, 31.649727, 30.031021>,  <26.514784, 31.939678, 30.163271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756523, 31.649727, 30.031021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305871, -0.594281, 0.743823,
		-0.735666, -0.348401, -0.580872,
		0.604350, -0.724878, -0.330626,
		26.937828, 31.432264, 29.931833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075027, 31.374146, 30.102493>,  <26.514784, 31.939678, 30.163271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075027, 31.374146, 30.102493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436146, 31.202129, 30.104454>,  <26.652817, 31.098921, 30.105631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436146, 31.202129, 30.104454>,  <26.075027, 31.374146, 30.102493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436146, 31.202129, 30.104454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276120, -0.570855, 0.773228,
		-0.329719, -0.699422, -0.634109,
		0.902797, -0.430038, 0.004903,
		26.706985, 31.073118, 30.105925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002094, 30.665037, 30.000599>,  <26.075027, 31.374146, 30.102493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002094, 30.665037, 30.000599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376080, 30.679935, 30.141712>,  <26.600471, 30.688875, 30.226379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376080, 30.679935, 30.141712>,  <26.002094, 30.665037, 30.000599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376080, 30.679935, 30.141712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226944, -0.701541, 0.675527,
		0.272652, -0.711655, -0.647463,
		0.934964, 0.037245, 0.352782,
		26.656569, 30.691109, 30.247547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147787, 29.971174, 30.200548>,  <26.002094, 30.665037, 30.000599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147787, 29.971174, 30.200548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426001, 30.188408, 30.388718>,  <26.592928, 30.318748, 30.501619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426001, 30.188408, 30.388718>,  <26.147787, 29.971174, 30.200548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426001, 30.188408, 30.388718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012171, -0.645732, 0.763467,
		0.718392, -0.536741, -0.442517,
		0.695532, 0.543083, 0.470422,
		26.634661, 30.351334, 30.529844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628729, 29.506565, 30.502567>,  <26.147787, 29.971174, 30.200548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628729, 29.506565, 30.502567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668867, 29.853928, 30.696804>,  <26.692951, 30.062346, 30.813345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668867, 29.853928, 30.696804>,  <26.628729, 29.506565, 30.502567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668867, 29.853928, 30.696804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046814, -0.483393, 0.874151,
		0.993851, -0.110451, -0.007853,
		0.100347, 0.868408, 0.485591,
		26.698971, 30.114450, 30.842482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242317, 29.393456, 30.942022>,  <26.628729, 29.506565, 30.502567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242317, 29.393456, 30.942022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028172, 29.692379, 31.099457>,  <26.899683, 29.871733, 31.193918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028172, 29.692379, 31.099457>,  <27.242317, 29.393456, 30.942022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028172, 29.692379, 31.099457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112686, -0.525023, 0.843595,
		0.837070, 0.407280, 0.365291,
		-0.535366, 0.747311, 0.393586,
		26.867561, 29.916573, 31.217533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510088, 29.518547, 31.630857>,  <27.242317, 29.393456, 30.942022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510088, 29.518547, 31.630857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139608, 29.667625, 31.653675>,  <26.917320, 29.757072, 31.667366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139608, 29.667625, 31.653675>,  <27.510088, 29.518547, 31.630857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139608, 29.667625, 31.653675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135556, -0.470341, 0.872011,
		0.351827, 0.799922, 0.486150,
		-0.926198, 0.372697, 0.057045,
		26.861750, 29.779434, 31.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348190, 29.810722, 32.271580>,  <27.510088, 29.518547, 31.630857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348190, 29.810722, 32.271580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981050, 29.733921, 32.132622>,  <26.760767, 29.687841, 32.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981050, 29.733921, 32.132622>,  <27.348190, 29.810722, 32.271580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981050, 29.733921, 32.132622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234922, -0.442691, 0.865353,
		-0.319939, 0.875877, 0.361218,
		-0.917851, -0.192002, -0.347397,
		26.705696, 29.676321, 32.028404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892273, 29.856682, 32.831131>,  <27.348190, 29.810722, 32.271580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892273, 29.856682, 32.831131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686068, 29.628082, 32.575745>,  <26.562344, 29.490923, 32.422512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686068, 29.628082, 32.575745>,  <26.892273, 29.856682, 32.831131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686068, 29.628082, 32.575745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371898, -0.522041, 0.767571,
		-0.771969, 0.633137, 0.056581,
		-0.515515, -0.571499, -0.638462,
		26.531414, 29.456633, 32.384205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255905, 29.849951, 33.097721>,  <26.892273, 29.856682, 32.831131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255905, 29.849951, 33.097721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233906, 29.533283, 32.854332>,  <26.220707, 29.343283, 32.708298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233906, 29.533283, 32.854332>,  <26.255905, 29.849951, 33.097721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233906, 29.533283, 32.854332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368649, -0.550235, 0.749226,
		-0.927940, 0.265518, -0.261586,
		-0.054999, -0.791670, -0.608468,
		26.217405, 29.295782, 32.671791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558603, 29.509596, 33.120823>,  <26.255905, 29.849951, 33.097721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558603, 29.509596, 33.120823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818155, 29.230568, 32.999268>,  <25.973886, 29.063150, 32.926334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818155, 29.230568, 32.999268>,  <25.558603, 29.509596, 33.120823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818155, 29.230568, 32.999268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358059, -0.632339, 0.686980,
		-0.671380, -0.336956, -0.660083,
		0.648878, -0.697574, -0.303890,
		26.012819, 29.021296, 32.908100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092196, 28.873228, 33.088562>,  <25.558603, 29.509596, 33.120823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092196, 28.873228, 33.088562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474060, 28.754234, 33.093002>,  <25.703178, 28.682838, 33.095665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474060, 28.754234, 33.093002>,  <25.092196, 28.873228, 33.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474060, 28.754234, 33.093002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263701, -0.827773, 0.495230,
		-0.138134, -0.475705, -0.868691,
		0.954663, -0.297483, 0.011101,
		25.760458, 28.664989, 33.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980684, 28.137302, 32.943287>,  <25.092196, 28.873228, 33.088562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980684, 28.137302, 32.943287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317421, 28.257423, 33.122673>,  <25.519463, 28.329496, 33.230305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317421, 28.257423, 33.122673>,  <24.980684, 28.137302, 32.943287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317421, 28.257423, 33.122673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006581, -0.836562, 0.547832,
		0.539683, -0.458237, -0.706230,
		0.841843, 0.300303, 0.448463,
		25.569973, 28.347515, 33.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291348, 27.554008, 32.795326>,  <24.980684, 28.137302, 32.943287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291348, 27.554008, 32.795326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486349, 27.738449, 33.091900>,  <25.603350, 27.849113, 33.269844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486349, 27.738449, 33.091900>,  <25.291348, 27.554008, 32.795326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486349, 27.738449, 33.091900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196405, -0.885329, 0.421447,
		0.850743, -0.059836, -0.522165,
		0.487505, 0.461099, 0.741435,
		25.632601, 27.876780, 33.314331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901480, 27.256649, 32.890465>,  <25.291348, 27.554008, 32.795326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901480, 27.256649, 32.890465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822460, 27.443256, 33.235332>,  <25.775049, 27.555220, 33.442253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822460, 27.443256, 33.235332>,  <25.901480, 27.256649, 32.890465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822460, 27.443256, 33.235332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161274, -0.852052, 0.497994,
		0.966936, 0.237423, 0.093085,
		-0.197549, 0.466517, 0.862170,
		25.763195, 27.583212, 33.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337183, 26.810522, 33.374409>,  <25.901480, 27.256649, 32.890465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337183, 26.810522, 33.374409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082558, 27.006279, 33.612831>,  <25.929783, 27.123734, 33.755886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082558, 27.006279, 33.612831>,  <26.337183, 26.810522, 33.374409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082558, 27.006279, 33.612831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017111, -0.763719, 0.645322,
		0.771036, 0.420987, 0.477780,
		-0.636561, 0.489391, 0.596058,
		25.891590, 27.153097, 33.791649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544270, 26.669720, 34.063522>,  <26.337183, 26.810522, 33.374409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544270, 26.669720, 34.063522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171677, 26.804695, 34.117897>,  <25.948122, 26.885681, 34.150520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171677, 26.804695, 34.117897>,  <26.544270, 26.669720, 34.063522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171677, 26.804695, 34.117897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125736, -0.649259, 0.750103,
		0.341369, 0.681615, 0.647200,
		-0.931481, 0.337438, 0.135934,
		25.892233, 26.905926, 34.158676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429964, 26.663935, 34.732075>,  <26.544270, 26.669720, 34.063522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429964, 26.663935, 34.732075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055832, 26.677223, 34.591190>,  <25.831352, 26.685196, 34.506660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055832, 26.677223, 34.591190>,  <26.429964, 26.663935, 34.732075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055832, 26.677223, 34.591190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225573, -0.822953, 0.521408,
		-0.272534, 0.567138, 0.777226,
		-0.935330, 0.033220, -0.352214,
		25.775232, 26.687189, 34.485527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061420, 26.747671, 35.293041>,  <26.429964, 26.663935, 34.732075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061420, 26.747671, 35.293041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811552, 26.591080, 35.022774>,  <25.661631, 26.497126, 34.860611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811552, 26.591080, 35.022774>,  <26.061420, 26.747671, 35.293041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811552, 26.591080, 35.022774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250280, -0.719244, 0.648112,
		-0.739693, 0.573963, 0.351311,
		-0.624671, -0.391478, -0.675671,
		25.624151, 26.473637, 34.820072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559988, 26.532873, 35.751537>,  <26.061420, 26.747671, 35.293041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559988, 26.532873, 35.751537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485407, 26.345764, 35.405952>,  <25.440659, 26.233500, 35.198601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485407, 26.345764, 35.405952>,  <25.559988, 26.532873, 35.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485407, 26.345764, 35.405952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593252, -0.647351, 0.478527,
		-0.783127, 0.601768, -0.156806,
		-0.186454, -0.467773, -0.863958,
		25.429470, 26.205433, 35.146767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735580, 26.433149, 35.638657>,  <25.559988, 26.532873, 35.751537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735580, 26.433149, 35.638657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969597, 26.145523, 35.488632>,  <25.110006, 25.972948, 35.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969597, 26.145523, 35.488632>,  <24.735580, 26.433149, 35.638657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969597, 26.145523, 35.488632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606387, -0.694940, 0.386463,
		-0.538538, 0.001337, -0.842600,
		0.585040, -0.719067, -0.375063,
		25.145109, 25.929804, 35.376114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294170, 25.999788, 35.322048>,  <24.735580, 26.433149, 35.638657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294170, 25.999788, 35.322048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606928, 25.755978, 35.374386>,  <24.794582, 25.609692, 35.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606928, 25.755978, 35.374386>,  <24.294170, 25.999788, 35.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606928, 25.755978, 35.374386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616050, -0.723291, 0.311982,
		-0.095523, -0.324543, -0.941035,
		0.781894, -0.609526, 0.130844,
		24.841496, 25.573120, 35.413639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164852, 25.343050, 34.940590>,  <24.294170, 25.999788, 35.322048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164852, 25.343050, 34.940590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463860, 25.251381, 35.189972>,  <24.643265, 25.196379, 35.339600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463860, 25.251381, 35.189972>,  <24.164852, 25.343050, 34.940590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463860, 25.251381, 35.189972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456482, -0.859077, 0.231538,
		0.482532, -0.457675, -0.746791,
		0.747521, -0.229172, 0.623453,
		24.688116, 25.182629, 35.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385637, 24.621075, 34.791698>,  <24.164852, 25.343050, 34.940590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385637, 24.621075, 34.791698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477900, 24.709095, 35.170830>,  <24.533257, 24.761908, 35.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477900, 24.709095, 35.170830>,  <24.385637, 24.621075, 34.791698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.477900, 24.709095, 35.170830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362626, -0.884482, 0.293587,
		0.902940, -0.411424, -0.124215,
		0.230655, 0.220048, 0.947827,
		24.547096, 24.775110, 35.455177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852070, 24.895960, 34.312668>,  <24.385637, 24.621075, 34.791698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852070, 24.895960, 34.312668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.503176, 24.712975, 34.243462>,  <23.293840, 24.603184, 34.201939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.503176, 24.712975, 34.243462>,  <23.852070, 24.895960, 34.312668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503176, 24.712975, 34.243462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146788, 0.092586, -0.984825,
		0.466542, -0.884395, -0.013607,
		-0.872234, -0.457465, -0.173014,
		23.241505, 24.575735, 34.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980564, 24.521673, 33.759743>,  <23.852070, 24.895960, 34.312668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980564, 24.521673, 33.759743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582073, 24.532749, 33.792641>,  <23.342979, 24.539394, 33.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582073, 24.532749, 33.792641>,  <23.980564, 24.521673, 33.759743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582073, 24.532749, 33.792641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079984, 0.074753, -0.993989,
		-0.033676, -0.996817, -0.072256,
		-0.996227, 0.027694, 0.082247,
		23.283205, 24.541058, 33.817314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630079, 24.035095, 33.169216>,  <23.980564, 24.521673, 33.759743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630079, 24.035095, 33.169216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358311, 24.307919, 33.277420>,  <23.195250, 24.471613, 33.342342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358311, 24.307919, 33.277420>,  <23.630079, 24.035095, 33.169216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358311, 24.307919, 33.277420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202228, 0.180330, -0.962593,
		-0.705328, -0.708714, 0.015411,
		-0.679424, 0.682060, 0.270513,
		23.154484, 24.512537, 33.358574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212168, 24.073477, 32.601570>,  <23.630079, 24.035095, 33.169216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212168, 24.073477, 32.601570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084160, 24.396477, 32.799774>,  <23.007355, 24.590277, 32.918697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084160, 24.396477, 32.799774>,  <23.212168, 24.073477, 32.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084160, 24.396477, 32.799774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191600, 0.457050, -0.868559,
		-0.927835, -0.372895, 0.008453,
		-0.320018, 0.807499, 0.495513,
		22.988155, 24.638727, 32.948429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.463303, 24.314941, 32.361248>,  <23.212168, 24.073477, 32.601570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.463303, 24.314941, 32.361248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667826, 24.628452, 32.502247>,  <22.790541, 24.816559, 32.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667826, 24.628452, 32.502247>,  <22.463303, 24.314941, 32.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667826, 24.628452, 32.502247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241456, 0.524665, -0.816349,
		-0.824780, 0.332294, 0.457514,
		0.511309, 0.783777, 0.352499,
		22.821218, 24.863586, 32.607998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056635, 24.870054, 32.184433>,  <22.463303, 24.314941, 32.361248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056635, 24.870054, 32.184433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419493, 25.023392, 32.253880>,  <22.637207, 25.115395, 32.295547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419493, 25.023392, 32.253880>,  <22.056635, 24.870054, 32.184433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419493, 25.023392, 32.253880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115793, 0.624004, -0.772794,
		-0.404579, 0.680931, 0.610449,
		0.907143, 0.383342, 0.173613,
		22.691635, 25.138393, 32.305962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.892977, 25.524855, 31.972143>,  <22.056635, 24.870054, 32.184433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.892977, 25.524855, 31.972143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.291655, 25.538383, 32.001690>,  <22.530861, 25.546501, 32.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.291655, 25.538383, 32.001690>,  <21.892977, 25.524855, 31.972143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.291655, 25.538383, 32.001690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008102, 0.863307, -0.504615,
		-0.080835, 0.503545, 0.860179,
		0.996695, 0.033822, 0.073865,
		22.590664, 25.548531, 32.023849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036293, 26.208214, 32.154324>,  <21.892977, 25.524855, 31.972143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036293, 26.208214, 32.154324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352489, 26.038506, 31.977634>,  <22.542208, 25.936680, 31.871620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352489, 26.038506, 31.977634>,  <22.036293, 26.208214, 32.154324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352489, 26.038506, 31.977634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073590, 0.781778, -0.619199,
		0.608039, 0.456964, 0.649209,
		0.790489, -0.424272, -0.441724,
		22.589636, 25.911224, 31.845118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.605719, 26.716404, 32.142040>,  <22.036293, 26.208214, 32.154324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.605719, 26.716404, 32.142040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729374, 26.456490, 31.864277>,  <22.803568, 26.300541, 31.697618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729374, 26.456490, 31.864277>,  <22.605719, 26.716404, 32.142040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729374, 26.456490, 31.864277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265822, 0.760115, -0.592928,
		0.913111, -0.001293, 0.407709,
		0.309139, -0.649787, -0.694413,
		22.822115, 26.261553, 31.655952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.321812, 26.850349, 31.988451>,  <22.605719, 26.716404, 32.142040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.321812, 26.850349, 31.988451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194534, 26.655472, 31.663147>,  <23.118168, 26.538546, 31.467964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194534, 26.655472, 31.663147>,  <23.321812, 26.850349, 31.988451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194534, 26.655472, 31.663147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397739, 0.710093, -0.581009,
		0.860556, -0.508338, -0.032170,
		-0.318193, -0.487196, -0.813261,
		23.099077, 26.509314, 31.419168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.882620, 26.905878, 31.485872>,  <23.321812, 26.850349, 31.988451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.882620, 26.905878, 31.485872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.572231, 26.802235, 31.255836>,  <23.385998, 26.740047, 31.117815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.572231, 26.802235, 31.255836>,  <23.882620, 26.905878, 31.485872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.572231, 26.802235, 31.255836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305329, 0.643500, -0.701913,
		0.551942, -0.720257, -0.420225,
		-0.775973, -0.259109, -0.575090,
		23.339439, 26.724501, 31.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247967, 26.778851, 30.899023>,  <23.882620, 26.905878, 31.485872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247967, 26.778851, 30.899023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866919, 26.852600, 30.802261>,  <23.638290, 26.896851, 30.744204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866919, 26.852600, 30.802261>,  <24.247967, 26.778851, 30.899023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.866919, 26.852600, 30.802261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298670, 0.717461, -0.629322,
		0.057526, -0.671756, -0.738536,
		-0.952621, 0.184376, -0.241906,
		23.581133, 26.907913, 30.729689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230339, 26.689074, 30.185957>,  <24.247967, 26.778851, 30.899023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230339, 26.689074, 30.185957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.967686, 26.947567, 30.341503>,  <23.810095, 27.102663, 30.434832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.967686, 26.947567, 30.341503>,  <24.230339, 26.689074, 30.185957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967686, 26.947567, 30.341503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332538, 0.710835, -0.619783,
		-0.676945, -0.277657, -0.681654,
		-0.656631, 0.646235, 0.388865,
		23.770697, 27.141438, 30.458162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.905773, 27.009014, 29.588856>,  <24.230339, 26.689074, 30.185957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.905773, 27.009014, 29.588856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854164, 27.256538, 29.898804>,  <23.823198, 27.405052, 30.084772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854164, 27.256538, 29.898804>,  <23.905773, 27.009014, 29.588856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854164, 27.256538, 29.898804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164357, 0.783940, -0.598686,
		-0.977927, 0.050113, -0.202850,
		-0.129020, 0.618811, 0.774872,
		23.815458, 27.442183, 30.131266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.694212, 27.635801, 29.376537>,  <23.905773, 27.009014, 29.588856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.694212, 27.635801, 29.376537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810869, 27.750488, 29.741554>,  <23.880863, 27.819300, 29.960566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810869, 27.750488, 29.741554>,  <23.694212, 27.635801, 29.376537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810869, 27.750488, 29.741554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353156, 0.854339, -0.381295,
		-0.888945, 0.433474, 0.147908,
		0.291645, 0.286716, 0.912544,
		23.898363, 27.836504, 30.015318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557373, 28.328512, 29.340200>,  <23.694212, 27.635801, 29.376537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557373, 28.328512, 29.340200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813421, 28.302818, 29.646435>,  <23.967051, 28.287401, 29.830175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813421, 28.302818, 29.646435>,  <23.557373, 28.328512, 29.340200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.813421, 28.302818, 29.646435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576828, 0.698388, -0.423701,
		-0.507459, 0.712831, 0.484105,
		0.640120, -0.064234, 0.765585,
		24.005457, 28.283548, 29.876110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.602701, 28.978355, 29.643559>,  <23.557373, 28.328512, 29.340200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.602701, 28.978355, 29.643559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936289, 28.786983, 29.753540>,  <24.136442, 28.672161, 29.819529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936289, 28.786983, 29.753540>,  <23.602701, 28.978355, 29.643559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.936289, 28.786983, 29.753540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550618, 0.688786, -0.471586,
		0.036235, 0.544684, 0.837858,
		0.833971, -0.478428, 0.274955,
		24.186480, 28.643456, 29.836027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989052, 29.500095, 29.897905>,  <23.602701, 28.978355, 29.643559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989052, 29.500095, 29.897905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247971, 29.205074, 29.820946>,  <24.403322, 29.028061, 29.774769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247971, 29.205074, 29.820946>,  <23.989052, 29.500095, 29.897905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247971, 29.205074, 29.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618591, 0.655785, -0.432770,
		0.445365, 0.161115, 0.880734,
		0.647298, -0.737555, -0.192400,
		24.442160, 28.983809, 29.763226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643293, 29.770527, 30.003263>,  <23.989052, 29.500095, 29.897905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643293, 29.770527, 30.003263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734461, 29.432091, 29.810520>,  <24.789162, 29.229029, 29.694874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734461, 29.432091, 29.810520>,  <24.643293, 29.770527, 30.003263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734461, 29.432091, 29.810520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696236, 0.487573, -0.526810,
		0.680669, -0.215417, 0.700204,
		0.227917, -0.846090, -0.481857,
		24.802835, 29.178265, 29.665962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358936, 29.674561, 29.984066>,  <24.643293, 29.770527, 30.003263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358936, 29.674561, 29.984066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232965, 29.487858, 29.653500>,  <25.157383, 29.375837, 29.455160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232965, 29.487858, 29.653500>,  <25.358936, 29.674561, 29.984066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232965, 29.487858, 29.653500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759483, 0.398271, -0.514361,
		0.569217, -0.789633, 0.229067,
		-0.314926, -0.466755, -0.826415,
		25.138487, 29.347832, 29.405575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928059, 29.448002, 29.561268>,  <25.358936, 29.674561, 29.984066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928059, 29.448002, 29.561268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639952, 29.415707, 29.285675>,  <25.467089, 29.396330, 29.120319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639952, 29.415707, 29.285675>,  <25.928059, 29.448002, 29.561268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639952, 29.415707, 29.285675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610358, 0.398240, -0.684739,
		0.329665, -0.913721, -0.237560,
		-0.720267, -0.080738, -0.688983,
		25.423872, 29.391485, 29.078979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333261, 29.551291, 28.964489>,  <25.928059, 29.448002, 29.561268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333261, 29.551291, 28.964489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966930, 29.591717, 28.809032>,  <25.747131, 29.615973, 28.715757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966930, 29.591717, 28.809032>,  <26.333261, 29.551291, 28.964489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966930, 29.591717, 28.809032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381101, 0.523791, -0.761843,
		0.126572, -0.845830, -0.518219,
		-0.915829, 0.101066, -0.388644,
		25.692183, 29.622036, 28.692440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332798, 29.405331, 28.248817>,  <26.333261, 29.551291, 28.964489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332798, 29.405331, 28.248817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994007, 29.616241, 28.275974>,  <25.790733, 29.742788, 28.292269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994007, 29.616241, 28.275974>,  <26.332798, 29.405331, 28.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994007, 29.616241, 28.275974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221583, 0.466214, -0.856473,
		-0.483250, -0.710369, -0.511708,
		-0.846977, 0.527276, 0.067892,
		25.739914, 29.774424, 28.296343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048870, 29.483049, 27.560301>,  <26.332798, 29.405331, 28.248817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048870, 29.483049, 27.560301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868191, 29.776100, 27.763958>,  <25.759783, 29.951931, 27.886152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868191, 29.776100, 27.763958>,  <26.048870, 29.483049, 27.560301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868191, 29.776100, 27.763958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075237, 0.599924, -0.796511,
		-0.888993, -0.321475, -0.326105,
		-0.451697, 0.732628, 0.509142,
		25.732681, 29.995888, 27.916700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706928, 29.756418, 27.058546>,  <26.048870, 29.483049, 27.560301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706928, 29.756418, 27.058546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688038, 30.036449, 27.343548>,  <25.676702, 30.204468, 27.514549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688038, 30.036449, 27.343548>,  <25.706928, 29.756418, 27.058546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688038, 30.036449, 27.343548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055918, 0.714035, -0.697873,
		-0.997318, 0.006883, -0.072868,
		-0.047227, 0.700076, 0.712505,
		25.673870, 30.246471, 27.557299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145336, 30.181871, 26.930914>,  <25.706928, 29.756418, 27.058546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145336, 30.181871, 26.930914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356764, 30.406971, 27.185135>,  <25.483620, 30.542030, 27.337667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356764, 30.406971, 27.185135>,  <25.145336, 30.181871, 26.930914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356764, 30.406971, 27.185135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000227, 0.748780, -0.662819,
		-0.848891, 0.350201, 0.395909,
		0.528569, 0.562751, 0.635553,
		25.515335, 30.575796, 27.375801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859695, 30.784105, 26.832491>,  <25.145336, 30.181871, 26.930914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859695, 30.784105, 26.832491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196650, 30.899364, 27.014637>,  <25.398823, 30.968521, 27.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196650, 30.899364, 27.014637>,  <24.859695, 30.784105, 26.832491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196650, 30.899364, 27.014637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039519, 0.809717, -0.585488,
		-0.537426, 0.511201, 0.670706,
		0.842385, 0.288150, 0.455365,
		25.449366, 30.985809, 27.151247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838531, 31.486908, 26.860003>,  <24.859695, 30.784105, 26.832491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838531, 31.486908, 26.860003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225901, 31.423344, 26.936844>,  <25.458323, 31.385206, 26.982948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225901, 31.423344, 26.936844>,  <24.838531, 31.486908, 26.860003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225901, 31.423344, 26.936844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215336, 0.921473, -0.323293,
		-0.125646, 0.354451, 0.926594,
		0.968423, -0.158909, 0.192106,
		25.516428, 31.375671, 26.994476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034008, 32.092911, 27.240309>,  <24.838531, 31.486908, 26.860003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034008, 32.092911, 27.240309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333824, 31.918198, 27.041348>,  <25.513714, 31.813370, 26.921970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333824, 31.918198, 27.041348>,  <25.034008, 32.092911, 27.240309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333824, 31.918198, 27.041348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075853, 0.803133, -0.590951,
		0.657598, 0.405212, 0.635113,
		0.749541, -0.436783, -0.497402,
		25.558687, 31.787163, 26.892126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276180, 32.655910, 26.833395>,  <25.034008, 32.092911, 27.240309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276180, 32.655910, 26.833395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514278, 32.365673, 26.695297>,  <25.657137, 32.191528, 26.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514278, 32.365673, 26.695297>,  <25.276180, 32.655910, 26.833395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514278, 32.365673, 26.695297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249842, 0.575479, -0.778719,
		0.763715, 0.377273, 0.523836,
		0.595246, -0.725596, -0.345243,
		25.692852, 32.147995, 26.591724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809084, 32.948811, 26.661299>,  <25.276180, 32.655910, 26.833395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809084, 32.948811, 26.661299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781330, 32.622269, 26.431953>,  <25.764679, 32.426342, 26.294346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781330, 32.622269, 26.431953>,  <25.809084, 32.948811, 26.661299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781330, 32.622269, 26.431953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055796, 0.570675, -0.819278,
		0.996029, -0.088835, 0.005955,
		-0.069382, -0.816357, -0.573365,
		25.760515, 32.377361, 26.259943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121038, 33.185059, 26.019932>,  <25.809084, 32.948811, 26.661299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121038, 33.185059, 26.019932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931017, 32.850452, 25.910706>,  <25.817003, 32.649689, 25.845169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931017, 32.850452, 25.910706>,  <26.121038, 33.185059, 26.019932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931017, 32.850452, 25.910706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129609, 0.240418, -0.961977,
		0.870359, -0.492384, -0.005792,
		-0.475054, -0.836515, -0.273068,
		25.788500, 32.599499, 25.828785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474566, 32.824535, 25.507835>,  <26.121038, 33.185059, 26.019932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474566, 32.824535, 25.507835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087675, 32.730850, 25.468601>,  <25.855541, 32.674641, 25.445061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087675, 32.730850, 25.468601>,  <26.474566, 32.824535, 25.507835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087675, 32.730850, 25.468601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055576, 0.181656, -0.981791,
		0.247763, -0.955064, -0.162685,
		-0.967225, -0.234210, -0.098086,
		25.797508, 32.660587, 25.439175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439857, 32.428936, 24.886202>,  <26.474566, 32.824535, 25.507835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439857, 32.428936, 24.886202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074787, 32.558033, 24.986485>,  <25.855745, 32.635490, 25.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074787, 32.558033, 24.986485>,  <26.439857, 32.428936, 24.886202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074787, 32.558033, 24.986485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229039, 0.104119, -0.967833,
		-0.338468, -0.940741, -0.021105,
		-0.912678, 0.322747, 0.250707,
		25.800983, 32.654858, 25.061697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987022, 32.063236, 24.446222>,  <26.439857, 32.428936, 24.886202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987022, 32.063236, 24.446222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760872, 32.369579, 24.568741>,  <25.625181, 32.553383, 24.642252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760872, 32.369579, 24.568741>,  <25.987022, 32.063236, 24.446222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760872, 32.369579, 24.568741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265533, 0.182579, -0.946656,
		-0.780923, -0.616549, 0.100133,
		-0.565378, 0.765854, 0.306294,
		25.591259, 32.599335, 24.660629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390951, 32.031704, 24.003540>,  <25.987022, 32.063236, 24.446222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390951, 32.031704, 24.003540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433205, 32.398647, 24.157059>,  <25.458557, 32.618813, 24.249170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433205, 32.398647, 24.157059>,  <25.390951, 32.031704, 24.003540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433205, 32.398647, 24.157059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282915, 0.397732, -0.872794,
		-0.953311, -0.016385, 0.301547,
		0.105634, 0.917355, 0.383798,
		25.464895, 32.673855, 24.272198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881205, 32.400105, 23.787825>,  <25.390951, 32.031704, 24.003540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881205, 32.400105, 23.787825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113693, 32.704765, 23.902412>,  <25.253187, 32.887562, 23.971165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113693, 32.704765, 23.902412>,  <24.881205, 32.400105, 23.787825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113693, 32.704765, 23.902412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336652, 0.545563, -0.767481,
		-0.740843, 0.349634, 0.573505,
		0.581221, 0.761654, 0.286472,
		25.288059, 32.933262, 23.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508087, 32.996071, 23.648737>,  <24.881205, 32.400105, 23.787825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508087, 32.996071, 23.648737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879622, 33.137135, 23.694168>,  <25.102541, 33.221771, 23.721426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879622, 33.137135, 23.694168>,  <24.508087, 32.996071, 23.648737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879622, 33.137135, 23.694168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157365, 0.653047, -0.740787,
		-0.335416, 0.670195, 0.662068,
		0.928834, 0.352658, 0.113578,
		25.158272, 33.242931, 23.728241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505255, 33.786507, 23.655188>,  <24.508087, 32.996071, 23.648737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505255, 33.786507, 23.655188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873180, 33.668896, 23.551273>,  <25.093937, 33.598328, 23.488926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873180, 33.668896, 23.551273>,  <24.505255, 33.786507, 23.655188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873180, 33.668896, 23.551273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026780, 0.707622, -0.706084,
		0.391438, 0.642510, 0.658755,
		0.919815, -0.294029, -0.259783,
		25.149124, 33.580688, 23.473339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799765, 34.387524, 23.385748>,  <24.505255, 33.786507, 23.655188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799765, 34.387524, 23.385748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063051, 34.128391, 23.232349>,  <25.221024, 33.972912, 23.140310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063051, 34.128391, 23.232349>,  <24.799765, 34.387524, 23.385748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063051, 34.128391, 23.232349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090976, 0.574122, -0.813699,
		0.747313, 0.500699, 0.436833,
		0.658214, -0.647830, -0.383498,
		25.260515, 33.934044, 23.117300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186165, 34.889160, 23.103363>,  <24.799765, 34.387524, 23.385748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186165, 34.889160, 23.103363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324511, 34.536690, 22.974422>,  <25.407518, 34.325207, 22.897058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324511, 34.536690, 22.974422>,  <25.186165, 34.889160, 23.103363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324511, 34.536690, 22.974422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398614, 0.449003, -0.799690,
		0.849402, 0.148091, 0.506543,
		0.345865, -0.881173, -0.322353,
		25.428270, 34.272339, 22.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728912, 35.156490, 23.625824>,  <25.186165, 34.889160, 23.103363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728912, 35.156490, 23.625824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695715, 35.003849, 23.257587>,  <24.675797, 34.912266, 23.036646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695715, 35.003849, 23.257587>,  <24.728912, 35.156490, 23.625824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695715, 35.003849, 23.257587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990781, 0.130848, 0.035081,
		0.107071, 0.915017, -0.388946,
		-0.082993, -0.381604, -0.920592,
		24.670816, 34.889366, 22.981409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477970, 35.587173, 23.160587>,  <24.728912, 35.156490, 23.625824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477970, 35.587173, 23.160587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377127, 35.217182, 23.046852>,  <24.316620, 34.995186, 22.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377127, 35.217182, 23.046852>,  <24.477970, 35.587173, 23.160587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377127, 35.217182, 23.046852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965708, 0.221648, 0.135206,
		-0.062040, 0.308675, -0.949142,
		-0.252110, -0.924982, -0.284339,
		24.301495, 34.939686, 22.961550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.880644, 35.680077, 22.799490>,  <24.477970, 35.587173, 23.160587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.880644, 35.680077, 22.799490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898729, 35.308678, 22.946922>,  <23.909580, 35.085838, 23.035381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898729, 35.308678, 22.946922>,  <23.880644, 35.680077, 22.799490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898729, 35.308678, 22.946922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977808, 0.034421, 0.206658,
		-0.204567, -0.369747, -0.906333,
		0.045214, -0.928495, 0.368583,
		23.912294, 35.030128, 23.057497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347036, 35.984310, 23.175905>,  <23.880644, 35.680077, 22.799490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347036, 35.984310, 23.175905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604771, 36.251060, 23.325626>,  <23.759411, 36.411110, 23.415459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604771, 36.251060, 23.325626>,  <23.347036, 35.984310, 23.175905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604771, 36.251060, 23.325626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749367, 0.452929, 0.483017,
		0.152581, -0.591715, 0.791575,
		0.644336, 0.666879, 0.374303,
		23.798071, 36.451126, 23.437918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926451, 35.636868, 23.697651>,  <23.347036, 35.984310, 23.175905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926451, 35.636868, 23.697651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.644583, 35.373642, 23.803772>,  <22.475462, 35.215706, 23.867445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.644583, 35.373642, 23.803772>,  <22.926451, 35.636868, 23.697651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644583, 35.373642, 23.803772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027795, -0.399226, -0.916431,
		0.708989, -0.638409, 0.299614,
		-0.704672, -0.658067, 0.265302,
		22.433182, 35.176220, 23.883362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.224052, 34.894653, 23.648571>,  <22.926451, 35.636868, 23.697651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.224052, 34.894653, 23.648571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832085, 34.937172, 23.581093>,  <22.596903, 34.962681, 23.540606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832085, 34.937172, 23.581093>,  <23.224052, 34.894653, 23.648571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832085, 34.937172, 23.581093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086588, -0.535259, -0.840238,
		-0.179605, -0.837973, 0.515308,
		-0.979921, 0.106292, -0.168694,
		22.538109, 34.969059, 23.530485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021585, 34.232735, 23.474653>,  <23.224052, 34.894653, 23.648571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021585, 34.232735, 23.474653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811556, 34.516804, 23.287056>,  <22.685537, 34.687244, 23.174498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811556, 34.516804, 23.287056>,  <23.021585, 34.232735, 23.474653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.811556, 34.516804, 23.287056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286965, -0.371059, -0.883157,
		-0.801216, -0.598308, -0.008960,
		-0.525075, 0.710170, -0.468992,
		22.654034, 34.729855, 23.146358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.441589, 33.869541, 23.044098>,  <23.021585, 34.232735, 23.474653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.441589, 33.869541, 23.044098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561720, 34.224781, 22.904915>,  <22.633799, 34.437927, 22.821405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561720, 34.224781, 22.904915>,  <22.441589, 33.869541, 23.044098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561720, 34.224781, 22.904915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171668, -0.409170, -0.896164,
		-0.938261, 0.209409, -0.275344,
		0.300327, 0.888104, -0.347959,
		22.651817, 34.491211, 22.800528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177860, 33.711308, 22.360710>,  <22.441589, 33.869541, 23.044098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177860, 33.711308, 22.360710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420660, 34.029171, 22.364098>,  <22.566339, 34.219887, 22.366131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420660, 34.029171, 22.364098>,  <22.177860, 33.711308, 22.360710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420660, 34.029171, 22.364098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459016, -0.341881, -0.820013,
		-0.648733, 0.501636, -0.572282,
		0.607001, 0.794656, 0.008469,
		22.602760, 34.267567, 22.366638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.355991, 33.640118, 21.660151>,  <22.177860, 33.711308, 22.360710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.355991, 33.640118, 21.660151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648533, 33.876171, 21.796894>,  <22.824059, 34.017803, 21.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648533, 33.876171, 21.796894>,  <22.355991, 33.640118, 21.660151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648533, 33.876171, 21.796894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508888, -0.138492, -0.849619,
		-0.454042, 0.795339, -0.401598,
		0.731354, 0.590131, 0.341857,
		22.867939, 34.053211, 21.899450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616175, 33.939007, 21.070932>,  <22.355991, 33.640118, 21.660151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.616175, 33.939007, 21.070932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900108, 34.010918, 21.343349>,  <23.070469, 34.054066, 21.506800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.900108, 34.010918, 21.343349>,  <22.616175, 33.939007, 21.070932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.900108, 34.010918, 21.343349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694638, -0.018489, -0.719122,
		-0.116692, 0.983533, -0.138005,
		0.709832, 0.179779, 0.681042,
		23.113058, 34.064850, 21.547663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.137148, 34.381096, 20.759209>,  <22.616175, 33.939007, 21.070932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.137148, 34.381096, 20.759209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.317383, 34.188290, 21.059776>,  <23.425524, 34.072605, 21.240116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.317383, 34.188290, 21.059776>,  <23.137148, 34.381096, 20.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317383, 34.188290, 21.059776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700177, -0.331356, -0.632420,
		0.553824, 0.811087, 0.188192,
		0.450589, -0.482017, 0.751418,
		23.452560, 34.043686, 21.285202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.905972, 34.390316, 20.637691>,  <23.137148, 34.381096, 20.759209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.905972, 34.390316, 20.637691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884487, 34.111366, 20.923569>,  <23.871597, 33.943996, 21.095095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884487, 34.111366, 20.923569>,  <23.905972, 34.390316, 20.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884487, 34.111366, 20.923569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786364, -0.470651, -0.400150,
		0.615425, 0.540516, 0.573668,
		-0.053710, -0.697374, 0.714692,
		23.868374, 33.902153, 21.137976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591106, 34.331882, 20.899429>,  <23.905972, 34.390316, 20.637691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591106, 34.331882, 20.899429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411304, 33.988106, 20.996841>,  <24.303423, 33.781841, 21.055288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411304, 33.988106, 20.996841>,  <24.591106, 34.331882, 20.899429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411304, 33.988106, 20.996841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706786, -0.508903, -0.491397,
		0.546260, -0.048761, 0.836195,
		-0.449503, -0.859442, 0.243530,
		24.276453, 33.730274, 21.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086098, 33.755623, 21.003918>,  <24.591106, 34.331882, 20.899429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086098, 33.755623, 21.003918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744049, 33.571491, 20.908535>,  <24.538820, 33.461010, 20.851305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744049, 33.571491, 20.908535>,  <25.086098, 33.755623, 21.003918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744049, 33.571491, 20.908535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502651, -0.623583, -0.598738,
		0.126922, -0.631853, 0.764625,
		-0.855122, -0.460333, -0.238455,
		24.487513, 33.433392, 20.836998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281700, 33.196728, 20.822485>,  <25.086098, 33.755623, 21.003918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281700, 33.196728, 20.822485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918554, 33.164799, 20.657848>,  <24.700666, 33.145641, 20.559067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918554, 33.164799, 20.657848>,  <25.281700, 33.196728, 20.822485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918554, 33.164799, 20.657848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381510, -0.564400, -0.732054,
		-0.173867, -0.821633, 0.542853,
		-0.907866, -0.079824, -0.411592,
		24.646194, 33.140850, 20.534370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232693, 32.524685, 20.621490>,  <25.281700, 33.196728, 20.822485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232693, 32.524685, 20.621490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942614, 32.700504, 20.409496>,  <24.768566, 32.805996, 20.282299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942614, 32.700504, 20.409496>,  <25.232693, 32.524685, 20.621490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942614, 32.700504, 20.409496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195286, -0.606812, -0.770482,
		-0.660266, -0.662251, 0.354221,
		-0.725198, 0.439548, -0.529986,
		24.725054, 32.832367, 20.250500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963804, 31.987486, 20.285246>,  <25.232693, 32.524685, 20.621490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963804, 31.987486, 20.285246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838129, 32.315987, 20.094738>,  <24.762724, 32.513088, 19.980433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838129, 32.315987, 20.094738>,  <24.963804, 31.987486, 20.285246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838129, 32.315987, 20.094738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215473, -0.426897, -0.878254,
		-0.924586, -0.378559, -0.042832,
		-0.314186, 0.821251, -0.476272,
		24.743874, 32.562363, 19.951857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389463, 31.795288, 19.936163>,  <24.963804, 31.987486, 20.285246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389463, 31.795288, 19.936163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544519, 32.112728, 19.748573>,  <24.637552, 32.303192, 19.636019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544519, 32.112728, 19.748573>,  <24.389463, 31.795288, 19.936163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544519, 32.112728, 19.748573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087590, -0.474742, -0.875756,
		-0.917640, 0.380555, -0.114518,
		0.387639, 0.793598, -0.468975,
		24.660810, 32.350807, 19.607882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048504, 31.773666, 19.354372>,  <24.389463, 31.795288, 19.936163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048504, 31.773666, 19.354372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352497, 32.019985, 19.271214>,  <24.534893, 32.167778, 19.221319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352497, 32.019985, 19.271214>,  <24.048504, 31.773666, 19.354372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352497, 32.019985, 19.271214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016834, -0.338408, -0.940849,
		-0.649725, 0.711529, -0.267550,
		0.759983, 0.615797, -0.207895,
		24.580492, 32.204723, 19.208845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927231, 32.184673, 18.649223>,  <24.048504, 31.773666, 19.354372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927231, 32.184673, 18.649223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316793, 32.194370, 18.739487>,  <24.550531, 32.200188, 18.793646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316793, 32.194370, 18.739487>,  <23.927231, 32.184673, 18.649223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316793, 32.194370, 18.739487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226902, -0.126115, -0.965717,
		0.005049, 0.991719, -0.128324,
		0.973904, 0.024241, 0.225660,
		24.608965, 32.201641, 18.807184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174866, 32.609291, 18.065460>,  <23.927231, 32.184673, 18.649223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174866, 32.609291, 18.065460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498989, 32.441864, 18.229511>,  <24.693462, 32.341408, 18.327942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498989, 32.441864, 18.229511>,  <24.174866, 32.609291, 18.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498989, 32.441864, 18.229511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467130, 0.038799, -0.883337,
		0.353823, 0.907357, 0.226965,
		0.810308, -0.418567, 0.410126,
		24.742081, 32.316296, 18.352549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746218, 33.016785, 17.929245>,  <24.174866, 32.609291, 18.065460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746218, 33.016785, 17.929245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878948, 32.643810, 17.986446>,  <24.958586, 32.420025, 18.020767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878948, 32.643810, 17.986446>,  <24.746218, 33.016785, 17.929245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878948, 32.643810, 17.986446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526171, 0.057125, -0.848458,
		0.782966, 0.356783, 0.509578,
		0.331825, -0.932439, 0.143002,
		24.978497, 32.364079, 18.029346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403896, 33.057331, 17.587322>,  <24.746218, 33.016785, 17.929245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403896, 33.057331, 17.587322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363287, 32.662613, 17.637791>,  <25.338923, 32.425781, 17.668072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363287, 32.662613, 17.637791>,  <25.403896, 33.057331, 17.587322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363287, 32.662613, 17.637791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609350, -0.161933, -0.776190,
		0.786376, -0.001917, 0.617746,
		-0.101522, -0.986800, 0.126172,
		25.332830, 32.366573, 17.675642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087418, 32.803535, 17.646374>,  <25.403896, 33.057331, 17.587322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087418, 32.803535, 17.646374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843399, 32.503025, 17.545635>,  <25.696989, 32.322720, 17.485193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843399, 32.503025, 17.545635>,  <26.087418, 32.803535, 17.646374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843399, 32.503025, 17.545635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603946, -0.235120, -0.761557,
		0.512928, -0.616683, 0.597165,
		-0.610045, -0.751279, -0.251844,
		25.660385, 32.277641, 17.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504976, 32.202099, 17.624474>,  <26.087418, 32.803535, 17.646374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504976, 32.202099, 17.624474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189785, 32.118874, 17.392681>,  <26.000669, 32.068939, 17.253607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189785, 32.118874, 17.392681>,  <26.504976, 32.202099, 17.624474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189785, 32.118874, 17.392681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614352, -0.203441, -0.762354,
		0.040730, -0.956724, 0.288133,
		-0.787980, -0.208066, -0.579479,
		25.953390, 32.056454, 17.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766466, 31.693327, 17.234692>,  <26.504976, 32.202099, 17.624474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766466, 31.693327, 17.234692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442095, 31.808369, 17.030857>,  <26.247473, 31.877394, 16.908556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442095, 31.808369, 17.030857>,  <26.766466, 31.693327, 17.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442095, 31.808369, 17.030857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500581, -0.109992, -0.858674,
		-0.303010, -0.951412, -0.054775,
		-0.810928, 0.287606, -0.509587,
		26.198816, 31.894650, 16.877981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489052, 31.179722, 16.894712>,  <26.766466, 31.693327, 17.234692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489052, 31.179722, 16.894712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386103, 31.520775, 16.712822>,  <26.324333, 31.725407, 16.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386103, 31.520775, 16.712822>,  <26.489052, 31.179722, 16.894712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386103, 31.520775, 16.712822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414319, -0.327757, -0.849067,
		-0.872982, -0.406930, -0.268906,
		-0.257375, 0.852633, -0.454725,
		26.308889, 31.776566, 16.576405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954102, 30.980820, 16.365580>,  <26.489052, 31.179722, 16.894712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954102, 30.980820, 16.365580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168676, 31.300373, 16.256752>,  <26.297421, 31.492105, 16.191456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168676, 31.300373, 16.256752>,  <25.954102, 30.980820, 16.365580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168676, 31.300373, 16.256752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131809, -0.397733, -0.907984,
		-0.833584, 0.451214, -0.318658,
		0.536436, 0.798883, -0.272070,
		26.329607, 31.540037, 16.175131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612402, 31.453430, 15.750415>,  <25.954102, 30.980820, 16.365580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612402, 31.453430, 15.750415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009239, 31.411533, 15.778071>,  <26.247341, 31.386395, 15.794665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009239, 31.411533, 15.778071>,  <25.612402, 31.453430, 15.750415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009239, 31.411533, 15.778071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043885, -0.226617, -0.972995,
		0.117582, 0.968336, -0.220229,
		0.992093, -0.104742, 0.069142,
		26.306868, 31.380110, 15.798814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808979, 31.450472, 15.071172>,  <25.612402, 31.453430, 15.750415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808979, 31.450472, 15.071172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137655, 31.316929, 15.255937>,  <26.334862, 31.236803, 15.366796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137655, 31.316929, 15.255937>,  <25.808979, 31.450472, 15.071172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137655, 31.316929, 15.255937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329719, -0.382610, -0.863073,
		0.464878, 0.861480, -0.204307,
		0.821690, -0.333860, 0.461913,
		26.384163, 31.216770, 15.394510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471342, 31.720858, 14.766710>,  <25.808979, 31.450472, 15.071172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471342, 31.720858, 14.766710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513432, 31.352112, 14.915891>,  <26.538685, 31.130865, 15.005399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513432, 31.352112, 14.915891>,  <26.471342, 31.720858, 14.766710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513432, 31.352112, 14.915891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517524, -0.269483, -0.812126,
		0.849174, 0.278467, 0.448731,
		0.105225, -0.921865, 0.372951,
		26.544998, 31.075552, 15.027776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022308, 32.136143, 14.978727>,  <26.471342, 31.720858, 14.766710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022308, 32.136143, 14.978727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284658, 32.349232, 15.192655>,  <27.442068, 32.477085, 15.321012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284658, 32.349232, 15.192655>,  <27.022308, 32.136143, 14.978727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284658, 32.349232, 15.192655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753286, 0.416006, 0.509411,
		0.048888, -0.736981, 0.674143,
		0.655874, 0.532726, 0.534819,
		27.481421, 32.509048, 15.353101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494213, 32.682278, 15.040333>,  <27.022308, 32.136143, 14.978727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494213, 32.682278, 15.040333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342745, 32.852169, 14.711404>,  <26.251863, 32.954102, 14.514047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342745, 32.852169, 14.711404>,  <26.494213, 32.682278, 15.040333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342745, 32.852169, 14.711404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543534, 0.617085, 0.569014,
		0.749118, 0.662431, -0.002820,
		-0.378672, 0.424726, -0.822323,
		26.229143, 32.979588, 14.464706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395750, 33.345928, 15.106313>,  <26.494213, 32.682278, 15.040333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395750, 33.345928, 15.106313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114117, 33.274181, 14.831477>,  <25.945137, 33.231133, 14.666575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114117, 33.274181, 14.831477>,  <26.395750, 33.345928, 15.106313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114117, 33.274181, 14.831477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639302, 0.581305, 0.503366,
		0.309122, 0.793671, -0.523956,
		-0.704085, -0.179365, -0.687090,
		25.902891, 33.220371, 14.625350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143272, 33.992752, 14.640595>,  <26.395750, 33.345928, 15.106313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143272, 33.992752, 14.640595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880507, 33.699734, 14.711974>,  <25.722847, 33.523922, 14.754801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880507, 33.699734, 14.711974>,  <26.143272, 33.992752, 14.640595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880507, 33.699734, 14.711974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488151, 0.593605, 0.639799,
		-0.574607, 0.333184, -0.747539,
		-0.656913, -0.732545, 0.178446,
		25.683432, 33.479969, 14.765508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365213, 34.261780, 14.470456>,  <26.143272, 33.992752, 14.640595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365213, 34.261780, 14.470456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381235, 33.963520, 14.736508>,  <25.390848, 33.784565, 14.896140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381235, 33.963520, 14.736508>,  <25.365213, 34.261780, 14.470456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381235, 33.963520, 14.736508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455263, 0.578936, 0.676439,
		-0.889455, -0.329905, -0.316278,
		0.040056, -0.745652, 0.665131,
		25.393251, 33.739826, 14.936048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695261, 34.116222, 14.757041>,  <25.365213, 34.261780, 14.470456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695261, 34.116222, 14.757041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986870, 34.013897, 15.010997>,  <25.161835, 33.952503, 15.163370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986870, 34.013897, 15.010997>,  <24.695261, 34.116222, 14.757041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986870, 34.013897, 15.010997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490389, 0.451910, 0.745182,
		-0.477539, -0.854598, 0.204006,
		0.729023, -0.255811, 0.634890,
		25.205578, 33.937153, 15.201464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358671, 33.991272, 15.326513>,  <24.695261, 34.116222, 14.757041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358671, 33.991272, 15.326513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737719, 34.013439, 15.452338>,  <24.965147, 34.026741, 15.527833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737719, 34.013439, 15.452338>,  <24.358671, 33.991272, 15.326513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737719, 34.013439, 15.452338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313372, 0.351843, 0.882046,
		-0.061798, -0.934417, 0.350778,
		0.947617, 0.055416, 0.314563,
		25.022003, 34.030064, 15.546707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337767, 33.726238, 16.045723>,  <24.358671, 33.991272, 15.326513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337767, 33.726238, 16.045723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654390, 33.965359, 15.995013>,  <24.844364, 34.108829, 15.964587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654390, 33.965359, 15.995013>,  <24.337767, 33.726238, 16.045723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654390, 33.965359, 15.995013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278673, 0.537747, 0.795719,
		0.543858, -0.594526, 0.592248,
		0.791555, 0.597802, -0.126780,
		24.891859, 34.144699, 15.956981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712858, 33.752411, 16.662725>,  <24.337767, 33.726238, 16.045723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712858, 33.752411, 16.662725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829790, 34.106060, 16.516918>,  <24.899950, 34.318249, 16.429434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829790, 34.106060, 16.516918>,  <24.712858, 33.752411, 16.662725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829790, 34.106060, 16.516918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172965, 0.423761, 0.889106,
		0.940546, -0.196863, 0.276800,
		0.292329, 0.884122, -0.364516,
		24.917488, 34.371296, 16.407564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073463, 34.118980, 17.230145>,  <24.712858, 33.752411, 16.662725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073463, 34.118980, 17.230145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947584, 34.396248, 16.970764>,  <24.872057, 34.562607, 16.815136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947584, 34.396248, 16.970764>,  <25.073463, 34.118980, 17.230145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947584, 34.396248, 16.970764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478080, 0.474426, 0.739161,
		0.820002, 0.542623, 0.182088,
		-0.314699, 0.693166, -0.648448,
		24.853174, 34.604198, 16.776230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740696, 34.416286, 17.686018>,  <25.073463, 34.118980, 17.230145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740696, 34.416286, 17.686018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666477, 34.632748, 17.357941>,  <24.621946, 34.762627, 17.161095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666477, 34.632748, 17.357941>,  <24.740696, 34.416286, 17.686018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666477, 34.632748, 17.357941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570474, 0.620298, 0.538322,
		0.800082, 0.567784, 0.193621,
		-0.185548, 0.541157, -0.820195,
		24.610813, 34.795094, 17.111881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866226, 35.115971, 17.857416>,  <24.740696, 34.416286, 17.686018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866226, 35.115971, 17.857416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606363, 35.106323, 17.553478>,  <24.450445, 35.100536, 17.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606363, 35.106323, 17.553478>,  <24.866226, 35.115971, 17.857416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606363, 35.106323, 17.553478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616579, 0.601402, 0.508081,
		0.444718, 0.798582, -0.405576,
		-0.649659, -0.024117, -0.759844,
		24.411467, 35.099087, 17.325525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588511, 35.795483, 17.781866>,  <24.866226, 35.115971, 17.857416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588511, 35.795483, 17.781866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317329, 35.542461, 17.632065>,  <24.154621, 35.390648, 17.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317329, 35.542461, 17.632065>,  <24.588511, 35.795483, 17.781866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317329, 35.542461, 17.632065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728047, 0.507347, 0.461028,
		-0.101621, 0.585213, -0.804487,
		-0.677954, -0.632554, -0.374505,
		24.113943, 35.352695, 17.519712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.067087, 36.182854, 17.759718>,  <24.588511, 35.795483, 17.781866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.067087, 36.182854, 17.759718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895824, 35.822472, 17.731533>,  <23.793066, 35.606243, 17.714622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895824, 35.822472, 17.731533>,  <24.067087, 36.182854, 17.759718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895824, 35.822472, 17.731533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821993, 0.355862, 0.444623,
		-0.375510, 0.248287, -0.892942,
		-0.428158, -0.900952, -0.070461,
		23.767376, 35.552185, 17.710394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376436, 36.236946, 17.619324>,  <24.067087, 36.182854, 17.759718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376436, 36.236946, 17.619324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.378307, 35.872292, 17.783710>,  <23.379431, 35.653500, 17.882343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.378307, 35.872292, 17.783710>,  <23.376436, 36.236946, 17.619324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378307, 35.872292, 17.783710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880187, 0.191299, 0.434368,
		-0.474604, -0.363761, -0.801516,
		0.004677, -0.911638, 0.410969,
		23.379711, 35.598801, 17.907001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.650444, 36.057636, 17.709986>,  <23.376436, 36.236946, 17.619324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.650444, 36.057636, 17.709986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811041, 35.795670, 17.966076>,  <22.907398, 35.638489, 18.119730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811041, 35.795670, 17.966076>,  <22.650444, 36.057636, 17.709986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.811041, 35.795670, 17.966076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770533, 0.136316, 0.622653,
		-0.495061, -0.743302, -0.449908,
		0.401490, -0.654920, 0.640223,
		22.931488, 35.599194, 18.158142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114676, 35.548923, 17.914677>,  <22.650444, 36.057636, 17.709986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114676, 35.548923, 17.914677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394110, 35.554276, 18.200836>,  <22.561769, 35.557487, 18.372532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394110, 35.554276, 18.200836>,  <22.114676, 35.548923, 17.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.394110, 35.554276, 18.200836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706094, 0.174700, 0.686230,
		-0.115799, -0.984531, 0.131491,
		0.698586, 0.013380, 0.715401,
		22.603685, 35.558289, 18.415457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.828857, 35.181061, 18.391903>,  <22.114676, 35.548923, 17.914677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.828857, 35.181061, 18.391903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130373, 35.361202, 18.583313>,  <22.311281, 35.469288, 18.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130373, 35.361202, 18.583313>,  <21.828857, 35.181061, 18.391903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130373, 35.361202, 18.583313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604083, 0.188305, 0.774354,
		0.258626, -0.872766, 0.413994,
		0.753788, 0.450355, 0.478523,
		22.356510, 35.496307, 18.726870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701725, 35.061451, 19.107414>,  <21.828857, 35.181061, 18.391903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701725, 35.061451, 19.107414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971178, 35.356083, 19.131638>,  <22.132851, 35.532864, 19.146172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971178, 35.356083, 19.131638>,  <21.701725, 35.061451, 19.107414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971178, 35.356083, 19.131638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384674, 0.279472, 0.879728,
		0.631066, -0.615910, 0.471605,
		0.673634, 0.736580, 0.060559,
		22.173267, 35.577057, 19.149805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109343, 34.897530, 19.776716>,  <21.701725, 35.061451, 19.107414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109343, 34.897530, 19.776716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.105501, 35.282547, 19.668331>,  <22.103197, 35.513557, 19.603300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.105501, 35.282547, 19.668331>,  <22.109343, 34.897530, 19.776716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.105501, 35.282547, 19.668331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275300, 0.257958, 0.926103,
		0.961310, 0.083489, 0.262511,
		-0.009603, 0.962542, -0.270962,
		22.102621, 35.571308, 19.587042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.354342, 35.149624, 20.343994>,  <22.109343, 34.897530, 19.776716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.354342, 35.149624, 20.343994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186176, 35.466286, 20.166668>,  <22.085278, 35.656284, 20.060272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186176, 35.466286, 20.166668>,  <22.354342, 35.149624, 20.343994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186176, 35.466286, 20.166668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244867, 0.371470, 0.895573,
		0.873666, 0.485065, 0.037680,
		-0.420414, 0.791658, -0.443317,
		22.060053, 35.703785, 20.033672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537157, 35.704552, 20.760702>,  <22.354342, 35.149624, 20.343994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537157, 35.704552, 20.760702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231331, 35.849659, 20.547596>,  <22.047834, 35.936722, 20.419733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231331, 35.849659, 20.547596>,  <22.537157, 35.704552, 20.760702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231331, 35.849659, 20.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298579, 0.533195, 0.791552,
		0.571217, 0.764266, -0.299348,
		-0.764566, 0.362769, -0.532763,
		22.001961, 35.958488, 20.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.455967, 36.471085, 20.794052>,  <22.537157, 35.704552, 20.760702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.455967, 36.471085, 20.794052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085152, 36.357773, 20.695786>,  <21.862661, 36.289787, 20.636826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085152, 36.357773, 20.695786>,  <22.455967, 36.471085, 20.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085152, 36.357773, 20.695786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358351, 0.476466, 0.802848,
		-0.110374, 0.832307, -0.543215,
		-0.927040, -0.283275, -0.245668,
		21.807039, 36.272789, 20.622086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135597, 37.099728, 20.922972>,  <22.455967, 36.471085, 20.794052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.135597, 37.099728, 20.922972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848213, 36.821789, 20.910309>,  <21.675783, 36.655025, 20.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848213, 36.821789, 20.910309>,  <22.135597, 37.099728, 20.922972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848213, 36.821789, 20.910309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530329, 0.517763, 0.671322,
		-0.450075, 0.499107, -0.740490,
		-0.718459, -0.694848, -0.031659,
		21.632675, 36.613335, 20.900812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506954, 37.475567, 21.016792>,  <22.135597, 37.099728, 20.922972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506954, 37.475567, 21.016792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420872, 37.096684, 21.111858>,  <21.369223, 36.869354, 21.168898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420872, 37.096684, 21.111858>,  <21.506954, 37.475567, 21.016792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420872, 37.096684, 21.111858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746542, 0.316462, 0.585258,
		-0.629572, -0.051474, -0.775235,
		-0.215207, -0.947208, 0.237663,
		21.356310, 36.812523, 21.183157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.818386, 37.515121, 21.050720>,  <21.506954, 37.475567, 21.016792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.818386, 37.515121, 21.050720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897610, 37.171299, 21.239159>,  <20.945145, 36.965004, 21.352222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897610, 37.171299, 21.239159>,  <20.818386, 37.515121, 21.050720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897610, 37.171299, 21.239159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705834, 0.208417, 0.677024,
		-0.680126, -0.466606, -0.565427,
		0.198058, -0.859559, 0.471096,
		20.957027, 36.913433, 21.380487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219315, 37.219341, 21.230410>,  <20.818386, 37.515121, 21.050720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219315, 37.219341, 21.230410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492769, 37.103016, 21.498161>,  <20.656841, 37.033222, 21.658812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492769, 37.103016, 21.498161>,  <20.219315, 37.219341, 21.230410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492769, 37.103016, 21.498161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655252, 0.159306, 0.738421,
		-0.321380, -0.943424, -0.081649,
		0.683637, -0.290815, 0.669378,
		20.697861, 37.015770, 21.698975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.016586, 36.657963, 21.670462>,  <20.219315, 37.219341, 21.230410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.016586, 36.657963, 21.670462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278786, 36.916718, 21.826340>,  <20.436106, 37.071972, 21.919867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278786, 36.916718, 21.826340>,  <20.016586, 36.657963, 21.670462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278786, 36.916718, 21.826340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697287, 0.320257, 0.641270,
		0.290018, -0.692088, 0.660987,
		0.655500, 0.646877, 0.389703,
		20.475435, 37.110783, 21.943249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386471, 36.566116, 22.140545>,  <20.016586, 36.657963, 21.670462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386471, 36.566116, 22.140545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451178, 36.438911, 22.514217>,  <19.490002, 36.362587, 22.738420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451178, 36.438911, 22.514217>,  <19.386471, 36.566116, 22.140545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451178, 36.438911, 22.514217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520031, 0.832014, 0.193184,
		-0.838689, 0.454553, 0.299970,
		0.161766, -0.318015, 0.934183,
		19.499708, 36.343506, 22.794472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981329, 36.835819, 22.620558>,  <19.386471, 36.566116, 22.140545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981329, 36.835819, 22.620558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350897, 36.766228, 22.756855>,  <19.572638, 36.724472, 22.838634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350897, 36.766228, 22.756855>,  <18.981329, 36.835819, 22.620558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350897, 36.766228, 22.756855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104207, 0.971388, 0.213418,
		-0.368125, -0.161673, 0.915612,
		0.923918, -0.173977, 0.340745,
		19.628073, 36.714035, 22.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627785, 37.364162, 23.032974>,  <18.981329, 36.835819, 22.620558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627785, 37.364162, 23.032974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.957184, 37.400753, 22.809017>,  <19.154823, 37.422707, 22.674643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.957184, 37.400753, 22.809017>,  <18.627785, 37.364162, 23.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.957184, 37.400753, 22.809017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353273, 0.854901, -0.379923,
		0.443900, 0.510662, 0.736327,
		0.823499, 0.091476, -0.559894,
		19.204233, 37.428196, 22.641048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.955931, 25.356144, 28.452515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.300737, 25.174648, 28.542885>,  <28.507622, 25.065750, 28.597107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.300737, 25.174648, 28.542885>,  <27.955931, 25.356144, 28.452515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300737, 25.174648, 28.542885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505921, 0.797562, -0.328541,
		-0.031118, 0.397510, 0.917070,
		0.862019, -0.453741, 0.225927,
		28.559343, 25.038527, 28.610662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433237, 25.893215, 28.626686>,  <27.955931, 25.356144, 28.452515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433237, 25.893215, 28.626686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.688183, 25.596680, 28.542603>,  <28.841150, 25.418758, 28.492151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.688183, 25.596680, 28.542603>,  <28.433237, 25.893215, 28.626686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688183, 25.596680, 28.542603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544482, 0.626317, -0.557913,
		0.545260, 0.241137, 0.802836,
		0.637363, -0.741337, -0.210211,
		28.879391, 25.374279, 28.479540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196747, 26.063276, 28.826096>,  <28.433237, 25.893215, 28.626686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196747, 26.063276, 28.826096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.179350, 25.786362, 28.537971>,  <29.168913, 25.620213, 28.365097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.179350, 25.786362, 28.537971>,  <29.196747, 26.063276, 28.826096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179350, 25.786362, 28.537971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501024, 0.608660, -0.615229,
		0.864340, -0.387651, 0.320381,
		-0.043491, -0.692286, -0.720311,
		29.166302, 25.578676, 28.321878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760340, 26.122112, 28.491219>,  <29.196747, 26.063276, 28.826096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760340, 26.122112, 28.491219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533154, 25.940460, 28.216648>,  <29.396841, 25.831469, 28.051907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533154, 25.940460, 28.216648>,  <29.760340, 26.122112, 28.491219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533154, 25.940460, 28.216648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419938, 0.557381, -0.716225,
		0.707861, -0.695047, -0.125865,
		-0.567965, -0.454132, -0.686425,
		29.362764, 25.804220, 28.010721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197941, 26.097696, 27.900854>,  <29.760340, 26.122112, 28.491219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197941, 26.097696, 27.900854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844013, 25.993389, 27.746403>,  <29.631657, 25.930805, 27.653732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844013, 25.993389, 27.746403>,  <30.197941, 26.097696, 27.900854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844013, 25.993389, 27.746403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261400, 0.408193, -0.874671,
		0.385699, -0.874860, -0.293013,
		-0.884820, -0.260766, -0.386128,
		29.578568, 25.915157, 27.630564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349859, 25.888018, 27.168652>,  <30.197941, 26.097696, 27.900854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349859, 25.888018, 27.168652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.958002, 25.960373, 27.203476>,  <29.722887, 26.003786, 27.224371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.958002, 25.960373, 27.203476>,  <30.349859, 25.888018, 27.168652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958002, 25.960373, 27.203476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015567, 0.500832, -0.865405,
		-0.200143, -0.846432, -0.493452,
		-0.979643, 0.180886, 0.087061,
		29.664108, 26.014639, 27.229595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012651, 25.706154, 26.504087>,  <30.349859, 25.888018, 27.168652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012651, 25.706154, 26.504087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738951, 25.955391, 26.655643>,  <29.574730, 26.104933, 26.746576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738951, 25.955391, 26.655643>,  <30.012651, 25.706154, 26.504087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738951, 25.955391, 26.655643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146121, 0.626172, -0.765871,
		-0.714458, -0.468684, -0.519505,
		-0.684250, 0.623093, 0.378889,
		29.533676, 26.142319, 26.769310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600117, 25.842020, 25.988634>,  <30.012651, 25.706154, 26.504087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600117, 25.842020, 25.988634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.513550, 26.143074, 26.237377>,  <29.461609, 26.323706, 26.386623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.513550, 26.143074, 26.237377>,  <29.600117, 25.842020, 25.988634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513550, 26.143074, 26.237377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077316, 0.648163, -0.757567,
		-0.973235, -0.115871, -0.198464,
		-0.216416, 0.752635, 0.621856,
		29.448626, 26.368864, 26.423933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288071, 26.328817, 25.575399>,  <29.600117, 25.842020, 25.988634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288071, 26.328817, 25.575399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.377176, 26.560299, 25.889210>,  <29.430639, 26.699188, 26.077496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.377176, 26.560299, 25.889210>,  <29.288071, 26.328817, 25.575399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377176, 26.560299, 25.889210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136916, 0.778197, -0.612914,
		-0.965210, 0.243949, 0.094119,
		0.222763, 0.578704, 0.784524,
		29.444006, 26.733910, 26.124567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878393, 26.851526, 25.496616>,  <29.288071, 26.328817, 25.575399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878393, 26.851526, 25.496616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.144884, 27.014648, 25.746365>,  <29.304779, 27.112522, 25.896214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.144884, 27.014648, 25.746365>,  <28.878393, 26.851526, 25.496616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144884, 27.014648, 25.746365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027708, 0.850194, -0.525739,
		-0.745236, 0.332961, 0.577720,
		0.666225, 0.407807, 0.624370,
		29.344751, 27.136990, 25.933676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569540, 27.452530, 25.760710>,  <28.878393, 26.851526, 25.496616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569540, 27.452530, 25.760710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.968498, 27.477676, 25.774841>,  <29.207874, 27.492764, 25.783321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.968498, 27.477676, 25.774841>,  <28.569540, 27.452530, 25.760710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968498, 27.477676, 25.774841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032556, 0.829714, -0.557239,
		-0.064345, 0.554638, 0.829600,
		0.997397, 0.062864, 0.035331,
		29.267717, 27.496536, 25.785440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662416, 28.192228, 25.756205>,  <28.569540, 27.452530, 25.760710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662416, 28.192228, 25.756205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.009140, 28.022163, 25.651989>,  <29.217175, 27.920124, 25.589460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.009140, 28.022163, 25.651989>,  <28.662416, 28.192228, 25.756205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009140, 28.022163, 25.651989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159121, 0.731026, -0.663537,
		0.472572, 0.533702, 0.701312,
		0.866808, -0.425162, -0.260539,
		29.269182, 27.894615, 25.573828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120926, 28.809099, 25.722439>,  <28.662416, 28.192228, 25.756205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120926, 28.809099, 25.722439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.265467, 28.490814, 25.528011>,  <29.352192, 28.299843, 25.411356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.265467, 28.490814, 25.528011>,  <29.120926, 28.809099, 25.722439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265467, 28.490814, 25.528011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124868, 0.557893, -0.820465,
		0.924030, 0.235784, 0.300956,
		0.361354, -0.795715, -0.486067,
		29.373873, 28.252100, 25.382191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765232, 29.042654, 25.504673>,  <29.120926, 28.809099, 25.722439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765232, 29.042654, 25.504673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.709188, 28.725796, 25.267059>,  <29.675562, 28.535681, 25.124491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.709188, 28.725796, 25.267059>,  <29.765232, 29.042654, 25.504673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709188, 28.725796, 25.267059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235939, 0.555960, -0.797020,
		0.961614, -0.251825, 0.109004,
		-0.140108, -0.792144, -0.594034,
		29.667156, 28.488152, 25.088848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412834, 28.945925, 25.067261>,  <29.765232, 29.042654, 25.504673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412834, 28.945925, 25.067261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.085394, 28.800442, 24.889446>,  <29.888929, 28.713152, 24.782759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.085394, 28.800442, 24.889446>,  <30.412834, 28.945925, 25.067261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085394, 28.800442, 24.889446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173029, 0.581844, -0.794681,
		0.547675, -0.727446, -0.413369,
		-0.818604, -0.363702, -0.444531,
		29.839813, 28.691330, 24.756086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599667, 28.781973, 24.391861>,  <30.412834, 28.945925, 25.067261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599667, 28.781973, 24.391861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.204258, 28.780231, 24.331455>,  <29.967012, 28.779186, 24.295212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.204258, 28.780231, 24.331455>,  <30.599667, 28.781973, 24.391861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204258, 28.780231, 24.331455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131271, 0.470036, -0.872831,
		0.074783, -0.882637, -0.464069,
		-0.988522, -0.004354, -0.151015,
		29.907701, 28.778925, 24.286150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531837, 28.480625, 23.749413>,  <30.599667, 28.781973, 24.391861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531837, 28.480625, 23.749413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.183430, 28.665283, 23.816601>,  <29.974386, 28.776077, 23.856915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.183430, 28.665283, 23.816601>,  <30.531837, 28.480625, 23.749413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183430, 28.665283, 23.816601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045579, 0.416393, -0.908041,
		-0.489134, -0.783264, -0.383727,
		-0.871017, 0.461644, 0.167972,
		29.922125, 28.803776, 23.866993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215498, 28.489391, 23.123228>,  <30.531837, 28.480625, 23.749413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215498, 28.489391, 23.123228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.988804, 28.762348, 23.307903>,  <29.852787, 28.926123, 23.418709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.988804, 28.762348, 23.307903>,  <30.215498, 28.489391, 23.123228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988804, 28.762348, 23.307903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119912, 0.486083, -0.865647,
		-0.815129, -0.545952, -0.193652,
		-0.566733, 0.682392, 0.461687,
		29.818785, 28.967066, 23.446409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621544, 28.644001, 22.687426>,  <30.215498, 28.489391, 23.123228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621544, 28.644001, 22.687426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660219, 28.967773, 22.919106>,  <29.683424, 29.162037, 23.058113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660219, 28.967773, 22.919106>,  <29.621544, 28.644001, 22.687426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660219, 28.967773, 22.919106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189994, 0.586237, -0.787546,
		-0.977012, -0.033898, 0.210469,
		0.096689, 0.809430, 0.579201,
		29.689226, 29.210602, 23.092865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094021, 29.083019, 22.431377>,  <29.621544, 28.644001, 22.687426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094021, 29.083019, 22.431377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325191, 29.332901, 22.641422>,  <29.463894, 29.482830, 22.767450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325191, 29.332901, 22.641422>,  <29.094021, 29.083019, 22.431377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325191, 29.332901, 22.641422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053910, 0.671272, -0.739248,
		-0.814305, 0.398923, 0.421625,
		0.577928, 0.624704, 0.525114,
		29.498569, 29.520311, 22.798956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741295, 29.721380, 22.424227>,  <29.094021, 29.083019, 22.431377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741295, 29.721380, 22.424227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128347, 29.813679, 22.465103>,  <29.360579, 29.869057, 22.489628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128347, 29.813679, 22.465103>,  <28.741295, 29.721380, 22.424227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128347, 29.813679, 22.465103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065043, 0.619289, -0.782465,
		-0.243834, 0.750492, 0.614253,
		0.967633, 0.230745, 0.102190,
		29.418638, 29.882902, 22.495760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735937, 30.440258, 22.138840>,  <28.741295, 29.721380, 22.424227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735937, 30.440258, 22.138840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.110519, 30.299946, 22.139751>,  <29.335268, 30.215759, 22.140299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.110519, 30.299946, 22.139751>,  <28.735937, 30.440258, 22.138840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110519, 30.299946, 22.139751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232963, 0.617050, -0.751650,
		0.262257, 0.704417, 0.659559,
		0.936456, -0.350778, 0.002277,
		29.391457, 30.194712, 22.140434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276463, 31.040073, 22.054342>,  <28.735937, 30.440258, 22.138840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276463, 31.040073, 22.054342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948069, 31.246410, 22.152233>,  <27.751032, 31.370213, 22.210968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948069, 31.246410, 22.152233>,  <28.276463, 31.040073, 22.054342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948069, 31.246410, 22.152233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220007, -0.109708, 0.969310,
		0.526858, 0.849631, -0.023420,
		-0.820986, 0.515841, 0.244726,
		27.701773, 31.401163, 22.225651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482313, 31.558224, 22.559643>,  <28.276463, 31.040073, 22.054342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482313, 31.558224, 22.559643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.099081, 31.447563, 22.589428>,  <27.869141, 31.381166, 22.607300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.099081, 31.447563, 22.589428>,  <28.482313, 31.558224, 22.559643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099081, 31.447563, 22.589428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154604, -0.280430, 0.947342,
		-0.241201, 0.919143, 0.311446,
		-0.958081, -0.276650, 0.074463,
		27.811657, 31.364569, 22.611767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212191, 31.873589, 23.152933>,  <28.482313, 31.558224, 22.559643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212191, 31.873589, 23.152933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.987938, 31.555798, 23.059555>,  <27.853386, 31.365122, 23.003529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.987938, 31.555798, 23.059555>,  <28.212191, 31.873589, 23.152933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987938, 31.555798, 23.059555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162640, -0.382073, 0.909708,
		-0.811937, 0.472042, 0.343416,
		-0.560630, -0.794479, -0.233446,
		27.819748, 31.317453, 22.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677713, 31.913795, 23.692678>,  <28.212191, 31.873589, 23.152933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677713, 31.913795, 23.692678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.671404, 31.555241, 23.515484>,  <27.667618, 31.340107, 23.409166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.671404, 31.555241, 23.515484>,  <27.677713, 31.913795, 23.692678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671404, 31.555241, 23.515484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026567, -0.442511, 0.896369,
		-0.999523, 0.025910, -0.016833,
		-0.015776, -0.896389, -0.442988,
		27.666672, 31.286324, 23.382587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134558, 31.540968, 24.051394>,  <27.677713, 31.913795, 23.692678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134558, 31.540968, 24.051394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349476, 31.261127, 23.862980>,  <27.478426, 31.093224, 23.749931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349476, 31.261127, 23.862980>,  <27.134558, 31.540968, 24.051394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349476, 31.261127, 23.862980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170356, -0.637013, 0.751794,
		-0.826011, -0.323690, -0.461444,
		0.537294, -0.699600, -0.471037,
		27.510664, 31.051249, 23.721668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655287, 30.935997, 23.847519>,  <27.134558, 31.540968, 24.051394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655287, 30.935997, 23.847519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.015167, 30.762760, 23.869316>,  <27.231096, 30.658819, 23.882395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.015167, 30.762760, 23.869316>,  <26.655287, 30.935997, 23.847519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015167, 30.762760, 23.869316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394777, -0.754060, 0.524923,
		-0.186246, -0.493788, -0.849404,
		0.899702, -0.433090, 0.054495,
		27.285078, 30.632833, 23.885664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570532, 30.216459, 23.676693>,  <26.655287, 30.935997, 23.847519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570532, 30.216459, 23.676693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.923222, 30.228176, 23.865036>,  <27.134834, 30.235207, 23.978043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.923222, 30.228176, 23.865036>,  <26.570532, 30.216459, 23.676693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923222, 30.228176, 23.865036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226730, -0.848940, 0.477383,
		0.413712, -0.527677, -0.741889,
		0.881723, 0.029290, 0.470857,
		27.187738, 30.236963, 24.006292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889950, 29.542994, 23.530302>,  <26.570532, 30.216459, 23.676693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889950, 29.542994, 23.530302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.045156, 29.724415, 23.851234>,  <27.138281, 29.833267, 24.043795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.045156, 29.724415, 23.851234>,  <26.889950, 29.542994, 23.530302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045156, 29.724415, 23.851234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063357, -0.855349, 0.514164,
		0.919473, -0.250336, -0.303152,
		0.388014, 0.453553, 0.802331,
		27.161560, 29.860481, 24.091934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489132, 29.151127, 23.704350>,  <26.889950, 29.542994, 23.530302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489132, 29.151127, 23.704350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.383051, 29.360577, 24.028198>,  <27.319403, 29.486246, 24.222507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.383051, 29.360577, 24.028198>,  <27.489132, 29.151127, 23.704350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383051, 29.360577, 24.028198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012163, -0.841438, 0.540217,
		0.964116, 0.133420, 0.229522,
		-0.265204, 0.523623, 0.809620,
		27.303490, 29.517664, 24.271084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887197, 28.827467, 24.242218>,  <27.489132, 29.151127, 23.704350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887197, 28.827467, 24.242218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.601793, 29.017273, 24.448418>,  <27.430552, 29.131157, 24.572138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.601793, 29.017273, 24.448418>,  <27.887197, 28.827467, 24.242218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601793, 29.017273, 24.448418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160523, -0.826891, 0.538966,
		0.682009, 0.301808, 0.666165,
		-0.713510, 0.474514, 0.515499,
		27.387741, 29.159628, 24.603067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030975, 28.618349, 24.991806>,  <27.887197, 28.827467, 24.242218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030975, 28.618349, 24.991806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658779, 28.763172, 24.969543>,  <27.435461, 28.850065, 24.956186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658779, 28.763172, 24.969543>,  <28.030975, 28.618349, 24.991806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658779, 28.763172, 24.969543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274051, -0.587239, 0.761608,
		0.243061, 0.723923, 0.645644,
		-0.930493, 0.362057, -0.055657,
		27.379631, 28.871790, 24.952847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797838, 28.746130, 25.712259>,  <28.030975, 28.618349, 24.991806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797838, 28.746130, 25.712259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.469065, 28.729027, 25.485069>,  <27.271801, 28.718765, 25.348755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.469065, 28.729027, 25.485069>,  <27.797838, 28.746130, 25.712259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469065, 28.729027, 25.485069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410415, -0.646986, 0.642626,
		-0.394950, 0.761302, 0.514232,
		-0.821933, -0.042757, -0.567977,
		27.222485, 28.716200, 25.314676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150492, 29.042629, 26.121323>,  <27.797838, 28.746130, 25.712259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150492, 29.042629, 26.121323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.096355, 28.769402, 25.834240>,  <27.063873, 28.605465, 25.661991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.096355, 28.769402, 25.834240>,  <27.150492, 29.042629, 26.121323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096355, 28.769402, 25.834240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342785, -0.647358, 0.680753,
		-0.929614, 0.338152, -0.146532,
		-0.135339, -0.683067, -0.717706,
		27.055754, 28.564482, 25.618929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496592, 28.805172, 26.198639>,  <27.150492, 29.042629, 26.121323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496592, 28.805172, 26.198639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.698305, 28.519947, 26.003811>,  <26.819334, 28.348812, 25.886915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.698305, 28.519947, 26.003811>,  <26.496592, 28.805172, 26.198639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698305, 28.519947, 26.003811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356067, -0.685560, 0.634999,
		-0.786709, -0.146792, -0.599617,
		0.504286, -0.713064, -0.487069,
		26.849590, 28.306028, 25.857691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117035, 28.212698, 26.341707>,  <26.496592, 28.805172, 26.198639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117035, 28.212698, 26.341707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.457970, 28.060253, 26.198448>,  <26.662531, 27.968786, 26.112492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.457970, 28.060253, 26.198448>,  <26.117035, 28.212698, 26.341707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457970, 28.060253, 26.198448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164584, -0.845482, 0.508009,
		-0.496418, -0.374050, -0.783362,
		0.852339, -0.381114, -0.358149,
		26.713671, 27.945919, 26.091003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891945, 27.519905, 26.037148>,  <26.117035, 28.212698, 26.341707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891945, 27.519905, 26.037148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.277790, 27.553272, 26.137199>,  <26.509296, 27.573292, 26.197231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.277790, 27.553272, 26.137199>,  <25.891945, 27.519905, 26.037148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277790, 27.553272, 26.137199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069424, -0.834816, 0.546135,
		0.254368, -0.544173, -0.799483,
		0.964612, 0.083416, 0.250129,
		26.567173, 27.578297, 26.212238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133041, 26.939085, 25.975227>,  <25.891945, 27.519905, 26.037148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133041, 26.939085, 25.975227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.398289, 27.099056, 26.228313>,  <26.557438, 27.195040, 26.380165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.398289, 27.099056, 26.228313>,  <26.133041, 26.939085, 25.975227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398289, 27.099056, 26.228313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051600, -0.818862, 0.571667,
		0.746734, -0.411731, -0.522366,
		0.663118, 0.399929, 0.632717,
		26.597223, 27.219034, 26.418129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371597, 26.361681, 26.211763>,  <26.133041, 26.939085, 25.975227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371597, 26.361681, 26.211763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.514591, 26.636971, 26.464287>,  <26.600388, 26.802145, 26.615801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.514591, 26.636971, 26.464287>,  <26.371597, 26.361681, 26.211763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514591, 26.636971, 26.464287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144761, -0.626976, 0.765471,
		0.922632, -0.365032, -0.124506,
		0.357484, 0.688224, 0.631311,
		26.621836, 26.843437, 26.653681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.025455, 26.058662, 26.695707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.913963, 26.385292, 26.897903>,  <26.847067, 26.581270, 27.019220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.913963, 26.385292, 26.897903>,  <27.025455, 26.058662, 26.695707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913963, 26.385292, 26.897903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194283, -0.467521, 0.862368,
		0.940512, 0.338577, -0.028334,
		-0.278731, 0.816572, 0.505488,
		26.830343, 26.630264, 27.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524822, 26.175364, 27.305700>,  <27.025455, 26.058662, 26.695707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524822, 26.175364, 27.305700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172865, 26.349705, 27.381401>,  <26.961691, 26.454309, 27.426821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172865, 26.349705, 27.381401>,  <27.524822, 26.175364, 27.305700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172865, 26.349705, 27.381401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027951, -0.445070, 0.895060,
		0.474345, 0.782269, 0.403797,
		-0.879895, 0.435853, 0.189252,
		26.908895, 26.480461, 27.438177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605900, 26.386711, 27.961302>,  <27.524822, 26.175364, 27.305700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605900, 26.386711, 27.961302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.213121, 26.379429, 27.885990>,  <26.977455, 26.375059, 27.840803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.213121, 26.379429, 27.885990>,  <27.605900, 26.386711, 27.961302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213121, 26.379429, 27.885990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159252, -0.457574, 0.874794,
		-0.102078, 0.888985, 0.446415,
		-0.981947, -0.018205, -0.188281,
		26.918537, 26.373968, 27.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210178, 26.592276, 28.561512>,  <27.605900, 26.386711, 27.961302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210178, 26.592276, 28.561512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.924839, 26.392281, 28.365086>,  <26.753635, 26.272284, 28.247231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.924839, 26.392281, 28.365086>,  <27.210178, 26.592276, 28.561512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924839, 26.392281, 28.365086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431378, -0.238962, 0.869948,
		-0.552311, 0.832411, -0.045221,
		-0.713348, -0.499989, -0.491065,
		26.710835, 26.242283, 28.217766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528191, 26.742603, 28.922073>,  <27.210178, 26.592276, 28.561512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528191, 26.742603, 28.922073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454695, 26.402824, 28.724213>,  <26.410597, 26.198957, 28.605497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454695, 26.402824, 28.724213>,  <26.528191, 26.742603, 28.922073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454695, 26.402824, 28.724213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406306, -0.392587, 0.825101,
		-0.895073, 0.352582, -0.273002,
		-0.183739, -0.849448, -0.494650,
		26.399572, 26.147989, 28.575817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953739, 26.455650, 29.219852>,  <26.528191, 26.742603, 28.922073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953739, 26.455650, 29.219852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.074398, 26.124950, 29.029907>,  <26.146793, 25.926531, 28.915941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.074398, 26.124950, 29.029907>,  <25.953739, 26.455650, 29.219852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074398, 26.124950, 29.029907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281281, -0.553063, 0.784221,
		-0.910983, -0.102989, -0.399379,
		0.301647, -0.826749, -0.474862,
		26.164892, 25.876926, 28.887449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425863, 25.913315, 29.249907>,  <25.953739, 26.455650, 29.219852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425863, 25.913315, 29.249907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.752033, 25.699516, 29.161007>,  <25.947735, 25.571238, 29.107668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.752033, 25.699516, 29.161007>,  <25.425863, 25.913315, 29.249907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752033, 25.699516, 29.161007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326102, -0.741381, 0.586525,
		-0.478267, -0.405792, -0.778841,
		0.815426, -0.534497, -0.222249,
		25.996660, 25.539167, 29.094332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291502, 25.204830, 28.995476>,  <25.425863, 25.913315, 29.249907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291502, 25.204830, 28.995476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.667391, 25.146557, 29.119217>,  <25.892923, 25.111593, 29.193462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.667391, 25.146557, 29.119217>,  <25.291502, 25.204830, 28.995476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667391, 25.146557, 29.119217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326045, -0.654375, 0.682267,
		0.103039, -0.742004, -0.662429,
		0.939722, -0.145681, 0.309353,
		25.949308, 25.102852, 29.212023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434536, 24.476913, 28.952280>,  <25.291502, 25.204830, 28.995476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434536, 24.476913, 28.952280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.692152, 24.645157, 29.207874>,  <25.846722, 24.746103, 29.361231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.692152, 24.645157, 29.207874>,  <25.434536, 24.476913, 28.952280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692152, 24.645157, 29.207874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313879, -0.616444, 0.722133,
		0.697636, -0.665645, -0.264993,
		0.644038, 0.420610, 0.638985,
		25.885363, 24.771339, 29.399570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696455, 23.923807, 29.291328>,  <25.434536, 24.476913, 28.952280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696455, 23.923807, 29.291328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.784578, 24.239586, 29.520496>,  <25.837452, 24.429052, 29.657997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.784578, 24.239586, 29.520496>,  <25.696455, 23.923807, 29.291328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784578, 24.239586, 29.520496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206593, -0.536263, 0.818377,
		0.953302, -0.298656, 0.044951,
		0.220308, 0.789447, 0.572921,
		25.850670, 24.476419, 29.692373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034443, 23.555651, 29.745323>,  <25.696455, 23.923807, 29.291328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034443, 23.555651, 29.745323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.927082, 23.899258, 29.919701>,  <25.862665, 24.105423, 30.024328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.927082, 23.899258, 29.919701>,  <26.034443, 23.555651, 29.745323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927082, 23.899258, 29.919701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192651, -0.491274, 0.849432,
		0.943847, 0.144003, 0.297349,
		-0.268400, 0.859019, 0.435945,
		25.846561, 24.156963, 30.050484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381149, 23.622255, 30.446732>,  <26.034443, 23.555651, 29.745323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381149, 23.622255, 30.446732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.070845, 23.873768, 30.467999>,  <25.884661, 24.024675, 30.480759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.070845, 23.873768, 30.467999>,  <26.381149, 23.622255, 30.446732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070845, 23.873768, 30.467999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229137, -0.359194, 0.904697,
		0.587952, 0.689649, 0.422726,
		-0.775764, 0.628780, 0.053165,
		25.838116, 24.062403, 30.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447420, 23.908392, 31.103338>,  <26.381149, 23.622255, 30.446732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447420, 23.908392, 31.103338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.071127, 23.979321, 30.987701>,  <25.845350, 24.021877, 30.918320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.071127, 23.979321, 30.987701>,  <26.447420, 23.908392, 31.103338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071127, 23.979321, 30.987701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334789, -0.349398, 0.875121,
		0.054168, 0.920042, 0.388056,
		-0.940735, 0.177321, -0.289094,
		25.788906, 24.032516, 30.900972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187275, 24.215296, 31.602398>,  <26.447420, 23.908392, 31.103338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187275, 24.215296, 31.602398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.889530, 24.049889, 31.392662>,  <25.710884, 23.950645, 31.266821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.889530, 24.049889, 31.392662>,  <26.187275, 24.215296, 31.602398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889530, 24.049889, 31.392662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406430, -0.342475, 0.847069,
		-0.529849, 0.843632, 0.086860,
		-0.744362, -0.413516, -0.524337,
		25.666222, 23.925833, 31.235361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662663, 24.532106, 32.062569>,  <26.187275, 24.215296, 31.602398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662663, 24.532106, 32.062569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.485888, 24.256134, 31.833244>,  <25.379822, 24.090549, 31.695650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.485888, 24.256134, 31.833244>,  <25.662663, 24.532106, 32.062569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485888, 24.256134, 31.833244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469446, -0.366725, 0.803202,
		-0.764402, 0.624104, -0.161816,
		-0.441939, -0.689933, -0.573308,
		25.353306, 24.049154, 31.661251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871864, 24.513590, 32.055584>,  <25.662663, 24.532106, 32.062569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871864, 24.513590, 32.055584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.985926, 24.142059, 31.960957>,  <25.054361, 23.919140, 31.904179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.985926, 24.142059, 31.960957>,  <24.871864, 24.513590, 32.055584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985926, 24.142059, 31.960957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491329, -0.353574, 0.795978,
		-0.822973, -0.110740, -0.557183,
		0.285152, -0.928828, -0.236572,
		25.071472, 23.863411, 31.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396593, 24.247253, 32.430416>,  <24.871864, 24.513590, 32.055584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396593, 24.247253, 32.430416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.628897, 23.941059, 32.319599>,  <24.768278, 23.757343, 32.253109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.628897, 23.941059, 32.319599>,  <24.396593, 24.247253, 32.430416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628897, 23.941059, 32.319599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440474, -0.581670, 0.683844,
		-0.684619, -0.275118, -0.674986,
		0.580757, -0.765487, -0.277040,
		24.803123, 23.711412, 32.236488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931314, 23.670120, 32.481949>,  <24.396593, 24.247253, 32.430416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931314, 23.670120, 32.481949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.281363, 23.478268, 32.456276>,  <24.491392, 23.363155, 32.440872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.281363, 23.478268, 32.456276>,  <23.931314, 23.670120, 32.481949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.281363, 23.478268, 32.456276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336260, -0.698115, 0.632112,
		-0.347986, -0.531592, -0.772215,
		0.875120, -0.479631, -0.064181,
		24.543898, 23.334379, 32.437023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778269, 22.944395, 32.470703>,  <23.931314, 23.670120, 32.481949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778269, 22.944395, 32.470703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.164238, 22.957191, 32.574932>,  <24.395821, 22.964870, 32.637470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.164238, 22.957191, 32.574932>,  <23.778269, 22.944395, 32.470703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164238, 22.957191, 32.574932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138744, -0.780467, 0.609607,
		0.222871, -0.624378, -0.748653,
		0.964924, 0.031993, 0.260572,
		24.453714, 22.966789, 32.653103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984861, 22.285612, 32.416573>,  <23.778269, 22.944395, 32.470703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984861, 22.285612, 32.416573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.252541, 22.455379, 32.660557>,  <24.413147, 22.557240, 32.806946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.252541, 22.455379, 32.660557>,  <23.984861, 22.285612, 32.416573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252541, 22.455379, 32.660557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112004, -0.753854, 0.647425,
		0.734596, -0.501572, -0.456940,
		0.669197, 0.424417, 0.609956,
		24.453300, 22.582705, 32.843544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512144, 21.727278, 32.627659>,  <23.984861, 22.285612, 32.416573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512144, 21.727278, 32.627659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.546282, 22.016193, 32.902184>,  <24.566765, 22.189543, 33.066898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.546282, 22.016193, 32.902184>,  <24.512144, 21.727278, 32.627659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546282, 22.016193, 32.902184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069897, -0.682783, 0.727270,
		0.993897, -0.110041, -0.007787,
		0.085346, 0.722287, 0.686307,
		24.571886, 22.232880, 33.108074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770866, 21.358521, 33.119343>,  <24.512144, 21.727278, 32.627659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770866, 21.358521, 33.119343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.629183, 21.683033, 33.305401>,  <24.544172, 21.877741, 33.417038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.629183, 21.683033, 33.305401>,  <24.770866, 21.358521, 33.119343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629183, 21.683033, 33.305401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012954, -0.501605, 0.865000,
		0.935077, 0.300364, 0.188181,
		-0.354207, 0.811279, 0.465148,
		24.522921, 21.926416, 33.444946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153801, 21.481928, 33.696468>,  <24.770866, 21.358521, 33.119343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153801, 21.481928, 33.696468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.801893, 21.662098, 33.757301>,  <24.590750, 21.770199, 33.793800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.801893, 21.662098, 33.757301>,  <25.153801, 21.481928, 33.696468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801893, 21.662098, 33.757301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161308, -0.583740, 0.795756,
		0.447201, 0.675549, 0.586212,
		-0.879768, 0.450423, 0.152078,
		24.537964, 21.797224, 33.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874918, 21.043257, 34.206268>,  <25.153801, 21.481928, 33.696468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874918, 21.043257, 34.206268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.203682, 20.896980, 34.380962>,  <25.400940, 20.809214, 34.485779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.203682, 20.896980, 34.380962>,  <24.874918, 21.043257, 34.206268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203682, 20.896980, 34.380962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547715, 0.717933, -0.429628,
		-0.156432, 0.592320, 0.790371,
		0.821911, -0.365691, 0.436730,
		25.450254, 20.787273, 34.511982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328461, 21.664389, 34.511124>,  <24.874918, 21.043257, 34.206268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328461, 21.664389, 34.511124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.515358, 21.320030, 34.430580>,  <25.627497, 21.113415, 34.382256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.515358, 21.320030, 34.430580>,  <25.328461, 21.664389, 34.511124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515358, 21.320030, 34.430580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753362, 0.506872, -0.418959,
		0.462743, 0.044058, 0.885397,
		0.467241, -0.860895, -0.201360,
		25.655531, 21.061762, 34.370171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897614, 21.825388, 34.665787>,  <25.328461, 21.664389, 34.511124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897614, 21.825388, 34.665787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930496, 21.515594, 34.414894>,  <25.950226, 21.329718, 34.264359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930496, 21.515594, 34.414894>,  <25.897614, 21.825388, 34.665787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930496, 21.515594, 34.414894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761207, 0.455022, -0.462081,
		0.643277, -0.439463, 0.626951,
		0.082209, -0.774485, -0.627227,
		25.955158, 21.283249, 34.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607347, 21.558744, 34.860935>,  <25.897614, 21.825388, 34.665787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607347, 21.558744, 34.860935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504250, 21.452038, 34.489471>,  <26.442390, 21.388014, 34.266594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504250, 21.452038, 34.489471>,  <26.607347, 21.558744, 34.860935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504250, 21.452038, 34.489471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809428, 0.465239, -0.358300,
		0.527630, -0.844031, 0.096015,
		-0.257746, -0.266767, -0.928656,
		26.426926, 21.372007, 34.210876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227280, 21.424795, 34.550243>,  <26.607347, 21.558744, 34.860935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227280, 21.424795, 34.550243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.979334, 21.514370, 34.249413>,  <26.830566, 21.568115, 34.068913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.979334, 21.514370, 34.249413>,  <27.227280, 21.424795, 34.550243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979334, 21.514370, 34.249413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721995, 0.538195, -0.434821,
		0.307392, -0.812526, -0.495289,
		-0.619866, 0.223935, -0.752077,
		26.793375, 21.581551, 34.023788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719667, 21.576300, 34.093227>,  <27.227280, 21.424795, 34.550243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719667, 21.576300, 34.093227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383457, 21.706673, 33.920120>,  <27.181732, 21.784897, 33.816257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383457, 21.706673, 33.920120>,  <27.719667, 21.576300, 34.093227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383457, 21.706673, 33.920120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536570, 0.611254, -0.581774,
		0.074912, -0.721205, -0.688659,
		-0.840524, 0.325932, -0.432767,
		27.131300, 21.804453, 33.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798336, 21.564503, 33.394943>,  <27.719667, 21.576300, 34.093227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798336, 21.564503, 33.394943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.503742, 21.830719, 33.443348>,  <27.326986, 21.990448, 33.472393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.503742, 21.830719, 33.443348>,  <27.798336, 21.564503, 33.394943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503742, 21.830719, 33.443348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505294, 0.660202, -0.555709,
		-0.449740, -0.348124, -0.822522,
		-0.736486, 0.665540, 0.121015,
		27.282797, 22.030380, 33.479652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606249, 21.787642, 32.788124>,  <27.798336, 21.564503, 33.394943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606249, 21.787642, 32.788124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.464209, 22.083965, 33.016197>,  <27.378984, 22.261759, 33.153042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.464209, 22.083965, 33.016197>,  <27.606249, 21.787642, 32.788124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464209, 22.083965, 33.016197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293289, 0.667420, -0.684494,
		-0.887629, -0.075836, -0.454272,
		-0.355099, 0.740810, 0.570180,
		27.357679, 22.306208, 33.187252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145897, 22.191792, 32.414352>,  <27.606249, 21.787642, 32.788124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145897, 22.191792, 32.414352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270004, 22.438023, 32.704124>,  <27.344469, 22.585762, 32.877987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270004, 22.438023, 32.704124>,  <27.145897, 22.191792, 32.414352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270004, 22.438023, 32.704124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182687, 0.709223, -0.680902,
		-0.932931, 0.343605, 0.107589,
		0.310266, 0.615580, 0.724428,
		27.363085, 22.622696, 32.921452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803810, 22.802546, 32.206810>,  <27.145897, 22.191792, 32.414352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803810, 22.802546, 32.206810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.098286, 22.902630, 32.458340>,  <27.274971, 22.962681, 32.609257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.098286, 22.902630, 32.458340>,  <26.803810, 22.802546, 32.206810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098286, 22.902630, 32.458340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368418, 0.631245, -0.682494,
		-0.567709, 0.734115, 0.372534,
		0.736189, 0.250210, 0.628824,
		27.319143, 22.977694, 32.646988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743071, 23.494556, 32.282772>,  <26.803810, 22.802546, 32.206810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743071, 23.494556, 32.282772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.119904, 23.428837, 32.399727>,  <27.346003, 23.389404, 32.469898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.119904, 23.428837, 32.399727>,  <26.743071, 23.494556, 32.282772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119904, 23.428837, 32.399727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322054, 0.686524, -0.651894,
		-0.093624, 0.708301, 0.699674,
		0.942081, -0.164300, 0.292386,
		27.402527, 23.379547, 32.487442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035957, 24.128777, 32.315632>,  <26.743071, 23.494556, 32.282772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035957, 24.128777, 32.315632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352329, 23.885811, 32.286037>,  <27.542152, 23.740030, 32.268280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352329, 23.885811, 32.286037>,  <27.035957, 24.128777, 32.315632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352329, 23.885811, 32.286037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350528, 0.548863, -0.758868,
		0.501555, 0.574279, 0.647029,
		0.790932, -0.607415, -0.073984,
		27.589609, 23.703587, 32.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571465, 24.566631, 32.315845>,  <27.035957, 24.128777, 32.315632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571465, 24.566631, 32.315845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.706429, 24.227802, 32.151592>,  <27.787407, 24.024504, 32.053040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.706429, 24.227802, 32.151592>,  <27.571465, 24.566631, 32.315845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706429, 24.227802, 32.151592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473814, 0.529749, -0.703467,
		0.813422, 0.042792, 0.580097,
		0.337409, -0.847074, -0.410634,
		27.807652, 23.973680, 32.028400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257034, 24.789478, 32.007736>,  <27.571465, 24.566631, 32.315845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257034, 24.789478, 32.007736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129412, 24.458164, 31.823498>,  <28.052839, 24.259377, 31.712955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129412, 24.458164, 31.823498>,  <28.257034, 24.789478, 32.007736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129412, 24.458164, 31.823498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558590, 0.228261, -0.797417,
		0.765624, -0.511704, 0.389844,
		-0.319055, -0.828285, -0.460595,
		28.033695, 24.209679, 31.685320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762819, 24.616426, 31.576769>,  <28.257034, 24.789478, 32.007736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762819, 24.616426, 31.576769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.497793, 24.367599, 31.409897>,  <28.338778, 24.218304, 31.309772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.497793, 24.367599, 31.409897>,  <28.762819, 24.616426, 31.576769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497793, 24.367599, 31.409897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392338, 0.186214, -0.900775,
		0.638029, -0.760497, 0.120683,
		-0.662563, -0.622069, -0.417182,
		28.299025, 24.180979, 31.284742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071665, 24.414240, 31.013391>,  <28.762819, 24.616426, 31.576769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071665, 24.414240, 31.013391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686731, 24.330296, 30.944252>,  <28.455772, 24.279930, 30.902767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686731, 24.330296, 30.944252>,  <29.071665, 24.414240, 31.013391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686731, 24.330296, 30.944252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133596, 0.188710, -0.972903,
		0.236795, -0.959347, -0.153565,
		-0.962331, -0.209863, -0.172850,
		28.398031, 24.267338, 30.892397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013840, 23.929550, 30.482811>,  <29.071665, 24.414240, 31.013391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013840, 23.929550, 30.482811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.650888, 24.097500, 30.475098>,  <28.433117, 24.198269, 30.470470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.650888, 24.097500, 30.475098>,  <29.013840, 23.929550, 30.482811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650888, 24.097500, 30.475098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047423, 0.056684, -0.997265,
		-0.417632, -0.905811, -0.071345,
		-0.907378, 0.419873, -0.019283,
		28.378675, 24.223461, 30.469313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657343, 23.521936, 29.963034>,  <29.013840, 23.929550, 30.482811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657343, 23.521936, 29.963034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478172, 23.878914, 29.984596>,  <28.370670, 24.093102, 29.997534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478172, 23.878914, 29.984596>,  <28.657343, 23.521936, 29.963034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478172, 23.878914, 29.984596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345832, 0.228547, -0.910037,
		-0.824478, -0.388985, -0.411007,
		-0.447925, 0.892444, 0.053908,
		28.343794, 24.146646, 30.000769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267872, 23.520485, 29.332172>,  <28.657343, 23.521936, 29.963034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267872, 23.520485, 29.332172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328362, 23.881123, 29.494289>,  <28.364656, 24.097506, 29.591558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328362, 23.881123, 29.494289>,  <28.267872, 23.520485, 29.332172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328362, 23.881123, 29.494289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181906, 0.377622, -0.907916,
		-0.971618, 0.211025, -0.106899,
		0.151226, 0.901593, 0.405291,
		28.373730, 24.151600, 29.615877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911779, 23.907537, 28.872709>,  <28.267872, 23.520485, 29.332172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911779, 23.907537, 28.872709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143503, 24.180443, 29.051109>,  <28.282537, 24.344185, 29.158150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143503, 24.180443, 29.051109>,  <27.911779, 23.907537, 28.872709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143503, 24.180443, 29.051109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299048, 0.331116, -0.894948,
		-0.758268, 0.651829, -0.012210,
		0.579310, 0.682262, 0.446002,
		28.317297, 24.385122, 29.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807806, 24.610188, 28.475147>,  <27.911779, 23.907537, 28.872709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807806, 24.610188, 28.475147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.150263, 24.635754, 28.680256>,  <28.355738, 24.651093, 28.803322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.150263, 24.635754, 28.680256>,  <27.807806, 24.610188, 28.475147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150263, 24.635754, 28.680256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391868, 0.566541, -0.724894,
		-0.336839, 0.821551, 0.459993,
		0.856142, 0.063915, 0.512772,
		28.407104, 24.654928, 28.834087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.181997, 32.361355, 16.178736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.485868, 32.214718, 16.393585>,  <25.668190, 32.126736, 16.522495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.485868, 32.214718, 16.393585>,  <25.181997, 32.361355, 16.178736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485868, 32.214718, 16.393585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598227, -0.070090, 0.798256,
		-0.254987, -0.927738, -0.272550,
		0.759675, -0.366592, 0.537125,
		25.713772, 32.104740, 16.554724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893526, 31.761930, 16.473124>,  <25.181997, 32.361355, 16.178736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893526, 31.761930, 16.473124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.199825, 31.854698, 16.713070>,  <25.383606, 31.910358, 16.857038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.199825, 31.854698, 16.713070>,  <24.893526, 31.761930, 16.473124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199825, 31.854698, 16.713070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597034, -0.090451, 0.797101,
		0.239122, -0.968521, 0.069202,
		0.765749, 0.231920, 0.599868,
		25.429550, 31.924274, 16.893030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892715, 31.288622, 17.139297>,  <24.893526, 31.761930, 16.473124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892715, 31.288622, 17.139297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.119040, 31.600464, 17.246685>,  <25.254833, 31.787569, 17.311117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.119040, 31.600464, 17.246685>,  <24.892715, 31.288622, 17.139297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119040, 31.600464, 17.246685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437285, 0.007678, 0.899290,
		0.699030, -0.626224, 0.345254,
		0.565808, 0.779605, 0.268471,
		25.288782, 31.834345, 17.327227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073400, 31.097698, 17.741144>,  <24.892715, 31.288622, 17.139297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073400, 31.097698, 17.741144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.143373, 31.490593, 17.713997>,  <25.185358, 31.726330, 17.697708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.143373, 31.490593, 17.713997>,  <25.073400, 31.097698, 17.741144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143373, 31.490593, 17.713997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322086, 0.122230, 0.938787,
		0.930408, -0.142364, 0.337747,
		0.174933, 0.982239, -0.067870,
		25.195854, 31.785265, 17.693636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629173, 31.259283, 18.251245>,  <25.073400, 31.097698, 17.741144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629173, 31.259283, 18.251245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.424074, 31.596146, 18.184475>,  <25.301014, 31.798264, 18.144413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.424074, 31.596146, 18.184475>,  <25.629173, 31.259283, 18.251245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424074, 31.596146, 18.184475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119188, 0.122724, 0.985258,
		0.850226, 0.525084, 0.037448,
		-0.512747, 0.842156, -0.166927,
		25.270250, 31.848793, 18.134398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860807, 31.649809, 18.693602>,  <25.629173, 31.259283, 18.251245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860807, 31.649809, 18.693602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.525524, 31.849411, 18.605598>,  <25.324354, 31.969172, 18.552795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.525524, 31.849411, 18.605598>,  <25.860807, 31.649809, 18.693602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525524, 31.849411, 18.605598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084415, 0.279845, 0.956327,
		0.538778, 0.820172, -0.192445,
		-0.838208, 0.499003, -0.220009,
		25.274061, 31.999111, 18.539597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846298, 32.251923, 19.131281>,  <25.860807, 31.649809, 18.693602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846298, 32.251923, 19.131281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459965, 32.218277, 19.033230>,  <25.228165, 32.198090, 18.974400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459965, 32.218277, 19.033230>,  <25.846298, 32.251923, 19.131281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459965, 32.218277, 19.033230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252487, 0.518631, 0.816867,
		0.058422, 0.850851, -0.522149,
		-0.965835, -0.084113, -0.245128,
		25.170214, 32.193043, 18.959692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614079, 32.928799, 19.045044>,  <25.846298, 32.251923, 19.131281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614079, 32.928799, 19.045044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.290386, 32.701996, 19.106544>,  <25.096170, 32.565914, 19.143444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.290386, 32.701996, 19.106544>,  <25.614079, 32.928799, 19.045044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290386, 32.701996, 19.106544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343172, 0.668645, 0.659656,
		-0.476838, 0.481052, -0.735672,
		-0.809233, -0.567012, 0.153752,
		25.047617, 32.531891, 19.152670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065586, 33.382931, 18.925140>,  <25.614079, 32.928799, 19.045044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065586, 33.382931, 18.925140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.913771, 33.082771, 19.141605>,  <24.822681, 32.902676, 19.271484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.913771, 33.082771, 19.141605>,  <25.065586, 33.382931, 18.925140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913771, 33.082771, 19.141605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334318, 0.656643, 0.676056,
		-0.862660, 0.075669, -0.500092,
		-0.379538, -0.750396, 0.541162,
		24.799910, 32.857651, 19.303955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478333, 33.598507, 19.216259>,  <25.065586, 33.382931, 18.925140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478333, 33.598507, 19.216259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.535023, 33.271667, 19.439781>,  <24.569036, 33.075565, 19.573895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.535023, 33.271667, 19.439781>,  <24.478333, 33.598507, 19.216259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.535023, 33.271667, 19.439781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457479, 0.446540, 0.768971,
		-0.877854, -0.364625, -0.310519,
		0.141727, -0.817099, 0.558804,
		24.577541, 33.026539, 19.607422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.834110, 33.384533, 19.501328>,  <24.478333, 33.598507, 19.216259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.834110, 33.384533, 19.501328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.114561, 33.238571, 19.746365>,  <24.282831, 33.150993, 19.893387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.114561, 33.238571, 19.746365>,  <23.834110, 33.384533, 19.501328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.114561, 33.238571, 19.746365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480841, 0.392421, 0.784091,
		-0.526513, -0.844304, 0.099675,
		0.701125, -0.364906, 0.612590,
		24.324898, 33.129101, 19.930141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.487545, 33.044865, 19.932718>,  <23.834110, 33.384533, 19.501328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.487545, 33.044865, 19.932718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.835819, 33.114513, 20.116714>,  <24.044785, 33.156303, 20.227112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.835819, 33.114513, 20.116714>,  <23.487545, 33.044865, 19.932718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.835819, 33.114513, 20.116714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491838, 0.311561, 0.813034,
		-0.001753, -0.934138, 0.356909,
		0.870685, 0.174116, 0.459991,
		24.097025, 33.166748, 20.254711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400822, 32.798992, 20.631824>,  <23.487545, 33.044865, 19.932718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400822, 32.798992, 20.631824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.746193, 32.994324, 20.682461>,  <23.953415, 33.111523, 20.712843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.746193, 32.994324, 20.682461>,  <23.400822, 32.798992, 20.631824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.746193, 32.994324, 20.682461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419186, 0.554890, 0.718596,
		0.280668, -0.673522, 0.683809,
		0.863428, 0.488330, 0.126592,
		24.005222, 33.140823, 20.720438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.540474, 32.624256, 21.303566>,  <23.400822, 32.798992, 20.631824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.540474, 32.624256, 21.303566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.757414, 32.949486, 21.218933>,  <23.887579, 33.144623, 21.168154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.757414, 32.949486, 21.218933>,  <23.540474, 32.624256, 21.303566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.757414, 32.949486, 21.218933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445421, 0.491803, 0.748151,
		0.712359, -0.311516, 0.628890,
		0.542351, 0.813073, -0.211585,
		23.920120, 33.193409, 21.155458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.788256, 32.941051, 21.964352>,  <23.540474, 32.624256, 21.303566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.788256, 32.941051, 21.964352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805140, 33.239750, 21.698845>,  <23.815269, 33.418968, 21.539541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805140, 33.239750, 21.698845>,  <23.788256, 32.941051, 21.964352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.805140, 33.239750, 21.698845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420176, 0.616018, 0.666313,
		0.906460, 0.250772, 0.339769,
		0.042211, 0.746749, -0.663765,
		23.817802, 33.463776, 21.499716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946762, 33.438900, 22.332628>,  <23.788256, 32.941051, 21.964352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946762, 33.438900, 22.332628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791147, 33.611942, 22.007298>,  <23.697779, 33.715767, 21.812099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791147, 33.611942, 22.007298>,  <23.946762, 33.438900, 22.332628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791147, 33.611942, 22.007298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393501, 0.720244, 0.571320,
		0.832951, 0.542309, -0.109969,
		-0.389036, 0.432609, -0.813327,
		23.674437, 33.741726, 21.763300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906361, 34.119602, 22.516130>,  <23.946762, 33.438900, 22.332628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906361, 34.119602, 22.516130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.662287, 34.122765, 22.199242>,  <23.515842, 34.124664, 22.009109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.662287, 34.122765, 22.199242>,  <23.906361, 34.119602, 22.516130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.662287, 34.122765, 22.199242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620576, 0.616844, 0.484137,
		0.492507, 0.787045, -0.371480,
		-0.610183, 0.007910, -0.792221,
		23.479233, 34.125137, 21.961575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.764368, 34.840446, 22.410292>,  <23.906361, 34.119602, 22.516130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.764368, 34.840446, 22.410292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463778, 34.633900, 22.246025>,  <23.283422, 34.509972, 22.147465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463778, 34.633900, 22.246025>,  <23.764368, 34.840446, 22.410292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.463778, 34.633900, 22.246025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640740, 0.422817, 0.640841,
		-0.157273, 0.744708, -0.648595,
		-0.751477, -0.516368, -0.410667,
		23.238335, 34.478989, 22.122826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299498, 35.397007, 22.124014>,  <23.764368, 34.840446, 22.410292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299498, 35.397007, 22.124014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092619, 35.058506, 22.175175>,  <22.968493, 34.855404, 22.205872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092619, 35.058506, 22.175175>,  <23.299498, 35.397007, 22.124014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092619, 35.058506, 22.175175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654056, 0.487190, 0.578668,
		-0.552014, 0.215628, -0.805472,
		-0.517195, -0.846257, 0.127903,
		22.937460, 34.804630, 22.213545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621731, 35.658470, 22.178844>,  <23.299498, 35.397007, 22.124014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621731, 35.658470, 22.178844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625471, 35.307560, 22.370804>,  <22.627716, 35.097015, 22.485979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625471, 35.307560, 22.370804>,  <22.621731, 35.658470, 22.178844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625471, 35.307560, 22.370804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538551, 0.399952, 0.741621,
		-0.842541, -0.265387, -0.468716,
		0.009352, -0.877273, 0.479900,
		22.628277, 35.044376, 22.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942770, 35.532974, 22.446712>,  <22.621731, 35.658470, 22.178844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942770, 35.532974, 22.446712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.165800, 35.280216, 22.662052>,  <22.299618, 35.128563, 22.791256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.165800, 35.280216, 22.662052>,  <21.942770, 35.532974, 22.446712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165800, 35.280216, 22.662052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448923, 0.315981, 0.835837,
		-0.698267, -0.707721, -0.107487,
		0.557576, -0.631891, 0.538351,
		22.333073, 35.090649, 22.823557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.409555, 35.872601, 21.962278>,  <21.942770, 35.532974, 22.446712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.409555, 35.872601, 21.962278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242931, 36.190472, 21.785660>,  <21.142956, 36.381195, 21.679689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242931, 36.190472, 21.785660>,  <21.409555, 35.872601, 21.962278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242931, 36.190472, 21.785660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206988, -0.390028, -0.897237,
		-0.885230, -0.465149, -0.002018,
		-0.416562, 0.794679, -0.441544,
		21.117962, 36.428875, 21.653196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019861, 35.577332, 21.500368>,  <21.409555, 35.872601, 21.962278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019861, 35.577332, 21.500368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.098858, 35.952133, 21.385120>,  <21.146255, 36.177013, 21.315971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.098858, 35.952133, 21.385120>,  <21.019861, 35.577332, 21.500368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098858, 35.952133, 21.385120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224691, -0.329352, -0.917083,
		-0.954206, 0.116380, -0.275582,
		0.197494, 0.937007, -0.288120,
		21.158106, 36.233234, 21.298685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597569, 35.752052, 20.917345>,  <21.019861, 35.577332, 21.500368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597569, 35.752052, 20.917345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.905167, 36.006207, 20.889248>,  <21.089725, 36.158699, 20.872389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.905167, 36.006207, 20.889248>,  <20.597569, 35.752052, 20.917345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905167, 36.006207, 20.889248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122464, -0.254275, -0.959347,
		-0.627414, 0.729131, -0.273348,
		0.768995, 0.635384, -0.070243,
		21.135864, 36.196823, 20.868176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616972, 36.099525, 20.289490>,  <20.597569, 35.752052, 20.917345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616972, 36.099525, 20.289490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.000923, 36.137054, 20.395191>,  <21.231295, 36.159573, 20.458612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.000923, 36.137054, 20.395191>,  <20.616972, 36.099525, 20.289490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000923, 36.137054, 20.395191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279322, -0.236699, -0.930566,
		-0.024760, 0.967042, -0.253410,
		0.959878, 0.093823, 0.264256,
		21.288887, 36.165203, 20.474468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918270, 36.495934, 19.780657>,  <20.616972, 36.099525, 20.289490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918270, 36.495934, 19.780657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.241188, 36.340603, 19.958412>,  <21.434938, 36.247402, 20.065065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.241188, 36.340603, 19.958412>,  <20.918270, 36.495934, 19.780657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241188, 36.340603, 19.958412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436493, -0.113883, -0.892471,
		0.397181, 0.914457, 0.077566,
		0.807293, -0.388329, 0.444386,
		21.483376, 36.224106, 20.091728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.463192, 36.661594, 19.271339>,  <20.918270, 36.495934, 19.780657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.463192, 36.661594, 19.271339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.628878, 36.380444, 19.502647>,  <21.728289, 36.211754, 19.641432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.628878, 36.380444, 19.502647>,  <21.463192, 36.661594, 19.271339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.628878, 36.380444, 19.502647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635594, -0.231393, -0.736531,
		0.651495, 0.672627, 0.350895,
		0.414216, -0.702873, 0.578269,
		21.753143, 36.169582, 19.676128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.263983, 36.806618, 19.436321>,  <21.463192, 36.661594, 19.271339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.263983, 36.806618, 19.436321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221277, 36.409496, 19.458004>,  <22.195654, 36.171223, 19.471014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221277, 36.409496, 19.458004>,  <22.263983, 36.806618, 19.436321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221277, 36.409496, 19.458004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770752, -0.117081, -0.626286,
		0.628126, -0.025085, 0.777707,
		-0.106766, -0.992805, 0.054207,
		22.189247, 36.111656, 19.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908682, 36.594448, 19.148092>,  <22.263983, 36.806618, 19.436321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908682, 36.594448, 19.148092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.680275, 36.266178, 19.156448>,  <22.543230, 36.069218, 19.161463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.680275, 36.266178, 19.156448>,  <22.908682, 36.594448, 19.148092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680275, 36.266178, 19.156448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491183, -0.361931, -0.792304,
		0.657782, -0.442159, 0.609769,
		-0.571018, -0.820671, 0.020891,
		22.508970, 36.019978, 19.162716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381865, 36.096329, 19.291039>,  <22.908682, 36.594448, 19.148092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381865, 36.096329, 19.291039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.062891, 35.910774, 19.136681>,  <22.871508, 35.799442, 19.044065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.062891, 35.910774, 19.136681>,  <23.381865, 36.096329, 19.291039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.062891, 35.910774, 19.136681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596323, -0.508122, -0.621459,
		0.092202, -0.725689, 0.681817,
		-0.797432, -0.463883, -0.385896,
		22.823662, 35.771610, 19.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.612707, 35.342640, 19.353554>,  <23.381865, 36.096329, 19.291039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.612707, 35.342640, 19.353554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315657, 35.413494, 19.095211>,  <23.137426, 35.456009, 18.940205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315657, 35.413494, 19.095211>,  <23.612707, 35.342640, 19.353554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.315657, 35.413494, 19.095211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518045, -0.459238, -0.721616,
		-0.424429, -0.870472, 0.249275,
		-0.742623, 0.177139, -0.645858,
		23.092869, 35.466637, 18.901453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510794, 34.792629, 18.939192>,  <23.612707, 35.342640, 19.353554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510794, 34.792629, 18.939192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317686, 35.043331, 18.694534>,  <23.201820, 35.193752, 18.547739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317686, 35.043331, 18.694534>,  <23.510794, 34.792629, 18.939192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317686, 35.043331, 18.694534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542448, -0.334296, -0.770712,
		-0.687519, -0.703861, -0.178596,
		-0.482770, 0.626758, -0.611643,
		23.172855, 35.231358, 18.511042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.414839, 34.386166, 18.360403>,  <23.510794, 34.792629, 18.939192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.414839, 34.386166, 18.360403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.377800, 34.756958, 18.215004>,  <23.355577, 34.979435, 18.127764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.377800, 34.756958, 18.215004>,  <23.414839, 34.386166, 18.360403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.377800, 34.756958, 18.215004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691100, -0.202977, -0.693672,
		-0.716803, -0.315446, -0.621842,
		-0.092597, 0.926981, -0.363500,
		23.350021, 35.035053, 18.105953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.327038, 34.317581, 17.634525>,  <23.414839, 34.386166, 18.360403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.327038, 34.317581, 17.634525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460777, 34.693962, 17.655739>,  <23.541021, 34.919792, 17.668467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460777, 34.693962, 17.655739>,  <23.327038, 34.317581, 17.634525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460777, 34.693962, 17.655739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566592, -0.155721, -0.809150,
		-0.753116, 0.300588, -0.585204,
		0.334349, 0.940956, 0.053035,
		23.561083, 34.976250, 17.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.177574, 34.641106, 16.962065>,  <23.327038, 34.317581, 17.634525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.177574, 34.641106, 16.962065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.483265, 34.814621, 17.152973>,  <23.666679, 34.918728, 17.267519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.483265, 34.814621, 17.152973>,  <23.177574, 34.641106, 16.962065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.483265, 34.814621, 17.152973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604649, -0.224407, -0.764226,
		-0.224407, 0.872623, -0.433787,
		0.764226, 0.433787, 0.477272,
		23.712532, 34.944756, 17.296154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.533895, 34.875828, 16.393898>,  <23.177574, 34.641106, 16.962065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.533895, 34.875828, 16.393898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806017, 34.932762, 16.681488>,  <23.969290, 34.966923, 16.854042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806017, 34.932762, 16.681488>,  <23.533895, 34.875828, 16.393898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.806017, 34.932762, 16.681488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732627, -0.160221, -0.661504,
		0.021036, 0.976764, -0.213281,
		0.680306, 0.142340, 0.718974,
		24.010109, 34.975464, 16.897181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005226, 35.328461, 16.061720>,  <23.533895, 34.875828, 16.393898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005226, 35.328461, 16.061720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.219263, 35.176598, 16.363590>,  <24.347685, 35.085480, 16.544712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.219263, 35.176598, 16.363590>,  <24.005226, 35.328461, 16.061720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.219263, 35.176598, 16.363590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758503, -0.177408, -0.627056,
		0.371955, 0.907955, 0.193045,
		0.535091, -0.379662, 0.754675,
		24.379791, 35.062698, 16.589993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561901, 35.473812, 15.829367>,  <24.005226, 35.328461, 16.061720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561901, 35.473812, 15.829367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.642927, 35.226646, 16.133247>,  <24.691544, 35.078346, 16.315575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.642927, 35.226646, 16.133247>,  <24.561901, 35.473812, 15.829367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642927, 35.226646, 16.133247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576003, -0.552207, -0.602733,
		0.791951, 0.559684, 0.244063,
		0.202567, -0.617917, 0.759701,
		24.703697, 35.041271, 16.361158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332891, 35.414249, 15.777667>,  <24.561901, 35.473812, 15.829367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332891, 35.414249, 15.777667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.188902, 35.101406, 15.981124>,  <25.102509, 34.913700, 16.103199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.188902, 35.101406, 15.981124>,  <25.332891, 35.414249, 15.777667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188902, 35.101406, 15.981124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511471, -0.621399, -0.593515,
		0.780266, 0.046505, 0.623717,
		-0.359976, -0.782113, 0.508643,
		25.080910, 34.866772, 16.133717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937994, 34.938435, 15.820899>,  <25.332891, 35.414249, 15.777667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937994, 34.938435, 15.820899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.626091, 34.694061, 15.875646>,  <25.438950, 34.547436, 15.908494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.626091, 34.694061, 15.875646>,  <25.937994, 34.938435, 15.820899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626091, 34.694061, 15.875646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334350, -0.591174, -0.733978,
		0.529325, -0.526565, 0.665240,
		-0.779760, -0.610936, 0.136866,
		25.392162, 34.510780, 15.916705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141811, 34.262524, 16.128857>,  <25.937994, 34.938435, 15.820899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141811, 34.262524, 16.128857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.800753, 34.203873, 15.928260>,  <25.596117, 34.168682, 15.807901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.800753, 34.203873, 15.928260>,  <26.141811, 34.262524, 16.128857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800753, 34.203873, 15.928260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472565, -0.625855, -0.620474,
		-0.222882, -0.766033, 0.602925,
		-0.852647, -0.146629, -0.501491,
		25.544958, 34.159885, 15.777812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249605, 33.616432, 15.977033>,  <26.141811, 34.262524, 16.128857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249605, 33.616432, 15.977033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.955351, 33.716911, 15.725402>,  <25.778797, 33.777199, 15.574423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.955351, 33.716911, 15.725402>,  <26.249605, 33.616432, 15.977033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955351, 33.716911, 15.725402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337481, -0.669315, -0.661910,
		-0.587318, -0.699228, 0.407601,
		-0.735639, 0.251194, -0.629077,
		25.734659, 33.792271, 15.536678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.135622, 28.582043, 24.673346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472113, 28.650215, 24.878593>,  <26.674007, 28.691118, 25.001743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472113, 28.650215, 24.878593>,  <26.135622, 28.582043, 24.673346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472113, 28.650215, 24.878593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109952, 0.875266, -0.470977,
		-0.529387, 0.452616, 0.717557,
		0.841225, 0.170432, 0.513121,
		26.724480, 28.701345, 25.032530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168900, 29.256678, 24.868813>,  <26.135622, 28.582043, 24.673346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168900, 29.256678, 24.868813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554541, 29.171864, 24.932747>,  <26.785925, 29.120975, 24.971107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554541, 29.171864, 24.932747>,  <26.168900, 29.256678, 24.868813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554541, 29.171864, 24.932747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257116, 0.895816, -0.362500,
		-0.066322, 0.390584, 0.918175,
		0.964102, -0.212036, 0.159838,
		26.843771, 29.108253, 24.980698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469723, 29.816708, 25.271528>,  <26.168900, 29.256678, 24.868813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469723, 29.816708, 25.271528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742790, 29.615913, 25.059124>,  <26.906631, 29.495438, 24.931681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742790, 29.615913, 25.059124>,  <26.469723, 29.816708, 25.271528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742790, 29.615913, 25.059124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232065, 0.838005, -0.493855,
		0.692899, 0.213910, 0.688573,
		0.682669, -0.501986, -0.531012,
		26.947592, 29.465317, 24.899820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168112, 30.059837, 25.441317>,  <26.469723, 29.816708, 25.271528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168112, 30.059837, 25.441317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166800, 29.899590, 25.074821>,  <27.166012, 29.803440, 24.854923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166800, 29.899590, 25.074821>,  <27.168112, 30.059837, 25.441317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166800, 29.899590, 25.074821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363866, 0.852957, -0.374253,
		0.931446, -0.334616, 0.142972,
		-0.003282, -0.400619, -0.916239,
		27.165815, 29.779404, 24.799950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727909, 30.381786, 25.136513>,  <27.168112, 30.059837, 25.441317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727909, 30.381786, 25.136513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541265, 30.213165, 24.825497>,  <27.429279, 30.111992, 24.638887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541265, 30.213165, 24.825497>,  <27.727909, 30.381786, 25.136513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541265, 30.213165, 24.825497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416698, 0.670651, -0.613670,
		0.780152, -0.610343, -0.137272,
		-0.466611, -0.421555, -0.777538,
		27.401283, 30.086699, 24.592236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279764, 30.341530, 24.655161>,  <27.727909, 30.381786, 25.136513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279764, 30.341530, 24.655161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941563, 30.299473, 24.445755>,  <27.738642, 30.274239, 24.320110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941563, 30.299473, 24.445755>,  <28.279764, 30.341530, 24.655161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941563, 30.299473, 24.445755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364167, 0.603490, -0.709353,
		0.390520, -0.790408, -0.471963,
		-0.845504, -0.105143, -0.523516,
		27.687912, 30.267929, 24.288700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540663, 30.327705, 23.903618>,  <28.279764, 30.341530, 24.655161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540663, 30.327705, 23.903618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148279, 30.405079, 23.896694>,  <27.912849, 30.451502, 23.892540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148279, 30.405079, 23.896694>,  <28.540663, 30.327705, 23.903618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148279, 30.405079, 23.896694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133428, 0.606523, -0.783790,
		-0.141112, -0.771177, -0.620784,
		-0.980961, 0.193432, -0.017310,
		27.853991, 30.463108, 23.891500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323513, 30.122782, 23.270351>,  <28.540663, 30.327705, 23.903618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323513, 30.122782, 23.270351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059561, 30.386639, 23.414257>,  <27.901190, 30.544952, 23.500601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059561, 30.386639, 23.414257>,  <28.323513, 30.122782, 23.270351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059561, 30.386639, 23.414257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065412, 0.426556, -0.902093,
		-0.748520, -0.618804, -0.238326,
		-0.659878, 0.659645, 0.359763,
		27.861597, 30.584532, 23.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757721, 30.078339, 22.817696>,  <28.323513, 30.122782, 23.270351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757721, 30.078339, 22.817696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706978, 30.426769, 23.007488>,  <27.676533, 30.635828, 23.121365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706978, 30.426769, 23.007488>,  <27.757721, 30.078339, 22.817696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706978, 30.426769, 23.007488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204570, 0.445089, -0.871807,
		-0.970597, -0.207660, 0.121733,
		-0.126857, 0.871076, 0.474483,
		27.668921, 30.688091, 23.149834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079243, 30.309546, 22.664854>,  <27.757721, 30.078339, 22.817696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079243, 30.309546, 22.664854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308899, 30.613918, 22.785751>,  <27.446692, 30.796541, 22.858290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308899, 30.613918, 22.785751>,  <27.079243, 30.309546, 22.664854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308899, 30.613918, 22.785751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117663, 0.441996, -0.889266,
		-0.810259, 0.475000, 0.343301,
		0.574139, 0.760930, 0.302242,
		27.481140, 30.842197, 22.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590492, 30.884510, 22.686848>,  <27.079243, 30.309546, 22.664854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590492, 30.884510, 22.686848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952126, 31.051678, 22.651134>,  <27.169106, 31.151979, 22.629705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952126, 31.051678, 22.651134>,  <26.590492, 30.884510, 22.686848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952126, 31.051678, 22.651134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324899, 0.536451, -0.778885,
		-0.277616, 0.733186, 0.620779,
		0.904085, 0.417921, -0.089284,
		27.223351, 31.177053, 22.624350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467329, 31.649584, 22.586714>,  <26.590492, 30.884510, 22.686848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467329, 31.649584, 22.586714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800848, 31.536140, 22.397251>,  <27.000959, 31.468075, 22.283573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800848, 31.536140, 22.397251>,  <26.467329, 31.649584, 22.586714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800848, 31.536140, 22.397251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221445, 0.614106, -0.757520,
		0.505713, 0.736506, 0.449236,
		0.833796, -0.283607, -0.473657,
		27.050987, 31.451059, 22.255154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672655, 32.213341, 22.270973>,  <26.467329, 31.649584, 22.586714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672655, 32.213341, 22.270973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870827, 31.924347, 22.078072>,  <26.989729, 31.750952, 21.962330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870827, 31.924347, 22.078072>,  <26.672655, 32.213341, 22.270973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870827, 31.924347, 22.078072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179899, 0.457802, -0.870663,
		0.849815, 0.518109, 0.096835,
		0.495429, -0.722482, -0.482254,
		27.019455, 31.707602, 21.933395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986811, 32.219551, 22.527269>,  <26.672655, 32.213341, 22.270973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986811, 32.219551, 22.527269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984060, 32.530128, 22.275208>,  <25.982410, 32.716473, 22.123970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984060, 32.530128, 22.275208>,  <25.986811, 32.219551, 22.527269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984060, 32.530128, 22.275208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648038, 0.476476, 0.594154,
		0.761577, 0.412449, 0.499886,
		-0.006874, 0.776439, -0.630155,
		25.981998, 32.763062, 22.086161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981606, 32.992393, 22.631245>,  <25.986811, 32.219551, 22.527269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981606, 32.992393, 22.631245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790546, 33.292336, 22.814362>,  <25.675911, 33.472301, 22.924231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790546, 33.292336, 22.814362>,  <25.981606, 32.992393, 22.631245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790546, 33.292336, 22.814362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147503, -0.445231, 0.883183,
		0.866081, 0.489375, 0.102058,
		-0.477647, 0.749854, 0.457790,
		25.647253, 33.517292, 22.951698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346090, 33.234509, 23.154631>,  <25.981606, 32.992393, 22.631245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346090, 33.234509, 23.154631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976667, 33.346786, 23.259132>,  <25.755014, 33.414154, 23.321833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976667, 33.346786, 23.259132>,  <26.346090, 33.234509, 23.154631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976667, 33.346786, 23.259132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167643, -0.317186, 0.933429,
		0.344876, 0.905871, 0.245882,
		-0.923556, 0.280696, 0.261253,
		25.699600, 33.430996, 23.337509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372797, 33.639595, 23.736959>,  <26.346090, 33.234509, 23.154631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372797, 33.639595, 23.736959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998161, 33.499451, 23.734333>,  <25.773380, 33.415363, 23.732758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998161, 33.499451, 23.734333>,  <26.372797, 33.639595, 23.736959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998161, 33.499451, 23.734333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079078, -0.229569, 0.970074,
		-0.341386, 0.908044, 0.242719,
		-0.936591, -0.350364, -0.006565,
		25.717184, 33.394341, 23.732363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153320, 33.789837, 24.437559>,  <26.372797, 33.639595, 23.736959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153320, 33.789837, 24.437559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881819, 33.534653, 24.292065>,  <25.718918, 33.381542, 24.204769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881819, 33.534653, 24.292065>,  <26.153320, 33.789837, 24.437559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881819, 33.534653, 24.292065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053149, -0.451330, 0.890773,
		-0.732442, 0.623947, 0.272434,
		-0.678752, -0.637959, -0.363735,
		25.678194, 33.343266, 24.182943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530739, 33.856461, 24.921917>,  <26.153320, 33.789837, 24.437559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530739, 33.856461, 24.921917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521824, 33.512436, 24.718033>,  <25.516474, 33.306023, 24.595703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521824, 33.512436, 24.718033>,  <25.530739, 33.856461, 24.921917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521824, 33.512436, 24.718033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304077, -0.479850, 0.822971,
		-0.952386, 0.173335, -0.250828,
		-0.022290, -0.860058, -0.509710,
		25.515137, 33.254417, 24.565121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741508, 33.516827, 24.980185>,  <25.530739, 33.856461, 24.921917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741508, 33.516827, 24.980185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015808, 33.245602, 24.874374>,  <25.180387, 33.082867, 24.810888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015808, 33.245602, 24.874374>,  <24.741508, 33.516827, 24.980185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015808, 33.245602, 24.874374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091077, -0.440526, 0.893108,
		-0.722115, -0.588358, -0.363848,
		0.685751, -0.678065, -0.264525,
		25.221533, 33.042183, 24.795017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494614, 32.829117, 25.233343>,  <24.741508, 33.516827, 24.980185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494614, 32.829117, 25.233343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891457, 32.798359, 25.193718>,  <25.129562, 32.779903, 25.169943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891457, 32.798359, 25.193718>,  <24.494614, 32.829117, 25.233343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891457, 32.798359, 25.193718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044711, -0.521138, 0.852301,
		-0.117160, -0.850002, -0.513586,
		0.992106, -0.076892, -0.099061,
		25.189089, 32.775291, 25.164000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626818, 32.179001, 25.271851>,  <24.494614, 32.829117, 25.233343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626818, 32.179001, 25.271851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985552, 32.344429, 25.334648>,  <25.200792, 32.443687, 25.372328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985552, 32.344429, 25.334648>,  <24.626818, 32.179001, 25.271851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985552, 32.344429, 25.334648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169508, -0.649094, 0.741582,
		0.408600, -0.638464, -0.652234,
		0.896835, 0.413569, 0.156995,
		25.254602, 32.468498, 25.381746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955057, 31.675697, 25.420399>,  <24.626818, 32.179001, 25.271851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955057, 31.675697, 25.420399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219328, 31.943043, 25.557098>,  <25.377892, 32.103451, 25.639118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219328, 31.943043, 25.557098>,  <24.955057, 31.675697, 25.420399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219328, 31.943043, 25.557098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291517, -0.647970, 0.703671,
		0.691752, -0.365274, -0.622940,
		0.660679, 0.668363, 0.341752,
		25.417532, 32.143551, 25.659624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631870, 31.347952, 25.462040>,  <24.955057, 31.675697, 25.420399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631870, 31.347952, 25.462040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671253, 31.654346, 25.716148>,  <25.694883, 31.838184, 25.868614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671253, 31.654346, 25.716148>,  <25.631870, 31.347952, 25.462040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671253, 31.654346, 25.716148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243984, -0.637469, 0.730825,
		0.964768, 0.083040, -0.249653,
		0.098459, 0.765988, 0.635271,
		25.700790, 31.884142, 25.906729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264210, 31.250362, 25.854559>,  <25.631870, 31.347952, 25.462040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264210, 31.250362, 25.854559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075829, 31.505299, 26.098526>,  <25.962799, 31.658260, 26.244905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075829, 31.505299, 26.098526>,  <26.264210, 31.250362, 25.854559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075829, 31.505299, 26.098526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267420, -0.555713, 0.787191,
		0.840648, 0.533835, 0.091277,
		-0.470953, 0.637341, 0.609917,
		25.934542, 31.696501, 26.281502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592630, 31.212690, 26.410393>,  <26.264210, 31.250362, 25.854559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592630, 31.212690, 26.410393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259716, 31.385143, 26.549774>,  <26.059967, 31.488615, 26.633404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259716, 31.385143, 26.549774>,  <26.592630, 31.212690, 26.410393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259716, 31.385143, 26.549774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047527, -0.681773, 0.730018,
		0.552303, 0.591024, 0.587921,
		-0.832287, 0.431134, 0.348456,
		26.010029, 31.514482, 26.654310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776321, 31.099367, 27.071217>,  <26.592630, 31.212690, 26.410393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776321, 31.099367, 27.071217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395861, 31.222794, 27.075226>,  <26.167585, 31.296850, 27.077631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395861, 31.222794, 27.075226>,  <26.776321, 31.099367, 27.071217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395861, 31.222794, 27.075226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216697, -0.690381, 0.690229,
		0.219900, 0.654340, 0.723522,
		-0.951150, 0.308566, 0.010022,
		26.110516, 31.315363, 27.078232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551741, 31.435867, 27.699053>,  <26.776321, 31.099367, 27.071217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551741, 31.435867, 27.699053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237186, 31.265179, 27.520390>,  <26.048454, 31.162766, 27.413191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237186, 31.265179, 27.520390>,  <26.551741, 31.435867, 27.699053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237186, 31.265179, 27.520390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006309, -0.728570, 0.684942,
		-0.617704, 0.535811, 0.575629,
		-0.786386, -0.426723, -0.446660,
		26.001270, 31.137161, 27.386391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892174, 31.908075, 28.263151>,  <26.551741, 31.435867, 27.699053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892174, 31.908075, 28.263151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197418, 31.918674, 28.521442>,  <27.380564, 31.925034, 28.676416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197418, 31.918674, 28.521442>,  <26.892174, 31.908075, 28.263151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197418, 31.918674, 28.521442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411769, 0.750157, -0.517407,
		-0.498107, 0.660728, 0.561540,
		0.763109, 0.026499, 0.645726,
		27.426352, 31.926624, 28.715160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060406, 32.624699, 28.400057>,  <26.892174, 31.908075, 28.263151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060406, 32.624699, 28.400057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391253, 32.405251, 28.448868>,  <27.589760, 32.273582, 28.478153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391253, 32.405251, 28.448868>,  <27.060406, 32.624699, 28.400057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391253, 32.405251, 28.448868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501652, 0.622747, -0.600442,
		0.253426, 0.557850, 0.790303,
		0.827116, -0.548625, 0.122026,
		27.639387, 32.240662, 28.485476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495754, 33.094524, 28.189491>,  <27.060406, 32.624699, 28.400057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495754, 33.094524, 28.189491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731615, 32.779686, 28.261929>,  <27.873131, 32.590782, 28.305391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731615, 32.779686, 28.261929>,  <27.495754, 33.094524, 28.189491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731615, 32.779686, 28.261929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752019, 0.453269, -0.478554,
		0.294584, 0.418364, 0.859181,
		0.589650, -0.787095, 0.181092,
		27.908510, 32.543556, 28.316256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245287, 33.376446, 28.257809>,  <27.495754, 33.094524, 28.189491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245287, 33.376446, 28.257809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277864, 32.992325, 28.151085>,  <28.297411, 32.761852, 28.087049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277864, 32.992325, 28.151085>,  <28.245287, 33.376446, 28.257809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277864, 32.992325, 28.151085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737524, 0.238129, -0.631944,
		0.670392, -0.145313, 0.727639,
		0.081443, -0.960301, -0.266812,
		28.302298, 32.704235, 28.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037203, 33.219707, 28.253897>,  <28.245287, 33.376446, 28.257809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037203, 33.219707, 28.253897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860142, 32.940208, 28.029110>,  <28.753904, 32.772507, 27.894238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860142, 32.940208, 28.029110>,  <29.037203, 33.219707, 28.253897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860142, 32.940208, 28.029110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641632, 0.190972, -0.742858,
		0.626392, -0.689404, 0.363806,
		-0.442653, -0.698750, -0.561967,
		28.727346, 32.730583, 27.860519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630074, 32.821804, 27.958202>,  <29.037203, 33.219707, 28.253897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630074, 32.821804, 27.958202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305387, 32.762714, 27.732178>,  <29.110575, 32.727261, 27.596563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305387, 32.762714, 27.732178>,  <29.630074, 32.821804, 27.958202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305387, 32.762714, 27.732178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533254, 0.207187, -0.820191,
		0.238239, -0.967083, -0.089400,
		-0.811716, -0.147728, -0.565061,
		29.061872, 32.718399, 27.562660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959568, 32.525703, 27.299734>,  <29.630074, 32.821804, 27.958202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959568, 32.525703, 27.299734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595684, 32.647953, 27.187290>,  <29.377354, 32.721302, 27.119823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595684, 32.647953, 27.187290>,  <29.959568, 32.525703, 27.299734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595684, 32.647953, 27.187290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376639, 0.322246, -0.868505,
		-0.174852, -0.895963, -0.408261,
		-0.909708, 0.305627, -0.281109,
		29.322771, 32.739639, 27.102957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874994, 32.256401, 26.585764>,  <29.959568, 32.525703, 27.299734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874994, 32.256401, 26.585764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647812, 32.580421, 26.644054>,  <29.511501, 32.774834, 26.679029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647812, 32.580421, 26.644054>,  <29.874994, 32.256401, 26.585764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647812, 32.580421, 26.644054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428312, 0.442085, -0.788106,
		-0.702832, -0.385194, -0.598041,
		-0.567958, 0.810054, 0.145729,
		29.477425, 32.823437, 26.687773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616829, 32.509167, 25.956509>,  <29.874994, 32.256401, 26.585764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616829, 32.509167, 25.956509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574972, 32.844749, 26.170128>,  <29.549858, 33.046097, 26.298300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574972, 32.844749, 26.170128>,  <29.616829, 32.509167, 25.956509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574972, 32.844749, 26.170128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527916, 0.501952, -0.685090,
		-0.842826, 0.210245, -0.495421,
		-0.104640, 0.838952, 0.534050,
		29.543579, 33.096436, 26.330343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460762, 32.996021, 25.501223>,  <29.616829, 32.509167, 25.956509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460762, 32.996021, 25.501223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548798, 33.215439, 25.823875>,  <29.601620, 33.347092, 26.017467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548798, 33.215439, 25.823875>,  <29.460762, 32.996021, 25.501223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548798, 33.215439, 25.823875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211352, 0.780451, -0.588411,
		-0.952308, 0.299987, 0.055833,
		0.220091, 0.548548, 0.806632,
		29.614824, 33.380005, 26.065865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156551, 33.656185, 25.370834>,  <29.460762, 32.996021, 25.501223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156551, 33.656185, 25.370834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452858, 33.675632, 25.638836>,  <29.630642, 33.687302, 25.799637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452858, 33.675632, 25.638836>,  <29.156551, 33.656185, 25.370834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452858, 33.675632, 25.638836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317986, 0.853185, -0.413473,
		-0.591738, 0.519338, 0.616551,
		0.740764, 0.048614, 0.670004,
		29.675087, 33.690216, 25.839836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106705, 34.316517, 25.744291>,  <29.156551, 33.656185, 25.370834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106705, 34.316517, 25.744291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486088, 34.189846, 25.749134>,  <29.713717, 34.113842, 25.752039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486088, 34.189846, 25.749134>,  <29.106705, 34.316517, 25.744291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486088, 34.189846, 25.749134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280308, 0.820487, -0.498226,
		0.147845, 0.475939, 0.866963,
		0.948456, -0.316676, 0.012105,
		29.770624, 34.094845, 25.752766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.729736, 30.421236, 31.641937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.080711, 30.236908, 31.695225>,  <26.291296, 30.126312, 31.727198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.080711, 30.236908, 31.695225>,  <25.729736, 30.421236, 31.641937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080711, 30.236908, 31.695225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412995, 0.584465, -0.698452,
		0.243999, 0.667867, 0.703149,
		0.877439, -0.460818, 0.133217,
		26.343943, 30.098663, 31.735189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172018, 30.904394, 31.689034>,  <25.729736, 30.421236, 31.641937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172018, 30.904394, 31.689034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.395781, 30.602325, 31.552341>,  <26.530039, 30.421083, 31.470325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.395781, 30.602325, 31.552341>,  <26.172018, 30.904394, 31.689034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395781, 30.602325, 31.552341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361116, 0.593126, -0.719581,
		0.746097, 0.279134, 0.604503,
		0.559406, -0.755173, -0.341730,
		26.563602, 30.375774, 31.449823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812021, 31.171526, 31.577269>,  <26.172018, 30.904394, 31.689034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812021, 31.171526, 31.577269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.759872, 30.853607, 31.340187>,  <26.728582, 30.662855, 31.197937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.759872, 30.853607, 31.340187>,  <26.812021, 31.171526, 31.577269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759872, 30.853607, 31.340187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446944, 0.486507, -0.750701,
		0.885010, -0.362777, 0.291803,
		-0.130373, -0.794798, -0.592705,
		26.720760, 30.615168, 31.162376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420372, 31.079350, 31.257893>,  <26.812021, 31.171526, 31.577269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420372, 31.079350, 31.257893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.156723, 30.888626, 31.025269>,  <26.998533, 30.774193, 30.885695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.156723, 30.888626, 31.025269>,  <27.420372, 31.079350, 31.257893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156723, 30.888626, 31.025269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503653, 0.294401, -0.812196,
		0.558474, -0.828240, 0.046100,
		-0.659121, -0.476808, -0.581561,
		26.958986, 30.745584, 30.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824467, 30.732401, 30.796757>,  <27.420372, 31.079350, 31.257893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824467, 30.732401, 30.796757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462351, 30.723091, 30.627094>,  <27.245081, 30.717505, 30.525297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462351, 30.723091, 30.627094>,  <27.824467, 30.732401, 30.796757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462351, 30.723091, 30.627094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395322, 0.319280, -0.861267,
		0.155472, -0.947375, -0.279839,
		-0.905289, -0.023276, -0.424157,
		27.190763, 30.716108, 30.499847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783190, 30.428972, 30.072639>,  <27.824467, 30.732401, 30.796757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783190, 30.428972, 30.072639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.458822, 30.662518, 30.088184>,  <27.264202, 30.802645, 30.097511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.458822, 30.662518, 30.088184>,  <27.783190, 30.428972, 30.072639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458822, 30.662518, 30.088184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211378, 0.354215, -0.910961,
		-0.545645, -0.730502, -0.410656,
		-0.810920, 0.583865, 0.038864,
		27.215546, 30.837677, 30.099844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364954, 30.355965, 29.379904>,  <27.783190, 30.428972, 30.072639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364954, 30.355965, 29.379904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.264078, 30.703827, 29.549656>,  <27.203552, 30.912544, 29.651508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.264078, 30.703827, 29.549656>,  <27.364954, 30.355965, 29.379904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264078, 30.703827, 29.549656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180563, 0.473145, -0.862283,
		-0.950683, -0.140831, -0.276350,
		-0.252190, 0.869655, 0.424382,
		27.188421, 30.964724, 29.676970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024754, 30.590279, 28.876293>,  <27.364954, 30.355965, 29.379904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024754, 30.590279, 28.876293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.113155, 30.900665, 29.112610>,  <27.166197, 31.086897, 29.254400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.113155, 30.900665, 29.112610>,  <27.024754, 30.590279, 28.876293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113155, 30.900665, 29.112610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347869, 0.503202, -0.791059,
		-0.911122, 0.380347, -0.158724,
		0.221007, 0.775966, 0.590790,
		27.179457, 31.133455, 29.289846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932760, 31.154757, 28.363934>,  <27.024754, 30.590279, 28.876293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932760, 31.154757, 28.363934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.133068, 31.331127, 28.661877>,  <27.253252, 31.436949, 28.840643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.133068, 31.331127, 28.661877>,  <26.932760, 31.154757, 28.363934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133068, 31.331127, 28.661877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422624, 0.626438, -0.654953,
		-0.755394, 0.642776, 0.127356,
		0.500769, 0.440924, 0.744860,
		27.283298, 31.463404, 28.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214308, 31.196205, 28.295002>,  <26.932760, 31.154757, 28.363934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214308, 31.196205, 28.295002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.993322, 31.045406, 27.997639>,  <25.860731, 30.954927, 27.819221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.993322, 31.045406, 27.997639>,  <26.214308, 31.196205, 28.295002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993322, 31.045406, 27.997639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177967, -0.817956, 0.547061,
		-0.814316, 0.434534, 0.384798,
		-0.552464, -0.376999, -0.743408,
		25.827583, 30.932306, 27.774616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611204, 31.000742, 28.646780>,  <26.214308, 31.196205, 28.295002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611204, 31.000742, 28.646780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.645744, 30.802898, 28.300854>,  <25.666468, 30.684193, 28.093298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.645744, 30.802898, 28.300854>,  <25.611204, 31.000742, 28.646780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645744, 30.802898, 28.300854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336659, -0.831480, 0.441930,
		-0.937659, 0.252987, -0.238313,
		0.086350, -0.494609, -0.864815,
		25.671650, 30.654516, 28.041409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012339, 30.896748, 28.524771>,  <25.611204, 31.000742, 28.646780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012339, 30.896748, 28.524771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.239883, 30.624081, 28.340717>,  <25.376411, 30.460480, 28.230286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.239883, 30.624081, 28.340717>,  <25.012339, 30.896748, 28.524771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239883, 30.624081, 28.340717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286208, -0.688590, 0.666280,
		-0.771026, -0.247328, -0.586812,
		0.568863, -0.681669, -0.460133,
		25.410542, 30.419580, 28.202677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572212, 30.343582, 28.213633>,  <25.012339, 30.896748, 28.524771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572212, 30.343582, 28.213633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.932692, 30.176483, 28.259811>,  <25.148979, 30.076223, 28.287519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.932692, 30.176483, 28.259811>,  <24.572212, 30.343582, 28.213633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932692, 30.176483, 28.259811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421643, -0.783424, 0.456578,
		-0.100289, -0.460146, -0.882161,
		0.901199, -0.417746, 0.115448,
		25.203051, 30.051159, 28.294445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.400505, 29.783012, 28.389227>,  <24.572212, 30.343582, 28.213633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.400505, 29.783012, 28.389227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.789120, 29.724888, 28.464062>,  <25.022289, 29.690014, 28.508963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.789120, 29.724888, 28.464062>,  <24.400505, 29.783012, 28.389227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789120, 29.724888, 28.464062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236490, -0.640900, 0.730288,
		0.013786, -0.753745, -0.657022,
		0.971536, -0.145311, 0.187088,
		25.080580, 29.681295, 28.520187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459856, 29.112541, 28.241030>,  <24.400505, 29.783012, 28.389227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459856, 29.112541, 28.241030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.750711, 29.223198, 28.492344>,  <24.925224, 29.289593, 28.643131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.750711, 29.223198, 28.492344>,  <24.459856, 29.112541, 28.241030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750711, 29.223198, 28.492344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239457, -0.755517, 0.609798,
		0.643376, -0.593854, -0.483120,
		0.727137, 0.276643, 0.628284,
		24.968853, 29.306190, 28.680830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912243, 28.524256, 28.373873>,  <24.459856, 29.112541, 28.241030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912243, 28.524256, 28.373873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.952328, 28.774338, 28.683472>,  <24.976379, 28.924387, 28.869232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.952328, 28.774338, 28.683472>,  <24.912243, 28.524256, 28.373873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952328, 28.774338, 28.683472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240203, -0.739703, 0.628603,
		0.965536, -0.248911, 0.076049,
		0.100213, 0.625206, 0.773999,
		24.982391, 28.961899, 28.915672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174828, 28.215939, 28.921347>,  <24.912243, 28.524256, 28.373873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174828, 28.215939, 28.921347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.038288, 28.511944, 29.153160>,  <24.956364, 28.689547, 29.292248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.038288, 28.511944, 29.153160>,  <25.174828, 28.215939, 28.921347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038288, 28.511944, 29.153160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277253, -0.668405, 0.690192,
		0.898115, 0.074919, 0.433331,
		-0.341350, 0.740015, 0.579533,
		24.935883, 28.733948, 29.327021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366348, 27.994261, 29.576698>,  <25.174828, 28.215939, 28.921347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366348, 27.994261, 29.576698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.101915, 28.289719, 29.629421>,  <24.943254, 28.466993, 29.661055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.101915, 28.289719, 29.629421>,  <25.366348, 27.994261, 29.576698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101915, 28.289719, 29.629421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538036, -0.589121, 0.602871,
		0.522958, 0.327630, 0.786876,
		-0.661084, 0.738644, 0.131809,
		24.903591, 28.511312, 29.668964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262379, 28.089441, 30.315874>,  <25.366348, 27.994261, 29.576698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262379, 28.089441, 30.315874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.931072, 28.249352, 30.158825>,  <24.732288, 28.345297, 30.064596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.931072, 28.249352, 30.158825>,  <25.262379, 28.089441, 30.315874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931072, 28.249352, 30.158825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560281, -0.600292, 0.570732,
		-0.007523, 0.692698, 0.721189,
		-0.828269, 0.399775, -0.392621,
		24.682592, 28.369284, 30.041039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807961, 28.136889, 30.892639>,  <25.262379, 28.089441, 30.315874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807961, 28.136889, 30.892639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.553791, 28.205967, 30.591599>,  <24.401289, 28.247414, 30.410975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.553791, 28.205967, 30.591599>,  <24.807961, 28.136889, 30.892639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553791, 28.205967, 30.591599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674870, -0.597825, 0.432614,
		-0.375213, 0.782803, 0.496421,
		-0.635425, 0.172698, -0.752603,
		24.363163, 28.257776, 30.365818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212227, 28.404642, 31.154280>,  <24.807961, 28.136889, 30.892639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212227, 28.404642, 31.154280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.105408, 28.209183, 30.822037>,  <24.041317, 28.091908, 30.622690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.105408, 28.209183, 30.822037>,  <24.212227, 28.404642, 31.154280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.105408, 28.209183, 30.822037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604232, -0.586540, 0.539328,
		-0.750726, 0.645905, -0.138624,
		-0.267046, -0.488648, -0.830608,
		24.025293, 28.062588, 30.572855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.505604, 28.268539, 31.087399>,  <24.212227, 28.404642, 31.154280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.505604, 28.268539, 31.087399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.609550, 27.997864, 30.811844>,  <23.671919, 27.835459, 30.646511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.609550, 27.997864, 30.811844>,  <23.505604, 28.268539, 31.087399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.609550, 27.997864, 30.811844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641388, -0.654253, 0.400718,
		-0.721866, 0.337709, -0.604039,
		0.259868, -0.676687, -0.688885,
		23.687511, 27.794857, 30.605179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.884052, 27.985550, 30.902706>,  <23.505604, 28.268539, 31.087399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.884052, 27.985550, 30.902706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.155588, 27.720543, 30.776058>,  <23.318510, 27.561539, 30.700069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.155588, 27.720543, 30.776058>,  <22.884052, 27.985550, 30.902706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155588, 27.720543, 30.776058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567418, -0.746983, 0.346487,
		-0.466064, -0.055552, -0.883005,
		0.678838, -0.662518, -0.316620,
		23.359240, 27.521788, 30.681072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.874954, 25.036201, 31.762848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578644, 25.294769, 31.835941>,  <30.400858, 25.449911, 31.879797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578644, 25.294769, 31.835941>,  <30.874954, 25.036201, 31.762848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578644, 25.294769, 31.835941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119807, 0.394799, -0.910923,
		-0.660983, -0.652896, -0.369903,
		-0.740775, 0.646422, 0.182734,
		30.356411, 25.488695, 31.890762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379410, 24.846069, 31.150915>,  <30.874954, 25.036201, 31.762848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379410, 24.846069, 31.150915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.283419, 25.206299, 31.295898>,  <30.225824, 25.422438, 31.382889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.283419, 25.206299, 31.295898>,  <30.379410, 24.846069, 31.150915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283419, 25.206299, 31.295898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054983, 0.360158, -0.931269,
		-0.969220, -0.243412, -0.036913,
		-0.239977, 0.900576, 0.362456,
		30.211426, 25.476471, 31.404634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940636, 25.113230, 30.682775>,  <30.379410, 24.846069, 31.150915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940636, 25.113230, 30.682775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005123, 25.454559, 30.881107>,  <30.043816, 25.659357, 31.000107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005123, 25.454559, 30.881107>,  <29.940636, 25.113230, 30.682775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005123, 25.454559, 30.881107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006566, 0.503316, -0.864078,
		-0.986897, 0.136049, 0.086747,
		0.161218, 0.853325, 0.495827,
		30.053488, 25.710556, 31.029856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441349, 25.612206, 30.432596>,  <29.940636, 25.113230, 30.682775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441349, 25.612206, 30.432596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.756037, 25.813225, 30.575993>,  <29.944849, 25.933836, 30.662031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.756037, 25.813225, 30.575993>,  <29.441349, 25.612206, 30.432596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756037, 25.813225, 30.575993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111775, 0.455165, -0.883364,
		-0.607108, 0.735029, 0.301915,
		0.786719, 0.502550, 0.358492,
		29.992052, 25.963989, 30.683540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419550, 26.397774, 30.186243>,  <29.441349, 25.612206, 30.432596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419550, 26.397774, 30.186243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.805223, 26.368294, 30.288162>,  <30.036627, 26.350605, 30.349314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.805223, 26.368294, 30.288162>,  <29.419550, 26.397774, 30.186243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805223, 26.368294, 30.288162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255482, 0.516229, -0.817457,
		-0.071286, 0.853274, 0.516568,
		0.964182, -0.073700, 0.254796,
		30.094479, 26.346184, 30.364601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777086, 27.143452, 30.129522>,  <29.419550, 26.397774, 30.186243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777086, 27.143452, 30.129522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.095181, 26.903851, 30.092014>,  <30.286037, 26.760090, 30.069510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.095181, 26.903851, 30.092014>,  <29.777086, 27.143452, 30.129522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095181, 26.903851, 30.092014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324084, 0.550673, -0.769239,
		0.512413, 0.581338, 0.632043,
		0.795237, -0.599003, -0.093769,
		30.333752, 26.724150, 30.063883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350595, 27.645319, 30.047634>,  <29.777086, 27.143452, 30.129522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350595, 27.645319, 30.047634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489639, 27.286858, 29.937305>,  <30.573065, 27.071781, 29.871109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489639, 27.286858, 29.937305>,  <30.350595, 27.645319, 30.047634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489639, 27.286858, 29.937305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376471, 0.402805, -0.834277,
		0.858742, 0.186163, 0.477395,
		0.347609, -0.896154, -0.275821,
		30.593922, 27.018011, 29.854559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963573, 27.860834, 29.950525>,  <30.350595, 27.645319, 30.047634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963573, 27.860834, 29.950525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878021, 27.522346, 29.755314>,  <30.826691, 27.319254, 29.638187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878021, 27.522346, 29.755314>,  <30.963573, 27.860834, 29.950525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878021, 27.522346, 29.755314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172610, 0.458990, -0.871512,
		0.961489, -0.270636, 0.047897,
		-0.213878, -0.846218, -0.488028,
		30.813858, 27.268480, 29.608906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509375, 27.784250, 29.481075>,  <30.963573, 27.860834, 29.950525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509375, 27.784250, 29.481075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220604, 27.559219, 29.319916>,  <31.047340, 27.424202, 29.223219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220604, 27.559219, 29.319916>,  <31.509375, 27.784250, 29.481075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220604, 27.559219, 29.319916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281435, 0.293204, -0.913688,
		0.632151, -0.773007, -0.053343,
		-0.721928, -0.562576, -0.402901,
		31.004026, 27.390446, 29.199045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884104, 27.378685, 29.047300>,  <31.509375, 27.784250, 29.481075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884104, 27.378685, 29.047300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504934, 27.380627, 28.919914>,  <31.277433, 27.381792, 28.843483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504934, 27.380627, 28.919914>,  <31.884104, 27.378685, 29.047300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504934, 27.380627, 28.919914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315554, 0.150066, -0.936966,
		0.043243, -0.988664, -0.143783,
		-0.947922, 0.004854, -0.318467,
		31.220558, 27.382082, 28.824375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988689, 27.090805, 28.435904>,  <31.884104, 27.378685, 29.047300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988689, 27.090805, 28.435904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630466, 27.266659, 28.408485>,  <31.415533, 27.372171, 28.392035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630466, 27.266659, 28.408485>,  <31.988689, 27.090805, 28.435904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630466, 27.266659, 28.408485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234511, 0.335455, -0.912401,
		-0.378129, -0.833182, -0.403518,
		-0.895558, 0.439634, -0.068545,
		31.361799, 27.398548, 28.387922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908689, 26.926386, 27.840649>,  <31.988689, 27.090805, 28.435904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908689, 26.926386, 27.840649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652634, 27.226112, 27.908466>,  <31.499001, 27.405949, 27.949158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652634, 27.226112, 27.908466>,  <31.908689, 26.926386, 27.840649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652634, 27.226112, 27.908466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138673, 0.329761, -0.933824,
		-0.755639, -0.574268, -0.315003,
		-0.640140, 0.749316, 0.169545,
		31.460592, 27.450907, 27.959330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356682, 26.908356, 27.392220>,  <31.908689, 26.926386, 27.840649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356682, 26.908356, 27.392220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339815, 27.290092, 27.510509>,  <31.329695, 27.519135, 27.581484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339815, 27.290092, 27.510509>,  <31.356682, 26.908356, 27.392220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339815, 27.290092, 27.510509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047996, 0.297583, -0.953489,
		-0.997957, -0.026010, -0.058352,
		-0.042165, 0.954342, 0.295727,
		31.327166, 27.576395, 27.599228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949451, 27.259706, 26.860977>,  <31.356682, 26.908356, 27.392220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949451, 27.259706, 26.860977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.147711, 27.543846, 27.060871>,  <31.266666, 27.714331, 27.180807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.147711, 27.543846, 27.060871>,  <30.949451, 27.259706, 26.860977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147711, 27.543846, 27.060871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313792, 0.390056, -0.865674,
		-0.809857, 0.585882, -0.029572,
		0.495648, 0.710351, 0.499734,
		31.296406, 27.756952, 27.210791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304354, 27.544407, 26.646158>,  <30.949451, 27.259706, 26.860977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304354, 27.544407, 26.646158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004520, 27.424877, 26.409912>,  <29.824619, 27.353159, 26.268164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004520, 27.424877, 26.409912>,  <30.304354, 27.544407, 26.646158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004520, 27.424877, 26.409912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386350, -0.526995, 0.756974,
		-0.537454, 0.795601, 0.279577,
		-0.749585, -0.298824, -0.590616,
		29.779646, 27.335230, 26.232727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814734, 27.504980, 27.073946>,  <30.304354, 27.544407, 26.646158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814734, 27.504980, 27.073946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685366, 27.264271, 26.781845>,  <29.607746, 27.119844, 26.606585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685366, 27.264271, 26.781845>,  <29.814734, 27.504980, 27.073946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685366, 27.264271, 26.781845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290442, -0.671346, 0.681864,
		-0.900580, 0.432623, 0.042345,
		-0.323419, -0.601774, -0.730252,
		29.588341, 27.083738, 26.562769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167902, 27.356733, 27.225939>,  <29.814734, 27.504980, 27.073946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167902, 27.356733, 27.225939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.256863, 27.049000, 26.986385>,  <29.310240, 26.864359, 26.842653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.256863, 27.049000, 26.986385>,  <29.167902, 27.356733, 27.225939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256863, 27.049000, 26.986385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369889, -0.634926, 0.678271,
		-0.902064, 0.070672, -0.425776,
		0.222402, -0.769334, -0.598885,
		29.323584, 26.818199, 26.806721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627197, 26.945198, 27.185286>,  <29.167902, 27.356733, 27.225939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627197, 26.945198, 27.185286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.911987, 26.687389, 27.073799>,  <29.082861, 26.532705, 27.006907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.911987, 26.687389, 27.073799>,  <28.627197, 26.945198, 27.185286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911987, 26.687389, 27.073799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273851, -0.620343, 0.734970,
		-0.646605, -0.446952, -0.618171,
		0.711975, -0.644521, -0.278719,
		29.125580, 26.494034, 26.990185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368164, 26.274326, 27.158825>,  <28.627197, 26.945198, 27.185286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368164, 26.274326, 27.158825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758121, 26.199299, 27.206833>,  <28.992096, 26.154282, 27.235638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758121, 26.199299, 27.206833>,  <28.368164, 26.274326, 27.158825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758121, 26.199299, 27.206833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222354, -0.790721, 0.570368,
		-0.012081, -0.582734, -0.812574,
		0.974891, -0.187569, 0.120020,
		29.050589, 26.143028, 27.242840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469114, 25.563555, 27.071959>,  <28.368164, 26.274326, 27.158825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469114, 25.563555, 27.071959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.808552, 25.666256, 27.256985>,  <29.012215, 25.727877, 27.368000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.808552, 25.666256, 27.256985>,  <28.469114, 25.563555, 27.071959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808552, 25.666256, 27.256985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203801, -0.648212, 0.733680,
		0.488216, -0.716867, -0.497742,
		0.848593, 0.256754, 0.462566,
		29.063129, 25.743282, 27.395754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662796, 24.905859, 27.273727>,  <28.469114, 25.563555, 27.071959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662796, 24.905859, 27.273727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891315, 25.169456, 27.469418>,  <29.028427, 25.327616, 27.586832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891315, 25.169456, 27.469418>,  <28.662796, 24.905859, 27.273727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891315, 25.169456, 27.469418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031478, -0.578048, 0.815396,
		0.820138, -0.481235, -0.309494,
		0.571299, 0.658995, 0.489227,
		29.062706, 25.367155, 27.616186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224831, 24.616428, 27.480978>,  <28.662796, 24.905859, 27.273727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224831, 24.616428, 27.480978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209919, 24.920795, 27.740089>,  <29.200972, 25.103415, 27.895555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209919, 24.920795, 27.740089>,  <29.224831, 24.616428, 27.480978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209919, 24.920795, 27.740089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156309, -0.644690, 0.748293,
		0.987005, -0.073359, 0.142970,
		-0.037278, 0.760916, 0.647778,
		29.198736, 25.149071, 27.934423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525412, 24.315855, 28.015150>,  <29.224831, 24.616428, 27.480978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525412, 24.315855, 28.015150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326193, 24.633884, 28.153603>,  <29.206661, 24.824701, 28.236673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326193, 24.633884, 28.153603>,  <29.525412, 24.315855, 28.015150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326193, 24.633884, 28.153603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329162, -0.542624, 0.772795,
		0.802247, 0.270956, 0.531960,
		-0.498048, 0.795074, 0.346130,
		29.176779, 24.872406, 28.257442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693733, 24.431536, 28.745960>,  <29.525412, 24.315855, 28.015150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693733, 24.431536, 28.745960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341532, 24.619343, 28.719822>,  <29.130211, 24.732027, 28.704138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341532, 24.619343, 28.719822>,  <29.693733, 24.431536, 28.745960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341532, 24.619343, 28.719822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334256, -0.517183, 0.787905,
		0.336137, 0.715595, 0.612320,
		-0.880502, 0.469516, -0.065347,
		29.077381, 24.760197, 28.700218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551971, 24.844851, 29.364431>,  <29.693733, 24.431536, 28.745960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551971, 24.844851, 29.364431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198849, 24.758774, 29.197414>,  <28.986975, 24.707127, 29.097204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198849, 24.758774, 29.197414>,  <29.551971, 24.844851, 29.364431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198849, 24.758774, 29.197414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371968, -0.222580, 0.901165,
		-0.286862, 0.950868, 0.116450,
		-0.882808, -0.215194, -0.417543,
		28.934006, 24.694216, 29.072151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164125, 25.229034, 29.714470>,  <29.551971, 24.844851, 29.364431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164125, 25.229034, 29.714470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912312, 24.956234, 29.565575>,  <28.761223, 24.792555, 29.476236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912312, 24.956234, 29.565575>,  <29.164125, 25.229034, 29.714470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912312, 24.956234, 29.565575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486518, -0.027528, 0.873237,
		-0.605794, 0.730835, -0.314475,
		-0.629535, -0.681999, -0.372240,
		28.723452, 24.751635, 29.453903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476028, 25.436680, 29.980463>,  <29.164125, 25.229034, 29.714470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476028, 25.436680, 29.980463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.458849, 25.050182, 29.878857>,  <28.448542, 24.818283, 29.817892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.458849, 25.050182, 29.878857>,  <28.476028, 25.436680, 29.980463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458849, 25.050182, 29.878857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487765, -0.201613, 0.849375,
		-0.871918, 0.160381, -0.462642,
		-0.042949, -0.966246, -0.254018,
		28.445965, 24.760309, 29.802650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823545, 25.319790, 30.072639>,  <28.476028, 25.436680, 29.980463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823545, 25.319790, 30.072639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.989595, 24.957279, 30.040802>,  <28.089226, 24.739773, 30.021700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.989595, 24.957279, 30.040802>,  <27.823545, 25.319790, 30.072639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989595, 24.957279, 30.040802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561808, -0.324181, 0.761103,
		-0.715572, -0.271238, -0.643729,
		0.415125, -0.906276, -0.079591,
		28.114134, 24.685396, 30.016924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207546, 25.098137, 29.468279>,  <27.823545, 25.319790, 30.072639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207546, 25.098137, 29.468279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.812986, 25.106228, 29.403030>,  <26.576250, 25.111082, 29.363882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.812986, 25.106228, 29.403030>,  <27.207546, 25.098137, 29.468279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812986, 25.106228, 29.403030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158117, 0.387913, -0.908032,
		0.044907, -0.921474, -0.385835,
		-0.986399, 0.020230, -0.163120,
		26.517067, 25.112297, 29.354094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032452, 24.804457, 28.834209>,  <27.207546, 25.098137, 29.468279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032452, 24.804457, 28.834209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.749638, 25.076725, 28.910931>,  <26.579948, 25.240086, 28.956964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.749638, 25.076725, 28.910931>,  <27.032452, 24.804457, 28.834209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749638, 25.076725, 28.910931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022849, 0.293072, -0.955817,
		-0.706808, -0.671415, -0.222765,
		-0.707036, 0.680669, 0.191804,
		26.537527, 25.280926, 28.968472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739534, 24.934917, 28.160658>,  <27.032452, 24.804457, 28.834209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739534, 24.934917, 28.160658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.570446, 25.207130, 28.400051>,  <26.468992, 25.370459, 28.543688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.570446, 25.207130, 28.400051>,  <26.739534, 24.934917, 28.160658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570446, 25.207130, 28.400051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053229, 0.677892, -0.733232,
		-0.904696, -0.278096, -0.322783,
		-0.422721, 0.680533, 0.598483,
		26.443630, 25.411291, 28.579596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054867, 25.119804, 27.869081>,  <26.739534, 24.934917, 28.160658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054867, 25.119804, 27.869081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.170774, 25.427338, 28.097092>,  <26.240320, 25.611856, 28.233898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.170774, 25.427338, 28.097092>,  <26.054867, 25.119804, 27.869081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170774, 25.427338, 28.097092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013661, 0.592196, -0.805678,
		-0.956999, 0.241249, 0.161099,
		0.289771, 0.768832, 0.570027,
		26.257706, 25.657988, 28.268099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742678, 25.689255, 27.568949>,  <26.054867, 25.119804, 27.869081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742678, 25.689255, 27.568949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.038004, 25.854427, 27.782257>,  <26.215200, 25.953531, 27.910242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.038004, 25.854427, 27.782257>,  <25.742678, 25.689255, 27.568949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038004, 25.854427, 27.782257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114980, 0.702037, -0.702798,
		-0.664583, 0.580201, 0.470846,
		0.738315, 0.412930, 0.533273,
		26.259499, 25.978306, 27.942240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613312, 26.304964, 27.707626>,  <25.742678, 25.689255, 27.568949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613312, 26.304964, 27.707626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.011131, 26.333241, 27.738281>,  <26.249823, 26.350206, 27.756674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.011131, 26.333241, 27.738281>,  <25.613312, 26.304964, 27.707626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011131, 26.333241, 27.738281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018820, 0.844705, -0.534902,
		-0.102550, 0.530544, 0.841431,
		0.994550, 0.070690, 0.076639,
		26.309496, 26.354448, 27.761272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806004, 27.034781, 27.695585>,  <25.613312, 26.304964, 27.707626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806004, 27.034781, 27.695585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.146664, 26.852703, 27.591671>,  <26.351061, 26.743456, 27.529324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.146664, 26.852703, 27.591671>,  <25.806004, 27.034781, 27.695585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146664, 26.852703, 27.591671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283617, 0.817089, -0.501922,
		0.440738, 0.353784, 0.824977,
		0.851652, -0.455194, -0.259783,
		26.402159, 26.716145, 27.513737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337471, 27.605253, 27.733576>,  <25.806004, 27.034781, 27.695585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337471, 27.605253, 27.733576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.489929, 27.310177, 27.510670>,  <26.581404, 27.133131, 27.376926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.489929, 27.310177, 27.510670>,  <26.337471, 27.605253, 27.733576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489929, 27.310177, 27.510670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363529, 0.673794, -0.643310,
		0.850044, 0.042614, 0.524985,
		0.381146, -0.737689, -0.557263,
		26.604273, 27.088871, 27.343491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063660, 27.739780, 27.481607>,  <26.337471, 27.605253, 27.733576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063660, 27.739780, 27.481607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.921124, 27.474117, 27.218727>,  <26.835602, 27.314720, 27.060999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.921124, 27.474117, 27.218727>,  <27.063660, 27.739780, 27.481607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921124, 27.474117, 27.218727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240525, 0.614466, -0.751386,
		0.902867, -0.425824, -0.059213,
		-0.356342, -0.664158, -0.657202,
		26.814220, 27.274870, 27.021566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581324, 27.684425, 27.065237>,  <27.063660, 27.739780, 27.481607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581324, 27.684425, 27.065237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265654, 27.546761, 26.861763>,  <27.076252, 27.464163, 26.739679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265654, 27.546761, 26.861763>,  <27.581324, 27.684425, 27.065237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265654, 27.546761, 26.861763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305913, 0.497924, -0.811473,
		0.532571, -0.796002, -0.287660,
		-0.789168, -0.344169, -0.508687,
		27.028902, 27.443512, 26.709158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850258, 27.676201, 26.417418>,  <27.581324, 27.684425, 27.065237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850258, 27.676201, 26.417418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.454943, 27.647728, 26.363430>,  <27.217752, 27.630644, 26.331038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.454943, 27.647728, 26.363430>,  <27.850258, 27.676201, 26.417418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454943, 27.647728, 26.363430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069560, 0.577094, -0.813710,
		0.135810, -0.813570, -0.565385,
		-0.988290, -0.071182, -0.134967,
		27.158455, 27.626373, 26.322941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807608, 27.461319, 25.650087>,  <27.850258, 27.676201, 26.417418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807608, 27.461319, 25.650087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.459158, 27.613342, 25.774475>,  <27.250088, 27.704556, 25.849108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.459158, 27.613342, 25.774475>,  <27.807608, 27.461319, 25.650087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459158, 27.613342, 25.774475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052712, 0.557230, -0.828684,
		-0.488229, -0.738277, -0.465382,
		-0.871122, 0.380056, 0.310971,
		27.197821, 27.727360, 25.867767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468227, 27.489880, 25.074013>,  <27.807608, 27.461319, 25.650087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468227, 27.489880, 25.074013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265053, 27.726952, 25.324047>,  <27.143148, 27.869194, 25.474068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265053, 27.726952, 25.324047>,  <27.468227, 27.489880, 25.074013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265053, 27.726952, 25.324047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053203, 0.702697, -0.709497,
		-0.859750, -0.393636, -0.325393,
		-0.507936, 0.592679, 0.625086,
		27.112673, 27.904755, 25.511574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016953, 27.779739, 24.631907>,  <27.468227, 27.489880, 25.074013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016953, 27.779739, 24.631907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056429, 28.018208, 24.950615>,  <27.080114, 28.161287, 25.141840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056429, 28.018208, 24.950615>,  <27.016953, 27.779739, 24.631907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056429, 28.018208, 24.950615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136753, 0.784957, -0.604269,
		-0.985677, 0.168598, -0.004058,
		0.098693, 0.596169, 0.796770,
		27.086037, 28.197058, 25.189646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.684006, 27.783106, 29.382637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073479, 27.817463, 29.298199>,  <41.307163, 27.838078, 29.247536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073479, 27.817463, 29.298199>,  <40.684006, 27.783106, 29.382637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073479, 27.817463, 29.298199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109013, 0.988955, -0.100422,
		0.200137, 0.120792, 0.972293,
		0.973684, 0.085895, -0.211094,
		41.365585, 27.843231, 29.234871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922947, 28.348434, 29.816219>,  <40.684006, 27.783106, 29.382637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922947, 28.348434, 29.816219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198315, 28.309093, 29.528774>,  <41.363537, 28.285488, 29.356308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198315, 28.309093, 29.528774>,  <40.922947, 28.348434, 29.816219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198315, 28.309093, 29.528774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171646, 0.940529, -0.293161,
		0.704709, 0.325164, 0.630597,
		0.688420, -0.098354, -0.718613,
		41.404842, 28.279587, 29.313190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364876, 28.997393, 29.770697>,  <40.922947, 28.348434, 29.816219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364876, 28.997393, 29.770697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414360, 28.821411, 29.414913>,  <41.444050, 28.715822, 29.201443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414360, 28.821411, 29.414913>,  <41.364876, 28.997393, 29.770697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414360, 28.821411, 29.414913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183564, 0.870728, -0.456220,
		0.975192, 0.219712, 0.026959,
		0.123711, -0.439954, -0.889458,
		41.451473, 28.689425, 29.148075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767185, 29.481104, 29.410112>,  <41.364876, 28.997393, 29.770697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767185, 29.481104, 29.410112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594872, 29.257141, 29.127007>,  <41.491486, 29.122763, 28.957144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594872, 29.257141, 29.127007>,  <41.767185, 29.481104, 29.410112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594872, 29.257141, 29.127007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294616, 0.828548, -0.476140,
		0.853013, 0.003409, -0.521878,
		-0.430778, -0.559908, -0.707767,
		41.465637, 29.089169, 28.914677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102901, 29.734545, 28.772058>,  <41.767185, 29.481104, 29.410112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102901, 29.734545, 28.772058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.755871, 29.552380, 28.692146>,  <41.547653, 29.443081, 28.644199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.755871, 29.552380, 28.692146>,  <42.102901, 29.734545, 28.772058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755871, 29.552380, 28.692146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245656, 0.741753, -0.624063,
		0.432394, -0.492345, -0.755402,
		-0.867576, -0.455411, -0.199782,
		41.495598, 29.415756, 28.632212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099247, 29.850470, 28.123999>,  <42.102901, 29.734545, 28.772058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099247, 29.850470, 28.123999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715073, 29.799278, 28.222935>,  <41.484566, 29.768564, 28.282297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715073, 29.799278, 28.222935>,  <42.099247, 29.850470, 28.123999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715073, 29.799278, 28.222935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258802, 0.738152, -0.623019,
		-0.102844, -0.662385, -0.742071,
		-0.960439, -0.127976, 0.247341,
		41.426941, 29.760885, 28.297136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665699, 29.913731, 27.522362>,  <42.099247, 29.850470, 28.123999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665699, 29.913731, 27.522362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388744, 29.974060, 27.804596>,  <41.222572, 30.010258, 27.973936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388744, 29.974060, 27.804596>,  <41.665699, 29.913731, 27.522362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388744, 29.974060, 27.804596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488332, 0.621939, -0.612146,
		-0.531157, -0.768403, -0.356972,
		-0.692390, 0.150825, 0.705584,
		41.181026, 30.019308, 28.016272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043224, 29.796373, 27.231039>,  <41.665699, 29.913731, 27.522362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043224, 29.796373, 27.231039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972511, 30.040436, 27.539963>,  <40.930084, 30.186872, 27.725317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972511, 30.040436, 27.539963>,  <41.043224, 29.796373, 27.231039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972511, 30.040436, 27.539963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435341, 0.655265, -0.617337,
		-0.882738, -0.445350, 0.149788,
		-0.176780, 0.610156, 0.772307,
		40.919476, 30.223482, 27.771654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382450, 30.143391, 27.065527>,  <41.043224, 29.796373, 27.231039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382450, 30.143391, 27.065527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544823, 30.365520, 27.355862>,  <40.642246, 30.498798, 27.530062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544823, 30.365520, 27.355862>,  <40.382450, 30.143391, 27.065527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544823, 30.365520, 27.355862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212087, 0.829773, -0.516232,
		-0.888954, 0.055614, 0.454607,
		0.405931, 0.555323, 0.725835,
		40.666603, 30.532118, 27.573612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856594, 30.546774, 27.233122>,  <40.382450, 30.143391, 27.065527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856594, 30.546774, 27.233122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159172, 30.760159, 27.384495>,  <40.340717, 30.888189, 27.475319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159172, 30.760159, 27.384495>,  <39.856594, 30.546774, 27.233122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159172, 30.760159, 27.384495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337770, 0.814086, -0.472415,
		-0.560093, 0.229531, 0.795997,
		0.756444, 0.533460, 0.378435,
		40.386105, 30.920197, 27.498026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547703, 31.209435, 27.293333>,  <39.856594, 30.546774, 27.233122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547703, 31.209435, 27.293333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.938049, 31.289360, 27.328571>,  <40.172256, 31.337315, 27.349714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.938049, 31.289360, 27.328571>,  <39.547703, 31.209435, 27.293333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938049, 31.289360, 27.328571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117738, 0.821199, -0.558364,
		-0.183911, 0.534517, 0.824905,
		0.975866, 0.199812, 0.088094,
		40.230808, 31.349304, 27.355000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473797, 31.859415, 27.510080>,  <39.547703, 31.209435, 27.293333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473797, 31.859415, 27.510080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839359, 31.814915, 27.353928>,  <40.058697, 31.788216, 27.260237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839359, 31.814915, 27.353928>,  <39.473797, 31.859415, 27.510080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839359, 31.814915, 27.353928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174407, 0.760804, -0.625107,
		0.366547, 0.639374, 0.675902,
		0.913907, -0.111249, -0.390382,
		40.113533, 31.781540, 27.236813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768581, 32.499786, 27.518518>,  <39.473797, 31.859415, 27.510080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768581, 32.499786, 27.518518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955399, 32.280907, 27.240685>,  <40.067490, 32.149578, 27.073984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955399, 32.280907, 27.240685>,  <39.768581, 32.499786, 27.518518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955399, 32.280907, 27.240685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205809, 0.696676, -0.687230,
		0.859949, 0.463918, 0.212760,
		0.467044, -0.547195, -0.694585,
		40.095512, 32.116749, 27.032309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182335, 32.971931, 27.182611>,  <39.768581, 32.499786, 27.518518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182335, 32.971931, 27.182611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186718, 32.676552, 26.912922>,  <40.189346, 32.499325, 26.751108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186718, 32.676552, 26.912922>,  <40.182335, 32.971931, 27.182611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186718, 32.676552, 26.912922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013477, 0.674093, -0.738524,
		0.999849, 0.017178, -0.002566,
		0.010956, -0.738447, -0.674223,
		40.190006, 32.455017, 26.710655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602036, 33.174236, 26.641670>,  <40.182335, 32.971931, 27.182611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602036, 33.174236, 26.641670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.368279, 32.890549, 26.483940>,  <40.228024, 32.720337, 26.389301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.368279, 32.890549, 26.483940>,  <40.602036, 33.174236, 26.641670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368279, 32.890549, 26.483940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136029, 0.564683, -0.814021,
		0.799990, -0.422066, -0.426470,
		-0.584391, -0.709221, -0.394327,
		40.192963, 32.677784, 26.365643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742207, 33.186485, 25.924335>,  <40.602036, 33.174236, 26.641670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742207, 33.186485, 25.924335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.416550, 32.954247, 25.927639>,  <40.221153, 32.814903, 25.929621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.416550, 32.954247, 25.927639>,  <40.742207, 33.186485, 25.924335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416550, 32.954247, 25.927639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280756, 0.381158, -0.880849,
		0.508272, -0.719460, -0.473326,
		-0.814147, -0.580600, 0.008261,
		40.172306, 32.780067, 25.930117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807915, 32.783051, 25.283571>,  <40.742207, 33.186485, 25.924335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807915, 32.783051, 25.283571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.422813, 32.792809, 25.391289>,  <40.191753, 32.798664, 25.455919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.422813, 32.792809, 25.391289>,  <40.807915, 32.783051, 25.283571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422813, 32.792809, 25.391289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265978, 0.093860, -0.959399,
		-0.048679, -0.995287, -0.083875,
		-0.962749, 0.024393, 0.269294,
		40.133987, 32.800125, 25.472076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543819, 32.239067, 24.958452>,  <40.807915, 32.783051, 25.283571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543819, 32.239067, 24.958452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.260506, 32.506912, 25.047852>,  <40.090519, 32.667618, 25.101492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.260506, 32.506912, 25.047852>,  <40.543819, 32.239067, 24.958452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260506, 32.506912, 25.047852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235980, 0.073800, -0.968952,
		-0.665316, -0.739035, 0.105743,
		-0.708285, 0.669612, 0.223498,
		40.048019, 32.707794, 25.114901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213196, 32.092812, 24.344976>,  <40.543819, 32.239067, 24.958452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213196, 32.092812, 24.344976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050201, 32.424881, 24.497173>,  <39.952404, 32.624123, 24.588491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050201, 32.424881, 24.497173>,  <40.213196, 32.092812, 24.344976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050201, 32.424881, 24.497173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107276, 0.370254, -0.922715,
		-0.906889, -0.416811, -0.061816,
		-0.407486, 0.830169, 0.380493,
		39.927956, 32.673931, 24.611320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663128, 32.282337, 24.040274>,  <40.213196, 32.092812, 24.344976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663128, 32.282337, 24.040274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758533, 32.638664, 24.194958>,  <39.815777, 32.852463, 24.287767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758533, 32.638664, 24.194958>,  <39.663128, 32.282337, 24.040274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758533, 32.638664, 24.194958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161121, 0.428984, -0.888827,
		-0.957679, 0.149695, 0.245851,
		0.238519, 0.890822, 0.386710,
		39.830090, 32.905910, 24.310970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162777, 32.781754, 23.662664>,  <39.663128, 32.282337, 24.040274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162777, 32.781754, 23.662664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.470352, 32.989399, 23.811928>,  <39.654900, 33.113987, 23.901485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.470352, 32.989399, 23.811928>,  <39.162777, 32.781754, 23.662664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470352, 32.989399, 23.811928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163721, 0.404322, -0.899844,
		-0.618000, 0.753021, 0.225909,
		0.768941, 0.519118, 0.373156,
		39.701035, 33.145134, 23.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764317, 33.162582, 23.117250>,  <39.162777, 32.781754, 23.662664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764317, 33.162582, 23.117250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.436207, 33.024174, 22.935078>,  <38.239342, 32.941128, 22.825773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.436207, 33.024174, 22.935078>,  <38.764317, 33.162582, 23.117250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436207, 33.024174, 22.935078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054041, -0.839577, 0.540545,
		-0.569409, 0.418785, 0.707385,
		-0.820276, -0.346019, -0.455431,
		38.190125, 32.920368, 22.798449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300961, 32.947414, 23.644199>,  <38.764317, 33.162582, 23.117250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300961, 32.947414, 23.644199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240086, 32.741966, 23.306435>,  <38.203560, 32.618698, 23.103775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240086, 32.741966, 23.306435>,  <38.300961, 32.947414, 23.644199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240086, 32.741966, 23.306435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100023, -0.857980, 0.503850,
		-0.983278, -0.007782, 0.181946,
		-0.152185, -0.513624, -0.844411,
		38.194431, 32.587879, 23.053112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837799, 32.520958, 23.860760>,  <38.300961, 32.947414, 23.644199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837799, 32.520958, 23.860760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966248, 32.362217, 23.516808>,  <38.043316, 32.266972, 23.310436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966248, 32.362217, 23.516808>,  <37.837799, 32.520958, 23.860760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966248, 32.362217, 23.516808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187476, -0.863360, 0.468469,
		-0.928296, -0.311642, -0.202843,
		0.321121, -0.396850, -0.859879,
		38.062584, 32.243164, 23.258844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485798, 31.885036, 23.739489>,  <37.837799, 32.520958, 23.860760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485798, 31.885036, 23.739489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.815491, 31.828766, 23.520092>,  <38.013306, 31.795004, 23.388454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.815491, 31.828766, 23.520092>,  <37.485798, 31.885036, 23.739489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815491, 31.828766, 23.520092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090229, -0.923642, 0.372484,
		-0.559011, -0.356505, -0.748606,
		0.824237, -0.140677, -0.548493,
		38.062763, 31.786562, 23.355545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468281, 31.228046, 23.483122>,  <37.485798, 31.885036, 23.739489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468281, 31.228046, 23.483122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.856094, 31.315109, 23.438171>,  <38.088783, 31.367348, 23.411201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.856094, 31.315109, 23.438171>,  <37.468281, 31.228046, 23.483122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856094, 31.315109, 23.438171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243946, -0.899551, 0.362352,
		-0.022218, -0.378726, -0.925242,
		0.969534, 0.217658, -0.112375,
		38.146954, 31.380407, 23.404459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735634, 30.583939, 23.275316>,  <37.468281, 31.228046, 23.483122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735634, 30.583939, 23.275316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064049, 30.785557, 23.382523>,  <38.261097, 30.906527, 23.446846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064049, 30.785557, 23.382523>,  <37.735634, 30.583939, 23.275316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064049, 30.785557, 23.382523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320308, -0.795369, 0.514578,
		0.472540, -0.336642, -0.814480,
		0.821041, 0.504044, 0.268015,
		38.310360, 30.936769, 23.462927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252518, 30.081997, 23.188135>,  <37.735634, 30.583939, 23.275316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252518, 30.081997, 23.188135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377872, 30.357101, 23.450058>,  <38.453087, 30.522163, 23.607212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377872, 30.357101, 23.450058>,  <38.252518, 30.081997, 23.188135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377872, 30.357101, 23.450058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387018, -0.722182, 0.573297,
		0.867182, 0.073758, -0.492499,
		0.313389, 0.687759, 0.654809,
		38.471889, 30.563429, 23.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001698, 29.893291, 23.352865>,  <38.252518, 30.081997, 23.188135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001698, 29.893291, 23.352865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.901814, 30.119579, 23.667217>,  <38.841881, 30.255352, 23.855827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.901814, 30.119579, 23.667217>,  <39.001698, 29.893291, 23.352865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901814, 30.119579, 23.667217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466108, -0.641153, 0.609644,
		0.848756, 0.518541, -0.103581,
		-0.249715, 0.565718, 0.785879,
		38.826900, 30.289295, 23.902981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533833, 29.831436, 23.737959>,  <39.001698, 29.893291, 23.352865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533833, 29.831436, 23.737959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249844, 29.966270, 23.985283>,  <39.079449, 30.047171, 24.133678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249844, 29.966270, 23.985283>,  <39.533833, 29.831436, 23.737959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249844, 29.966270, 23.985283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437949, -0.476229, 0.762500,
		0.551486, 0.812144, 0.190484,
		-0.709974, 0.337086, 0.618312,
		39.036850, 30.067396, 24.170776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940014, 30.123999, 24.302118>,  <39.533833, 29.831436, 23.737959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940014, 30.123999, 24.302118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566467, 30.041061, 24.418667>,  <39.342339, 29.991299, 24.488596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566467, 30.041061, 24.418667>,  <39.940014, 30.123999, 24.302118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566467, 30.041061, 24.418667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353679, -0.414969, 0.838279,
		-0.052904, 0.885894, 0.460861,
		-0.933869, -0.207345, 0.291369,
		39.286308, 29.978857, 24.506077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951263, 30.352661, 24.971985>,  <39.940014, 30.123999, 24.302118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951263, 30.352661, 24.971985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660088, 30.085037, 24.912033>,  <39.485382, 29.924463, 24.876062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660088, 30.085037, 24.912033>,  <39.951263, 30.352661, 24.971985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660088, 30.085037, 24.912033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262563, -0.473950, 0.840495,
		-0.633376, 0.572477, 0.520677,
		-0.727939, -0.669060, -0.149877,
		39.441708, 29.884319, 24.867069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916336, 29.943941, 25.598074>,  <39.951263, 30.352661, 24.971985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916336, 29.943941, 25.598074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672466, 29.704380, 25.390377>,  <39.526146, 29.560644, 25.265759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672466, 29.704380, 25.390377>,  <39.916336, 29.943941, 25.598074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672466, 29.704380, 25.390377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218952, -0.756826, 0.615852,
		-0.761811, 0.261780, 0.592549,
		-0.609675, -0.598903, -0.519242,
		39.489563, 29.524710, 25.234604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378082, 29.635786, 26.068756>,  <39.916336, 29.943941, 25.598074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378082, 29.635786, 26.068756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.370510, 29.363247, 25.776070>,  <39.365967, 29.199724, 25.600458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.370510, 29.363247, 25.776070>,  <39.378082, 29.635786, 26.068756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370510, 29.363247, 25.776070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032709, -0.731032, 0.681559,
		-0.999286, 0.036834, -0.008450,
		-0.018927, -0.681348, -0.731715,
		39.364834, 29.158842, 25.556555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847466, 29.220797, 26.220802>,  <39.378082, 29.635786, 26.068756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847466, 29.220797, 26.220802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059978, 29.007065, 25.957825>,  <39.187485, 28.878826, 25.800039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059978, 29.007065, 25.957825>,  <38.847466, 29.220797, 26.220802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059978, 29.007065, 25.957825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311592, -0.844870, 0.434861,
		-0.787812, -0.026182, -0.615359,
		0.531284, -0.534330, -0.657441,
		39.219364, 28.846766, 25.760592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380760, 28.644428, 25.951595>,  <38.847466, 29.220797, 26.220802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380760, 28.644428, 25.951595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764328, 28.547203, 25.893089>,  <38.994469, 28.488867, 25.857986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764328, 28.547203, 25.893089>,  <38.380760, 28.644428, 25.951595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764328, 28.547203, 25.893089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141852, -0.857357, 0.494789,
		-0.245666, -0.453715, -0.856616,
		0.958919, -0.243065, -0.146263,
		39.052002, 28.474283, 25.849211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372093, 27.931347, 25.947329>,  <38.380760, 28.644428, 25.951595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372093, 27.931347, 25.947329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755791, 28.014332, 26.024078>,  <38.986008, 28.064123, 26.070129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755791, 28.014332, 26.024078>,  <38.372093, 27.931347, 25.947329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755791, 28.014332, 26.024078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099275, -0.883108, 0.458546,
		0.264579, -0.420808, -0.867709,
		0.959240, 0.207463, 0.191876,
		39.043564, 28.076571, 26.081642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636581, 27.251480, 26.014261>,  <38.372093, 27.931347, 25.947329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636581, 27.251480, 26.014261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943130, 27.470753, 26.148232>,  <39.127060, 27.602316, 26.228615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943130, 27.470753, 26.148232>,  <38.636581, 27.251480, 26.014261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943130, 27.470753, 26.148232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140347, -0.651647, 0.745425,
		0.626882, -0.524265, -0.576338,
		0.766369, 0.548182, 0.334927,
		39.173042, 27.635206, 26.248709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226944, 26.786732, 26.040455>,  <38.636581, 27.251480, 26.014261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226944, 26.786732, 26.040455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277973, 27.085197, 26.301826>,  <39.308590, 27.264277, 26.458649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277973, 27.085197, 26.301826>,  <39.226944, 26.786732, 26.040455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277973, 27.085197, 26.301826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091026, -0.664838, 0.741421,
		0.987644, -0.035104, -0.152733,
		0.127570, 0.746163, 0.653427,
		39.316242, 27.309046, 26.497854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824570, 26.711102, 26.222128>,  <39.226944, 26.786732, 26.040455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824570, 26.711102, 26.222128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657566, 26.916874, 26.521740>,  <39.557362, 27.040337, 26.701508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657566, 26.916874, 26.521740>,  <39.824570, 26.711102, 26.222128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657566, 26.916874, 26.521740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470128, -0.583120, 0.662534,
		0.777601, 0.628756, 0.001612,
		-0.417512, 0.514430, 0.749030,
		39.532314, 27.071203, 26.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298084, 26.776775, 26.677814>,  <39.824570, 26.711102, 26.222128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298084, 26.776775, 26.677814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982883, 26.856247, 26.910908>,  <39.793762, 26.903931, 27.050764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982883, 26.856247, 26.910908>,  <40.298084, 26.776775, 26.677814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982883, 26.856247, 26.910908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324937, -0.669731, 0.667739,
		0.522942, 0.715532, 0.463191,
		-0.788002, 0.198681, 0.582734,
		39.746483, 26.915852, 27.085728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611511, 26.765038, 27.262646>,  <40.298084, 26.776775, 26.677814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611511, 26.765038, 27.262646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235580, 26.755863, 27.398998>,  <40.010021, 26.750359, 27.480810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235580, 26.755863, 27.398998>,  <40.611511, 26.765038, 27.262646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235580, 26.755863, 27.398998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262274, -0.687833, 0.676829,
		0.218947, 0.725507, 0.652459,
		-0.939827, -0.022934, 0.340881,
		39.953632, 26.748983, 27.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.285336, 27.056833, 30.539116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680422, 26.994389, 30.541737>,  <22.917475, 26.956921, 30.543308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680422, 26.994389, 30.541737>,  <22.285336, 27.056833, 30.539116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680422, 26.994389, 30.541737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134145, -0.825732, 0.547880,
		-0.080122, -0.542030, -0.836531,
		0.987718, -0.156114, 0.006552,
		22.976738, 26.947554, 30.543701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.495514, 26.393528, 30.225426>,  <22.285336, 27.056833, 30.539116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.495514, 26.393528, 30.225426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.774973, 26.488228, 30.495491>,  <22.942648, 26.545048, 30.657530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.774973, 26.488228, 30.495491>,  <22.495514, 26.393528, 30.225426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774973, 26.488228, 30.495491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159309, -0.868498, 0.469395,
		0.697506, -0.435501, -0.569056,
		0.698646, 0.236750, 0.675161,
		22.984568, 26.559254, 30.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769094, 25.798651, 30.352800>,  <22.495514, 26.393528, 30.225426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769094, 25.798651, 30.352800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.850443, 26.025318, 30.672180>,  <22.899252, 26.161320, 30.863808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.850443, 26.025318, 30.672180>,  <22.769094, 25.798651, 30.352800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850443, 26.025318, 30.672180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126516, -0.793447, 0.595345,
		0.970893, -0.222094, -0.089673,
		0.203373, 0.566671, 0.798451,
		22.911455, 26.195320, 30.911715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285280, 25.445683, 30.737425>,  <22.769094, 25.798651, 30.352800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285280, 25.445683, 30.737425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.147282, 25.699043, 31.014488>,  <23.064482, 25.851059, 31.180727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.147282, 25.699043, 31.014488>,  <23.285280, 25.445683, 30.737425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147282, 25.699043, 31.014488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080088, -0.715412, 0.694097,
		0.935180, 0.294936, 0.196088,
		-0.344998, 0.633402, 0.692660,
		23.043781, 25.889063, 31.222286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.657120, 25.351969, 31.353529>,  <23.285280, 25.445683, 30.737425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.657120, 25.351969, 31.353529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.327694, 25.527294, 31.497543>,  <23.130039, 25.632488, 31.583952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.327694, 25.527294, 31.497543>,  <23.657120, 25.351969, 31.353529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.327694, 25.527294, 31.497543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017002, -0.615371, 0.788054,
		0.566968, 0.655134, 0.499346,
		-0.823564, 0.438312, 0.360034,
		23.080626, 25.658789, 31.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.826735, 25.479452, 32.026875>,  <23.657120, 25.351969, 31.353529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.826735, 25.479452, 32.026875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.427092, 25.485905, 32.011250>,  <23.187305, 25.489777, 32.001873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.427092, 25.485905, 32.011250>,  <23.826735, 25.479452, 32.026875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.427092, 25.485905, 32.011250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041860, -0.505521, 0.861798,
		-0.005846, 0.862663, 0.505745,
		-0.999106, 0.016133, -0.039067,
		23.127359, 25.490744, 31.999529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.689398, 25.826492, 32.654652>,  <23.826735, 25.479452, 32.026875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.689398, 25.826492, 32.654652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.387297, 25.591358, 32.538692>,  <23.206036, 25.450277, 32.469116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.387297, 25.591358, 32.538692>,  <23.689398, 25.826492, 32.654652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387297, 25.591358, 32.538692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011537, -0.454159, 0.890846,
		-0.655333, 0.669469, 0.349787,
		-0.755252, -0.587836, -0.289902,
		23.160721, 25.415007, 32.451721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.237787, 25.924810, 33.146107>,  <23.689398, 25.826492, 32.654652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.237787, 25.924810, 33.146107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.103722, 25.583214, 32.986927>,  <23.023281, 25.378256, 32.891418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.103722, 25.583214, 32.986927>,  <23.237787, 25.924810, 33.146107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.103722, 25.583214, 32.986927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184888, -0.354545, 0.916577,
		-0.923840, 0.380781, -0.039062,
		-0.335166, -0.853993, -0.397945,
		23.003172, 25.327017, 32.867542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636129, 25.735918, 33.537811>,  <23.237787, 25.924810, 33.146107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636129, 25.735918, 33.537811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.774513, 25.410839, 33.350262>,  <22.857544, 25.215792, 33.237732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.774513, 25.410839, 33.350262>,  <22.636129, 25.735918, 33.537811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774513, 25.410839, 33.350262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152625, -0.541819, 0.826522,
		-0.925753, -0.214380, -0.311484,
		0.345958, -0.812695, -0.468871,
		22.878300, 25.167030, 33.209602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129259, 25.234970, 33.788940>,  <22.636129, 25.735918, 33.537811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129259, 25.234970, 33.788940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.457628, 25.039658, 33.670506>,  <22.654650, 24.922470, 33.599445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.457628, 25.039658, 33.670506>,  <22.129259, 25.234970, 33.788940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457628, 25.039658, 33.670506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100771, -0.634242, 0.766539,
		-0.562078, -0.599432, -0.569868,
		0.820922, -0.488281, -0.296088,
		22.703905, 24.893173, 33.581680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950438, 24.629328, 33.916882>,  <22.129259, 25.234970, 33.788940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950438, 24.629328, 33.916882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.345352, 24.586102, 33.870251>,  <22.582300, 24.560165, 33.842274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.345352, 24.586102, 33.870251>,  <21.950438, 24.629328, 33.916882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345352, 24.586102, 33.870251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020979, -0.638380, 0.769435,
		-0.157569, -0.762098, -0.627996,
		0.987285, -0.108064, -0.116577,
		22.641539, 24.553682, 33.835278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206282, 23.869057, 33.881416>,  <21.950438, 24.629328, 33.916882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206282, 23.869057, 33.881416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.534048, 24.079449, 33.972546>,  <22.730707, 24.205685, 34.027222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.534048, 24.079449, 33.972546>,  <22.206282, 23.869057, 33.881416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534048, 24.079449, 33.972546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063682, -0.478533, 0.875758,
		0.569653, -0.703100, -0.425612,
		0.819414, 0.525982, 0.227823,
		22.779873, 24.237244, 34.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741098, 23.401024, 33.933475>,  <22.206282, 23.869057, 33.881416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741098, 23.401024, 33.933475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.802435, 23.735970, 34.143353>,  <22.839237, 23.936937, 34.269279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.802435, 23.735970, 34.143353>,  <22.741098, 23.401024, 33.933475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802435, 23.735970, 34.143353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007495, -0.529975, 0.847980,
		0.988145, -0.133965, -0.074993,
		0.153344, 0.837365, 0.524696,
		22.848438, 23.987179, 34.300762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.411362, 23.488428, 34.303619>,  <22.741098, 23.401024, 33.933475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.411362, 23.488428, 34.303619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.116196, 23.657967, 34.513699>,  <22.939096, 23.759689, 34.639748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.116196, 23.657967, 34.513699>,  <23.411362, 23.488428, 34.303619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.116196, 23.657967, 34.513699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317479, -0.468712, 0.824327,
		0.595557, 0.775023, 0.211307,
		-0.737915, 0.423848, 0.525199,
		22.894821, 23.785122, 34.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904352, 22.950945, 34.092831>,  <23.411362, 23.488428, 34.303619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904352, 22.950945, 34.092831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.077076, 22.644295, 33.902744>,  <24.180710, 22.460304, 33.788692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.077076, 22.644295, 33.902744>,  <23.904352, 22.950945, 34.092831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.077076, 22.644295, 33.902744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333903, 0.625301, -0.705342,
		0.837883, 0.145898, 0.525990,
		0.431810, -0.766624, -0.475214,
		24.206619, 22.414309, 33.760181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499416, 23.193235, 34.000565>,  <23.904352, 22.950945, 34.092831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499416, 23.193235, 34.000565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.523544, 22.908047, 33.721127>,  <24.538021, 22.736933, 33.553463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.523544, 22.908047, 33.721127>,  <24.499416, 23.193235, 34.000565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523544, 22.908047, 33.721127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434900, 0.648717, -0.624521,
		0.898456, -0.266147, 0.349203,
		0.060320, -0.712974, -0.698591,
		24.541639, 22.694155, 33.511551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220728, 23.140442, 33.713158>,  <24.499416, 23.193235, 34.000565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220728, 23.140442, 33.713158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.988819, 22.959728, 33.441936>,  <24.849674, 22.851301, 33.279202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.988819, 22.959728, 33.441936>,  <25.220728, 23.140442, 33.713158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988819, 22.959728, 33.441936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389879, 0.576909, -0.717754,
		0.715445, -0.680492, -0.158334,
		-0.579770, -0.451782, -0.678056,
		24.814888, 22.824194, 33.238522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622210, 22.998051, 33.184010>,  <25.220728, 23.140442, 33.713158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622210, 22.998051, 33.184010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.259506, 22.986603, 33.015739>,  <25.041883, 22.979734, 32.914776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.259506, 22.986603, 33.015739>,  <25.622210, 22.998051, 33.184010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259506, 22.986603, 33.015739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331258, 0.568934, -0.752717,
		0.260879, -0.821885, -0.506406,
		-0.906758, -0.028617, -0.420678,
		24.987478, 22.978018, 32.889534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742245, 22.838272, 32.555340>,  <25.622210, 22.998051, 33.184010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742245, 22.838272, 32.555340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.376894, 22.996948, 32.518734>,  <25.157682, 23.092154, 32.496769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.376894, 22.996948, 32.518734>,  <25.742245, 22.838272, 32.555340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376894, 22.996948, 32.518734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237126, 0.335660, -0.911649,
		-0.330924, -0.854382, -0.400650,
		-0.913378, 0.396691, -0.091519,
		25.102880, 23.115955, 32.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691513, 22.748032, 31.898132>,  <25.742245, 22.838272, 32.555340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691513, 22.748032, 31.898132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.405107, 23.010754, 31.992729>,  <25.233263, 23.168386, 32.049488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.405107, 23.010754, 31.992729>,  <25.691513, 22.748032, 31.898132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405107, 23.010754, 31.992729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218942, 0.532967, -0.817319,
		-0.662862, -0.533435, -0.525415,
		-0.716016, 0.656805, 0.236492,
		25.190302, 23.207796, 32.063675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232435, 22.695925, 31.376202>,  <25.691513, 22.748032, 31.898132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232435, 22.695925, 31.376202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.200804, 23.062077, 31.534103>,  <25.181826, 23.281767, 31.628845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.200804, 23.062077, 31.534103>,  <25.232435, 22.695925, 31.376202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200804, 23.062077, 31.534103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040354, 0.398609, -0.916232,
		-0.996051, -0.056525, -0.068461,
		-0.079079, 0.915377, 0.394754,
		25.177080, 23.336689, 31.652529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779526, 22.999147, 30.964029>,  <25.232435, 22.695925, 31.376202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779526, 22.999147, 30.964029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.960604, 23.300892, 31.154190>,  <25.069250, 23.481937, 31.268288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.960604, 23.300892, 31.154190>,  <24.779526, 22.999147, 30.964029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960604, 23.300892, 31.154190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224112, 0.419788, -0.879518,
		-0.863042, 0.504697, 0.020975,
		0.452695, 0.754360, 0.475403,
		25.096413, 23.527201, 31.296810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543882, 23.632582, 30.662436>,  <24.779526, 22.999147, 30.964029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543882, 23.632582, 30.662436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.903809, 23.705997, 30.820747>,  <25.119764, 23.750046, 30.915735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.903809, 23.705997, 30.820747>,  <24.543882, 23.632582, 30.662436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903809, 23.705997, 30.820747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254292, 0.516499, -0.817658,
		-0.354492, 0.836387, 0.418082,
		0.899817, 0.183538, 0.395781,
		25.173754, 23.761059, 30.939482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538071, 24.263371, 30.525509>,  <24.543882, 23.632582, 30.662436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538071, 24.263371, 30.525509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.911867, 24.173759, 30.636173>,  <25.136145, 24.119993, 30.702572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.911867, 24.173759, 30.636173>,  <24.538071, 24.263371, 30.525509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911867, 24.173759, 30.636173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355144, 0.533043, -0.767944,
		0.024569, 0.815890, 0.577686,
		0.934489, -0.224029, 0.276661,
		25.192213, 24.106550, 30.719172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837351, 24.930243, 30.535141>,  <24.538071, 24.263371, 30.525509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837351, 24.930243, 30.535141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.132471, 24.660793, 30.517796>,  <25.309544, 24.499123, 30.507389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.132471, 24.660793, 30.517796>,  <24.837351, 24.930243, 30.535141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132471, 24.660793, 30.517796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383067, 0.470725, -0.794781,
		0.555797, 0.569779, 0.605345,
		0.737800, -0.673624, -0.043364,
		25.353811, 24.458706, 30.504786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408501, 25.259785, 30.590939>,  <24.837351, 24.930243, 30.535141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408501, 25.259785, 30.590939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.543976, 24.921917, 30.425133>,  <25.625261, 24.719196, 30.325649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.543976, 24.921917, 30.425133>,  <25.408501, 25.259785, 30.590939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543976, 24.921917, 30.425133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530879, 0.535282, -0.656993,
		0.776825, 0.002458, 0.629711,
		0.338688, -0.844670, -0.414516,
		25.645582, 24.668516, 30.300777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100937, 25.311350, 30.617371>,  <25.408501, 25.259785, 30.590939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100937, 25.311350, 30.617371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.053741, 25.055077, 30.313896>,  <26.025423, 24.901312, 30.131811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.053741, 25.055077, 30.313896>,  <26.100937, 25.311350, 30.617371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053741, 25.055077, 30.313896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513614, 0.614512, -0.598813,
		0.849870, -0.460325, 0.256557,
		-0.117991, -0.640685, -0.758684,
		26.018345, 24.862871, 30.086290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730261, 25.397518, 30.264252>,  <26.100937, 25.311350, 30.617371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730261, 25.397518, 30.264252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.452196, 25.237392, 30.025421>,  <26.285358, 25.141317, 29.882122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.452196, 25.237392, 30.025421>,  <26.730261, 25.397518, 30.264252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452196, 25.237392, 30.025421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318656, 0.572926, -0.755126,
		0.644369, -0.715195, -0.270712,
		-0.695160, -0.400316, -0.597076,
		26.243649, 25.117298, 29.846298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307426, 24.923449, 30.476851>,  <26.730261, 25.397518, 30.264252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307426, 24.923449, 30.476851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.626810, 24.683304, 30.458820>,  <27.818439, 24.539217, 30.448002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.626810, 24.683304, 30.458820>,  <27.307426, 24.923449, 30.476851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626810, 24.683304, 30.458820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233797, -0.378192, 0.895718,
		-0.554802, -0.704654, -0.442333,
		0.798457, -0.600362, -0.045076,
		27.866348, 24.503195, 30.445297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048002, 24.251688, 30.760151>,  <27.307426, 24.923449, 30.476851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048002, 24.251688, 30.760151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.446323, 24.252251, 30.796764>,  <27.685316, 24.252588, 30.818731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.446323, 24.252251, 30.796764>,  <27.048002, 24.251688, 30.760151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446323, 24.252251, 30.796764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082462, -0.420381, 0.903593,
		0.039751, -0.907347, -0.418499,
		0.995801, 0.001408, 0.091532,
		27.745064, 24.252672, 30.824224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281519, 23.603001, 30.806522>,  <27.048002, 24.251688, 30.760151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281519, 23.603001, 30.806522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598125, 23.795349, 30.957394>,  <27.788090, 23.910757, 31.047916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598125, 23.795349, 30.957394>,  <27.281519, 23.603001, 30.806522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598125, 23.795349, 30.957394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039713, -0.575395, 0.816911,
		0.609856, -0.661578, -0.436338,
		0.791517, 0.480869, 0.377181,
		27.835581, 23.939610, 31.070547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769392, 23.067135, 31.134386>,  <27.281519, 23.603001, 30.806522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769392, 23.067135, 31.134386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859558, 23.416931, 31.306179>,  <27.913658, 23.626808, 31.409256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859558, 23.416931, 31.306179>,  <27.769392, 23.067135, 31.134386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859558, 23.416931, 31.306179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116912, -0.461923, 0.879181,
		0.967223, -0.147968, -0.206362,
		0.225414, 0.874490, 0.429484,
		27.927183, 23.679277, 31.435024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384527, 22.974854, 31.466293>,  <27.769392, 23.067135, 31.134386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384527, 22.974854, 31.466293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210695, 23.286339, 31.647289>,  <28.106396, 23.473230, 31.755886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210695, 23.286339, 31.647289>,  <28.384527, 22.974854, 31.466293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210695, 23.286339, 31.647289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017244, -0.495124, 0.868651,
		0.900468, 0.385301, 0.201743,
		-0.434580, 0.778714, 0.452488,
		28.080322, 23.519953, 31.783035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638004, 22.918972, 32.188736>,  <28.384527, 22.974854, 31.466293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638004, 22.918972, 32.188736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.312828, 23.151722, 32.198147>,  <28.117723, 23.291372, 32.203793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.312828, 23.151722, 32.198147>,  <28.638004, 22.918972, 32.188736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312828, 23.151722, 32.198147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227424, -0.354403, 0.907016,
		0.536105, 0.731999, 0.420439,
		-0.812939, 0.581874, 0.023523,
		28.068947, 23.326284, 32.205204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636436, 23.232777, 32.850121>,  <28.638004, 22.918972, 32.188736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636436, 23.232777, 32.850121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251509, 23.233379, 32.741356>,  <28.020552, 23.233742, 32.676098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251509, 23.233379, 32.741356>,  <28.636436, 23.232777, 32.850121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251509, 23.233379, 32.741356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265058, -0.228413, 0.936788,
		-0.060697, 0.973563, 0.220206,
		-0.962320, 0.001507, -0.271914,
		27.962812, 23.233831, 32.659782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270330, 23.899862, 33.233238>,  <28.636436, 23.232777, 32.850121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270330, 23.899862, 33.233238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.511290, 24.046406, 33.516899>,  <28.655865, 24.134333, 33.687096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.511290, 24.046406, 33.516899>,  <28.270330, 23.899862, 33.233238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511290, 24.046406, 33.516899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518330, 0.496087, -0.696586,
		-0.607003, 0.787196, 0.108946,
		0.602397, 0.366360, 0.709153,
		28.692009, 24.156313, 33.729645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305021, 24.544292, 33.126991>,  <28.270330, 23.899862, 33.233238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305021, 24.544292, 33.126991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.645069, 24.511425, 33.335049>,  <28.849098, 24.491705, 33.459881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.645069, 24.511425, 33.335049>,  <28.305021, 24.544292, 33.126991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645069, 24.511425, 33.335049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452414, 0.619436, -0.641576,
		-0.269477, 0.780735, 0.563768,
		0.850120, -0.082167, 0.520139,
		28.900105, 24.486774, 33.491089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503925, 25.275900, 33.296898>,  <28.305021, 24.544292, 33.126991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503925, 25.275900, 33.296898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808308, 25.018242, 33.327950>,  <28.990936, 24.863647, 33.346581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808308, 25.018242, 33.327950>,  <28.503925, 25.275900, 33.296898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808308, 25.018242, 33.327950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565470, 0.599785, -0.566128,
		0.318107, 0.474695, 0.820654,
		0.760954, -0.644145, 0.077630,
		29.036594, 24.824999, 33.351238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017929, 25.676012, 33.410263>,  <28.503925, 25.275900, 33.296898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017929, 25.676012, 33.410263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246391, 25.363312, 33.310146>,  <29.383469, 25.175692, 33.250076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246391, 25.363312, 33.310146>,  <29.017929, 25.676012, 33.410263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246391, 25.363312, 33.310146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610552, 0.608406, -0.507020,
		0.548640, 0.136774, 0.824795,
		0.571157, -0.781751, -0.250288,
		29.417738, 25.128786, 33.235062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743525, 25.845682, 33.540005>,  <29.017929, 25.676012, 33.410263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743525, 25.845682, 33.540005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764677, 25.538231, 33.285004>,  <29.777369, 25.353760, 33.132004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764677, 25.538231, 33.285004>,  <29.743525, 25.845682, 33.540005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764677, 25.538231, 33.285004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650974, 0.510641, -0.561675,
		0.757256, -0.385297, 0.527360,
		0.052880, -0.768630, -0.637505,
		29.780540, 25.307642, 33.093754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493076, 25.731621, 33.356171>,  <29.743525, 25.845682, 33.540005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493076, 25.731621, 33.356171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272148, 25.581440, 33.058453>,  <30.139591, 25.491331, 32.879822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272148, 25.581440, 33.058453>,  <30.493076, 25.731621, 33.356171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272148, 25.581440, 33.058453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494799, 0.570909, -0.655162,
		0.670908, -0.730136, -0.129551,
		-0.552319, -0.375452, -0.744298,
		30.106453, 25.468805, 32.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952827, 25.637640, 32.677280>,  <30.493076, 25.731621, 33.356171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952827, 25.637640, 32.677280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590549, 25.602287, 32.511436>,  <30.373182, 25.581076, 32.411930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590549, 25.602287, 32.511436>,  <30.952827, 25.637640, 32.677280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590549, 25.602287, 32.511436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345944, 0.411189, -0.843354,
		0.245020, -0.907255, -0.341837,
		-0.905697, -0.088382, -0.414609,
		30.318840, 25.575773, 32.387054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.025997, 24.974289, 36.670311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.909601, 24.903240, 36.294273>,  <24.839764, 24.860611, 36.068649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.909601, 24.903240, 36.294273>,  <25.025997, 24.974289, 36.670311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909601, 24.903240, 36.294273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518516, 0.796508, -0.310993,
		0.804030, -0.577950, -0.139677,
		-0.290993, -0.177623, -0.940092,
		24.822304, 24.849953, 36.012245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600098, 24.896585, 36.291500>,  <25.025997, 24.974289, 36.670311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600098, 24.896585, 36.291500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.319361, 25.007523, 36.029049>,  <25.150919, 25.074085, 35.871578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.319361, 25.007523, 36.029049>,  <25.600098, 24.896585, 36.291500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319361, 25.007523, 36.029049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664923, 0.585493, -0.463762,
		0.255535, -0.761760, -0.595335,
		-0.701840, 0.277345, -0.656125,
		25.108809, 25.090725, 35.832211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870537, 24.781090, 35.565384>,  <25.600098, 24.896585, 36.291500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870537, 24.781090, 35.565384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.563845, 25.031685, 35.509327>,  <25.379829, 25.182041, 35.475693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.563845, 25.031685, 35.509327>,  <25.870537, 24.781090, 35.565384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563845, 25.031685, 35.509327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542569, 0.515694, -0.663083,
		-0.343141, -0.584444, -0.735310,
		-0.766729, 0.626487, -0.140145,
		25.333826, 25.219631, 35.467285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797398, 25.044897, 34.708355>,  <25.870537, 24.781090, 35.565384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797398, 25.044897, 34.708355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.612329, 25.318867, 34.933502>,  <25.501289, 25.483248, 35.068588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.612329, 25.318867, 34.933502>,  <25.797398, 25.044897, 34.708355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612329, 25.318867, 34.933502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339201, 0.723363, -0.601405,
		-0.819072, -0.087327, -0.567005,
		-0.462669, 0.684923, 0.562865,
		25.473528, 25.524343, 35.102364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376163, 25.414854, 34.179691>,  <25.797398, 25.044897, 34.708355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376163, 25.414854, 34.179691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.310905, 25.669453, 34.481220>,  <25.271751, 25.822212, 34.662140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.310905, 25.669453, 34.481220>,  <25.376163, 25.414854, 34.179691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310905, 25.669453, 34.481220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169178, 0.770794, -0.614211,
		-0.971989, 0.027326, -0.233432,
		-0.163144, 0.636498, 0.753827,
		25.261963, 25.860401, 34.707367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835939, 25.981098, 33.893787>,  <25.376163, 25.414854, 34.179691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835939, 25.981098, 33.893787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.070282, 26.125183, 34.184170>,  <25.210888, 26.211634, 34.358398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.070282, 26.125183, 34.184170>,  <24.835939, 25.981098, 33.893787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070282, 26.125183, 34.184170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045547, 0.879737, -0.473274,
		-0.809133, 0.310336, 0.498994,
		0.585858, 0.360214, 0.725959,
		25.246038, 26.233248, 34.401958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707918, 26.613646, 33.787560>,  <24.835939, 25.981098, 33.893787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707918, 26.613646, 33.787560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.026358, 26.636890, 34.028507>,  <25.217421, 26.650837, 34.173077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.026358, 26.636890, 34.028507>,  <24.707918, 26.613646, 33.787560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026358, 26.636890, 34.028507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146249, 0.947399, -0.284685,
		-0.587229, 0.314733, 0.745725,
		0.796099, 0.058114, 0.602370,
		25.265188, 26.654324, 34.209217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630548, 27.194036, 34.130508>,  <24.707918, 26.613646, 33.787560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630548, 27.194036, 34.130508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.024097, 27.132271, 34.166615>,  <25.260227, 27.095211, 34.188278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.024097, 27.132271, 34.166615>,  <24.630548, 27.194036, 34.130508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024097, 27.132271, 34.166615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173683, 0.945358, -0.275920,
		-0.042729, 0.287149, 0.956932,
		0.983874, -0.154413, 0.090268,
		25.319260, 27.085947, 34.193695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908697, 27.804184, 34.396835>,  <24.630548, 27.194036, 34.130508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908697, 27.804184, 34.396835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.224052, 27.614132, 34.240532>,  <25.413265, 27.500101, 34.146751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.224052, 27.614132, 34.240532>,  <24.908697, 27.804184, 34.396835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224052, 27.614132, 34.240532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361085, 0.871674, -0.331362,
		0.498054, 0.120146, 0.858782,
		0.788391, -0.475130, -0.390758,
		25.460569, 27.471592, 34.123306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551855, 28.122934, 34.583057>,  <24.908697, 27.804184, 34.396835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551855, 28.122934, 34.583057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.657463, 27.936024, 34.245548>,  <25.720829, 27.823877, 34.043045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.657463, 27.936024, 34.245548>,  <25.551855, 28.122934, 34.583057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657463, 27.936024, 34.245548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384239, 0.853351, -0.352352,
		0.884676, -0.231180, 0.404850,
		0.264022, -0.467276, -0.843768,
		25.736670, 27.795841, 33.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104549, 28.529797, 34.377552>,  <25.551855, 28.122934, 34.583057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104549, 28.529797, 34.377552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.996687, 28.329071, 34.048805>,  <25.931969, 28.208635, 33.851555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.996687, 28.329071, 34.048805>,  <26.104549, 28.529797, 34.377552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996687, 28.329071, 34.048805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292606, 0.770429, -0.566411,
		0.917425, -0.393219, -0.060917,
		-0.269656, -0.501814, -0.821869,
		25.915791, 28.178526, 33.802246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719217, 28.459555, 33.903542>,  <26.104549, 28.529797, 34.377552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719217, 28.459555, 33.903542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.383841, 28.405384, 33.692383>,  <26.182613, 28.372881, 33.565689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.383841, 28.405384, 33.692383>,  <26.719217, 28.459555, 33.903542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383841, 28.405384, 33.692383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299703, 0.694438, -0.654167,
		0.455181, -0.706693, -0.541659,
		-0.838444, -0.135428, -0.527893,
		26.132307, 28.364756, 33.534016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341814, 27.959038, 33.992985>,  <26.719217, 28.459555, 33.903542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341814, 27.959038, 33.992985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.705873, 27.817127, 33.907413>,  <27.924309, 27.731981, 33.856071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.705873, 27.817127, 33.907413>,  <27.341814, 27.959038, 33.992985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705873, 27.817127, 33.907413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019991, -0.478177, 0.878036,
		-0.413801, -0.803419, -0.428120,
		0.910148, -0.354774, -0.213931,
		27.978918, 27.710695, 33.843235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353443, 27.221981, 33.894363>,  <27.341814, 27.959038, 33.992985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353443, 27.221981, 33.894363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.708845, 27.353260, 34.022644>,  <27.922087, 27.432028, 34.099613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.708845, 27.353260, 34.022644>,  <27.353443, 27.221981, 33.894363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708845, 27.353260, 34.022644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116813, -0.514089, 0.849745,
		0.443750, -0.792465, -0.418433,
		0.888505, 0.328195, 0.320697,
		27.975397, 27.451719, 34.118855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702494, 26.712215, 34.168461>,  <27.353443, 27.221981, 33.894363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702494, 26.712215, 34.168461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.905094, 27.006062, 34.349037>,  <28.026653, 27.182369, 34.457382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.905094, 27.006062, 34.349037>,  <27.702494, 26.712215, 34.168461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905094, 27.006062, 34.349037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000847, -0.523992, 0.851722,
		0.862240, -0.431014, -0.266024,
		0.506499, 0.734614, 0.451442,
		28.057043, 27.226446, 34.484470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343702, 26.484632, 34.522724>,  <27.702494, 26.712215, 34.168461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343702, 26.484632, 34.522724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.242870, 26.822876, 34.710938>,  <28.182371, 27.025822, 34.823864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.242870, 26.822876, 34.710938>,  <28.343702, 26.484632, 34.522724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242870, 26.822876, 34.710938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127431, -0.452996, 0.882358,
		0.959279, 0.282386, 0.006435,
		-0.252081, 0.845608, 0.470535,
		28.167246, 27.076559, 34.852097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647715, 26.396076, 35.067085>,  <28.343702, 26.484632, 34.522724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647715, 26.396076, 35.067085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.461531, 26.726677, 35.193729>,  <28.349819, 26.925037, 35.269714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.461531, 26.726677, 35.193729>,  <28.647715, 26.396076, 35.067085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461531, 26.726677, 35.193729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039700, -0.376859, 0.925420,
		0.884177, 0.418178, 0.208225,
		-0.465461, 0.826501, 0.316608,
		28.321892, 26.974627, 35.288712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796885, 26.417068, 35.749706>,  <28.647715, 26.396076, 35.067085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796885, 26.417068, 35.749706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.493948, 26.677811, 35.765320>,  <28.312187, 26.834255, 35.774689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.493948, 26.677811, 35.765320>,  <28.796885, 26.417068, 35.749706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493948, 26.677811, 35.765320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173188, -0.258125, 0.950462,
		0.629637, 0.713062, 0.308382,
		-0.757339, 0.651854, 0.039031,
		28.266747, 26.873367, 35.777031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918531, 26.831690, 36.257755>,  <28.796885, 26.417068, 35.749706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918531, 26.831690, 36.257755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.524647, 26.815639, 36.189953>,  <28.288315, 26.806009, 36.149273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.524647, 26.815639, 36.189953>,  <28.918531, 26.831690, 36.257755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524647, 26.815639, 36.189953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147548, -0.325060, 0.934112,
		-0.092579, 0.944842, 0.314170,
		-0.984712, -0.040124, -0.169504,
		28.229233, 26.803602, 36.139103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763824, 26.943716, 36.853516>,  <28.918531, 26.831690, 36.257755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763824, 26.943716, 36.853516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.427643, 26.796856, 36.694099>,  <28.225933, 26.708740, 36.598450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.427643, 26.796856, 36.694099>,  <28.763824, 26.943716, 36.853516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427643, 26.796856, 36.694099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168511, -0.521931, 0.836177,
		-0.515013, 0.769928, 0.376792,
		-0.840456, -0.367148, -0.398543,
		28.175507, 26.686712, 36.574535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338884, 26.985264, 37.418037>,  <28.763824, 26.943716, 36.853516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338884, 26.985264, 37.418037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.155718, 26.745369, 37.155548>,  <28.045818, 26.601431, 36.998055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.155718, 26.745369, 37.155548>,  <28.338884, 26.985264, 37.418037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155718, 26.745369, 37.155548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297011, -0.592534, 0.748791,
		-0.837913, 0.537788, 0.093202,
		-0.457916, -0.599739, -0.656221,
		28.018343, 26.565447, 36.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708208, 26.795954, 37.841602>,  <28.338884, 26.985264, 37.418037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708208, 26.795954, 37.841602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.797043, 26.526367, 37.559765>,  <27.850344, 26.364616, 37.390663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.797043, 26.526367, 37.559765>,  <27.708208, 26.795954, 37.841602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797043, 26.526367, 37.559765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098740, -0.734469, 0.671421,
		-0.970015, -0.079541, -0.229662,
		0.222085, -0.673965, -0.704592,
		27.863668, 26.324177, 37.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117573, 26.296555, 37.893017>,  <27.708208, 26.795954, 37.841602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117573, 26.296555, 37.893017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425335, 26.115082, 37.713154>,  <27.609993, 26.006199, 37.605236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425335, 26.115082, 37.713154>,  <27.117573, 26.296555, 37.893017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425335, 26.115082, 37.713154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120591, -0.794458, 0.595227,
		-0.627274, -0.403747, -0.665970,
		0.769406, -0.453680, -0.449655,
		27.656157, 25.978977, 37.578259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767460, 25.585571, 37.739498>,  <27.117573, 26.296555, 37.893017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767460, 25.585571, 37.739498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.159748, 25.517269, 37.701488>,  <27.395121, 25.476288, 37.678684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.159748, 25.517269, 37.701488>,  <26.767460, 25.585571, 37.739498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159748, 25.517269, 37.701488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091680, -0.831475, 0.547945,
		-0.172570, -0.528670, -0.831100,
		0.980721, -0.170754, -0.095019,
		27.453964, 25.466043, 37.672981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837387, 24.921497, 37.433769>,  <26.767460, 25.585571, 37.739498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837387, 24.921497, 37.433769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181404, 25.002560, 37.621071>,  <27.387814, 25.051197, 37.733452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181404, 25.002560, 37.621071>,  <26.837387, 24.921497, 37.433769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181404, 25.002560, 37.621071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071989, -0.860361, 0.504577,
		0.505120, -0.467666, -0.725357,
		0.860041, 0.202654, 0.468252,
		27.439417, 25.063356, 37.761547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188650, 24.202684, 37.320541>,  <26.837387, 24.921497, 37.433769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188650, 24.202684, 37.320541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.376375, 24.398342, 37.614613>,  <27.489010, 24.515738, 37.791054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.376375, 24.398342, 37.614613>,  <27.188650, 24.202684, 37.320541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376375, 24.398342, 37.614613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050191, -0.816434, 0.575253,
		0.881604, -0.306873, -0.358613,
		0.469313, 0.489147, 0.735174,
		27.517170, 24.545086, 37.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263988, 24.057730, 36.553291>,  <27.188650, 24.202684, 37.320541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263988, 24.057730, 36.553291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.418379, 23.696167, 36.479565>,  <27.511013, 23.479229, 36.435329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.418379, 23.696167, 36.479565>,  <27.263988, 24.057730, 36.553291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418379, 23.696167, 36.479565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566947, 0.390042, -0.725561,
		0.727731, 0.175553, 0.663015,
		0.385978, -0.903907, -0.184317,
		27.534172, 23.424995, 36.424271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995455, 24.216625, 36.438210>,  <27.263988, 24.057730, 36.553291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995455, 24.216625, 36.438210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931995, 23.866119, 36.256226>,  <27.893919, 23.655815, 36.147034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931995, 23.866119, 36.256226>,  <27.995455, 24.216625, 36.438210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931995, 23.866119, 36.256226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678737, 0.237858, -0.694795,
		0.717040, -0.419029, 0.557017,
		-0.158648, -0.876264, -0.454964,
		27.884401, 23.603241, 36.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652613, 23.835453, 36.288048>,  <27.995455, 24.216625, 36.438210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652613, 23.835453, 36.288048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.398111, 23.683361, 36.019539>,  <28.245411, 23.592106, 35.858433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.398111, 23.683361, 36.019539>,  <28.652613, 23.835453, 36.288048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398111, 23.683361, 36.019539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689274, 0.110661, -0.716000,
		0.346529, -0.918247, 0.191675,
		-0.636254, -0.380231, -0.671271,
		28.207235, 23.569292, 35.818157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121017, 23.470869, 35.858932>,  <28.652613, 23.835453, 36.288048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121017, 23.470869, 35.858932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.782490, 23.466995, 35.645897>,  <28.579374, 23.464670, 35.518074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.782490, 23.466995, 35.645897>,  <29.121017, 23.470869, 35.858932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782490, 23.466995, 35.645897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529869, 0.087237, -0.843581,
		0.054621, -0.996141, -0.068704,
		-0.846319, -0.009673, -0.532589,
		28.528595, 23.464090, 35.486118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279085, 23.001316, 35.273434>,  <29.121017, 23.470869, 35.858932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279085, 23.001316, 35.273434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978436, 23.233406, 35.147957>,  <28.798046, 23.372660, 35.072670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978436, 23.233406, 35.147957>,  <29.279085, 23.001316, 35.273434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978436, 23.233406, 35.147957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478356, 0.152069, -0.864899,
		-0.454133, -0.800134, -0.391853,
		-0.751624, 0.580224, -0.313690,
		28.752949, 23.407473, 35.053848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102898, 22.784658, 34.549500>,  <29.279085, 23.001316, 35.273434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102898, 22.784658, 34.549500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.981409, 23.161388, 34.607075>,  <28.908516, 23.387426, 34.641621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.981409, 23.161388, 34.607075>,  <29.102898, 22.784658, 34.549500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981409, 23.161388, 34.607075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331183, 0.246014, -0.910931,
		-0.893348, -0.229002, -0.386637,
		-0.303723, 0.941826, 0.143934,
		28.890291, 23.443935, 34.650253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762239, 22.911327, 33.942875>,  <29.102898, 22.784658, 34.549500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762239, 22.911327, 33.942875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.856524, 23.272186, 34.087414>,  <28.913094, 23.488701, 34.174137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.856524, 23.272186, 34.087414>,  <28.762239, 22.911327, 33.942875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856524, 23.272186, 34.087414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323842, 0.277658, -0.904451,
		-0.916279, 0.330206, -0.226707,
		0.235708, 0.902148, 0.361347,
		28.927237, 23.542831, 34.195816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262922, 23.233215, 33.533779>,  <28.762239, 22.911327, 33.942875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262922, 23.233215, 33.533779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.977842, 23.161705, 33.262459>,  <27.806795, 23.118799, 33.099667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.977842, 23.161705, 33.262459>,  <28.262922, 23.233215, 33.533779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977842, 23.161705, 33.262459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556689, -0.444195, 0.701989,
		-0.426798, 0.877913, 0.217055,
		-0.712700, -0.178775, -0.678306,
		27.764032, 23.108072, 33.058968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698168, 23.288736, 33.934994>,  <28.262922, 23.233215, 33.533779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698168, 23.288736, 33.934994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.563082, 23.103027, 33.607483>,  <27.482031, 22.991602, 33.410976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.563082, 23.103027, 33.607483>,  <27.698168, 23.288736, 33.934994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563082, 23.103027, 33.607483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621578, -0.543224, 0.564402,
		-0.706817, 0.699542, -0.105127,
		-0.337715, -0.464273, -0.818779,
		27.461767, 22.963745, 33.361851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904259, 23.203382, 33.967876>,  <27.698168, 23.288736, 33.934994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904259, 23.203382, 33.967876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.052546, 22.935158, 33.710842>,  <27.141518, 22.774223, 33.556622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.052546, 22.935158, 33.710842>,  <26.904259, 23.203382, 33.967876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052546, 22.935158, 33.710842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593744, -0.703146, 0.391221,
		-0.714171, 0.236503, -0.658806,
		0.370712, -0.670561, -0.642589,
		27.163759, 22.733990, 33.518066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324497, 22.880476, 33.678776>,  <26.904259, 23.203382, 33.967876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324497, 22.880476, 33.678776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.621819, 22.620495, 33.615448>,  <26.800211, 22.464506, 33.577454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.621819, 22.620495, 33.615448>,  <26.324497, 22.880476, 33.678776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621819, 22.620495, 33.615448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581035, -0.744550, 0.328700,
		-0.331514, -0.152336, -0.931070,
		0.743302, -0.649953, -0.158316,
		26.844809, 22.425508, 33.567951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998310, 22.300362, 33.273754>,  <26.324497, 22.880476, 33.678776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998310, 22.300362, 33.273754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.339785, 22.133877, 33.398968>,  <26.544668, 22.033985, 33.474094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.339785, 22.133877, 33.398968>,  <25.998310, 22.300362, 33.273754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339785, 22.133877, 33.398968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492071, -0.841483, 0.223099,
		0.170555, -0.344490, -0.923167,
		0.853685, -0.416213, 0.313032,
		26.595890, 22.009012, 33.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077648, 21.638008, 32.965038>,  <25.998310, 22.300362, 33.273754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077648, 21.638008, 32.965038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.289398, 21.653114, 33.304058>,  <26.416449, 21.662178, 33.507469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.289398, 21.653114, 33.304058>,  <26.077648, 21.638008, 32.965038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289398, 21.653114, 33.304058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455570, -0.830103, 0.321535,
		0.715696, -0.556329, -0.422229,
		0.529373, 0.037767, 0.847548,
		26.448210, 21.664444, 33.558323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083853, 20.944273, 33.075844>,  <26.077648, 21.638008, 32.965038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083853, 20.944273, 33.075844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.189032, 21.092964, 33.431973>,  <26.252138, 21.182178, 33.645649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.189032, 21.092964, 33.431973>,  <26.083853, 20.944273, 33.075844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189032, 21.092964, 33.431973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227216, -0.872984, 0.431592,
		0.937674, -0.315782, -0.145086,
		0.262947, 0.371727, 0.890325,
		26.267916, 21.204483, 33.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203688, 20.338367, 33.369457>,  <26.083853, 20.944273, 33.075844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203688, 20.338367, 33.369457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.119112, 20.613731, 33.646984>,  <26.068367, 20.778950, 33.813499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.119112, 20.613731, 33.646984>,  <26.203688, 20.338367, 33.369457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119112, 20.613731, 33.646984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351604, -0.715920, 0.603185,
		0.911958, -0.116413, 0.393421,
		-0.211439, 0.688408, 0.693821,
		26.055679, 20.820253, 33.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234142, 19.957806, 33.978012>,  <26.203688, 20.338367, 33.369457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234142, 19.957806, 33.978012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.033731, 20.288101, 34.081650>,  <25.913485, 20.486279, 34.143833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.033731, 20.288101, 34.081650>,  <26.234142, 19.957806, 33.978012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033731, 20.288101, 34.081650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452593, -0.505179, 0.734816,
		0.737652, 0.250901, 0.626832,
		-0.501028, 0.825738, 0.259090,
		25.883423, 20.535822, 34.159378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.586205, 29.695358, 22.045588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228891, 29.867886, 22.096199>,  <30.014503, 29.971401, 22.126566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228891, 29.867886, 22.096199>,  <30.586205, 29.695358, 22.045588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228891, 29.867886, 22.096199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015940, -0.311710, 0.950044,
		0.449211, 0.846642, 0.285321,
		-0.893284, 0.431318, 0.126528,
		29.960907, 29.997280, 22.134157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694887, 30.057348, 22.708950>,  <30.586205, 29.695358, 22.045588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694887, 30.057348, 22.708950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304913, 30.003609, 22.638012>,  <30.070929, 29.971365, 22.595449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304913, 30.003609, 22.638012>,  <30.694887, 30.057348, 22.708950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304913, 30.003609, 22.638012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125682, -0.325182, 0.937262,
		-0.183589, 0.936060, 0.300146,
		-0.974936, -0.134348, -0.177346,
		30.012432, 29.963305, 22.584808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445513, 30.264765, 23.299154>,  <30.694887, 30.057348, 22.708950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445513, 30.264765, 23.299154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159409, 30.031754, 23.144722>,  <29.987745, 29.891947, 23.052063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159409, 30.031754, 23.144722>,  <30.445513, 30.264765, 23.299154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159409, 30.031754, 23.144722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187293, -0.372457, 0.908954,
		-0.673292, 0.722450, 0.157301,
		-0.715262, -0.582530, -0.386082,
		29.944830, 29.856995, 23.028898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848581, 30.259626, 23.834332>,  <30.445513, 30.264765, 23.299154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848581, 30.259626, 23.834332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838327, 29.938732, 23.595749>,  <29.832174, 29.746195, 23.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838327, 29.938732, 23.595749>,  <29.848581, 30.259626, 23.834332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838327, 29.938732, 23.595749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357340, -0.549878, 0.754946,
		-0.933622, 0.232491, -0.272574,
		-0.025636, -0.802236, -0.596457,
		29.830637, 29.698061, 23.416813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261250, 29.924515, 24.073351>,  <29.848581, 30.259626, 23.834332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261250, 29.924515, 24.073351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432175, 29.628075, 23.866207>,  <29.534729, 29.450211, 23.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432175, 29.628075, 23.866207>,  <29.261250, 29.924515, 24.073351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432175, 29.628075, 23.866207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189008, -0.633357, 0.750423,
		-0.884127, -0.222784, -0.410714,
		0.427311, -0.741098, -0.517860,
		29.560368, 29.405745, 23.710850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723505, 29.352398, 23.975414>,  <29.261250, 29.924515, 24.073351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723505, 29.352398, 23.975414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085077, 29.182755, 23.953342>,  <29.302021, 29.080969, 23.940100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085077, 29.182755, 23.953342>,  <28.723505, 29.352398, 23.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085077, 29.182755, 23.953342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250924, -0.630391, 0.734604,
		-0.346337, -0.650184, -0.676248,
		0.903929, -0.424108, -0.055181,
		29.356256, 29.055523, 23.936789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595371, 28.695126, 24.199677>,  <28.723505, 29.352398, 23.975414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595371, 28.695126, 24.199677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993254, 28.723450, 24.229469>,  <29.231983, 28.740444, 24.247345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993254, 28.723450, 24.229469>,  <28.595371, 28.695126, 24.199677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993254, 28.723450, 24.229469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014507, -0.620757, 0.783869,
		0.101742, -0.780799, -0.616443,
		0.994705, 0.070810, 0.074484,
		29.291666, 28.744692, 24.251814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922693, 28.108269, 23.996777>,  <28.595371, 28.695126, 24.199677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922693, 28.108269, 23.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193794, 28.277878, 24.237061>,  <29.356455, 28.379644, 24.381231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193794, 28.277878, 24.237061>,  <28.922693, 28.108269, 23.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193794, 28.277878, 24.237061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016106, -0.825338, 0.564409,
		0.735112, -0.372855, -0.566206,
		0.677754, 0.424024, 0.600711,
		29.397121, 28.405085, 24.417274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188160, 27.563698, 24.276524>,  <28.922693, 28.108269, 23.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188160, 27.563698, 24.276524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342087, 27.840527, 24.520802>,  <29.434443, 28.006624, 24.667368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342087, 27.840527, 24.520802>,  <29.188160, 27.563698, 24.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342087, 27.840527, 24.520802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051443, -0.676700, 0.734459,
		0.921558, -0.251217, -0.296009,
		0.384818, 0.692074, 0.610695,
		29.457533, 28.048149, 24.704010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860893, 27.322329, 24.639948>,  <29.188160, 27.563698, 24.276524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860893, 27.322329, 24.639948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733177, 27.626007, 24.866814>,  <29.656548, 27.808214, 25.002934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733177, 27.626007, 24.866814>,  <29.860893, 27.322329, 24.639948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733177, 27.626007, 24.866814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097434, -0.621619, 0.777236,
		0.942634, 0.192904, 0.272449,
		-0.319291, 0.759195, 0.567165,
		29.637390, 27.853765, 25.036963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366259, 27.460579, 25.060032>,  <29.860893, 27.322329, 24.639948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366259, 27.460579, 25.060032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031145, 27.590618, 25.235500>,  <29.830078, 27.668642, 25.340780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031145, 27.590618, 25.235500>,  <30.366259, 27.460579, 25.060032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031145, 27.590618, 25.235500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094993, -0.704379, 0.703439,
		0.537677, 0.630999, 0.559234,
		-0.837782, 0.325100, 0.438669,
		29.779810, 27.688148, 25.367102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572411, 27.505028, 25.762056>,  <30.366259, 27.460579, 25.060032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572411, 27.505028, 25.762056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172691, 27.507927, 25.776779>,  <29.932859, 27.509666, 25.785612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172691, 27.507927, 25.776779>,  <30.572411, 27.505028, 25.762056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172691, 27.507927, 25.776779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025444, -0.590023, 0.806985,
		0.027566, 0.807354, 0.589424,
		-0.999296, 0.007248, 0.036807,
		29.872902, 27.510101, 25.787821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095682, 27.840073, 26.066614>,  <30.572411, 27.505028, 25.762056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095682, 27.840073, 26.066614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277100, 27.941292, 26.408436>,  <31.385950, 28.002024, 26.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277100, 27.941292, 26.408436>,  <31.095682, 27.840073, 26.066614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277100, 27.941292, 26.408436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465646, 0.750284, -0.469307,
		-0.759916, 0.610771, 0.222455,
		0.453543, 0.253049, 0.854555,
		31.413162, 28.017206, 26.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146593, 28.607561, 26.107214>,  <31.095682, 27.840073, 26.066614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146593, 28.607561, 26.107214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452255, 28.498547, 26.341064>,  <31.635653, 28.433138, 26.481375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452255, 28.498547, 26.341064>,  <31.146593, 28.607561, 26.107214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452255, 28.498547, 26.341064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577865, 0.691955, -0.432747,
		-0.286596, 0.668522, 0.686252,
		0.764156, -0.272537, 0.584627,
		31.681501, 28.416786, 26.516453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506418, 29.271786, 26.409678>,  <31.146593, 28.607561, 26.107214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506418, 29.271786, 26.409678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782602, 28.983658, 26.436234>,  <31.948313, 28.810781, 26.452168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782602, 28.983658, 26.436234>,  <31.506418, 29.271786, 26.409678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782602, 28.983658, 26.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681514, 0.616995, -0.393518,
		0.242496, 0.316955, 0.916916,
		0.690460, -0.720317, 0.066390,
		31.989740, 28.767563, 26.456150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144085, 29.565136, 26.670340>,  <31.506418, 29.271786, 26.409678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144085, 29.565136, 26.670340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247135, 29.240299, 26.460907>,  <32.308964, 29.045397, 26.335247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247135, 29.240299, 26.460907>,  <32.144085, 29.565136, 26.670340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247135, 29.240299, 26.460907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821280, 0.469511, -0.324127,
		0.509049, -0.346505, 0.787911,
		0.257621, -0.812092, -0.523582,
		32.324421, 28.996672, 26.303833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829453, 29.433279, 26.873163>,  <32.144085, 29.565136, 26.670340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829453, 29.433279, 26.873163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788109, 29.250053, 26.520008>,  <32.763302, 29.140118, 26.308115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788109, 29.250053, 26.520008>,  <32.829453, 29.433279, 26.873163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788109, 29.250053, 26.520008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797212, 0.492648, -0.348930,
		0.594785, -0.739916, 0.314253,
		-0.103362, -0.458065, -0.882889,
		32.757099, 29.112635, 26.255142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474064, 29.200788, 26.665602>,  <32.829453, 29.433279, 26.873163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474064, 29.200788, 26.665602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277714, 29.209393, 26.317215>,  <33.159904, 29.214554, 26.108183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277714, 29.209393, 26.317215>,  <33.474064, 29.200788, 26.665602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277714, 29.209393, 26.317215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676903, 0.638786, -0.365724,
		0.548494, -0.769084, -0.328122,
		-0.490872, 0.021509, -0.870966,
		33.130451, 29.215845, 26.055925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008305, 29.066353, 26.202278>,  <33.474064, 29.200788, 26.665602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008305, 29.066353, 26.202278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718433, 29.209934, 25.966995>,  <33.544510, 29.296083, 25.825825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718433, 29.209934, 25.966995>,  <34.008305, 29.066353, 26.202278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718433, 29.209934, 25.966995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687876, 0.326337, -0.648329,
		-0.040765, -0.874447, -0.483405,
		-0.724682, 0.358952, -0.588208,
		33.501030, 29.317619, 25.790533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277077, 28.977150, 25.558966>,  <34.008305, 29.066353, 26.202278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277077, 28.977150, 25.558966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008224, 29.269028, 25.508701>,  <33.846912, 29.444155, 25.478542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008224, 29.269028, 25.508701>,  <34.277077, 28.977150, 25.558966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008224, 29.269028, 25.508701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612688, 0.452803, -0.647752,
		-0.415762, -0.512362, -0.751416,
		-0.672128, 0.729694, -0.125660,
		33.806587, 29.487936, 25.471003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377293, 29.266935, 24.823910>,  <34.277077, 28.977150, 25.558966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377293, 29.266935, 24.823910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159466, 29.562920, 24.981846>,  <34.028770, 29.740511, 25.076607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159466, 29.562920, 24.981846>,  <34.377293, 29.266935, 24.823910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159466, 29.562920, 24.981846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480563, 0.661114, -0.576184,
		-0.687389, -0.124027, -0.715621,
		-0.544570, 0.739963, 0.394840,
		33.996094, 29.784908, 25.100298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888992, 29.537308, 24.361792>,  <34.377293, 29.266935, 24.823910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888992, 29.537308, 24.361792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993031, 29.822628, 24.622116>,  <34.055454, 29.993820, 24.778311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993031, 29.822628, 24.622116>,  <33.888992, 29.537308, 24.361792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993031, 29.822628, 24.622116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179998, 0.626377, -0.758454,
		-0.948658, 0.314413, 0.034523,
		0.260092, 0.713300, 0.650812,
		34.071056, 30.036617, 24.817360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656593, 30.204025, 24.081154>,  <33.888992, 29.537308, 24.361792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656593, 30.204025, 24.081154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889992, 30.355488, 24.368530>,  <34.030029, 30.446365, 24.540956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889992, 30.355488, 24.368530>,  <33.656593, 30.204025, 24.081154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889992, 30.355488, 24.368530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242055, 0.763354, -0.598917,
		-0.775208, 0.523365, 0.353755,
		0.583492, 0.378657, 0.718440,
		34.065041, 30.469086, 24.584063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469872, 30.931995, 24.185234>,  <33.656593, 30.204025, 24.081154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469872, 30.931995, 24.185234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841396, 30.903511, 24.330692>,  <34.064312, 30.886419, 24.417967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841396, 30.903511, 24.330692>,  <33.469872, 30.931995, 24.185234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841396, 30.903511, 24.330692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277774, 0.783337, -0.556080,
		-0.245259, 0.617505, 0.747352,
		0.928811, -0.071212, 0.363647,
		34.120041, 30.882147, 24.439787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676624, 31.546062, 24.289200>,  <33.469872, 30.931995, 24.185234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676624, 31.546062, 24.289200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029087, 31.357574, 24.304737>,  <34.240566, 31.244482, 24.314060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029087, 31.357574, 24.304737>,  <33.676624, 31.546062, 24.289200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029087, 31.357574, 24.304737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418781, 0.739681, -0.526776,
		0.219494, 0.480442, 0.849116,
		0.881161, -0.471218, 0.038844,
		34.293434, 31.216209, 24.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136982, 31.945686, 24.681721>,  <33.676624, 31.546062, 24.289200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136982, 31.945686, 24.681721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346333, 31.710270, 24.435242>,  <34.471943, 31.569021, 24.287354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346333, 31.710270, 24.435242>,  <34.136982, 31.945686, 24.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346333, 31.710270, 24.435242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305693, 0.804698, -0.508934,
		0.795380, 0.077998, 0.601072,
		0.523377, -0.588539, -0.616197,
		34.503345, 31.533709, 24.250383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737701, 32.217754, 25.247831>,  <34.136982, 31.945686, 24.681721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737701, 32.217754, 25.247831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800064, 32.115242, 25.629410>,  <33.837482, 32.053734, 25.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800064, 32.115242, 25.629410>,  <33.737701, 32.217754, 25.247831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800064, 32.115242, 25.629410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777248, 0.564155, 0.278594,
		-0.609572, -0.784887, -0.111241,
		0.155907, -0.256285, 0.953945,
		33.846836, 32.038357, 25.915594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072796, 32.100525, 25.500650>,  <33.737701, 32.217754, 25.247831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072796, 32.100525, 25.500650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314999, 32.203354, 25.801922>,  <33.460320, 32.265053, 25.982685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314999, 32.203354, 25.801922>,  <33.072796, 32.100525, 25.500650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314999, 32.203354, 25.801922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608819, 0.759133, 0.230340,
		-0.512548, -0.598021, 0.616170,
		0.605503, 0.257075, 0.753179,
		33.496651, 32.280476, 26.027876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862591, 32.107887, 26.084200>,  <33.072796, 32.100525, 25.500650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862591, 32.107887, 26.084200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537449, 32.322453, 26.175007>,  <32.342365, 32.451191, 26.229490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537449, 32.322453, 26.175007>,  <32.862591, 32.107887, 26.084200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537449, 32.322453, 26.175007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373420, -0.779024, 0.503666,
		0.447023, 0.324634, 0.833537,
		-0.812852, 0.536409, 0.227017,
		32.293594, 32.483376, 26.243113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631550, 31.796408, 26.633860>,  <32.862591, 32.107887, 26.084200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631550, 31.796408, 26.633860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297466, 32.006466, 26.568562>,  <32.097015, 32.132500, 26.529383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297466, 32.006466, 26.568562>,  <32.631550, 31.796408, 26.633860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297466, 32.006466, 26.568562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490687, -0.577609, 0.652376,
		0.248299, 0.624972, 0.740106,
		-0.835209, 0.525145, -0.163246,
		32.046906, 32.164009, 26.519588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370361, 31.947292, 27.280994>,  <32.631550, 31.796408, 26.633860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370361, 31.947292, 27.280994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047321, 31.950653, 27.045124>,  <31.853498, 31.952669, 26.903601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047321, 31.950653, 27.045124>,  <32.370361, 31.947292, 27.280994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047321, 31.950653, 27.045124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472482, -0.607588, 0.638434,
		-0.352918, 0.794208, 0.494655,
		-0.807595, 0.008401, -0.589677,
		31.805042, 31.953173, 26.868221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824474, 31.917252, 27.773815>,  <32.370361, 31.947292, 27.280994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824474, 31.917252, 27.773815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671078, 31.818890, 27.417732>,  <31.579041, 31.759872, 27.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671078, 31.818890, 27.417732>,  <31.824474, 31.917252, 27.773815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671078, 31.818890, 27.417732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528529, -0.732017, 0.429893,
		-0.757359, 0.635360, 0.150752,
		-0.383490, -0.245907, -0.890205,
		31.556030, 31.745117, 27.150671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081036, 32.025902, 27.735508>,  <31.824474, 31.917252, 27.773815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081036, 32.025902, 27.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179836, 31.756023, 27.457291>,  <31.239117, 31.594097, 27.290359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179836, 31.756023, 27.457291>,  <31.081036, 32.025902, 27.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179836, 31.756023, 27.457291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643055, -0.651082, 0.403202,
		-0.724894, 0.347682, -0.594682,
		0.247001, -0.674692, -0.695544,
		31.253937, 31.553616, 27.248627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515337, 31.890249, 27.372536>,  <31.081036, 32.025902, 27.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515337, 31.890249, 27.372536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715183, 31.561817, 27.262108>,  <30.835091, 31.364758, 27.195850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715183, 31.561817, 27.262108>,  <30.515337, 31.890249, 27.372536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715183, 31.561817, 27.262108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747818, -0.569671, 0.340944,
		-0.437211, 0.036110, -0.898634,
		0.499614, -0.821079, -0.276069,
		30.865068, 31.315493, 27.179287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082956, 31.395952, 27.064318>,  <30.515337, 31.890249, 27.372536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082956, 31.395952, 27.064318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402872, 31.198917, 27.201546>,  <30.594822, 31.080696, 27.283882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402872, 31.198917, 27.201546>,  <30.082956, 31.395952, 27.064318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402872, 31.198917, 27.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600280, -0.655319, 0.458498,
		-0.001028, -0.572641, -0.819806,
		0.799789, -0.492585, 0.343071,
		30.642809, 31.051142, 27.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917353, 30.655426, 26.950800>,  <30.082956, 31.395952, 27.064318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917353, 30.655426, 26.950800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222755, 30.640423, 27.208683>,  <30.405996, 30.631420, 27.363413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222755, 30.640423, 27.208683>,  <29.917353, 30.655426, 26.950800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222755, 30.640423, 27.208683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489202, -0.685309, 0.539475,
		0.421589, -0.727286, -0.541588,
		0.763507, -0.037509, 0.644709,
		30.451807, 30.629169, 27.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009361, 29.943857, 27.115082>,  <29.917353, 30.655426, 26.950800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009361, 29.943857, 27.115082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188225, 30.140034, 27.414284>,  <30.295544, 30.257740, 27.593805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188225, 30.140034, 27.414284>,  <30.009361, 29.943857, 27.115082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188225, 30.140034, 27.414284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335066, -0.683532, 0.648472,
		0.829324, -0.540602, -0.141318,
		0.447160, 0.490443, 0.748007,
		30.322372, 30.287167, 27.638685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416218, 29.410042, 27.565819>,  <30.009361, 29.943857, 27.115082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416218, 29.410042, 27.565819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324703, 29.716244, 27.806370>,  <30.269794, 29.899965, 27.950701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324703, 29.716244, 27.806370>,  <30.416218, 29.410042, 27.565819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324703, 29.716244, 27.806370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189853, -0.640988, 0.743700,
		0.954785, 0.055974, 0.291982,
		-0.228785, 0.765507, 0.601379,
		30.256067, 29.945896, 27.986784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575930, 29.221306, 28.285795>,  <30.416218, 29.410042, 27.565819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575930, 29.221306, 28.285795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368893, 29.553349, 28.368755>,  <30.244671, 29.752575, 28.418531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368893, 29.553349, 28.368755>,  <30.575930, 29.221306, 28.285795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368893, 29.553349, 28.368755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247803, -0.377442, 0.892262,
		0.818957, 0.410435, 0.401065,
		-0.517594, 0.830109, 0.207402,
		30.213614, 29.802382, 28.430975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883066, 29.567463, 28.924385>,  <30.575930, 29.221306, 28.285795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883066, 29.567463, 28.924385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509132, 29.705303, 28.890121>,  <30.284773, 29.788008, 28.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509132, 29.705303, 28.890121>,  <30.883066, 29.567463, 28.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509132, 29.705303, 28.890121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168250, -0.217435, 0.961465,
		0.312696, 0.913221, 0.261244,
		-0.934833, 0.344601, -0.085658,
		30.228682, 29.808683, 28.864424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668518, 29.942425, 29.542526>,  <30.883066, 29.567463, 28.924385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668518, 29.942425, 29.542526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307457, 29.860882, 29.390915>,  <30.090820, 29.811956, 29.299948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307457, 29.860882, 29.390915>,  <30.668518, 29.942425, 29.542526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307457, 29.860882, 29.390915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355157, -0.144572, 0.923559,
		-0.243073, 0.968266, 0.058096,
		-0.902651, -0.203859, -0.379029,
		30.036661, 29.799725, 29.277206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272785, 30.224236, 29.991600>,  <30.668518, 29.942425, 29.542526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272785, 30.224236, 29.991600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041410, 29.956184, 29.805550>,  <29.902586, 29.795355, 29.693918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041410, 29.956184, 29.805550>,  <30.272785, 30.224236, 29.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041410, 29.956184, 29.805550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385765, -0.277688, 0.879815,
		-0.718748, 0.688346, -0.097887,
		-0.578435, -0.670127, -0.465127,
		29.867880, 29.755146, 29.666012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477592, 30.366659, 30.154808>,  <30.272785, 30.224236, 29.991600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477592, 30.366659, 30.154808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495129, 29.980968, 30.050236>,  <29.505651, 29.749554, 29.987492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495129, 29.980968, 30.050236>,  <29.477592, 30.366659, 30.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495129, 29.980968, 30.050236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460216, -0.251756, 0.851364,
		-0.886724, 0.082990, -0.454790,
		0.043842, -0.964226, -0.261431,
		29.508282, 29.691700, 29.971806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876244, 30.127396, 30.358982>,  <29.477592, 30.366659, 30.154808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876244, 30.127396, 30.358982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094522, 29.798244, 30.295631>,  <29.225491, 29.600754, 30.257620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094522, 29.798244, 30.295631>,  <28.876244, 30.127396, 30.358982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094522, 29.798244, 30.295631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384318, -0.413709, 0.825315,
		-0.744657, -0.389504, -0.542008,
		0.545696, -0.822880, -0.158378,
		29.258232, 29.551380, 30.248117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494873, 29.441702, 30.423429>,  <28.876244, 30.127396, 30.358982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494873, 29.441702, 30.423429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878124, 29.335495, 30.466309>,  <29.108074, 29.271770, 30.492037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878124, 29.335495, 30.466309>,  <28.494873, 29.441702, 30.423429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878124, 29.335495, 30.466309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230538, -0.493261, 0.838776,
		-0.169830, -0.828369, -0.533819,
		0.958128, -0.265515, 0.107200,
		29.165564, 29.255840, 30.498468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547131, 28.682117, 30.483234>,  <28.494873, 29.441702, 30.423429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547131, 28.682117, 30.483234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865658, 28.849606, 30.657845>,  <29.056774, 28.950098, 30.762611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865658, 28.849606, 30.657845>,  <28.547131, 28.682117, 30.483234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865658, 28.849606, 30.657845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078602, -0.643924, 0.761041,
		0.599752, -0.640341, -0.479855,
		0.796316, 0.418719, 0.436527,
		29.104553, 28.975222, 30.788803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865782, 28.086031, 30.729464>,  <28.547131, 28.682117, 30.483234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865782, 28.086031, 30.729464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019060, 28.402744, 30.919724>,  <29.111027, 28.592772, 31.033880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019060, 28.402744, 30.919724>,  <28.865782, 28.086031, 30.729464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019060, 28.402744, 30.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021986, -0.522631, 0.852275,
		0.923405, -0.316132, -0.217678,
		0.383197, 0.791781, 0.475649,
		29.134020, 28.640278, 31.062418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392849, 27.835993, 31.044909>,  <28.865782, 28.086031, 30.729464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392849, 27.835993, 31.044909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293472, 28.169556, 31.242039>,  <29.233847, 28.369694, 31.360317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293472, 28.169556, 31.242039>,  <29.392849, 27.835993, 31.044909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293472, 28.169556, 31.242039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073939, -0.523618, 0.848739,
		0.965820, 0.174425, 0.191748,
		-0.248444, 0.833907, 0.492824,
		29.218939, 28.419727, 31.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722910, 27.731314, 31.733063>,  <29.392849, 27.835993, 31.044909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722910, 27.731314, 31.733063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461477, 28.027454, 31.795937>,  <29.304617, 28.205139, 31.833662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461477, 28.027454, 31.795937>,  <29.722910, 27.731314, 31.733063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461477, 28.027454, 31.795937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315524, -0.455303, 0.832552,
		0.687951, 0.494545, 0.531177,
		-0.653582, 0.740354, 0.157186,
		29.265404, 28.249561, 31.843092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854603, 27.984613, 32.399864>,  <29.722910, 27.731314, 31.733063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854603, 27.984613, 32.399864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475494, 28.085884, 32.322266>,  <29.248030, 28.146646, 32.275707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475494, 28.085884, 32.322266>,  <29.854603, 27.984613, 32.399864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475494, 28.085884, 32.322266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267188, -0.298039, 0.916397,
		0.174193, 0.920366, 0.350118,
		-0.947770, 0.253177, -0.193994,
		29.191164, 28.161837, 32.264069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589895, 28.199760, 32.979378>,  <29.854603, 27.984613, 32.399864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589895, 28.199760, 32.979378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249304, 28.162426, 32.772968>,  <29.044949, 28.140024, 32.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249304, 28.162426, 32.772968>,  <29.589895, 28.199760, 32.979378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249304, 28.162426, 32.772968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485083, -0.233619, 0.842684,
		-0.199206, 0.967838, 0.153645,
		-0.851476, -0.093337, -0.516020,
		28.993860, 28.134424, 32.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072098, 28.586174, 33.266434>,  <29.589895, 28.199760, 32.979378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072098, 28.586174, 33.266434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851521, 28.313023, 33.074772>,  <28.719173, 28.149132, 32.959774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851521, 28.313023, 33.074772>,  <29.072098, 28.586174, 33.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851521, 28.313023, 33.074772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504434, -0.184513, 0.843505,
		-0.664421, 0.706847, -0.242719,
		-0.551444, -0.682878, -0.479152,
		28.686087, 28.108160, 32.931026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387754, 28.758688, 33.365143>,  <29.072098, 28.586174, 33.266434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387754, 28.758688, 33.365143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374149, 28.375092, 33.252590>,  <28.365986, 28.144934, 33.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374149, 28.375092, 33.252590>,  <28.387754, 28.758688, 33.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374149, 28.375092, 33.252590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469290, -0.233251, 0.851681,
		-0.882389, 0.161017, -0.442113,
		-0.034012, -0.958993, -0.281381,
		28.363945, 28.087393, 33.168175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634706, 28.456858, 33.519676>,  <28.387754, 28.758688, 33.365143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634706, 28.456858, 33.519676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883720, 28.147148, 33.474144>,  <28.033129, 27.961323, 33.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883720, 28.147148, 33.474144>,  <27.634706, 28.456858, 33.519676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883720, 28.147148, 33.474144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283989, -0.359037, 0.889069,
		-0.729249, -0.521149, -0.443397,
		0.622533, -0.774271, -0.113827,
		28.070480, 27.914867, 33.439995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975647, 28.224945, 33.117695>,  <27.634706, 28.456858, 33.519676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975647, 28.224945, 33.117695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600792, 28.364407, 33.123589>,  <26.375879, 28.448084, 33.127125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600792, 28.364407, 33.123589>,  <26.975647, 28.224945, 33.117695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600792, 28.364407, 33.123589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156673, 0.458086, -0.874992,
		-0.311817, -0.817679, -0.483913,
		-0.937136, 0.348653, 0.014731,
		26.319651, 28.469002, 33.128006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722105, 28.068338, 32.340904>,  <26.975647, 28.224945, 33.117695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722105, 28.068338, 32.340904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518734, 28.358521, 32.526470>,  <26.396711, 28.532631, 32.637810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518734, 28.358521, 32.526470>,  <26.722105, 28.068338, 32.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518734, 28.358521, 32.526470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017758, 0.529794, -0.847941,
		-0.860922, -0.439354, -0.256479,
		-0.508427, 0.725456, 0.463913,
		26.366205, 28.576157, 32.665646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325939, 28.376028, 31.761887>,  <26.722105, 28.068338, 32.340904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325939, 28.376028, 31.761887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255913, 28.655235, 32.039627>,  <26.213898, 28.822760, 32.206272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255913, 28.655235, 32.039627>,  <26.325939, 28.376028, 31.761887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255913, 28.655235, 32.039627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010317, 0.703903, -0.710221,
		-0.984503, -0.131498, -0.116028,
		-0.175065, 0.698017, 0.694351,
		26.203394, 28.864641, 32.247932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685928, 28.792263, 31.634531>,  <26.325939, 28.376028, 31.761887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685928, 28.792263, 31.634531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959608, 28.993999, 31.845249>,  <26.123816, 29.115042, 31.971680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959608, 28.993999, 31.845249>,  <25.685928, 28.792263, 31.634531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959608, 28.993999, 31.845249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071624, 0.672372, -0.736740,
		-0.725771, 0.541807, 0.423912,
		0.684198, 0.504342, 0.526795,
		26.164867, 29.145302, 32.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489637, 29.507925, 31.526535>,  <25.685928, 28.792263, 31.634531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489637, 29.507925, 31.526535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866756, 29.531551, 31.657768>,  <26.093029, 29.545727, 31.736509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866756, 29.531551, 31.657768>,  <25.489637, 29.507925, 31.526535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866756, 29.531551, 31.657768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159877, 0.783488, -0.600489,
		-0.292520, 0.618594, 0.729228,
		0.942800, 0.059068, 0.328084,
		26.149597, 29.549273, 31.756193>
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
