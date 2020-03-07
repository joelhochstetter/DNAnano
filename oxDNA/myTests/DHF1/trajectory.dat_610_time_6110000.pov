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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.969604, 1.300230, 3.234203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165936, 1.058989, 3.485711>,  <3.283735, 0.914244, 3.636616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165936, 1.058989, 3.485711>,  <2.969604, 1.300230, 3.234203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165936, 1.058989, 3.485711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321545, 0.796129, 0.512627,
		-0.809750, -0.049434, 0.584689,
		0.490829, -0.603104, 0.628770,
		3.313184, 0.878057, 3.674342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.835887, 1.495541, 3.949908>,  <2.969604, 1.300230, 3.234203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.835887, 1.495541, 3.949908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.190712, 1.316551, 3.904494>,  <3.403607, 1.209158, 3.877246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.190712, 1.316551, 3.904494>,  <2.835887, 1.495541, 3.949908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.190712, 1.316551, 3.904494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442331, 0.753429, 0.486506,
		-0.132160, -0.481780, 0.866269,
		0.887061, -0.447474, -0.113533,
		3.456830, 1.182309, 3.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.294200, 1.430404, 4.645637>,  <2.835887, 1.495541, 3.949908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.294200, 1.430404, 4.645637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.518223, 1.441111, 4.314427>,  <3.652636, 1.447534, 4.115702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.518223, 1.441111, 4.314427>,  <3.294200, 1.430404, 4.645637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.518223, 1.441111, 4.314427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493553, 0.791970, 0.359428,
		0.665390, -0.609973, 0.430337,
		0.560055, 0.026765, -0.828022,
		3.686239, 1.449140, 4.066020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.922051, 1.309420, 4.893897>,  <3.294200, 1.430404, 4.645637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.922051, 1.309420, 4.893897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.871353, 1.546942, 4.576071>,  <3.840935, 1.689455, 4.385375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.871353, 1.546942, 4.576071>,  <3.922051, 1.309420, 4.893897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.871353, 1.546942, 4.576071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393457, 0.765410, 0.509254,
		0.910564, -0.248082, -0.330647,
		-0.126744, 0.593804, -0.794564,
		3.833330, 1.725083, 4.337701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.571577, 1.526986, 4.663165>,  <3.922051, 1.309420, 4.893897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.571577, 1.526986, 4.663165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300636, 1.790730, 4.532663>,  <4.138072, 1.948976, 4.454363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300636, 1.790730, 4.532663>,  <4.571577, 1.526986, 4.663165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.300636, 1.790730, 4.532663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467837, 0.728331, 0.500663,
		0.567737, 0.186491, -0.801808,
		-0.677351, 0.659360, -0.326253,
		4.097431, 1.988538, 4.434788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.899778, 2.061113, 4.218217>,  <4.571577, 1.526986, 4.663165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.899778, 2.061113, 4.218217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560741, 2.217045, 4.362227>,  <4.357319, 2.310604, 4.448634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560741, 2.217045, 4.362227>,  <4.899778, 2.061113, 4.218217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.560741, 2.217045, 4.362227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512219, 0.778291, 0.363174,
		-0.138629, 0.492236, -0.859352,
		-0.847593, 0.389830, 0.360026,
		4.306464, 2.333994, 4.470235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.092356, 2.796903, 4.229030>,  <4.899778, 2.061113, 4.218217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.092356, 2.796903, 4.229030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.762989, 2.764523, 4.453683>,  <4.565369, 2.745094, 4.588475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.762989, 2.764523, 4.453683>,  <5.092356, 2.796903, 4.229030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.762989, 2.764523, 4.453683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261295, 0.824496, 0.501927,
		-0.503696, 0.560047, -0.657752,
		-0.823417, -0.080951, 0.561633,
		4.515964, 2.740237, 4.622173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.844019, 3.477953, 4.142376>,  <5.092356, 2.796903, 4.229030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.844019, 3.477953, 4.142376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693867, 3.324305, 4.479787>,  <4.603775, 3.232116, 4.682234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693867, 3.324305, 4.479787>,  <4.844019, 3.477953, 4.142376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693867, 3.324305, 4.479787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332605, 0.793642, 0.509418,
		-0.865137, 0.471788, -0.170158,
		-0.375382, -0.384121, 0.843528,
		4.581252, 3.209068, 4.732846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.499018, 3.949084, 0.317372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191818, 3.958439, 0.573381>,  <5.007499, 3.964052, 0.726987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191818, 3.958439, 0.573381>,  <5.499018, 3.949084, 0.317372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191818, 3.958439, 0.573381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476550, -0.688508, -0.546678,
		0.427877, -0.724852, 0.539918,
		-0.767998, 0.023388, 0.640025,
		4.961419, 3.965456, 0.765389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.359550, 3.311271, 0.753404>,  <5.499018, 3.949084, 0.317372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.359550, 3.311271, 0.753404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.048973, 3.536081, 0.639377>,  <4.862627, 3.670968, 0.570960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.048973, 3.536081, 0.639377>,  <5.359550, 3.311271, 0.753404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.048973, 3.536081, 0.639377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352361, -0.762216, -0.543017,
		-0.522474, -0.321174, 0.789853,
		-0.776442, 0.562026, -0.285069,
		4.816041, 3.704689, 0.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.811629, 2.919307, 0.928084>,  <5.359550, 3.311271, 0.753404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.811629, 2.919307, 0.928084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.673103, 3.164237, 0.643795>,  <4.589988, 3.311194, 0.473221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.673103, 3.164237, 0.643795>,  <4.811629, 2.919307, 0.928084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.673103, 3.164237, 0.643795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309694, -0.789754, -0.529508,
		-0.885526, 0.036731, 0.463135,
		-0.346314, 0.612323, -0.710723,
		4.569209, 3.347934, 0.430578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.120955, 2.660059, 0.819156>,  <4.811629, 2.919307, 0.928084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.120955, 2.660059, 0.819156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.239861, 2.836753, 0.480570>,  <4.311204, 2.942770, 0.277418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.239861, 2.836753, 0.480570>,  <4.120955, 2.660059, 0.819156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239861, 2.836753, 0.480570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525916, -0.664178, -0.531300,
		-0.796898, 0.603106, 0.034878,
		0.297265, 0.441735, -0.846465,
		4.329040, 2.969274, 0.226630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.522895, 2.760301, 0.482877>,  <4.120955, 2.660059, 0.819156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.522895, 2.760301, 0.482877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.807762, 2.742909, 0.202612>,  <3.978682, 2.732475, 0.034453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.807762, 2.742909, 0.202612>,  <3.522895, 2.760301, 0.482877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.807762, 2.742909, 0.202612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606791, -0.540028, -0.583245,
		-0.353018, 0.840524, -0.410973,
		0.712168, -0.043479, -0.700662,
		4.021412, 2.729866, -0.007587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.207600, 2.935473, -0.182113>,  <3.522895, 2.760301, 0.482877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.207600, 2.935473, -0.182113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545944, 2.737822, -0.262467>,  <3.748951, 2.619231, -0.310680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545944, 2.737822, -0.262467>,  <3.207600, 2.935473, -0.182113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.545944, 2.737822, -0.262467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469696, -0.511506, -0.719547,
		0.252795, 0.702992, -0.664753,
		0.845861, -0.494129, -0.200887,
		3.799703, 2.589583, -0.322733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173853, 2.828801, -0.964429>,  <3.207600, 2.935473, -0.182113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173853, 2.828801, -0.964429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.467705, 2.583678, -0.847957>,  <3.644016, 2.436604, -0.778073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.467705, 2.583678, -0.847957>,  <3.173853, 2.828801, -0.964429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.467705, 2.583678, -0.847957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248896, -0.642668, -0.724588,
		0.631167, 0.459830, -0.624648,
		0.734629, -0.612808, 0.291181,
		3.688093, 2.399835, -0.760602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717523, 2.700953, -1.584466>,  <3.173853, 2.828801, -0.964429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717523, 2.700953, -1.584466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.720718, 2.408532, -1.311557>,  <3.722636, 2.233079, -1.147811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.720718, 2.408532, -1.311557>,  <3.717523, 2.700953, -1.584466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.720718, 2.408532, -1.311557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028526, -0.681850, -0.730935,
		0.999561, 0.025301, 0.015408,
		0.007988, -0.731054, 0.682272,
		3.723115, 2.189215, -1.106875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
