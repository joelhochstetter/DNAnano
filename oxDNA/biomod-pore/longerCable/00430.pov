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
	<24.135422, 34.929623, 35.370174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325878, 35.009804, 35.027687>,  <24.440151, 35.057915, 34.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325878, 35.009804, 35.027687>,  <24.135422, 34.929623, 35.370174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325878, 35.009804, 35.027687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660045, -0.724841, 0.197351,
		-0.581060, -0.659108, -0.477437,
		0.476141, 0.200457, -0.856216,
		24.468719, 35.069942, 34.770821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476532, 34.367653, 34.775764>,  <24.135422, 34.929623, 35.370174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476532, 34.367653, 34.775764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777569, 34.629425, 34.804951>,  <24.958191, 34.786488, 34.822460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777569, 34.629425, 34.804951>,  <24.476532, 34.367653, 34.775764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777569, 34.629425, 34.804951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641354, -0.753611, 0.143999,
		0.149222, -0.061578, -0.986884,
		0.752594, 0.654430, 0.072962,
		25.003347, 34.825752, 34.826839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948856, 34.172401, 34.284363>,  <24.476532, 34.367653, 34.775764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948856, 34.172401, 34.284363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091370, 34.326447, 34.624893>,  <25.176878, 34.418873, 34.829212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091370, 34.326447, 34.624893>,  <24.948856, 34.172401, 34.284363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091370, 34.326447, 34.624893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552418, -0.821642, 0.140497,
		0.753590, 0.420229, -0.505480,
		0.356283, 0.385113, 0.851323,
		25.198254, 34.441982, 34.880291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709852, 34.103264, 34.337914>,  <24.948856, 34.172401, 34.284363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709852, 34.103264, 34.337914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582739, 34.112881, 34.717056>,  <25.506470, 34.118652, 34.944542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582739, 34.112881, 34.717056>,  <25.709852, 34.103264, 34.337914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582739, 34.112881, 34.717056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607568, -0.762309, 0.223036,
		0.727924, 0.646766, 0.227641,
		-0.317785, 0.024046, 0.947858,
		25.487404, 34.120094, 35.001415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275801, 33.998444, 34.643669>,  <25.709852, 34.103264, 34.337914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275801, 33.998444, 34.643669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998747, 33.922779, 34.922085>,  <25.832514, 33.877380, 35.089134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998747, 33.922779, 34.922085>,  <26.275801, 33.998444, 34.643669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998747, 33.922779, 34.922085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571827, -0.732175, 0.370045,
		0.439625, 0.654321, 0.615299,
		-0.692635, -0.189164, 0.696041,
		25.790956, 33.866032, 35.130898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581841, 33.916164, 35.306465>,  <26.275801, 33.998444, 34.643669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581841, 33.916164, 35.306465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242172, 33.708759, 35.266357>,  <26.038370, 33.584316, 35.242290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242172, 33.708759, 35.266357>,  <26.581841, 33.916164, 35.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242172, 33.708759, 35.266357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452977, -0.812719, 0.366469,
		-0.271511, 0.265774, 0.925011,
		-0.849172, -0.518510, -0.100273,
		25.987421, 33.553207, 35.236275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354074, 33.581760, 36.001389>,  <26.581841, 33.916164, 35.306465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354074, 33.581760, 36.001389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198339, 33.354538, 35.711361>,  <26.104898, 33.218204, 35.537346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198339, 33.354538, 35.711361>,  <26.354074, 33.581760, 36.001389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198339, 33.354538, 35.711361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296775, -0.822566, 0.485087,
		-0.871976, -0.026320, 0.488841,
		-0.389336, -0.568060, -0.725069,
		26.081539, 33.184120, 35.493839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899647, 32.965870, 36.355423>,  <26.354074, 33.581760, 36.001389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899647, 32.965870, 36.355423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051163, 32.918434, 35.988281>,  <26.142073, 32.889973, 35.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051163, 32.918434, 35.988281>,  <25.899647, 32.965870, 36.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051163, 32.918434, 35.988281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528776, -0.786209, 0.319798,
		-0.759549, -0.606475, -0.235102,
		0.378789, -0.118586, -0.917854,
		26.164799, 32.882858, 35.712925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836870, 32.308052, 36.105591>,  <25.899647, 32.965870, 36.355423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836870, 32.308052, 36.105591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135672, 32.421177, 35.864925>,  <26.314953, 32.489052, 35.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135672, 32.421177, 35.864925>,  <25.836870, 32.308052, 36.105591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135672, 32.421177, 35.864925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512347, -0.821610, 0.249916,
		-0.423657, -0.494951, -0.758643,
		0.747004, 0.282809, -0.601667,
		26.359774, 32.506020, 35.684425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045763, 31.683779, 35.668427>,  <25.836870, 32.308052, 36.105591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045763, 31.683779, 35.668427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352589, 31.939562, 35.689228>,  <26.536684, 32.093033, 35.701710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352589, 31.939562, 35.689228>,  <26.045763, 31.683779, 35.668427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352589, 31.939562, 35.689228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590891, -0.735727, 0.330989,
		0.249913, -0.223162, -0.942201,
		0.767066, 0.639457, 0.052003,
		26.582708, 32.131397, 35.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540129, 31.358839, 35.225197>,  <26.045763, 31.683779, 35.668427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540129, 31.358839, 35.225197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683205, 31.616119, 35.496002>,  <26.769051, 31.770487, 35.658485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683205, 31.616119, 35.496002>,  <26.540129, 31.358839, 35.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683205, 31.616119, 35.496002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579969, -0.721222, 0.378781,
		0.731911, 0.257163, -0.631009,
		0.357690, 0.643200, 0.677017,
		26.790512, 31.809080, 35.699108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250687, 31.276075, 35.191601>,  <26.540129, 31.358839, 35.225197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250687, 31.276075, 35.191601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168528, 31.414062, 35.557945>,  <27.119232, 31.496855, 35.777752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168528, 31.414062, 35.557945>,  <27.250687, 31.276075, 35.191601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168528, 31.414062, 35.557945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543569, -0.737991, 0.399877,
		0.813845, 0.579969, -0.035933,
		-0.205398, 0.344970, 0.915864,
		27.106909, 31.517553, 35.832706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895685, 31.394688, 35.507885>,  <27.250687, 31.276075, 35.191601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895685, 31.394688, 35.507885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613611, 31.368729, 35.790302>,  <27.444366, 31.353153, 35.959755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613611, 31.368729, 35.790302>,  <27.895685, 31.394688, 35.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613611, 31.368729, 35.790302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637111, -0.494975, 0.590837,
		0.311131, 0.866480, 0.390397,
		-0.705186, -0.064899, 0.706046,
		27.402056, 31.349258, 36.002117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130676, 31.746191, 36.109871>,  <27.895685, 31.394688, 35.507885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130676, 31.746191, 36.109871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916410, 31.412682, 36.163368>,  <27.787851, 31.212576, 36.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916410, 31.412682, 36.163368>,  <28.130676, 31.746191, 36.109871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916410, 31.412682, 36.163368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787254, -0.435803, 0.436242,
		-0.305442, 0.338969, 0.889835,
		-0.535665, -0.833772, 0.133742,
		27.755711, 31.162550, 36.203491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058144, 32.252937, 35.532368>,  <28.130676, 31.746191, 36.109871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058144, 32.252937, 35.532368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450329, 32.246853, 35.453926>,  <28.685640, 32.243202, 35.406860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450329, 32.246853, 35.453926>,  <28.058144, 32.252937, 35.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450329, 32.246853, 35.453926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119951, 0.836382, 0.534862,
		0.155885, -0.547937, 0.821867,
		0.980465, -0.015207, -0.196105,
		28.744469, 32.242290, 35.395096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349018, 32.447502, 36.218819>,  <28.058144, 32.252937, 35.532368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349018, 32.447502, 36.218819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611593, 32.517097, 35.925201>,  <28.769138, 32.558853, 35.749031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611593, 32.517097, 35.925201>,  <28.349018, 32.447502, 36.218819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611593, 32.517097, 35.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246041, 0.870453, 0.426351,
		0.713129, -0.460477, 0.528591,
		0.656439, 0.173988, -0.734041,
		28.808525, 32.569294, 35.704990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649523, 32.691959, 36.243267>,  <28.349018, 32.447502, 36.218819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649523, 32.691959, 36.243267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399118, 32.424080, 36.083458>,  <27.248877, 32.263351, 35.987572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399118, 32.424080, 36.083458>,  <27.649523, 32.691959, 36.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399118, 32.424080, 36.083458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469020, 0.732650, -0.493197,
		0.623002, -0.121364, -0.772748,
		-0.626010, -0.669697, -0.399520,
		27.211315, 32.223171, 35.963600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618521, 32.826721, 35.560207>,  <27.649523, 32.691959, 36.243267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618521, 32.826721, 35.560207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288881, 32.610477, 35.627861>,  <27.091097, 32.480732, 35.668453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288881, 32.610477, 35.627861>,  <27.618521, 32.826721, 35.560207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288881, 32.610477, 35.627861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544963, 0.675220, -0.497085,
		0.154522, -0.501821, -0.851058,
		-0.824098, -0.540606, 0.169137,
		27.041653, 32.448296, 35.678600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383415, 32.872074, 34.981964>,  <27.618521, 32.826721, 35.560207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383415, 32.872074, 34.981964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075785, 32.771847, 35.217163>,  <26.891207, 32.711712, 35.358280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075785, 32.771847, 35.217163>,  <27.383415, 32.872074, 34.981964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075785, 32.771847, 35.217163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589985, 0.632158, -0.502289,
		-0.245849, -0.733206, -0.634008,
		-0.769075, -0.250568, 0.587996,
		26.845062, 32.696678, 35.393562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796120, 32.903877, 34.518559>,  <27.383415, 32.872074, 34.981964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796120, 32.903877, 34.518559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617470, 32.912350, 34.876347>,  <26.510281, 32.917431, 35.091019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617470, 32.912350, 34.876347>,  <26.796120, 32.903877, 34.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617470, 32.912350, 34.876347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654518, 0.673881, -0.342768,
		-0.610027, -0.738536, -0.287109,
		-0.446624, 0.021179, 0.894471,
		26.483482, 32.918705, 35.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073545, 32.599316, 34.487434>,  <26.796120, 32.903877, 34.518559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073545, 32.599316, 34.487434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174828, 32.916206, 34.709522>,  <26.235598, 33.106339, 34.842773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174828, 32.916206, 34.709522>,  <26.073545, 32.599316, 34.487434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174828, 32.916206, 34.709522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669947, 0.557624, -0.490130,
		-0.697895, -0.247861, 0.671943,
		0.253207, 0.792225, 0.555217,
		26.250790, 33.153873, 34.876087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313709, 32.542141, 34.760941>,  <26.073545, 32.599316, 34.487434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313709, 32.542141, 34.760941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515585, 32.764454, 35.025181>,  <25.636711, 32.897842, 35.183723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515585, 32.764454, 35.025181>,  <25.313709, 32.542141, 34.760941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515585, 32.764454, 35.025181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327616, 0.831263, -0.449077,
		-0.798721, 0.010223, 0.601615,
		0.504691, 0.555785, 0.660598,
		25.666992, 32.931190, 35.223358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863192, 32.975773, 35.041992>,  <25.313709, 32.542141, 34.760941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863192, 32.975773, 35.041992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224527, 33.144573, 35.072693>,  <25.441328, 33.245853, 35.091114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224527, 33.144573, 35.072693>,  <24.863192, 32.975773, 35.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224527, 33.144573, 35.072693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370974, 0.858498, -0.354061,
		-0.215303, 0.291366, 0.932068,
		0.903340, 0.422004, 0.076748,
		25.495529, 33.271175, 35.095718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966753, 33.130047, 35.808472>,  <24.863192, 32.975773, 35.041992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966753, 33.130047, 35.808472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327829, 33.285202, 35.733971>,  <25.544476, 33.378296, 35.689270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327829, 33.285202, 35.733971>,  <24.966753, 33.130047, 35.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327829, 33.285202, 35.733971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424563, 0.873298, -0.238949,
		0.069971, 0.294775, 0.953001,
		0.902691, 0.387889, -0.186256,
		25.598637, 33.401569, 35.678093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944607, 33.737499, 36.130371>,  <24.966753, 33.130047, 35.808472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944607, 33.737499, 36.130371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203989, 33.794537, 35.831261>,  <25.359619, 33.828758, 35.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203989, 33.794537, 35.831261>,  <24.944607, 33.737499, 36.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203989, 33.794537, 35.831261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183711, 0.982580, 0.028056,
		0.738752, 0.119182, 0.663356,
		0.648456, 0.142592, -0.747778,
		25.398525, 33.837315, 35.606926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360270, 34.287888, 36.238945>,  <24.944607, 33.737499, 36.130371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360270, 34.287888, 36.238945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431957, 34.248562, 35.847393>,  <25.474970, 34.224968, 35.612461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431957, 34.248562, 35.847393>,  <25.360270, 34.287888, 36.238945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431957, 34.248562, 35.847393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279167, 0.949013, -0.146425,
		0.943370, 0.299514, 0.142634,
		0.179218, -0.098314, -0.978885,
		25.485723, 34.219067, 35.553726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750210, 34.874340, 36.020023>,  <25.360270, 34.287888, 36.238945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750210, 34.874340, 36.020023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543262, 34.734829, 35.707439>,  <25.419094, 34.651123, 35.519890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543262, 34.734829, 35.707439>,  <25.750210, 34.874340, 36.020023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543262, 34.734829, 35.707439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375666, 0.913049, -0.158800,
		0.768899, 0.211410, -0.603407,
		-0.517368, -0.348781, -0.781462,
		25.388052, 34.630196, 35.473000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866175, 35.396423, 35.539726>,  <25.750210, 34.874340, 36.020023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866175, 35.396423, 35.539726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548441, 35.177410, 35.434471>,  <25.357801, 35.046001, 35.371319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548441, 35.177410, 35.434471>,  <25.866175, 35.396423, 35.539726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548441, 35.177410, 35.434471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508896, 0.836312, -0.203979,
		0.331751, -0.028118, -0.942948,
		-0.794334, -0.547533, -0.263138,
		25.310141, 35.013149, 35.355530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696602, 35.533619, 34.892902>,  <25.866175, 35.396423, 35.539726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696602, 35.533619, 34.892902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397949, 35.496365, 35.156376>,  <25.218758, 35.474010, 35.314461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397949, 35.496365, 35.156376>,  <25.696602, 35.533619, 34.892902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397949, 35.496365, 35.156376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317177, 0.920201, -0.229411,
		-0.584757, -0.380205, -0.716591,
		-0.746631, -0.093137, 0.658686,
		25.173960, 35.468422, 35.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261690, 35.890396, 34.539776>,  <25.696602, 35.533619, 34.892902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261690, 35.890396, 34.539776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171993, 35.870346, 34.929073>,  <25.118176, 35.858315, 35.162651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171993, 35.870346, 34.929073>,  <25.261690, 35.890396, 34.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171993, 35.870346, 34.929073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273409, 0.961804, -0.013459,
		-0.935395, -0.269112, -0.229382,
		-0.224242, -0.050126, 0.973244,
		25.104721, 35.855309, 35.221046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510357, 36.346222, 34.614975>,  <25.261690, 35.890396, 34.539776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510357, 36.346222, 34.614975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766352, 36.316669, 34.920906>,  <24.919949, 36.298939, 35.104465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766352, 36.316669, 34.920906>,  <24.510357, 36.346222, 34.614975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766352, 36.316669, 34.920906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288080, 0.899695, 0.327963,
		-0.712339, -0.430223, 0.554510,
		0.639987, -0.073878, 0.764826,
		24.958347, 36.294506, 35.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174740, 36.489254, 35.217041>,  <24.510357, 36.346222, 34.614975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174740, 36.489254, 35.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557741, 36.602428, 35.239426>,  <24.787542, 36.670334, 35.252857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557741, 36.602428, 35.239426>,  <24.174740, 36.489254, 35.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557741, 36.602428, 35.239426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281848, 0.876713, 0.389789,
		0.061226, -0.388997, 0.919202,
		0.957504, 0.282941, 0.055960,
		24.844992, 36.687309, 35.256214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240595, 36.804878, 35.926598>,  <24.174740, 36.489254, 35.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240595, 36.804878, 35.926598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556231, 36.948524, 35.727245>,  <24.745611, 37.034710, 35.607635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556231, 36.948524, 35.727245>,  <24.240595, 36.804878, 35.926598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556231, 36.948524, 35.727245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182878, 0.911864, 0.367505,
		0.586428, -0.198851, 0.785214,
		0.789087, 0.359113, -0.498377,
		24.792957, 37.056259, 35.577732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683523, 37.176884, 36.370659>,  <24.240595, 36.804878, 35.926598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683523, 37.176884, 36.370659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722742, 37.317444, 35.998230>,  <24.746273, 37.401779, 35.774773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722742, 37.317444, 35.998230>,  <24.683523, 37.176884, 36.370659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722742, 37.317444, 35.998230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176420, 0.926903, 0.331249,
		0.979420, 0.131782, 0.152876,
		0.098048, 0.351402, -0.931076,
		24.752157, 37.422863, 35.718906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993750, 37.726837, 36.466976>,  <24.683523, 37.176884, 36.370659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993750, 37.726837, 36.466976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830372, 37.769276, 36.104340>,  <24.732346, 37.794739, 35.886757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830372, 37.769276, 36.104340>,  <24.993750, 37.726837, 36.466976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830372, 37.769276, 36.104340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116918, 0.978959, 0.167239,
		0.905264, 0.174306, -0.387447,
		-0.408446, 0.106096, -0.906596,
		24.707838, 37.801105, 35.832359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710083, 37.552315, 36.446495>,  <24.993750, 37.726837, 36.466976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710083, 37.552315, 36.446495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561520, 37.629169, 36.083145>,  <25.472382, 37.675282, 35.865135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561520, 37.629169, 36.083145>,  <25.710083, 37.552315, 36.446495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561520, 37.629169, 36.083145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016846, 0.976799, 0.213494,
		0.928317, 0.094595, -0.359553,
		-0.371407, 0.192133, -0.908373,
		25.450098, 37.686810, 35.810635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634583, 38.291111, 36.356735>,  <25.710083, 37.552315, 36.446495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634583, 38.291111, 36.356735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455130, 38.211025, 36.008335>,  <25.347458, 38.162971, 35.799294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455130, 38.211025, 36.008335>,  <25.634583, 38.291111, 36.356735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455130, 38.211025, 36.008335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049061, 0.978630, -0.199689,
		0.892369, -0.046854, -0.448867,
		-0.448631, -0.200218, -0.871001,
		25.320539, 38.150959, 35.747036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838463, 38.906624, 35.967682>,  <25.634583, 38.291111, 36.356735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838463, 38.906624, 35.967682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547735, 38.748775, 35.742821>,  <25.373299, 38.654068, 35.607906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547735, 38.748775, 35.742821>,  <25.838463, 38.906624, 35.967682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547735, 38.748775, 35.742821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259981, 0.915638, -0.306621,
		0.635723, -0.076710, -0.768097,
		-0.726819, -0.394617, -0.562149,
		25.329689, 38.630390, 35.574177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971869, 39.039562, 35.227798>,  <25.838463, 38.906624, 35.967682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971869, 39.039562, 35.227798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581009, 39.012157, 35.308277>,  <25.346493, 38.995712, 35.356564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581009, 39.012157, 35.308277>,  <25.971869, 39.039562, 35.227798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581009, 39.012157, 35.308277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104249, 0.979429, -0.172777,
		-0.185225, -0.189804, -0.964192,
		-0.977151, -0.068514, 0.201201,
		25.287863, 38.991604, 35.368637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725111, 39.722832, 34.962585>,  <25.971869, 39.039562, 35.227798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725111, 39.722832, 34.962585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438768, 39.554092, 35.185146>,  <25.266962, 39.452847, 35.318684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438768, 39.554092, 35.185146>,  <25.725111, 39.722832, 34.962585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438768, 39.554092, 35.185146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398654, 0.901146, 0.170324,
		-0.573255, -0.099886, -0.813266,
		-0.715859, -0.421851, 0.556406,
		25.224010, 39.427536, 35.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132277, 40.058136, 34.651058>,  <25.725111, 39.722832, 34.962585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132277, 40.058136, 34.651058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862888, 39.832870, 34.459526>,  <24.701256, 39.697712, 34.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862888, 39.832870, 34.459526>,  <25.132277, 40.058136, 34.651058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862888, 39.832870, 34.459526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373304, -0.818199, 0.437259,
		-0.638028, 0.115733, 0.761266,
		-0.673472, -0.563167, -0.478830,
		24.660847, 39.663921, 34.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732052, 39.718887, 35.056549>,  <25.132277, 40.058136, 34.651058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732052, 39.718887, 35.056549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750151, 39.510967, 34.715313>,  <24.761009, 39.386215, 34.510571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750151, 39.510967, 34.715313>,  <24.732052, 39.718887, 35.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750151, 39.510967, 34.715313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265600, -0.816970, 0.511876,
		-0.963021, -0.249741, 0.101093,
		0.045247, -0.519797, -0.853091,
		24.763725, 39.355026, 34.459385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310392, 39.163902, 35.088516>,  <24.732052, 39.718887, 35.056549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310392, 39.163902, 35.088516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628584, 39.097496, 34.855396>,  <24.819500, 39.057652, 34.715527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628584, 39.097496, 34.855396>,  <24.310392, 39.163902, 35.088516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628584, 39.097496, 34.855396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204724, -0.831570, 0.516313,
		-0.570350, -0.530030, -0.627511,
		0.795480, -0.166012, -0.582795,
		24.867228, 39.047691, 34.680557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.987944, 38.875385, 35.672264>,  <24.310392, 39.163902, 35.088516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.987944, 38.875385, 35.672264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374514, 38.892502, 35.570919>,  <24.606455, 38.902771, 35.510113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374514, 38.892502, 35.570919>,  <23.987944, 38.875385, 35.672264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374514, 38.892502, 35.570919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025267, -0.997082, -0.072037,
		-0.255710, 0.063217, -0.964684,
		0.966423, 0.042795, -0.253367,
		24.664440, 38.905342, 35.494907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161602, 38.420086, 35.065697>,  <23.987944, 38.875385, 35.672264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161602, 38.420086, 35.065697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525415, 38.456013, 35.228024>,  <24.743704, 38.477570, 35.325420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525415, 38.456013, 35.228024>,  <24.161602, 38.420086, 35.065697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525415, 38.456013, 35.228024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144374, -0.983848, -0.105828,
		0.389754, 0.154843, -0.907808,
		0.909531, 0.089817, 0.405814,
		24.798275, 38.482956, 35.349770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451162, 37.833481, 34.865814>,  <24.161602, 38.420086, 35.065697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451162, 37.833481, 34.865814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739977, 37.924011, 35.127331>,  <24.913265, 37.978329, 35.284241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739977, 37.924011, 35.127331>,  <24.451162, 37.833481, 34.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739977, 37.924011, 35.127331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241108, -0.968054, 0.068835,
		0.648482, 0.107932, -0.753540,
		0.722038, 0.226322, 0.653789,
		24.956589, 37.991909, 35.323467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141251, 37.788727, 34.559963>,  <24.451162, 37.833481, 34.865814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141251, 37.788727, 34.559963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045477, 37.693054, 34.936359>,  <24.988012, 37.635651, 35.162197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045477, 37.693054, 34.936359>,  <25.141251, 37.788727, 34.559963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045477, 37.693054, 34.936359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278506, -0.945371, -0.169432,
		0.930110, 0.221503, 0.292971,
		-0.239437, -0.239185, 0.940989,
		24.973646, 37.621300, 35.218655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729698, 37.539177, 34.794521>,  <25.141251, 37.788727, 34.559963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729698, 37.539177, 34.794521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433664, 37.404697, 35.027500>,  <25.256044, 37.324009, 35.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433664, 37.404697, 35.027500>,  <25.729698, 37.539177, 34.794521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433664, 37.404697, 35.027500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356841, -0.930413, -0.083639,
		0.570037, 0.145941, 0.808553,
		-0.740082, -0.336203, 0.582448,
		25.211639, 37.303837, 35.202236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046085, 37.134041, 35.424347>,  <25.729698, 37.539177, 34.794521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046085, 37.134041, 35.424347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675913, 36.997181, 35.359222>,  <25.453810, 36.915066, 35.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675913, 36.997181, 35.359222>,  <26.046085, 37.134041, 35.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675913, 36.997181, 35.359222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339650, -0.939530, 0.043841,
		-0.167964, -0.014726, 0.985683,
		-0.925433, -0.342151, -0.162809,
		25.398283, 36.894535, 35.310379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846838, 36.650944, 35.907776>,  <26.046085, 37.134041, 35.424347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846838, 36.650944, 35.907776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662642, 36.566399, 35.562923>,  <25.552124, 36.515671, 35.356010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662642, 36.566399, 35.562923>,  <25.846838, 36.650944, 35.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662642, 36.566399, 35.562923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355036, -0.934024, 0.039352,
		-0.813571, -0.287967, 0.505151,
		-0.460491, -0.211362, -0.862133,
		25.524494, 36.502991, 35.304283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266325, 36.334133, 36.475262>,  <25.846838, 36.650944, 35.907776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266325, 36.334133, 36.475262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245464, 36.588741, 36.783058>,  <26.232948, 36.741505, 36.967735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245464, 36.588741, 36.783058>,  <26.266325, 36.334133, 36.475262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245464, 36.588741, 36.783058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704172, -0.569813, 0.423621,
		0.708112, -0.519765, 0.477936,
		-0.052151, 0.636520, 0.769495,
		26.229818, 36.779697, 37.013908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150515, 35.898315, 36.965755>,  <26.266325, 36.334133, 36.475262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150515, 35.898315, 36.965755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058466, 36.262836, 37.102322>,  <26.003237, 36.481548, 37.184261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058466, 36.262836, 37.102322>,  <26.150515, 35.898315, 36.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058466, 36.262836, 37.102322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790150, -0.379765, 0.481085,
		0.568073, -0.159061, 0.807461,
		-0.230123, 0.911306, 0.341416,
		25.989429, 36.536228, 37.204746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047758, 36.037491, 37.746273>,  <26.150515, 35.898315, 36.965755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047758, 36.037491, 37.746273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825981, 36.294113, 37.534237>,  <25.692915, 36.448086, 37.407013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825981, 36.294113, 37.534237>,  <26.047758, 36.037491, 37.746273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825981, 36.294113, 37.534237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831647, -0.450797, 0.324261,
		-0.030932, 0.620634, 0.783490,
		-0.554442, 0.641557, -0.530093,
		25.659649, 36.486580, 37.375210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608271, 35.585033, 38.158779>,  <26.047758, 36.037491, 37.746273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608271, 35.585033, 38.158779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306379, 35.415401, 38.358994>,  <26.125244, 35.313622, 38.479122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306379, 35.415401, 38.358994>,  <26.608271, 35.585033, 38.158779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306379, 35.415401, 38.358994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655489, -0.518664, 0.548928,
		0.026822, 0.742390, 0.669431,
		-0.754728, -0.424081, 0.500541,
		26.079962, 35.288177, 38.509155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121183, 35.610733, 38.650135>,  <26.608271, 35.585033, 38.158779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121183, 35.610733, 38.650135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475845, 35.647949, 38.831326>,  <27.688643, 35.670277, 38.940041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475845, 35.647949, 38.831326>,  <27.121183, 35.610733, 38.650135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475845, 35.647949, 38.831326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380222, -0.704203, -0.599607,
		0.263205, 0.703876, -0.659759,
		0.886653, 0.093036, 0.452979,
		27.741842, 35.675861, 38.967220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740105, 35.529770, 38.139133>,  <27.121183, 35.610733, 38.650135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740105, 35.529770, 38.139133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840611, 35.425301, 38.511940>,  <27.900913, 35.362617, 38.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840611, 35.425301, 38.511940>,  <27.740105, 35.529770, 38.139133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840611, 35.425301, 38.511940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480611, -0.802152, -0.354353,
		0.840166, 0.536974, -0.076029,
		0.251265, -0.261175, 0.932016,
		27.915991, 35.346947, 38.791546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497009, 35.468300, 38.121895>,  <27.740105, 35.529770, 38.139133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497009, 35.468300, 38.121895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288326, 35.232918, 38.368973>,  <28.163116, 35.091690, 38.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288326, 35.232918, 38.368973>,  <28.497009, 35.468300, 38.121895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288326, 35.232918, 38.368973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522422, -0.792768, -0.313997,
		0.674459, 0.158881, 0.721014,
		-0.521709, -0.588452, 0.617692,
		28.131813, 35.056381, 38.554279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927677, 35.159176, 38.719269>,  <28.497009, 35.468300, 38.121895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927677, 35.159176, 38.719269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617430, 34.929516, 38.614380>,  <28.431280, 34.791718, 38.551445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617430, 34.929516, 38.614380>,  <28.927677, 35.159176, 38.719269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617430, 34.929516, 38.614380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631172, -0.701536, -0.330860,
		0.006005, -0.422130, 0.906515,
		-0.775620, -0.574154, -0.262224,
		28.384745, 34.757271, 38.535713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005379, 34.523518, 39.011646>,  <28.927677, 35.159176, 38.719269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005379, 34.523518, 39.011646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746143, 34.433964, 38.720482>,  <28.590603, 34.380230, 38.545784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746143, 34.433964, 38.720482>,  <29.005379, 34.523518, 39.011646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746143, 34.433964, 38.720482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569988, -0.776491, -0.268656,
		-0.505069, -0.589014, 0.630848,
		-0.648089, -0.223886, -0.727912,
		28.551716, 34.366798, 38.502110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669857, 34.177036, 39.038971>,  <29.005379, 34.523518, 39.011646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669857, 34.177036, 39.038971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880993, 34.465366, 39.218658>,  <30.007675, 34.638363, 39.326469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880993, 34.465366, 39.218658>,  <29.669857, 34.177036, 39.038971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880993, 34.465366, 39.218658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670914, -0.029535, -0.740946,
		-0.520823, 0.692490, -0.499200,
		0.527842, 0.720823, 0.449219,
		30.039345, 34.681614, 39.353424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177488, 33.756222, 38.629841>,  <29.669857, 34.177036, 39.038971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177488, 33.756222, 38.629841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121168, 34.132069, 38.754608>,  <30.087376, 34.357578, 38.829468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121168, 34.132069, 38.754608>,  <30.177488, 33.756222, 38.629841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121168, 34.132069, 38.754608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920849, -0.008581, -0.389825,
		-0.363610, -0.342117, 0.866454,
		-0.140801, 0.939618, 0.311918,
		30.078928, 34.413956, 38.848183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068201, 33.908222, 38.018864>,  <30.177488, 33.756222, 38.629841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068201, 33.908222, 38.018864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248827, 34.139271, 38.290878>,  <30.357203, 34.277901, 38.454086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248827, 34.139271, 38.290878>,  <30.068201, 33.908222, 38.018864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248827, 34.139271, 38.290878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721753, 0.211608, -0.659010,
		-0.524557, 0.788403, -0.321343,
		0.451567, 0.577619, 0.680033,
		30.384296, 34.312557, 38.494888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268898, 34.560162, 37.696247>,  <30.068201, 33.908222, 38.018864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268898, 34.560162, 37.696247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521381, 34.468426, 37.992619>,  <30.672873, 34.413383, 38.170441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521381, 34.468426, 37.992619>,  <30.268898, 34.560162, 37.696247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521381, 34.468426, 37.992619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755218, -0.035887, -0.654490,
		0.176688, 0.972685, 0.150547,
		0.631210, -0.229336, 0.740931,
		30.710745, 34.399624, 38.214897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774763, 35.078983, 37.714439>,  <30.268898, 34.560162, 37.696247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774763, 35.078983, 37.714439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907360, 34.714767, 37.813259>,  <30.986917, 34.496239, 37.872551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907360, 34.714767, 37.813259>,  <30.774763, 35.078983, 37.714439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907360, 34.714767, 37.813259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719090, 0.074331, -0.690930,
		0.610756, 0.406686, 0.679399,
		0.331492, -0.910539, 0.247046,
		31.006807, 34.441605, 37.887371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537670, 35.073269, 38.039135>,  <30.774763, 35.078983, 37.714439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537670, 35.073269, 38.039135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412827, 34.748905, 37.841141>,  <31.337921, 34.554287, 37.722343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412827, 34.748905, 37.841141>,  <31.537670, 35.073269, 38.039135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412827, 34.748905, 37.841141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839392, 0.008662, -0.543457,
		0.444982, -0.585109, 0.677967,
		-0.312109, -0.810909, -0.494990,
		31.319193, 34.505634, 37.692642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184044, 34.612633, 38.033573>,  <31.537670, 35.073269, 38.039135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184044, 34.612633, 38.033573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939684, 34.492413, 37.740597>,  <31.793068, 34.420280, 37.564812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939684, 34.492413, 37.740597>,  <32.184044, 34.612633, 38.033573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939684, 34.492413, 37.740597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786893, -0.128598, -0.603541,
		0.087204, -0.945056, 0.315062,
		-0.610896, -0.300552, -0.732444,
		31.756414, 34.402248, 37.520863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450485, 34.048859, 37.760090>,  <32.184044, 34.612633, 38.033573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450485, 34.048859, 37.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223854, 34.191750, 37.463070>,  <32.087875, 34.277485, 37.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223854, 34.191750, 37.463070>,  <32.450485, 34.048859, 37.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223854, 34.191750, 37.463070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715960, -0.232684, -0.658225,
		-0.407916, -0.904570, -0.123928,
		-0.566574, 0.357228, -0.742551,
		32.053883, 34.298920, 37.240303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260330, 33.502754, 37.172058>,  <32.450485, 34.048859, 37.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260330, 33.502754, 37.172058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225346, 33.865780, 37.007782>,  <32.204353, 34.083595, 36.909214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225346, 33.865780, 37.007782>,  <32.260330, 33.502754, 37.172058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225346, 33.865780, 37.007782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606852, -0.278402, -0.744462,
		-0.789988, -0.314343, -0.526410,
		-0.087463, 0.907569, -0.410694,
		32.199108, 34.138050, 36.884575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975502, 33.438461, 36.525326>,  <32.260330, 33.502754, 37.172058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975502, 33.438461, 36.525326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169361, 33.788330, 36.522255>,  <32.285675, 33.998253, 36.520412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169361, 33.788330, 36.522255>,  <31.975502, 33.438461, 36.525326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169361, 33.788330, 36.522255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433480, -0.247792, -0.866426,
		-0.759745, 0.416583, -0.499246,
		0.484647, 0.874676, -0.007679,
		32.314754, 34.050732, 36.519951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894382, 33.699291, 35.801712>,  <31.975502, 33.438461, 36.525326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894382, 33.699291, 35.801712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182373, 33.914196, 35.977432>,  <32.355167, 34.043140, 36.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182373, 33.914196, 35.977432>,  <31.894382, 33.699291, 35.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182373, 33.914196, 35.977432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573438, -0.104006, -0.812620,
		-0.390904, 0.836975, -0.382971,
		0.719974, 0.537266, 0.439297,
		32.398365, 34.075375, 36.109222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009640, 34.212105, 35.290073>,  <31.894382, 33.699291, 35.801712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009640, 34.212105, 35.290073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342522, 34.185890, 35.510307>,  <32.542252, 34.170162, 35.642448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342522, 34.185890, 35.510307>,  <32.009640, 34.212105, 35.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342522, 34.185890, 35.510307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550625, -0.019064, -0.834535,
		0.065185, 0.997668, 0.020218,
		0.832204, -0.065532, 0.550584,
		32.592182, 34.166229, 35.675484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537510, 34.554077, 34.885132>,  <32.009640, 34.212105, 35.290073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537510, 34.554077, 34.885132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763321, 34.373703, 35.161674>,  <32.898808, 34.265480, 35.327599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763321, 34.373703, 35.161674>,  <32.537510, 34.554077, 34.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763321, 34.373703, 35.161674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704878, -0.172444, -0.688048,
		0.429482, 0.875742, 0.220503,
		0.564528, -0.450932, 0.691353,
		32.932678, 34.238422, 35.369080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181255, 34.861439, 35.028191>,  <32.537510, 34.554077, 34.885132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181255, 34.861439, 35.028191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246460, 34.473549, 35.100929>,  <33.285583, 34.240814, 35.144573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246460, 34.473549, 35.100929>,  <33.181255, 34.861439, 35.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246460, 34.473549, 35.100929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808828, 0.025803, -0.587479,
		0.564999, 0.242848, 0.788544,
		0.163015, -0.969721, 0.181844,
		33.295364, 34.182632, 35.155483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822147, 34.862465, 34.936527>,  <33.181255, 34.861439, 35.028191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822147, 34.862465, 34.936527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715858, 34.476856, 34.933445>,  <33.652084, 34.245491, 34.931595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715858, 34.476856, 34.933445>,  <33.822147, 34.862465, 34.936527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715858, 34.476856, 34.933445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713848, -0.191383, -0.673642,
		0.647929, -0.184503, 0.739017,
		-0.265725, -0.964018, -0.007704,
		33.636143, 34.187653, 34.931133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343956, 34.586994, 34.644524>,  <33.822147, 34.862465, 34.936527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343956, 34.586994, 34.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137154, 34.244713, 34.653252>,  <34.013073, 34.039345, 34.658489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137154, 34.244713, 34.653252>,  <34.343956, 34.586994, 34.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137154, 34.244713, 34.653252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586783, -0.372853, -0.718795,
		0.623214, -0.358814, 0.694879,
		-0.517001, -0.855706, 0.021822,
		33.982052, 33.987999, 34.659798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820702, 34.052094, 34.828087>,  <34.343956, 34.586994, 34.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820702, 34.052094, 34.828087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526264, 33.893307, 34.608788>,  <34.349602, 33.798035, 34.477207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526264, 33.893307, 34.608788>,  <34.820702, 34.052094, 34.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526264, 33.893307, 34.608788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671077, -0.533798, -0.514504,
		-0.088413, -0.746643, 0.659324,
		-0.736097, -0.396969, -0.548250,
		34.305435, 33.774216, 34.444313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046677, 33.331566, 34.634914>,  <34.820702, 34.052094, 34.828087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046677, 33.331566, 34.634914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777168, 33.463974, 34.370651>,  <34.615463, 33.543419, 34.212093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777168, 33.463974, 34.370651>,  <35.046677, 33.331566, 34.634914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777168, 33.463974, 34.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523802, -0.416680, -0.742973,
		-0.521219, -0.846644, 0.107357,
		-0.673767, 0.331018, -0.660655,
		34.575039, 33.563278, 34.172455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998638, 32.725945, 34.160759>,  <35.046677, 33.331566, 34.634914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998638, 32.725945, 34.160759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800461, 33.024036, 33.982246>,  <34.681553, 33.202892, 33.875141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800461, 33.024036, 33.982246>,  <34.998638, 32.725945, 34.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800461, 33.024036, 33.982246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425420, -0.239758, -0.872659,
		-0.757332, -0.622210, -0.198250,
		-0.495445, 0.745232, -0.446277,
		34.651829, 33.247604, 33.848362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617931, 32.482334, 33.612473>,  <34.998638, 32.725945, 34.160759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617931, 32.482334, 33.612473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700180, 32.859325, 33.507061>,  <34.749531, 33.085522, 33.443813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700180, 32.859325, 33.507061>,  <34.617931, 32.482334, 33.612473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700180, 32.859325, 33.507061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498248, -0.332589, -0.800708,
		-0.842298, 0.033346, -0.537979,
		0.205626, 0.942482, -0.263524,
		34.761868, 33.142071, 33.428005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511089, 32.514881, 32.828712>,  <34.617931, 32.482334, 33.612473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511089, 32.514881, 32.828712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704281, 32.858700, 32.895542>,  <34.820194, 33.064991, 32.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704281, 32.858700, 32.895542>,  <34.511089, 32.514881, 32.828712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704281, 32.858700, 32.895542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500269, -0.114268, -0.858297,
		-0.718654, 0.498120, -0.485193,
		0.482977, 0.859546, 0.167075,
		34.849174, 33.116562, 32.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392200, 32.881210, 32.155304>,  <34.511089, 32.514881, 32.828712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392200, 32.881210, 32.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710007, 33.043339, 32.336178>,  <34.900688, 33.140614, 32.444702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710007, 33.043339, 32.336178>,  <34.392200, 32.881210, 32.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710007, 33.043339, 32.336178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502383, -0.020437, -0.864404,
		-0.341116, 0.913948, -0.219862,
		0.794513, 0.405317, 0.452180,
		34.948360, 33.164932, 32.471832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575653, 33.449169, 31.764458>,  <34.392200, 32.881210, 32.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575653, 33.449169, 31.764458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897419, 33.353931, 31.982168>,  <35.090477, 33.296791, 32.112793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897419, 33.353931, 31.982168>,  <34.575653, 33.449169, 31.764458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897419, 33.353931, 31.982168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551426, -0.041615, -0.833185,
		0.221024, 0.970351, 0.097814,
		0.804411, -0.238092, 0.544275,
		35.138741, 33.282505, 32.145451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145557, 33.805599, 31.469629>,  <34.575653, 33.449169, 31.764458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145557, 33.805599, 31.469629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324272, 33.510288, 31.671747>,  <35.431503, 33.333103, 31.793018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324272, 33.510288, 31.671747>,  <35.145557, 33.805599, 31.469629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324272, 33.510288, 31.671747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592800, -0.178712, -0.785271,
		0.670051, 0.650390, 0.357805,
		0.446789, -0.738278, 0.505297,
		35.458309, 33.288803, 31.823336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879063, 33.923233, 31.357843>,  <35.145557, 33.805599, 31.469629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879063, 33.923233, 31.357843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856537, 33.541313, 31.474596>,  <35.843021, 33.312160, 31.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856537, 33.541313, 31.474596>,  <35.879063, 33.923233, 31.357843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856537, 33.541313, 31.474596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384017, -0.290569, -0.876414,
		0.921607, 0.062733, 0.383021,
		-0.056314, -0.954795, 0.291881,
		35.839642, 33.254875, 31.562160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554390, 33.629208, 31.399506>,  <35.879063, 33.923233, 31.357843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554390, 33.629208, 31.399506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297150, 33.326359, 31.353571>,  <36.142807, 33.144650, 31.326010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297150, 33.326359, 31.353571>,  <36.554390, 33.629208, 31.399506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297150, 33.326359, 31.353571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441745, -0.244284, -0.863242,
		0.625529, -0.605878, 0.491554,
		-0.643098, -0.757124, -0.114836,
		36.104221, 33.099220, 31.319120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961861, 33.187737, 30.952015>,  <36.554390, 33.629208, 31.399506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961861, 33.187737, 30.952015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595798, 33.030457, 30.916487>,  <36.376163, 32.936089, 30.895170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595798, 33.030457, 30.916487>,  <36.961861, 33.187737, 30.952015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595798, 33.030457, 30.916487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182836, -0.208511, -0.960778,
		0.359256, -0.895499, 0.262711,
		-0.915153, -0.393198, -0.088821,
		36.321251, 32.912498, 30.889841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061878, 32.449650, 30.698275>,  <36.961861, 33.187737, 30.952015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061878, 32.449650, 30.698275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694603, 32.588535, 30.621984>,  <36.474239, 32.671867, 30.576210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694603, 32.588535, 30.621984>,  <37.061878, 32.449650, 30.698275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694603, 32.588535, 30.621984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082578, -0.303113, -0.949370,
		-0.387446, -0.887448, 0.249642,
		-0.918187, 0.347215, -0.190724,
		36.419147, 32.692699, 30.564768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843056, 32.137203, 30.132570>,  <37.061878, 32.449650, 30.698275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843056, 32.137203, 30.132570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533550, 32.388916, 30.103497>,  <36.347847, 32.539944, 30.086052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533550, 32.388916, 30.103497>,  <36.843056, 32.137203, 30.132570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533550, 32.388916, 30.103497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047198, -0.057152, -0.997249,
		-0.631709, -0.775070, 0.014521,
		-0.773767, 0.629286, -0.072685,
		36.301418, 32.577702, 30.081692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274509, 31.839664, 29.767029>,  <36.843056, 32.137203, 30.132570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274509, 31.839664, 29.767029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212189, 32.232132, 29.721361>,  <36.174797, 32.467613, 29.693960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212189, 32.232132, 29.721361>,  <36.274509, 31.839664, 29.767029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212189, 32.232132, 29.721361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006772, -0.114517, -0.993398,
		-0.987765, -0.155546, 0.011198,
		-0.155802, 0.981168, -0.114169,
		36.165447, 32.526482, 29.687111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740238, 31.944117, 29.253683>,  <36.274509, 31.839664, 29.767029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740238, 31.944117, 29.253683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929455, 32.296345, 29.242147>,  <36.042984, 32.507683, 29.235226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929455, 32.296345, 29.242147>,  <35.740238, 31.944117, 29.253683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929455, 32.296345, 29.242147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003168, -0.034433, -0.999402,
		-0.881035, 0.472666, -0.019078,
		0.473041, 0.880569, -0.028840,
		36.071365, 32.560516, 29.233496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633068, 32.233562, 28.675108>,  <35.740238, 31.944117, 29.253683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633068, 32.233562, 28.675108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956078, 32.439014, 28.791100>,  <36.149883, 32.562286, 28.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956078, 32.439014, 28.791100>,  <35.633068, 32.233562, 28.675108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956078, 32.439014, 28.791100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240442, 0.162269, -0.957004,
		-0.538602, 0.842527, 0.007537,
		0.807524, 0.513632, 0.289977,
		36.198334, 32.593105, 28.878092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651093, 32.676437, 28.194609>,  <35.633068, 32.233562, 28.675108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651093, 32.676437, 28.194609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017555, 32.673573, 28.354908>,  <36.237434, 32.671852, 28.451088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017555, 32.673573, 28.354908>,  <35.651093, 32.676437, 28.194609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017555, 32.673573, 28.354908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397501, 0.144466, -0.906158,
		-0.051400, 0.989484, 0.135203,
		0.916161, -0.007166, 0.400746,
		36.292404, 32.671421, 28.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940464, 33.267078, 27.895447>,  <35.651093, 32.676437, 28.194609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940464, 33.267078, 27.895447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238987, 33.027882, 28.012360>,  <36.418102, 32.884365, 28.082508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238987, 33.027882, 28.012360>,  <35.940464, 33.267078, 27.895447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238987, 33.027882, 28.012360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505438, 0.223443, -0.833430,
		0.433072, 0.769730, 0.469004,
		0.746311, -0.597988, 0.292284,
		36.462879, 32.848484, 28.100044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620220, 33.599033, 27.772812>,  <35.940464, 33.267078, 27.895447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620220, 33.599033, 27.772812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701366, 33.207367, 27.776415>,  <36.750053, 32.972366, 27.778576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701366, 33.207367, 27.776415>,  <36.620220, 33.599033, 27.772812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701366, 33.207367, 27.776415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663130, 0.130611, -0.737021,
		0.720489, 0.155490, 0.675810,
		0.202868, -0.979165, 0.009006,
		36.762226, 32.913616, 27.779116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227337, 33.532787, 27.543653>,  <36.620220, 33.599033, 27.772812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227337, 33.532787, 27.543653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144173, 33.142948, 27.510365>,  <37.094273, 32.909042, 27.490391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144173, 33.142948, 27.510365>,  <37.227337, 33.532787, 27.543653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144173, 33.142948, 27.510365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499201, -0.032555, -0.865875,
		0.841173, -0.221568, 0.493290,
		-0.207909, -0.974601, -0.083222,
		37.081799, 32.850567, 27.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858959, 33.255283, 27.379986>,  <37.227337, 33.532787, 27.543653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858959, 33.255283, 27.379986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556618, 33.022064, 27.260828>,  <37.375214, 32.882133, 27.189333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556618, 33.022064, 27.260828>,  <37.858959, 33.255283, 27.379986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556618, 33.022064, 27.260828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428364, -0.096280, -0.898462,
		0.495163, -0.806714, 0.322529,
		-0.755855, -0.583045, -0.297894,
		37.329861, 32.847149, 27.171459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221046, 32.591282, 27.080338>,  <37.858959, 33.255283, 27.379986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221046, 32.591282, 27.080338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845612, 32.611099, 26.943750>,  <37.620350, 32.622990, 26.861797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845612, 32.611099, 26.943750>,  <38.221046, 32.591282, 27.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845612, 32.611099, 26.943750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323849, -0.215005, -0.921355,
		-0.119068, -0.975355, 0.185755,
		-0.938587, 0.049548, -0.341468,
		37.564037, 32.625965, 26.841311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121216, 32.023056, 26.606634>,  <38.221046, 32.591282, 27.080338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121216, 32.023056, 26.606634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850838, 32.292469, 26.487001>,  <37.688610, 32.454117, 26.415222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850838, 32.292469, 26.487001>,  <38.121216, 32.023056, 26.606634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850838, 32.292469, 26.487001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367970, -0.043158, -0.928836,
		-0.638507, -0.737899, -0.218667,
		-0.675949, 0.673531, -0.299081,
		37.648052, 32.494530, 26.397278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936829, 31.766384, 25.924677>,  <38.121216, 32.023056, 26.606634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936829, 31.766384, 25.924677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790825, 32.138676, 25.933729>,  <37.703224, 32.362049, 25.939161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790825, 32.138676, 25.933729>,  <37.936829, 31.766384, 25.924677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790825, 32.138676, 25.933729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331428, 0.152618, -0.931055,
		-0.870014, -0.332343, -0.364177,
		-0.365009, 0.930729, 0.022632,
		37.681320, 32.417892, 25.940519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527687, 31.934397, 25.310390>,  <37.936829, 31.766384, 25.924677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527687, 31.934397, 25.310390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611156, 32.308006, 25.426357>,  <37.661240, 32.532173, 25.495937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611156, 32.308006, 25.426357>,  <37.527687, 31.934397, 25.310390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611156, 32.308006, 25.426357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287768, 0.224677, -0.930972,
		-0.934690, 0.277698, -0.221898,
		0.208674, 0.934025, 0.289916,
		37.673759, 32.588215, 25.513332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381310, 32.296299, 24.755491>,  <37.527687, 31.934397, 25.310390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381310, 32.296299, 24.755491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610889, 32.539474, 24.974941>,  <37.748638, 32.685379, 25.106611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610889, 32.539474, 24.974941>,  <37.381310, 32.296299, 24.755491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610889, 32.539474, 24.974941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542074, 0.220100, -0.810995,
		-0.613789, 0.762865, -0.203223,
		0.573950, 0.607941, 0.548624,
		37.783073, 32.721855, 25.139528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464409, 32.807323, 24.300797>,  <37.381310, 32.296299, 24.755491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464409, 32.807323, 24.300797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743690, 32.879539, 24.577902>,  <37.911259, 32.922871, 24.744165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743690, 32.879539, 24.577902>,  <37.464409, 32.807323, 24.300797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743690, 32.879539, 24.577902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561026, 0.463126, -0.686122,
		-0.444709, 0.867709, 0.222068,
		0.698200, 0.180539, 0.692764,
		37.953152, 32.933701, 24.785730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592117, 33.573238, 24.363131>,  <37.464409, 32.807323, 24.300797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592117, 33.573238, 24.363131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919289, 33.381599, 24.490545>,  <38.115589, 33.266617, 24.566994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919289, 33.381599, 24.490545>,  <37.592117, 33.573238, 24.363131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919289, 33.381599, 24.490545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538110, 0.441164, -0.718200,
		0.203559, 0.758842, 0.618645,
		0.817925, -0.479096, 0.318538,
		38.164665, 33.237869, 24.586107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096096, 34.129326, 24.456770>,  <37.592117, 33.573238, 24.363131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096096, 34.129326, 24.456770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301632, 33.787212, 24.430077>,  <38.424953, 33.581944, 24.414061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301632, 33.787212, 24.430077>,  <38.096096, 34.129326, 24.456770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301632, 33.787212, 24.430077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662693, 0.445121, -0.602250,
		0.544800, 0.265237, 0.795514,
		0.513839, -0.855287, -0.066732,
		38.455784, 33.530624, 24.410057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767258, 34.305801, 24.442743>,  <38.096096, 34.129326, 24.456770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767258, 34.305801, 24.442743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759308, 33.949245, 24.261621>,  <38.754536, 33.735313, 24.152948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759308, 33.949245, 24.261621>,  <38.767258, 34.305801, 24.442743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759308, 33.949245, 24.261621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737348, 0.292794, -0.608760,
		0.675220, -0.345975, 0.651443,
		-0.019877, -0.891388, -0.452805,
		38.753345, 33.681828, 24.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580788, 34.168217, 24.225052>,  <38.767258, 34.305801, 24.442743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580788, 34.168217, 24.225052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378906, 33.883827, 24.029179>,  <39.257778, 33.713192, 23.911655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378906, 33.883827, 24.029179>,  <39.580788, 34.168217, 24.225052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378906, 33.883827, 24.029179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479740, 0.240592, -0.843780,
		0.717718, -0.660782, 0.219653,
		-0.504707, -0.710973, -0.489681,
		39.227493, 33.670536, 23.882275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113228, 33.767708, 23.876995>,  <39.580788, 34.168217, 24.225052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113228, 33.767708, 23.876995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754757, 33.741749, 23.701429>,  <39.539673, 33.726173, 23.596088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754757, 33.741749, 23.701429>,  <40.113228, 33.767708, 23.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754757, 33.741749, 23.701429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423849, 0.167288, -0.890150,
		0.131192, -0.983770, -0.122414,
		-0.896181, -0.064896, -0.438916,
		39.485901, 33.722279, 23.569754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229488, 33.359726, 23.237551>,  <40.113228, 33.767708, 23.876995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229488, 33.359726, 23.237551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890533, 33.549030, 23.141256>,  <39.687160, 33.662613, 23.083481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890533, 33.549030, 23.141256>,  <40.229488, 33.359726, 23.237551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890533, 33.549030, 23.141256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372797, 0.207449, -0.904427,
		-0.378089, -0.856148, -0.352220,
		-0.847391, 0.473261, -0.240735,
		39.636314, 33.691010, 23.069036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115150, 33.230625, 22.528797>,  <40.229488, 33.359726, 23.237551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115150, 33.230625, 22.528797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832504, 33.510185, 22.573042>,  <39.662918, 33.677921, 22.599588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832504, 33.510185, 22.573042>,  <40.115150, 33.230625, 22.528797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832504, 33.510185, 22.573042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174039, 0.323178, -0.930197,
		-0.685861, -0.638041, -0.349998,
		-0.706616, 0.698899, 0.110611,
		39.620518, 33.719856, 22.606226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557037, 33.128674, 22.031235>,  <40.115150, 33.230625, 22.528797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557037, 33.128674, 22.031235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532932, 33.516834, 22.124779>,  <39.518471, 33.749729, 22.180904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532932, 33.516834, 22.124779>,  <39.557037, 33.128674, 22.031235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532932, 33.516834, 22.124779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082043, 0.228676, -0.970039,
		-0.994805, -0.077644, 0.065834,
		-0.060263, 0.970401, 0.233858,
		39.514854, 33.807953, 22.194937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725269, 32.340637, 21.898623>,  <39.557037, 33.128674, 22.031235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725269, 32.340637, 21.898623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049320, 32.566746, 21.960800>,  <40.243752, 32.702412, 21.998106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049320, 32.566746, 21.960800>,  <39.725269, 32.340637, 21.898623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049320, 32.566746, 21.960800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235024, -0.070238, -0.969448,
		-0.537085, 0.821908, -0.189755,
		0.810126, 0.565273, 0.155444,
		40.292358, 32.736328, 22.007433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752903, 32.748993, 21.401110>,  <39.725269, 32.340637, 21.898623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752903, 32.748993, 21.401110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133556, 32.699245, 21.513483>,  <40.361950, 32.669395, 21.580906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133556, 32.699245, 21.513483>,  <39.752903, 32.748993, 21.401110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133556, 32.699245, 21.513483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271494, -0.087594, -0.958446,
		0.143812, 0.988362, -0.049591,
		0.951635, -0.124373, 0.280931,
		40.419048, 32.661934, 21.597763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127525, 33.044724, 20.842676>,  <39.752903, 32.748993, 21.401110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127525, 33.044724, 20.842676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409424, 32.841343, 21.040586>,  <40.578564, 32.719315, 21.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409424, 32.841343, 21.040586>,  <40.127525, 33.044724, 20.842676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409424, 32.841343, 21.040586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513350, -0.115906, -0.850316,
		0.489691, 0.853255, 0.179329,
		0.704751, -0.508451, 0.494776,
		40.620850, 32.688808, 21.189020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287361, 33.643581, 20.511250>,  <40.127525, 33.044724, 20.842676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287361, 33.643581, 20.511250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040306, 33.538490, 20.807764>,  <39.892075, 33.475437, 20.985672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040306, 33.538490, 20.807764>,  <40.287361, 33.643581, 20.511250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040306, 33.538490, 20.807764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324183, 0.773702, 0.544325,
		-0.716542, 0.576506, -0.392693,
		-0.617634, -0.262728, 0.741284,
		39.855015, 33.459671, 21.030149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893166, 34.210533, 20.770897>,  <40.287361, 33.643581, 20.511250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893166, 34.210533, 20.770897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938820, 33.943314, 21.065023>,  <39.966213, 33.782982, 21.241499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938820, 33.943314, 21.065023>,  <39.893166, 34.210533, 20.770897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938820, 33.943314, 21.065023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211346, 0.739537, 0.639076,
		-0.970724, 0.082464, 0.225598,
		0.114137, -0.668046, 0.735314,
		39.973061, 33.742901, 21.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793621, 34.865711, 20.414707>,  <39.893166, 34.210533, 20.770897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793621, 34.865711, 20.414707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869827, 34.771946, 20.796022>,  <39.915550, 34.715687, 21.024811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869827, 34.771946, 20.796022>,  <39.793621, 34.865711, 20.414707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869827, 34.771946, 20.796022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118216, -0.969484, -0.214768,
		0.974540, -0.071777, -0.212413,
		0.190515, -0.234410, 0.953287,
		39.926983, 34.701622, 21.082008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183392, 35.017956, 20.885210>,  <39.793621, 34.865711, 20.414707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183392, 35.017956, 20.885210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108486, 35.391830, 20.764347>,  <39.063541, 35.616154, 20.691830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108486, 35.391830, 20.764347>,  <39.183392, 35.017956, 20.885210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108486, 35.391830, 20.764347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330375, 0.229750, 0.915460,
		0.925086, 0.271257, 0.265772,
		-0.187264, 0.934684, -0.302155,
		39.052307, 35.672237, 20.673700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389191, 35.491535, 21.391489>,  <39.183392, 35.017956, 20.885210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389191, 35.491535, 21.391489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128216, 35.718052, 21.190039>,  <38.971630, 35.853962, 21.069168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128216, 35.718052, 21.190039>,  <39.389191, 35.491535, 21.391489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128216, 35.718052, 21.190039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349852, 0.364437, 0.863012,
		0.672257, 0.739255, -0.039653,
		-0.652437, 0.566293, -0.503626,
		38.932484, 35.887939, 21.038952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493595, 36.235367, 21.423258>,  <39.389191, 35.491535, 21.391489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493595, 36.235367, 21.423258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100540, 36.175850, 21.378920>,  <38.864708, 36.140141, 21.352316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100540, 36.175850, 21.378920>,  <39.493595, 36.235367, 21.423258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100540, 36.175850, 21.378920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171236, 0.497167, 0.850590,
		-0.071455, 0.854801, -0.514013,
		-0.982635, -0.148797, -0.110848,
		38.805748, 36.131210, 21.345665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916721, 36.761600, 21.419161>,  <39.493595, 36.235367, 21.423258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916721, 36.761600, 21.419161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765358, 36.425201, 21.573833>,  <38.674538, 36.223362, 21.666637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765358, 36.425201, 21.573833>,  <38.916721, 36.761600, 21.419161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765358, 36.425201, 21.573833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275553, 0.501157, 0.820312,
		-0.883672, 0.203863, -0.421383,
		-0.378411, -0.841000, 0.386683,
		38.651836, 36.172901, 21.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088360, 36.810837, 21.608387>,  <38.916721, 36.761600, 21.419161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088360, 36.810837, 21.608387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349648, 36.576630, 21.800417>,  <38.506420, 36.436104, 21.915634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349648, 36.576630, 21.800417>,  <38.088360, 36.810837, 21.608387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349648, 36.576630, 21.800417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458507, 0.198684, 0.866196,
		-0.602559, -0.785933, -0.138681,
		0.653218, -0.585521, 0.480075,
		38.545612, 36.400974, 21.944439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655579, 36.333309, 21.979502>,  <38.088360, 36.810837, 21.608387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655579, 36.333309, 21.979502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020298, 36.376133, 22.138077>,  <38.239128, 36.401825, 22.233223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020298, 36.376133, 22.138077>,  <37.655579, 36.333309, 21.979502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020298, 36.376133, 22.138077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408320, 0.133872, 0.902969,
		0.043595, -0.985199, 0.165777,
		0.911798, 0.107055, 0.396440,
		38.293839, 36.408249, 22.257010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490486, 36.199055, 22.624666>,  <37.655579, 36.333309, 21.979502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490486, 36.199055, 22.624666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869354, 36.322887, 22.658190>,  <38.096676, 36.397186, 22.678303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869354, 36.322887, 22.658190>,  <37.490486, 36.199055, 22.624666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869354, 36.322887, 22.658190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050009, -0.115551, 0.992042,
		0.316802, -0.943826, -0.093964,
		0.947173, 0.309581, 0.083807,
		38.153507, 36.415760, 22.683332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796436, 35.687798, 23.032330>,  <37.490486, 36.199055, 22.624666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796436, 35.687798, 23.032330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968052, 36.048256, 23.057186>,  <38.071022, 36.264530, 23.072100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968052, 36.048256, 23.057186>,  <37.796436, 35.687798, 23.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968052, 36.048256, 23.057186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169659, 0.012821, 0.985419,
		0.887212, -0.433322, 0.158388,
		0.429034, 0.901148, 0.062142,
		38.096764, 36.318600, 23.075829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338501, 35.679535, 23.494904>,  <37.796436, 35.687798, 23.032330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338501, 35.679535, 23.494904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227516, 36.063046, 23.470343>,  <38.160927, 36.293152, 23.455606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227516, 36.063046, 23.470343>,  <38.338501, 35.679535, 23.494904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227516, 36.063046, 23.470343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289966, -0.022642, 0.956769,
		0.915934, 0.283271, 0.284293,
		-0.277462, 0.958773, -0.061400,
		38.144279, 36.350677, 23.451923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548828, 35.892937, 24.133047>,  <38.338501, 35.679535, 23.494904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548828, 35.892937, 24.133047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287182, 36.175667, 24.025328>,  <38.130192, 36.345306, 23.960697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287182, 36.175667, 24.025328>,  <38.548828, 35.892937, 24.133047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287182, 36.175667, 24.025328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333362, 0.050189, 0.941462,
		0.678969, 0.705601, 0.202801,
		-0.654118, 0.706830, -0.269297,
		38.090946, 36.387714, 23.944538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664989, 36.444904, 24.659012>,  <38.548828, 35.892937, 24.133047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664989, 36.444904, 24.659012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315399, 36.508720, 24.475401>,  <38.105644, 36.547012, 24.365234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315399, 36.508720, 24.475401>,  <38.664989, 36.444904, 24.659012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315399, 36.508720, 24.475401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431666, 0.178983, 0.884098,
		0.223211, 0.970830, -0.087558,
		-0.873980, 0.159544, -0.459026,
		38.053204, 36.556583, 24.337694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386288, 36.956947, 24.960293>,  <38.664989, 36.444904, 24.659012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386288, 36.956947, 24.960293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065639, 36.797459, 24.782114>,  <37.873249, 36.701767, 24.675207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065639, 36.797459, 24.782114>,  <38.386288, 36.956947, 24.960293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065639, 36.797459, 24.782114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515207, 0.082787, 0.853058,
		-0.303251, 0.913330, -0.271786,
		-0.801623, -0.398717, -0.445449,
		37.825153, 36.677845, 24.648479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810566, 37.404434, 25.206064>,  <38.386288, 36.956947, 24.960293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810566, 37.404434, 25.206064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682693, 37.038193, 25.108515>,  <37.605968, 36.818447, 25.049986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682693, 37.038193, 25.108515>,  <37.810566, 37.404434, 25.206064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682693, 37.038193, 25.108515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609078, 0.001411, 0.793109,
		-0.725830, 0.402079, -0.558125,
		-0.319680, -0.915604, -0.243873,
		37.586788, 36.763512, 25.035353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056755, 37.385414, 25.194027>,  <37.810566, 37.404434, 25.206064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056755, 37.385414, 25.194027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161598, 37.001831, 25.237307>,  <37.224503, 36.771683, 25.263273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161598, 37.001831, 25.237307>,  <37.056755, 37.385414, 25.194027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161598, 37.001831, 25.237307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754370, -0.133676, 0.642695,
		-0.601851, -0.250077, -0.758444,
		0.262109, -0.958954, 0.108197,
		37.240231, 36.714146, 25.269766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461929, 37.165424, 25.551640>,  <37.056755, 37.385414, 25.194027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461929, 37.165424, 25.551640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699562, 36.843719, 25.557775>,  <36.842140, 36.650696, 25.561457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699562, 36.843719, 25.557775>,  <36.461929, 37.165424, 25.551640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699562, 36.843719, 25.557775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558811, -0.398911, 0.727049,
		-0.578617, -0.440498, -0.686414,
		0.594082, -0.804258, 0.015339,
		36.877789, 36.602444, 25.562378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983028, 36.553616, 25.739378>,  <36.461929, 37.165424, 25.551640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983028, 36.553616, 25.739378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360641, 36.450531, 25.821724>,  <36.587212, 36.388680, 25.871132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360641, 36.450531, 25.821724>,  <35.983028, 36.553616, 25.739378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360641, 36.450531, 25.821724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312836, -0.501769, 0.806450,
		-0.104535, -0.825720, -0.554309,
		0.944037, -0.257710, 0.205863,
		36.643852, 36.373219, 25.883482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934616, 35.929798, 25.900972>,  <35.983028, 36.553616, 25.739378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934616, 35.929798, 25.900972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264046, 36.045502, 26.096136>,  <36.461704, 36.114925, 26.213234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264046, 36.045502, 26.096136>,  <35.934616, 35.929798, 25.900972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264046, 36.045502, 26.096136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358586, -0.400968, 0.842995,
		0.439482, -0.869225, -0.226501,
		0.823572, 0.289261, 0.487910,
		36.511116, 36.132278, 26.242510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118523, 35.528721, 26.592800>,  <35.934616, 35.929798, 25.900972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118523, 35.528721, 26.592800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350887, 35.843822, 26.674763>,  <36.490307, 36.032883, 26.723940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350887, 35.843822, 26.674763>,  <36.118523, 35.528721, 26.592800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350887, 35.843822, 26.674763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425671, 0.079438, 0.901384,
		0.693789, -0.610850, 0.381470,
		0.580913, 0.787751, 0.204908,
		36.525162, 36.080147, 26.736235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600674, 35.289177, 27.172478>,  <36.118523, 35.528721, 26.592800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600674, 35.289177, 27.172478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544426, 35.684361, 27.146683>,  <36.510677, 35.921471, 27.131207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544426, 35.684361, 27.146683>,  <36.600674, 35.289177, 27.172478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544426, 35.684361, 27.146683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425594, -0.001510, 0.904913,
		0.893922, 0.154694, 0.420682,
		-0.140619, 0.987961, -0.064487,
		36.502239, 35.980747, 27.127337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701672, 35.540920, 27.846327>,  <36.600674, 35.289177, 27.172478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701672, 35.540920, 27.846327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517971, 35.845825, 27.663881>,  <36.407753, 36.028770, 27.554413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517971, 35.845825, 27.663881>,  <36.701672, 35.540920, 27.846327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517971, 35.845825, 27.663881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327618, 0.331925, 0.884586,
		0.825685, 0.555677, 0.097296,
		-0.459249, 0.762265, -0.456115,
		36.380196, 36.074505, 27.527046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838146, 36.205711, 28.296373>,  <36.701672, 35.540920, 27.846327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838146, 36.205711, 28.296373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497482, 36.257481, 28.093229>,  <36.293083, 36.288544, 27.971342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497482, 36.257481, 28.093229>,  <36.838146, 36.205711, 28.296373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497482, 36.257481, 28.093229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464522, 0.262293, 0.845826,
		0.242681, 0.956269, -0.163262,
		-0.851660, 0.129427, -0.507862,
		36.241985, 36.296310, 27.940870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521355, 36.772198, 28.631287>,  <36.838146, 36.205711, 28.296373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521355, 36.772198, 28.631287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188347, 36.630192, 28.461170>,  <35.988541, 36.544987, 28.359100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188347, 36.630192, 28.461170>,  <36.521355, 36.772198, 28.631287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188347, 36.630192, 28.461170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550065, 0.438428, 0.710781,
		-0.065878, 0.825678, -0.560282,
		-0.832519, -0.355017, -0.425293,
		35.938591, 36.523685, 28.333582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053169, 37.385963, 28.699242>,  <36.521355, 36.772198, 28.631287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053169, 37.385963, 28.699242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845966, 37.053734, 28.617455>,  <35.721645, 36.854397, 28.568382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845966, 37.053734, 28.617455>,  <36.053169, 37.385963, 28.699242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845966, 37.053734, 28.617455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675510, 0.250582, 0.693465,
		-0.524740, 0.497343, -0.690867,
		-0.518010, -0.830577, -0.204470,
		35.690563, 36.804562, 28.556114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434792, 37.621578, 28.670790>,  <36.053169, 37.385963, 28.699242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434792, 37.621578, 28.670790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363632, 37.230179, 28.712530>,  <35.320938, 36.995338, 28.737574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363632, 37.230179, 28.712530>,  <35.434792, 37.621578, 28.670790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363632, 37.230179, 28.712530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690775, 0.199698, 0.694946,
		-0.700844, 0.051548, -0.711450,
		-0.177898, -0.978500, 0.104349,
		35.310265, 36.936630, 28.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775745, 37.576817, 28.733973>,  <35.434792, 37.621578, 28.670790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775745, 37.576817, 28.733973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903332, 37.230507, 28.888218>,  <34.979885, 37.022720, 28.980764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903332, 37.230507, 28.888218>,  <34.775745, 37.576817, 28.733973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903332, 37.230507, 28.888218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689638, 0.067072, 0.721042,
		-0.650123, -0.495922, -0.575676,
		0.318969, -0.865773, 0.385611,
		34.999023, 36.970776, 29.003901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159679, 37.107941, 28.950521>,  <34.775745, 37.576817, 28.733973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159679, 37.107941, 28.950521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478245, 36.980858, 29.156353>,  <34.669384, 36.904610, 29.279852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478245, 36.980858, 29.156353>,  <34.159679, 37.107941, 28.950521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478245, 36.980858, 29.156353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530282, 0.042197, 0.846771,
		-0.290737, -0.947250, -0.134867,
		0.796413, -0.317705, 0.514578,
		34.717167, 36.885548, 29.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917984, 36.701553, 29.458340>,  <34.159679, 37.107941, 28.950521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917984, 36.701553, 29.458340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290222, 36.765125, 29.590239>,  <34.513565, 36.803268, 29.669378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290222, 36.765125, 29.590239>,  <33.917984, 36.701553, 29.458340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290222, 36.765125, 29.590239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311956, -0.126957, 0.941576,
		0.191510, -0.979093, -0.068566,
		0.930595, 0.158932, 0.329747,
		34.569401, 36.812805, 29.689163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060417, 36.158619, 29.897299>,  <33.917984, 36.701553, 29.458340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060417, 36.158619, 29.897299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293770, 36.463280, 30.010120>,  <34.433781, 36.646076, 30.077814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293770, 36.463280, 30.010120>,  <34.060417, 36.158619, 29.897299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293770, 36.463280, 30.010120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290415, -0.128699, 0.948207,
		0.758504, -0.635077, 0.146114,
		0.583380, 0.761652, 0.282055,
		34.468784, 36.691776, 30.094736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386276, 35.937637, 30.533743>,  <34.060417, 36.158619, 29.897299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386276, 35.937637, 30.533743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461018, 36.330563, 30.538448>,  <34.505863, 36.566319, 30.541271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461018, 36.330563, 30.538448>,  <34.386276, 35.937637, 30.533743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461018, 36.330563, 30.538448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070018, -0.025263, 0.997226,
		0.979889, -0.185513, -0.073500,
		0.186855, 0.982317, 0.011766,
		34.517075, 36.625259, 30.541979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005142, 36.057678, 30.978870>,  <34.386276, 35.937637, 30.533743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005142, 36.057678, 30.978870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800716, 36.401493, 30.978453>,  <34.678059, 36.607784, 30.978201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800716, 36.401493, 30.978453>,  <35.005142, 36.057678, 30.978870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800716, 36.401493, 30.978453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104092, -0.060683, 0.992715,
		0.853213, 0.507455, 0.120484,
		-0.511069, 0.859539, -0.001047,
		34.647396, 36.659355, 30.978138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320621, 36.426910, 31.525702>,  <35.005142, 36.057678, 30.978870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320621, 36.426910, 31.525702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989330, 36.645771, 31.477266>,  <34.790554, 36.777088, 31.448206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989330, 36.645771, 31.477266>,  <35.320621, 36.426910, 31.525702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989330, 36.645771, 31.477266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073604, 0.107993, 0.991423,
		0.555535, 0.830038, -0.049170,
		-0.828229, 0.547152, -0.121088,
		34.740860, 36.809917, 31.440941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372623, 36.707314, 32.168682>,  <35.320621, 36.426910, 31.525702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372623, 36.707314, 32.168682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010727, 36.819187, 32.040165>,  <34.793591, 36.886311, 31.963057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010727, 36.819187, 32.040165>,  <35.372623, 36.707314, 32.168682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010727, 36.819187, 32.040165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289111, 0.150745, 0.945352,
		0.312836, 0.948183, -0.055524,
		-0.904737, 0.279688, -0.321288,
		34.739307, 36.903095, 31.943779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218357, 37.439381, 32.426552>,  <35.372623, 36.707314, 32.168682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218357, 37.439381, 32.426552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885288, 37.223385, 32.377449>,  <34.685448, 37.093788, 32.347988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885288, 37.223385, 32.377449>,  <35.218357, 37.439381, 32.426552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885288, 37.223385, 32.377449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277277, 0.214680, 0.936499,
		-0.479344, 0.813835, -0.328484,
		-0.832675, -0.539986, -0.122752,
		34.635487, 37.061390, 32.340622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560192, 37.925831, 32.497845>,  <35.218357, 37.439381, 32.426552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560192, 37.925831, 32.497845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430714, 37.549419, 32.537209>,  <34.353027, 37.323574, 32.560825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430714, 37.549419, 32.537209>,  <34.560192, 37.925831, 32.497845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430714, 37.549419, 32.537209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382710, 0.225344, 0.895965,
		-0.865305, 0.252360, -0.433085,
		-0.323699, -0.941028, 0.098410,
		34.333603, 37.267113, 32.566730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897724, 37.988503, 32.611801>,  <34.560192, 37.925831, 32.497845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897724, 37.988503, 32.611801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950813, 37.610260, 32.730602>,  <33.982666, 37.383316, 32.801884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950813, 37.610260, 32.730602>,  <33.897724, 37.988503, 32.611801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950813, 37.610260, 32.730602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666279, 0.136727, 0.733060,
		-0.733796, -0.295183, -0.611891,
		0.132724, -0.945607, 0.297004,
		33.990631, 37.326576, 32.819702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225811, 37.794430, 32.705654>,  <33.897724, 37.988503, 32.611801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225811, 37.794430, 32.705654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449913, 37.539539, 32.917336>,  <33.584373, 37.386604, 33.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449913, 37.539539, 32.917336>,  <33.225811, 37.794430, 32.705654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449913, 37.539539, 32.917336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559140, 0.180422, 0.809204,
		-0.611125, -0.749261, -0.255215,
		0.560259, -0.637225, 0.529202,
		33.617992, 37.348373, 33.076096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797127, 37.209911, 32.897350>,  <33.225811, 37.794430, 32.705654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797127, 37.209911, 32.897350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102081, 37.218079, 33.156071>,  <33.285053, 37.222977, 33.311302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102081, 37.218079, 33.156071>,  <32.797127, 37.209911, 32.897350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102081, 37.218079, 33.156071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638565, -0.138296, 0.757040,
		0.104906, -0.990180, -0.092397,
		0.762384, 0.020417, 0.646803,
		33.330795, 37.224205, 33.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621639, 36.699829, 33.392365>,  <32.797127, 37.209911, 32.897350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621639, 36.699829, 33.392365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914768, 36.893429, 33.583660>,  <33.090645, 37.009590, 33.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914768, 36.893429, 33.583660>,  <32.621639, 36.699829, 33.392365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914768, 36.893429, 33.583660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449881, -0.182636, 0.874215,
		0.510465, -0.855795, 0.083904,
		0.732825, 0.484003, 0.478235,
		33.134617, 37.038631, 33.727131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747272, 36.289501, 33.934826>,  <32.621639, 36.699829, 33.392365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747272, 36.289501, 33.934826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929977, 36.631363, 34.033569>,  <33.039600, 36.836479, 34.092815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929977, 36.631363, 34.033569>,  <32.747272, 36.289501, 33.934826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929977, 36.631363, 34.033569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269011, -0.131808, 0.954075,
		0.847939, -0.502194, 0.169705,
		0.456763, 0.854650, 0.246861,
		33.067005, 36.887756, 34.107628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111145, 36.161865, 34.515907>,  <32.747272, 36.289501, 33.934826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111145, 36.161865, 34.515907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071877, 36.559933, 34.515377>,  <33.048317, 36.798775, 34.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071877, 36.559933, 34.515377>,  <33.111145, 36.161865, 34.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071877, 36.559933, 34.515377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292853, -0.027612, 0.955759,
		0.951105, 0.094216, 0.294149,
		-0.098170, 0.995169, -0.001329,
		33.042427, 36.858482, 34.514977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400543, 36.345333, 35.105316>,  <33.111145, 36.161865, 34.515907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400543, 36.345333, 35.105316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163952, 36.652470, 35.006870>,  <33.021996, 36.836750, 34.947803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163952, 36.652470, 35.006870>,  <33.400543, 36.345333, 35.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163952, 36.652470, 35.006870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357343, 0.024004, 0.933665,
		0.722812, 0.640193, 0.260184,
		-0.591480, 0.767839, -0.246119,
		32.986507, 36.882820, 34.933033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509331, 36.866180, 35.617207>,  <33.400543, 36.345333, 35.105316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509331, 36.866180, 35.617207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146828, 36.958923, 35.475819>,  <32.929325, 37.014568, 35.390984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146828, 36.958923, 35.475819>,  <33.509331, 36.866180, 35.617207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146828, 36.958923, 35.475819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362062, 0.005881, 0.932136,
		0.218201, 0.972732, 0.078617,
		-0.906256, 0.231857, -0.353472,
		32.874950, 37.028481, 35.369778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227436, 37.294052, 36.131092>,  <33.509331, 36.866180, 35.617207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227436, 37.294052, 36.131092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927372, 37.145428, 35.912296>,  <32.747334, 37.056252, 35.781017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927372, 37.145428, 35.912296>,  <33.227436, 37.294052, 36.131092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927372, 37.145428, 35.912296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580174, -0.027037, 0.814044,
		-0.317255, 0.928015, -0.195287,
		-0.750165, -0.371560, -0.546988,
		32.702324, 37.033958, 35.748199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984039, 37.203083, 36.031811>,  <33.227436, 37.294052, 36.131092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984039, 37.203083, 36.031811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174660, 36.999268, 36.318382>,  <34.289032, 36.876976, 36.490326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174660, 36.999268, 36.318382>,  <33.984039, 37.203083, 36.031811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174660, 36.999268, 36.318382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875651, 0.202479, -0.438449,
		0.078346, 0.836284, 0.542671,
		0.476547, -0.509541, 0.716429,
		34.317623, 36.846405, 36.533310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514889, 37.644951, 36.255268>,  <33.984039, 37.203083, 36.031811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514889, 37.644951, 36.255268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631958, 37.273193, 36.345222>,  <34.702202, 37.050140, 36.399197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631958, 37.273193, 36.345222>,  <34.514889, 37.644951, 36.255268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631958, 37.273193, 36.345222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874831, 0.165313, -0.455350,
		0.386021, 0.330008, 0.861442,
		0.292677, -0.929390, 0.224887,
		34.719761, 36.994377, 36.412689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243481, 37.710381, 36.331032>,  <34.514889, 37.644951, 36.255268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243481, 37.710381, 36.331032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199017, 37.316616, 36.276501>,  <35.172337, 37.080357, 36.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199017, 37.316616, 36.276501>,  <35.243481, 37.710381, 36.331032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199017, 37.316616, 36.276501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786193, -0.003199, -0.617972,
		0.607901, -0.175873, 0.774290,
		-0.111162, -0.984408, -0.136325,
		35.165668, 37.021294, 36.235603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960255, 37.356110, 36.302547>,  <35.243481, 37.710381, 36.331032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960255, 37.356110, 36.302547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700314, 37.102531, 36.134834>,  <35.544350, 36.950382, 36.034206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700314, 37.102531, 36.134834>,  <35.960255, 37.356110, 36.302547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700314, 37.102531, 36.134834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649185, -0.176069, -0.739972,
		0.395281, -0.753067, 0.525969,
		-0.649855, -0.633948, -0.419283,
		35.505356, 36.912346, 36.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473953, 36.939411, 36.002716>,  <35.960255, 37.356110, 36.302547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473953, 36.939411, 36.002716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145405, 36.813648, 35.812351>,  <35.948277, 36.738190, 35.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145405, 36.813648, 35.812351>,  <36.473953, 36.939411, 36.002716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145405, 36.813648, 35.812351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500811, 0.001820, -0.865555,
		0.273006, -0.949285, 0.155966,
		-0.821374, -0.314411, -0.475910,
		35.898991, 36.719326, 35.669579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703217, 36.423023, 35.631748>,  <36.473953, 36.939411, 36.002716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703217, 36.423023, 35.631748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372810, 36.561935, 35.454170>,  <36.174564, 36.645283, 35.347622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372810, 36.561935, 35.454170>,  <36.703217, 36.423023, 35.631748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372810, 36.561935, 35.454170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430295, -0.120214, -0.894648,
		-0.364064, -0.930024, -0.050135,
		-0.826017, 0.347281, -0.443950,
		36.125004, 36.666119, 35.320984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620052, 36.065895, 35.049648>,  <36.703217, 36.423023, 35.631748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620052, 36.065895, 35.049648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390789, 36.387413, 34.985889>,  <36.253231, 36.580322, 34.947632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390789, 36.387413, 34.985889>,  <36.620052, 36.065895, 35.049648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390789, 36.387413, 34.985889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409940, 0.112820, -0.905108,
		-0.709536, -0.584113, -0.394171,
		-0.573156, 0.803793, -0.159401,
		36.218842, 36.628551, 34.938068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274971, 35.994392, 34.357212>,  <36.620052, 36.065895, 35.049648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274971, 35.994392, 34.357212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245735, 36.386135, 34.432602>,  <36.228195, 36.621181, 34.477837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245735, 36.386135, 34.432602>,  <36.274971, 35.994392, 34.357212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245735, 36.386135, 34.432602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183118, 0.198947, -0.962750,
		-0.980370, -0.035850, -0.193878,
		-0.073086, 0.979354, 0.188477,
		36.223808, 36.679943, 34.489143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827797, 36.163666, 33.905170>,  <36.274971, 35.994392, 34.357212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827797, 36.163666, 33.905170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982693, 36.517780, 34.008179>,  <36.075630, 36.730247, 34.069984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982693, 36.517780, 34.008179>,  <35.827797, 36.163666, 33.905170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982693, 36.517780, 34.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137170, 0.220883, -0.965606,
		-0.911717, 0.409248, -0.035900,
		0.387243, 0.885284, 0.257519,
		36.098866, 36.783367, 34.085434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597935, 36.580482, 33.442757>,  <35.827797, 36.163666, 33.905170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597935, 36.580482, 33.442757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941517, 36.752125, 33.554523>,  <36.147667, 36.855110, 33.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941517, 36.752125, 33.554523>,  <35.597935, 36.580482, 33.442757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941517, 36.752125, 33.554523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162837, 0.288442, -0.943549,
		-0.485476, 0.855962, 0.177884,
		0.858951, 0.429105, 0.279414,
		36.199203, 36.880856, 33.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604286, 37.239677, 33.118176>,  <35.597935, 36.580482, 33.442757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604286, 37.239677, 33.118176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981380, 37.144592, 33.211761>,  <36.207638, 37.087543, 33.267914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981380, 37.144592, 33.211761>,  <35.604286, 37.239677, 33.118176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981380, 37.144592, 33.211761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309853, 0.364556, -0.878117,
		0.123444, 0.900329, 0.417336,
		0.942737, -0.237711, 0.233968,
		36.264202, 37.073280, 33.281952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972076, 37.837406, 32.790215>,  <35.604286, 37.239677, 33.118176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972076, 37.837406, 32.790215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275398, 37.585644, 32.858120>,  <36.457390, 37.434586, 32.898861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275398, 37.585644, 32.858120>,  <35.972076, 37.837406, 32.790215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275398, 37.585644, 32.858120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477739, 0.359363, -0.801638,
		0.443551, 0.688988, 0.573200,
		0.758306, -0.629407, 0.169761,
		36.502892, 37.396820, 32.909050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517082, 38.226799, 32.684196>,  <35.972076, 37.837406, 32.790215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517082, 38.226799, 32.684196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670788, 37.859661, 32.644379>,  <36.763012, 37.639378, 32.620487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670788, 37.859661, 32.644379>,  <36.517082, 38.226799, 32.684196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670788, 37.859661, 32.644379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583919, 0.325139, -0.743857,
		0.715109, 0.227709, 0.660884,
		0.384262, -0.917842, -0.099546,
		36.786068, 37.584309, 32.614513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187325, 38.292229, 32.517967>,  <36.517082, 38.226799, 32.684196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187325, 38.292229, 32.517967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136429, 37.911057, 32.407890>,  <37.105892, 37.682354, 32.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136429, 37.911057, 32.407890>,  <37.187325, 38.292229, 32.517967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136429, 37.911057, 32.407890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439737, 0.194490, -0.876816,
		0.889068, -0.232578, 0.394292,
		-0.127242, -0.952933, -0.275188,
		37.098255, 37.625175, 32.325333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823902, 38.088234, 32.342819>,  <37.187325, 38.292229, 32.517967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823902, 38.088234, 32.342819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557678, 37.859726, 32.150707>,  <37.397942, 37.722622, 32.035439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557678, 37.859726, 32.150707>,  <37.823902, 38.088234, 32.342819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557678, 37.859726, 32.150707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413559, 0.253396, -0.874506,
		0.621284, -0.780664, 0.067605,
		-0.665564, -0.571275, -0.480281,
		37.358009, 37.688343, 32.006622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130493, 38.021694, 31.760532>,  <37.823902, 38.088234, 32.342819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130493, 38.021694, 31.760532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776199, 37.871510, 31.651344>,  <37.563625, 37.781399, 31.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776199, 37.871510, 31.651344>,  <38.130493, 38.021694, 31.760532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776199, 37.871510, 31.651344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223409, 0.170671, -0.959667,
		0.406904, -0.910989, -0.067288,
		-0.885730, -0.375460, -0.272970,
		37.510479, 37.758873, 31.569454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283855, 37.513424, 31.368704>,  <38.130493, 38.021694, 31.760532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283855, 37.513424, 31.368704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912258, 37.619476, 31.265421>,  <37.689301, 37.683109, 31.203451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912258, 37.619476, 31.265421>,  <38.283855, 37.513424, 31.368704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912258, 37.619476, 31.265421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239899, -0.099851, -0.965649,
		-0.281809, -0.959028, 0.029155,
		-0.928995, 0.265134, -0.258209,
		37.633560, 37.699017, 31.187958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050636, 36.951244, 30.871431>,  <38.283855, 37.513424, 31.368704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050636, 36.951244, 30.871431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784199, 37.242573, 30.807100>,  <37.624336, 37.417370, 30.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784199, 37.242573, 30.807100>,  <38.050636, 36.951244, 30.871431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784199, 37.242573, 30.807100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020796, -0.197405, -0.980102,
		-0.745578, -0.656184, 0.116344,
		-0.666094, 0.728323, -0.160826,
		37.584370, 37.461071, 30.758852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627930, 36.789818, 30.318720>,  <38.050636, 36.951244, 30.871431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627930, 36.789818, 30.318720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607811, 37.188404, 30.345648>,  <37.595737, 37.427555, 30.361805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607811, 37.188404, 30.345648>,  <37.627930, 36.789818, 30.318720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607811, 37.188404, 30.345648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063939, 0.070480, -0.995462,
		-0.996686, -0.045767, -0.067258,
		-0.050299, 0.996463, 0.067320,
		37.592720, 37.487343, 30.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194637, 36.943420, 29.676268>,  <37.627930, 36.789818, 30.318720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194637, 36.943420, 29.676268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394409, 37.258057, 29.821510>,  <37.514271, 37.446838, 29.908655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394409, 37.258057, 29.821510>,  <37.194637, 36.943420, 29.676268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394409, 37.258057, 29.821510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263109, 0.261614, -0.928618,
		-0.825437, 0.559313, -0.076302,
		0.499426, 0.786592, 0.363107,
		37.544235, 37.494034, 29.930443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056625, 37.411701, 29.244572>,  <37.194637, 36.943420, 29.676268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056625, 37.411701, 29.244572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373360, 37.586697, 29.415028>,  <37.563400, 37.691692, 29.517302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373360, 37.586697, 29.415028>,  <37.056625, 37.411701, 29.244572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373360, 37.586697, 29.415028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310383, 0.312658, -0.897723,
		-0.525980, 0.843119, 0.111785,
		0.791838, 0.437488, 0.426142,
		37.610912, 37.717941, 29.542870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239704, 38.070099, 28.886248>,  <37.056625, 37.411701, 29.244572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239704, 38.070099, 28.886248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567204, 37.953209, 29.083935>,  <37.763702, 37.883076, 29.202547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567204, 37.953209, 29.083935>,  <37.239704, 38.070099, 28.886248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567204, 37.953209, 29.083935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516254, -0.001994, -0.856433,
		0.251254, 0.956348, 0.149228,
		0.818751, -0.292222, 0.494220,
		37.812828, 37.865543, 29.232201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800823, 38.357288, 28.551760>,  <37.239704, 38.070099, 28.886248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800823, 38.357288, 28.551760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974510, 38.057472, 28.751617>,  <38.078724, 37.877583, 28.871532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974510, 38.057472, 28.751617>,  <37.800823, 38.357288, 28.551760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974510, 38.057472, 28.751617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502669, -0.258659, -0.824875,
		0.747514, 0.609333, 0.264455,
		0.434220, -0.749539, 0.499644,
		38.104774, 37.832611, 28.901510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549385, 38.446423, 28.504782>,  <37.800823, 38.357288, 28.551760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549385, 38.446423, 28.504782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508415, 38.060570, 28.601936>,  <38.483833, 37.829060, 28.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508415, 38.060570, 28.601936>,  <38.549385, 38.446423, 28.504782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508415, 38.060570, 28.601936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635560, -0.251294, -0.730010,
		0.765227, 0.079595, 0.638821,
		-0.102427, -0.964632, 0.242885,
		38.477688, 37.771179, 28.674801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187168, 38.201008, 28.323359>,  <38.549385, 38.446423, 28.504782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187168, 38.201008, 28.323359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939941, 37.887188, 28.303452>,  <38.791607, 37.698895, 28.291508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939941, 37.887188, 28.303452>,  <39.187168, 38.201008, 28.323359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939941, 37.887188, 28.303452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589838, -0.420959, -0.689119,
		0.519698, -0.455276, 0.722937,
		-0.618066, -0.784549, -0.049768,
		38.754520, 37.651825, 28.288521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599045, 37.830738, 27.940212>,  <39.187168, 38.201008, 28.323359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599045, 37.830738, 27.940212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285400, 37.584797, 27.973970>,  <39.097214, 37.437233, 27.994225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285400, 37.584797, 27.973970>,  <39.599045, 37.830738, 27.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285400, 37.584797, 27.973970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439324, -0.645957, -0.624287,
		0.438360, -0.452435, 0.776623,
		-0.784114, -0.614852, 0.084396,
		39.050167, 37.400341, 27.999289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832188, 37.179401, 28.187426>,  <39.599045, 37.830738, 27.940212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832188, 37.179401, 28.187426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501274, 37.136620, 27.966824>,  <39.302727, 37.110950, 27.834463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501274, 37.136620, 27.966824>,  <39.832188, 37.179401, 28.187426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501274, 37.136620, 27.966824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484934, -0.631573, -0.604942,
		-0.283613, -0.767904, 0.574359,
		-0.827286, -0.106957, -0.551505,
		39.253090, 37.104534, 27.801373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846596, 36.458763, 27.924694>,  <39.832188, 37.179401, 28.187426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846596, 36.458763, 27.924694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598774, 36.654072, 27.678852>,  <39.450081, 36.771255, 27.531347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598774, 36.654072, 27.678852>,  <39.846596, 36.458763, 27.924694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598774, 36.654072, 27.678852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360395, -0.518634, -0.775329,
		-0.697326, -0.701862, 0.145353,
		-0.619558, 0.488272, -0.614604,
		39.412907, 36.800552, 27.494471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502861, 35.936756, 27.451586>,  <39.846596, 36.458763, 27.924694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502861, 35.936756, 27.451586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467800, 36.285934, 27.259638>,  <39.446762, 36.495441, 27.144468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467800, 36.285934, 27.259638>,  <39.502861, 35.936756, 27.451586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467800, 36.285934, 27.259638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333001, -0.428335, -0.840024,
		-0.938844, -0.233428, -0.253148,
		-0.087653, 0.872949, -0.479871,
		39.441505, 36.547821, 27.115677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141380, 35.786739, 26.820305>,  <39.502861, 35.936756, 27.451586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141380, 35.786739, 26.820305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344917, 36.125854, 26.760517>,  <39.467037, 36.329323, 26.724646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344917, 36.125854, 26.760517>,  <39.141380, 35.786739, 26.820305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344917, 36.125854, 26.760517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283546, -0.328992, -0.900759,
		-0.812824, 0.415962, -0.407791,
		0.508841, 0.847786, -0.149468,
		39.497570, 36.380192, 26.715677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002338, 36.010212, 26.096582>,  <39.141380, 35.786739, 26.820305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002338, 36.010212, 26.096582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344608, 36.177773, 26.218130>,  <39.549973, 36.278309, 26.291059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344608, 36.177773, 26.218130>,  <39.002338, 36.010212, 26.096582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344608, 36.177773, 26.218130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361158, -0.062831, -0.930385,
		-0.370646, 0.905856, -0.205053,
		0.855679, 0.418900, 0.303869,
		39.601311, 36.303444, 26.309290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208294, 36.469955, 25.581556>,  <39.002338, 36.010212, 26.096582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208294, 36.469955, 25.581556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555950, 36.396751, 25.765337>,  <39.764545, 36.352829, 25.875605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555950, 36.396751, 25.765337>,  <39.208294, 36.469955, 25.581556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555950, 36.396751, 25.765337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458873, -0.048068, -0.887201,
		0.184451, 0.981935, 0.042201,
		0.869145, -0.183010, 0.459450,
		39.816692, 36.341850, 25.903172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683186, 36.758484, 25.224232>,  <39.208294, 36.469955, 25.581556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683186, 36.758484, 25.224232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912598, 36.512138, 25.440294>,  <40.050247, 36.364330, 25.569933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912598, 36.512138, 25.440294>,  <39.683186, 36.758484, 25.224232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912598, 36.512138, 25.440294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585120, -0.153501, -0.796286,
		0.573320, 0.772753, 0.272318,
		0.573532, -0.615865, 0.540159,
		40.084656, 36.327377, 25.602343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390018, 37.040112, 25.156292>,  <39.683186, 36.758484, 25.224232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390018, 37.040112, 25.156292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399471, 36.652313, 25.253874>,  <40.405144, 36.419632, 25.312424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399471, 36.652313, 25.253874>,  <40.390018, 37.040112, 25.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399471, 36.652313, 25.253874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733115, -0.149104, -0.663559,
		0.679694, 0.194525, 0.707231,
		0.023628, -0.969499, 0.243954,
		40.406559, 36.361465, 25.327061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050682, 36.872150, 24.902325>,  <40.390018, 37.040112, 25.156292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050682, 36.872150, 24.902325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895618, 36.516113, 24.998196>,  <40.802578, 36.302490, 25.055719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895618, 36.516113, 24.998196>,  <41.050682, 36.872150, 24.902325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895618, 36.516113, 24.998196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564715, -0.434829, -0.701442,
		0.728570, -0.136573, 0.671218,
		-0.387663, -0.890096, 0.239678,
		40.779320, 36.249084, 25.070099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648552, 36.469933, 24.884178>,  <41.050682, 36.872150, 24.902325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648552, 36.469933, 24.884178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325703, 36.243305, 24.817793>,  <41.131992, 36.107327, 24.777962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325703, 36.243305, 24.817793>,  <41.648552, 36.469933, 24.884178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325703, 36.243305, 24.817793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468557, -0.443725, -0.763913,
		0.359170, -0.694337, 0.623613,
		-0.807125, -0.566572, -0.165964,
		41.083565, 36.073334, 24.768003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929989, 35.888977, 24.891663>,  <41.648552, 36.469933, 24.884178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929989, 35.888977, 24.891663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607269, 35.873501, 24.655840>,  <41.413635, 35.864216, 24.514347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607269, 35.873501, 24.655840>,  <41.929989, 35.888977, 24.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607269, 35.873501, 24.655840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571871, -0.301855, -0.762789,
		-0.148443, -0.952568, 0.265667,
		-0.806801, -0.038696, -0.589554,
		41.365231, 35.861893, 24.478973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042198, 35.308632, 24.368898>,  <41.929989, 35.888977, 24.891663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042198, 35.308632, 24.368898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742355, 35.510571, 24.197683>,  <41.562450, 35.631733, 24.094955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742355, 35.510571, 24.197683>,  <42.042198, 35.308632, 24.368898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742355, 35.510571, 24.197683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473777, -0.042321, -0.879627,
		-0.462196, -0.862168, -0.207463,
		-0.749607, 0.504852, -0.428036,
		41.517475, 35.662025, 24.069273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208035, 34.686676, 24.099251>,  <42.042198, 35.308632, 24.368898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208035, 34.686676, 24.099251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543381, 34.581036, 24.289993>,  <42.744587, 34.517651, 24.404438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543381, 34.581036, 24.289993>,  <42.208035, 34.686676, 24.099251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543381, 34.581036, 24.289993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417073, 0.252488, 0.873098,
		-0.350990, -0.930859, 0.101526,
		0.838365, -0.264105, 0.476857,
		42.794891, 34.501804, 24.433050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177139, 34.156914, 24.607088>,  <42.208035, 34.686676, 24.099251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177139, 34.156914, 24.607088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503139, 34.340096, 24.749107>,  <42.698738, 34.450005, 24.834318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503139, 34.340096, 24.749107>,  <42.177139, 34.156914, 24.607088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503139, 34.340096, 24.749107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437643, 0.084862, 0.895135,
		0.379797, -0.884918, 0.269581,
		0.814998, 0.457950, 0.355048,
		42.747639, 34.477482, 24.855621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358128, 33.784653, 25.272753>,  <42.177139, 34.156914, 24.607088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358128, 33.784653, 25.272753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543472, 34.136547, 25.315403>,  <42.654678, 34.347683, 25.340994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543472, 34.136547, 25.315403>,  <42.358128, 33.784653, 25.272753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543472, 34.136547, 25.315403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383655, 0.090686, 0.919013,
		0.798816, -0.466742, 0.379533,
		0.463360, 0.879732, 0.106627,
		42.682480, 34.400467, 25.347391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615383, 33.819504, 25.985727>,  <42.358128, 33.784653, 25.272753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615383, 33.819504, 25.985727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601418, 34.201260, 25.867119>,  <42.593037, 34.430313, 25.795954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601418, 34.201260, 25.867119>,  <42.615383, 33.819504, 25.985727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601418, 34.201260, 25.867119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405408, 0.257669, 0.877069,
		0.913469, 0.150833, 0.377921,
		-0.034913, 0.954388, -0.296522,
		42.590942, 34.487576, 25.778162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829716, 34.181850, 26.531792>,  <42.615383, 33.819504, 25.985727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829716, 34.181850, 26.531792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640629, 34.468113, 26.326124>,  <42.527176, 34.639870, 26.202723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640629, 34.468113, 26.326124>,  <42.829716, 34.181850, 26.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640629, 34.468113, 26.326124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545505, 0.220590, 0.808557,
		0.692073, 0.662699, 0.286121,
		-0.472715, 0.715661, -0.514170,
		42.498814, 34.682812, 26.171873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832706, 34.770557, 26.899910>,  <42.829716, 34.181850, 26.531792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832706, 34.770557, 26.899910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527615, 34.820206, 26.646034>,  <42.344559, 34.849995, 26.493708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527615, 34.820206, 26.646034>,  <42.832706, 34.770557, 26.899910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527615, 34.820206, 26.646034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555050, 0.378033, 0.740952,
		0.331901, 0.917434, -0.219446,
		-0.762733, 0.124119, -0.634692,
		42.298794, 34.857441, 26.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583847, 35.469826, 27.001585>,  <42.832706, 34.770557, 26.899910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583847, 35.469826, 27.001585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275318, 35.266399, 26.848526>,  <42.090199, 35.144344, 26.756691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275318, 35.266399, 26.848526>,  <42.583847, 35.469826, 27.001585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275318, 35.266399, 26.848526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606343, 0.404495, 0.684640,
		-0.193403, 0.760097, -0.620361,
		-0.771326, -0.508563, -0.382648,
		42.043919, 35.113831, 26.733732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039131, 35.885838, 27.085131>,  <42.583847, 35.469826, 27.001585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039131, 35.885838, 27.085131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847736, 35.537720, 27.038399>,  <41.732899, 35.328850, 27.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847736, 35.537720, 27.038399>,  <42.039131, 35.885838, 27.085131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847736, 35.537720, 27.038399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596612, 0.224589, 0.770463,
		-0.644288, 0.438355, -0.626688,
		-0.478483, -0.870290, -0.116828,
		41.704193, 35.276634, 27.003351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190502, 35.924053, 27.157579>,  <42.039131, 35.885838, 27.085131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190502, 35.924053, 27.157579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288483, 35.542400, 27.226427>,  <41.347271, 35.313408, 27.267736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288483, 35.542400, 27.226427>,  <41.190502, 35.924053, 27.157579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288483, 35.542400, 27.226427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618944, -0.017246, 0.785246,
		-0.746261, -0.298882, -0.594780,
		0.244954, -0.954134, 0.172121,
		41.361969, 35.256161, 27.278063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608955, 35.639973, 27.472094>,  <41.190502, 35.924053, 27.157579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608955, 35.639973, 27.472094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871391, 35.344383, 27.533365>,  <41.028851, 35.167030, 27.570127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871391, 35.344383, 27.533365>,  <40.608955, 35.639973, 27.472094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871391, 35.344383, 27.533365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386436, -0.154616, 0.909264,
		-0.648241, -0.655750, -0.387009,
		0.656088, -0.738976, 0.153177,
		41.068218, 35.122692, 27.579319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202888, 35.083672, 27.627985>,  <40.608955, 35.639973, 27.472094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202888, 35.083672, 27.627985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572903, 35.050575, 27.776285>,  <40.794910, 35.030716, 27.865265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572903, 35.050575, 27.776285>,  <40.202888, 35.083672, 27.627985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572903, 35.050575, 27.776285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379606, -0.164853, 0.910342,
		-0.014199, -0.982842, -0.183903,
		0.925039, -0.082737, 0.370752,
		40.850414, 35.025753, 27.887510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180325, 34.420643, 28.032843>,  <40.202888, 35.083672, 27.627985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180325, 34.420643, 28.032843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481575, 34.645336, 28.169817>,  <40.662323, 34.780151, 28.252001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481575, 34.645336, 28.169817>,  <40.180325, 34.420643, 28.032843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481575, 34.645336, 28.169817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272425, -0.207503, 0.939535,
		0.598822, -0.800875, -0.003246,
		0.753124, 0.561730, 0.342436,
		40.707512, 34.813854, 28.272549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383705, 34.104759, 28.588070>,  <40.180325, 34.420643, 28.032843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383705, 34.104759, 28.588070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545364, 34.465778, 28.647495>,  <40.642361, 34.682392, 28.683149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545364, 34.465778, 28.647495>,  <40.383705, 34.104759, 28.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545364, 34.465778, 28.647495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220624, -0.061436, 0.973422,
		0.887689, -0.426180, 0.174295,
		0.404145, 0.902550, 0.148561,
		40.666607, 34.736542, 28.692064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833172, 34.015202, 29.107132>,  <40.383705, 34.104759, 28.588070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833172, 34.015202, 29.107132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744759, 34.405251, 29.100529>,  <40.691711, 34.639282, 29.096567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744759, 34.405251, 29.100529>,  <40.833172, 34.015202, 29.107132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744759, 34.405251, 29.100529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183134, -0.024877, 0.982773,
		0.957917, 0.220252, 0.184078,
		-0.221037, 0.975126, -0.016506,
		40.678448, 34.697788, 29.095577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139465, 34.199001, 29.677656>,  <40.833172, 34.015202, 29.107132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139465, 34.199001, 29.677656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898983, 34.514477, 29.626240>,  <40.754692, 34.703762, 29.595390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898983, 34.514477, 29.626240>,  <41.139465, 34.199001, 29.677656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898983, 34.514477, 29.626240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285413, -0.061690, 0.956417,
		0.746382, 0.611695, 0.262189,
		-0.601210, 0.788684, -0.128542,
		40.718620, 34.751083, 29.587677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223904, 34.630890, 30.295887>,  <41.139465, 34.199001, 29.677656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223904, 34.630890, 30.295887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874229, 34.727474, 30.127367>,  <40.664425, 34.785427, 30.026255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874229, 34.727474, 30.127367>,  <41.223904, 34.630890, 30.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874229, 34.727474, 30.127367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419855, 0.060049, 0.905603,
		0.243969, 0.968550, 0.048886,
		-0.874186, 0.241464, -0.421301,
		40.611973, 34.799915, 30.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002285, 35.317169, 30.594931>,  <41.223904, 34.630890, 30.295887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002285, 35.317169, 30.594931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689728, 35.108891, 30.457354>,  <40.502193, 34.983925, 30.374807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689728, 35.108891, 30.457354>,  <41.002285, 35.317169, 30.594931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689728, 35.108891, 30.457354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436182, 0.061558, 0.897750,
		-0.446284, 0.851519, -0.275220,
		-0.781393, -0.520698, -0.343945,
		40.455311, 34.952682, 30.354170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549278, 35.500420, 31.031563>,  <41.002285, 35.317169, 30.594931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549278, 35.500420, 31.031563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319031, 35.237408, 30.837112>,  <40.180882, 35.079601, 30.720442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319031, 35.237408, 30.837112>,  <40.549278, 35.500420, 31.031563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319031, 35.237408, 30.837112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698990, 0.087138, 0.709803,
		-0.424357, 0.748372, -0.509766,
		-0.575616, -0.657531, -0.486127,
		40.146347, 35.040150, 30.691275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884449, 35.813766, 30.857086>,  <40.549278, 35.500420, 31.031563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884449, 35.813766, 30.857086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844082, 35.417580, 30.894569>,  <39.819862, 35.179867, 30.917059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844082, 35.417580, 30.894569>,  <39.884449, 35.813766, 30.857086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844082, 35.417580, 30.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743902, 0.137669, 0.653954,
		-0.660624, -0.003713, -0.750708,
		-0.100921, -0.990471, 0.093710,
		39.813805, 35.120438, 30.922682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147594, 35.599464, 30.661507>,  <39.884449, 35.813766, 30.857086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147594, 35.599464, 30.661507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315163, 35.301472, 30.869165>,  <39.415703, 35.122677, 30.993761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315163, 35.301472, 30.869165>,  <39.147594, 35.599464, 30.661507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315163, 35.301472, 30.869165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733517, 0.059347, 0.677075,
		-0.535215, -0.664445, -0.521591,
		0.418924, -0.744977, 0.519145,
		39.440842, 35.077980, 31.024908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590214, 35.238026, 30.784649>,  <39.147594, 35.599464, 30.661507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590214, 35.238026, 30.784649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865284, 35.134850, 31.056107>,  <39.030327, 35.072945, 31.218981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865284, 35.134850, 31.056107>,  <38.590214, 35.238026, 30.784649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865284, 35.134850, 31.056107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672101, 0.127303, 0.729434,
		-0.274548, -0.957736, -0.085822,
		0.687680, -0.257945, 0.678646,
		39.071587, 35.057465, 31.259701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233173, 34.858643, 31.216537>,  <38.590214, 35.238026, 30.784649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233173, 34.858643, 31.216537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558956, 34.970055, 31.420139>,  <38.754425, 35.036903, 31.542301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558956, 34.970055, 31.420139>,  <38.233173, 34.858643, 31.216537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558956, 34.970055, 31.420139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516137, -0.052992, 0.854865,
		0.265083, -0.958963, 0.100602,
		0.814453, 0.278534, 0.509004,
		38.803291, 35.053616, 31.572840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150291, 34.434509, 31.736240>,  <38.233173, 34.858643, 31.216537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150291, 34.434509, 31.736240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419022, 34.700344, 31.867067>,  <38.580261, 34.859844, 31.945564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419022, 34.700344, 31.867067>,  <38.150291, 34.434509, 31.736240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419022, 34.700344, 31.867067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306077, -0.153014, 0.939629,
		0.674512, -0.731375, 0.100617,
		0.671826, 0.664588, 0.327067,
		38.620571, 34.899719, 31.965187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556908, 34.179852, 32.369808>,  <38.150291, 34.434509, 31.736240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556908, 34.179852, 32.369808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571674, 34.579571, 32.367138>,  <38.580536, 34.819401, 32.365536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571674, 34.579571, 32.367138>,  <38.556908, 34.179852, 32.369808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571674, 34.579571, 32.367138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255756, 0.015902, 0.966611,
		0.966036, -0.033981, 0.256163,
		0.036920, 0.999296, -0.006671,
		38.582748, 34.879360, 32.365135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851257, 34.313297, 32.989292>,  <38.556908, 34.179852, 32.369808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851257, 34.313297, 32.989292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713516, 34.674580, 32.886810>,  <38.630871, 34.891350, 32.825321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713516, 34.674580, 32.886810>,  <38.851257, 34.313297, 32.989292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713516, 34.674580, 32.886810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024259, 0.264240, 0.964152,
		0.938525, 0.338227, -0.069081,
		-0.344356, 0.903205, -0.256201,
		38.610210, 34.945541, 32.809952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050743, 34.708717, 33.526516>,  <38.851257, 34.313297, 32.989292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050743, 34.708717, 33.526516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824127, 34.964981, 33.319210>,  <38.688160, 35.118740, 33.194828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824127, 34.964981, 33.319210>,  <39.050743, 34.708717, 33.526516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824127, 34.964981, 33.319210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165258, 0.527824, 0.833122,
		0.807296, 0.557640, -0.193158,
		-0.566536, 0.640655, -0.518265,
		38.654167, 35.157177, 33.163731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448299, 35.211140, 33.359859>,  <39.050743, 34.708717, 33.526516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448299, 35.211140, 33.359859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067986, 35.328438, 33.399872>,  <38.839798, 35.398819, 33.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067986, 35.328438, 33.399872>,  <39.448299, 35.211140, 33.359859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067986, 35.328438, 33.399872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197820, 0.326047, 0.924425,
		0.238469, 0.898721, -0.368012,
		-0.950789, 0.293247, 0.100033,
		38.782749, 35.416412, 33.429882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429432, 35.926910, 33.829411>,  <39.448299, 35.211140, 33.359859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429432, 35.926910, 33.829411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041237, 35.832745, 33.808529>,  <38.808319, 35.776245, 33.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041237, 35.832745, 33.808529>,  <39.429432, 35.926910, 33.829411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041237, 35.832745, 33.808529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172545, 0.526729, 0.832337,
		-0.168446, 0.816784, -0.551806,
		-0.970492, -0.235416, -0.052206,
		38.750088, 35.762119, 33.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092937, 36.537987, 33.931396>,  <39.429432, 35.926910, 33.829411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092937, 36.537987, 33.931396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854408, 36.235332, 34.038662>,  <38.711292, 36.053741, 34.103020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854408, 36.235332, 34.038662>,  <39.092937, 36.537987, 33.931396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854408, 36.235332, 34.038662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168572, 0.444637, 0.879705,
		-0.784847, 0.479382, -0.392693,
		-0.596321, -0.756631, 0.268162,
		38.675510, 36.008343, 34.119110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577770, 36.847984, 34.308598>,  <39.092937, 36.537987, 33.931396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577770, 36.847984, 34.308598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501099, 36.472149, 34.422039>,  <38.455097, 36.246647, 34.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501099, 36.472149, 34.422039>,  <38.577770, 36.847984, 34.308598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501099, 36.472149, 34.422039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116419, 0.308691, 0.944011,
		-0.974528, 0.147931, -0.168556,
		-0.191680, -0.939588, 0.283606,
		38.443596, 36.190273, 34.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067432, 36.934147, 34.851624>,  <38.577770, 36.847984, 34.308598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067432, 36.934147, 34.851624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255501, 36.583965, 34.896389>,  <38.368343, 36.373856, 34.923248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255501, 36.583965, 34.896389>,  <38.067432, 36.934147, 34.851624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255501, 36.583965, 34.896389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013521, 0.119649, 0.992724,
		-0.882472, -0.468263, 0.044418,
		0.470171, -0.875451, 0.111918,
		38.396553, 36.321331, 34.929966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723644, 36.636097, 35.433842>,  <38.067432, 36.934147, 34.851624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723644, 36.636097, 35.433842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089947, 36.481972, 35.388371>,  <38.309727, 36.389496, 35.361088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089947, 36.481972, 35.388371>,  <37.723644, 36.636097, 35.433842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089947, 36.481972, 35.388371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073116, -0.118397, 0.990271,
		-0.395024, -0.915159, -0.080250,
		0.915757, -0.385314, -0.113682,
		38.364674, 36.366379, 35.354267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727989, 36.194748, 35.915157>,  <37.723644, 36.636097, 35.433842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727989, 36.194748, 35.915157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119526, 36.230385, 35.841469>,  <38.354446, 36.251766, 35.797256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119526, 36.230385, 35.841469>,  <37.727989, 36.194748, 35.915157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119526, 36.230385, 35.841469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197673, -0.178931, 0.963799,
		0.052905, -0.979819, -0.192756,
		0.978839, 0.089093, -0.184218,
		38.413177, 36.257111, 35.786205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143761, 35.551971, 36.230343>,  <37.727989, 36.194748, 35.915157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143761, 35.551971, 36.230343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358559, 35.883286, 36.166374>,  <38.487438, 36.082073, 36.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358559, 35.883286, 36.166374>,  <38.143761, 35.551971, 36.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358559, 35.883286, 36.166374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254357, 0.021774, 0.966865,
		0.804327, -0.559877, -0.198989,
		0.536993, 0.828290, -0.159922,
		38.519657, 36.131771, 36.118397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671947, 35.393841, 36.619244>,  <38.143761, 35.551971, 36.230343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671947, 35.393841, 36.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730450, 35.783386, 36.549740>,  <38.765549, 36.017113, 36.508038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730450, 35.783386, 36.549740>,  <38.671947, 35.393841, 36.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730450, 35.783386, 36.549740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417338, 0.098508, 0.903396,
		0.896905, -0.204639, -0.392025,
		0.146253, 0.973868, -0.173756,
		38.774326, 36.075546, 36.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413509, 35.593102, 36.816124>,  <38.671947, 35.393841, 36.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413509, 35.593102, 36.816124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190636, 35.924133, 36.843437>,  <39.056911, 36.122753, 36.859825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190636, 35.924133, 36.843437>,  <39.413509, 35.593102, 36.816124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190636, 35.924133, 36.843437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239161, 0.081185, 0.967580,
		0.795202, 0.555453, -0.243159,
		-0.557186, 0.827575, 0.068284,
		39.023479, 36.172405, 36.863922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779163, 36.080219, 37.147633>,  <39.413509, 35.593102, 36.816124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779163, 36.080219, 37.147633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401211, 36.204605, 37.188610>,  <39.174438, 36.279236, 37.213196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401211, 36.204605, 37.188610>,  <39.779163, 36.080219, 37.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401211, 36.204605, 37.188610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184786, 0.248220, 0.950916,
		0.270270, 0.917436, -0.292001,
		-0.944885, 0.310961, 0.102443,
		39.117744, 36.297894, 37.219341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873451, 36.688530, 37.561966>,  <39.779163, 36.080219, 37.147633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873451, 36.688530, 37.561966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489315, 36.585114, 37.603748>,  <39.258835, 36.523064, 37.628819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489315, 36.585114, 37.603748>,  <39.873451, 36.688530, 37.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489315, 36.585114, 37.603748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044072, 0.229163, 0.972390,
		-0.275341, 0.938424, -0.208680,
		-0.960336, -0.258542, 0.104456,
		39.201214, 36.507549, 37.635086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753052, 37.065876, 38.051037>,  <39.873451, 36.688530, 37.561966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753052, 37.065876, 38.051037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433022, 36.827564, 38.022984>,  <39.241001, 36.684578, 38.006149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433022, 36.827564, 38.022984>,  <39.753052, 37.065876, 38.051037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433022, 36.827564, 38.022984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058871, -0.038371, 0.997528,
		-0.596999, 0.802230, -0.004374,
		-0.800079, -0.595780, -0.070135,
		39.192997, 36.648830, 38.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345062, 37.395817, 38.426010>,  <39.753052, 37.065876, 38.051037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345062, 37.395817, 38.426010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214996, 37.018833, 38.394917>,  <39.136959, 36.792645, 38.376263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214996, 37.018833, 38.394917>,  <39.345062, 37.395817, 38.426010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214996, 37.018833, 38.394917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035849, -0.069854, 0.996913,
		-0.944979, 0.326945, -0.011072,
		-0.325162, -0.942458, -0.077731,
		39.117447, 36.736095, 38.371597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185574, 37.794716, 39.061222>,  <39.345062, 37.395817, 38.426010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185574, 37.794716, 39.061222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426216, 38.114143, 39.053593>,  <39.570602, 38.305798, 39.049015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426216, 38.114143, 39.053593>,  <39.185574, 37.794716, 39.061222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426216, 38.114143, 39.053593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567579, 0.444145, 0.693245,
		0.562072, -0.406235, 0.720450,
		0.601605, 0.798566, -0.019071,
		39.606697, 38.353714, 39.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389793, 37.969219, 39.781776>,  <39.185574, 37.794716, 39.061222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389793, 37.969219, 39.781776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446083, 38.295063, 39.556705>,  <39.479855, 38.490570, 39.421661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446083, 38.295063, 39.556705>,  <39.389793, 37.969219, 39.781776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446083, 38.295063, 39.556705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338221, 0.573698, 0.745974,
		0.930486, 0.085337, 0.356249,
		0.140720, 0.814609, -0.562681,
		39.488300, 38.539444, 39.387901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840145, 38.439388, 40.098721>,  <39.389793, 37.969219, 39.781776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840145, 38.439388, 40.098721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592773, 38.657379, 39.872253>,  <39.444351, 38.788174, 39.736374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592773, 38.657379, 39.872253>,  <39.840145, 38.439388, 40.098721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592773, 38.657379, 39.872253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268987, 0.530136, 0.804115,
		0.738367, 0.649583, -0.181263,
		-0.618434, 0.544975, -0.566164,
		39.407242, 38.820873, 39.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793404, 39.055077, 40.446308>,  <39.840145, 38.439388, 40.098721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793404, 39.055077, 40.446308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479126, 39.126560, 40.209412>,  <39.290562, 39.169449, 40.067272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479126, 39.126560, 40.209412>,  <39.793404, 39.055077, 40.446308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479126, 39.126560, 40.209412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475647, 0.437616, 0.763054,
		0.395538, 0.881225, -0.258830,
		-0.785690, 0.178705, -0.592246,
		39.243420, 39.180172, 40.031738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571278, 39.654404, 40.596386>,  <39.793404, 39.055077, 40.446308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571278, 39.654404, 40.596386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265133, 39.515427, 40.379681>,  <39.081448, 39.432041, 40.249657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265133, 39.515427, 40.379681>,  <39.571278, 39.654404, 40.596386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265133, 39.515427, 40.379681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640230, 0.497035, 0.585715,
		0.065771, 0.795135, -0.602855,
		-0.765362, -0.347443, -0.541760,
		39.035522, 39.411194, 40.217152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213383, 40.323002, 40.428158>,  <39.571278, 39.654404, 40.596386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213383, 40.323002, 40.428158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986629, 39.993797, 40.413795>,  <38.850578, 39.796276, 40.405178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986629, 39.993797, 40.413795>,  <39.213383, 40.323002, 40.428158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986629, 39.993797, 40.413795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715587, 0.470361, 0.516426,
		-0.408135, 0.318451, -0.855578,
		-0.566887, -0.823012, -0.035909,
		38.816563, 39.746895, 40.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442158, 40.656517, 40.307098>,  <39.213383, 40.323002, 40.428158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442158, 40.656517, 40.307098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438953, 40.274731, 40.426380>,  <38.437031, 40.045658, 40.497948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438953, 40.274731, 40.426380>,  <38.442158, 40.656517, 40.307098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438953, 40.274731, 40.426380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773606, 0.194875, 0.602958,
		-0.633617, -0.225864, -0.739943,
		-0.008010, -0.954468, 0.298205,
		38.436550, 39.988392, 40.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803722, 40.476837, 40.239185>,  <38.442158, 40.656517, 40.307098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803722, 40.476837, 40.239185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971752, 40.242638, 40.516525>,  <38.072571, 40.102119, 40.682930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971752, 40.242638, 40.516525>,  <37.803722, 40.476837, 40.239185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971752, 40.242638, 40.516525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801207, 0.119505, 0.586333,
		-0.426156, -0.801816, -0.418906,
		0.420070, -0.585500, 0.693348,
		38.097775, 40.066986, 40.724529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418999, 40.034145, 40.753109>,  <37.803722, 40.476837, 40.239185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418999, 40.034145, 40.753109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602840, 39.870399, 41.068371>,  <37.713146, 39.772152, 41.257526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602840, 39.870399, 41.068371>,  <37.418999, 40.034145, 40.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602840, 39.870399, 41.068371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574416, 0.539817, 0.615341,
		-0.677358, -0.735539, 0.012954,
		0.459600, -0.409366, 0.788154,
		37.740719, 39.747589, 41.304817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955677, 39.751656, 41.302505>,  <37.418999, 40.034145, 40.753109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955677, 39.751656, 41.302505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300892, 39.824131, 41.491116>,  <37.508022, 39.867615, 41.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300892, 39.824131, 41.491116>,  <36.955677, 39.751656, 41.302505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300892, 39.824131, 41.491116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488273, 0.538411, 0.686807,
		-0.129433, -0.822974, 0.553138,
		0.863039, 0.181187, 0.471524,
		37.559803, 39.878487, 41.632572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765457, 39.691265, 42.048252>,  <36.955677, 39.751656, 41.302505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765457, 39.691265, 42.048252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101837, 39.905472, 42.017216>,  <37.303665, 40.033997, 41.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101837, 39.905472, 42.017216>,  <36.765457, 39.691265, 42.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101837, 39.905472, 42.017216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249980, 0.511657, 0.822020,
		0.479904, -0.671884, 0.564148,
		0.840953, 0.535517, -0.077589,
		37.354122, 40.066128, 41.993938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036060, 39.875813, 42.817257>,  <36.765457, 39.691265, 42.048252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036060, 39.875813, 42.817257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227200, 40.111771, 42.556892>,  <37.341885, 40.253345, 42.400673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227200, 40.111771, 42.556892>,  <37.036060, 39.875813, 42.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227200, 40.111771, 42.556892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213786, 0.640607, 0.737508,
		0.852029, -0.491575, 0.180003,
		0.477852, 0.589896, -0.650907,
		37.370556, 40.288738, 42.361622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740063, 39.862083, 42.965969>,  <37.036060, 39.875813, 42.817257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740063, 39.862083, 42.965969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659588, 40.218388, 42.802963>,  <37.611305, 40.432171, 42.705158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659588, 40.218388, 42.802963>,  <37.740063, 39.862083, 42.965969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659588, 40.218388, 42.802963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076136, 0.428983, 0.900098,
		0.976590, 0.150060, -0.154124,
		-0.201185, 0.890761, -0.407515,
		37.599232, 40.485615, 42.680710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261627, 40.216465, 43.163086>,  <37.740063, 39.862083, 42.965969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261627, 40.216465, 43.163086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932774, 40.437912, 43.110012>,  <37.735462, 40.570778, 43.078167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932774, 40.437912, 43.110012>,  <38.261627, 40.216465, 43.163086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932774, 40.437912, 43.110012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030962, 0.276212, 0.960598,
		0.568449, 0.785633, -0.244225,
		-0.822136, 0.553613, -0.132688,
		37.686134, 40.603996, 43.070206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422985, 40.881264, 43.372578>,  <38.261627, 40.216465, 43.163086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422985, 40.881264, 43.372578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026783, 40.836140, 43.403980>,  <37.789062, 40.809063, 43.422821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026783, 40.836140, 43.403980>,  <38.422985, 40.881264, 43.372578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026783, 40.836140, 43.403980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040982, 0.302771, 0.952182,
		-0.131189, 0.946363, -0.295274,
		-0.990510, -0.112815, 0.078504,
		37.729630, 40.802296, 43.427532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053993, 41.451004, 43.692165>,  <38.422985, 40.881264, 43.372578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053993, 41.451004, 43.692165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813232, 41.138340, 43.757561>,  <37.668777, 40.950741, 43.796799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813232, 41.138340, 43.757561>,  <38.053993, 41.451004, 43.692165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813232, 41.138340, 43.757561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046937, 0.239004, 0.969883,
		-0.797191, 0.576098, -0.180545,
		-0.601900, -0.781657, 0.163492,
		37.632664, 40.903843, 43.806610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529655, 41.626366, 44.120209>,  <38.053993, 41.451004, 43.692165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529655, 41.626366, 44.120209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527493, 41.228607, 44.162430>,  <37.526196, 40.989952, 44.187763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527493, 41.228607, 44.162430>,  <37.529655, 41.626366, 44.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527493, 41.228607, 44.162430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066234, 0.104963, 0.992268,
		-0.997790, 0.012360, 0.065295,
		-0.005410, -0.994399, 0.105550,
		37.525871, 40.930286, 44.194096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085575, 41.456970, 44.661198>,  <37.529655, 41.626366, 44.120209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085575, 41.456970, 44.661198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308628, 41.125137, 44.649582>,  <37.442459, 40.926037, 44.642612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308628, 41.125137, 44.649582>,  <37.085575, 41.456970, 44.661198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308628, 41.125137, 44.649582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103451, 0.034745, 0.994027,
		-0.823614, -0.557309, 0.105196,
		0.557635, -0.829578, -0.029037,
		37.475918, 40.876263, 44.640869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760818, 41.031864, 45.172760>,  <37.085575, 41.456970, 44.661198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760818, 41.031864, 45.172760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135273, 40.902554, 45.117413>,  <37.359943, 40.824966, 45.084206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135273, 40.902554, 45.117413>,  <36.760818, 41.031864, 45.172760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135273, 40.902554, 45.117413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176461, 0.091513, 0.980044,
		-0.304167, -0.941868, 0.142715,
		0.936132, -0.323281, -0.138368,
		37.416111, 40.805569, 45.075901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869568, 41.679337, 45.381092>,  <36.760818, 41.031864, 45.172760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869568, 41.679337, 45.381092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969410, 41.942268, 45.665520>,  <37.029316, 42.100029, 45.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969410, 41.942268, 45.665520>,  <36.869568, 41.679337, 45.381092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969410, 41.942268, 45.665520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714578, -0.370529, 0.593369,
		0.653509, -0.656222, 0.377226,
		0.249608, 0.657329, 0.711066,
		37.044292, 42.139465, 45.878838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441299, 41.605911, 45.873222>,  <36.869568, 41.679337, 45.381092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441299, 41.605911, 45.873222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621891, 41.916458, 46.049137>,  <36.730247, 42.102787, 46.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621891, 41.916458, 46.049137>,  <36.441299, 41.605911, 45.873222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621891, 41.916458, 46.049137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532833, -0.160772, 0.830808,
		0.715721, -0.609425, 0.341092,
		0.451477, 0.776372, 0.439790,
		36.757336, 42.149368, 46.181072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854263, 41.437901, 46.585487>,  <36.441299, 41.605911, 45.873222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854263, 41.437901, 46.585487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668690, 41.786545, 46.522160>,  <36.557346, 41.995731, 46.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668690, 41.786545, 46.522160>,  <36.854263, 41.437901, 46.585487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668690, 41.786545, 46.522160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654466, -0.216780, 0.724349,
		0.597026, 0.439667, 0.671008,
		-0.463933, 0.871607, -0.158324,
		36.529510, 42.048027, 46.474663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574059, 41.183006, 46.592617>,  <36.854263, 41.437901, 46.585487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574059, 41.183006, 46.592617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936821, 41.025219, 46.651840>,  <38.154480, 40.930546, 46.687374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936821, 41.025219, 46.651840>,  <37.574059, 41.183006, 46.592617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936821, 41.025219, 46.651840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413587, -0.766381, 0.491535,
		-0.080425, -0.507010, -0.858180,
		0.906906, -0.394464, 0.148057,
		38.208893, 40.906879, 46.696259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584309, 41.420128, 45.890430>,  <37.574059, 41.183006, 46.592617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584309, 41.420128, 45.890430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912025, 41.199032, 45.951401>,  <38.108658, 41.066376, 45.987984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912025, 41.199032, 45.951401>,  <37.584309, 41.420128, 45.890430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912025, 41.199032, 45.951401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184353, -0.505669, -0.842800,
		0.542926, 0.662402, -0.516192,
		0.819295, -0.552740, 0.152425,
		38.157814, 41.033211, 45.997128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119801, 41.523258, 45.384346>,  <37.584309, 41.420128, 45.890430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119801, 41.523258, 45.384346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126842, 41.162357, 45.556686>,  <38.131065, 40.945816, 45.660091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126842, 41.162357, 45.556686>,  <38.119801, 41.523258, 45.384346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126842, 41.162357, 45.556686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336544, -0.411118, -0.847183,
		0.941503, -0.130086, -0.310885,
		0.017603, -0.902252, 0.430849,
		38.132122, 40.891682, 45.685940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591652, 41.019428, 45.010460>,  <38.119801, 41.523258, 45.384346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591652, 41.019428, 45.010460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272572, 40.859268, 45.190842>,  <38.081123, 40.763172, 45.299072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272572, 40.859268, 45.190842>,  <38.591652, 41.019428, 45.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272572, 40.859268, 45.190842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342398, -0.314852, -0.885230,
		0.496432, -0.860550, 0.114059,
		-0.797696, -0.400403, 0.450953,
		38.033264, 40.739147, 45.326126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595001, 40.247452, 44.936287>,  <38.591652, 41.019428, 45.010460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595001, 40.247452, 44.936287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242336, 40.435040, 44.957203>,  <38.030735, 40.547592, 44.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242336, 40.435040, 44.957203>,  <38.595001, 40.247452, 44.936287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242336, 40.435040, 44.957203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221554, -0.313572, -0.923356,
		-0.416631, -0.825675, 0.380367,
		-0.881664, 0.468970, 0.052287,
		37.977837, 40.575729, 44.972889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074024, 39.756329, 44.616173>,  <38.595001, 40.247452, 44.936287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074024, 39.756329, 44.616173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875839, 40.103779, 44.617245>,  <37.756927, 40.312248, 44.617889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875839, 40.103779, 44.617245>,  <38.074024, 39.756329, 44.616173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875839, 40.103779, 44.617245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292850, -0.164130, -0.941966,
		-0.817777, -0.467493, 0.335697,
		-0.495460, 0.868627, 0.002684,
		37.727200, 40.364368, 44.618050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450157, 39.631756, 44.295364>,  <38.074024, 39.756329, 44.616173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450157, 39.631756, 44.295364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496906, 40.026093, 44.247257>,  <37.524956, 40.262695, 44.218391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496906, 40.026093, 44.247257>,  <37.450157, 39.631756, 44.295364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496906, 40.026093, 44.247257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332596, -0.075253, -0.940062,
		-0.935800, 0.149868, 0.319091,
		0.116872, 0.985838, -0.120268,
		37.531967, 40.321842, 44.211178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880692, 39.883732, 43.934277>,  <37.450157, 39.631756, 44.295364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880692, 39.883732, 43.934277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120152, 40.201340, 43.892033>,  <37.263828, 40.391903, 43.866684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120152, 40.201340, 43.892033>,  <36.880692, 39.883732, 43.934277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120152, 40.201340, 43.892033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329861, 0.124227, -0.935820,
		-0.729937, 0.595067, 0.336283,
		0.598652, 0.794017, -0.105612,
		37.299747, 40.439545, 43.860348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500046, 40.351837, 43.528305>,  <36.880692, 39.883732, 43.934277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500046, 40.351837, 43.528305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872688, 40.494991, 43.502903>,  <37.096272, 40.580883, 43.487663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872688, 40.494991, 43.502903>,  <36.500046, 40.351837, 43.528305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872688, 40.494991, 43.502903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094433, 0.069601, -0.993095,
		-0.350997, 0.931167, 0.098637,
		0.931603, 0.357888, -0.063503,
		37.152168, 40.602356, 43.483852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532753, 41.192715, 43.175114>,  <36.500046, 40.351837, 43.528305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532753, 41.192715, 43.175114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865547, 40.975739, 43.128551>,  <37.065224, 40.845554, 43.100616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865547, 40.975739, 43.128551>,  <36.532753, 41.192715, 43.175114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865547, 40.975739, 43.128551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101086, 0.058082, -0.993181,
		0.545504, 0.838083, -0.006509,
		0.831990, -0.542442, -0.116402,
		37.115143, 40.813007, 43.093632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555889, 41.451191, 42.466526>,  <36.532753, 41.192715, 43.175114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555889, 41.451191, 42.466526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862320, 41.224167, 42.587189>,  <37.046181, 41.087952, 42.659584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862320, 41.224167, 42.587189>,  <36.555889, 41.451191, 42.466526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862320, 41.224167, 42.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201954, -0.233003, -0.951275,
		0.610194, 0.789672, -0.063877,
		0.766079, -0.567562, 0.301655,
		37.092144, 41.053898, 42.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131657, 41.425018, 41.933830>,  <36.555889, 41.451191, 42.466526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131657, 41.425018, 41.933830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283203, 41.157703, 42.189911>,  <37.374130, 40.997314, 42.343559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283203, 41.157703, 42.189911>,  <37.131657, 41.425018, 41.933830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283203, 41.157703, 42.189911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404406, -0.502679, -0.764048,
		0.832418, 0.548371, 0.079812,
		0.378862, -0.668283, 0.640203,
		37.396862, 40.957218, 42.381973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820568, 41.277622, 41.758881>,  <37.131657, 41.425018, 41.933830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820568, 41.277622, 41.758881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687962, 40.964233, 41.969124>,  <37.608398, 40.776199, 42.095272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687962, 40.964233, 41.969124>,  <37.820568, 41.277622, 41.758881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687962, 40.964233, 41.969124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424955, -0.621402, -0.658235,
		0.842326, 0.005149, 0.538944,
		-0.331512, -0.783475, 0.525611,
		37.588509, 40.729191, 42.126808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394245, 40.796982, 41.790791>,  <37.820568, 41.277622, 41.758881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394245, 40.796982, 41.790791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080631, 40.560513, 41.866474>,  <37.892464, 40.418629, 41.911884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080631, 40.560513, 41.866474>,  <38.394245, 40.796982, 41.790791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080631, 40.560513, 41.866474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467025, -0.762618, -0.447551,
		0.408874, -0.262532, 0.874013,
		-0.784034, -0.591178, 0.189205,
		37.845421, 40.383160, 41.923237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721313, 40.253017, 42.090950>,  <38.394245, 40.796982, 41.790791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721313, 40.253017, 42.090950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365849, 40.165379, 41.929821>,  <38.152569, 40.112793, 41.833141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365849, 40.165379, 41.929821>,  <38.721313, 40.253017, 42.090950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365849, 40.165379, 41.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437452, -0.668492, -0.601460,
		-0.137505, -0.710714, 0.689911,
		-0.888667, -0.219099, -0.402825,
		38.099247, 40.099648, 41.808975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650524, 39.602520, 41.914898>,  <38.721313, 40.253017, 42.090950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650524, 39.602520, 41.914898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390766, 39.773647, 41.663418>,  <38.234913, 39.876324, 41.512531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390766, 39.773647, 41.663418>,  <38.650524, 39.602520, 41.914898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390766, 39.773647, 41.663418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359851, -0.555436, -0.749665,
		-0.669926, -0.713062, 0.206741,
		-0.649390, 0.427824, -0.628697,
		38.195950, 39.901993, 41.474808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540619, 39.112957, 41.542812>,  <38.650524, 39.602520, 41.914898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540619, 39.112957, 41.542812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418751, 39.397266, 41.289207>,  <38.345631, 39.567852, 41.137043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418751, 39.397266, 41.289207>,  <38.540619, 39.112957, 41.542812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418751, 39.397266, 41.289207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396868, -0.510382, -0.762893,
		-0.865835, -0.484051, -0.126587,
		-0.304671, 0.710778, -0.634011,
		38.327351, 39.610500, 41.099003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112625, 38.867382, 40.993660>,  <38.540619, 39.112957, 41.542812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112625, 38.867382, 40.993660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269653, 39.209965, 40.859577>,  <38.363873, 39.415516, 40.779129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269653, 39.209965, 40.859577>,  <38.112625, 38.867382, 40.993660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269653, 39.209965, 40.859577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291137, -0.461443, -0.838039,
		-0.872425, 0.231401, -0.430497,
		0.392573, 0.856460, -0.335205,
		38.387424, 39.466904, 40.759014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772968, 38.989777, 40.315380>,  <38.112625, 38.867382, 40.993660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772968, 38.989777, 40.315380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128059, 39.168793, 40.358555>,  <38.341114, 39.276203, 40.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128059, 39.168793, 40.358555>,  <37.772968, 38.989777, 40.315380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128059, 39.168793, 40.358555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325240, -0.443735, -0.835055,
		-0.325823, 0.776407, -0.539473,
		0.887726, 0.447539, 0.107940,
		38.394379, 39.303055, 40.390938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916840, 39.104160, 39.588921>,  <37.772968, 38.989777, 40.315380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916840, 39.104160, 39.588921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256310, 39.175533, 39.788082>,  <38.459991, 39.218357, 39.907581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256310, 39.175533, 39.788082>,  <37.916840, 39.104160, 39.588921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256310, 39.175533, 39.788082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520663, -0.447450, -0.727117,
		0.093048, 0.876328, -0.472643,
		0.848677, 0.178431, 0.497906,
		38.510914, 39.229061, 39.937454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367794, 39.470215, 39.128857>,  <37.916840, 39.104160, 39.588921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367794, 39.470215, 39.128857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630764, 39.342064, 39.401665>,  <38.788548, 39.265175, 39.565350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630764, 39.342064, 39.401665>,  <38.367794, 39.470215, 39.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630764, 39.342064, 39.401665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658629, -0.195385, -0.726659,
		0.366061, 0.926922, 0.082558,
		0.657425, -0.320376, 0.682020,
		38.827991, 39.245953, 39.606270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930244, 39.634895, 38.801182>,  <38.367794, 39.470215, 39.128857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930244, 39.634895, 38.801182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069305, 39.385113, 39.080952>,  <39.152740, 39.235245, 39.248814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069305, 39.385113, 39.080952>,  <38.930244, 39.634895, 38.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069305, 39.385113, 39.080952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684653, -0.340595, -0.644395,
		0.640618, 0.702886, 0.309129,
		0.347648, -0.624457, 0.699424,
		39.173599, 39.197777, 39.290779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691502, 39.683468, 38.881393>,  <38.930244, 39.634895, 38.801182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691502, 39.683468, 38.881393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616276, 39.312408, 39.010456>,  <39.571140, 39.089775, 39.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616276, 39.312408, 39.010456>,  <39.691502, 39.683468, 38.881393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616276, 39.312408, 39.010456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684038, -0.359453, -0.634732,
		0.704787, 0.101344, 0.702143,
		-0.188061, -0.927644, 0.322661,
		39.559856, 39.034115, 39.107254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338978, 39.410774, 38.868774>,  <39.691502, 39.683468, 38.881393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338978, 39.410774, 38.868774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108501, 39.086193, 38.907883>,  <39.970215, 38.891445, 38.931347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108501, 39.086193, 38.907883>,  <40.338978, 39.410774, 38.868774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108501, 39.086193, 38.907883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657516, -0.531255, -0.534266,
		0.485470, -0.243552, 0.839643,
		-0.576187, -0.811449, 0.097769,
		39.935646, 38.842758, 38.937214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847099, 38.867634, 39.146393>,  <40.338978, 39.410774, 38.868774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847099, 38.867634, 39.146393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521290, 38.694241, 38.992176>,  <40.325806, 38.590206, 38.899647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521290, 38.694241, 38.992176>,  <40.847099, 38.867634, 39.146393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521290, 38.694241, 38.992176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578519, -0.557421, -0.595481,
		0.043219, -0.708079, 0.704810,
		-0.814523, -0.433482, -0.385546,
		40.276932, 38.564198, 38.876511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780563, 38.161339, 39.253258>,  <40.847099, 38.867634, 39.146393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780563, 38.161339, 39.253258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607250, 38.246887, 38.903053>,  <40.503262, 38.298218, 38.692928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607250, 38.246887, 38.903053>,  <40.780563, 38.161339, 39.253258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607250, 38.246887, 38.903053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779993, -0.397699, -0.483163,
		-0.451527, -0.892240, 0.005496,
		-0.433284, 0.213875, -0.875513,
		40.477264, 38.311050, 38.640400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099171, 37.671513, 38.829342>,  <40.780563, 38.161339, 39.253258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099171, 37.671513, 38.829342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901199, 37.911160, 38.577595>,  <40.782417, 38.054947, 38.426544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901199, 37.911160, 38.577595>,  <41.099171, 37.671513, 38.829342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901199, 37.911160, 38.577595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476552, -0.418508, -0.773142,
		-0.726599, -0.682577, -0.078379,
		-0.494927, 0.599116, -0.629371,
		40.752720, 38.090893, 38.388783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819653, 37.294411, 38.303329>,  <41.099171, 37.671513, 38.829342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819653, 37.294411, 38.303329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905815, 37.662354, 38.172203>,  <40.957512, 37.883118, 38.093529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905815, 37.662354, 38.172203>,  <40.819653, 37.294411, 38.303329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905815, 37.662354, 38.172203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569688, -0.391026, -0.722880,
		-0.793130, -0.031038, -0.608261,
		0.215409, 0.919856, -0.327817,
		40.970436, 37.938309, 38.073856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981663, 37.154774, 37.693291>,  <40.819653, 37.294411, 38.303329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981663, 37.154774, 37.693291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129200, 37.526554, 37.696808>,  <41.217724, 37.749622, 37.698917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129200, 37.526554, 37.696808>,  <40.981663, 37.154774, 37.693291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129200, 37.526554, 37.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527449, -0.201511, -0.825343,
		-0.765342, 0.309062, -0.564563,
		0.368848, 0.929448, 0.008789,
		41.239853, 37.805389, 37.699444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803356, 37.434509, 37.085438>,  <40.981663, 37.154774, 37.693291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803356, 37.434509, 37.085438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130890, 37.616699, 37.225182>,  <41.327412, 37.726013, 37.309029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130890, 37.616699, 37.225182>,  <40.803356, 37.434509, 37.085438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130890, 37.616699, 37.225182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509704, -0.296999, -0.807461,
		-0.264019, 0.839247, -0.475350,
		0.818838, 0.455473, 0.349355,
		41.376541, 37.753342, 37.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085781, 37.663677, 36.462166>,  <40.803356, 37.434509, 37.085438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085781, 37.663677, 36.462166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360645, 37.691715, 36.751415>,  <41.525562, 37.708538, 36.924965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360645, 37.691715, 36.751415>,  <41.085781, 37.663677, 36.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360645, 37.691715, 36.751415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711117, -0.268684, -0.649709,
		0.148751, 0.960675, -0.234472,
		0.687158, 0.070092, 0.723119,
		41.566792, 37.712742, 36.968349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700768, 38.084633, 36.296963>,  <41.085781, 37.663677, 36.462166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700768, 38.084633, 36.296963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810627, 37.837093, 36.591335>,  <41.876541, 37.688568, 36.767960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810627, 37.837093, 36.591335>,  <41.700768, 38.084633, 36.296963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810627, 37.837093, 36.591335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784706, -0.298073, -0.543497,
		0.555704, 0.726760, 0.403749,
		0.274645, -0.618847, 0.735933,
		41.893021, 37.651440, 36.812115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351219, 38.302097, 36.543121>,  <41.700768, 38.084633, 36.296963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351219, 38.302097, 36.543121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300667, 37.908497, 36.593365>,  <42.270336, 37.672337, 36.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300667, 37.908497, 36.593365>,  <42.351219, 38.302097, 36.543121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300667, 37.908497, 36.593365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824796, -0.174582, -0.537803,
		0.551125, 0.035630, 0.833662,
		-0.126380, -0.983998, 0.125604,
		42.262753, 37.613297, 36.631046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991768, 37.999729, 36.745007>,  <42.351219, 38.302097, 36.543121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991768, 37.999729, 36.745007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771030, 37.731689, 36.546440>,  <42.638588, 37.570866, 36.427299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771030, 37.731689, 36.546440>,  <42.991768, 37.999729, 36.745007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771030, 37.731689, 36.546440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813938, -0.303178, -0.495568,
		0.181577, -0.677532, 0.712727,
		-0.551846, -0.670100, -0.496419,
		42.605476, 37.530659, 36.397514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166023, 37.285049, 36.776417>,  <42.991768, 37.999729, 36.745007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166023, 37.285049, 36.776417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044392, 37.459648, 36.437714>,  <42.971413, 37.564407, 36.234493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044392, 37.459648, 36.437714>,  <43.166023, 37.285049, 36.776417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044392, 37.459648, 36.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921488, -0.090691, -0.377669,
		-0.241646, -0.895121, -0.374653,
		-0.304082, 0.436501, -0.846759,
		42.953167, 37.590599, 36.183685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208080, 36.889771, 36.161213>,  <43.166023, 37.285049, 36.776417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208080, 36.889771, 36.161213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254398, 37.280048, 36.086800>,  <43.282188, 37.514214, 36.042152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254398, 37.280048, 36.086800>,  <43.208080, 36.889771, 36.161213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254398, 37.280048, 36.086800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993247, -0.112402, 0.028727,
		0.007118, -0.188108, -0.982122,
		0.115796, 0.975695, -0.186038,
		43.289139, 37.572758, 36.030987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832447, 36.882858, 35.698074>,  <43.208080, 36.889771, 36.161213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832447, 36.882858, 35.698074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779919, 37.165691, 35.976006>,  <43.748402, 37.335392, 36.142765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779919, 37.165691, 35.976006>,  <43.832447, 36.882858, 35.698074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779919, 37.165691, 35.976006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919002, -0.175996, 0.352788,
		0.371739, 0.684875, -0.626703,
		-0.131319, 0.707087, 0.694827,
		43.740524, 37.377819, 36.184452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451691, 37.239010, 35.704773>,  <43.832447, 36.882858, 35.698074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451691, 37.239010, 35.704773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255711, 37.265812, 36.052441>,  <44.138123, 37.281891, 36.261044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255711, 37.265812, 36.052441>,  <44.451691, 37.239010, 35.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255711, 37.265812, 36.052441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782519, -0.405622, 0.472372,
		0.384205, 0.911582, 0.146306,
		-0.489950, 0.067001, 0.869172,
		44.108727, 37.285912, 36.313190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016769, 37.493320, 36.232590>,  <44.451691, 37.239010, 35.704773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016769, 37.493320, 36.232590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717915, 37.250187, 36.340160>,  <44.538601, 37.104309, 36.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717915, 37.250187, 36.340160>,  <45.016769, 37.493320, 36.232590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717915, 37.250187, 36.340160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654913, -0.604167, 0.453950,
		-0.113447, 0.515290, 0.849474,
		-0.747140, -0.607831, 0.268929,
		44.493774, 37.067837, 36.420837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302856, 36.740231, 36.202389>,  <45.016769, 37.493320, 36.232590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302856, 36.740231, 36.202389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040459, 36.444000, 36.260670>,  <44.883022, 36.266262, 36.295639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040459, 36.444000, 36.260670>,  <45.302856, 36.740231, 36.202389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040459, 36.444000, 36.260670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158244, 0.053802, 0.985933,
		-0.737995, 0.669818, 0.081898,
		-0.655990, -0.740573, 0.145700,
		44.843662, 36.221828, 36.304379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890030, 36.595654, 35.766685>,  <45.302856, 36.740231, 36.202389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890030, 36.595654, 35.766685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955299, 36.262775, 35.554710>,  <45.994461, 36.063049, 35.427525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955299, 36.262775, 35.554710>,  <45.890030, 36.595654, 35.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955299, 36.262775, 35.554710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920694, 0.321464, -0.221320,
		0.354536, -0.451795, 0.818648,
		0.163174, -0.832191, -0.529936,
		46.004253, 36.013119, 35.395729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501507, 36.326908, 35.947147>,  <45.890030, 36.595654, 35.766685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501507, 36.326908, 35.947147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431225, 36.176529, 35.583214>,  <46.389057, 36.086304, 35.364853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431225, 36.176529, 35.583214>,  <46.501507, 36.326908, 35.947147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431225, 36.176529, 35.583214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887219, 0.340005, -0.311830,
		0.426578, -0.862011, 0.273803,
		-0.175706, -0.375943, -0.909832,
		46.378513, 36.063747, 35.310265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996552, 35.775139, 35.694725>,  <46.501507, 36.326908, 35.947147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996552, 35.775139, 35.694725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837925, 36.023605, 35.424351>,  <46.742748, 36.172684, 35.262127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837925, 36.023605, 35.424351>,  <46.996552, 35.775139, 35.694725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837925, 36.023605, 35.424351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917797, 0.252602, -0.306334,
		-0.019542, -0.741853, -0.670278,
		-0.396569, 0.621166, -0.675934,
		46.718956, 36.209953, 35.221569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440479, 35.132710, 35.725960>,  <46.996552, 35.775139, 35.694725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440479, 35.132710, 35.725960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486073, 34.789963, 35.524849>,  <47.513428, 34.584312, 35.404182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486073, 34.789963, 35.524849>,  <47.440479, 35.132710, 35.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486073, 34.789963, 35.524849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267017, 0.461029, -0.846259,
		0.956927, 0.230709, -0.176248,
		0.113984, -0.856870, -0.502775,
		47.520267, 34.532902, 35.374016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.110287, 35.053566, 35.307522>,  <47.440479, 35.132710, 35.725960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.110287, 35.053566, 35.307522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782639, 34.871025, 35.168503>,  <47.586052, 34.761501, 35.085091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782639, 34.871025, 35.168503>,  <48.110287, 35.053566, 35.307522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782639, 34.871025, 35.168503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046959, 0.550497, -0.833515,
		0.571705, -0.699065, -0.429490,
		-0.819114, -0.456356, -0.347549,
		47.536903, 34.734119, 35.064240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.435425, 31.359650, 30.811693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128452, 31.528303, 30.618502>,  <38.944267, 31.629496, 30.502586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128452, 31.528303, 30.618502>,  <39.435425, 31.359650, 30.811693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128452, 31.528303, 30.618502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531902, 0.001870, 0.846804,
		0.357946, 0.906764, 0.222833,
		-0.767434, 0.421635, -0.482979,
		38.898224, 31.654793, 30.473608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281281, 31.771524, 31.323921>,  <39.435425, 31.359650, 30.811693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281281, 31.771524, 31.323921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963783, 31.793095, 31.081579>,  <38.773285, 31.806036, 30.936174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963783, 31.793095, 31.081579>,  <39.281281, 31.771524, 31.323921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963783, 31.793095, 31.081579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582046, 0.221861, 0.782304,
		0.176600, 0.973586, -0.144715,
		-0.793747, 0.053924, -0.605853,
		38.725658, 31.809271, 30.899824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830536, 32.468323, 31.461369>,  <39.281281, 31.771524, 31.323921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830536, 32.468323, 31.461369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584202, 32.233265, 31.251448>,  <38.436401, 32.092232, 31.125496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584202, 32.233265, 31.251448>,  <38.830536, 32.468323, 31.461369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584202, 32.233265, 31.251448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682024, 0.064142, 0.728512,
		-0.394444, 0.806573, -0.440289,
		-0.615839, -0.587645, -0.524801,
		38.399448, 32.056973, 31.094007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196796, 32.814888, 31.342768>,  <38.830536, 32.468323, 31.461369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196796, 32.814888, 31.342768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136723, 32.419643, 31.329620>,  <38.100677, 32.182495, 31.321732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136723, 32.419643, 31.329620>,  <38.196796, 32.814888, 31.342768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136723, 32.419643, 31.329620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716640, 0.085898, 0.692133,
		-0.681081, 0.127502, -0.721021,
		-0.150183, -0.988112, -0.032870,
		38.091667, 32.123211, 31.319759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466022, 32.729034, 31.391468>,  <38.196796, 32.814888, 31.342768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466022, 32.729034, 31.391468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635963, 32.390434, 31.519802>,  <37.737926, 32.187275, 31.596802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635963, 32.390434, 31.519802>,  <37.466022, 32.729034, 31.391468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635963, 32.390434, 31.519802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616947, -0.011389, 0.786922,
		-0.662478, -0.532262, -0.527087,
		0.424851, -0.846503, 0.320833,
		37.763420, 32.136482, 31.616053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896854, 32.342972, 31.514675>,  <37.466022, 32.729034, 31.391468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896854, 32.342972, 31.514675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198566, 32.184841, 31.724354>,  <37.379593, 32.089962, 31.850161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198566, 32.184841, 31.724354>,  <36.896854, 32.342972, 31.514675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198566, 32.184841, 31.724354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612487, -0.136109, 0.778674,
		-0.236488, -0.908398, -0.344800,
		0.754276, -0.395333, 0.524194,
		37.424850, 32.066242, 31.881613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562634, 31.811623, 31.797073>,  <36.896854, 32.342972, 31.514675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562634, 31.811623, 31.797073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876404, 31.945879, 32.005699>,  <37.064667, 32.026432, 32.130875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876404, 31.945879, 32.005699>,  <36.562634, 31.811623, 31.797073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876404, 31.945879, 32.005699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599396, 0.194133, 0.776554,
		0.159386, -0.921771, 0.353461,
		0.784423, 0.335635, 0.521564,
		37.111729, 32.046570, 32.162167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423206, 31.700478, 32.438042>,  <36.562634, 31.811623, 31.797073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423206, 31.700478, 32.438042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741734, 31.935614, 32.495064>,  <36.932850, 32.076694, 32.529278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741734, 31.935614, 32.495064>,  <36.423206, 31.700478, 32.438042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741734, 31.935614, 32.495064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298649, 0.177145, 0.937778,
		0.526012, -0.789343, 0.316622,
		0.796317, 0.587841, 0.142556,
		36.980629, 32.111965, 32.537830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709072, 31.374002, 33.011417>,  <36.423206, 31.700478, 32.438042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709072, 31.374002, 33.011417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893707, 31.728577, 33.025089>,  <37.004490, 31.941320, 33.033291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893707, 31.728577, 33.025089>,  <36.709072, 31.374002, 33.011417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893707, 31.728577, 33.025089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241102, 0.088282, 0.966476,
		0.853700, -0.454358, 0.254472,
		0.461591, 0.886434, 0.034180,
		37.032185, 31.994507, 33.035343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148800, 31.385157, 33.649086>,  <36.709072, 31.374002, 33.011417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148800, 31.385157, 33.649086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097813, 31.769585, 33.551025>,  <37.067219, 32.000240, 33.492191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097813, 31.769585, 33.551025>,  <37.148800, 31.385157, 33.649086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097813, 31.769585, 33.551025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195118, 0.218037, 0.956237,
		0.972461, 0.169722, 0.159729,
		-0.127468, 0.961069, -0.245148,
		37.059574, 32.057907, 33.477482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710243, 31.915871, 33.884132>,  <37.148800, 31.385157, 33.649086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710243, 31.915871, 33.884132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366344, 32.114540, 33.836540>,  <37.160007, 32.233742, 33.807983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366344, 32.114540, 33.836540>,  <37.710243, 31.915871, 33.884132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366344, 32.114540, 33.836540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083656, 0.366775, 0.926541,
		0.503829, 0.786633, -0.356882,
		-0.859743, 0.496674, -0.118985,
		37.108421, 32.263542, 33.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846790, 32.484673, 34.246132>,  <37.710243, 31.915871, 33.884132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846790, 32.484673, 34.246132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449081, 32.512932, 34.214058>,  <37.210457, 32.529888, 34.194813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449081, 32.512932, 34.214058>,  <37.846790, 32.484673, 34.246132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449081, 32.512932, 34.214058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041606, 0.435178, 0.899383,
		0.098435, 0.897568, -0.429746,
		-0.994273, 0.070651, -0.080181,
		37.150799, 32.534126, 34.190002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713535, 33.199478, 34.505505>,  <37.846790, 32.484673, 34.246132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713535, 33.199478, 34.505505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391788, 32.964191, 34.538960>,  <37.198738, 32.823021, 34.559032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391788, 32.964191, 34.538960>,  <37.713535, 33.199478, 34.505505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391788, 32.964191, 34.538960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134793, 0.317782, 0.938534,
		-0.578636, 0.743654, -0.334901,
		-0.804370, -0.588212, 0.083641,
		37.150478, 32.787727, 34.564053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170506, 33.631615, 34.875980>,  <37.713535, 33.199478, 34.505505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170506, 33.631615, 34.875980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048801, 33.256069, 34.940441>,  <36.975780, 33.030743, 34.979118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048801, 33.256069, 34.940441>,  <37.170506, 33.631615, 34.875980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048801, 33.256069, 34.940441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151640, 0.214751, 0.964825,
		-0.940443, 0.269116, -0.207708,
		-0.304256, -0.938860, 0.161152,
		36.957523, 32.974411, 34.988789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630169, 33.701260, 35.233219>,  <37.170506, 33.631615, 34.875980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630169, 33.701260, 35.233219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703583, 33.315098, 35.307301>,  <36.747631, 33.083401, 35.351749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703583, 33.315098, 35.307301>,  <36.630169, 33.701260, 35.233219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703583, 33.315098, 35.307301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360337, 0.109223, 0.926406,
		-0.914589, -0.236761, -0.327827,
		0.183530, -0.965409, 0.185208,
		36.758640, 33.025475, 35.362862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110294, 33.507404, 35.741955>,  <36.630169, 33.701260, 35.233219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110294, 33.507404, 35.741955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375984, 33.209858, 35.771542>,  <36.535400, 33.031330, 35.789295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375984, 33.209858, 35.771542>,  <36.110294, 33.507404, 35.741955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375984, 33.209858, 35.771542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225082, -0.104661, 0.968702,
		-0.712839, -0.660087, -0.236949,
		0.664227, -0.743862, 0.073967,
		36.575253, 32.986698, 35.793732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824753, 33.038235, 36.218971>,  <36.110294, 33.507404, 35.741955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824753, 33.038235, 36.218971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195728, 32.891628, 36.248692>,  <36.418312, 32.803665, 36.266525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195728, 32.891628, 36.248692>,  <35.824753, 33.038235, 36.218971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195728, 32.891628, 36.248692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157084, -0.201496, 0.966811,
		-0.339384, -0.908329, -0.244450,
		0.927439, -0.366520, 0.074300,
		36.473961, 32.781673, 36.270981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907806, 32.380306, 36.666866>,  <35.824753, 33.038235, 36.218971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907806, 32.380306, 36.666866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259697, 32.569874, 36.651474>,  <36.470833, 32.683613, 36.642239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259697, 32.569874, 36.651474>,  <35.907806, 32.380306, 36.666866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259697, 32.569874, 36.651474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073301, -0.055204, 0.995781,
		0.469796, -0.878836, -0.083303,
		0.879726, 0.473920, -0.038485,
		36.523613, 32.712051, 36.639927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244465, 32.218521, 37.214542>,  <35.907806, 32.380306, 36.666866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244465, 32.218521, 37.214542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490265, 32.521763, 37.127209>,  <36.637745, 32.703709, 37.074806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490265, 32.521763, 37.127209>,  <36.244465, 32.218521, 37.214542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490265, 32.521763, 37.127209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213113, 0.106955, 0.971156,
		0.759590, -0.643303, -0.095838,
		0.614497, 0.758105, -0.218337,
		36.674614, 32.749195, 37.061707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898243, 32.109802, 37.626759>,  <36.244465, 32.218521, 37.214542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898243, 32.109802, 37.626759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841625, 32.495056, 37.535244>,  <36.807655, 32.726208, 37.480335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841625, 32.495056, 37.535244>,  <36.898243, 32.109802, 37.626759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841625, 32.495056, 37.535244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119156, 0.246010, 0.961915,
		0.982735, 0.108890, -0.149584,
		-0.141542, 0.963131, -0.228787,
		36.799164, 32.783997, 37.466606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394623, 32.498558, 38.054523>,  <36.898243, 32.109802, 37.626759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394623, 32.498558, 38.054523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104988, 32.754826, 37.952347>,  <36.931210, 32.908585, 37.891041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104988, 32.754826, 37.952347>,  <37.394623, 32.498558, 38.054523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104988, 32.754826, 37.952347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059443, 0.426953, 0.902318,
		0.687146, 0.638169, -0.347233,
		-0.724083, 0.640665, -0.255444,
		36.887764, 32.947025, 37.875713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565468, 33.098717, 38.412800>,  <37.394623, 32.498558, 38.054523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565468, 33.098717, 38.412800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184956, 33.177776, 38.318142>,  <36.956650, 33.225212, 38.261345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184956, 33.177776, 38.318142>,  <37.565468, 33.098717, 38.412800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184956, 33.177776, 38.318142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154514, 0.358604, 0.920613,
		0.266820, 0.912326, -0.310594,
		-0.951280, 0.197647, -0.236649,
		36.899570, 33.237072, 38.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241924, 33.378841, 38.505585>,  <37.565468, 33.098717, 38.412800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241924, 33.378841, 38.505585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525848, 33.652489, 38.572704>,  <38.696201, 33.816677, 38.612976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525848, 33.652489, 38.572704>,  <38.241924, 33.378841, 38.505585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525848, 33.652489, 38.572704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207568, 0.024499, -0.977914,
		-0.673119, 0.728960, -0.124611,
		0.709807, 0.684118, 0.167800,
		38.738789, 33.857723, 38.623043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297123, 33.707489, 37.962364>,  <38.241924, 33.378841, 38.505585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297123, 33.707489, 37.962364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635456, 33.836906, 38.132015>,  <38.838455, 33.914555, 38.233807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635456, 33.836906, 38.132015>,  <38.297123, 33.707489, 37.962364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635456, 33.836906, 38.132015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352027, 0.258829, -0.899491,
		-0.400799, 0.910126, 0.105032,
		0.845835, 0.323541, 0.424128,
		38.889206, 33.933968, 38.259254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433315, 34.385445, 37.680080>,  <38.297123, 33.707489, 37.962364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433315, 34.385445, 37.680080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770294, 34.207558, 37.801743>,  <38.972481, 34.100826, 37.874741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770294, 34.207558, 37.801743>,  <38.433315, 34.385445, 37.680080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770294, 34.207558, 37.801743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379163, 0.088300, -0.921107,
		0.382773, 0.891309, 0.243008,
		0.842449, -0.444715, 0.304152,
		39.023029, 34.074142, 37.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934742, 34.655731, 37.236530>,  <38.433315, 34.385445, 37.680080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934742, 34.655731, 37.236530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140015, 34.361439, 37.413322>,  <39.263180, 34.184864, 37.519398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140015, 34.361439, 37.413322>,  <38.934742, 34.655731, 37.236530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140015, 34.361439, 37.413322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492503, -0.169310, -0.853683,
		0.702911, 0.655771, 0.275462,
		0.513183, -0.735730, 0.441979,
		39.293968, 34.140720, 37.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732311, 34.760853, 37.016197>,  <38.934742, 34.655731, 37.236530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732311, 34.760853, 37.016197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675480, 34.382210, 37.131954>,  <39.641380, 34.155025, 37.201408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675480, 34.382210, 37.131954>,  <39.732311, 34.760853, 37.016197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675480, 34.382210, 37.131954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504520, -0.320786, -0.801596,
		0.851630, 0.032119, 0.523157,
		-0.142075, -0.946607, 0.289396,
		39.632858, 34.098228, 37.218773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379368, 34.452236, 36.903709>,  <39.732311, 34.760853, 37.016197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379368, 34.452236, 36.903709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113224, 34.154205, 36.922256>,  <39.953537, 33.975388, 36.933384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113224, 34.154205, 36.922256>,  <40.379368, 34.452236, 36.903709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113224, 34.154205, 36.922256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454232, -0.453357, -0.766903,
		0.592425, -0.489206, 0.640085,
		-0.665361, -0.745080, 0.046367,
		39.913616, 33.930679, 36.936165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755760, 33.821716, 36.897495>,  <40.379368, 34.452236, 36.903709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755760, 33.821716, 36.897495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388462, 33.715942, 36.779579>,  <40.168083, 33.652477, 36.708828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388462, 33.715942, 36.779579>,  <40.755760, 33.821716, 36.897495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388462, 33.715942, 36.779579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392039, -0.501764, -0.771063,
		0.055979, -0.823594, 0.564411,
		-0.918244, -0.264434, -0.294793,
		40.112988, 33.636612, 36.691143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792606, 33.210987, 36.630116>,  <40.755760, 33.821716, 36.897495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792606, 33.210987, 36.630116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433178, 33.302708, 36.480450>,  <40.217522, 33.357738, 36.390652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433178, 33.302708, 36.480450>,  <40.792606, 33.210987, 36.630116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433178, 33.302708, 36.480450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277432, -0.363792, -0.889206,
		-0.340012, -0.902816, 0.263277,
		-0.898567, 0.229300, -0.374164,
		40.163609, 33.371498, 36.368202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319424, 32.675346, 36.414085>,  <40.792606, 33.210987, 36.630116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319424, 32.675346, 36.414085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214394, 32.983440, 36.181606>,  <40.151375, 33.168297, 36.042118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214394, 32.983440, 36.181606>,  <40.319424, 32.675346, 36.414085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214394, 32.983440, 36.181606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038041, -0.593597, -0.803863,
		-0.964161, -0.233186, 0.126565,
		-0.262578, 0.770239, -0.581193,
		40.135620, 33.214512, 36.007248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977283, 32.388588, 35.877552>,  <40.319424, 32.675346, 36.414085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977283, 32.388588, 35.877552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057587, 32.755432, 35.739799>,  <40.105770, 32.975540, 35.657146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057587, 32.755432, 35.739799>,  <39.977283, 32.388588, 35.877552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057587, 32.755432, 35.739799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162961, -0.377905, -0.911390,
		-0.965992, 0.126848, -0.225321,
		0.200758, 0.917114, -0.344382,
		40.117813, 33.030567, 35.636486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681705, 32.417393, 35.267197>,  <39.977283, 32.388588, 35.877552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681705, 32.417393, 35.267197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951378, 32.709797, 35.225040>,  <40.113182, 32.885239, 35.199745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951378, 32.709797, 35.225040>,  <39.681705, 32.417393, 35.267197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951378, 32.709797, 35.225040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129272, -0.257291, -0.957648,
		-0.727164, 0.632005, -0.267960,
		0.674182, 0.731007, -0.105393,
		40.153633, 32.929100, 35.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479824, 32.725349, 34.669453>,  <39.681705, 32.417393, 35.267197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479824, 32.725349, 34.669453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859226, 32.834702, 34.733459>,  <40.086868, 32.900314, 34.771866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859226, 32.834702, 34.733459>,  <39.479824, 32.725349, 34.669453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859226, 32.834702, 34.733459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204606, -0.143081, -0.968331,
		-0.241827, 0.951205, -0.191648,
		0.948502, 0.273381, 0.160022,
		40.143776, 32.916718, 34.781467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683033, 33.336735, 34.247345>,  <39.479824, 32.725349, 34.669453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683033, 33.336735, 34.247345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029915, 33.151909, 34.321590>,  <40.238045, 33.041012, 34.366138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029915, 33.151909, 34.321590>,  <39.683033, 33.336735, 34.247345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029915, 33.151909, 34.321590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249353, 0.080315, -0.965076,
		0.431023, 0.883201, 0.184868,
		0.867204, -0.462067, 0.185611,
		40.290077, 33.013290, 34.377274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182102, 33.689903, 33.865814>,  <39.683033, 33.336735, 34.247345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182102, 33.689903, 33.865814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351177, 33.334736, 33.938404>,  <40.452621, 33.121635, 33.981960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351177, 33.334736, 33.938404>,  <40.182102, 33.689903, 33.865814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351177, 33.334736, 33.938404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285891, -0.059382, -0.956420,
		0.860002, 0.456147, 0.228749,
		0.422684, -0.887921, 0.181477,
		40.477982, 33.068359, 33.992847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878166, 33.742073, 33.556572>,  <40.182102, 33.689903, 33.865814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878166, 33.742073, 33.556572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795254, 33.354099, 33.607567>,  <40.745506, 33.121315, 33.638165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795254, 33.354099, 33.607567>,  <40.878166, 33.742073, 33.556572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795254, 33.354099, 33.607567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280186, -0.183716, -0.942202,
		0.937299, -0.159586, 0.309845,
		-0.207286, -0.969939, 0.127483,
		40.733067, 33.063118, 33.645813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398186, 33.497219, 33.115749>,  <40.878166, 33.742073, 33.556572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398186, 33.497219, 33.115749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154205, 33.187054, 33.181095>,  <41.007816, 33.000954, 33.220303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154205, 33.187054, 33.181095>,  <41.398186, 33.497219, 33.115749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154205, 33.187054, 33.181095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205213, -0.353690, -0.912574,
		0.765405, -0.523102, 0.374859,
		-0.609954, -0.775414, 0.163368,
		40.971218, 32.954430, 33.230106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747070, 32.821106, 32.926952>,  <41.398186, 33.497219, 33.115749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747070, 32.821106, 32.926952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.356426, 32.738266, 32.903831>,  <41.122040, 32.688560, 32.889957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.356426, 32.738266, 32.903831>,  <41.747070, 32.821106, 32.926952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356426, 32.738266, 32.903831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155084, -0.492253, -0.856525,
		0.148935, -0.845456, 0.512857,
		-0.976610, -0.207103, -0.057803,
		41.063442, 32.676136, 32.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726147, 32.076347, 32.668182>,  <41.747070, 32.821106, 32.926952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726147, 32.076347, 32.668182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399216, 32.286045, 32.572559>,  <41.203056, 32.411865, 32.515186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399216, 32.286045, 32.572559>,  <41.726147, 32.076347, 32.668182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399216, 32.286045, 32.572559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023989, -0.445502, -0.894959,
		-0.575678, -0.725738, 0.376696,
		-0.817325, 0.524245, -0.239056,
		41.154018, 32.443317, 32.500843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.310448, 31.580648, 32.234585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166813, 31.944534, 32.151176>,  <41.080631, 32.162865, 32.101131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166813, 31.944534, 32.151176>,  <41.310448, 31.580648, 32.234585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166813, 31.944534, 32.151176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079260, -0.192889, -0.978014,
		-0.929933, -0.367718, -0.002840,
		-0.359086, 0.909712, -0.208519,
		41.059086, 32.217449, 32.088619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839127, 31.513668, 31.697298>,  <41.310448, 31.580648, 32.234585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839127, 31.513668, 31.697298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.932156, 31.902122, 31.676128>,  <40.987972, 32.135197, 31.663425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.932156, 31.902122, 31.676128>,  <40.839127, 31.513668, 31.697298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932156, 31.902122, 31.676128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107863, -0.079837, -0.990955,
		-0.966579, 0.224761, -0.123318,
		0.232573, 0.971138, -0.052926,
		41.001926, 32.193462, 31.660250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445461, 31.669136, 31.134760>,  <40.839127, 31.513668, 31.697298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445461, 31.669136, 31.134760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695618, 31.976812, 31.187267>,  <40.845711, 32.161419, 31.218771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695618, 31.976812, 31.187267>,  <40.445461, 31.669136, 31.134760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695618, 31.976812, 31.187267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021480, 0.185132, -0.982479,
		-0.780017, 0.611612, 0.132302,
		0.625389, 0.769192, 0.131269,
		40.883236, 32.207569, 31.226648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264526, 32.188538, 30.733606>,  <40.445461, 31.669136, 31.134760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264526, 32.188538, 30.733606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631306, 32.334198, 30.798849>,  <40.851372, 32.421593, 30.837994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631306, 32.334198, 30.798849>,  <40.264526, 32.188538, 30.733606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631306, 32.334198, 30.798849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088785, 0.212320, -0.973159,
		-0.389003, 0.906817, 0.162355,
		0.916948, 0.364147, 0.163105,
		40.906391, 32.443443, 30.847780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384434, 32.848316, 30.247002>,  <40.264526, 32.188538, 30.733606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384434, 32.848316, 30.247002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.733459, 32.685589, 30.355171>,  <40.942875, 32.587952, 30.420073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.733459, 32.685589, 30.355171>,  <40.384434, 32.848316, 30.247002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733459, 32.685589, 30.355171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155493, -0.293489, -0.943232,
		0.463093, 0.865079, -0.192830,
		0.872564, -0.406820, 0.270426,
		40.995228, 32.563541, 30.436298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862438, 33.110146, 29.787870>,  <40.384434, 32.848316, 30.247002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862438, 33.110146, 29.787870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019444, 32.776863, 29.943666>,  <41.113647, 32.576893, 30.037144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019444, 32.776863, 29.943666>,  <40.862438, 33.110146, 29.787870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019444, 32.776863, 29.943666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548707, -0.127726, -0.826200,
		0.738143, 0.538009, 0.407052,
		0.392512, -0.833206, 0.389490,
		41.137196, 32.526901, 30.060513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589245, 33.199829, 29.722982>,  <40.862438, 33.110146, 29.787870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589245, 33.199829, 29.722982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493328, 32.812435, 29.749916>,  <41.435780, 32.579998, 29.766077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493328, 32.812435, 29.749916>,  <41.589245, 33.199829, 29.722982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493328, 32.812435, 29.749916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546075, -0.191900, -0.815461,
		0.802685, -0.158769, 0.574882,
		-0.239790, -0.968487, 0.067336,
		41.421391, 32.521889, 29.770117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215763, 32.969398, 29.424738>,  <41.589245, 33.199829, 29.722982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215763, 32.969398, 29.424738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967712, 32.655598, 29.426081>,  <41.818882, 32.467319, 29.426888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967712, 32.655598, 29.426081>,  <42.215763, 32.969398, 29.424738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967712, 32.655598, 29.426081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497777, -0.396781, -0.771222,
		0.606355, -0.476580, 0.636558,
		-0.620123, -0.784497, 0.003359,
		41.781677, 32.420250, 29.427088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669716, 32.333950, 29.490961>,  <42.215763, 32.969398, 29.424738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669716, 32.333950, 29.490961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324444, 32.263706, 29.301615>,  <42.117279, 32.221558, 29.188007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324444, 32.263706, 29.301615>,  <42.669716, 32.333950, 29.490961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324444, 32.263706, 29.301615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495981, -0.470305, -0.729942,
		-0.094440, -0.864855, 0.493059,
		-0.863182, -0.175613, -0.473367,
		42.065491, 32.211021, 29.159605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765991, 31.648548, 29.283855>,  <42.669716, 32.333950, 29.490961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765991, 31.648548, 29.283855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464275, 31.801352, 29.070271>,  <42.283245, 31.893034, 28.942120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464275, 31.801352, 29.070271>,  <42.765991, 31.648548, 29.283855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464275, 31.801352, 29.070271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396533, -0.383127, -0.834251,
		-0.523266, -0.841002, 0.137510,
		-0.754290, 0.382008, -0.533963,
		42.237988, 31.915955, 28.910082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528915, 31.101030, 28.902174>,  <42.765991, 31.648548, 29.283855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528915, 31.101030, 28.902174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.384724, 31.429245, 28.724737>,  <42.298206, 31.626173, 28.618275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.384724, 31.429245, 28.724737>,  <42.528915, 31.101030, 28.902174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384724, 31.429245, 28.724737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128934, -0.427170, -0.894931,
		-0.923812, -0.379801, 0.048193,
		-0.360483, 0.820534, -0.443594,
		42.276581, 31.675406, 28.591660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210793, 30.871094, 28.291473>,  <42.528915, 31.101030, 28.902174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210793, 30.871094, 28.291473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246456, 31.256832, 28.191803>,  <42.267857, 31.488276, 28.132000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246456, 31.256832, 28.191803>,  <42.210793, 30.871094, 28.291473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246456, 31.256832, 28.191803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295875, -0.264523, -0.917870,
		-0.951056, 0.008114, -0.308911,
		0.089161, 0.964345, -0.249176,
		42.273205, 31.546135, 28.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987617, 30.986422, 27.588079>,  <42.210793, 30.871094, 28.291473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987617, 30.986422, 27.588079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225574, 31.303011, 27.644186>,  <42.368347, 31.492964, 27.677851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225574, 31.303011, 27.644186>,  <41.987617, 30.986422, 27.588079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225574, 31.303011, 27.644186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343093, -0.092219, -0.934763,
		-0.726904, 0.604209, -0.326409,
		0.594893, 0.791472, 0.140266,
		42.404041, 31.540453, 27.686266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889194, 31.374939, 26.964296>,  <41.987617, 30.986422, 27.588079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889194, 31.374939, 26.964296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.224701, 31.527411, 27.119822>,  <42.426006, 31.618893, 27.213137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.224701, 31.527411, 27.119822>,  <41.889194, 31.374939, 26.964296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224701, 31.527411, 27.119822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335343, 0.200942, -0.920417,
		-0.428972, 0.902400, 0.040717,
		0.838766, 0.381179, 0.388812,
		42.476330, 31.641764, 27.236465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015697, 32.136440, 26.674032>,  <41.889194, 31.374939, 26.964296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015697, 32.136440, 26.674032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366222, 31.971998, 26.774490>,  <42.576538, 31.873333, 26.834764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366222, 31.971998, 26.774490>,  <42.015697, 32.136440, 26.674032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366222, 31.971998, 26.774490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393293, 0.309444, -0.865774,
		0.278206, 0.857461, 0.432853,
		0.876311, -0.411102, 0.251144,
		42.629116, 31.848667, 26.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482677, 32.605217, 26.468096>,  <42.015697, 32.136440, 26.674032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482677, 32.605217, 26.468096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.747940, 32.315338, 26.542965>,  <42.907097, 32.141411, 26.587887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.747940, 32.315338, 26.542965>,  <42.482677, 32.605217, 26.468096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747940, 32.315338, 26.542965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488726, 0.229853, -0.841615,
		0.566894, 0.649601, 0.506607,
		0.663158, -0.724698, 0.187174,
		42.946888, 32.097927, 26.599117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146286, 32.908836, 26.559563>,  <42.482677, 32.605217, 26.468096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146286, 32.908836, 26.559563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181496, 32.524986, 26.452705>,  <43.202621, 32.294674, 26.388592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181496, 32.524986, 26.452705>,  <43.146286, 32.908836, 26.559563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181496, 32.524986, 26.452705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384033, 0.280146, -0.879794,
		0.919113, -0.025146, 0.393190,
		0.088027, -0.959628, -0.267143,
		43.207905, 32.237099, 26.372562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814693, 32.857487, 26.206238>,  <43.146286, 32.908836, 26.559563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814693, 32.857487, 26.206238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621994, 32.522041, 26.104538>,  <43.506374, 32.320774, 26.043518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621994, 32.522041, 26.104538>,  <43.814693, 32.857487, 26.206238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621994, 32.522041, 26.104538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259404, 0.140661, -0.955471,
		0.837036, -0.526248, 0.149778,
		-0.481747, -0.838617, -0.254249,
		43.477470, 32.270458, 26.028263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213699, 32.521816, 25.672348>,  <43.814693, 32.857487, 26.206238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213699, 32.521816, 25.672348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860241, 32.342388, 25.618740>,  <43.648167, 32.234730, 25.586575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860241, 32.342388, 25.618740>,  <44.213699, 32.521816, 25.672348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860241, 32.342388, 25.618740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095364, 0.107804, -0.989588,
		0.458349, -0.887221, -0.052483,
		-0.883641, -0.448571, -0.134021,
		43.595150, 32.207817, 25.578533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305443, 31.998823, 25.217855>,  <44.213699, 32.521816, 25.672348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305443, 31.998823, 25.217855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908813, 32.042206, 25.189518>,  <43.670837, 32.068237, 25.172516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908813, 32.042206, 25.189518>,  <44.305443, 31.998823, 25.217855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908813, 32.042206, 25.189518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060443, -0.096350, -0.993511,
		-0.114574, -0.989421, 0.088983,
		-0.991574, 0.108452, -0.070843,
		43.611340, 32.074741, 25.168264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159126, 31.682487, 24.703394>,  <44.305443, 31.998823, 25.217855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159126, 31.682487, 24.703394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825130, 31.901936, 24.720377>,  <43.624733, 32.033604, 24.730566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825130, 31.901936, 24.720377>,  <44.159126, 31.682487, 24.703394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825130, 31.901936, 24.720377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083527, -0.050105, -0.995245,
		-0.543885, -0.834568, 0.087662,
		-0.834992, 0.548621, 0.042457,
		43.574635, 32.066521, 24.733114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549603, 31.377859, 24.238745>,  <44.159126, 31.682487, 24.703394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549603, 31.377859, 24.238745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.479355, 31.769775, 24.277040>,  <43.437206, 32.004925, 24.300018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.479355, 31.769775, 24.277040>,  <43.549603, 31.377859, 24.238745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479355, 31.769775, 24.277040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223270, 0.055077, -0.973199,
		-0.958806, -0.192288, 0.209085,
		-0.175618, 0.979792, 0.095740,
		43.426670, 32.063713, 24.305763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068893, 31.545027, 23.724112>,  <43.549603, 31.377859, 24.238745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068893, 31.545027, 23.724112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.278534, 31.876375, 23.803225>,  <43.404320, 32.075184, 23.850693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.278534, 31.876375, 23.803225>,  <43.068893, 31.545027, 23.724112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278534, 31.876375, 23.803225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024426, 0.246757, -0.968769,
		-0.851305, 0.502903, 0.149559,
		0.524101, 0.828372, 0.197782,
		43.435764, 32.124886, 23.862558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702686, 32.105316, 23.314768>,  <43.068893, 31.545027, 23.724112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702686, 32.105316, 23.314768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.080639, 32.197311, 23.407980>,  <43.307411, 32.252510, 23.463907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.080639, 32.197311, 23.407980>,  <42.702686, 32.105316, 23.314768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080639, 32.197311, 23.407980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145626, 0.342245, -0.928257,
		-0.293244, 0.911028, 0.289888,
		0.944881, 0.229991, 0.233031,
		43.364101, 32.266308, 23.477890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112934, 31.639809, 23.419983>,  <42.702686, 32.105316, 23.314768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112934, 31.639809, 23.419983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844318, 31.793945, 23.673136>,  <41.683147, 31.886427, 23.825027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844318, 31.793945, 23.673136>,  <42.112934, 31.639809, 23.419983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844318, 31.793945, 23.673136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246969, 0.688890, -0.681496,
		-0.698596, -0.613957, -0.367452,
		-0.671543, 0.385341, 0.632884,
		41.642857, 31.909548, 23.863001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440453, 31.328773, 23.354233>,  <42.112934, 31.639809, 23.419983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440453, 31.328773, 23.354233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.096516, 31.152893, 23.250433>,  <40.890156, 31.047365, 23.188154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.096516, 31.152893, 23.250433>,  <41.440453, 31.328773, 23.354233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096516, 31.152893, 23.250433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366268, 0.177124, 0.913496,
		-0.355700, 0.880507, -0.313345,
		-0.859840, -0.439699, -0.259498,
		40.838562, 31.020983, 23.172583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969261, 31.814106, 23.490702>,  <41.440453, 31.328773, 23.354233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969261, 31.814106, 23.490702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.801144, 31.451151, 23.490931>,  <40.700275, 31.233377, 23.491068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.801144, 31.451151, 23.490931>,  <40.969261, 31.814106, 23.490702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801144, 31.451151, 23.490931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503710, 0.233835, 0.831623,
		-0.754740, 0.349235, -0.555340,
		-0.420290, -0.907390, 0.000571,
		40.675056, 31.178934, 23.491102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171249, 31.944086, 23.626198>,  <40.969261, 31.814106, 23.490702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171249, 31.944086, 23.626198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267269, 31.564571, 23.708351>,  <40.324879, 31.336863, 23.757643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267269, 31.564571, 23.708351>,  <40.171249, 31.944086, 23.626198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267269, 31.564571, 23.708351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266364, 0.139077, 0.953786,
		-0.933503, -0.283659, -0.219337,
		0.240046, -0.948786, 0.205385,
		40.339283, 31.279936, 23.769966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632816, 31.640984, 23.987364>,  <40.171249, 31.944086, 23.626198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632816, 31.640984, 23.987364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939926, 31.404232, 24.085510>,  <40.124191, 31.262180, 24.144398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939926, 31.404232, 24.085510>,  <39.632816, 31.640984, 23.987364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939926, 31.404232, 24.085510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302829, 0.002261, 0.953042,
		-0.564642, -0.806022, -0.177503,
		0.767772, -0.591881, 0.245364,
		40.170258, 31.226667, 24.159119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350761, 31.083450, 24.254040>,  <39.632816, 31.640984, 23.987364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350761, 31.083450, 24.254040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721634, 31.082710, 24.403885>,  <39.944157, 31.082266, 24.493792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721634, 31.082710, 24.403885>,  <39.350761, 31.083450, 24.254040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721634, 31.082710, 24.403885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374422, -0.036732, 0.926531,
		0.012058, -0.999323, -0.034745,
		0.927180, -0.001838, 0.374611,
		39.999786, 31.082155, 24.516268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380146, 30.525040, 24.769169>,  <39.350761, 31.083450, 24.254040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380146, 30.525040, 24.769169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691303, 30.763517, 24.848612>,  <39.877998, 30.906603, 24.896276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691303, 30.763517, 24.848612>,  <39.380146, 30.525040, 24.769169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691303, 30.763517, 24.848612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321601, 0.106174, 0.940904,
		0.539873, -0.795790, 0.274328,
		0.777889, 0.596192, 0.198606,
		39.924671, 30.942375, 24.908194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489437, 30.369164, 25.422537>,  <39.380146, 30.525040, 24.769169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489437, 30.369164, 25.422537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686981, 30.714720, 25.382956>,  <39.805508, 30.922054, 25.359207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686981, 30.714720, 25.382956>,  <39.489437, 30.369164, 25.422537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686981, 30.714720, 25.382956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267530, 0.259240, 0.928021,
		0.827362, -0.431841, 0.359146,
		0.493863, 0.863891, -0.098955,
		39.835140, 30.973886, 25.353270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836842, 30.492947, 25.961300>,  <39.489437, 30.369164, 25.422537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836842, 30.492947, 25.961300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.855896, 30.869846, 25.828699>,  <39.867329, 31.095987, 25.749140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.855896, 30.869846, 25.828699>,  <39.836842, 30.492947, 25.961300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855896, 30.869846, 25.828699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117683, 0.334861, 0.934890,
		0.991908, -0.005524, 0.126839,
		0.047638, 0.942251, -0.331501,
		39.870186, 31.152521, 25.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321724, 30.800013, 26.401461>,  <39.836842, 30.492947, 25.961300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321724, 30.800013, 26.401461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068985, 31.062941, 26.237167>,  <39.917343, 31.220697, 26.138592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068985, 31.062941, 26.237167>,  <40.321724, 30.800013, 26.401461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068985, 31.062941, 26.237167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030491, 0.508425, 0.860566,
		0.774496, 0.556267, -0.301203,
		-0.631844, 0.657321, -0.410734,
		39.879433, 31.260138, 26.113947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543724, 31.476217, 26.631983>,  <40.321724, 30.800013, 26.401461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543724, 31.476217, 26.631983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153294, 31.472141, 26.545099>,  <39.919037, 31.469696, 26.492970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153294, 31.472141, 26.545099>,  <40.543724, 31.476217, 26.631983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153294, 31.472141, 26.545099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197146, 0.462921, 0.864198,
		0.091743, 0.886341, -0.453854,
		-0.976072, -0.010191, -0.217208,
		39.860474, 31.469084, 26.479937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448608, 32.170124, 26.605932>,  <40.543724, 31.476217, 26.631983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448608, 32.170124, 26.605932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119198, 31.954626, 26.676991>,  <39.921551, 31.825329, 26.719625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119198, 31.954626, 26.676991>,  <40.448608, 32.170124, 26.605932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119198, 31.954626, 26.676991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100442, 0.446690, 0.889033,
		-0.558311, 0.714302, -0.421974,
		-0.823529, -0.538741, 0.177646,
		39.872139, 31.793003, 26.730284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094746, 32.565231, 27.016865>,  <40.448608, 32.170124, 26.605932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094746, 32.565231, 27.016865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926243, 32.207710, 27.078405>,  <39.825142, 31.993198, 27.115330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926243, 32.207710, 27.078405>,  <40.094746, 32.565231, 27.016865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926243, 32.207710, 27.078405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138240, 0.230932, 0.963099,
		-0.896345, 0.384442, -0.220840,
		-0.421255, -0.893798, 0.153850,
		39.799866, 31.939571, 27.124559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566952, 32.686516, 27.450775>,  <40.094746, 32.565231, 27.016865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566952, 32.686516, 27.450775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581604, 32.288589, 27.488707>,  <39.590397, 32.049831, 27.511465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581604, 32.288589, 27.488707>,  <39.566952, 32.686516, 27.450775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581604, 32.288589, 27.488707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271731, 0.081402, 0.958924,
		-0.961676, -0.060896, -0.267341,
		0.036632, -0.994819, 0.094830,
		39.592594, 31.990143, 27.517155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020859, 32.542484, 27.953432>,  <39.566952, 32.686516, 27.450775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020859, 32.542484, 27.953432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251793, 32.216423, 27.934639>,  <39.390354, 32.020786, 27.923363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251793, 32.216423, 27.934639>,  <39.020859, 32.542484, 27.953432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251793, 32.216423, 27.934639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312765, -0.273935, 0.909471,
		-0.754229, -0.510376, -0.413104,
		0.577336, -0.815154, -0.046982,
		39.424995, 31.971876, 27.920544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566795, 32.075516, 28.141844>,  <39.020859, 32.542484, 27.953432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566795, 32.075516, 28.141844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928894, 31.922279, 28.215355>,  <39.146152, 31.830338, 28.259462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928894, 31.922279, 28.215355>,  <38.566795, 32.075516, 28.141844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928894, 31.922279, 28.215355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251357, -0.134113, 0.958558,
		-0.342565, -0.913924, -0.217697,
		0.905245, -0.383088, 0.183778,
		39.200466, 31.807352, 28.270489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460331, 31.461239, 28.425856>,  <38.566795, 32.075516, 28.141844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460331, 31.461239, 28.425856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822491, 31.545834, 28.573111>,  <39.039787, 31.596590, 28.661463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822491, 31.545834, 28.573111>,  <38.460331, 31.461239, 28.425856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822491, 31.545834, 28.573111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335371, -0.175449, 0.925605,
		0.260343, -0.961504, -0.087924,
		0.905399, 0.211488, 0.368138,
		39.094109, 31.609280, 28.683552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565624, 30.950115, 28.856388>,  <38.460331, 31.461239, 28.425856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565624, 30.950115, 28.856388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774586, 31.266624, 28.983498>,  <38.899963, 31.456530, 29.059763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774586, 31.266624, 28.983498>,  <38.565624, 30.950115, 28.856388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774586, 31.266624, 28.983498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388648, -0.110754, 0.914706,
		0.758978, -0.601347, 0.249669,
		0.522404, 0.791275, 0.317772,
		38.931309, 31.504007, 29.078829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865982, 30.892096, 29.546417>,  <38.565624, 30.950115, 28.856388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865982, 30.892096, 29.546417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865150, 31.291946, 29.535549>,  <38.864651, 31.531857, 29.529028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865150, 31.291946, 29.535549>,  <38.865982, 30.892096, 29.546417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865150, 31.291946, 29.535549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101382, 0.026818, 0.994486,
		0.994845, 0.004820, 0.101289,
		-0.002077, 0.999629, -0.027169,
		38.864529, 31.591835, 29.527399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457573, 31.098330, 30.134468>,  <38.865982, 30.892096, 29.546417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457573, 31.098330, 30.134468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222950, 31.413778, 30.060688>,  <39.082176, 31.603048, 30.016420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222950, 31.413778, 30.060688>,  <39.457573, 31.098330, 30.134468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222950, 31.413778, 30.060688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248151, 0.041792, 0.967820,
		0.770953, 0.613456, 0.171184,
		-0.586561, 0.788622, -0.184449,
		39.046982, 31.650366, 30.005354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.409554, 33.251381, 34.953522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022640, 33.170475, 34.892262>,  <40.790493, 33.121929, 34.855507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022640, 33.170475, 34.892262>,  <41.409554, 33.251381, 34.953522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022640, 33.170475, 34.892262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226481, 0.416346, 0.880547,
		-0.114343, 0.886422, -0.448533,
		-0.967281, -0.202269, -0.153152,
		40.732456, 33.109795, 34.846317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019859, 33.899227, 35.159931>,  <41.409554, 33.251381, 34.953522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019859, 33.899227, 35.159931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741982, 33.611626, 35.168217>,  <40.575253, 33.439064, 35.173187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741982, 33.611626, 35.168217>,  <41.019859, 33.899227, 35.159931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741982, 33.611626, 35.168217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421464, 0.430212, 0.798302,
		-0.582893, 0.545848, -0.601902,
		-0.694697, -0.719004, 0.020712,
		40.533573, 33.395924, 35.174431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302254, 34.251743, 35.233383>,  <41.019859, 33.899227, 35.159931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302254, 34.251743, 35.233383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266747, 33.874893, 35.362698>,  <40.245441, 33.648781, 35.440285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266747, 33.874893, 35.362698>,  <40.302254, 34.251743, 35.233383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266747, 33.874893, 35.362698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567818, 0.314531, 0.760693,
		-0.818353, -0.116039, -0.562879,
		-0.088773, -0.942128, 0.323286,
		40.240116, 33.592255, 35.459682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571808, 34.152332, 35.330200>,  <40.302254, 34.251743, 35.233383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571808, 34.152332, 35.330200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760395, 33.869209, 35.540623>,  <39.873547, 33.699337, 35.666874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760395, 33.869209, 35.540623>,  <39.571808, 34.152332, 35.330200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760395, 33.869209, 35.540623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613906, 0.164829, 0.771979,
		-0.633120, -0.686907, -0.356815,
		0.471464, -0.707806, 0.526053,
		39.901833, 33.656868, 35.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096085, 33.893314, 35.928230>,  <39.571808, 34.152332, 35.330200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096085, 33.893314, 35.928230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442863, 33.737209, 36.052231>,  <39.650928, 33.643547, 36.126633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442863, 33.737209, 36.052231>,  <39.096085, 33.893314, 35.928230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442863, 33.737209, 36.052231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319904, 0.041246, 0.946552,
		-0.382192, -0.919779, -0.089089,
		0.866944, -0.390264, 0.310004,
		39.702946, 33.620129, 36.145233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936172, 33.289085, 36.331554>,  <39.096085, 33.893314, 35.928230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936172, 33.289085, 36.331554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303936, 33.394756, 36.448101>,  <39.524593, 33.458160, 36.518028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303936, 33.394756, 36.448101>,  <38.936172, 33.289085, 36.331554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303936, 33.394756, 36.448101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343150, 0.176845, 0.922483,
		0.192163, -0.948125, 0.253243,
		0.919414, 0.264167, 0.291366,
		39.579758, 33.474010, 36.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966125, 33.054790, 36.951153>,  <38.936172, 33.289085, 36.331554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966125, 33.054790, 36.951153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257702, 33.328506, 36.943268>,  <39.432648, 33.492737, 36.938538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257702, 33.328506, 36.943268>,  <38.966125, 33.054790, 36.951153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257702, 33.328506, 36.943268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173318, 0.212327, 0.961706,
		0.662269, -0.697614, 0.273374,
		0.728945, 0.684289, -0.019708,
		39.476387, 33.533794, 36.937355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365204, 32.887184, 37.534138>,  <38.966125, 33.054790, 36.951153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365204, 32.887184, 37.534138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437237, 33.265579, 37.426308>,  <39.480457, 33.492619, 37.361610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437237, 33.265579, 37.426308>,  <39.365204, 32.887184, 37.534138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437237, 33.265579, 37.426308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095263, 0.289540, 0.952414,
		0.979027, -0.145836, 0.142260,
		0.180086, 0.945991, -0.269575,
		39.491264, 33.549377, 37.345436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815113, 33.085201, 38.079094>,  <39.365204, 32.887184, 37.534138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815113, 33.085201, 38.079094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653301, 33.409561, 37.909954>,  <39.556213, 33.604176, 37.808472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653301, 33.409561, 37.909954>,  <39.815113, 33.085201, 38.079094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653301, 33.409561, 37.909954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201412, 0.372021, 0.906109,
		0.892069, 0.451718, 0.012830,
		-0.404533, 0.810896, -0.422849,
		39.531940, 33.652828, 37.783100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139271, 33.650867, 38.355511>,  <39.815113, 33.085201, 38.079094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139271, 33.650867, 38.355511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.783924, 33.770073, 38.215801>,  <39.570717, 33.841595, 38.131977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.783924, 33.770073, 38.215801>,  <40.139271, 33.650867, 38.355511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783924, 33.770073, 38.215801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219327, 0.392863, 0.893059,
		0.403358, 0.869970, -0.283645,
		-0.888368, 0.298011, -0.349273,
		39.517414, 33.859478, 38.111019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068890, 34.350830, 38.635197>,  <40.139271, 33.650867, 38.355511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068890, 34.350830, 38.635197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699776, 34.223114, 38.548920>,  <39.478306, 34.146484, 38.497154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699776, 34.223114, 38.548920>,  <40.068890, 34.350830, 38.635197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699776, 34.223114, 38.548920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303159, 0.256116, 0.917878,
		-0.237829, 0.912392, -0.333136,
		-0.922785, -0.319291, -0.215688,
		39.422939, 34.127327, 38.484215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664902, 34.738907, 39.039829>,  <40.068890, 34.350830, 38.635197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664902, 34.738907, 39.039829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419067, 34.442699, 38.931076>,  <39.271568, 34.264973, 38.865826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419067, 34.442699, 38.931076>,  <39.664902, 34.738907, 39.039829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419067, 34.442699, 38.931076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502957, 0.102322, 0.858233,
		-0.607720, 0.664199, -0.435335,
		-0.614582, -0.740520, -0.271880,
		39.234692, 34.220543, 38.849510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956352, 34.993172, 38.995609>,  <39.664902, 34.738907, 39.039829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956352, 34.993172, 38.995609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930042, 34.599739, 39.062820>,  <38.914257, 34.363678, 39.103146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930042, 34.599739, 39.062820>,  <38.956352, 34.993172, 38.995609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930042, 34.599739, 39.062820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523447, 0.177373, 0.833392,
		-0.849516, -0.033137, -0.526521,
		-0.065775, -0.983585, 0.168026,
		38.910309, 34.304665, 39.113228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190060, 35.483585, 38.617340>,  <38.956352, 34.993172, 38.995609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190060, 35.483585, 38.617340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035519, 35.848419, 38.672241>,  <38.942795, 36.067318, 38.705181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035519, 35.848419, 38.672241>,  <39.190060, 35.483585, 38.617340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035519, 35.848419, 38.672241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308971, 0.012232, -0.950993,
		-0.869061, -0.409829, 0.277081,
		-0.386355, 0.912080, 0.137256,
		38.919613, 36.122044, 38.713417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556561, 35.521633, 38.314098>,  <39.190060, 35.483585, 38.617340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556561, 35.521633, 38.314098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694920, 35.896355, 38.335060>,  <38.777935, 36.121189, 38.347637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694920, 35.896355, 38.335060>,  <38.556561, 35.521633, 38.314098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694920, 35.896355, 38.335060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234614, 0.140436, -0.961891,
		-0.908467, 0.320419, 0.268364,
		0.345896, 0.936808, 0.052407,
		38.798687, 36.177399, 38.350780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072620, 36.021744, 38.079895>,  <38.556561, 35.521633, 38.314098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072620, 36.021744, 38.079895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437603, 36.178139, 38.031639>,  <38.656593, 36.271976, 38.002686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437603, 36.178139, 38.031639>,  <38.072620, 36.021744, 38.079895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437603, 36.178139, 38.031639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225483, 0.234455, -0.945615,
		-0.341440, 0.890034, 0.302091,
		0.912456, 0.390987, -0.120636,
		38.711338, 36.295433, 37.995449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914200, 36.186630, 37.542728>,  <38.072620, 36.021744, 38.079895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914200, 36.186630, 37.542728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303745, 36.273415, 37.569599>,  <38.537472, 36.325485, 37.585720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303745, 36.273415, 37.569599>,  <37.914200, 36.186630, 37.542728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303745, 36.273415, 37.569599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034523, 0.150919, -0.987943,
		-0.224486, 0.964443, 0.139485,
		0.973866, 0.216964, 0.067175,
		38.595905, 36.338505, 37.589752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949886, 36.775074, 37.232212>,  <37.914200, 36.186630, 37.542728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949886, 36.775074, 37.232212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317745, 36.618057, 37.237209>,  <38.538460, 36.523846, 37.240208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317745, 36.618057, 37.237209>,  <37.949886, 36.775074, 37.232212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317745, 36.618057, 37.237209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108912, 0.224331, -0.968408,
		0.377337, 0.891957, 0.249058,
		0.919649, -0.392541, 0.012496,
		38.593639, 36.500294, 37.240959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298965, 37.240345, 36.922230>,  <37.949886, 36.775074, 37.232212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298965, 37.240345, 36.922230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525162, 36.911610, 36.894478>,  <38.660877, 36.714371, 36.877827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525162, 36.911610, 36.894478>,  <38.298965, 37.240345, 36.922230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525162, 36.911610, 36.894478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032870, 0.106508, -0.993768,
		0.824102, 0.559683, 0.087242,
		0.565487, -0.821834, -0.069376,
		38.694809, 36.665058, 36.873665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740009, 37.377991, 36.345608>,  <38.298965, 37.240345, 36.922230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740009, 37.377991, 36.345608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776058, 36.981972, 36.388855>,  <38.797688, 36.744362, 36.414803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776058, 36.981972, 36.388855>,  <38.740009, 37.377991, 36.345608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776058, 36.981972, 36.388855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038589, -0.111950, -0.992964,
		0.995183, 0.085317, -0.048294,
		0.090123, -0.990044, 0.108119,
		38.803097, 36.684959, 36.421291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306747, 37.140671, 35.883945>,  <38.740009, 37.377991, 36.345608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306747, 37.140671, 35.883945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064331, 36.829857, 35.951981>,  <38.918880, 36.643368, 35.992802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064331, 36.829857, 35.951981>,  <39.306747, 37.140671, 35.883945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064331, 36.829857, 35.951981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015286, -0.202409, -0.979182,
		0.795289, -0.596021, 0.110789,
		-0.606037, -0.777039, 0.170085,
		38.882519, 36.596745, 36.003006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646351, 36.577820, 35.505390>,  <39.306747, 37.140671, 35.883945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646351, 36.577820, 35.505390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275055, 36.462566, 35.599495>,  <39.052277, 36.393414, 35.655956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275055, 36.462566, 35.599495>,  <39.646351, 36.577820, 35.505390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275055, 36.462566, 35.599495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111983, -0.386654, -0.915401,
		0.354726, -0.876057, 0.326641,
		-0.928240, -0.288138, 0.235260,
		38.996582, 36.376125, 35.670074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558376, 35.873886, 35.271191>,  <39.646351, 36.577820, 35.505390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558376, 35.873886, 35.271191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.185829, 36.017990, 35.292244>,  <38.962299, 36.104450, 35.304874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.185829, 36.017990, 35.292244>,  <39.558376, 35.873886, 35.271191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185829, 36.017990, 35.292244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148587, -0.244139, -0.958289,
		-0.332384, -0.900338, 0.280913,
		-0.931366, 0.360260, 0.052631,
		38.906418, 36.126068, 35.308033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025257, 35.188156, 35.108418>,  <39.558376, 35.873886, 35.271191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025257, 35.188156, 35.108418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787865, 35.506680, 35.061642>,  <38.645428, 35.697792, 35.033577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787865, 35.506680, 35.061642>,  <39.025257, 35.188156, 35.108418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787865, 35.506680, 35.061642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238968, -0.313085, -0.919169,
		-0.768552, -0.517566, 0.376102,
		-0.593483, 0.796306, -0.116941,
		38.609821, 35.745571, 35.026558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389236, 34.982613, 34.892124>,  <39.025257, 35.188156, 35.108418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389236, 34.982613, 34.892124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395626, 35.365284, 34.775837>,  <38.399460, 35.594887, 34.706066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395626, 35.365284, 34.775837>,  <38.389236, 34.982613, 34.892124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395626, 35.365284, 34.775837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135078, -0.286025, -0.948654,
		-0.990706, 0.054423, 0.124657,
		0.015973, 0.956675, -0.290718,
		38.400417, 35.652287, 34.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762344, 35.162067, 34.530857>,  <38.389236, 34.982613, 34.892124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762344, 35.162067, 34.530857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054230, 35.402817, 34.401081>,  <38.229362, 35.547268, 34.323215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054230, 35.402817, 34.401081>,  <37.762344, 35.162067, 34.530857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054230, 35.402817, 34.401081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109132, -0.365891, -0.924237,
		-0.674983, 0.709839, -0.201313,
		0.729718, 0.601874, -0.324437,
		38.273144, 35.583378, 34.303749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525707, 35.386745, 33.928932>,  <37.762344, 35.162067, 34.530857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525707, 35.386745, 33.928932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908627, 35.489956, 33.876778>,  <38.138378, 35.551880, 33.845486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908627, 35.489956, 33.876778>,  <37.525707, 35.386745, 33.928932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908627, 35.489956, 33.876778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097340, -0.137008, -0.985776,
		-0.272218, 0.956375, -0.106042,
		0.957299, 0.258024, -0.130389,
		38.195816, 35.567364, 33.837662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540001, 35.918549, 33.487068>,  <37.525707, 35.386745, 33.928932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540001, 35.918549, 33.487068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899429, 35.746540, 33.452080>,  <38.115086, 35.643333, 33.431087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899429, 35.746540, 33.452080>,  <37.540001, 35.918549, 33.487068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899429, 35.746540, 33.452080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099624, -0.005787, -0.995008,
		0.427369, 0.902800, -0.048041,
		0.898572, -0.430021, -0.087467,
		38.169003, 35.617535, 33.425838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369698, 36.535599, 33.117432>,  <37.540001, 35.918549, 33.487068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369698, 36.535599, 33.117432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.107849, 36.832745, 33.061405>,  <36.950741, 37.011032, 33.027790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.107849, 36.832745, 33.061405>,  <37.369698, 36.535599, 33.117432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107849, 36.832745, 33.061405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241684, -0.030104, 0.969888,
		0.716278, 0.668766, 0.199245,
		-0.654626, 0.742864, -0.140068,
		36.911461, 37.055603, 33.019386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528481, 36.989288, 33.693394>,  <37.369698, 36.535599, 33.117432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528481, 36.989288, 33.693394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153957, 37.041645, 33.563046>,  <36.929245, 37.073059, 33.484837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153957, 37.041645, 33.563046>,  <37.528481, 36.989288, 33.693394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153957, 37.041645, 33.563046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314478, 0.100481, 0.943932,
		0.156299, 0.986291, -0.052918,
		-0.936309, 0.130894, -0.325872,
		36.873066, 37.080914, 33.465282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219238, 37.479015, 34.096386>,  <37.528481, 36.989288, 33.693394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219238, 37.479015, 34.096386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.887836, 37.303864, 33.956757>,  <36.688995, 37.198772, 33.872978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.887836, 37.303864, 33.956757>,  <37.219238, 37.479015, 34.096386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887836, 37.303864, 33.956757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340198, -0.101568, 0.934852,
		-0.444806, 0.893279, -0.064816,
		-0.828501, -0.437878, -0.349070,
		36.639286, 37.172501, 33.852036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760998, 37.862705, 34.414360>,  <37.219238, 37.479015, 34.096386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760998, 37.862705, 34.414360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576263, 37.519924, 34.322853>,  <36.465424, 37.314255, 34.267948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576263, 37.519924, 34.322853>,  <36.760998, 37.862705, 34.414360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576263, 37.519924, 34.322853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277757, -0.105211, 0.954873,
		-0.842353, 0.504534, -0.189436,
		-0.461835, -0.856957, -0.228763,
		36.437714, 37.262836, 34.254223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113361, 37.959389, 34.639805>,  <36.760998, 37.862705, 34.414360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113361, 37.959389, 34.639805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.131470, 37.561844, 34.599419>,  <36.142334, 37.323318, 34.575188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.131470, 37.561844, 34.599419>,  <36.113361, 37.959389, 34.639805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131470, 37.561844, 34.599419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505912, -0.109960, 0.855548,
		-0.861396, 0.012349, -0.507783,
		0.045270, -0.993859, -0.100966,
		36.145050, 37.263687, 34.569130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563457, 37.717915, 34.957073>,  <36.113361, 37.959389, 34.639805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563457, 37.717915, 34.957073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766758, 37.375126, 34.922943>,  <35.888737, 37.169453, 34.902466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766758, 37.375126, 34.922943>,  <35.563457, 37.717915, 34.957073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766758, 37.375126, 34.922943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427806, -0.337217, 0.838610,
		-0.747440, -0.389718, -0.538008,
		0.508247, -0.856974, -0.085325,
		35.919231, 37.118034, 34.897346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107761, 37.258186, 34.862877>,  <35.563457, 37.717915, 34.957073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107761, 37.258186, 34.862877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.410999, 37.033344, 34.995136>,  <35.592941, 36.898438, 35.074490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.410999, 37.033344, 34.995136>,  <35.107761, 37.258186, 34.862877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410999, 37.033344, 34.995136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603067, -0.411293, 0.683482,
		-0.248196, -0.717548, -0.650787,
		0.758096, -0.562106, 0.330647,
		35.638428, 36.864712, 35.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919800, 36.501347, 34.948505>,  <35.107761, 37.258186, 34.862877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919800, 36.501347, 34.948505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.213600, 36.541187, 35.217007>,  <35.389881, 36.565090, 35.378109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.213600, 36.541187, 35.217007>,  <34.919800, 36.501347, 34.948505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213600, 36.541187, 35.217007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644831, -0.205726, 0.736118,
		0.211414, -0.973528, -0.086880,
		0.734505, 0.099603, 0.671254,
		35.433952, 36.571068, 35.418385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746395, 36.002831, 35.417553>,  <34.919800, 36.501347, 34.948505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746395, 36.002831, 35.417553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992573, 36.265133, 35.592464>,  <35.140282, 36.422516, 35.697411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992573, 36.265133, 35.592464>,  <34.746395, 36.002831, 35.417553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992573, 36.265133, 35.592464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535057, -0.059767, 0.842699,
		0.578740, -0.752603, 0.314084,
		0.615446, 0.655756, 0.437275,
		35.177208, 36.461861, 35.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844837, 35.768219, 35.995358>,  <34.746395, 36.002831, 35.417553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844837, 35.768219, 35.995358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.950562, 36.144436, 36.080704>,  <35.013996, 36.370167, 36.131912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.950562, 36.144436, 36.080704>,  <34.844837, 35.768219, 35.995358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950562, 36.144436, 36.080704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529532, -0.043374, 0.847180,
		0.806060, -0.336906, 0.486581,
		0.264315, 0.940539, 0.213365,
		35.029858, 36.426598, 36.144714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988590, 35.767082, 36.691875>,  <34.844837, 35.768219, 35.995358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988590, 35.767082, 36.691875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.908810, 36.150887, 36.612320>,  <34.860939, 36.381168, 36.564587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.908810, 36.150887, 36.612320>,  <34.988590, 35.767082, 36.691875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908810, 36.150887, 36.612320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647066, 0.023454, 0.762073,
		0.735882, 0.280691, 0.616189,
		-0.199455, 0.959512, -0.198885,
		34.848972, 36.438740, 36.552654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013355, 36.068890, 37.346432>,  <34.988590, 35.767082, 36.691875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013355, 36.068890, 37.346432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.787132, 36.280609, 37.093452>,  <34.651398, 36.407639, 36.941666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.787132, 36.280609, 37.093452>,  <35.013355, 36.068890, 37.346432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787132, 36.280609, 37.093452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756232, -0.026891, 0.653751,
		0.329021, 0.848011, 0.415479,
		-0.565560, 0.529297, -0.632445,
		34.617466, 36.439400, 36.903717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.677387, 38.237743, 30.084969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349003, 38.072113, 29.927711>,  <38.151974, 37.972733, 29.833357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349003, 38.072113, 29.927711>,  <38.677387, 38.237743, 30.084969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349003, 38.072113, 29.927711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526091, 0.280949, 0.802681,
		-0.221920, 0.865799, -0.448491,
		-0.820963, -0.414079, -0.393141,
		38.102715, 37.947891, 29.809769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167103, 38.652206, 30.269098>,  <38.677387, 38.237743, 30.084969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167103, 38.652206, 30.269098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985279, 38.310509, 30.168184>,  <37.876186, 38.105492, 30.107635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985279, 38.310509, 30.168184>,  <38.167103, 38.652206, 30.269098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985279, 38.310509, 30.168184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505699, 0.014343, 0.862591,
		-0.733243, 0.519679, -0.438508,
		-0.454559, -0.854242, -0.252284,
		37.848911, 38.054237, 30.092499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493862, 38.756874, 30.345768>,  <38.167103, 38.652206, 30.269098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493862, 38.756874, 30.345768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511654, 38.357292, 30.349972>,  <37.522331, 38.117542, 30.352495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511654, 38.357292, 30.349972>,  <37.493862, 38.756874, 30.345768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511654, 38.357292, 30.349972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480522, -0.012170, 0.876899,
		-0.875854, -0.044057, -0.480561,
		0.044482, -0.998955, 0.010511,
		37.524998, 38.057606, 30.353125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850651, 38.539753, 30.650229>,  <37.493862, 38.756874, 30.345768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850651, 38.539753, 30.650229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085815, 38.217216, 30.676092>,  <37.226913, 38.023697, 30.691610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085815, 38.217216, 30.676092>,  <36.850651, 38.539753, 30.650229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085815, 38.217216, 30.676092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413750, -0.231057, 0.880582,
		-0.695105, -0.544457, -0.469463,
		0.587911, -0.806337, 0.064660,
		37.262188, 37.975315, 30.695490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379185, 38.005970, 30.922970>,  <36.850651, 38.539753, 30.650229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379185, 38.005970, 30.922970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758804, 37.903534, 30.996433>,  <36.986576, 37.842072, 31.040510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758804, 37.903534, 30.996433>,  <36.379185, 38.005970, 30.922970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758804, 37.903534, 30.996433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284845, -0.447755, 0.847572,
		-0.134824, -0.856698, -0.497887,
		0.949045, -0.256094, 0.183658,
		37.043518, 37.826706, 31.051531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260185, 37.487972, 31.300669>,  <36.379185, 38.005970, 30.922970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260185, 37.487972, 31.300669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652939, 37.533646, 31.361153>,  <36.888592, 37.561050, 31.397442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652939, 37.533646, 31.361153>,  <36.260185, 37.487972, 31.300669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652939, 37.533646, 31.361153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100312, -0.363755, 0.926078,
		0.160749, -0.924469, -0.345711,
		0.981884, 0.114187, 0.151208,
		36.947506, 37.567902, 31.406515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568279, 36.866287, 31.366146>,  <36.260185, 37.487972, 31.300669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568279, 36.866287, 31.366146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792480, 37.127014, 31.570486>,  <36.927002, 37.283451, 31.693090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792480, 37.127014, 31.570486>,  <36.568279, 36.866287, 31.366146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792480, 37.127014, 31.570486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203185, -0.489764, 0.847848,
		0.802843, -0.579016, -0.142072,
		0.560499, 0.651822, 0.510851,
		36.960629, 37.322559, 31.723742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948799, 36.497238, 31.886286>,  <36.568279, 36.866287, 31.366146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948799, 36.497238, 31.886286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946079, 36.873642, 32.021606>,  <36.944447, 37.099483, 32.102798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946079, 36.873642, 32.021606>,  <36.948799, 36.497238, 31.886286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946079, 36.873642, 32.021606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077386, -0.337792, 0.938034,
		0.996978, -0.019797, 0.075120,
		-0.006804, 0.941013, 0.338303,
		36.944038, 37.155945, 32.123096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053196, 36.308552, 32.497799>,  <36.948799, 36.497238, 31.886286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053196, 36.308552, 32.497799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988811, 36.701996, 32.530312>,  <36.950180, 36.938061, 32.549820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988811, 36.701996, 32.530312>,  <37.053196, 36.308552, 32.497799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988811, 36.701996, 32.530312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150651, -0.105879, 0.982901,
		0.975395, 0.145966, 0.165224,
		-0.160964, 0.983607, 0.081284,
		36.940521, 36.997078, 32.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555637, 35.697609, 32.782055>,  <37.053196, 36.308552, 32.497799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555637, 35.697609, 32.782055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903095, 35.532749, 32.892036>,  <38.111568, 35.433834, 32.958023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903095, 35.532749, 32.892036>,  <37.555637, 35.697609, 32.782055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903095, 35.532749, 32.892036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210749, -0.194874, -0.957919,
		0.448383, 0.890034, -0.082416,
		0.868641, -0.412146, 0.274952,
		38.163689, 35.409107, 32.974522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133987, 36.050121, 32.407009>,  <37.555637, 35.697609, 32.782055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133987, 36.050121, 32.407009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288368, 35.707607, 32.544304>,  <38.380997, 35.502098, 32.626678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288368, 35.707607, 32.544304>,  <38.133987, 36.050121, 32.407009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288368, 35.707607, 32.544304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445770, -0.152634, -0.882038,
		0.807669, 0.493429, 0.322799,
		0.385953, -0.856289, 0.343233,
		38.404156, 35.450722, 32.647274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865219, 36.216049, 32.367912>,  <38.133987, 36.050121, 32.407009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865219, 36.216049, 32.367912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780308, 35.825214, 32.374008>,  <38.729362, 35.590714, 32.377666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780308, 35.825214, 32.374008>,  <38.865219, 36.216049, 32.367912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780308, 35.825214, 32.374008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549749, -0.132299, -0.824787,
		0.807907, -0.166708, 0.565238,
		-0.212279, -0.977090, 0.015238,
		38.716625, 35.532085, 32.378578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458057, 35.849815, 32.255165>,  <38.865219, 36.216049, 32.367912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458057, 35.849815, 32.255165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196209, 35.557713, 32.176983>,  <39.039101, 35.382450, 32.130074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196209, 35.557713, 32.176983>,  <39.458057, 35.849815, 32.255165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196209, 35.557713, 32.176983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521364, -0.248902, -0.816227,
		0.547406, -0.636219, 0.543665,
		-0.654619, -0.730256, -0.195451,
		38.999825, 35.338634, 32.118347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836399, 35.285389, 32.262547>,  <39.458057, 35.849815, 32.255165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836399, 35.285389, 32.262547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503777, 35.194473, 32.059822>,  <39.304203, 35.139923, 31.938189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503777, 35.194473, 32.059822>,  <39.836399, 35.285389, 32.262547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503777, 35.194473, 32.059822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552014, -0.236973, -0.799452,
		0.061603, -0.944556, 0.322521,
		-0.831556, -0.227285, -0.506810,
		39.254311, 35.126289, 31.907780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946602, 34.601330, 32.091999>,  <39.836399, 35.285389, 32.262547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946602, 34.601330, 32.091999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683865, 34.747623, 31.828243>,  <39.526222, 34.835400, 31.669991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683865, 34.747623, 31.828243>,  <39.946602, 34.601330, 32.091999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683865, 34.747623, 31.828243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576962, -0.319237, -0.751800,
		-0.485461, -0.874258, -0.001327,
		-0.656843, 0.365735, -0.659390,
		39.486813, 34.857346, 31.630426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896214, 34.015553, 31.600897>,  <39.946602, 34.601330, 32.091999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896214, 34.015553, 31.600897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739479, 34.341431, 31.429903>,  <39.645439, 34.536957, 31.327307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739479, 34.341431, 31.429903>,  <39.896214, 34.015553, 31.600897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739479, 34.341431, 31.429903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648901, -0.084669, -0.756148,
		-0.652222, -0.573681, -0.495477,
		-0.391836, 0.814691, -0.427485,
		39.621929, 34.585838, 31.301659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641796, 33.843868, 30.935316>,  <39.896214, 34.015553, 31.600897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641796, 33.843868, 30.935316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712021, 34.237606, 30.929136>,  <39.754154, 34.473850, 30.925428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712021, 34.237606, 30.929136>,  <39.641796, 33.843868, 30.935316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712021, 34.237606, 30.929136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505530, -0.103607, -0.856566,
		-0.844758, 0.142570, -0.515807,
		0.175562, 0.984347, -0.015449,
		39.764690, 34.532909, 30.924501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543545, 34.005192, 30.206831>,  <39.641796, 33.843868, 30.935316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543545, 34.005192, 30.206831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718185, 34.337238, 30.345562>,  <39.822971, 34.536465, 30.428801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718185, 34.337238, 30.345562>,  <39.543545, 34.005192, 30.206831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718185, 34.337238, 30.345562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435252, 0.142493, -0.888961,
		-0.787359, 0.539079, -0.299096,
		0.436601, 0.830114, 0.346829,
		39.849167, 34.586273, 30.449610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438454, 34.492519, 29.737583>,  <39.543545, 34.005192, 30.206831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438454, 34.492519, 29.737583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728882, 34.666557, 29.950569>,  <39.903137, 34.770981, 30.078360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728882, 34.666557, 29.950569>,  <39.438454, 34.492519, 29.737583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728882, 34.666557, 29.950569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403955, 0.356751, -0.842347,
		-0.556455, 0.826694, 0.083268,
		0.726070, 0.435092, 0.532463,
		39.946701, 34.797085, 30.110308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536285, 35.178188, 29.441040>,  <39.438454, 34.492519, 29.737583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536285, 35.178188, 29.441040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874355, 35.072540, 29.626909>,  <40.077198, 35.009151, 29.738432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874355, 35.072540, 29.626909>,  <39.536285, 35.178188, 29.441040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874355, 35.072540, 29.626909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532818, 0.347580, -0.771552,
		0.042270, 0.899683, 0.434493,
		0.845174, -0.264119, 0.464675,
		40.127907, 34.993305, 29.766312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935219, 35.783974, 29.410995>,  <39.536285, 35.178188, 29.441040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935219, 35.783974, 29.410995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176128, 35.469574, 29.466810>,  <40.320675, 35.280933, 29.500299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176128, 35.469574, 29.466810>,  <39.935219, 35.783974, 29.410995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176128, 35.469574, 29.466810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486648, 0.222949, -0.844670,
		0.632799, 0.576631, 0.516781,
		0.602279, -0.785997, 0.139535,
		40.356812, 35.233776, 29.508671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495068, 35.948059, 29.034193>,  <39.935219, 35.783974, 29.410995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495068, 35.948059, 29.034193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569950, 35.556564, 29.067730>,  <40.614880, 35.321667, 29.087852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569950, 35.556564, 29.067730>,  <40.495068, 35.948059, 29.034193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569950, 35.556564, 29.067730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534242, 0.029817, -0.844806,
		0.824342, 0.202946, 0.528463,
		0.187207, -0.978736, 0.083843,
		40.626114, 35.262943, 29.092882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160175, 35.923824, 28.867186>,  <40.495068, 35.948059, 29.034193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160175, 35.923824, 28.867186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014927, 35.554909, 28.814232>,  <40.927780, 35.333561, 28.782459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014927, 35.554909, 28.814232>,  <41.160175, 35.923824, 28.867186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014927, 35.554909, 28.814232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596625, -0.121025, -0.793342,
		0.715670, -0.367061, 0.594207,
		-0.363119, -0.922290, -0.132384,
		40.905991, 35.278221, 28.774517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.725826, 31.665190, 27.363873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861809, 32.039078, 27.405293>,  <36.943398, 32.263412, 27.430145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861809, 32.039078, 27.405293>,  <36.725826, 31.665190, 27.363873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861809, 32.039078, 27.405293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370189, 0.031786, 0.928413,
		0.864516, -0.353955, 0.356830,
		0.339958, 0.934722, 0.103550,
		36.963795, 32.319496, 27.436357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147869, 31.701414, 28.018375>,  <36.725826, 31.665190, 27.363873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147869, 31.701414, 28.018375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999557, 32.063984, 27.937464>,  <36.910572, 32.281525, 27.888918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999557, 32.063984, 27.937464>,  <37.147869, 31.701414, 28.018375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999557, 32.063984, 27.937464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255061, 0.110043, 0.960643,
		0.893010, 0.407779, 0.190392,
		-0.370779, 0.906425, -0.202278,
		36.888325, 32.335911, 27.876780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393307, 32.019093, 28.553652>,  <37.147869, 31.701414, 28.018375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393307, 32.019093, 28.553652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125031, 32.271923, 28.398394>,  <36.964066, 32.423622, 28.305239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125031, 32.271923, 28.398394>,  <37.393307, 32.019093, 28.553652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125031, 32.271923, 28.398394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253866, 0.296077, 0.920810,
		0.696940, 0.716115, -0.038114,
		-0.670691, 0.632074, -0.388145,
		36.923824, 32.461544, 28.281950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446056, 32.589996, 29.024742>,  <37.393307, 32.019093, 28.553652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446056, 32.589996, 29.024742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097412, 32.615154, 28.830284>,  <36.888226, 32.630249, 28.713610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097412, 32.615154, 28.830284>,  <37.446056, 32.589996, 29.024742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097412, 32.615154, 28.830284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455676, 0.261629, 0.850829,
		0.180705, 0.963117, -0.199378,
		-0.871611, 0.062897, -0.486147,
		36.835930, 32.634022, 28.684441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234413, 33.280571, 29.207937>,  <37.446056, 32.589996, 29.024742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234413, 33.280571, 29.207937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914921, 33.069611, 29.092091>,  <36.723225, 32.943035, 29.022583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914921, 33.069611, 29.092091>,  <37.234413, 33.280571, 29.207937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914921, 33.069611, 29.092091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518200, 0.358361, 0.776560,
		-0.305768, 0.770344, -0.559532,
		-0.798733, -0.527397, -0.289617,
		36.675301, 32.911392, 29.005205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717213, 33.654972, 29.323303>,  <37.234413, 33.280571, 29.207937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717213, 33.654972, 29.323303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532131, 33.301018, 29.301840>,  <36.421082, 33.088646, 29.288961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532131, 33.301018, 29.301840>,  <36.717213, 33.654972, 29.323303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532131, 33.301018, 29.301840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548715, 0.238331, 0.801318,
		-0.696288, 0.400214, -0.595828,
		-0.462703, -0.884888, -0.053657,
		36.393322, 33.035553, 29.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114231, 33.797878, 29.551504>,  <36.717213, 33.654972, 29.323303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114231, 33.797878, 29.551504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157162, 33.405331, 29.615248>,  <36.182919, 33.169804, 29.653494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157162, 33.405331, 29.615248>,  <36.114231, 33.797878, 29.551504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157162, 33.405331, 29.615248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271580, 0.125253, 0.954231,
		-0.956413, -0.145691, -0.253078,
		0.107325, -0.981369, 0.159360,
		36.189358, 33.110920, 29.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577698, 33.550209, 30.032618>,  <36.114231, 33.797878, 29.551504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577698, 33.550209, 30.032618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843327, 33.251152, 30.034813>,  <36.002705, 33.071716, 30.036131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843327, 33.251152, 30.034813>,  <35.577698, 33.550209, 30.032618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843327, 33.251152, 30.034813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164548, -0.138985, 0.976528,
		-0.729335, -0.649390, -0.215320,
		0.664074, -0.747647, 0.005489,
		36.042549, 33.026859, 30.036459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202724, 33.135674, 30.413416>,  <35.577698, 33.550209, 30.032618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202724, 33.135674, 30.413416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574287, 32.990597, 30.443329>,  <35.797226, 32.903549, 30.461277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574287, 32.990597, 30.443329>,  <35.202724, 33.135674, 30.413416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574287, 32.990597, 30.443329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139205, -0.154851, 0.978081,
		-0.343163, -0.918953, -0.194331,
		0.928904, -0.362693, 0.074784,
		35.852959, 32.881790, 30.465765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192528, 32.376778, 30.690332>,  <35.202724, 33.135674, 30.413416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192528, 32.376778, 30.690332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549507, 32.543385, 30.759665>,  <35.763695, 32.643349, 30.801264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549507, 32.543385, 30.759665>,  <35.192528, 32.376778, 30.690332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549507, 32.543385, 30.759665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208395, 0.039847, 0.977233,
		0.400125, -0.908255, 0.122362,
		0.892452, 0.416515, 0.173332,
		35.817242, 32.668339, 30.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449196, 31.975536, 31.237089>,  <35.192528, 32.376778, 30.690332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449196, 31.975536, 31.237089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644394, 32.324375, 31.251568>,  <35.761513, 32.533676, 31.260254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644394, 32.324375, 31.251568>,  <35.449196, 31.975536, 31.237089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644394, 32.324375, 31.251568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280924, 0.117664, 0.952490,
		0.826403, -0.474980, 0.302412,
		0.487996, 0.872095, 0.036195,
		35.790794, 32.586002, 31.262426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740917, 31.986753, 31.890602>,  <35.449196, 31.975536, 31.237089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740917, 31.986753, 31.890602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774879, 32.373032, 31.792442>,  <35.795258, 32.604797, 31.733547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774879, 32.373032, 31.792442>,  <35.740917, 31.986753, 31.890602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774879, 32.373032, 31.792442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369923, 0.259236, 0.892162,
		0.925175, 0.015031, 0.379244,
		0.084904, 0.965697, -0.245399,
		35.800350, 32.662743, 31.718822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026131, 32.297478, 32.442108>,  <35.740917, 31.986753, 31.890602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026131, 32.297478, 32.442108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837032, 32.596077, 32.254810>,  <35.723572, 32.775238, 32.142433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837032, 32.596077, 32.254810>,  <36.026131, 32.297478, 32.442108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837032, 32.596077, 32.254810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467520, 0.237946, 0.851356,
		0.746952, 0.621388, 0.236515,
		-0.472744, 0.746498, -0.468245,
		35.695210, 32.820026, 32.114338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258450, 32.910542, 32.709637>,  <36.026131, 32.297478, 32.442108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258450, 32.910542, 32.709637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895535, 32.983883, 32.558262>,  <35.677784, 33.027885, 32.467438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895535, 32.983883, 32.558262>,  <36.258450, 32.910542, 32.709637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895535, 32.983883, 32.558262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315882, 0.296879, 0.901156,
		0.277577, 0.937147, -0.211438,
		-0.907287, 0.183350, -0.378435,
		35.623348, 33.038887, 32.444733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772015, 33.273453, 33.119675>,  <36.258450, 32.910542, 32.709637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772015, 33.273453, 33.119675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871017, 32.909348, 33.252441>,  <36.930420, 32.690884, 33.332104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871017, 32.909348, 33.252441>,  <36.772015, 33.273453, 33.119675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871017, 32.909348, 33.252441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598220, -0.125913, -0.791377,
		0.762151, 0.394431, 0.513371,
		0.247504, -0.910258, 0.331921,
		36.945267, 32.636269, 33.352016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537594, 33.168331, 33.040939>,  <36.772015, 33.273453, 33.119675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537594, 33.168331, 33.040939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385559, 32.798359, 33.043152>,  <37.294338, 32.576374, 33.044479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385559, 32.798359, 33.043152>,  <37.537594, 33.168331, 33.040939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385559, 32.798359, 33.043152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519153, -0.218276, -0.826339,
		0.765517, -0.311208, 0.563146,
		-0.380084, -0.924936, 0.005529,
		37.271534, 32.520878, 33.044811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112442, 32.691212, 32.735397>,  <37.537594, 33.168331, 33.040939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112442, 32.691212, 32.735397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762177, 32.504490, 32.685921>,  <37.552017, 32.392456, 32.656235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762177, 32.504490, 32.685921>,  <38.112442, 32.691212, 32.735397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762177, 32.504490, 32.685921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287876, -0.298945, -0.909813,
		0.387730, -0.832300, 0.396159,
		-0.875667, -0.466806, -0.123689,
		37.499477, 32.364449, 32.648815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218761, 31.963709, 32.814442>,  <38.112442, 32.691212, 32.735397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218761, 31.963709, 32.814442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893623, 32.009026, 32.585896>,  <37.698540, 32.036217, 32.448769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893623, 32.009026, 32.585896>,  <38.218761, 31.963709, 32.814442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893623, 32.009026, 32.585896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467728, -0.457666, -0.756156,
		-0.347158, -0.881877, 0.319021,
		-0.812842, 0.113291, -0.571361,
		37.649773, 32.043015, 32.414486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418972, 31.443764, 32.443474>,  <38.218761, 31.963709, 32.814442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418972, 31.443764, 32.443474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108822, 31.608244, 32.251762>,  <37.922733, 31.706932, 32.136738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108822, 31.608244, 32.251762>,  <38.418972, 31.443764, 32.443474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108822, 31.608244, 32.251762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347764, -0.355459, -0.867588,
		-0.527116, -0.839382, 0.132613,
		-0.775376, 0.411201, -0.479275,
		37.876209, 31.731604, 32.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324150, 30.984842, 31.910135>,  <38.418972, 31.443764, 32.443474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324150, 30.984842, 31.910135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129044, 31.317957, 31.805408>,  <38.011978, 31.517826, 31.742573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129044, 31.317957, 31.805408>,  <38.324150, 30.984842, 31.910135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129044, 31.317957, 31.805408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163266, -0.207598, -0.964493,
		-0.857570, -0.513195, -0.034707,
		-0.487769, 0.832787, -0.261817,
		37.982712, 31.567793, 31.726864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847073, 30.883572, 31.252214>,  <38.324150, 30.984842, 31.910135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847073, 30.883572, 31.252214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939438, 31.272455, 31.267630>,  <37.994858, 31.505785, 31.276878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939438, 31.272455, 31.267630>,  <37.847073, 30.883572, 31.252214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939438, 31.272455, 31.267630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232051, -0.016562, -0.972563,
		-0.944897, 0.233522, -0.229427,
		0.230915, 0.972210, 0.038540,
		38.008713, 31.564117, 31.279192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723362, 31.084291, 30.509716>,  <37.847073, 30.883572, 31.252214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723362, 31.084291, 30.509716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907486, 31.397171, 30.677662>,  <38.017960, 31.584898, 30.778429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907486, 31.397171, 30.677662>,  <37.723362, 31.084291, 30.509716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907486, 31.397171, 30.677662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532091, 0.135499, -0.835775,
		-0.710632, 0.608117, -0.353829,
		0.460306, 0.782198, 0.419864,
		38.045578, 31.631830, 30.803621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732758, 31.600023, 30.027962>,  <37.723362, 31.084291, 30.509716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732758, 31.600023, 30.027962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003025, 31.725405, 30.294861>,  <38.165184, 31.800634, 30.455000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003025, 31.725405, 30.294861>,  <37.732758, 31.600023, 30.027962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003025, 31.725405, 30.294861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615544, 0.258206, -0.744605,
		-0.405688, 0.913825, -0.018485,
		0.675665, 0.313455, 0.667250,
		38.205723, 31.819441, 30.495035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938736, 32.257652, 29.934752>,  <37.732758, 31.600023, 30.027962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938736, 32.257652, 29.934752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253407, 32.076729, 30.102827>,  <38.442207, 31.968174, 30.203672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253407, 32.076729, 30.102827>,  <37.938736, 32.257652, 29.934752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253407, 32.076729, 30.102827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550294, 0.205204, -0.809363,
		0.279858, 0.867933, 0.410332,
		0.786674, -0.452310, 0.420190,
		38.489410, 31.941036, 30.228884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351082, 32.634323, 29.626465>,  <37.938736, 32.257652, 29.934752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351082, 32.634323, 29.626465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576958, 32.331047, 29.756866>,  <38.712482, 32.149082, 29.835108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576958, 32.331047, 29.756866>,  <38.351082, 32.634323, 29.626465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576958, 32.331047, 29.756866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342586, -0.144029, -0.928381,
		0.750839, 0.635932, 0.178413,
		0.564690, -0.758186, 0.326004,
		38.746365, 32.103592, 29.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062836, 32.806591, 29.358294>,  <38.351082, 32.634323, 29.626465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062836, 32.806591, 29.358294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024384, 32.414051, 29.424877>,  <39.001312, 32.178528, 29.464827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024384, 32.414051, 29.424877>,  <39.062836, 32.806591, 29.358294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024384, 32.414051, 29.424877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623968, -0.189707, -0.758074,
		0.775515, 0.030990, 0.630568,
		-0.096130, -0.981352, 0.166457,
		38.995544, 32.119644, 29.474813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744263, 32.541977, 29.259159>,  <39.062836, 32.806591, 29.358294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744263, 32.541977, 29.259159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503529, 32.223007, 29.241728>,  <39.359089, 32.031624, 29.231270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503529, 32.223007, 29.241728>,  <39.744263, 32.541977, 29.259159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503529, 32.223007, 29.241728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468388, -0.308256, -0.828005,
		0.646842, -0.518735, 0.559026,
		-0.601838, -0.797428, -0.043577,
		39.322979, 31.983778, 29.228655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180897, 31.953691, 29.249620>,  <39.744263, 32.541977, 29.259159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180897, 31.953691, 29.249620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846642, 31.854383, 29.053629>,  <39.646088, 31.794800, 28.936035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846642, 31.854383, 29.053629>,  <40.180897, 31.953691, 29.249620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846642, 31.854383, 29.053629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547689, -0.308620, -0.777683,
		0.041858, -0.918214, 0.393868,
		-0.835634, -0.248269, -0.489977,
		39.595951, 31.779903, 28.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863457, 31.469591, 29.335972>,  <40.180897, 31.953691, 29.249620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863457, 31.469591, 29.335972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167011, 31.726898, 29.376570>,  <41.349144, 31.881283, 29.400928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167011, 31.726898, 29.376570>,  <40.863457, 31.469591, 29.335972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167011, 31.726898, 29.376570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304895, 0.213241, 0.928207,
		0.575445, -0.735345, 0.357954,
		0.758883, 0.643270, 0.101494,
		41.394676, 31.919880, 29.407019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259300, 31.218973, 29.906597>,  <40.863457, 31.469591, 29.335972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259300, 31.218973, 29.906597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.289356, 31.615856, 29.866837>,  <41.307392, 31.853985, 29.842979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.289356, 31.615856, 29.866837>,  <41.259300, 31.218973, 29.906597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289356, 31.615856, 29.866837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024344, 0.101479, 0.994540,
		0.996875, -0.072314, 0.031780,
		0.075144, 0.992206, -0.099402,
		41.311901, 31.913517, 29.837015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739441, 31.470087, 30.458286>,  <41.259300, 31.218973, 29.906597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739441, 31.470087, 30.458286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557465, 31.801403, 30.327467>,  <41.448277, 32.000191, 30.248976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557465, 31.801403, 30.327467>,  <41.739441, 31.470087, 30.458286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557465, 31.801403, 30.327467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176383, 0.276169, 0.944785,
		0.872877, 0.487511, 0.020455,
		-0.454944, 0.828290, -0.327051,
		41.420982, 32.049889, 30.229351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059631, 31.944952, 30.850521>,  <41.739441, 31.470087, 30.458286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059631, 31.944952, 30.850521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748085, 32.153278, 30.710739>,  <41.561157, 32.278275, 30.626869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748085, 32.153278, 30.710739>,  <42.059631, 31.944952, 30.850521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748085, 32.153278, 30.710739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231813, 0.278673, 0.931989,
		0.582780, 0.806902, -0.096316,
		-0.778864, 0.520818, -0.349455,
		41.514427, 32.309525, 30.605902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127625, 32.689495, 31.053242>,  <42.059631, 31.944952, 30.850521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127625, 32.689495, 31.053242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.741364, 32.599621, 31.001026>,  <41.509609, 32.545696, 30.969698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.741364, 32.599621, 31.001026>,  <42.127625, 32.689495, 31.053242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741364, 32.599621, 31.001026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180168, 0.216922, 0.959419,
		-0.187252, 0.949979, -0.249951,
		-0.965648, -0.224686, -0.130537,
		41.451668, 32.532215, 30.961864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804863, 33.206585, 31.456310>,  <42.127625, 32.689495, 31.053242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804863, 33.206585, 31.456310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.520100, 32.934486, 31.386511>,  <41.349243, 32.771229, 31.344631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.520100, 32.934486, 31.386511>,  <41.804863, 33.206585, 31.456310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520100, 32.934486, 31.386511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372475, 0.155094, 0.914991,
		-0.595355, 0.716388, -0.363788,
		-0.711909, -0.680246, -0.174501,
		41.306526, 32.730412, 31.334160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256733, 33.497200, 31.710272>,  <41.804863, 33.206585, 31.456310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256733, 33.497200, 31.710272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207985, 33.101147, 31.682598>,  <41.178734, 32.863514, 31.665995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207985, 33.101147, 31.682598>,  <41.256733, 33.497200, 31.710272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207985, 33.101147, 31.682598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414950, -0.012492, 0.909758,
		-0.901645, 0.139583, -0.409333,
		-0.121873, -0.990132, -0.069184,
		41.171421, 32.804108, 31.661842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518932, 33.363503, 31.919434>,  <41.256733, 33.497200, 31.710272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518932, 33.363503, 31.919434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.702084, 33.012527, 31.976645>,  <40.811974, 32.801945, 32.010971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.702084, 33.012527, 31.976645>,  <40.518932, 33.363503, 31.919434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702084, 33.012527, 31.976645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327556, -0.016940, 0.944680,
		-0.826472, -0.479397, -0.295165,
		0.457877, -0.877435, 0.143029,
		40.839447, 32.749298, 32.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966507, 32.990368, 32.263313>,  <40.518932, 33.363503, 31.919434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966507, 32.990368, 32.263313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317253, 32.810299, 32.330780>,  <40.527702, 32.702255, 32.371258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317253, 32.810299, 32.330780>,  <39.966507, 32.990368, 32.263313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317253, 32.810299, 32.330780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246396, -0.119603, 0.961761,
		-0.412789, -0.884894, -0.215797,
		0.876866, -0.450176, 0.168664,
		40.580315, 32.675247, 32.381378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830841, 32.393875, 32.757217>,  <39.966507, 32.990368, 32.263313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830841, 32.393875, 32.757217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222275, 32.468735, 32.791504>,  <40.457134, 32.513653, 32.812077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222275, 32.468735, 32.791504>,  <39.830841, 32.393875, 32.757217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222275, 32.468735, 32.791504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082409, -0.025422, 0.996274,
		0.188636, -0.982002, -0.009455,
		0.978583, 0.187154, 0.085721,
		40.515850, 32.524879, 32.817219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026310, 32.070854, 33.394753>,  <39.830841, 32.393875, 32.757217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026310, 32.070854, 33.394753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.344219, 32.303982, 33.327049>,  <40.534966, 32.443859, 33.286427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.344219, 32.303982, 33.327049>,  <40.026310, 32.070854, 33.394753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344219, 32.303982, 33.327049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095117, 0.155823, 0.983195,
		0.599401, -0.797520, 0.068408,
		0.794777, 0.582821, -0.169258,
		40.582653, 32.478828, 33.276272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561146, 31.773376, 33.817425>,  <40.026310, 32.070854, 33.394753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561146, 31.773376, 33.817425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.603981, 32.166122, 33.754848>,  <40.629681, 32.401772, 33.717304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.603981, 32.166122, 33.754848>,  <40.561146, 31.773376, 33.817425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603981, 32.166122, 33.754848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152518, 0.139257, 0.978441,
		0.982482, -0.128634, -0.134840,
		0.107083, 0.981866, -0.156436,
		40.636105, 32.460682, 33.707916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165730, 31.987707, 34.163307>,  <40.561146, 31.773376, 33.817425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165730, 31.987707, 34.163307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944092, 32.316833, 34.112789>,  <40.811108, 32.514309, 34.082478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944092, 32.316833, 34.112789>,  <41.165730, 31.987707, 34.163307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944092, 32.316833, 34.112789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036209, 0.127746, 0.991146,
		0.831664, 0.553764, -0.040990,
		-0.554097, 0.822816, -0.126293,
		40.777863, 32.563679, 34.074902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409309, 32.521248, 34.723839>,  <41.165730, 31.987707, 34.163307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409309, 32.521248, 34.723839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040546, 32.627457, 34.610992>,  <40.819290, 32.691181, 34.543285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040546, 32.627457, 34.610992>,  <41.409309, 32.521248, 34.723839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040546, 32.627457, 34.610992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155027, 0.414529, 0.896734,
		0.355051, 0.870439, -0.340992,
		-0.921903, 0.265523, -0.282120,
		40.763977, 32.707115, 34.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.805569, 35.436455, 28.743021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485512, 35.244526, 28.599049>,  <41.293480, 35.129368, 28.512665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485512, 35.244526, 28.599049>,  <41.805569, 35.436455, 28.743021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485512, 35.244526, 28.599049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475737, -0.142196, -0.868018,
		0.365311, -0.865767, 0.342045,
		-0.800139, -0.479820, -0.359931,
		41.245468, 35.100578, 28.491070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024143, 34.897976, 28.480434>,  <41.805569, 35.436455, 28.743021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024143, 34.897976, 28.480434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.667068, 34.907238, 28.300404>,  <41.452824, 34.912796, 28.192385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.667068, 34.907238, 28.300404>,  <42.024143, 34.897976, 28.480434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667068, 34.907238, 28.300404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440212, -0.169110, -0.881825,
		-0.096535, -0.985325, 0.140768,
		-0.892689, 0.023159, -0.450077,
		41.399261, 34.914185, 28.165380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061058, 34.381992, 27.972095>,  <42.024143, 34.897976, 28.480434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061058, 34.381992, 27.972095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.750225, 34.604469, 27.854254>,  <41.563725, 34.737957, 27.783548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.750225, 34.604469, 27.854254>,  <42.061058, 34.381992, 27.972095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750225, 34.604469, 27.854254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270315, -0.127784, -0.954254,
		-0.568396, -0.821170, -0.051049,
		-0.777082, 0.556193, -0.294606,
		41.517101, 34.771328, 27.765871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606529, 34.006794, 27.361534>,  <42.061058, 34.381992, 27.972095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606529, 34.006794, 27.361534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550865, 34.402687, 27.348532>,  <41.517467, 34.640224, 27.340731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550865, 34.402687, 27.348532>,  <41.606529, 34.006794, 27.361534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550865, 34.402687, 27.348532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188263, -0.005786, -0.982102,
		-0.972210, -0.142789, -0.185526,
		-0.139160, 0.989736, -0.032507,
		41.509117, 34.699608, 27.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169086, 34.129059, 26.781605>,  <41.606529, 34.006794, 27.361534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169086, 34.129059, 26.781605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338608, 34.483322, 26.857492>,  <41.440323, 34.695881, 26.903025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338608, 34.483322, 26.857492>,  <41.169086, 34.129059, 26.781605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338608, 34.483322, 26.857492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342066, 0.037442, -0.938929,
		-0.838676, 0.462821, -0.287086,
		0.423807, 0.885661, 0.189717,
		41.465752, 34.749020, 26.914408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145889, 34.390076, 26.129841>,  <41.169086, 34.129059, 26.781605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145889, 34.390076, 26.129841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409813, 34.617329, 26.326567>,  <41.568169, 34.753681, 26.444603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409813, 34.617329, 26.326567>,  <41.145889, 34.390076, 26.129841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409813, 34.617329, 26.326567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578398, 0.033839, -0.815053,
		-0.479697, 0.822244, -0.306277,
		0.659808, 0.568129, 0.491816,
		41.607754, 34.787766, 26.474112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347500, 35.032749, 25.661758>,  <41.145889, 34.390076, 26.129841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347500, 35.032749, 25.661758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644398, 34.935596, 25.911585>,  <41.822536, 34.877304, 26.061481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644398, 34.935596, 25.911585>,  <41.347500, 35.032749, 25.661758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644398, 34.935596, 25.911585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655887, 0.072164, -0.751402,
		0.137433, 0.967367, 0.212868,
		0.742243, -0.242885, 0.624566,
		41.867069, 34.862732, 26.098955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869461, 35.603313, 25.560202>,  <41.347500, 35.032749, 25.661758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869461, 35.603313, 25.560202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047596, 35.276325, 25.706306>,  <42.154476, 35.080132, 25.793970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047596, 35.276325, 25.706306>,  <41.869461, 35.603313, 25.560202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047596, 35.276325, 25.706306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673544, 0.037078, -0.738217,
		0.589929, 0.574773, 0.567116,
		0.445335, -0.817472, 0.365261,
		42.181198, 35.031082, 25.815886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513134, 35.717777, 25.365236>,  <41.869461, 35.603313, 25.560202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513134, 35.717777, 25.365236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.551121, 35.336391, 25.479704>,  <42.573914, 35.107559, 25.548384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.551121, 35.336391, 25.479704>,  <42.513134, 35.717777, 25.365236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551121, 35.336391, 25.479704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734338, -0.126988, -0.666799,
		0.672108, 0.273469, 0.688103,
		0.094968, -0.953462, 0.286168,
		42.579613, 35.050354, 25.565554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218933, 35.600124, 25.400499>,  <42.513134, 35.717777, 25.365236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218933, 35.600124, 25.400499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052704, 35.236996, 25.378014>,  <42.952969, 35.019119, 25.364523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052704, 35.236996, 25.378014>,  <43.218933, 35.600124, 25.400499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052704, 35.236996, 25.378014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654266, -0.255424, -0.711825,
		0.631852, -0.332592, 0.700104,
		-0.415571, -0.907822, -0.056214,
		42.928032, 34.964649, 25.361149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827171, 35.079468, 25.451382>,  <43.218933, 35.600124, 25.400499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827171, 35.079468, 25.451382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490398, 34.975155, 25.262432>,  <43.288334, 34.912567, 25.149063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490398, 34.975155, 25.262432>,  <43.827171, 35.079468, 25.451382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490398, 34.975155, 25.262432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530816, -0.243165, -0.811853,
		0.096854, -0.934271, 0.343158,
		-0.841934, -0.260785, -0.472374,
		43.237820, 34.896919, 25.120720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832893, 34.365574, 25.345896>,  <43.827171, 35.079468, 25.451382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832893, 34.365574, 25.345896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.601578, 34.501255, 25.049107>,  <43.462788, 34.582664, 24.871033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.601578, 34.501255, 25.049107>,  <43.832893, 34.365574, 25.345896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601578, 34.501255, 25.049107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656472, -0.346503, -0.670060,
		-0.484384, -0.874571, -0.022301,
		-0.578287, 0.339206, -0.741972,
		43.428093, 34.603016, 24.826515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020569, 34.096966, 24.756676>,  <43.832893, 34.365574, 25.345896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020569, 34.096966, 24.756676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.813046, 34.379578, 24.564154>,  <43.688534, 34.549145, 24.448641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.813046, 34.379578, 24.564154>,  <44.020569, 34.096966, 24.756676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813046, 34.379578, 24.564154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568586, -0.135252, -0.811429,
		-0.638398, -0.694636, -0.331554,
		-0.518805, 0.706532, -0.481305,
		43.657406, 34.591537, 24.419762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597332, 33.676716, 24.256287>,  <44.020569, 34.096966, 24.756676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597332, 33.676716, 24.256287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735626, 34.049538, 24.212942>,  <43.818604, 34.273232, 24.186935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735626, 34.049538, 24.212942>,  <43.597332, 33.676716, 24.256287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735626, 34.049538, 24.212942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311002, -0.222783, -0.923929,
		-0.885292, 0.285736, -0.366895,
		0.345738, 0.932053, -0.108363,
		43.839348, 34.329155, 24.180433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976322, 33.279186, 24.451811>,  <43.597332, 33.676716, 24.256287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976322, 33.279186, 24.451811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.111763, 32.906578, 24.398716>,  <43.193027, 32.683014, 24.366859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.111763, 32.906578, 24.398716>,  <42.976322, 33.279186, 24.451811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111763, 32.906578, 24.398716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111159, -0.100480, 0.988710,
		-0.934340, -0.349535, 0.069524,
		0.338603, -0.931520, -0.132737,
		43.213345, 32.627121, 24.358894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553997, 32.866764, 24.812574>,  <42.976322, 33.279186, 24.451811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553997, 32.866764, 24.812574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.860485, 32.610905, 24.788027>,  <43.044376, 32.457390, 24.773298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.860485, 32.610905, 24.788027>,  <42.553997, 32.866764, 24.812574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860485, 32.610905, 24.788027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067722, -0.175355, 0.982173,
		-0.639004, -0.748402, -0.177677,
		0.766217, -0.639645, -0.061369,
		43.090351, 32.419010, 24.769615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312084, 32.234612, 24.948652>,  <42.553997, 32.866764, 24.812574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312084, 32.234612, 24.948652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.698330, 32.165306, 25.026178>,  <42.930077, 32.123722, 25.072693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.698330, 32.165306, 25.026178>,  <42.312084, 32.234612, 24.948652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698330, 32.165306, 25.026178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229582, -0.218567, 0.948431,
		-0.121964, -0.960317, -0.250829,
		0.965617, -0.173261, 0.193814,
		42.988014, 32.113327, 25.084322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376194, 31.653589, 25.434317>,  <42.312084, 32.234612, 24.948652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376194, 31.653589, 25.434317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.735279, 31.823412, 25.481398>,  <42.950729, 31.925306, 25.509645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.735279, 31.823412, 25.481398>,  <42.376194, 31.653589, 25.434317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735279, 31.823412, 25.481398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044276, -0.352741, 0.934673,
		0.438341, -0.833861, -0.335460,
		0.897717, 0.424558, 0.117702,
		43.004593, 31.950779, 25.516708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848385, 31.212399, 25.696497>,  <42.376194, 31.653589, 25.434317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848385, 31.212399, 25.696497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.055931, 31.540882, 25.791489>,  <43.180458, 31.737972, 25.848484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.055931, 31.540882, 25.791489>,  <42.848385, 31.212399, 25.696497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055931, 31.540882, 25.791489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014167, -0.286021, 0.958118,
		0.854738, -0.493772, -0.160041,
		0.518867, 0.821207, 0.237478,
		43.211590, 31.787245, 25.862732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427265, 30.977789, 26.082973>,  <42.848385, 31.212399, 25.696497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427265, 30.977789, 26.082973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.367092, 31.365131, 26.162630>,  <43.330990, 31.597536, 26.210424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.367092, 31.365131, 26.162630>,  <43.427265, 30.977789, 26.082973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367092, 31.365131, 26.162630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013366, -0.199422, 0.979823,
		0.988530, 0.150058, 0.017056,
		-0.150431, 0.968356, 0.199140,
		43.321964, 31.655638, 26.222372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711182, 31.063370, 26.808039>,  <43.427265, 30.977789, 26.082973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711182, 31.063370, 26.808039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.483112, 31.384069, 26.736366>,  <43.346272, 31.576488, 26.693363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.483112, 31.384069, 26.736366>,  <43.711182, 31.063370, 26.808039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483112, 31.384069, 26.736366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297470, 0.001824, 0.954730,
		0.765778, 0.597661, 0.237456,
		-0.570171, 0.801747, -0.179183,
		43.312061, 31.624594, 26.682611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741516, 31.422773, 27.395283>,  <43.711182, 31.063370, 26.808039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741516, 31.422773, 27.395283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.413059, 31.560013, 27.212851>,  <43.215984, 31.642357, 27.103392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.413059, 31.560013, 27.212851>,  <43.741516, 31.422773, 27.395283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413059, 31.560013, 27.212851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416135, 0.186961, 0.889875,
		0.390585, 0.920504, -0.010745,
		-0.821142, 0.343100, -0.456078,
		43.166718, 31.662943, 27.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591629, 32.130466, 27.631115>,  <43.741516, 31.422773, 27.395283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591629, 32.130466, 27.631115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.247929, 31.968016, 27.506693>,  <43.041710, 31.870546, 27.432039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.247929, 31.968016, 27.506693>,  <43.591629, 32.130466, 27.631115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247929, 31.968016, 27.506693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440755, 0.279096, 0.853136,
		-0.259664, 0.870155, -0.418814,
		-0.859250, -0.406123, -0.311054,
		42.990154, 31.846178, 27.413376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062660, 32.644867, 27.715017>,  <43.591629, 32.130466, 27.631115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062660, 32.644867, 27.715017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856979, 32.301815, 27.718248>,  <42.733570, 32.095982, 27.720186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856979, 32.301815, 27.718248>,  <43.062660, 32.644867, 27.715017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856979, 32.301815, 27.718248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418549, 0.259140, 0.870439,
		-0.748610, 0.444198, -0.492211,
		-0.514199, -0.857633, 0.008076,
		42.702721, 32.044525, 27.720671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421444, 32.841145, 27.939007>,  <43.062660, 32.644867, 27.715017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421444, 32.841145, 27.939007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.387344, 32.444740, 27.980240>,  <42.366886, 32.206898, 28.004980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.387344, 32.444740, 27.980240>,  <42.421444, 32.841145, 27.939007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387344, 32.444740, 27.980240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650957, 0.133722, 0.747244,
		-0.754313, -0.003399, -0.656506,
		-0.085249, -0.991013, 0.103081,
		42.361771, 32.147438, 28.011164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802086, 32.628437, 27.884024>,  <42.421444, 32.841145, 27.939007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802086, 32.628437, 27.884024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975269, 32.352310, 28.115892>,  <42.079178, 32.186634, 28.255013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975269, 32.352310, 28.115892>,  <41.802086, 32.628437, 27.884024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975269, 32.352310, 28.115892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788437, 0.021707, 0.614732,
		-0.436941, -0.723185, -0.534871,
		0.432954, -0.690314, 0.579671,
		42.105156, 32.145218, 28.289793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233433, 32.445545, 28.199810>,  <41.802086, 32.628437, 27.884024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233433, 32.445545, 28.199810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528831, 32.271774, 28.406069>,  <41.706070, 32.167511, 28.529825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528831, 32.271774, 28.406069>,  <41.233433, 32.445545, 28.199810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528831, 32.271774, 28.406069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566677, 0.014523, 0.823812,
		-0.365379, -0.900587, -0.235458,
		0.738495, -0.434432, 0.515649,
		41.750381, 32.141445, 28.560764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026413, 31.806076, 28.539976>,  <41.233433, 32.445545, 28.199810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026413, 31.806076, 28.539976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326057, 31.969812, 28.748312>,  <41.505844, 32.068054, 28.873314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326057, 31.969812, 28.748312>,  <41.026413, 31.806076, 28.539976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326057, 31.969812, 28.748312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573955, 0.008473, 0.818843,
		0.330772, -0.912342, 0.241290,
		0.749109, 0.409340, 0.520841,
		41.550789, 32.092613, 28.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382782, 31.365675, 28.610363>,  <41.026413, 31.806076, 28.539976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382782, 31.365675, 28.610363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.021259, 31.502300, 28.507236>,  <39.804344, 31.584276, 28.445360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.021259, 31.502300, 28.507236>,  <40.382782, 31.365675, 28.610363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021259, 31.502300, 28.507236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207939, -0.176028, -0.962172,
		-0.374028, -0.923226, 0.088070,
		-0.903806, 0.341566, -0.257814,
		39.750118, 31.604771, 28.429892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142464, 30.922495, 28.087221>,  <40.382782, 31.365675, 28.610363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142464, 30.922495, 28.087221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.931416, 31.259117, 28.040916>,  <39.804787, 31.461090, 28.013134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.931416, 31.259117, 28.040916>,  <40.142464, 30.922495, 28.087221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931416, 31.259117, 28.040916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070705, -0.179305, -0.981249,
		-0.846530, -0.509546, 0.154108,
		-0.527624, 0.841554, -0.115760,
		39.773129, 31.511583, 28.006189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787498, 30.727293, 27.600080>,  <40.142464, 30.922495, 28.087221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787498, 30.727293, 27.600080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704151, 31.118187, 27.584126>,  <39.654144, 31.352724, 27.574553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704151, 31.118187, 27.584126>,  <39.787498, 30.727293, 27.600080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704151, 31.118187, 27.584126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043716, -0.050049, -0.997790,
		-0.977073, -0.206164, 0.053150,
		-0.208368, 0.977237, -0.039889,
		39.641640, 31.411358, 27.572159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133640, 30.837118, 27.266750>,  <39.787498, 30.727293, 27.600080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133640, 30.837118, 27.266750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313026, 31.192030, 27.223637>,  <39.420658, 31.404978, 27.197767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313026, 31.192030, 27.223637>,  <39.133640, 30.837118, 27.266750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313026, 31.192030, 27.223637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019262, -0.110971, -0.993637,
		-0.893594, 0.447685, -0.032676,
		0.448462, 0.887279, -0.107786,
		39.447563, 31.458214, 27.191301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690071, 31.250343, 26.727743>,  <39.133640, 30.837118, 27.266750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690071, 31.250343, 26.727743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058784, 31.405313, 26.733736>,  <39.280010, 31.498295, 26.737331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058784, 31.405313, 26.733736>,  <38.690071, 31.250343, 26.727743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058784, 31.405313, 26.733736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038143, -0.052163, -0.997910,
		-0.385833, 0.920425, -0.062860,
		0.921780, 0.387424, 0.014982,
		39.335320, 31.521542, 26.738230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640427, 31.744083, 26.143091>,  <38.690071, 31.250343, 26.727743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640427, 31.744083, 26.143091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028404, 31.714689, 26.235882>,  <39.261189, 31.697052, 26.291555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028404, 31.714689, 26.235882>,  <38.640427, 31.744083, 26.143091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028404, 31.714689, 26.235882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215937, -0.179562, -0.959755,
		0.112181, 0.980998, -0.158296,
		0.969942, -0.073485, 0.231977,
		39.319386, 31.692644, 26.305475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119434, 32.193436, 25.682495>,  <38.640427, 31.744083, 26.143091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119434, 32.193436, 25.682495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366844, 31.907125, 25.812170>,  <39.515289, 31.735340, 25.889975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366844, 31.907125, 25.812170>,  <39.119434, 32.193436, 25.682495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366844, 31.907125, 25.812170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397350, -0.071018, -0.914915,
		0.677897, 0.694709, 0.240488,
		0.618521, -0.715776, 0.324185,
		39.552399, 31.692392, 25.909426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976864, 32.912117, 25.582857>,  <39.119434, 32.193436, 25.682495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976864, 32.912117, 25.582857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.658520, 32.930004, 25.341326>,  <38.467514, 32.940739, 25.196407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.658520, 32.930004, 25.341326>,  <38.976864, 32.912117, 25.582857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658520, 32.930004, 25.341326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605465, -0.066068, 0.793125,
		-0.004425, 0.996813, 0.079657,
		-0.795859, 0.044720, -0.603828,
		38.419762, 32.943420, 25.160177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561398, 33.350090, 25.970343>,  <38.976864, 32.912117, 25.582857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561398, 33.350090, 25.970343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.322495, 33.177853, 25.699678>,  <38.179153, 33.074512, 25.537279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.322495, 33.177853, 25.699678>,  <38.561398, 33.350090, 25.970343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322495, 33.177853, 25.699678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666090, -0.203662, 0.717527,
		-0.446771, 0.879269, -0.165174,
		-0.597260, -0.430591, -0.676663,
		38.143318, 33.048676, 25.496679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999321, 33.756420, 25.959322>,  <38.561398, 33.350090, 25.970343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999321, 33.756420, 25.959322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873905, 33.408077, 25.807899>,  <37.798656, 33.199070, 25.717047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873905, 33.408077, 25.807899>,  <37.999321, 33.756420, 25.959322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873905, 33.408077, 25.807899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469701, -0.204240, 0.858876,
		-0.825273, 0.447096, -0.345005,
		-0.313536, -0.870856, -0.378555,
		37.779842, 33.146820, 25.694332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239384, 33.620163, 26.092348>,  <37.999321, 33.756420, 25.959322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239384, 33.620163, 26.092348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.356903, 33.244678, 26.020243>,  <37.427414, 33.019386, 25.976978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.356903, 33.244678, 26.020243>,  <37.239384, 33.620163, 26.092348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356903, 33.244678, 26.020243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585388, -0.325787, 0.742418,
		-0.755646, -0.112599, -0.645229,
		0.293802, -0.938714, -0.180266,
		37.445045, 32.963066, 25.966164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625408, 33.149200, 26.129026>,  <37.239384, 33.620163, 26.092348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625408, 33.149200, 26.129026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960167, 32.951309, 26.222710>,  <37.161022, 32.832577, 26.278919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960167, 32.951309, 26.222710>,  <36.625408, 33.149200, 26.129026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960167, 32.951309, 26.222710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411965, -0.287572, 0.864631,
		-0.360408, -0.820088, -0.444478,
		0.836894, -0.494730, 0.234205,
		37.211235, 32.802891, 26.292973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345203, 32.531841, 26.313906>,  <36.625408, 33.149200, 26.129026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345203, 32.531841, 26.313906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713715, 32.570812, 26.464502>,  <36.934822, 32.594196, 26.554861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713715, 32.570812, 26.464502>,  <36.345203, 32.531841, 26.313906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713715, 32.570812, 26.464502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357615, -0.168151, 0.918606,
		0.152806, -0.980935, -0.120073,
		0.921282, 0.097429, 0.376492,
		36.990101, 32.600040, 26.577450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388721, 32.009380, 26.783438>,  <36.345203, 32.531841, 26.313906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388721, 32.009380, 26.783438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685646, 32.245331, 26.910568>,  <36.863800, 32.386902, 26.986847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685646, 32.245331, 26.910568>,  <36.388721, 32.009380, 26.783438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685646, 32.245331, 26.910568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427146, 0.051138, 0.902736,
		0.516251, -0.805871, 0.289925,
		0.742315, 0.589878, 0.317824,
		36.908340, 32.422295, 27.005915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.544342, 36.125343, 23.384424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.837467, 35.971558, 23.608986>,  <41.013344, 35.879288, 23.743723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.837467, 35.971558, 23.608986>,  <40.544342, 36.125343, 23.384424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837467, 35.971558, 23.608986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496693, 0.261674, 0.827540,
		-0.465063, -0.885277, 0.000798,
		0.732811, -0.384462, 0.561406,
		41.057312, 35.856220, 23.777409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198620, 35.758896, 23.838671>,  <40.544342, 36.125343, 23.384424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198620, 35.758896, 23.838671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556881, 35.777744, 24.015574>,  <40.771835, 35.789051, 24.121716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556881, 35.777744, 24.015574>,  <40.198620, 35.758896, 23.838671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556881, 35.777744, 24.015574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444743, 0.086836, 0.891439,
		0.003596, -0.995108, 0.098728,
		0.895651, 0.047114, 0.442255,
		40.825577, 35.791878, 24.148251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005871, 35.413952, 24.478777>,  <40.198620, 35.758896, 23.838671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005871, 35.413952, 24.478777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349205, 35.599438, 24.566626>,  <40.555206, 35.710728, 24.619335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349205, 35.599438, 24.566626>,  <40.005871, 35.413952, 24.478777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349205, 35.599438, 24.566626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311026, 0.129800, 0.941496,
		0.408075, -0.876427, 0.255638,
		0.858335, 0.463711, 0.219623,
		40.606705, 35.738552, 24.632513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186226, 35.120564, 25.110210>,  <40.005871, 35.413952, 24.478777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186226, 35.120564, 25.110210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357613, 35.481956, 25.105534>,  <40.460445, 35.698792, 25.102728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357613, 35.481956, 25.105534>,  <40.186226, 35.120564, 25.110210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357613, 35.481956, 25.105534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286887, 0.148297, 0.946416,
		0.856805, -0.402150, 0.322738,
		0.428462, 0.903484, -0.011690,
		40.486153, 35.753002, 25.102026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557354, 35.170425, 25.814953>,  <40.186226, 35.120564, 25.110210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557354, 35.170425, 25.814953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.524971, 35.542961, 25.672939>,  <40.505539, 35.766483, 25.587732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.524971, 35.542961, 25.672939>,  <40.557354, 35.170425, 25.814953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524971, 35.542961, 25.672939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239512, 0.327586, 0.913959,
		0.967512, 0.159030, 0.196545,
		-0.080962, 0.931342, -0.355033,
		40.500683, 35.822365, 25.566429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827526, 35.653503, 26.388561>,  <40.557354, 35.170425, 25.814953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827526, 35.653503, 26.388561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633041, 35.883694, 26.125525>,  <40.516350, 36.021809, 25.967703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633041, 35.883694, 26.125525>,  <40.827526, 35.653503, 26.388561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633041, 35.883694, 26.125525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316745, 0.585292, 0.746395,
		0.814415, 0.571195, -0.102297,
		-0.486210, 0.575474, -0.657594,
		40.487179, 36.056335, 25.928246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929531, 36.394966, 26.586285>,  <40.827526, 35.653503, 26.388561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929531, 36.394966, 26.586285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595688, 36.359203, 26.368872>,  <40.395382, 36.337746, 26.238424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595688, 36.359203, 26.368872>,  <40.929531, 36.394966, 26.586285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595688, 36.359203, 26.368872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478946, 0.605200, 0.635880,
		0.272091, 0.791037, -0.547930,
		-0.834612, -0.089411, -0.543534,
		40.345303, 36.332378, 26.205812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584599, 37.101887, 26.659729>,  <40.929531, 36.394966, 26.586285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584599, 37.101887, 26.659729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290054, 36.859741, 26.538860>,  <40.113327, 36.714455, 26.466339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290054, 36.859741, 26.538860>,  <40.584599, 37.101887, 26.659729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290054, 36.859741, 26.538860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615295, 0.413406, 0.671198,
		-0.281401, 0.680168, -0.676894,
		-0.736359, -0.605365, -0.302171,
		40.069145, 36.678131, 26.448210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018513, 37.540600, 26.496237>,  <40.584599, 37.101887, 26.659729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018513, 37.540600, 26.496237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.870461, 37.177700, 26.576149>,  <39.781631, 36.959961, 26.624096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.870461, 37.177700, 26.576149>,  <40.018513, 37.540600, 26.496237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870461, 37.177700, 26.576149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598426, 0.397335, 0.695709,
		-0.710558, 0.137947, -0.689984,
		-0.370126, -0.907246, 0.199779,
		39.759422, 36.905525, 26.636082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363918, 37.707619, 26.562090>,  <40.018513, 37.540600, 26.496237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363918, 37.707619, 26.562090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380550, 37.349861, 26.740227>,  <39.390530, 37.135208, 26.847109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380550, 37.349861, 26.740227>,  <39.363918, 37.707619, 26.562090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380550, 37.349861, 26.740227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586914, 0.338858, 0.735328,
		-0.808581, -0.291950, -0.510844,
		0.041576, -0.894394, 0.445344,
		39.393024, 37.081543, 26.873831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676971, 37.462234, 26.657909>,  <39.363918, 37.707619, 26.562090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676971, 37.462234, 26.657909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.897068, 37.267326, 26.929144>,  <39.029125, 37.150383, 27.091885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.897068, 37.267326, 26.929144>,  <38.676971, 37.462234, 26.657909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897068, 37.267326, 26.929144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635576, 0.282273, 0.718585,
		-0.541550, -0.826372, -0.154378,
		0.550242, -0.487269, 0.678088,
		39.062141, 37.121147, 27.132570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227249, 37.041367, 26.999981>,  <38.676971, 37.462234, 26.657909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227249, 37.041367, 26.999981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523182, 37.041466, 27.269098>,  <38.700741, 37.041527, 27.430569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523182, 37.041466, 27.269098>,  <38.227249, 37.041367, 26.999981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523182, 37.041466, 27.269098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632872, 0.339608, 0.695801,
		-0.228312, -0.940567, 0.251411,
		0.739828, 0.000251, 0.672796,
		38.745129, 37.041542, 27.470938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597885, 36.484203, 26.744261>,  <38.227249, 37.041367, 26.999981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597885, 36.484203, 26.744261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250530, 36.365124, 26.585629>,  <37.042118, 36.293674, 26.490450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250530, 36.365124, 26.585629>,  <37.597885, 36.484203, 26.744261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250530, 36.365124, 26.585629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336014, 0.234896, -0.912096,
		0.364684, -0.925310, -0.103951,
		-0.868389, -0.297698, -0.396580,
		36.990013, 36.275814, 26.466654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792202, 36.112431, 26.278696>,  <37.597885, 36.484203, 26.744261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792202, 36.112431, 26.278696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425797, 36.209770, 26.151134>,  <37.205952, 36.268173, 26.074596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425797, 36.209770, 26.151134>,  <37.792202, 36.112431, 26.278696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425797, 36.209770, 26.151134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330277, 0.006312, -0.943863,
		-0.227672, -0.969919, -0.086153,
		-0.916014, 0.243346, -0.318905,
		37.150993, 36.282772, 26.055464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625618, 35.588821, 25.834225>,  <37.792202, 36.112431, 26.278696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625618, 35.588821, 25.834225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408466, 35.914669, 25.752571>,  <37.278175, 36.110180, 25.703579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408466, 35.914669, 25.752571>,  <37.625618, 35.588821, 25.834225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408466, 35.914669, 25.752571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325025, -0.020326, -0.945487,
		-0.774363, -0.579637, -0.253738,
		-0.542882, 0.814621, -0.204136,
		37.245602, 36.159054, 25.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331821, 35.462193, 25.207438>,  <37.625618, 35.588821, 25.834225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331821, 35.462193, 25.207438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341991, 35.859573, 25.251999>,  <37.348095, 36.098000, 25.278736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341991, 35.859573, 25.251999>,  <37.331821, 35.462193, 25.207438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341991, 35.859573, 25.251999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321940, 0.097363, -0.941741,
		-0.946419, 0.059810, -0.317356,
		0.025427, 0.993450, 0.111401,
		37.349621, 36.157608, 25.285419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967976, 35.818050, 24.604370>,  <37.331821, 35.462193, 25.207438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967976, 35.818050, 24.604370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237186, 36.083462, 24.735071>,  <37.398712, 36.242706, 24.813492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237186, 36.083462, 24.735071>,  <36.967976, 35.818050, 24.604370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237186, 36.083462, 24.735071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353538, 0.099435, -0.930120,
		-0.649649, 0.741517, -0.167659,
		0.673028, 0.663525, 0.326752,
		37.439095, 36.282520, 24.833097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747452, 36.289265, 24.062527>,  <36.967976, 35.818050, 24.604370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747452, 36.289265, 24.062527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082142, 36.397644, 24.252886>,  <37.282955, 36.462669, 24.367102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082142, 36.397644, 24.252886>,  <36.747452, 36.289265, 24.062527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082142, 36.397644, 24.252886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297876, 0.504038, -0.810688,
		-0.459523, 0.820082, 0.341034,
		0.836725, 0.270944, 0.475900,
		37.333160, 36.478928, 24.395657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889626, 36.894878, 23.839201>,  <36.747452, 36.289265, 24.062527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889626, 36.894878, 23.839201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.253284, 36.800133, 23.976221>,  <37.471481, 36.743286, 24.058434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.253284, 36.800133, 23.976221>,  <36.889626, 36.894878, 23.839201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253284, 36.800133, 23.976221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385479, 0.167273, -0.907428,
		0.157639, 0.957034, 0.243383,
		0.909151, -0.236865, 0.342548,
		37.526031, 36.729073, 24.078985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290829, 37.334248, 23.522068>,  <36.889626, 36.894878, 23.839201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290829, 37.334248, 23.522068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533340, 37.040157, 23.643309>,  <37.678848, 36.863701, 23.716053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533340, 37.040157, 23.643309>,  <37.290829, 37.334248, 23.522068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533340, 37.040157, 23.643309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529656, 0.089012, -0.843529,
		0.593206, 0.671951, 0.443383,
		0.606277, -0.735227, 0.303100,
		37.715225, 36.819588, 23.734240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990135, 37.616440, 23.398870>,  <37.290829, 37.334248, 23.522068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990135, 37.616440, 23.398870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001736, 37.216949, 23.415348>,  <38.008698, 36.977253, 23.425234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001736, 37.216949, 23.415348>,  <37.990135, 37.616440, 23.398870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001736, 37.216949, 23.415348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684626, -0.010177, -0.728824,
		0.728318, 0.049342, 0.683461,
		0.029006, -0.998730, 0.041193,
		38.010437, 36.917332, 23.427706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639275, 37.514008, 23.164957>,  <37.990135, 37.616440, 23.398870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639275, 37.514008, 23.164957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.484589, 37.145546, 23.147444>,  <38.391777, 36.924469, 23.136936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.484589, 37.145546, 23.147444>,  <38.639275, 37.514008, 23.164957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484589, 37.145546, 23.147444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555405, -0.194742, -0.808456,
		0.736189, -0.336962, 0.586927,
		-0.386718, -0.921158, -0.043784,
		38.368572, 36.869198, 23.134308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165920, 37.038239, 23.149427>,  <38.639275, 37.514008, 23.164957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165920, 37.038239, 23.149427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861408, 36.848003, 22.973120>,  <38.678703, 36.733864, 22.867336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861408, 36.848003, 22.973120>,  <39.165920, 37.038239, 23.149427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861408, 36.848003, 22.973120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585282, -0.211392, -0.782789,
		0.279107, -0.853893, 0.439279,
		-0.761278, -0.475584, -0.440767,
		38.633026, 36.705330, 22.840889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446445, 36.560333, 22.829344>,  <39.165920, 37.038239, 23.149427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446445, 36.560333, 22.829344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.093338, 36.487877, 22.655949>,  <38.881474, 36.444405, 22.551912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.093338, 36.487877, 22.655949>,  <39.446445, 36.560333, 22.829344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093338, 36.487877, 22.655949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469307, -0.297177, -0.831527,
		0.021803, -0.937482, 0.347350,
		-0.882766, -0.181143, -0.433487,
		38.828506, 36.433533, 22.525902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407146, 35.768101, 22.662718>,  <39.446445, 36.560333, 22.829344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407146, 35.768101, 22.662718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166145, 35.983841, 22.427399>,  <39.021545, 36.113285, 22.286207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166145, 35.983841, 22.427399>,  <39.407146, 35.768101, 22.662718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166145, 35.983841, 22.427399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519201, -0.294946, -0.802145,
		-0.606153, -0.788738, -0.102326,
		-0.602502, 0.539351, -0.588296,
		38.985394, 36.145645, 22.250910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437477, 35.042809, 22.620600>,  <39.407146, 35.768101, 22.662718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437477, 35.042809, 22.620600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438267, 34.665440, 22.487967>,  <39.438740, 34.439018, 22.408386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438267, 34.665440, 22.487967>,  <39.437477, 35.042809, 22.620600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438267, 34.665440, 22.487967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397156, -0.305052, 0.865569,
		-0.917749, 0.129978, -0.375290,
		0.001978, -0.943424, -0.331583,
		39.438862, 34.382412, 22.388491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990074, 34.722092, 23.012259>,  <39.437477, 35.042809, 22.620600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990074, 34.722092, 23.012259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158249, 34.399128, 22.846693>,  <39.259151, 34.205349, 22.747355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158249, 34.399128, 22.846693>,  <38.990074, 34.722092, 23.012259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158249, 34.399128, 22.846693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097636, -0.493802, 0.864076,
		-0.902055, -0.322874, -0.286443,
		0.420433, -0.807411, -0.413912,
		39.284378, 34.156906, 22.722519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463146, 34.218147, 22.875811>,  <38.990074, 34.722092, 23.012259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463146, 34.218147, 22.875811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823967, 34.054222, 22.930002>,  <39.040459, 33.955868, 22.962517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823967, 34.054222, 22.930002>,  <38.463146, 34.218147, 22.875811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823967, 34.054222, 22.930002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363670, -0.552564, 0.749945,
		-0.232474, -0.725761, -0.647478,
		0.902053, -0.409810, 0.135481,
		39.094582, 33.931278, 22.970646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301437, 33.561096, 22.948753>,  <38.463146, 34.218147, 22.875811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301437, 33.561096, 22.948753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.664433, 33.594639, 23.113400>,  <38.882229, 33.614765, 23.212187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.664433, 33.594639, 23.113400>,  <38.301437, 33.561096, 22.948753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664433, 33.594639, 23.113400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324303, -0.482944, 0.813384,
		0.266995, -0.871627, -0.411073,
		0.907492, 0.083858, 0.411615,
		38.936680, 33.619797, 23.236883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399380, 32.959671, 23.231155>,  <38.301437, 33.561096, 22.948753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399380, 32.959671, 23.231155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668716, 33.176239, 23.432539>,  <38.830318, 33.306179, 23.553370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668716, 33.176239, 23.432539>,  <38.399380, 32.959671, 23.231155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668716, 33.176239, 23.432539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373539, -0.338530, 0.863635,
		0.638026, -0.769586, -0.025705,
		0.673343, 0.541420, 0.503461,
		38.870720, 33.338665, 23.583578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674171, 32.467472, 23.731649>,  <38.399380, 32.959671, 23.231155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674171, 32.467472, 23.731649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.717728, 32.845253, 23.855688>,  <38.743862, 33.071922, 23.930111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.717728, 32.845253, 23.855688>,  <38.674171, 32.467472, 23.731649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717728, 32.845253, 23.855688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418449, -0.239412, 0.876118,
		0.901689, -0.225163, 0.369133,
		0.108895, 0.944448, 0.310095,
		38.750397, 33.128586, 23.948717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125866, 32.415257, 24.298788>,  <38.674171, 32.467472, 23.731649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125866, 32.415257, 24.298788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931591, 32.762264, 24.341717>,  <38.815025, 32.970470, 24.367474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931591, 32.762264, 24.341717>,  <39.125866, 32.415257, 24.298788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931591, 32.762264, 24.341717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395805, -0.327719, 0.857869,
		0.779391, 0.374175, 0.502537,
		-0.485683, 0.867522, 0.107321,
		38.785885, 33.022522, 24.373913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192989, 32.523838, 25.005442>,  <39.125866, 32.415257, 24.298788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192989, 32.523838, 25.005442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.878029, 32.736591, 24.880800>,  <38.689053, 32.864243, 24.806015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.878029, 32.736591, 24.880800>,  <39.192989, 32.523838, 25.005442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878029, 32.736591, 24.880800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462460, -0.175463, 0.869105,
		0.407586, 0.828441, 0.384134,
		-0.787404, 0.531881, -0.311605,
		38.641808, 32.896156, 24.787319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830265, 32.427105, 25.389442>,  <39.192989, 32.523838, 25.005442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830265, 32.427105, 25.389442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851887, 32.041122, 25.492153>,  <39.864861, 31.809532, 25.553780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851887, 32.041122, 25.492153>,  <39.830265, 32.427105, 25.389442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851887, 32.041122, 25.492153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549749, -0.185914, -0.814378,
		0.833579, 0.185183, 0.520435,
		0.054053, -0.964957, 0.256779,
		39.868103, 31.751635, 25.569187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422981, 32.069427, 25.051956>,  <39.830265, 32.427105, 25.389442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422981, 32.069427, 25.051956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.258301, 31.725250, 25.172054>,  <40.159492, 31.518745, 25.244112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.258301, 31.725250, 25.172054>,  <40.422981, 32.069427, 25.051956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258301, 31.725250, 25.172054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284269, -0.434276, -0.854749,
		0.865848, -0.266552, 0.423388,
		-0.411702, -0.860439, 0.300244,
		40.134789, 31.467119, 25.262127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973740, 31.586714, 25.256777>,  <40.422981, 32.069427, 25.051956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973740, 31.586714, 25.256777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637360, 31.420074, 25.118647>,  <40.435532, 31.320091, 25.035769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637360, 31.420074, 25.118647>,  <40.973740, 31.586714, 25.256777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637360, 31.420074, 25.118647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454303, -0.196882, -0.868819,
		0.293961, -0.887515, 0.354829,
		-0.840949, -0.416599, -0.345325,
		40.385075, 31.295095, 25.015049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194962, 30.970615, 24.992481>,  <40.973740, 31.586714, 25.256777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194962, 30.970615, 24.992481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826500, 30.976912, 24.836929>,  <40.605423, 30.980690, 24.743599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826500, 30.976912, 24.836929>,  <41.194962, 30.970615, 24.992481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826500, 30.976912, 24.836929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364207, -0.317412, -0.875559,
		-0.137218, -0.948157, 0.286652,
		-0.921154, 0.015741, -0.388880,
		40.550156, 30.981634, 24.720264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158939, 30.397530, 24.478855>,  <41.194962, 30.970615, 24.992481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158939, 30.397530, 24.478855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.847122, 30.631729, 24.389853>,  <40.660034, 30.772249, 24.336451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.847122, 30.631729, 24.389853>,  <41.158939, 30.397530, 24.478855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847122, 30.631729, 24.389853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112725, -0.218298, -0.969350,
		-0.616126, -0.780728, 0.104172,
		-0.779539, 0.585499, -0.222507,
		40.613262, 30.807379, 24.323101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670525, 30.026175, 24.097559>,  <41.158939, 30.397530, 24.478855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670525, 30.026175, 24.097559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564621, 30.398428, 23.996504>,  <40.501080, 30.621780, 23.935871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564621, 30.398428, 23.996504>,  <40.670525, 30.026175, 24.097559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564621, 30.398428, 23.996504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262378, -0.182583, -0.947534,
		-0.927935, -0.317151, -0.195838,
		-0.264755, 0.930634, -0.252638,
		40.485195, 30.677618, 23.920712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254654, 30.004910, 23.546656>,  <40.670525, 30.026175, 24.097559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254654, 30.004910, 23.546656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.409527, 30.373358, 23.530548>,  <40.502453, 30.594427, 23.520884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.409527, 30.373358, 23.530548>,  <40.254654, 30.004910, 23.546656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409527, 30.373358, 23.530548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156478, -0.108689, -0.981683,
		-0.908627, 0.373792, -0.186218,
		0.387185, 0.921122, -0.040268,
		40.525681, 30.649694, 23.518467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962955, 30.242975, 22.951471>,  <40.254654, 30.004910, 23.546656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962955, 30.242975, 22.951471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299789, 30.437651, 23.044439>,  <40.501892, 30.554457, 23.100220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299789, 30.437651, 23.044439>,  <39.962955, 30.242975, 22.951471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299789, 30.437651, 23.044439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228247, 0.068864, -0.971165,
		-0.488662, 0.870856, -0.053096,
		0.842088, 0.486690, 0.232422,
		40.552418, 30.583658, 23.114166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286343, 29.963762, 22.255964>,  <39.962955, 30.242975, 22.951471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286343, 29.963762, 22.255964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.234142, 30.080124, 21.876841>,  <40.202824, 30.149940, 21.649366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.234142, 30.080124, 21.876841>,  <40.286343, 29.963762, 22.255964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234142, 30.080124, 21.876841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431891, -0.877193, -0.209767,
		-0.892435, 0.381976, 0.240113,
		-0.130499, 0.290906, -0.947810,
		40.194992, 30.167397, 21.592497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.617886, 33.467018, 37.925209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003365, 33.406506, 38.013206>,  <36.234653, 33.370197, 38.066006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003365, 33.406506, 38.013206>,  <35.617886, 33.467018, 37.925209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003365, 33.406506, 38.013206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204322, -0.112521, -0.972415,
		0.171859, 0.982066, -0.077527,
		0.963700, -0.151278, 0.219996,
		36.292473, 33.361122, 38.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020767, 33.834652, 37.375397>,  <35.617886, 33.467018, 37.925209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020767, 33.834652, 37.375397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275326, 33.572498, 37.538105>,  <36.428062, 33.415207, 37.635731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275326, 33.572498, 37.538105>,  <36.020767, 33.834652, 37.375397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275326, 33.572498, 37.538105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348083, -0.226596, -0.909666,
		0.688356, 0.720502, 0.083923,
		0.636400, -0.655386, 0.406773,
		36.466248, 33.375881, 37.660137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629692, 33.995258, 37.083038>,  <36.020767, 33.834652, 37.375397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629692, 33.995258, 37.083038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683178, 33.619892, 37.210476>,  <36.715271, 33.394672, 37.286938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683178, 33.619892, 37.210476>,  <36.629692, 33.995258, 37.083038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683178, 33.619892, 37.210476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390115, -0.245680, -0.887385,
		0.911005, 0.242948, 0.333237,
		0.133719, -0.938412, 0.318593,
		36.723293, 33.338367, 37.306053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303772, 33.801197, 36.755787>,  <36.629692, 33.995258, 37.083038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303772, 33.801197, 36.755787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097298, 33.470882, 36.846680>,  <36.973415, 33.272694, 36.901215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097298, 33.470882, 36.846680>,  <37.303772, 33.801197, 36.755787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097298, 33.470882, 36.846680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242339, -0.395284, -0.886015,
		0.821480, -0.402278, 0.404158,
		-0.516181, -0.825786, 0.227230,
		36.942444, 33.223148, 36.914848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685463, 33.254158, 36.617340>,  <37.303772, 33.801197, 36.755787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685463, 33.254158, 36.617340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308205, 33.121220, 36.618862>,  <37.081848, 33.041458, 36.619774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308205, 33.121220, 36.618862>,  <37.685463, 33.254158, 36.617340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308205, 33.121220, 36.618862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117651, -0.344528, -0.931375,
		0.310850, -0.877978, 0.364043,
		-0.943149, -0.332348, 0.003801,
		37.025261, 33.021515, 36.620003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744762, 32.597839, 36.367550>,  <37.685463, 33.254158, 36.617340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744762, 32.597839, 36.367550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354393, 32.679581, 36.337040>,  <37.120171, 32.728626, 36.318733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354393, 32.679581, 36.337040>,  <37.744762, 32.597839, 36.367550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354393, 32.679581, 36.337040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009293, -0.310421, -0.950554,
		-0.217920, -0.928376, 0.301048,
		-0.975922, 0.204347, -0.076274,
		37.061615, 32.740887, 36.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416473, 32.024967, 36.017712>,  <37.744762, 32.597839, 36.367550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416473, 32.024967, 36.017712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152454, 32.314465, 35.937191>,  <36.994041, 32.488163, 35.888878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152454, 32.314465, 35.937191>,  <37.416473, 32.024967, 36.017712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152454, 32.314465, 35.937191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034809, -0.297148, -0.954197,
		-0.750414, -0.622811, 0.221326,
		-0.660051, 0.723746, -0.201305,
		36.954437, 32.531590, 35.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153896, 31.782099, 35.470360>,  <37.416473, 32.024967, 36.017712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153896, 31.782099, 35.470360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022488, 32.159336, 35.449776>,  <36.943642, 32.385677, 35.437424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022488, 32.159336, 35.449776>,  <37.153896, 31.782099, 35.470360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022488, 32.159336, 35.449776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028991, -0.044394, -0.998593,
		-0.944052, -0.329551, -0.012757,
		-0.328521, 0.943093, -0.051464,
		36.923931, 32.442265, 35.434338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623222, 31.708879, 35.024235>,  <37.153896, 31.782099, 35.470360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623222, 31.708879, 35.024235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726097, 32.095387, 35.029659>,  <36.787823, 32.327290, 35.032913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726097, 32.095387, 35.029659>,  <36.623222, 31.708879, 35.024235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726097, 32.095387, 35.029659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002585, 0.014721, -0.999888,
		-0.966359, 0.257122, 0.006284,
		0.257186, 0.966267, 0.013561,
		36.803253, 32.385265, 35.033730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034203, 32.094620, 34.715717>,  <36.623222, 31.708879, 35.024235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034203, 32.094620, 34.715717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368423, 32.310898, 34.676720>,  <36.568954, 32.440666, 34.653320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368423, 32.310898, 34.676720>,  <36.034203, 32.094620, 34.715717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368423, 32.310898, 34.676720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095465, -0.031879, -0.994922,
		-0.541057, 0.840615, 0.024980,
		0.835550, 0.540695, -0.097498,
		36.619087, 32.473106, 34.647469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904922, 32.562706, 34.165489>,  <36.034203, 32.094620, 34.715717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904922, 32.562706, 34.165489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304691, 32.575893, 34.168678>,  <36.544552, 32.583805, 34.170593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304691, 32.575893, 34.168678>,  <35.904922, 32.562706, 34.165489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304691, 32.575893, 34.168678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010238, -0.069023, -0.997562,
		-0.032338, 0.997070, -0.069321,
		0.999425, 0.032969, 0.007976,
		36.604519, 32.585785, 34.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095852, 33.013237, 33.509773>,  <35.904922, 32.562706, 34.165489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095852, 33.013237, 33.509773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405750, 32.776917, 33.599861>,  <36.591690, 32.635124, 33.653912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405750, 32.776917, 33.599861>,  <36.095852, 33.013237, 33.509773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405750, 32.776917, 33.599861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300054, 0.030015, -0.953450,
		0.556536, 0.806261, 0.200526,
		0.774748, -0.590798, 0.225218,
		36.638176, 32.599678, 33.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984974, 33.620880, 33.174961>,  <36.095852, 33.013237, 33.509773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984974, 33.620880, 33.174961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683212, 33.478729, 32.954205>,  <35.502155, 33.393440, 32.821751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683212, 33.478729, 32.954205>,  <35.984974, 33.620880, 33.174961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683212, 33.478729, 32.954205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650234, 0.289502, 0.702413,
		-0.089846, 0.888762, -0.449478,
		-0.754403, -0.355375, -0.551893,
		35.456890, 33.372116, 32.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609627, 34.141514, 32.898361>,  <35.984974, 33.620880, 33.174961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609627, 34.141514, 32.898361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408100, 33.800720, 32.955353>,  <35.287186, 33.596245, 32.989548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408100, 33.800720, 32.955353>,  <35.609627, 34.141514, 32.898361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408100, 33.800720, 32.955353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598184, 0.463107, 0.653994,
		-0.623174, 0.244260, -0.742961,
		-0.503815, -0.851980, 0.142483,
		35.256954, 33.545128, 32.998096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930599, 34.404068, 33.241882>,  <35.609627, 34.141514, 32.898361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930599, 34.404068, 33.241882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899754, 34.009197, 33.297787>,  <34.881245, 33.772274, 33.331329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899754, 34.009197, 33.297787>,  <34.930599, 34.404068, 33.241882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899754, 34.009197, 33.297787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681011, 0.154534, 0.715782,
		-0.728201, -0.039977, -0.684197,
		-0.077117, -0.987178, 0.139757,
		34.876617, 33.713043, 33.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216072, 34.312649, 33.166363>,  <34.930599, 34.404068, 33.241882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216072, 34.312649, 33.166363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346508, 33.996559, 33.373905>,  <34.424770, 33.806904, 33.498432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346508, 33.996559, 33.373905>,  <34.216072, 34.312649, 33.166363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346508, 33.996559, 33.373905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675607, 0.189102, 0.712598,
		-0.661229, -0.582912, -0.472218,
		0.326085, -0.790224, 0.518859,
		34.444332, 33.759491, 33.529564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625904, 33.773945, 33.291000>,  <34.216072, 34.312649, 33.166363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625904, 33.773945, 33.291000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913078, 33.734829, 33.566681>,  <34.085384, 33.711361, 33.732090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913078, 33.734829, 33.566681>,  <33.625904, 33.773945, 33.291000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913078, 33.734829, 33.566681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660437, 0.217193, 0.718784,
		-0.219978, -0.971218, 0.091350,
		0.717936, -0.097786, 0.689206,
		34.128460, 33.705494, 33.773441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318428, 33.306923, 33.698902>,  <33.625904, 33.773945, 33.291000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318428, 33.306923, 33.698902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620090, 33.438492, 33.926254>,  <33.801086, 33.517433, 34.062668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620090, 33.438492, 33.926254>,  <33.318428, 33.306923, 33.698902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620090, 33.438492, 33.926254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616572, 0.056756, 0.785250,
		0.226029, -0.942649, 0.245609,
		0.754155, 0.328925, 0.568383,
		33.846336, 33.537170, 34.096767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342449, 32.883038, 34.253090>,  <33.318428, 33.306923, 33.698902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342449, 32.883038, 34.253090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495586, 33.235126, 34.365261>,  <33.587471, 33.446381, 34.432564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495586, 33.235126, 34.365261>,  <33.342449, 32.883038, 34.253090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495586, 33.235126, 34.365261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553471, -0.024496, 0.832508,
		0.739661, -0.473930, 0.477799,
		0.382847, 0.880222, 0.280425,
		33.610439, 33.499191, 34.449390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306225, 32.926392, 34.921009>,  <33.342449, 32.883038, 34.253090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306225, 32.926392, 34.921009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408081, 33.313137, 34.928249>,  <33.469196, 33.545185, 34.932594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408081, 33.313137, 34.928249>,  <33.306225, 32.926392, 34.921009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408081, 33.313137, 34.928249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433658, 0.097446, 0.895793,
		0.864348, -0.235956, 0.444103,
		0.254643, 0.966866, 0.018096,
		33.484474, 33.603195, 34.933678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614449, 33.032421, 35.564083>,  <33.306225, 32.926392, 34.921009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614449, 33.032421, 35.564083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466236, 33.373398, 35.416538>,  <33.377308, 33.577984, 35.328011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466236, 33.373398, 35.416538>,  <33.614449, 33.032421, 35.564083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466236, 33.373398, 35.416538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400776, 0.211528, 0.891423,
		0.837907, 0.478128, 0.263260,
		-0.370527, 0.852437, -0.368863,
		33.355080, 33.629128, 35.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522541, 33.337353, 36.118164>,  <33.614449, 33.032421, 35.564083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522541, 33.337353, 36.118164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342678, 33.611900, 35.889534>,  <33.234760, 33.776630, 35.752354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342678, 33.611900, 35.889534>,  <33.522541, 33.337353, 36.118164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342678, 33.611900, 35.889534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474317, 0.358748, 0.803942,
		0.756856, 0.632608, 0.164244,
		-0.449658, 0.686373, -0.571577,
		33.207779, 33.817814, 35.718060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618065, 33.962585, 36.513100>,  <33.522541, 33.337353, 36.118164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618065, 33.962585, 36.513100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328571, 34.045792, 36.249908>,  <33.154877, 34.095715, 36.091991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328571, 34.045792, 36.249908>,  <33.618065, 33.962585, 36.513100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328571, 34.045792, 36.249908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526282, 0.450363, 0.721249,
		0.446362, 0.868276, -0.216467,
		-0.723732, 0.208015, -0.657983,
		33.111450, 34.108196, 36.052513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450916, 34.635479, 36.638508>,  <33.618065, 33.962585, 36.513100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450916, 34.635479, 36.638508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133266, 34.476658, 36.454456>,  <32.942677, 34.381367, 36.344025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133266, 34.476658, 36.454456>,  <33.450916, 34.635479, 36.638508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133266, 34.476658, 36.454456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606687, 0.562733, 0.561482,
		0.035991, 0.725039, -0.687766,
		-0.794126, -0.397050, -0.460125,
		32.895027, 34.357544, 36.316418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969337, 35.180912, 36.528275>,  <33.450916, 34.635479, 36.638508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969337, 35.180912, 36.528275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756702, 34.842239, 36.518993>,  <32.629120, 34.639034, 36.513424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756702, 34.842239, 36.518993>,  <32.969337, 35.180912, 36.528275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756702, 34.842239, 36.518993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471019, 0.272744, 0.838899,
		-0.703954, 0.456880, -0.543792,
		-0.531592, -0.846683, -0.023200,
		32.597225, 34.588234, 36.512032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246788, 35.402626, 36.588745>,  <32.969337, 35.180912, 36.528275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246788, 35.402626, 36.588745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258289, 35.014416, 36.684464>,  <32.265190, 34.781490, 36.741894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258289, 35.014416, 36.684464>,  <32.246788, 35.402626, 36.588745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258289, 35.014416, 36.684464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616693, 0.171179, 0.768367,
		-0.786679, -0.169662, -0.593592,
		0.028752, -0.970522, 0.239292,
		32.266914, 34.723259, 36.756252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515461, 35.943626, 36.006397>,  <32.246788, 35.402626, 36.588745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515461, 35.943626, 36.006397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213005, 36.203178, 36.040344>,  <32.031532, 36.358910, 36.060715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213005, 36.203178, 36.040344>,  <32.515461, 35.943626, 36.006397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213005, 36.203178, 36.040344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226716, 0.381407, -0.896174,
		-0.613883, -0.658391, -0.435509,
		-0.756140, 0.648883, 0.084871,
		31.986162, 36.397842, 36.065807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029270, 35.975616, 35.480530>,  <32.515461, 35.943626, 36.006397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029270, 35.975616, 35.480530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078140, 36.335480, 35.648186>,  <32.107464, 36.551399, 35.748779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078140, 36.335480, 35.648186>,  <32.029270, 35.975616, 35.480530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078140, 36.335480, 35.648186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320013, 0.364047, -0.874678,
		-0.939503, 0.240995, -0.243426,
		0.122174, 0.899662, 0.419144,
		32.114792, 36.605377, 35.773930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782728, 36.465199, 35.012798>,  <32.029270, 35.975616, 35.480530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782728, 36.465199, 35.012798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035896, 36.679173, 35.236675>,  <32.187798, 36.807556, 35.371002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035896, 36.679173, 35.236675>,  <31.782728, 36.465199, 35.012798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035896, 36.679173, 35.236675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396440, 0.397025, -0.827772,
		-0.665016, 0.745799, 0.039216,
		0.632921, 0.534935, 0.559692,
		32.225773, 36.839653, 35.404583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697414, 37.168961, 34.800789>,  <31.782728, 36.465199, 35.012798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697414, 37.168961, 34.800789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055996, 37.144154, 34.976299>,  <32.271145, 37.129269, 35.081604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055996, 37.144154, 34.976299>,  <31.697414, 37.168961, 34.800789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055996, 37.144154, 34.976299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426486, 0.389593, -0.816289,
		-0.120321, 0.918897, 0.375701,
		0.896455, -0.062014, 0.438773,
		32.324932, 37.125549, 35.107933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132736, 37.853966, 34.678104>,  <31.697414, 37.168961, 34.800789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132736, 37.853966, 34.678104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398666, 37.560879, 34.736248>,  <32.558224, 37.385025, 34.771133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398666, 37.560879, 34.736248>,  <32.132736, 37.853966, 34.678104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398666, 37.560879, 34.736248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541565, 0.338745, -0.769389,
		0.514505, 0.590232, 0.622021,
		0.664824, -0.732720, 0.145363,
		32.598114, 37.341064, 34.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724667, 38.103405, 34.270611>,  <32.132736, 37.853966, 34.678104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724667, 38.103405, 34.270611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804035, 37.723495, 34.367401>,  <32.851658, 37.495548, 34.425476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804035, 37.723495, 34.367401>,  <32.724667, 38.103405, 34.270611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804035, 37.723495, 34.367401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683797, -0.042723, -0.728420,
		0.702175, 0.309994, 0.640979,
		0.198422, -0.949778, 0.241972,
		32.863564, 37.438560, 34.439991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433285, 38.128437, 34.285423>,  <32.724667, 38.103405, 34.270611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433285, 38.128437, 34.285423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309013, 37.749710, 34.251938>,  <33.234451, 37.522472, 34.231846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309013, 37.749710, 34.251938>,  <33.433285, 38.128437, 34.285423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309013, 37.749710, 34.251938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595326, -0.125173, -0.793674,
		0.740988, -0.296416, 0.602556,
		-0.310681, -0.946820, -0.083713,
		33.215809, 37.465664, 34.226826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064610, 37.700359, 34.336121>,  <33.433285, 38.128437, 34.285423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064610, 37.700359, 34.336121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777725, 37.495049, 34.147587>,  <33.605595, 37.371861, 34.034466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777725, 37.495049, 34.147587>,  <34.064610, 37.700359, 34.336121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777725, 37.495049, 34.147587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637801, -0.211004, -0.740734,
		0.280750, -0.831878, 0.478705,
		-0.717209, -0.513280, -0.471334,
		33.562561, 37.341064, 34.006187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456238, 37.210552, 34.003849>,  <34.064610, 37.700359, 34.336121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456238, 37.210552, 34.003849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099041, 37.197746, 33.824272>,  <33.884724, 37.190063, 33.716526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099041, 37.197746, 33.824272>,  <34.456238, 37.210552, 34.003849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099041, 37.197746, 33.824272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432131, -0.339864, -0.835317,
		-0.125832, -0.939929, 0.317332,
		-0.892989, -0.032019, -0.448938,
		33.831142, 37.188141, 33.689590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478596, 36.579357, 33.801090>,  <34.456238, 37.210552, 34.003849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478596, 36.579357, 33.801090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208069, 36.778320, 33.583771>,  <34.045753, 36.897697, 33.453381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208069, 36.778320, 33.583771>,  <34.478596, 36.579357, 33.801090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208069, 36.778320, 33.583771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357401, -0.423344, -0.832493,
		-0.644092, -0.757208, 0.108541,
		-0.676320, 0.497409, -0.543299,
		34.005173, 36.927544, 33.420780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199562, 36.157631, 33.228046>,  <34.478596, 36.579357, 33.801090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199562, 36.157631, 33.228046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089314, 36.523392, 33.109447>,  <34.023163, 36.742847, 33.038288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089314, 36.523392, 33.109447>,  <34.199562, 36.157631, 33.228046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089314, 36.523392, 33.109447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245160, -0.231376, -0.941468,
		-0.929478, -0.332179, -0.160401,
		-0.275623, 0.914398, -0.296495,
		34.006626, 36.797710, 33.020500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659695, 36.124905, 32.667938>,  <34.199562, 36.157631, 33.228046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659695, 36.124905, 32.667938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858501, 36.471069, 32.642540>,  <33.977783, 36.678768, 32.627300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858501, 36.471069, 32.642540>,  <33.659695, 36.124905, 32.667938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858501, 36.471069, 32.642540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226673, -0.200113, -0.953192,
		-0.837613, 0.459358, -0.295625,
		0.497014, 0.865416, -0.063493,
		34.007607, 36.730694, 32.623493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502125, 36.417789, 32.067913>,  <33.659695, 36.124905, 32.667938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502125, 36.417789, 32.067913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849716, 36.598373, 32.148968>,  <34.058270, 36.706722, 32.197601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849716, 36.598373, 32.148968>,  <33.502125, 36.417789, 32.067913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849716, 36.598373, 32.148968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260618, -0.069420, -0.962943,
		-0.420661, 0.889588, -0.177983,
		0.868978, 0.451458, 0.202641,
		34.110409, 36.733810, 32.209759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473110, 36.921612, 31.692066>,  <33.502125, 36.417789, 32.067913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473110, 36.921612, 31.692066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867760, 36.911182, 31.756432>,  <34.104549, 36.904922, 31.795050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867760, 36.911182, 31.756432>,  <33.473110, 36.921612, 31.692066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867760, 36.911182, 31.756432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162724, 0.216156, -0.962703,
		-0.009678, 0.976011, 0.217508,
		0.986624, -0.026077, 0.160912,
		34.163746, 36.903358, 31.804705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567200, 37.436630, 31.311665>,  <33.473110, 36.921612, 31.692066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567200, 37.436630, 31.311665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925976, 37.263847, 31.349419>,  <34.141243, 37.160175, 31.372070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925976, 37.263847, 31.349419>,  <33.567200, 37.436630, 31.311665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925976, 37.263847, 31.349419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221783, 0.254864, -0.941200,
		0.382508, 0.865132, 0.324399,
		0.896940, -0.431962, 0.094384,
		34.195057, 37.134258, 31.377733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194714, 37.842804, 31.121193>,  <33.567200, 37.436630, 31.311665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194714, 37.842804, 31.121193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293083, 37.459343, 31.063921>,  <34.352104, 37.229267, 31.029558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293083, 37.459343, 31.063921>,  <34.194714, 37.842804, 31.121193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293083, 37.459343, 31.063921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133287, 0.179757, -0.974639,
		0.960081, 0.220606, 0.171983,
		0.245927, -0.958655, -0.143178,
		34.366859, 37.171745, 31.020967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714214, 37.902042, 30.695837>,  <34.194714, 37.842804, 31.121193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714214, 37.902042, 30.695837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667671, 37.509125, 30.637094>,  <34.639748, 37.273376, 30.601849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667671, 37.509125, 30.637094>,  <34.714214, 37.902042, 30.695837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667671, 37.509125, 30.637094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500722, 0.069679, -0.862799,
		0.857752, -0.173923, 0.483748,
		-0.116353, -0.982291, -0.146855,
		34.632767, 37.214436, 30.593039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248383, 37.690281, 30.373180>,  <34.714214, 37.902042, 30.695837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248383, 37.690281, 30.373180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022457, 37.365623, 30.313553>,  <34.886902, 37.170830, 30.277777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022457, 37.365623, 30.313553>,  <35.248383, 37.690281, 30.373180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022457, 37.365623, 30.313553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477890, -0.174441, -0.860925,
		0.672759, -0.557501, 0.486403,
		-0.564815, -0.811642, -0.149068,
		34.853012, 37.122131, 30.268833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739323, 37.120003, 30.187599>,  <35.248383, 37.690281, 30.373180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739323, 37.120003, 30.187599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374996, 37.029247, 30.049646>,  <35.156403, 36.974796, 29.966875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374996, 37.029247, 30.049646>,  <35.739323, 37.120003, 30.187599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374996, 37.029247, 30.049646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389877, -0.198125, -0.899301,
		0.135709, -0.953556, 0.268912,
		-0.910812, -0.226885, -0.344882,
		35.101753, 36.961182, 29.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797020, 36.487938, 29.839270>,  <35.739323, 37.120003, 30.187599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797020, 36.487938, 29.839270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434486, 36.573078, 29.693254>,  <35.216965, 36.624161, 29.605646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434486, 36.573078, 29.693254>,  <35.797020, 36.487938, 29.839270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434486, 36.573078, 29.693254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306409, -0.263834, -0.914607,
		-0.290982, -0.940791, 0.173903,
		-0.906335, 0.212849, -0.365038,
		35.162586, 36.636932, 29.583744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538300, 35.882057, 29.515806>,  <35.797020, 36.487938, 29.839270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538300, 35.882057, 29.515806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358196, 36.199154, 29.351452>,  <35.250134, 36.389412, 29.252840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358196, 36.199154, 29.351452>,  <35.538300, 35.882057, 29.515806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358196, 36.199154, 29.351452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289767, -0.305536, -0.907019,
		-0.844575, -0.527449, -0.092143,
		-0.450254, 0.792745, -0.410885,
		35.223122, 36.436977, 29.228186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058590, 35.649036, 28.942497>,  <35.538300, 35.882057, 29.515806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058590, 35.649036, 28.942497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159241, 36.027935, 28.863096>,  <35.219631, 36.255276, 28.815456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159241, 36.027935, 28.863096>,  <35.058590, 35.649036, 28.942497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159241, 36.027935, 28.863096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401367, -0.288766, -0.869206,
		-0.880675, 0.139044, -0.452856,
		0.251628, 0.947249, -0.198501,
		35.234730, 36.312111, 28.803545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835613, 35.880047, 28.253611>,  <35.058590, 35.649036, 28.942497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835613, 35.880047, 28.253611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108189, 36.158558, 28.343798>,  <35.271736, 36.325665, 28.397909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108189, 36.158558, 28.343798>,  <34.835613, 35.880047, 28.253611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108189, 36.158558, 28.343798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456241, -0.163259, -0.874752,
		-0.572261, 0.698959, -0.428922,
		0.681441, 0.696278, 0.225467,
		35.312622, 36.367443, 28.411438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943924, 36.215408, 27.585333>,  <34.835613, 35.880047, 28.253611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943924, 36.215408, 27.585333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242432, 36.311905, 27.833490>,  <35.421535, 36.369804, 27.982384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242432, 36.311905, 27.833490>,  <34.943924, 36.215408, 27.585333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242432, 36.311905, 27.833490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663363, -0.192426, -0.723133,
		-0.055069, 0.951197, -0.303631,
		0.746268, 0.241240, 0.620393,
		35.466312, 36.384277, 28.019608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261509, 36.659725, 27.122993>,  <34.943924, 36.215408, 27.585333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261509, 36.659725, 27.122993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554790, 36.584991, 27.384529>,  <35.730759, 36.540150, 27.541451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554790, 36.584991, 27.384529>,  <35.261509, 36.659725, 27.122993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554790, 36.584991, 27.384529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675546, 0.090140, -0.731787,
		0.077787, 0.978247, 0.192308,
		0.733203, -0.186836, 0.653839,
		35.774750, 36.528942, 27.580681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845783, 37.144032, 26.996019>,  <35.261509, 36.659725, 27.122993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845783, 37.144032, 26.996019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994003, 36.815479, 27.169466>,  <36.082935, 36.618347, 27.273535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994003, 36.815479, 27.169466>,  <35.845783, 37.144032, 26.996019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994003, 36.815479, 27.169466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579013, -0.160759, -0.799313,
		0.726250, 0.547252, 0.416023,
		0.370546, -0.821384, 0.433618,
		36.105167, 36.569065, 27.299551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543026, 37.280907, 27.043303>,  <35.845783, 37.144032, 26.996019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543026, 37.280907, 27.043303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513489, 36.882690, 27.066782>,  <36.495766, 36.643761, 27.080870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513489, 36.882690, 27.066782>,  <36.543026, 37.280907, 27.043303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513489, 36.882690, 27.066782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646023, -0.092593, -0.757681,
		0.759738, -0.018030, 0.649979,
		-0.073845, -0.995541, 0.058699,
		36.491337, 36.584026, 27.084391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278591, 37.036533, 27.091196>,  <36.543026, 37.280907, 27.043303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278591, 37.036533, 27.091196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049767, 36.739803, 26.951227>,  <36.912472, 36.561768, 26.867247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049767, 36.739803, 26.951227>,  <37.278591, 37.036533, 27.091196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049767, 36.739803, 26.951227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617384, -0.108579, -0.779132,
		0.539984, -0.661748, 0.520103,
		-0.572062, -0.741822, -0.349922,
		36.878147, 36.517258, 26.846251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922935, 36.850040, 27.643370>,  <37.278591, 37.036533, 27.091196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922935, 36.850040, 27.643370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269516, 36.981098, 27.794058>,  <38.477463, 37.059731, 27.884472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269516, 36.981098, 27.794058>,  <37.922935, 36.850040, 27.643370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269516, 36.981098, 27.794058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485874, 0.379754, 0.787219,
		0.114863, -0.865124, 0.488229,
		0.866449, 0.327640, 0.376721,
		38.529449, 37.079391, 27.907074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154163, 36.547421, 28.306238>,  <37.922935, 36.850040, 27.643370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154163, 36.547421, 28.306238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.340885, 36.900978, 28.294729>,  <38.452919, 37.113113, 28.287825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.340885, 36.900978, 28.294729>,  <38.154163, 36.547421, 28.306238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340885, 36.900978, 28.294729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267625, 0.172198, 0.948011,
		0.842894, -0.434835, 0.316935,
		0.466803, 0.883893, -0.028772,
		38.480927, 37.166145, 28.286098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333263, 36.522591, 28.972778>,  <38.154163, 36.547421, 28.306238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333263, 36.522591, 28.972778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365490, 36.905304, 28.861008>,  <38.384827, 37.134930, 28.793945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365490, 36.905304, 28.861008>,  <38.333263, 36.522591, 28.972778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365490, 36.905304, 28.861008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291331, 0.290701, 0.911383,
		0.953224, 0.007983, 0.302160,
		0.080563, 0.956781, -0.279428,
		38.389660, 37.192337, 28.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610546, 36.859142, 29.559786>,  <38.333263, 36.522591, 28.972778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610546, 36.859142, 29.559786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470814, 37.166645, 29.345501>,  <38.386974, 37.351147, 29.216930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470814, 37.166645, 29.345501>,  <38.610546, 36.859142, 29.559786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470814, 37.166645, 29.345501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307417, 0.446053, 0.840554,
		0.885136, 0.458315, 0.080510,
		-0.349327, 0.768755, -0.535711,
		38.366016, 37.397270, 29.184788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874805, 37.525040, 29.951416>,  <38.610546, 36.859142, 29.559786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874805, 37.525040, 29.951416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551044, 37.617786, 29.735600>,  <38.356789, 37.673435, 29.606110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551044, 37.617786, 29.735600>,  <38.874805, 37.525040, 29.951416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551044, 37.617786, 29.735600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447056, 0.352474, 0.822133,
		0.380798, 0.906643, -0.181637,
		-0.809403, 0.231865, -0.539541,
		38.308224, 37.687347, 29.573736>
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
