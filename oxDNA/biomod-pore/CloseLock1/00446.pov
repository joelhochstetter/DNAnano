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
	<24.153692, 34.874542, 35.087814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488632, 35.088287, 35.041683>,  <24.689596, 35.216534, 35.014004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488632, 35.088287, 35.041683>,  <24.153692, 34.874542, 35.087814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488632, 35.088287, 35.041683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534417, -0.755753, 0.378465,
		0.115082, -0.378538, -0.918403,
		0.837350, 0.534365, -0.115324,
		24.739838, 35.248596, 35.007088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626417, 34.434643, 34.600704>,  <24.153692, 34.874542, 35.087814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626417, 34.434643, 34.600704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794434, 34.703777, 34.844296>,  <24.895243, 34.865257, 34.990448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794434, 34.703777, 34.844296>,  <24.626417, 34.434643, 34.600704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794434, 34.703777, 34.844296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672176, -0.681511, 0.289349,
		0.609709, 0.287800, -0.738530,
		0.420041, 0.672840, 0.608975,
		24.920446, 34.905628, 35.026989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202085, 34.137096, 34.579773>,  <24.626417, 34.434643, 34.600704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202085, 34.137096, 34.579773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247086, 34.413235, 34.865643>,  <25.274086, 34.578918, 35.037167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247086, 34.413235, 34.865643>,  <25.202085, 34.137096, 34.579773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247086, 34.413235, 34.865643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579035, -0.630049, 0.517452,
		0.807503, 0.355609, -0.470617,
		0.112501, 0.690348, 0.714677,
		25.280836, 34.620338, 35.080044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819040, 34.162647, 34.829754>,  <25.202085, 34.137096, 34.579773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819040, 34.162647, 34.829754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657545, 34.289631, 35.172966>,  <25.560648, 34.365822, 35.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657545, 34.289631, 35.172966>,  <25.819040, 34.162647, 34.829754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657545, 34.289631, 35.172966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549084, -0.666089, 0.504809,
		0.731781, 0.674941, 0.094615,
		-0.403738, 0.317458, 0.858030,
		25.536423, 34.384869, 35.430374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315899, 33.983097, 35.365688>,  <25.819040, 34.162647, 34.829754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315899, 33.983097, 35.365688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960903, 34.064293, 35.531174>,  <25.747906, 34.113010, 35.630466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960903, 34.064293, 35.531174>,  <26.315899, 33.983097, 35.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960903, 34.064293, 35.531174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140715, -0.735512, 0.662738,
		0.438819, 0.646388, 0.624196,
		-0.887489, 0.202988, 0.413713,
		25.694656, 34.125191, 35.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402060, 34.036888, 36.017048>,  <26.315899, 33.983097, 35.365688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402060, 34.036888, 36.017048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025000, 33.923126, 35.947163>,  <25.798763, 33.854870, 35.905231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025000, 33.923126, 35.947163>,  <26.402060, 34.036888, 36.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025000, 33.923126, 35.947163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197590, -0.897338, 0.394642,
		-0.269013, 0.337488, 0.902072,
		-0.942650, -0.284405, -0.174712,
		25.742205, 33.837803, 35.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352587, 34.809727, 35.784592>,  <26.402060, 34.036888, 36.017048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352587, 34.809727, 35.784592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692276, 35.017776, 35.821011>,  <26.896090, 35.142605, 35.842861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692276, 35.017776, 35.821011>,  <26.352587, 34.809727, 35.784592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692276, 35.017776, 35.821011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083885, 0.303135, -0.949248,
		-0.521328, 0.798486, 0.301060,
		0.849224, 0.520124, 0.091052,
		26.947042, 35.173813, 35.848328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491152, 35.140514, 35.074944>,  <26.352587, 34.809727, 35.784592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491152, 35.140514, 35.074944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775364, 35.333294, 35.280025>,  <26.945892, 35.448963, 35.403076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775364, 35.333294, 35.280025>,  <26.491152, 35.140514, 35.074944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775364, 35.333294, 35.280025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225320, 0.534429, -0.814627,
		-0.666615, 0.694341, 0.271136,
		0.710532, 0.481950, 0.512707,
		26.988523, 35.477879, 35.433838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360350, 35.820728, 34.830608>,  <26.491152, 35.140514, 35.074944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360350, 35.820728, 34.830608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718754, 35.875088, 34.999699>,  <26.933796, 35.907703, 35.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718754, 35.875088, 34.999699>,  <26.360350, 35.820728, 34.830608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718754, 35.875088, 34.999699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096326, 0.869853, -0.483815,
		-0.433461, 0.474222, 0.766306,
		0.896009, 0.135900, 0.422727,
		26.987556, 35.915859, 35.126518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434292, 36.522186, 35.137043>,  <26.360350, 35.820728, 34.830608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434292, 36.522186, 35.137043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808672, 36.399441, 35.067955>,  <27.033300, 36.325794, 35.026501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808672, 36.399441, 35.067955>,  <26.434292, 36.522186, 35.137043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808672, 36.399441, 35.067955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221634, 0.894519, -0.388219,
		0.273632, 0.325073, 0.905236,
		0.935951, -0.306860, -0.172722,
		27.089457, 36.307384, 35.016140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916214, 37.050430, 35.455677>,  <26.434292, 36.522186, 35.137043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916214, 37.050430, 35.455677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112289, 36.853539, 35.167950>,  <27.229935, 36.735401, 34.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112289, 36.853539, 35.167950>,  <26.916214, 37.050430, 35.455677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112289, 36.853539, 35.167950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399471, 0.860367, -0.316530,
		0.774687, -0.132188, 0.618375,
		0.490188, -0.492234, -0.719320,
		27.259346, 36.705868, 34.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444752, 37.509438, 35.358280>,  <26.916214, 37.050430, 35.455677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444752, 37.509438, 35.358280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458628, 37.257713, 35.047729>,  <27.466953, 37.106678, 34.861397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458628, 37.257713, 35.047729>,  <27.444752, 37.509438, 35.358280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458628, 37.257713, 35.047729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582986, 0.643721, -0.495733,
		0.811741, -0.435422, 0.389208,
		0.034689, -0.629310, -0.776380,
		27.469034, 37.068920, 34.814816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095873, 37.694584, 35.060863>,  <27.444752, 37.509438, 35.358280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095873, 37.694584, 35.060863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910946, 37.489906, 34.771191>,  <27.799990, 37.367100, 34.597389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910946, 37.489906, 34.771191>,  <28.095873, 37.694584, 35.060863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910946, 37.489906, 34.771191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492354, 0.531097, -0.689582,
		0.737461, -0.675359, 0.006397,
		-0.462318, -0.511690, -0.724179,
		27.772251, 37.336399, 34.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663773, 37.497295, 34.648376>,  <28.095873, 37.694584, 35.060863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663773, 37.497295, 34.648376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325447, 37.525593, 34.436871>,  <28.122452, 37.542572, 34.309967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325447, 37.525593, 34.436871>,  <28.663773, 37.497295, 34.648376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325447, 37.525593, 34.436871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428893, 0.679616, -0.595124,
		0.317255, -0.730148, -0.605171,
		-0.845813, 0.070748, -0.528767,
		28.071703, 37.546818, 34.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807068, 37.458351, 33.809544>,  <28.663773, 37.497295, 34.648376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807068, 37.458351, 33.809544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449497, 37.633068, 33.849754>,  <28.234955, 37.737900, 33.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449497, 37.633068, 33.849754>,  <28.807068, 37.458351, 33.809544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449497, 37.633068, 33.849754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252358, 0.675843, -0.692497,
		-0.370423, -0.593671, -0.714382,
		-0.893925, 0.436797, 0.100530,
		28.181320, 37.764107, 33.879913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625624, 37.593285, 33.044922>,  <28.807068, 37.458351, 33.809544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625624, 37.593285, 33.044922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397505, 37.830914, 33.271843>,  <28.260633, 37.973492, 33.407997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397505, 37.830914, 33.271843>,  <28.625624, 37.593285, 33.044922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397505, 37.830914, 33.271843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365340, 0.801997, -0.472576,
		-0.735723, -0.062249, -0.674416,
		-0.570297, 0.594076, 0.567305,
		28.226416, 38.009136, 33.442036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179586, 38.014950, 32.544136>,  <28.625624, 37.593285, 33.044922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179586, 38.014950, 32.544136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219154, 38.201588, 32.895706>,  <28.242895, 38.313568, 33.106647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219154, 38.201588, 32.895706>,  <28.179586, 38.014950, 32.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219154, 38.201588, 32.895706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324765, 0.819755, -0.471730,
		-0.940608, 0.332106, -0.070444,
		0.098918, 0.466591, 0.878924,
		28.248829, 38.341564, 33.159382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815113, 38.633991, 32.381866>,  <28.179586, 38.014950, 32.544136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815113, 38.633991, 32.381866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050051, 38.705688, 32.697563>,  <28.191013, 38.748707, 32.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050051, 38.705688, 32.697563>,  <27.815113, 38.633991, 32.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050051, 38.705688, 32.697563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261148, 0.881034, -0.394436,
		-0.766049, 0.437778, 0.470659,
		0.587342, 0.179246, 0.789240,
		28.226254, 38.759460, 32.934334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667984, 39.361973, 32.517056>,  <27.815113, 38.633991, 32.381866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667984, 39.361973, 32.517056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010635, 39.284988, 32.708530>,  <28.216227, 39.238796, 32.823418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010635, 39.284988, 32.708530>,  <27.667984, 39.361973, 32.517056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010635, 39.284988, 32.708530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395712, 0.840443, -0.370225,
		-0.331056, 0.506569, 0.796109,
		0.856629, -0.192465, 0.478689,
		28.267624, 39.227249, 32.852139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876890, 39.992874, 32.952942>,  <27.667984, 39.361973, 32.517056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876890, 39.992874, 32.952942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215385, 39.783146, 32.915062>,  <28.418482, 39.657307, 32.892334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215385, 39.783146, 32.915062>,  <27.876890, 39.992874, 32.952942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215385, 39.783146, 32.915062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502656, 0.844578, -0.184456,
		0.176693, 0.108494, 0.978268,
		0.846236, -0.524325, -0.094696,
		28.469255, 39.625847, 32.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351072, 40.379581, 33.329136>,  <27.876890, 39.992874, 32.952942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351072, 40.379581, 33.329136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563889, 40.136627, 33.093166>,  <28.691578, 39.990856, 32.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563889, 40.136627, 33.093166>,  <28.351072, 40.379581, 33.329136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563889, 40.136627, 33.093166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675763, 0.724393, -0.136379,
		0.510175, -0.326093, 0.795855,
		0.532040, -0.607387, -0.589928,
		28.723501, 39.954411, 32.916187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055023, 40.365578, 33.546772>,  <28.351072, 40.379581, 33.329136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055023, 40.365578, 33.546772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089672, 40.254768, 33.163994>,  <29.110462, 40.188282, 32.934326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089672, 40.254768, 33.163994>,  <29.055023, 40.365578, 33.546772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089672, 40.254768, 33.163994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480106, 0.853267, -0.203553,
		0.872924, -0.441805, 0.206913,
		0.086621, -0.277026, -0.956950,
		29.115658, 40.171661, 32.876907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789640, 40.493153, 33.369629>,  <29.055023, 40.365578, 33.546772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789640, 40.493153, 33.369629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571325, 40.484875, 33.034561>,  <29.440336, 40.479908, 32.833523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571325, 40.484875, 33.034561>,  <29.789640, 40.493153, 33.369629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571325, 40.484875, 33.034561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309208, 0.924165, -0.224296,
		0.778783, -0.381432, -0.498002,
		-0.545790, -0.020692, -0.837666,
		29.407589, 40.478668, 32.783260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247387, 40.756332, 32.930622>,  <29.789640, 40.493153, 33.369629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247387, 40.756332, 32.930622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878805, 40.800385, 32.781605>,  <29.657656, 40.826817, 32.692196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878805, 40.800385, 32.781605>,  <30.247387, 40.756332, 32.930622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878805, 40.800385, 32.781605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221546, 0.936722, -0.271053,
		0.319118, -0.332299, -0.887548,
		-0.921456, 0.110134, -0.372544,
		29.602367, 40.833424, 32.669842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278204, 41.057545, 32.162186>,  <30.247387, 40.756332, 32.930622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278204, 41.057545, 32.162186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928864, 41.167213, 32.323227>,  <29.719259, 41.233013, 32.419849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928864, 41.167213, 32.323227>,  <30.278204, 41.057545, 32.162186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928864, 41.167213, 32.323227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129024, 0.927233, -0.351556,
		-0.469690, -0.255087, -0.845176,
		-0.873352, 0.274170, 0.402600,
		29.666859, 41.249466, 32.444008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041773, 41.553810, 31.796679>,  <30.278204, 41.057545, 32.162186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041773, 41.553810, 31.796679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838900, 41.620384, 32.134926>,  <29.717176, 41.660328, 32.337875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838900, 41.620384, 32.134926>,  <30.041773, 41.553810, 31.796679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838900, 41.620384, 32.134926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143867, 0.983759, -0.107332,
		-0.849746, 0.067219, -0.522889,
		-0.507183, 0.166431, 0.845616,
		29.686745, 41.670315, 32.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417517, 41.932323, 31.838701>,  <30.041773, 41.553810, 31.796679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417517, 41.932323, 31.838701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644278, 42.045864, 32.148037>,  <29.780334, 42.113987, 32.333637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644278, 42.045864, 32.148037>,  <29.417517, 41.932323, 31.838701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644278, 42.045864, 32.148037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261880, 0.952160, -0.157515,
		-0.781051, -0.113226, 0.614116,
		0.566902, 0.283852, 0.773337,
		29.814348, 42.131020, 32.380039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114065, 42.294487, 32.499660>,  <29.417517, 41.932323, 31.838701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114065, 42.294487, 32.499660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473354, 42.416996, 32.373554>,  <29.688929, 42.490501, 32.297890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473354, 42.416996, 32.373554>,  <29.114065, 42.294487, 32.499660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473354, 42.416996, 32.373554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407772, 0.848368, -0.337630,
		0.164054, 0.431824, 0.886913,
		0.898225, 0.306269, -0.315264,
		29.742823, 42.508877, 32.278976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664179, 42.696571, 33.003395>,  <29.114065, 42.294487, 32.499660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664179, 42.696571, 33.003395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313490, 42.761044, 32.822121>,  <28.103077, 42.799728, 32.713356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313490, 42.761044, 32.822121>,  <28.664179, 42.696571, 33.003395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313490, 42.761044, 32.822121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436824, 0.127606, 0.890450,
		0.201356, 0.978640, -0.041466,
		-0.876722, 0.161185, -0.453187,
		28.050474, 42.809399, 32.686165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488535, 43.186390, 33.379528>,  <28.664179, 42.696571, 33.003395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488535, 43.186390, 33.379528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170364, 43.018318, 33.204830>,  <27.979462, 42.917473, 33.100010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170364, 43.018318, 33.204830>,  <28.488535, 43.186390, 33.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170364, 43.018318, 33.204830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443446, -0.087697, 0.892001,
		-0.413106, 0.903191, -0.116573,
		-0.795424, -0.420184, -0.436744,
		27.931738, 42.892262, 33.073807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384436, 43.888355, 32.999374>,  <28.488535, 43.186390, 33.379528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384436, 43.888355, 32.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777328, 43.814529, 32.985775>,  <29.013063, 43.770233, 32.977615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777328, 43.814529, 32.985775>,  <28.384436, 43.888355, 32.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777328, 43.814529, 32.985775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181205, 0.979844, -0.084082,
		0.048832, 0.076428, 0.995879,
		0.982232, -0.184564, -0.033999,
		29.071999, 43.759159, 32.975574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811632, 44.449047, 33.265278>,  <28.384436, 43.888355, 32.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811632, 44.449047, 33.265278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102036, 44.318119, 33.023361>,  <29.276278, 44.239563, 32.878212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102036, 44.318119, 33.023361>,  <28.811632, 44.449047, 33.265278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102036, 44.318119, 33.023361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353509, 0.932000, -0.080041,
		0.589867, -0.155690, 0.792349,
		0.726009, -0.327316, -0.604794,
		29.319838, 44.219925, 32.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455894, 44.707268, 33.518620>,  <28.811632, 44.449047, 33.265278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455894, 44.707268, 33.518620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512390, 44.611542, 33.134373>,  <29.546288, 44.554108, 32.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512390, 44.611542, 33.134373>,  <29.455894, 44.707268, 33.518620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512390, 44.611542, 33.134373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595929, 0.795394, -0.110530,
		0.790518, -0.556847, 0.254955,
		0.141241, -0.239311, -0.960615,
		29.554762, 44.539749, 32.846188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169296, 44.963905, 34.242310>,  <29.455894, 44.707268, 33.518620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169296, 44.963905, 34.242310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986362, 44.608330, 34.232212>,  <28.876602, 44.394985, 34.226154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986362, 44.608330, 34.232212>,  <29.169296, 44.963905, 34.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986362, 44.608330, 34.232212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820328, -0.410737, -0.397941,
		0.343376, -0.202699, 0.917064,
		-0.457334, -0.888937, -0.025243,
		28.849163, 44.341648, 34.224640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949741, 45.548862, 34.583530>,  <29.169296, 44.963905, 34.242310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949741, 45.548862, 34.583530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799810, 45.557018, 34.954277>,  <28.709852, 45.561913, 35.176727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799810, 45.557018, 34.954277>,  <28.949741, 45.548862, 34.583530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799810, 45.557018, 34.954277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155144, -0.984281, 0.084390,
		0.914021, 0.175430, 0.365773,
		-0.374828, 0.020387, 0.926870,
		28.687363, 45.563133, 35.232338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418886, 45.158134, 35.067169>,  <28.949741, 45.548862, 34.583530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418886, 45.158134, 35.067169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058992, 45.147694, 35.241432>,  <28.843056, 45.141430, 35.345989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058992, 45.147694, 35.241432>,  <29.418886, 45.158134, 35.067169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058992, 45.147694, 35.241432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155728, -0.951704, 0.264591,
		0.407710, 0.305905, 0.860346,
		-0.899734, -0.026104, 0.435657,
		28.789072, 45.139862, 35.372128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487965, 44.549019, 35.415623>,  <29.418886, 45.158134, 35.067169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487965, 44.549019, 35.415623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091116, 44.596077, 35.432838>,  <28.853006, 44.624310, 35.443169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091116, 44.596077, 35.432838>,  <29.487965, 44.549019, 35.415623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091116, 44.596077, 35.432838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092594, -0.920115, 0.380544,
		0.084368, 0.373561, 0.923761,
		-0.992123, 0.117641, 0.043039,
		28.793480, 44.631371, 35.445751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267569, 44.417049, 36.152775>,  <29.487965, 44.549019, 35.415623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267569, 44.417049, 36.152775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970890, 44.361526, 35.890289>,  <28.792883, 44.328213, 35.732796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970890, 44.361526, 35.890289>,  <29.267569, 44.417049, 36.152775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970890, 44.361526, 35.890289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146798, -0.921041, 0.360742,
		-0.654474, 0.363893, 0.662757,
		-0.741697, -0.138805, -0.656215,
		28.748381, 44.319885, 35.693424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946972, 44.026428, 36.548653>,  <29.267569, 44.417049, 36.152775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946972, 44.026428, 36.548653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778048, 43.944942, 36.195347>,  <28.676693, 43.896049, 35.983364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778048, 43.944942, 36.195347>,  <28.946972, 44.026428, 36.548653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778048, 43.944942, 36.195347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260819, -0.905902, 0.333640,
		-0.868118, 0.371271, 0.329438,
		-0.422309, -0.203715, -0.883264,
		28.651356, 43.883827, 35.930367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388554, 43.511654, 36.678802>,  <28.946972, 44.026428, 36.548653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388554, 43.511654, 36.678802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474428, 43.472687, 36.290077>,  <28.525953, 43.449306, 36.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474428, 43.472687, 36.290077>,  <28.388554, 43.511654, 36.678802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474428, 43.472687, 36.290077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160562, -0.984996, 0.063271,
		-0.963394, 0.142453, -0.227107,
		0.214686, -0.097419, -0.971812,
		28.538834, 43.443462, 35.998535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917809, 43.050915, 36.418983>,  <28.388554, 43.511654, 36.678802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917809, 43.050915, 36.418983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217695, 43.036156, 36.154690>,  <28.397627, 43.027302, 35.996113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217695, 43.036156, 36.154690>,  <27.917809, 43.050915, 36.418983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217695, 43.036156, 36.154690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080686, -0.996092, -0.035933,
		-0.656821, 0.080251, -0.749763,
		0.749717, -0.036894, -0.660730,
		28.442610, 43.025089, 35.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686750, 42.545704, 35.948639>,  <27.917809, 43.050915, 36.418983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686750, 42.545704, 35.948639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082041, 42.596355, 35.914288>,  <28.319216, 42.626747, 35.893677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082041, 42.596355, 35.914288>,  <27.686750, 42.545704, 35.948639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082041, 42.596355, 35.914288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140126, -0.974431, 0.175641,
		-0.061444, -0.185607, -0.980701,
		0.988225, 0.126630, -0.085881,
		28.378508, 42.634346, 35.888523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015837, 42.112087, 35.377945>,  <27.686750, 42.545704, 35.948639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015837, 42.112087, 35.377945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302774, 42.158585, 35.652725>,  <28.474937, 42.186481, 35.817593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302774, 42.158585, 35.652725>,  <28.015837, 42.112087, 35.377945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302774, 42.158585, 35.652725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224802, -0.971866, -0.070297,
		0.659456, 0.204855, -0.723292,
		0.717344, 0.116240, 0.686955,
		28.517977, 42.193455, 35.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577448, 41.601650, 35.255291>,  <28.015837, 42.112087, 35.377945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577448, 41.601650, 35.255291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696598, 41.759010, 35.603199>,  <28.768089, 41.853424, 35.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696598, 41.759010, 35.603199>,  <28.577448, 41.601650, 35.255291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696598, 41.759010, 35.603199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417956, -0.872910, 0.251675,
		0.858244, 0.288560, -0.424443,
		0.297877, 0.393397, 0.869775,
		28.785961, 41.877029, 35.864132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966236, 41.105293, 35.371933>,  <28.577448, 41.601650, 35.255291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966236, 41.105293, 35.371933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926720, 41.287792, 35.725674>,  <28.903009, 41.397289, 35.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926720, 41.287792, 35.725674>,  <28.966236, 41.105293, 35.371933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926720, 41.287792, 35.725674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071589, -0.883139, 0.463616,
		0.992530, 0.109111, 0.054585,
		-0.098792, 0.456245, 0.884353,
		28.897081, 41.424667, 35.990978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499619, 40.861137, 35.801739>,  <28.966236, 41.105293, 35.371933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499619, 40.861137, 35.801739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198578, 40.972008, 36.040657>,  <29.017954, 41.038528, 36.184010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198578, 40.972008, 36.040657>,  <29.499619, 40.861137, 35.801739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198578, 40.972008, 36.040657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028080, -0.892759, 0.449659,
		0.657877, 0.355187, 0.664109,
		-0.752602, 0.277172, 0.597298,
		28.972797, 41.055161, 36.219845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675848, 40.748672, 36.467411>,  <29.499619, 40.861137, 35.801739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675848, 40.748672, 36.467411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277834, 40.771210, 36.500237>,  <29.039026, 40.784733, 36.519932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277834, 40.771210, 36.500237>,  <29.675848, 40.748672, 36.467411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277834, 40.771210, 36.500237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000780, -0.819932, 0.572460,
		0.099539, 0.569681, 0.815816,
		-0.995033, 0.056346, 0.082059,
		28.979324, 40.788113, 36.524853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563812, 40.522240, 37.174091>,  <29.675848, 40.748672, 36.467411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563812, 40.522240, 37.174091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191788, 40.515846, 37.027271>,  <28.968573, 40.512009, 36.939178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191788, 40.515846, 37.027271>,  <29.563812, 40.522240, 37.174091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191788, 40.515846, 37.027271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144682, -0.902387, 0.405913,
		-0.337711, 0.430630, 0.836964,
		-0.930064, -0.015987, -0.367050,
		28.912769, 40.511051, 36.917156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994995, 40.368671, 37.738964>,  <29.563812, 40.522240, 37.174091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994995, 40.368671, 37.738964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867386, 40.241680, 37.381767>,  <28.790821, 40.165485, 37.167450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867386, 40.241680, 37.381767>,  <28.994995, 40.368671, 37.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867386, 40.241680, 37.381767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142358, -0.915484, 0.376328,
		-0.936994, 0.247182, 0.246866,
		-0.319023, -0.317474, -0.892992,
		28.771679, 40.146439, 37.113869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495390, 39.912815, 37.789631>,  <28.994995, 40.368671, 37.738964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495390, 39.912815, 37.789631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507547, 39.832008, 37.398067>,  <28.514841, 39.783524, 37.163128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507547, 39.832008, 37.398067>,  <28.495390, 39.912815, 37.789631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507547, 39.832008, 37.398067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168979, -0.966306, 0.194165,
		-0.985151, 0.159514, -0.063505,
		0.030393, -0.202013, -0.978911,
		28.516665, 39.771404, 37.104393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052162, 39.346527, 37.692970>,  <28.495390, 39.912815, 37.789631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052162, 39.346527, 37.692970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251867, 39.346222, 37.346390>,  <28.371691, 39.346039, 37.138443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251867, 39.346222, 37.346390>,  <28.052162, 39.346527, 37.692970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251867, 39.346222, 37.346390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009301, -0.999937, 0.006238,
		-0.866401, -0.011173, -0.499224,
		0.499263, -0.000761, -0.866451,
		28.401646, 39.345993, 37.086456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728779, 38.916199, 37.254219>,  <28.052162, 39.346527, 37.692970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728779, 38.916199, 37.254219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115284, 38.926155, 37.151680>,  <28.347187, 38.932129, 37.090157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115284, 38.926155, 37.151680>,  <27.728779, 38.916199, 37.254219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115284, 38.926155, 37.151680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032648, -0.999128, 0.026034,
		-0.255480, -0.033525, -0.966233,
		0.966263, 0.024895, -0.256352,
		28.405163, 38.933624, 37.074776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841053, 38.332405, 36.794971>,  <27.728779, 38.916199, 37.254219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841053, 38.332405, 36.794971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214094, 38.418507, 36.910843>,  <28.437920, 38.470169, 36.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214094, 38.418507, 36.910843>,  <27.841053, 38.332405, 36.794971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214094, 38.418507, 36.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205748, -0.976557, 0.063271,
		0.296509, 0.000595, -0.955030,
		0.932604, 0.215256, 0.289681,
		28.493876, 38.483082, 36.997746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324350, 37.981205, 36.256413>,  <27.841053, 38.332405, 36.794971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324350, 37.981205, 36.256413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547880, 38.053478, 36.580158>,  <28.681999, 38.096844, 36.774406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547880, 38.053478, 36.580158>,  <28.324350, 37.981205, 36.256413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547880, 38.053478, 36.580158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379442, -0.923530, -0.055812,
		0.737385, 0.338295, -0.584654,
		0.558826, 0.180687, 0.809361,
		28.715528, 38.107685, 36.822968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919907, 37.739319, 36.078449>,  <28.324350, 37.981205, 36.256413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919907, 37.739319, 36.078449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949577, 37.746284, 36.477287>,  <28.967381, 37.750465, 36.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949577, 37.746284, 36.477287>,  <28.919907, 37.739319, 36.078449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949577, 37.746284, 36.477287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283187, -0.959055, -0.004318,
		0.956192, 0.282684, -0.076071,
		0.074177, 0.017414, 0.997093,
		28.971830, 37.751507, 36.776417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573742, 37.373489, 36.316212>,  <28.919907, 37.739319, 36.078449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573742, 37.373489, 36.316212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352585, 37.390141, 36.649097>,  <29.219891, 37.400131, 36.848827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352585, 37.390141, 36.649097>,  <29.573742, 37.373489, 36.316212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352585, 37.390141, 36.649097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146787, -0.978267, 0.146451,
		0.820223, 0.203129, 0.534765,
		-0.552891, 0.041626, 0.832213,
		29.186718, 37.402630, 36.898762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933817, 37.020073, 36.756660>,  <29.573742, 37.373489, 36.316212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933817, 37.020073, 36.756660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580008, 37.037502, 36.942444>,  <29.367722, 37.047958, 37.053913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580008, 37.037502, 36.942444>,  <29.933817, 37.020073, 36.756660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580008, 37.037502, 36.942444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107085, -0.950076, 0.293068,
		0.454037, 0.308962, 0.835699,
		-0.884525, 0.043573, 0.464454,
		29.314650, 37.050575, 37.081779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091230, 36.854477, 37.524696>,  <29.933817, 37.020073, 36.756660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091230, 36.854477, 37.524696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730047, 36.759773, 37.381248>,  <29.513336, 36.702950, 37.295177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730047, 36.759773, 37.381248>,  <30.091230, 36.854477, 37.524696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730047, 36.759773, 37.381248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, -0.910619, 0.405904,
		-0.422669, 0.338701, 0.840614,
		-0.902959, -0.236760, -0.358621,
		29.459160, 36.688744, 37.273663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511875, 36.646118, 38.026443>,  <30.091230, 36.854477, 37.524696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511875, 36.646118, 38.026443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450087, 36.459789, 37.677929>,  <29.413013, 36.347992, 37.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450087, 36.459789, 37.677929>,  <29.511875, 36.646118, 38.026443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450087, 36.459789, 37.677929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094233, -0.884802, 0.456340,
		-0.983493, -0.011613, 0.180572,
		-0.154470, -0.465823, -0.871291,
		29.403746, 36.320042, 37.416542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088650, 36.078320, 38.169960>,  <29.511875, 36.646118, 38.026443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088650, 36.078320, 38.169960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284992, 36.012993, 37.827641>,  <29.402798, 35.973797, 37.622250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284992, 36.012993, 37.827641>,  <29.088650, 36.078320, 38.169960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284992, 36.012993, 37.827641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185305, -0.940230, 0.285709,
		-0.851307, -0.298825, -0.431253,
		0.490854, -0.163313, -0.855799,
		29.432249, 35.964001, 37.570900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811258, 35.440685, 37.837444>,  <29.088650, 36.078320, 38.169960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811258, 35.440685, 37.837444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190426, 35.513184, 37.732677>,  <29.417927, 35.556683, 37.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190426, 35.513184, 37.732677>,  <28.811258, 35.440685, 37.837444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190426, 35.513184, 37.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219107, -0.967889, 0.123218,
		-0.231170, -0.174187, -0.957193,
		0.947920, 0.181243, -0.261912,
		29.474802, 35.567558, 37.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056713, 34.999420, 37.273380>,  <28.811258, 35.440685, 37.837444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056713, 34.999420, 37.273380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365707, 35.108238, 37.502903>,  <29.551104, 35.173531, 37.640617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365707, 35.108238, 37.502903>,  <29.056713, 34.999420, 37.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365707, 35.108238, 37.502903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358549, -0.932631, -0.040525,
		0.524126, 0.237043, -0.817987,
		0.772486, 0.272048, 0.573808,
		29.597454, 35.189854, 37.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571508, 34.541142, 37.215092>,  <29.056713, 34.999420, 37.273380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571508, 34.541142, 37.215092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693937, 34.659336, 37.577087>,  <29.767395, 34.730251, 37.794285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693937, 34.659336, 37.577087>,  <29.571508, 34.541142, 37.215092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693937, 34.659336, 37.577087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565647, -0.821066, 0.076777,
		0.765743, 0.488405, -0.418447,
		0.306074, 0.295485, 0.904990,
		29.785759, 34.747982, 37.848583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294680, 34.892010, 37.253487>,  <29.571508, 34.541142, 37.215092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294680, 34.892010, 37.253487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131987, 34.643925, 37.521786>,  <30.034370, 34.495071, 37.682766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131987, 34.643925, 37.521786>,  <30.294680, 34.892010, 37.253487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131987, 34.643925, 37.521786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642919, -0.715951, -0.272157,
		0.649017, 0.320539, 0.689950,
		-0.406734, -0.620216, 0.670746,
		30.009966, 34.457859, 37.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681803, 35.223713, 37.689960>,  <30.294680, 34.892010, 37.253487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681803, 35.223713, 37.689960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613850, 35.375481, 37.326164>,  <30.573078, 35.466541, 37.107887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613850, 35.375481, 37.326164>,  <30.681803, 35.223713, 37.689960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613850, 35.375481, 37.326164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638439, 0.660662, 0.394870,
		0.750690, 0.647737, 0.130003,
		-0.169884, 0.379424, -0.909493,
		30.562885, 35.489307, 37.053318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829737, 35.897881, 37.729294>,  <30.681803, 35.223713, 37.689960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829737, 35.897881, 37.729294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561499, 35.840801, 37.438107>,  <30.400555, 35.806553, 37.263393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561499, 35.840801, 37.438107>,  <30.829737, 35.897881, 37.729294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561499, 35.840801, 37.438107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559463, 0.741699, 0.369978,
		0.487136, 0.655377, -0.577217,
		-0.670596, -0.142702, -0.727968,
		30.360319, 35.797989, 37.219715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133453, 35.507187, 37.087673>,  <30.829737, 35.897881, 37.729294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133453, 35.507187, 37.087673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511396, 35.427647, 36.983593>,  <31.738161, 35.379921, 36.921146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511396, 35.427647, 36.983593>,  <31.133453, 35.507187, 37.087673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511396, 35.427647, 36.983593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266565, 0.005462, 0.963802,
		-0.190235, -0.980014, 0.058169,
		0.944857, -0.198855, -0.260198,
		31.794853, 35.367989, 36.905533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336189, 34.879448, 37.490612>,  <31.133453, 35.507187, 37.087673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336189, 34.879448, 37.490612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666716, 35.067184, 37.366081>,  <31.865030, 35.179825, 37.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666716, 35.067184, 37.366081>,  <31.336189, 34.879448, 37.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666716, 35.067184, 37.366081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398526, -0.096642, 0.912051,
		0.397973, -0.877714, -0.266901,
		0.826314, 0.469338, -0.311331,
		31.914610, 35.207985, 37.272682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880625, 34.543285, 37.794518>,  <31.336189, 34.879448, 37.490612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880625, 34.543285, 37.794518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025745, 34.906895, 37.712502>,  <32.112820, 35.125061, 37.663292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025745, 34.906895, 37.712502>,  <31.880625, 34.543285, 37.794518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025745, 34.906895, 37.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524183, -0.017154, 0.851433,
		0.770459, -0.416382, -0.482721,
		0.362802, 0.909028, -0.205044,
		32.134586, 35.179604, 37.650990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609035, 34.525375, 37.909744>,  <31.880625, 34.543285, 37.794518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609035, 34.525375, 37.909744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492092, 34.907204, 37.932781>,  <32.421925, 35.136303, 37.946606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492092, 34.907204, 37.932781>,  <32.609035, 34.525375, 37.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492092, 34.907204, 37.932781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398031, 0.066701, 0.914944,
		0.869539, 0.290415, -0.399450,
		-0.292357, 0.954573, 0.057595,
		32.404385, 35.193577, 37.950058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255962, 34.969788, 38.190666>,  <32.609035, 34.525375, 37.909744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255962, 34.969788, 38.190666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917133, 35.170918, 38.259525>,  <32.713837, 35.291595, 38.300842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917133, 35.170918, 38.259525>,  <33.255962, 34.969788, 38.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917133, 35.170918, 38.259525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288056, 0.162144, 0.943787,
		0.446644, 0.849045, -0.282189,
		-0.847073, 0.502823, 0.172151,
		32.663010, 35.321766, 38.311172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487293, 35.402420, 38.681637>,  <33.255962, 34.969788, 38.190666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487293, 35.402420, 38.681637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092499, 35.457207, 38.715363>,  <32.855621, 35.490078, 38.735596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092499, 35.457207, 38.715363>,  <33.487293, 35.402420, 38.681637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092499, 35.457207, 38.715363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106775, 0.165970, 0.980333,
		0.120275, 0.976573, -0.178433,
		-0.986982, 0.136962, 0.084312,
		32.796406, 35.498295, 38.740658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453453, 36.071030, 39.098743>,  <33.487293, 35.402420, 38.681637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453453, 36.071030, 39.098743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121758, 35.848351, 39.118530>,  <32.922741, 35.714745, 39.130402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121758, 35.848351, 39.118530>,  <33.453453, 36.071030, 39.098743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121758, 35.848351, 39.118530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102471, -0.064432, 0.992647,
		-0.549416, 0.828214, 0.110475,
		-0.829242, -0.556696, 0.049468,
		32.872986, 35.681343, 39.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021282, 36.328514, 39.652279>,  <33.453453, 36.071030, 39.098743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021282, 36.328514, 39.652279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894409, 35.952240, 39.604099>,  <32.818287, 35.726475, 39.575191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894409, 35.952240, 39.604099>,  <33.021282, 36.328514, 39.652279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894409, 35.952240, 39.604099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036903, -0.114666, 0.992718,
		-0.947646, 0.319318, 0.001656,
		-0.317182, -0.940685, -0.120446,
		32.799255, 35.670036, 39.567966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627331, 36.291351, 40.196243>,  <33.021282, 36.328514, 39.652279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627331, 36.291351, 40.196243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665600, 35.915714, 40.064213>,  <32.688560, 35.690331, 39.984997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665600, 35.915714, 40.064213>,  <32.627331, 36.291351, 40.196243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665600, 35.915714, 40.064213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042116, -0.335116, 0.941235,
		-0.994522, -0.076146, -0.071611,
		0.095669, -0.939095, -0.330074,
		32.694302, 35.633987, 39.965191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051762, 36.011852, 40.471745>,  <32.627331, 36.291351, 40.196243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051762, 36.011852, 40.471745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339859, 35.742813, 40.403797>,  <32.512718, 35.581390, 40.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339859, 35.742813, 40.403797>,  <32.051762, 36.011852, 40.471745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339859, 35.742813, 40.403797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150277, -0.390331, 0.908327,
		-0.677246, -0.628692, -0.382211,
		0.720247, -0.672598, -0.169872,
		32.555935, 35.541035, 40.352837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846289, 35.453445, 40.844810>,  <32.051762, 36.011852, 40.471745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846289, 35.453445, 40.844810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228561, 35.352077, 40.784878>,  <32.457924, 35.291256, 40.748920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228561, 35.352077, 40.784878>,  <31.846289, 35.453445, 40.844810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228561, 35.352077, 40.784878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023755, -0.440900, 0.897242,
		-0.293436, -0.861038, -0.415341,
		0.955683, -0.253417, -0.149830,
		32.515266, 35.276054, 40.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939779, 34.723335, 41.019093>,  <31.846289, 35.453445, 40.844810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939779, 34.723335, 41.019093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305145, 34.885368, 41.035004>,  <32.524364, 34.982586, 41.044552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305145, 34.885368, 41.035004>,  <31.939779, 34.723335, 41.019093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305145, 34.885368, 41.035004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166305, -0.460623, 0.871877,
		0.371505, -0.789770, -0.488107,
		0.913415, 0.405081, 0.039781,
		32.579170, 35.006893, 41.046940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380737, 34.135769, 41.270271>,  <31.939779, 34.723335, 41.019093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380737, 34.135769, 41.270271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581921, 34.473038, 41.346256>,  <32.702633, 34.675400, 41.391846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581921, 34.473038, 41.346256>,  <32.380737, 34.135769, 41.270271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581921, 34.473038, 41.346256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297801, -0.375387, 0.877724,
		0.811385, -0.384889, -0.439904,
		0.502960, 0.843176, 0.189963,
		32.732807, 34.725990, 41.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003548, 33.902256, 41.553688>,  <32.380737, 34.135769, 41.270271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003548, 33.902256, 41.553688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967957, 34.286243, 41.659927>,  <32.946602, 34.516636, 41.723671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967957, 34.286243, 41.659927>,  <33.003548, 33.902256, 41.553688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967957, 34.286243, 41.659927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260844, -0.234889, 0.936369,
		0.961271, 0.152597, -0.229502,
		-0.088980, 0.959969, 0.265596,
		32.941261, 34.574234, 41.739605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500954, 34.065369, 41.999119>,  <33.003548, 33.902256, 41.553688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500954, 34.065369, 41.999119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224125, 34.341579, 42.083218>,  <33.058029, 34.507305, 42.133678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224125, 34.341579, 42.083218>,  <33.500954, 34.065369, 41.999119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224125, 34.341579, 42.083218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152196, -0.145132, 0.977636,
		0.705602, 0.708593, -0.004655,
		-0.692071, 0.690530, 0.210251,
		33.016502, 34.548740, 42.146294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692165, 34.199436, 42.617970>,  <33.500954, 34.065369, 41.999119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692165, 34.199436, 42.617970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323048, 34.351364, 42.592113>,  <33.101578, 34.442520, 42.576599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323048, 34.351364, 42.592113>,  <33.692165, 34.199436, 42.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323048, 34.351364, 42.592113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076095, -0.015201, 0.996985,
		0.377694, 0.924935, 0.042930,
		-0.922799, 0.379822, -0.064641,
		33.046207, 34.465309, 42.572720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575024, 34.782688, 43.159065>,  <33.692165, 34.199436, 42.617970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575024, 34.782688, 43.159065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191490, 34.695370, 43.086418>,  <32.961369, 34.642979, 43.042831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191490, 34.695370, 43.086418>,  <33.575024, 34.782688, 43.159065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191490, 34.695370, 43.086418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233198, 0.240361, 0.942255,
		-0.162035, 0.945819, -0.281372,
		-0.958834, -0.218294, -0.181616,
		32.903839, 34.629883, 43.031933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157394, 35.349724, 43.388447>,  <33.575024, 34.782688, 43.159065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157394, 35.349724, 43.388447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930172, 35.020561, 43.393139>,  <32.793839, 34.823063, 43.395954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930172, 35.020561, 43.393139>,  <33.157394, 35.349724, 43.388447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930172, 35.020561, 43.393139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187797, 0.143487, 0.971671,
		-0.801276, 0.549762, -0.236048,
		-0.568057, -0.822905, 0.011729,
		32.759754, 34.773689, 43.396656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610954, 35.513611, 43.815166>,  <33.157394, 35.349724, 43.388447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610954, 35.513611, 43.815166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587017, 35.116985, 43.769173>,  <32.572655, 34.879009, 43.741577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587017, 35.116985, 43.769173>,  <32.610954, 35.513611, 43.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587017, 35.116985, 43.769173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182293, -0.102397, 0.977898,
		-0.981422, 0.079480, -0.174628,
		-0.059842, -0.991563, -0.114983,
		32.569065, 34.819515, 43.734676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136345, 35.337147, 44.288937>,  <32.610954, 35.513611, 43.815166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136345, 35.337147, 44.288937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320320, 34.986164, 44.234486>,  <32.430706, 34.775574, 44.201817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320320, 34.986164, 44.234486>,  <32.136345, 35.337147, 44.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320320, 34.986164, 44.234486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332704, -0.312434, 0.889771,
		-0.823264, -0.363951, -0.435633,
		0.459940, -0.877453, -0.136127,
		32.458302, 34.722927, 44.193649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752714, 34.825146, 44.634136>,  <32.136345, 35.337147, 44.288937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752714, 34.825146, 44.634136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083797, 34.607979, 44.577374>,  <32.282448, 34.477676, 44.543316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083797, 34.607979, 44.577374>,  <31.752714, 34.825146, 44.634136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083797, 34.607979, 44.577374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164605, -0.476653, 0.863543,
		-0.536474, -0.691404, -0.483897,
		0.827708, -0.542920, -0.141903,
		32.332111, 34.445103, 44.534801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631302, 34.118404, 44.621307>,  <31.752714, 34.825146, 44.634136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631302, 34.118404, 44.621307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013165, 34.149273, 44.736324>,  <32.242283, 34.167793, 44.805332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013165, 34.149273, 44.736324>,  <31.631302, 34.118404, 44.621307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013165, 34.149273, 44.736324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182469, -0.611492, 0.769924,
		0.235243, -0.787479, -0.569683,
		0.954655, 0.077170, 0.287540,
		32.299561, 34.172424, 44.822586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844212, 33.435650, 44.736294>,  <31.631302, 34.118404, 44.621307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844212, 33.435650, 44.736294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145840, 33.618298, 44.925129>,  <32.326817, 33.727886, 45.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145840, 33.618298, 44.925129>,  <31.844212, 33.435650, 44.736294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145840, 33.618298, 44.925129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012186, -0.708933, 0.705170,
		0.656678, -0.537502, -0.529023,
		0.754073, 0.456623, 0.472091,
		32.372063, 33.755283, 45.066757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205090, 32.918774, 44.917198>,  <31.844212, 33.435650, 44.736294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205090, 32.918774, 44.917198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344872, 33.214581, 45.147327>,  <32.428741, 33.392067, 45.285404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344872, 33.214581, 45.147327>,  <32.205090, 32.918774, 44.917198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344872, 33.214581, 45.147327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101754, -0.640354, 0.761310,
		0.931412, -0.207501, -0.299023,
		0.349454, 0.739520, 0.575319,
		32.449707, 33.436436, 45.319923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728031, 32.621517, 45.269253>,  <32.205090, 32.918774, 44.917198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728031, 32.621517, 45.269253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653790, 32.956604, 45.474689>,  <32.609245, 33.157658, 45.597954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653790, 32.956604, 45.474689>,  <32.728031, 32.621517, 45.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653790, 32.956604, 45.474689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005798, -0.521733, 0.853089,
		0.982607, 0.161315, 0.091979,
		-0.185605, 0.837719, 0.513594,
		32.598106, 33.207920, 45.628769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259182, 32.599022, 45.690262>,  <32.728031, 32.621517, 45.269253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259182, 32.599022, 45.690262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987823, 32.823875, 45.879486>,  <32.825008, 32.958786, 45.993023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987823, 32.823875, 45.879486>,  <33.259182, 32.599022, 45.690262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987823, 32.823875, 45.879486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228091, -0.450928, 0.862924,
		0.698395, 0.693304, 0.177690,
		-0.678394, 0.562132, 0.473063,
		32.784306, 32.992516, 46.021404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575317, 33.055344, 46.292103>,  <33.259182, 32.599022, 45.690262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575317, 33.055344, 46.292103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188564, 32.996265, 46.375359>,  <32.956512, 32.960819, 46.425312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188564, 32.996265, 46.375359>,  <33.575317, 33.055344, 46.292103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188564, 32.996265, 46.375359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239092, -0.238918, 0.941145,
		-0.089272, 0.959742, 0.266318,
		-0.966885, -0.147692, 0.208138,
		32.898499, 32.951958, 46.437801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549381, 33.348534, 47.010151>,  <33.575317, 33.055344, 46.292103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549381, 33.348534, 47.010151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202255, 33.155251, 46.963833>,  <32.993980, 33.039280, 46.936043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202255, 33.155251, 46.963833>,  <33.549381, 33.348534, 47.010151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202255, 33.155251, 46.963833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040238, -0.300609, 0.952898,
		-0.495257, 0.822279, 0.280317,
		-0.867814, -0.483209, -0.115792,
		32.941910, 33.010288, 46.929096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207073, 33.620968, 47.567196>,  <33.549381, 33.348534, 47.010151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207073, 33.620968, 47.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064011, 33.260880, 47.467854>,  <32.978172, 33.044827, 47.408249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064011, 33.260880, 47.467854>,  <33.207073, 33.620968, 47.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064011, 33.260880, 47.467854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075410, -0.292919, 0.953159,
		-0.930803, 0.322177, 0.172651,
		-0.357659, -0.900222, -0.248355,
		32.956715, 32.990814, 47.393349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749577, 33.453930, 48.047848>,  <33.207073, 33.620968, 47.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749577, 33.453930, 48.047848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810459, 33.096684, 47.878532>,  <32.846989, 32.882336, 47.776943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810459, 33.096684, 47.878532>,  <32.749577, 33.453930, 48.047848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810459, 33.096684, 47.878532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003199, -0.427830, 0.903854,
		-0.988343, -0.138928, -0.062262,
		0.152208, -0.893119, -0.423287,
		32.856121, 32.828747, 47.751545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279819, 33.096443, 48.429749>,  <32.749577, 33.453930, 48.047848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279819, 33.096443, 48.429749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526787, 32.818287, 48.282658>,  <32.674969, 32.651394, 48.194405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526787, 32.818287, 48.282658>,  <32.279819, 33.096443, 48.429749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526787, 32.818287, 48.282658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036182, -0.492076, 0.869800,
		-0.785804, -0.523724, -0.328976,
		0.617416, -0.695395, -0.367726,
		32.712013, 32.609669, 48.172340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046631, 32.415356, 48.693089>,  <32.279819, 33.096443, 48.429749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046631, 32.415356, 48.693089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414013, 32.322796, 48.564777>,  <32.634441, 32.267262, 48.487789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414013, 32.322796, 48.564777>,  <32.046631, 32.415356, 48.693089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414013, 32.322796, 48.564777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115666, -0.618431, 0.777280,
		-0.378242, -0.750998, -0.541234,
		0.918452, -0.231397, -0.320782,
		32.689548, 32.253376, 48.468544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139423, 31.671135, 48.703274>,  <32.046631, 32.415356, 48.693089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139423, 31.671135, 48.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510475, 31.819477, 48.720993>,  <32.733109, 31.908484, 48.731625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510475, 31.819477, 48.720993>,  <32.139423, 31.671135, 48.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510475, 31.819477, 48.720993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212539, -0.621680, 0.753884,
		0.307123, -0.689913, -0.655512,
		0.927633, 0.370857, 0.044299,
		32.788765, 31.930735, 48.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691586, 31.084425, 48.751701>,  <32.139423, 31.671135, 48.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691586, 31.084425, 48.751701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876179, 31.402895, 48.908234>,  <32.986935, 31.593977, 49.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876179, 31.402895, 48.908234>,  <32.691586, 31.084425, 48.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876179, 31.402895, 48.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319423, -0.560647, 0.763966,
		0.827646, -0.227561, -0.513047,
		0.461487, 0.796173, 0.391329,
		33.014626, 31.641747, 49.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242744, 30.812061, 49.034485>,  <32.691586, 31.084425, 48.751701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242744, 30.812061, 49.034485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221767, 31.160143, 49.230442>,  <33.209183, 31.368992, 49.348019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221767, 31.160143, 49.230442>,  <33.242744, 30.812061, 49.034485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221767, 31.160143, 49.230442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460042, -0.414363, 0.785280,
		0.886347, 0.266556, -0.378599,
		-0.052444, 0.870202, 0.489896,
		33.206036, 31.421204, 49.377411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942402, 30.845345, 49.491177>,  <33.242744, 30.812061, 49.034485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942402, 30.845345, 49.491177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668034, 31.087713, 49.652359>,  <33.503414, 31.233135, 49.749069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668034, 31.087713, 49.652359>,  <33.942402, 30.845345, 49.491177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668034, 31.087713, 49.652359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234101, -0.340570, 0.910609,
		0.688993, 0.718936, 0.091756,
		-0.685919, 0.605923, 0.402954,
		33.462257, 31.269491, 49.773247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279255, 31.216562, 50.071625>,  <33.942402, 30.845345, 49.491177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279255, 31.216562, 50.071625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889271, 31.230659, 50.159454>,  <33.655281, 31.239117, 50.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889271, 31.230659, 50.159454>,  <34.279255, 31.216562, 50.071625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889271, 31.230659, 50.159454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184218, -0.425098, 0.886203,
		0.124571, 0.904461, 0.407961,
		-0.974959, 0.035241, 0.219573,
		33.596783, 31.241232, 50.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345650, 31.305836, 50.742325>,  <34.279255, 31.216562, 50.071625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345650, 31.305836, 50.742325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954433, 31.230118, 50.707432>,  <33.719704, 31.184687, 50.686497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954433, 31.230118, 50.707432>,  <34.345650, 31.305836, 50.742325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954433, 31.230118, 50.707432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030553, -0.283816, 0.958392,
		-0.206178, 0.940008, 0.271799,
		-0.978037, -0.189295, -0.087237,
		33.661022, 31.173330, 50.681259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081360, 31.247061, 51.431530>,  <34.345650, 31.305836, 50.742325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081360, 31.247061, 51.431530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794903, 31.069628, 51.215984>,  <33.623028, 30.963167, 51.086658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794903, 31.069628, 51.215984>,  <34.081360, 31.247061, 51.431530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794903, 31.069628, 51.215984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350904, -0.438557, 0.827366,
		-0.603325, 0.781603, 0.158415,
		-0.716146, -0.443582, -0.538860,
		33.580059, 30.936554, 51.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729973, 30.886375, 51.843216>,  <34.081360, 31.247061, 51.431530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729973, 30.886375, 51.843216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520535, 30.755627, 51.528507>,  <33.394871, 30.677177, 51.339684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520535, 30.755627, 51.528507>,  <33.729973, 30.886375, 51.843216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520535, 30.755627, 51.528507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612422, -0.497580, 0.614291,
		-0.592275, 0.803473, 0.060346,
		-0.523593, -0.326872, -0.786768,
		33.363457, 30.657564, 51.292477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031197, 30.800756, 52.053474>,  <33.729973, 30.886375, 51.843216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031197, 30.800756, 52.053474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051941, 30.554996, 51.738560>,  <33.064388, 30.407541, 51.549610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051941, 30.554996, 51.738560>,  <33.031197, 30.800756, 52.053474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051941, 30.554996, 51.738560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590061, -0.654874, 0.472195,
		-0.805691, 0.440062, -0.396493,
		0.051858, -0.614399, -0.787290,
		33.067497, 30.370676, 51.502373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378784, 30.604324, 52.017662>,  <33.031197, 30.800756, 52.053474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378784, 30.604324, 52.017662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645378, 30.340178, 51.879265>,  <32.805336, 30.181688, 51.796227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645378, 30.340178, 51.879265>,  <32.378784, 30.604324, 52.017662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645378, 30.340178, 51.879265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375009, -0.698068, 0.609974,
		-0.644330, -0.276792, -0.712899,
		0.666488, -0.660368, -0.345987,
		32.845325, 30.142067, 51.775467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090179, 30.179165, 51.593811>,  <32.378784, 30.604324, 52.017662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090179, 30.179165, 51.593811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407448, 29.944159, 51.657951>,  <32.597809, 29.803154, 51.696434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407448, 29.944159, 51.657951>,  <32.090179, 30.179165, 51.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407448, 29.944159, 51.657951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608803, -0.771699, 0.183957,
		0.015665, -0.243530, -0.969767,
		0.793167, -0.587515, 0.160350,
		32.645397, 29.767904, 51.706055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032204, 29.551693, 51.194820>,  <32.090179, 30.179165, 51.593811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032204, 29.551693, 51.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230026, 29.489206, 51.536816>,  <32.348721, 29.451715, 51.742012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230026, 29.489206, 51.536816>,  <32.032204, 29.551693, 51.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230026, 29.489206, 51.536816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462197, -0.880359, 0.106500,
		0.736063, -0.447845, -0.507588,
		0.494555, -0.156215, 0.854992,
		32.378391, 29.442341, 51.793312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816368, 28.917168, 51.733521>,  <32.032204, 29.551693, 51.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816368, 28.917168, 51.733521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015678, 28.570395, 51.738441>,  <32.135265, 28.362331, 51.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015678, 28.570395, 51.738441>,  <31.816368, 28.917168, 51.733521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015678, 28.570395, 51.738441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111592, -0.078201, -0.990672,
		0.859807, 0.492255, -0.135708,
		0.498276, -0.866931, 0.012306,
		32.165161, 28.310314, 51.742134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468971, 28.971020, 51.383736>,  <31.816368, 28.917168, 51.733521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468971, 28.971020, 51.383736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299946, 28.610497, 51.345615>,  <32.198532, 28.394182, 51.322742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299946, 28.610497, 51.345615>,  <32.468971, 28.971020, 51.383736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299946, 28.610497, 51.345615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094454, 0.148376, -0.984410,
		0.901398, -0.406973, -0.147831,
		-0.422563, -0.901309, -0.095305,
		32.173176, 28.340103, 51.317024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940948, 28.519262, 51.028069>,  <32.468971, 28.971020, 51.383736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940948, 28.519262, 51.028069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556190, 28.420900, 50.980259>,  <32.325336, 28.361883, 50.951572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556190, 28.420900, 50.980259>,  <32.940948, 28.519262, 51.028069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556190, 28.420900, 50.980259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114228, 0.035763, -0.992811,
		0.248411, -0.968634, -0.006311,
		-0.961896, -0.245904, -0.119529,
		32.267620, 28.347130, 50.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840698, 28.016165, 50.582169>,  <32.940948, 28.519262, 51.028069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840698, 28.016165, 50.582169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504005, 28.232044, 50.576385>,  <32.301991, 28.361572, 50.572914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504005, 28.232044, 50.576385>,  <32.840698, 28.016165, 50.582169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504005, 28.232044, 50.576385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009718, -0.041925, -0.999073,
		-0.539807, -0.840812, 0.040534,
		-0.841733, 0.539701, -0.014461,
		32.251484, 28.393955, 50.572048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377209, 27.752968, 50.080708>,  <32.840698, 28.016165, 50.582169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377209, 27.752968, 50.080708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248360, 28.129263, 50.123131>,  <32.171051, 28.355040, 50.148586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248360, 28.129263, 50.123131>,  <32.377209, 27.752968, 50.080708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248360, 28.129263, 50.123131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109487, 0.148299, -0.982863,
		-0.940346, -0.304989, -0.150769,
		-0.322121, 0.940738, 0.106060,
		32.151722, 28.411484, 50.154949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094299, 27.897860, 49.441032>,  <32.377209, 27.752968, 50.080708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094299, 27.897860, 49.441032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117588, 28.267548, 49.591991>,  <32.131561, 28.489361, 49.682568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117588, 28.267548, 49.591991>,  <32.094299, 27.897860, 49.441032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117588, 28.267548, 49.591991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012434, 0.378682, -0.925443,
		-0.998226, 0.049188, 0.033539,
		0.058221, 0.924219, 0.377398,
		32.135056, 28.544813, 49.705212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748346, 28.347477, 48.974213>,  <32.094299, 27.897860, 49.441032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748346, 28.347477, 48.974213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039883, 28.546982, 49.161842>,  <32.214806, 28.666685, 49.274418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039883, 28.546982, 49.161842>,  <31.748346, 28.347477, 48.974213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039883, 28.546982, 49.161842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212116, 0.486903, -0.847309,
		-0.650997, 0.717051, 0.249080,
		0.728842, 0.498761, 0.469071,
		32.258533, 28.696609, 49.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673126, 28.951727, 48.729195>,  <31.748346, 28.347477, 48.974213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673126, 28.951727, 48.729195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049583, 28.970476, 48.863091>,  <32.275459, 28.981726, 48.943428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049583, 28.970476, 48.863091>,  <31.673126, 28.951727, 48.729195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049583, 28.970476, 48.863091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252681, 0.560195, -0.788882,
		-0.224497, 0.827034, 0.515380,
		0.941145, 0.046875, 0.334737,
		32.331928, 28.984539, 48.963512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881275, 29.657122, 48.620659>,  <31.673126, 28.951727, 48.729195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881275, 29.657122, 48.620659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219059, 29.445087, 48.651390>,  <32.421730, 29.317867, 48.669827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219059, 29.445087, 48.651390>,  <31.881275, 29.657122, 48.620659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219059, 29.445087, 48.651390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337767, 0.415698, -0.844458,
		0.415698, 0.739057, 0.530084,
		0.844458, -0.530084, 0.076825,
		32.472397, 29.286062, 48.674438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386974, 30.073658, 48.455696>,  <31.881275, 29.657122, 48.620659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386974, 30.073658, 48.455696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559357, 29.714886, 48.416119>,  <32.662788, 29.499622, 48.392372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559357, 29.714886, 48.416119>,  <32.386974, 30.073658, 48.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559357, 29.714886, 48.416119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430262, 0.300628, -0.851174,
		0.793190, 0.324249, 0.515473,
		0.430958, -0.896931, -0.098943,
		32.688644, 29.445807, 48.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036518, 30.134783, 48.188396>,  <32.386974, 30.073658, 48.455696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036518, 30.134783, 48.188396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998974, 29.750513, 48.083858>,  <32.976448, 29.519951, 48.021137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998974, 29.750513, 48.083858>,  <33.036518, 30.134783, 48.188396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998974, 29.750513, 48.083858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617666, 0.149687, -0.772064,
		0.780820, -0.233886, 0.579325,
		-0.093857, -0.960672, -0.261342,
		32.970818, 29.462311, 48.005455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679073, 29.982971, 48.021942>,  <33.036518, 30.134783, 48.188396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679073, 29.982971, 48.021942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452427, 29.698942, 47.854733>,  <33.316441, 29.528524, 47.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452427, 29.698942, 47.854733>,  <33.679073, 29.982971, 48.021942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452427, 29.698942, 47.854733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457869, 0.150453, -0.876196,
		0.685056, -0.687866, 0.239872,
		-0.566616, -0.710073, -0.418021,
		33.282440, 29.485920, 47.729324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149178, 29.507391, 47.706303>,  <33.679073, 29.982971, 48.021942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149178, 29.507391, 47.706303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795769, 29.470915, 47.522533>,  <33.583725, 29.449028, 47.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795769, 29.470915, 47.522533>,  <34.149178, 29.507391, 47.706303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795769, 29.470915, 47.522533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444990, 0.142719, -0.884090,
		0.146274, -0.985545, -0.085473,
		-0.883509, -0.091285, -0.459433,
		33.530712, 29.443558, 47.384705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328899, 29.132103, 46.999130>,  <34.149178, 29.507391, 47.706303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328899, 29.132103, 46.999130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971458, 29.306501, 46.956463>,  <33.756992, 29.411140, 46.930862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971458, 29.306501, 46.956463>,  <34.328899, 29.132103, 46.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971458, 29.306501, 46.956463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156413, 0.079734, -0.984468,
		-0.420718, -0.896410, -0.139446,
		-0.893606, 0.435995, -0.106665,
		33.703377, 29.437300, 46.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239376, 28.810781, 46.440407>,  <34.328899, 29.132103, 46.999130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239376, 28.810781, 46.440407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969402, 29.104433, 46.470116>,  <33.807419, 29.280624, 46.487942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969402, 29.104433, 46.470116>,  <34.239376, 28.810781, 46.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969402, 29.104433, 46.470116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092733, 0.015462, -0.995571,
		-0.732025, -0.678834, 0.057642,
		-0.674937, 0.734129, 0.074269,
		33.766922, 29.324671, 46.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704853, 28.624891, 46.046051>,  <34.239376, 28.810781, 46.440407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704853, 28.624891, 46.046051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682224, 29.022924, 46.078568>,  <33.668648, 29.261744, 46.098080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682224, 29.022924, 46.078568>,  <33.704853, 28.624891, 46.046051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682224, 29.022924, 46.078568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053299, 0.078299, -0.995504,
		-0.996975, -0.060648, 0.048607,
		-0.056569, 0.995084, 0.081294,
		33.665253, 29.321449, 46.102955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128731, 28.837645, 45.619831>,  <33.704853, 28.624891, 46.046051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128731, 28.837645, 45.619831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386253, 29.143480, 45.631962>,  <33.540768, 29.326982, 45.639240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386253, 29.143480, 45.631962>,  <33.128731, 28.837645, 45.619831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386253, 29.143480, 45.631962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019735, 0.023032, -0.999540,
		-0.764935, 0.644107, -0.000261,
		0.643805, 0.764589, 0.030329,
		33.579395, 29.372856, 45.641060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873066, 29.272144, 45.130093>,  <33.128731, 28.837645, 45.619831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873066, 29.272144, 45.130093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242790, 29.417006, 45.178261>,  <33.464622, 29.503923, 45.207161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242790, 29.417006, 45.178261>,  <32.873066, 29.272144, 45.130093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242790, 29.417006, 45.178261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019340, 0.359572, -0.932917,
		-0.381161, 0.859972, 0.339359,
		0.924306, 0.362155, 0.120423,
		33.520081, 29.525652, 45.214386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804569, 29.757765, 44.708431>,  <32.873066, 29.272144, 45.130093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804569, 29.757765, 44.708431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198524, 29.757914, 44.777710>,  <33.434898, 29.758003, 44.819279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198524, 29.757914, 44.777710>,  <32.804569, 29.757765, 44.708431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198524, 29.757914, 44.777710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162913, 0.337507, -0.927119,
		-0.058803, 0.941323, 0.332345,
		0.984887, 0.000374, 0.173200,
		33.493992, 29.758026, 44.829670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098080, 30.458990, 44.616539>,  <32.804569, 29.757765, 44.708431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098080, 30.458990, 44.616539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387913, 30.191881, 44.548347>,  <33.561813, 30.031616, 44.507431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387913, 30.191881, 44.548347>,  <33.098080, 30.458990, 44.616539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387913, 30.191881, 44.548347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213284, 0.452486, -0.865891,
		0.655357, 0.591047, 0.470287,
		0.724580, -0.667773, -0.170479,
		33.605286, 29.991549, 44.497204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650967, 30.932081, 44.437546>,  <33.098080, 30.458990, 44.616539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650967, 30.932081, 44.437546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768723, 30.574389, 44.302677>,  <33.839375, 30.359772, 44.221756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768723, 30.574389, 44.302677>,  <33.650967, 30.932081, 44.437546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768723, 30.574389, 44.302677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307627, 0.422693, -0.852465,
		0.904822, 0.147231, 0.399526,
		0.294386, -0.894234, -0.337170,
		33.857037, 30.306118, 44.201527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507614, 30.870066, 44.278378>,  <33.650967, 30.932081, 44.437546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507614, 30.870066, 44.278378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298313, 30.610966, 44.056881>,  <34.172733, 30.455505, 43.923981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298313, 30.610966, 44.056881>,  <34.507614, 30.870066, 44.278378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298313, 30.610966, 44.056881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543022, 0.247355, -0.802460,
		0.656764, -0.720582, 0.222314,
		-0.523248, -0.647748, -0.553746,
		34.141338, 30.416641, 43.890759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913425, 30.429554, 43.814999>,  <34.507614, 30.870066, 44.278378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913425, 30.429554, 43.814999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553947, 30.463911, 43.642967>,  <34.338261, 30.484526, 43.539749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553947, 30.463911, 43.642967>,  <34.913425, 30.429554, 43.814999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553947, 30.463911, 43.642967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432259, 0.339230, -0.835509,
		0.074129, -0.936774, -0.341994,
		-0.898698, 0.085895, -0.430075,
		34.284340, 30.489679, 43.513943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238022, 30.587967, 43.094307>,  <34.913425, 30.429554, 43.814999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238022, 30.587967, 43.094307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841095, 30.565331, 43.050312>,  <34.602940, 30.551748, 43.023914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841095, 30.565331, 43.050312>,  <35.238022, 30.587967, 43.094307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841095, 30.565331, 43.050312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098296, 0.179001, -0.978926,
		0.075086, -0.982220, -0.172063,
		-0.992321, -0.056590, -0.109988,
		34.543400, 30.548353, 43.017315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992100, 30.260387, 42.482029>,  <35.238022, 30.587967, 43.094307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992100, 30.260387, 42.482029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688015, 30.504890, 42.570061>,  <34.505562, 30.651592, 42.622879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688015, 30.504890, 42.570061>,  <34.992100, 30.260387, 42.482029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688015, 30.504890, 42.570061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047296, 0.285783, -0.957126,
		-0.647947, -0.738031, -0.188347,
		-0.760216, 0.611259, 0.220078,
		34.459949, 30.688269, 42.636086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530346, 30.181791, 41.895969>,  <34.992100, 30.260387, 42.482029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530346, 30.181791, 41.895969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455769, 30.531897, 42.074474>,  <34.411022, 30.741961, 42.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455769, 30.531897, 42.074474>,  <34.530346, 30.181791, 41.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455769, 30.531897, 42.074474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250601, 0.396836, -0.883018,
		-0.949967, -0.276468, 0.145354,
		-0.186444, 0.875264, 0.446264,
		34.399834, 30.794476, 42.208355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901878, 30.249495, 41.680183>,  <34.530346, 30.181791, 41.895969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901878, 30.249495, 41.680183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043827, 30.611139, 41.775383>,  <34.128998, 30.828127, 41.832504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043827, 30.611139, 41.775383>,  <33.901878, 30.249495, 41.680183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043827, 30.611139, 41.775383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135887, 0.301746, -0.943655,
		-0.924987, 0.302535, 0.229939,
		0.354872, 0.904114, 0.238000,
		34.150288, 30.882374, 41.846783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367355, 30.722174, 41.361389>,  <33.901878, 30.249495, 41.680183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367355, 30.722174, 41.361389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702709, 30.923674, 41.444668>,  <33.903923, 31.044573, 41.494637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702709, 30.923674, 41.444668>,  <33.367355, 30.722174, 41.361389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702709, 30.923674, 41.444668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035810, 0.330229, -0.943221,
		-0.543900, 0.798239, 0.258820,
		0.838386, 0.503750, 0.208196,
		33.954224, 31.074799, 41.507126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238869, 31.394096, 41.177219>,  <33.367355, 30.722174, 41.361389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238869, 31.394096, 41.177219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634373, 31.450895, 41.195946>,  <33.871674, 31.484974, 41.207180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634373, 31.450895, 41.195946>,  <33.238869, 31.394096, 41.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634373, 31.450895, 41.195946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001439, 0.322134, -0.946693,
		-0.149509, 0.935984, 0.318718,
		0.988759, 0.141997, 0.046815,
		33.931000, 31.493494, 41.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323334, 32.129307, 41.092819>,  <33.238869, 31.394096, 41.177219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323334, 32.129307, 41.092819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629787, 31.909821, 40.958988>,  <33.813660, 31.778128, 40.878689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629787, 31.909821, 40.958988>,  <33.323334, 32.129307, 41.092819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629787, 31.909821, 40.958988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135882, 0.370532, -0.918827,
		0.628150, 0.749409, 0.209316,
		0.766135, -0.548719, -0.334581,
		33.859627, 31.745205, 40.858612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800076, 32.591293, 40.593571>,  <33.323334, 32.129307, 41.092819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800076, 32.591293, 40.593571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871960, 32.206181, 40.512814>,  <33.915089, 31.975113, 40.464359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871960, 32.206181, 40.512814>,  <33.800076, 32.591293, 40.593571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871960, 32.206181, 40.512814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017476, 0.208330, -0.977903,
		0.983565, 0.172207, 0.054264,
		0.179706, -0.962779, -0.201897,
		33.925873, 31.917347, 40.452244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125423, 32.595100, 39.923717>,  <33.800076, 32.591293, 40.593571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125423, 32.595100, 39.923717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008556, 32.213161, 39.945293>,  <33.938435, 31.983999, 39.958241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008556, 32.213161, 39.945293>,  <34.125423, 32.595100, 39.923717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008556, 32.213161, 39.945293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092631, -0.084390, -0.992118,
		0.951870, -0.284870, 0.113104,
		-0.292169, -0.954844, 0.053940,
		33.920906, 31.926708, 39.961475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578663, 32.321724, 39.436920>,  <34.125423, 32.595100, 39.923717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578663, 32.321724, 39.436920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286499, 32.059177, 39.512489>,  <34.111202, 31.901649, 39.557831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286499, 32.059177, 39.512489>,  <34.578663, 32.321724, 39.436920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286499, 32.059177, 39.512489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016151, -0.259927, -0.965493,
		0.682822, -0.708253, 0.179252,
		-0.730406, -0.656365, 0.188923,
		34.067379, 31.862268, 39.569164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733170, 31.718166, 38.975662>,  <34.578663, 32.321724, 39.436920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733170, 31.718166, 38.975662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346558, 31.670921, 39.066761>,  <34.114590, 31.642574, 39.121422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346558, 31.670921, 39.066761>,  <34.733170, 31.718166, 38.975662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346558, 31.670921, 39.066761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196520, -0.229801, -0.953190,
		0.164921, -0.966044, 0.198898,
		-0.966530, -0.118114, 0.227746,
		34.056599, 31.635487, 39.135086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540592, 31.262705, 38.496990>,  <34.733170, 31.718166, 38.975662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540592, 31.262705, 38.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195217, 31.395714, 38.648727>,  <33.987991, 31.475519, 38.739769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195217, 31.395714, 38.648727>,  <34.540592, 31.262705, 38.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195217, 31.395714, 38.648727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414588, -0.039372, -0.909157,
		-0.287379, -0.942274, 0.171854,
		-0.863441, 0.332521, 0.379340,
		33.936184, 31.495470, 38.762531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025688, 30.736898, 38.404079>,  <34.540592, 31.262705, 38.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025688, 30.736898, 38.404079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821892, 31.079737, 38.434555>,  <33.699612, 31.285440, 38.452839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821892, 31.079737, 38.434555>,  <34.025688, 30.736898, 38.404079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821892, 31.079737, 38.434555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481673, -0.210713, -0.850642,
		-0.713028, -0.470093, 0.520196,
		-0.509492, 0.857096, 0.076187,
		33.669044, 31.336864, 38.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296375, 30.588171, 38.146114>,  <34.025688, 30.736898, 38.404079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296375, 30.588171, 38.146114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299862, 30.987572, 38.124496>,  <33.301952, 31.227211, 38.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299862, 30.987572, 38.124496>,  <33.296375, 30.588171, 38.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299862, 30.987572, 38.124496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604909, -0.037776, -0.795398,
		-0.796247, 0.039625, 0.603673,
		0.008713, 0.998500, -0.054049,
		33.302475, 31.287123, 38.108280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634987, 30.846287, 38.075703>,  <33.296375, 30.588171, 38.146114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634987, 30.846287, 38.075703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856941, 31.160219, 37.965324>,  <32.990112, 31.348577, 37.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856941, 31.160219, 37.965324>,  <32.634987, 30.846287, 38.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856941, 31.160219, 37.965324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509721, 0.058592, -0.858342,
		-0.657484, 0.616936, 0.432556,
		0.554887, 0.784829, -0.275942,
		33.023407, 31.395668, 37.882542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155949, 31.254517, 37.842628>,  <32.634987, 30.846287, 38.075703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155949, 31.254517, 37.842628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497837, 31.365108, 37.666893>,  <32.702969, 31.431463, 37.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497837, 31.365108, 37.666893>,  <32.155949, 31.254517, 37.842628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497837, 31.365108, 37.666893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460693, 0.014014, -0.887449,
		-0.239206, 0.960917, 0.139351,
		0.854718, 0.276481, -0.439336,
		32.754253, 31.448053, 37.535091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995543, 31.782415, 37.372131>,  <32.155949, 31.254517, 37.842628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995543, 31.782415, 37.372131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347599, 31.640898, 37.245525>,  <32.558834, 31.555988, 37.169563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347599, 31.640898, 37.245525>,  <31.995543, 31.782415, 37.372131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347599, 31.640898, 37.245525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263224, 0.191146, -0.945609,
		0.395050, 0.915584, 0.075109,
		0.880141, -0.353793, -0.316516,
		32.611641, 31.534760, 37.150570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208878, 32.227551, 36.936443>,  <31.995543, 31.782415, 37.372131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208878, 32.227551, 36.936443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439972, 31.916336, 36.837746>,  <32.578629, 31.729607, 36.778526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439972, 31.916336, 36.837746>,  <32.208878, 32.227551, 36.936443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439972, 31.916336, 36.837746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242487, 0.125043, -0.962062,
		0.779374, 0.615648, -0.116422,
		0.577734, -0.778037, -0.246742,
		32.613293, 31.682924, 36.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712139, 32.538136, 36.508213>,  <32.208878, 32.227551, 36.936443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712139, 32.538136, 36.508213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712337, 32.143932, 36.440353>,  <32.712456, 31.907412, 36.399639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712337, 32.143932, 36.440353>,  <32.712139, 32.538136, 36.508213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712337, 32.143932, 36.440353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042824, 0.169473, -0.984604,
		0.999083, 0.007754, -0.042119,
		0.000497, -0.985504, -0.169650,
		32.712486, 31.848282, 36.389458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212528, 32.434364, 35.960251>,  <32.712139, 32.538136, 36.508213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212528, 32.434364, 35.960251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962975, 32.122272, 35.942345>,  <32.813244, 31.935017, 35.931602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962975, 32.122272, 35.942345>,  <33.212528, 32.434364, 35.960251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962975, 32.122272, 35.942345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114545, 0.147952, -0.982339,
		0.773077, -0.607738, -0.181677,
		-0.623884, -0.780234, -0.044765,
		32.775810, 31.888203, 35.928917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514309, 32.002567, 35.466179>,  <33.212528, 32.434364, 35.960251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514309, 32.002567, 35.466179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132355, 31.884392, 35.478188>,  <32.903183, 31.813486, 35.485394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132355, 31.884392, 35.478188>,  <33.514309, 32.002567, 35.466179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132355, 31.884392, 35.478188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003175, -0.111256, -0.993787,
		0.296943, -0.948862, 0.107175,
		-0.954890, -0.295438, 0.030023,
		32.845886, 31.795761, 35.487194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544495, 31.386042, 35.064453>,  <33.514309, 32.002567, 35.466179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544495, 31.386042, 35.064453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173424, 31.535389, 35.065182>,  <32.950779, 31.624998, 35.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173424, 31.535389, 35.065182>,  <33.544495, 31.386042, 35.064453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173424, 31.535389, 35.065182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096519, -0.235102, -0.967167,
		-0.360685, -0.897397, 0.254137,
		-0.927680, 0.373371, 0.001818,
		32.895119, 31.647400, 35.065727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345654, 31.301216, 35.330353>,  <33.544495, 31.386042, 35.064453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345654, 31.301216, 35.330353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683384, 31.474735, 35.204536>,  <34.886021, 31.578846, 35.129047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683384, 31.474735, 35.204536>,  <34.345654, 31.301216, 35.330353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683384, 31.474735, 35.204536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525178, -0.553506, 0.646389,
		0.106304, -0.710951, -0.695160,
		0.844327, 0.433797, -0.314536,
		34.936684, 31.604874, 35.110176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792160, 30.817148, 35.041466>,  <34.345654, 31.301216, 35.330353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792160, 30.817148, 35.041466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020489, 31.124901, 35.156155>,  <35.157486, 31.309553, 35.224968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020489, 31.124901, 35.156155>,  <34.792160, 30.817148, 35.041466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020489, 31.124901, 35.156155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471449, -0.593031, 0.652726,
		0.672233, -0.237414, -0.701240,
		0.570823, 0.769382, 0.286727,
		35.191734, 31.355715, 35.242172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397911, 30.452482, 35.173298>,  <34.792160, 30.817148, 35.041466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397911, 30.452482, 35.173298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406952, 30.786213, 35.393620>,  <35.412376, 30.986452, 35.525814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406952, 30.786213, 35.393620>,  <35.397911, 30.452482, 35.173298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406952, 30.786213, 35.393620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306015, -0.530277, 0.790671,
		0.951758, 0.150683, -0.267303,
		0.022605, 0.834327, 0.550807,
		35.413734, 31.036510, 35.558861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892555, 30.357609, 35.618370>,  <35.397911, 30.452482, 35.173298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892555, 30.357609, 35.618370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743290, 30.682539, 35.797646>,  <35.653728, 30.877497, 35.905209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743290, 30.682539, 35.797646>,  <35.892555, 30.357609, 35.618370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743290, 30.682539, 35.797646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333202, -0.333505, 0.881902,
		0.865865, 0.478434, -0.146216,
		-0.373168, 0.812327, 0.448185,
		35.631340, 30.926237, 35.932102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426186, 30.598558, 36.099953>,  <35.892555, 30.357609, 35.618370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426186, 30.598558, 36.099953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063309, 30.731218, 36.203503>,  <35.845585, 30.810814, 36.265633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063309, 30.731218, 36.203503>,  <36.426186, 30.598558, 36.099953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063309, 30.731218, 36.203503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151492, -0.316547, 0.936402,
		0.392504, 0.888711, 0.236925,
		-0.907188, 0.331650, 0.258879,
		35.791153, 30.830713, 36.281166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521034, 31.026608, 36.652012>,  <36.426186, 30.598558, 36.099953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521034, 31.026608, 36.652012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145943, 30.890106, 36.677959>,  <35.920887, 30.808205, 36.693527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145943, 30.890106, 36.677959>,  <36.521034, 31.026608, 36.652012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145943, 30.890106, 36.677959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201419, -0.382016, 0.901939,
		-0.283008, 0.858842, 0.426963,
		-0.937730, -0.341254, 0.064873,
		35.864624, 30.787729, 36.697422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376892, 31.226252, 37.292782>,  <36.521034, 31.026608, 36.652012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376892, 31.226252, 37.292782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108620, 30.943169, 37.203941>,  <35.947655, 30.773319, 37.150635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108620, 30.943169, 37.203941>,  <36.376892, 31.226252, 37.292782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108620, 30.943169, 37.203941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077670, -0.364797, 0.927842,
		-0.737665, 0.605038, 0.299631,
		-0.670684, -0.707709, -0.222105,
		35.907413, 30.730856, 37.137310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854134, 31.395615, 37.776569>,  <36.376892, 31.226252, 37.292782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854134, 31.395615, 37.776569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794224, 31.029827, 37.626202>,  <35.758278, 30.810354, 37.535980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794224, 31.029827, 37.626202>,  <35.854134, 31.395615, 37.776569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794224, 31.029827, 37.626202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079531, -0.367832, 0.926484,
		-0.985516, 0.168665, -0.017635,
		-0.149778, -0.914468, -0.375919,
		35.749290, 30.755487, 37.513428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346523, 31.019360, 38.246063>,  <35.854134, 31.395615, 37.776569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346523, 31.019360, 38.246063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529835, 30.713648, 38.064575>,  <35.639820, 30.530220, 37.955681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529835, 30.713648, 38.064575>,  <35.346523, 31.019360, 38.246063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529835, 30.713648, 38.064575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032748, -0.524653, 0.850686,
		-0.888207, -0.374989, -0.265464,
		0.458274, -0.764279, -0.453720,
		35.667316, 30.484364, 37.928459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967808, 30.418087, 38.218163>,  <35.346523, 31.019360, 38.246063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967808, 30.418087, 38.218163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346222, 30.296560, 38.173073>,  <35.573273, 30.223644, 38.146019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346222, 30.296560, 38.173073>,  <34.967808, 30.418087, 38.218163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346222, 30.296560, 38.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089674, -0.579710, 0.809874,
		-0.311399, -0.756063, -0.575672,
		0.946039, -0.303817, -0.112722,
		35.630035, 30.205416, 38.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987518, 29.680563, 38.471371>,  <34.967808, 30.418087, 38.218163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987518, 29.680563, 38.471371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371193, 29.793564, 38.466366>,  <35.601398, 29.861364, 38.463364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371193, 29.793564, 38.466366>,  <34.987518, 29.680563, 38.471371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371193, 29.793564, 38.466366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127076, -0.391100, 0.911533,
		0.252620, -0.875918, -0.411037,
		0.959184, 0.282504, -0.012508,
		35.658947, 29.878315, 38.462612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333275, 29.126646, 38.720230>,  <34.987518, 29.680563, 38.471371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333275, 29.126646, 38.720230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610462, 29.412329, 38.759647>,  <35.776775, 29.583738, 38.783298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610462, 29.412329, 38.759647>,  <35.333275, 29.126646, 38.720230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610462, 29.412329, 38.759647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374068, -0.473005, 0.797709,
		0.616339, -0.515922, -0.594937,
		0.692964, 0.714206, 0.098542,
		35.818352, 29.626591, 38.789211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007114, 28.813614, 38.782856>,  <35.333275, 29.126646, 38.720230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007114, 28.813614, 38.782856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044914, 29.184502, 38.927818>,  <36.067593, 29.407034, 39.014793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044914, 29.184502, 38.927818>,  <36.007114, 28.813614, 38.782856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044914, 29.184502, 38.927818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575996, -0.347835, 0.739757,
		0.811973, 0.138838, -0.566943,
		0.094496, 0.927219, 0.362402,
		36.073261, 29.462667, 39.036537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638218, 28.789011, 39.122120>,  <36.007114, 28.813614, 38.782856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638218, 28.789011, 39.122120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481258, 29.113073, 39.296322>,  <36.387081, 29.307510, 39.400845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481258, 29.113073, 39.296322>,  <36.638218, 28.789011, 39.122120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481258, 29.113073, 39.296322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467585, -0.232037, 0.852950,
		0.792076, 0.538337, -0.287764,
		-0.392402, 0.810156, 0.435509,
		36.363537, 29.356119, 39.426975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183800, 29.039965, 39.498516>,  <36.638218, 28.789011, 39.122120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183800, 29.039965, 39.498516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827465, 29.145693, 39.646324>,  <36.613667, 29.209129, 39.735008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827465, 29.145693, 39.646324>,  <37.183800, 29.039965, 39.498516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827465, 29.145693, 39.646324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346516, -0.130738, 0.928889,
		0.293836, 0.955532, 0.024875,
		-0.890835, 0.264322, 0.369523,
		36.560215, 29.224989, 39.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347767, 29.285183, 40.215393>,  <37.183800, 29.039965, 39.498516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347767, 29.285183, 40.215393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947979, 29.276186, 40.224815>,  <36.708107, 29.270788, 40.230469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947979, 29.276186, 40.224815>,  <37.347767, 29.285183, 40.215393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947979, 29.276186, 40.224815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025919, -0.111523, 0.993424,
		-0.019719, 0.993507, 0.112047,
		-0.999470, -0.022493, 0.023551,
		36.648140, 29.269438, 40.231880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237186, 29.679609, 40.778435>,  <37.347767, 29.285183, 40.215393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237186, 29.679609, 40.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901756, 29.467606, 40.728016>,  <36.700500, 29.340403, 40.697765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901756, 29.467606, 40.728016>,  <37.237186, 29.679609, 40.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901756, 29.467606, 40.728016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125949, -0.036498, 0.991365,
		-0.530033, 0.847206, -0.036148,
		-0.838571, -0.530009, -0.126050,
		36.650185, 29.308603, 40.690201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590363, 30.102114, 41.140385>,  <37.237186, 29.679609, 40.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590363, 30.102114, 41.140385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495228, 29.715355, 41.103401>,  <36.438148, 29.483299, 41.081211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495228, 29.715355, 41.103401>,  <36.590363, 30.102114, 41.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495228, 29.715355, 41.103401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188604, -0.047405, 0.980909,
		-0.952819, 0.250731, -0.171085,
		-0.237834, -0.966895, -0.092457,
		36.423878, 29.425285, 41.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123127, 30.026833, 41.598541>,  <36.590363, 30.102114, 41.140385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123127, 30.026833, 41.598541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188381, 29.633469, 41.566818>,  <36.227531, 29.397449, 41.547787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188381, 29.633469, 41.566818>,  <36.123127, 30.026833, 41.598541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188381, 29.633469, 41.566818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241812, -0.117783, 0.963148,
		-0.956512, -0.137942, -0.257015,
		0.163131, -0.983412, -0.079305,
		36.237320, 29.338446, 41.543026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553596, 29.646261, 41.894062>,  <36.123127, 30.026833, 41.598541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553596, 29.646261, 41.894062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828613, 29.356794, 41.870087>,  <35.993622, 29.183115, 41.855701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828613, 29.356794, 41.870087>,  <35.553596, 29.646261, 41.894062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828613, 29.356794, 41.870087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256562, -0.319310, 0.912259,
		-0.679309, -0.611840, -0.405205,
		0.687542, -0.723667, -0.059935,
		36.034878, 29.139694, 41.852108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278667, 28.969944, 42.212112>,  <35.553596, 29.646261, 41.894062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278667, 28.969944, 42.212112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674973, 28.931820, 42.250706>,  <35.912754, 28.908945, 42.273861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674973, 28.931820, 42.250706>,  <35.278667, 28.969944, 42.212112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674973, 28.931820, 42.250706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120660, -0.294594, 0.947975,
		-0.061927, -0.950858, -0.303372,
		0.990760, -0.095310, 0.096487,
		35.972202, 28.903227, 42.279652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226215, 28.588066, 42.832874>,  <35.278667, 28.969944, 42.212112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226215, 28.588066, 42.832874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614803, 28.668894, 42.783211>,  <35.847958, 28.717390, 42.753414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614803, 28.668894, 42.783211>,  <35.226215, 28.588066, 42.832874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614803, 28.668894, 42.783211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146863, -0.101494, 0.983936,
		0.186221, -0.974098, -0.128275,
		0.971469, 0.202069, -0.124159,
		35.906242, 28.729515, 42.745964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534599, 28.179228, 43.363789>,  <35.226215, 28.588066, 42.832874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534599, 28.179228, 43.363789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795338, 28.465963, 43.264801>,  <35.951778, 28.638004, 43.205406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795338, 28.465963, 43.264801>,  <35.534599, 28.179228, 43.363789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795338, 28.465963, 43.264801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191796, 0.159886, 0.968323,
		0.733699, -0.678659, -0.033267,
		0.651843, 0.716838, -0.247473,
		35.990891, 28.681015, 43.190559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236012, 28.116949, 43.759293>,  <35.534599, 28.179228, 43.363789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236012, 28.116949, 43.759293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160622, 28.500767, 43.675625>,  <36.115387, 28.731058, 43.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160622, 28.500767, 43.675625>,  <36.236012, 28.116949, 43.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160622, 28.500767, 43.675625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099151, 0.230491, 0.968010,
		0.977059, 0.161709, -0.138583,
		-0.188478, 0.959544, -0.209170,
		36.104076, 28.788630, 43.612873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706196, 28.406788, 44.119072>,  <36.236012, 28.116949, 43.759293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706196, 28.406788, 44.119072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470314, 28.720778, 44.043106>,  <36.328785, 28.909172, 43.997524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470314, 28.720778, 44.043106>,  <36.706196, 28.406788, 44.119072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470314, 28.720778, 44.043106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149859, 0.337428, 0.929346,
		0.793596, 0.519575, -0.316617,
		-0.589701, 0.784974, -0.189918,
		36.293404, 28.956270, 43.986130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055218, 29.028603, 44.304401>,  <36.706196, 28.406788, 44.119072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055218, 29.028603, 44.304401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668652, 29.131287, 44.309258>,  <36.436714, 29.192898, 44.312172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668652, 29.131287, 44.309258>,  <37.055218, 29.028603, 44.304401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668652, 29.131287, 44.309258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139234, 0.483289, 0.864318,
		0.216012, 0.836978, -0.502799,
		-0.966412, 0.256709, 0.012140,
		36.378727, 29.208300, 44.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038437, 29.761654, 44.372726>,  <37.055218, 29.028603, 44.304401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038437, 29.761654, 44.372726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658947, 29.687603, 44.475216>,  <36.431255, 29.643171, 44.536709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658947, 29.687603, 44.475216>,  <37.038437, 29.761654, 44.372726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658947, 29.687603, 44.475216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115204, 0.552327, 0.825629,
		-0.294369, 0.812811, -0.502678,
		-0.948723, -0.185129, 0.256227,
		36.374329, 29.632065, 44.552082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781818, 30.406124, 44.654449>,  <37.038437, 29.761654, 44.372726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781818, 30.406124, 44.654449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563877, 30.094868, 44.779430>,  <36.433113, 29.908113, 44.854420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563877, 30.094868, 44.779430>,  <36.781818, 30.406124, 44.654449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563877, 30.094868, 44.779430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032449, 0.391909, 0.919431,
		-0.837903, 0.490816, -0.238783,
		-0.544853, -0.778143, 0.312456,
		36.400421, 29.861425, 44.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369324, 30.676107, 45.126709>,  <36.781818, 30.406124, 44.654449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369324, 30.676107, 45.126709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342278, 30.290554, 45.229748>,  <36.326050, 30.059221, 45.291573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342278, 30.290554, 45.229748>,  <36.369324, 30.676107, 45.126709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342278, 30.290554, 45.229748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180039, 0.242161, 0.953386,
		-0.981333, 0.110844, 0.157162,
		-0.067619, -0.963884, 0.257596,
		36.321991, 30.001389, 45.307026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008015, 30.748419, 45.696114>,  <36.369324, 30.676107, 45.126709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008015, 30.748419, 45.696114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160973, 30.379072, 45.709797>,  <36.252747, 30.157465, 45.718006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160973, 30.379072, 45.709797>,  <36.008015, 30.748419, 45.696114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160973, 30.379072, 45.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176252, 0.109239, 0.978265,
		-0.907033, -0.368053, 0.204517,
		0.382395, -0.923365, 0.034213,
		36.275692, 30.102062, 45.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698391, 30.480007, 46.243885>,  <36.008015, 30.748419, 45.696114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698391, 30.480007, 46.243885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024719, 30.256630, 46.183777>,  <36.220516, 30.122604, 46.147713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024719, 30.256630, 46.183777>,  <35.698391, 30.480007, 46.243885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024719, 30.256630, 46.183777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184921, 0.005700, 0.982737,
		-0.547947, -0.829523, 0.107918,
		0.815818, -0.558444, -0.150272,
		36.269466, 30.089096, 46.138695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683258, 30.097750, 46.720589>,  <35.698391, 30.480007, 46.243885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683258, 30.097750, 46.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065800, 30.078871, 46.605236>,  <36.295322, 30.067543, 46.536026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065800, 30.078871, 46.605236>,  <35.683258, 30.097750, 46.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065800, 30.078871, 46.605236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283498, -0.089416, 0.954795,
		-0.070844, -0.994876, -0.072134,
		0.956352, -0.047192, -0.288380,
		36.352707, 30.064711, 46.518723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037434, 29.773932, 47.291378>,  <35.683258, 30.097750, 46.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037434, 29.773932, 47.291378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339016, 29.936724, 47.085114>,  <36.519966, 30.034399, 46.961353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339016, 29.936724, 47.085114>,  <36.037434, 29.773932, 47.291378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339016, 29.936724, 47.085114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494108, 0.165951, 0.853416,
		0.432900, -0.898235, -0.075973,
		0.753959, 0.406982, -0.515665,
		36.565205, 30.058819, 46.930412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536503, 29.262547, 47.285591>,  <36.037434, 29.773932, 47.291378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536503, 29.262547, 47.285591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682587, 29.633444, 47.252502>,  <36.770237, 29.855982, 47.232651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682587, 29.633444, 47.252502>,  <36.536503, 29.262547, 47.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682587, 29.633444, 47.252502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503486, -0.121998, 0.855347,
		0.783023, -0.354030, -0.511408,
		0.365209, 0.927243, -0.082722,
		36.792149, 29.911617, 47.227684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219959, 29.147364, 47.453365>,  <36.536503, 29.262547, 47.285591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219959, 29.147364, 47.453365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136433, 29.536898, 47.489227>,  <37.086319, 29.770618, 47.510742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136433, 29.536898, 47.489227>,  <37.219959, 29.147364, 47.453365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136433, 29.536898, 47.489227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580873, 0.049758, 0.812472,
		0.786755, 0.221732, -0.576066,
		-0.208815, 0.973837, 0.089651,
		37.073788, 29.829048, 47.516121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912720, 29.520428, 47.743996>,  <37.219959, 29.147364, 47.453365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912720, 29.520428, 47.743996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602726, 29.768507, 47.792580>,  <37.416729, 29.917355, 47.821732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602726, 29.768507, 47.792580>,  <37.912720, 29.520428, 47.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602726, 29.768507, 47.792580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269566, 0.150572, 0.951137,
		0.571607, 0.769857, -0.283875,
		-0.774983, 0.620200, 0.121460,
		37.370232, 29.954567, 47.829018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248379, 30.049496, 48.036705>,  <37.912720, 29.520428, 47.743996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248379, 30.049496, 48.036705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858593, 30.061247, 48.125740>,  <37.624722, 30.068296, 48.179161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858593, 30.061247, 48.125740>,  <38.248379, 30.049496, 48.036705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858593, 30.061247, 48.125740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223670, 0.213291, 0.951041,
		-0.019538, 0.976547, -0.214416,
		-0.974469, 0.029377, 0.222592,
		37.566254, 30.070061, 48.192516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197865, 30.583214, 48.537300>,  <38.248379, 30.049496, 48.036705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197865, 30.583214, 48.537300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858028, 30.377144, 48.582531>,  <37.654125, 30.253502, 48.609669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858028, 30.377144, 48.582531>,  <38.197865, 30.583214, 48.537300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858028, 30.377144, 48.582531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062687, 0.114236, 0.991474,
		-0.523701, 0.849437, -0.064759,
		-0.849592, -0.515177, 0.113074,
		37.603149, 30.222591, 48.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865757, 30.963705, 49.115292>,  <38.197865, 30.583214, 48.537300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865757, 30.963705, 49.115292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234863, 31.085606, 49.209633>,  <38.456329, 31.158747, 49.266235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234863, 31.085606, 49.209633>,  <37.865757, 30.963705, 49.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234863, 31.085606, 49.209633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235317, 0.039040, -0.971134,
		-0.305163, 0.951631, -0.035689,
		0.922768, 0.304752, 0.235849,
		38.511692, 31.177031, 49.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002129, 31.472721, 48.734940>,  <37.865757, 30.963705, 49.115292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002129, 31.472721, 48.734940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356483, 31.306284, 48.816986>,  <38.569096, 31.206421, 48.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356483, 31.306284, 48.816986>,  <38.002129, 31.472721, 48.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356483, 31.306284, 48.816986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212565, -0.028908, -0.976719,
		0.412335, 0.908863, 0.062838,
		0.885887, -0.416092, 0.205112,
		38.622250, 31.181456, 48.878521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558693, 31.805197, 48.315838>,  <38.002129, 31.472721, 48.734940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558693, 31.805197, 48.315838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723709, 31.452484, 48.407295>,  <38.822720, 31.240856, 48.462170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723709, 31.452484, 48.407295>,  <38.558693, 31.805197, 48.315838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723709, 31.452484, 48.407295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404308, -0.047683, -0.913379,
		0.816302, 0.469245, 0.336840,
		0.412537, -0.881780, 0.228643,
		38.847469, 31.187950, 48.475887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218006, 31.854578, 48.009670>,  <38.558693, 31.805197, 48.315838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218006, 31.854578, 48.009670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154053, 31.465128, 48.074772>,  <39.115681, 31.231457, 48.113834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154053, 31.465128, 48.074772>,  <39.218006, 31.854578, 48.009670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154053, 31.465128, 48.074772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546850, -0.224625, -0.806535,
		0.821823, -0.039950, 0.568341,
		-0.159884, -0.973626, 0.162756,
		39.106087, 31.173040, 48.123600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828453, 31.662560, 48.024487>,  <39.218006, 31.854578, 48.009670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828453, 31.662560, 48.024487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626690, 31.332287, 47.923435>,  <39.505634, 31.134123, 47.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626690, 31.332287, 47.923435>,  <39.828453, 31.662560, 48.024487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626690, 31.332287, 47.923435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578509, -0.105955, -0.808765,
		0.641016, -0.554094, 0.531110,
		-0.504406, -0.825683, -0.252630,
		39.475368, 31.084581, 47.847645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357624, 31.196972, 47.768108>,  <39.828453, 31.662560, 48.024487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357624, 31.196972, 47.768108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006496, 31.074051, 47.621140>,  <39.795818, 31.000298, 47.532959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006496, 31.074051, 47.621140>,  <40.357624, 31.196972, 47.768108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006496, 31.074051, 47.621140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416099, -0.109265, -0.902731,
		0.237265, -0.945318, 0.223784,
		-0.877819, -0.307303, -0.367421,
		39.743149, 30.981859, 47.510914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553894, 30.789463, 47.229866>,  <40.357624, 31.196972, 47.768108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553894, 30.789463, 47.229866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167641, 30.845812, 47.142498>,  <39.935890, 30.879622, 47.090076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167641, 30.845812, 47.142498>,  <40.553894, 30.789463, 47.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167641, 30.845812, 47.142498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193031, -0.174045, -0.965633,
		-0.174045, -0.974610, 0.140871,
		0.965633, -0.140871, 0.218422,
		39.877953, 30.888073, 47.076973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222866, 30.088295, 46.887863>,  <40.553894, 30.789463, 47.229866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222866, 30.088295, 46.887863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979500, 30.384766, 46.774380>,  <39.833481, 30.562649, 46.706287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979500, 30.384766, 46.774380>,  <40.222866, 30.088295, 46.887863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979500, 30.384766, 46.774380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165540, -0.231104, -0.958742,
		-0.776164, -0.630276, 0.017912,
		-0.608412, 0.741176, -0.283711,
		39.796974, 30.607119, 46.689266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709808, 29.737453, 46.448784>,  <40.222866, 30.088295, 46.887863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709808, 29.737453, 46.448784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746864, 30.125145, 46.357555>,  <39.769096, 30.357759, 46.302818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746864, 30.125145, 46.357555>,  <39.709808, 29.737453, 46.448784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746864, 30.125145, 46.357555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027023, -0.231415, -0.972480,
		-0.995333, 0.083928, -0.047630,
		0.092640, 0.969228, -0.228067,
		39.774658, 30.415913, 46.289135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243912, 29.734619, 45.888885>,  <39.709808, 29.737453, 46.448784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243912, 29.734619, 45.888885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481316, 30.054848, 45.855843>,  <39.623760, 30.246984, 45.836018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481316, 30.054848, 45.855843>,  <39.243912, 29.734619, 45.888885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481316, 30.054848, 45.855843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153270, 0.011674, -0.988115,
		-0.790094, 0.599121, 0.129633,
		0.593514, 0.800573, -0.082604,
		39.659370, 30.295019, 45.831062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801743, 30.302105, 45.704102>,  <39.243912, 29.734619, 45.888885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801743, 30.302105, 45.704102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155663, 30.454182, 45.596336>,  <39.368015, 30.545427, 45.531677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155663, 30.454182, 45.596336>,  <38.801743, 30.302105, 45.704102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155663, 30.454182, 45.596336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329910, 0.102814, -0.938397,
		-0.329072, 0.919175, 0.216399,
		0.884800, 0.380192, -0.269412,
		39.421104, 30.568239, 45.515514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630039, 30.985651, 45.362000>,  <38.801743, 30.302105, 45.704102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630039, 30.985651, 45.362000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988548, 30.854877, 45.242130>,  <39.203655, 30.776413, 45.170208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988548, 30.854877, 45.242130>,  <38.630039, 30.985651, 45.362000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988548, 30.854877, 45.242130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216037, 0.268264, -0.938809,
		0.387317, 0.906173, 0.169810,
		0.896277, -0.326932, -0.299670,
		39.257431, 30.756798, 45.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003330, 31.543156, 44.835930>,  <38.630039, 30.985651, 45.362000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003330, 31.543156, 44.835930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175293, 31.188490, 44.767799>,  <39.278469, 30.975691, 44.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175293, 31.188490, 44.767799>,  <39.003330, 31.543156, 44.835930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175293, 31.188490, 44.767799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006846, 0.185444, -0.982631,
		0.902848, 0.423604, 0.073653,
		0.429905, -0.886662, -0.170327,
		39.304264, 30.922491, 44.716702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376495, 31.648664, 44.317982>,  <39.003330, 31.543156, 44.835930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376495, 31.648664, 44.317982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378654, 31.249020, 44.301277>,  <39.379948, 31.009232, 44.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378654, 31.249020, 44.301277>,  <39.376495, 31.648664, 44.317982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378654, 31.249020, 44.301277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200034, 0.039844, -0.978978,
		0.979774, 0.013634, -0.199642,
		0.005393, -0.999113, -0.041766,
		39.380272, 30.949286, 44.288746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852512, 31.393467, 43.799393>,  <39.376495, 31.648664, 44.317982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852512, 31.393467, 43.799393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568562, 31.116644, 43.851753>,  <39.398190, 30.950550, 43.883167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568562, 31.116644, 43.851753>,  <39.852512, 31.393467, 43.799393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568562, 31.116644, 43.851753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190876, 0.010135, -0.981562,
		0.677969, -0.721773, -0.139291,
		-0.709877, -0.692056, 0.130898,
		39.355598, 30.909027, 43.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948421, 30.913948, 43.267185>,  <39.852512, 31.393467, 43.799393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948421, 30.913948, 43.267185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571476, 30.855793, 43.387730>,  <39.345310, 30.820900, 43.460056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571476, 30.855793, 43.387730>,  <39.948421, 30.913948, 43.267185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571476, 30.855793, 43.387730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272667, -0.188335, -0.943495,
		0.193927, -0.971284, 0.137838,
		-0.942361, -0.145385, 0.301360,
		39.288769, 30.812178, 43.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565228, 30.553038, 42.711433>,  <39.948421, 30.913948, 43.267185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565228, 30.553038, 42.711433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238895, 30.657087, 42.918030>,  <39.043098, 30.719517, 43.041988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238895, 30.657087, 42.918030>,  <39.565228, 30.553038, 42.711433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238895, 30.657087, 42.918030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545194, -0.048133, -0.836927,
		-0.192844, -0.964375, 0.181086,
		-0.815828, 0.260123, 0.516489,
		38.994148, 30.735125, 43.072975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081673, 30.141554, 42.372875>,  <39.565228, 30.553038, 42.711433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081673, 30.141554, 42.372875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830940, 30.383032, 42.569904>,  <38.680500, 30.527918, 42.688122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830940, 30.383032, 42.569904>,  <39.081673, 30.141554, 42.372875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830940, 30.383032, 42.569904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582064, 0.057437, -0.811112,
		-0.517957, -0.795143, 0.315386,
		-0.626835, 0.603696, 0.492574,
		38.642891, 30.564140, 42.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476063, 29.998009, 42.167339>,  <39.081673, 30.141554, 42.372875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476063, 29.998009, 42.167339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415783, 30.366182, 42.311615>,  <38.379616, 30.587086, 42.398178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415783, 30.366182, 42.311615>,  <38.476063, 29.998009, 42.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415783, 30.366182, 42.311615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489717, 0.247434, -0.836035,
		-0.858759, -0.302625, 0.413463,
		-0.150700, 0.920432, 0.360686,
		38.370571, 30.642311, 42.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773739, 30.008249, 42.225410>,  <38.476063, 29.998009, 42.167339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773739, 30.008249, 42.225410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946541, 30.367022, 42.187717>,  <38.050224, 30.582285, 42.165100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946541, 30.367022, 42.187717>,  <37.773739, 30.008249, 42.225410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946541, 30.367022, 42.187717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582503, 0.197730, -0.788411,
		-0.688519, 0.395493, 0.607888,
		0.432008, 0.896933, -0.094235,
		38.076145, 30.636101, 42.159447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300175, 30.301424, 41.897690>,  <37.773739, 30.008249, 42.225410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300175, 30.301424, 41.897690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597443, 30.565586, 41.854679>,  <37.775803, 30.724083, 41.828873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597443, 30.565586, 41.854679>,  <37.300175, 30.301424, 41.897690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597443, 30.565586, 41.854679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355749, 0.253888, -0.899435,
		-0.566691, 0.706687, 0.423620,
		0.743171, 0.660405, -0.107527,
		37.820393, 30.763708, 41.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017231, 31.045912, 41.774643>,  <37.300175, 30.301424, 41.897690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017231, 31.045912, 41.774643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395214, 31.029243, 41.644825>,  <37.622002, 31.019243, 41.566936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395214, 31.029243, 41.644825>,  <37.017231, 31.045912, 41.774643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395214, 31.029243, 41.644825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236924, 0.596958, -0.766491,
		0.225676, 0.801190, 0.554225,
		0.944954, -0.041670, -0.324540,
		37.678699, 31.016743, 41.547462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994289, 31.610929, 41.302673>,  <37.017231, 31.045912, 41.774643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994289, 31.610929, 41.302673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321266, 31.409046, 41.191643>,  <37.517452, 31.287916, 41.125023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321266, 31.409046, 41.191643>,  <36.994289, 31.610929, 41.302673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321266, 31.409046, 41.191643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058730, 0.406360, -0.911824,
		0.573003, 0.761669, 0.302536,
		0.817447, -0.504709, -0.277579,
		37.566502, 31.257633, 41.108368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424274, 32.102028, 40.949249>,  <36.994289, 31.610929, 41.302673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424274, 32.102028, 40.949249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566959, 31.746479, 40.834248>,  <37.652569, 31.533150, 40.765247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566959, 31.746479, 40.834248>,  <37.424274, 32.102028, 40.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566959, 31.746479, 40.834248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175623, 0.366068, -0.913866,
		0.917559, 0.275493, 0.286687,
		0.356711, -0.888875, -0.287506,
		37.673973, 31.479816, 40.747997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138954, 32.076569, 40.660851>,  <37.424274, 32.102028, 40.949249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138954, 32.076569, 40.660851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946690, 31.777225, 40.478016>,  <37.831333, 31.597620, 40.368317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946690, 31.777225, 40.478016>,  <38.138954, 32.076569, 40.660851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946690, 31.777225, 40.478016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203377, 0.411901, -0.888243,
		0.852997, -0.519903, -0.045785,
		-0.480659, -0.748357, -0.457087,
		37.802490, 31.552719, 40.340889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543140, 32.011082, 40.123375>,  <38.138954, 32.076569, 40.660851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543140, 32.011082, 40.123375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226883, 31.784437, 40.030567>,  <38.037128, 31.648451, 39.974884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226883, 31.784437, 40.030567>,  <38.543140, 32.011082, 40.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226883, 31.784437, 40.030567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135485, 0.207638, -0.968778,
		0.597095, -0.797395, -0.087401,
		-0.790646, -0.566611, -0.232015,
		37.989689, 31.614454, 39.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780193, 31.517776, 39.736725>,  <38.543140, 32.011082, 40.123375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780193, 31.517776, 39.736725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403576, 31.504080, 39.602673>,  <38.177605, 31.495861, 39.522240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403576, 31.504080, 39.602673>,  <38.780193, 31.517776, 39.736725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403576, 31.504080, 39.602673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299723, 0.369022, -0.879767,
		0.153797, -0.928790, -0.337189,
		-0.941548, -0.034242, -0.335134,
		38.121113, 31.493807, 39.502132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910290, 31.347090, 39.136589>,  <38.780193, 31.517776, 39.736725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910290, 31.347090, 39.136589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525963, 31.454903, 39.110748>,  <38.295364, 31.519590, 39.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525963, 31.454903, 39.110748>,  <38.910290, 31.347090, 39.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525963, 31.454903, 39.110748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151857, 0.316927, -0.936214,
		-0.231867, -0.909345, -0.345441,
		-0.960821, 0.269535, -0.064605,
		38.237717, 31.535763, 39.091366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629383, 30.999973, 38.555420>,  <38.910290, 31.347090, 39.136589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629383, 30.999973, 38.555420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407391, 31.327276, 38.615345>,  <38.274193, 31.523659, 38.651302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407391, 31.327276, 38.615345>,  <38.629383, 30.999973, 38.555420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407391, 31.327276, 38.615345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019681, 0.167131, -0.985738,
		-0.831628, -0.550018, -0.076651,
		-0.554984, 0.818259, 0.149815,
		38.240894, 31.572754, 38.660290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386108, 31.173483, 37.893082>,  <38.629383, 30.999973, 38.555420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386108, 31.173483, 37.893082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325325, 31.505863, 38.107159>,  <38.288853, 31.705292, 38.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325325, 31.505863, 38.107159>,  <38.386108, 31.173483, 37.893082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325325, 31.505863, 38.107159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020004, 0.538785, -0.842205,
		-0.988184, -0.138688, -0.065252,
		-0.151961, 0.830949, 0.535194,
		38.279736, 31.755148, 38.267715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961590, 31.566370, 37.378006>,  <38.386108, 31.173483, 37.893082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961590, 31.566370, 37.378006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115448, 31.799034, 37.664703>,  <38.207764, 31.938633, 37.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115448, 31.799034, 37.664703>,  <37.961590, 31.566370, 37.378006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115448, 31.799034, 37.664703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073788, 0.754619, -0.652001,
		-0.920109, 0.303678, 0.247344,
		0.384650, 0.581661, 0.716740,
		38.230843, 31.973532, 37.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596714, 32.160023, 37.323696>,  <37.961590, 31.566370, 37.378006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596714, 32.160023, 37.323696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919327, 32.266621, 37.534782>,  <38.112896, 32.330582, 37.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919327, 32.266621, 37.534782>,  <37.596714, 32.160023, 37.323696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919327, 32.266621, 37.534782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170620, 0.749724, -0.639377,
		-0.566036, 0.605716, 0.559205,
		0.806531, 0.266498, 0.527718,
		38.161285, 32.346569, 37.693096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535191, 32.894505, 37.351360>,  <37.596714, 32.160023, 37.323696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535191, 32.894505, 37.351360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916359, 32.814625, 37.442623>,  <38.145061, 32.766697, 37.497383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916359, 32.814625, 37.442623>,  <37.535191, 32.894505, 37.351360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916359, 32.814625, 37.442623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302393, 0.681133, -0.666795,
		-0.022249, 0.704399, 0.709456,
		0.952924, -0.199699, 0.228160,
		38.202236, 32.754715, 37.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717651, 33.530518, 37.472271>,  <37.535191, 32.894505, 37.351360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717651, 33.530518, 37.472271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040493, 33.315472, 37.374660>,  <38.234200, 33.186443, 37.316093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040493, 33.315472, 37.374660>,  <37.717651, 33.530518, 37.472271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040493, 33.315472, 37.374660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257258, 0.692251, -0.674245,
		0.531412, 0.481411, 0.697026,
		0.807106, -0.537617, -0.244024,
		38.282623, 33.154186, 37.301453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227558, 33.943375, 37.665047>,  <37.717651, 33.530518, 37.472271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227558, 33.943375, 37.665047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355534, 33.693211, 37.380371>,  <38.432320, 33.543110, 37.209568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355534, 33.693211, 37.380371>,  <38.227558, 33.943375, 37.665047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355534, 33.693211, 37.380371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340122, 0.776915, -0.529831,
		0.884282, -0.072546, 0.461282,
		0.319940, -0.625412, -0.711687,
		38.451515, 33.505589, 37.166866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916599, 34.010750, 37.453732>,  <38.227558, 33.943375, 37.665047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916599, 34.010750, 37.453732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794437, 33.851044, 37.107941>,  <38.721142, 33.755219, 36.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794437, 33.851044, 37.107941>,  <38.916599, 34.010750, 37.453732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794437, 33.851044, 37.107941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601635, 0.622780, -0.500180,
		0.738083, -0.672854, 0.050015,
		-0.305400, -0.399265, -0.864475,
		38.702816, 33.731262, 36.848598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421188, 34.191486, 37.106003>,  <38.916599, 34.010750, 37.453732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421188, 34.191486, 37.106003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158886, 34.071377, 36.828926>,  <39.001503, 33.999310, 36.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158886, 34.071377, 36.828926>,  <39.421188, 34.191486, 37.106003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158886, 34.071377, 36.828926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330985, 0.710291, -0.621237,
		0.678551, -0.636651, -0.366393,
		-0.655757, -0.300271, -0.692691,
		38.962158, 33.981297, 36.621117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755066, 34.177223, 36.525940>,  <39.421188, 34.191486, 37.106003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755066, 34.177223, 36.525940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376766, 34.201550, 36.398281>,  <39.149784, 34.216145, 36.321686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376766, 34.201550, 36.398281>,  <39.755066, 34.177223, 36.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376766, 34.201550, 36.398281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275856, 0.669259, -0.689925,
		0.171632, -0.740536, -0.649730,
		-0.945752, 0.060819, -0.319147,
		39.093040, 34.219795, 36.302536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725403, 33.963356, 35.823029>,  <39.755066, 34.177223, 36.525940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725403, 33.963356, 35.823029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383911, 34.164173, 35.878311>,  <39.179016, 34.284664, 35.911480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383911, 34.164173, 35.878311>,  <39.725403, 33.963356, 35.823029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383911, 34.164173, 35.878311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145845, 0.485340, -0.862076,
		-0.499876, -0.715822, -0.487569,
		-0.853729, 0.502041, 0.138210,
		39.127792, 34.314785, 35.919773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337734, 33.952751, 35.160618>,  <39.725403, 33.963356, 35.823029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337734, 33.952751, 35.160618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187508, 34.271046, 35.350670>,  <39.097370, 34.462021, 35.464703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187508, 34.271046, 35.350670>,  <39.337734, 33.952751, 35.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187508, 34.271046, 35.350670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163143, 0.561419, -0.811291,
		-0.912324, -0.227178, -0.340669,
		-0.375565, 0.795738, 0.475134,
		39.074837, 34.509766, 35.493210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987373, 34.342709, 34.622490>,  <39.337734, 33.952751, 35.160618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987373, 34.342709, 34.622490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056248, 34.590847, 34.928570>,  <39.097572, 34.739731, 35.112217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056248, 34.590847, 34.928570>,  <38.987373, 34.342709, 34.622490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056248, 34.590847, 34.928570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136460, 0.754290, -0.642203,
		-0.975568, 0.214995, 0.045223,
		0.172182, 0.620342, 0.765199,
		39.107903, 34.776951, 35.158131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664982, 34.855732, 34.409561>,  <38.987373, 34.342709, 34.622490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664982, 34.855732, 34.409561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935284, 34.985115, 34.674511>,  <39.097466, 35.062744, 34.833481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935284, 34.985115, 34.674511>,  <38.664982, 34.855732, 34.409561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935284, 34.985115, 34.674511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182531, 0.797167, -0.575506,
		-0.714174, 0.509801, 0.479644,
		0.675750, 0.323461, 0.662370,
		39.138008, 35.082153, 34.873222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600227, 35.529934, 34.337704>,  <38.664982, 34.855732, 34.409561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600227, 35.529934, 34.337704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918869, 35.485718, 34.575428>,  <39.110054, 35.459187, 34.718063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918869, 35.485718, 34.575428>,  <38.600227, 35.529934, 34.337704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918869, 35.485718, 34.575428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453409, 0.759483, -0.466482,
		-0.399801, 0.641067, 0.655128,
		0.796605, -0.110541, 0.594307,
		39.157852, 35.452557, 34.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854797, 36.234249, 34.456871>,  <38.600227, 35.529934, 34.337704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854797, 36.234249, 34.456871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166805, 35.991199, 34.516693>,  <39.354008, 35.845371, 34.552586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166805, 35.991199, 34.516693>,  <38.854797, 36.234249, 34.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166805, 35.991199, 34.516693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582268, 0.617233, -0.529139,
		0.229208, 0.499818, 0.835252,
		0.780018, -0.607624, 0.149554,
		39.400810, 35.808914, 34.561558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341995, 36.659786, 34.756233>,  <38.854797, 36.234249, 34.456871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341995, 36.659786, 34.756233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559372, 36.396336, 34.548046>,  <39.689796, 36.238266, 34.423134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559372, 36.396336, 34.548046>,  <39.341995, 36.659786, 34.756233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559372, 36.396336, 34.548046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722017, 0.683006, -0.110427,
		0.428214, -0.315777, 0.846710,
		0.543438, -0.658625, -0.520469,
		39.722404, 36.198750, 34.391907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929192, 36.846809, 34.879204>,  <39.341995, 36.659786, 34.756233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929192, 36.846809, 34.879204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985840, 36.634892, 34.544716>,  <40.019829, 36.507740, 34.344025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985840, 36.634892, 34.544716>,  <39.929192, 36.846809, 34.879204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985840, 36.634892, 34.544716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710294, 0.642769, -0.286931,
		0.689510, -0.553326, 0.467339,
		0.141625, -0.529791, -0.836220,
		40.028328, 36.475956, 34.293850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585651, 36.516071, 34.808418>,  <39.929192, 36.846809, 34.879204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585651, 36.516071, 34.808418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430584, 36.631077, 34.458092>,  <40.337543, 36.700081, 34.247898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430584, 36.631077, 34.458092>,  <40.585651, 36.516071, 34.808418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430584, 36.631077, 34.458092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735004, 0.669812, -0.105453,
		0.556312, -0.684608, -0.470987,
		-0.387667, 0.287512, -0.875815,
		40.314285, 36.717331, 34.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356445, 36.492558, 34.895813>,  <40.585651, 36.516071, 34.808418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356445, 36.492558, 34.895813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751606, 36.507694, 34.955975>,  <41.988701, 36.516777, 34.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751606, 36.507694, 34.955975>,  <41.356445, 36.492558, 34.895813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751606, 36.507694, 34.955975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151147, 0.017702, 0.988353,
		0.034763, -0.999126, 0.023212,
		0.987900, 0.037866, 0.150400,
		42.047977, 36.519047, 35.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491695, 36.055649, 35.354809>,  <41.356445, 36.492558, 34.895813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491695, 36.055649, 35.354809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810024, 36.292473, 35.405624>,  <42.001022, 36.434566, 35.436111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810024, 36.292473, 35.405624>,  <41.491695, 36.055649, 35.354809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810024, 36.292473, 35.405624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158658, 0.001414, 0.987333,
		0.584378, -0.805895, 0.095060,
		0.795820, 0.592057, 0.127036,
		42.048771, 36.470089, 35.443733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897480, 35.708599, 35.798183>,  <41.491695, 36.055649, 35.354809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897480, 35.708599, 35.798183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048473, 36.077045, 35.836231>,  <42.139069, 36.298115, 35.859062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048473, 36.077045, 35.836231>,  <41.897480, 35.708599, 35.798183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048473, 36.077045, 35.836231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015984, -0.096226, 0.995231,
		0.925878, -0.377204, -0.021601,
		0.377484, 0.921117, 0.095123,
		42.161720, 36.353382, 35.864769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570862, 35.671986, 36.185719>,  <41.897480, 35.708599, 35.798183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570862, 35.671986, 36.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426849, 36.043392, 36.222034>,  <42.340443, 36.266235, 36.243824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426849, 36.043392, 36.222034>,  <42.570862, 35.671986, 36.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426849, 36.043392, 36.222034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153488, -0.037040, 0.987456,
		0.920229, 0.369447, -0.129180,
		-0.360028, 0.928513, 0.090791,
		42.318840, 36.321945, 36.249271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969112, 35.882420, 36.600418>,  <42.570862, 35.671986, 36.185719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969112, 35.882420, 36.600418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661812, 36.134117, 36.647488>,  <42.477432, 36.285133, 36.675728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661812, 36.134117, 36.647488>,  <42.969112, 35.882420, 36.600418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661812, 36.134117, 36.647488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090350, -0.075402, 0.993051,
		0.633740, 0.773545, 0.001076,
		-0.768251, 0.629240, 0.117675,
		42.431335, 36.322887, 36.682789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177334, 36.491539, 37.075253>,  <42.969112, 35.882420, 36.600418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177334, 36.491539, 37.075253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778152, 36.467216, 37.083195>,  <42.538643, 36.452621, 37.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778152, 36.467216, 37.083195>,  <43.177334, 36.491539, 37.075253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778152, 36.467216, 37.083195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009427, 0.167162, 0.985884,
		-0.063265, 0.984052, -0.166247,
		-0.997952, -0.060805, 0.019853,
		42.478767, 36.448975, 37.089149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991283, 37.058826, 37.490696>,  <43.177334, 36.491539, 37.075253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991283, 37.058826, 37.490696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700691, 36.784393, 37.475079>,  <42.526337, 36.619736, 37.465710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700691, 36.784393, 37.475079>,  <42.991283, 37.058826, 37.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700691, 36.784393, 37.475079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150832, 0.103767, 0.983098,
		-0.670432, 0.720088, -0.178867,
		-0.726478, -0.686079, -0.039044,
		42.482746, 36.578571, 37.463364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560974, 37.330513, 37.886837>,  <42.991283, 37.058826, 37.490696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560974, 37.330513, 37.886837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453724, 36.945644, 37.867516>,  <42.389374, 36.714722, 37.855923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453724, 36.945644, 37.867516>,  <42.560974, 37.330513, 37.886837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453724, 36.945644, 37.867516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126041, -0.014671, 0.991916,
		-0.955103, 0.272046, -0.117339,
		-0.268126, -0.962172, -0.048301,
		42.373287, 36.656994, 37.853024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991043, 37.384842, 38.232414>,  <42.560974, 37.330513, 37.886837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991043, 37.384842, 38.232414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109230, 37.003124, 38.250370>,  <42.180141, 36.774094, 38.261143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109230, 37.003124, 38.250370>,  <41.991043, 37.384842, 38.232414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109230, 37.003124, 38.250370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141197, 0.090096, 0.985873,
		-0.944862, -0.284952, 0.161364,
		0.295465, -0.954298, 0.044894,
		42.197868, 36.716835, 38.263840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596283, 37.072815, 38.808010>,  <41.991043, 37.384842, 38.232414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596283, 37.072815, 38.808010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939098, 36.876247, 38.746056>,  <42.144787, 36.758308, 38.708881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939098, 36.876247, 38.746056>,  <41.596283, 37.072815, 38.808010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939098, 36.876247, 38.746056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225496, 0.087437, 0.970313,
		-0.463285, -0.866524, 0.185750,
		0.857041, -0.491417, -0.154890,
		42.196209, 36.728821, 38.699589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632717, 36.669777, 39.395527>,  <41.596283, 37.072815, 38.808010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632717, 36.669777, 39.395527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007183, 36.671112, 39.254910>,  <42.231865, 36.671913, 39.170540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007183, 36.671112, 39.254910>,  <41.632717, 36.669777, 39.395527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007183, 36.671112, 39.254910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330742, 0.330620, 0.883912,
		0.119172, -0.943758, 0.308413,
		0.936167, 0.003333, -0.351541,
		42.288033, 36.672112, 39.149448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947063, 36.306084, 39.913830>,  <41.632717, 36.669777, 39.395527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947063, 36.306084, 39.913830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235767, 36.501091, 39.717304>,  <42.408989, 36.618095, 39.599388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235767, 36.501091, 39.717304>,  <41.947063, 36.306084, 39.913830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235767, 36.501091, 39.717304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472597, 0.171499, 0.864431,
		0.505687, -0.856103, -0.106620,
		0.721756, 0.487520, -0.491317,
		42.452293, 36.647346, 39.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498177, 36.081150, 40.275642>,  <41.947063, 36.306084, 39.913830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498177, 36.081150, 40.275642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624393, 36.406952, 40.080906>,  <42.700123, 36.602432, 39.964066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624393, 36.406952, 40.080906>,  <42.498177, 36.081150, 40.275642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624393, 36.406952, 40.080906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633007, 0.201531, 0.747455,
		0.706918, -0.544029, -0.451995,
		0.315546, 0.814505, -0.486840,
		42.719059, 36.651302, 39.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285648, 36.140091, 40.119381>,  <42.498177, 36.081150, 40.275642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285648, 36.140091, 40.119381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160858, 36.520126, 40.120586>,  <43.085983, 36.748146, 40.121311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160858, 36.520126, 40.120586>,  <43.285648, 36.140091, 40.119381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160858, 36.520126, 40.120586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646942, 0.210105, 0.733023,
		0.695800, 0.230638, -0.680197,
		-0.311975, 0.950086, 0.003018,
		43.067265, 36.805153, 40.121490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849129, 36.514824, 40.217537>,  <43.285648, 36.140091, 40.119381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849129, 36.514824, 40.217537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559929, 36.770458, 40.322479>,  <43.386410, 36.923840, 40.385445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559929, 36.770458, 40.322479>,  <43.849129, 36.514824, 40.217537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559929, 36.770458, 40.322479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638704, 0.473626, 0.606411,
		0.263290, 0.606007, -0.750622,
		-0.723004, 0.639088, 0.262358,
		43.343029, 36.962185, 40.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059387, 37.143848, 40.064217>,  <43.849129, 36.514824, 40.217537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059387, 37.143848, 40.064217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796333, 37.183220, 40.362968>,  <43.638500, 37.206844, 40.542217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796333, 37.183220, 40.362968>,  <44.059387, 37.143848, 40.064217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796333, 37.183220, 40.362968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721690, 0.366645, 0.587141,
		-0.216046, 0.925140, -0.312155,
		-0.657638, 0.098429, 0.746876,
		43.599041, 37.212749, 40.587032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152473, 37.846359, 40.305523>,  <44.059387, 37.143848, 40.064217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152473, 37.846359, 40.305523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935333, 37.715443, 40.614895>,  <43.805050, 37.636890, 40.800518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935333, 37.715443, 40.614895>,  <44.152473, 37.846359, 40.305523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935333, 37.715443, 40.614895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572752, 0.529258, 0.625973,
		-0.614220, 0.782793, -0.099850,
		-0.542853, -0.327295, 0.773426,
		43.772476, 37.617252, 40.846924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940365, 38.443661, 40.708530>,  <44.152473, 37.846359, 40.305523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940365, 38.443661, 40.708530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894203, 38.128799, 40.950874>,  <43.866508, 37.939880, 41.096283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894203, 38.128799, 40.950874>,  <43.940365, 38.443661, 40.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894203, 38.128799, 40.950874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499068, 0.481418, 0.720533,
		-0.858844, 0.385516, 0.337288,
		-0.115400, -0.787155, 0.605862,
		43.859585, 37.892654, 41.132633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622025, 38.703682, 41.402706>,  <43.940365, 38.443661, 40.708530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622025, 38.703682, 41.402706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832417, 38.373894, 41.486221>,  <43.958652, 38.176022, 41.536331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832417, 38.373894, 41.486221>,  <43.622025, 38.703682, 41.402706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832417, 38.373894, 41.486221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519035, 0.505644, 0.689149,
		-0.673758, -0.254107, 0.693887,
		0.525978, -0.824472, 0.208791,
		43.990211, 38.126553, 41.548859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498016, 38.651466, 42.140526>,  <43.622025, 38.703682, 41.402706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498016, 38.651466, 42.140526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799362, 38.406086, 42.045769>,  <43.980171, 38.258858, 41.988914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799362, 38.406086, 42.045769>,  <43.498016, 38.651466, 42.140526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799362, 38.406086, 42.045769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454281, 0.225024, 0.861970,
		-0.475470, -0.756995, 0.448204,
		0.753364, -0.613451, -0.236896,
		44.025372, 38.222050, 41.974701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602058, 38.179676, 42.665325>,  <43.498016, 38.651466, 42.140526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602058, 38.179676, 42.665325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960491, 38.208805, 42.490177>,  <44.175552, 38.226280, 42.385086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960491, 38.208805, 42.490177>,  <43.602058, 38.179676, 42.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960491, 38.208805, 42.490177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410025, 0.242096, 0.879357,
		0.170043, -0.967516, 0.187080,
		0.896083, 0.072821, -0.437872,
		44.229317, 38.230652, 42.358814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156254, 37.671986, 43.076668>,  <43.602058, 38.179676, 42.665325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156254, 37.671986, 43.076668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315132, 37.985321, 42.885414>,  <44.410461, 38.173325, 42.770664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315132, 37.985321, 42.885414>,  <44.156254, 37.671986, 43.076668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315132, 37.985321, 42.885414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399053, 0.321741, 0.858627,
		0.826432, -0.531845, -0.184799,
		0.397199, 0.783341, -0.478132,
		44.434292, 38.220322, 42.741974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390938, 36.947010, 43.127529>,  <44.156254, 37.671986, 43.076668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390938, 36.947010, 43.127529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435650, 36.632565, 42.884377>,  <44.462475, 36.443897, 42.738483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435650, 36.632565, 42.884377>,  <44.390938, 36.947010, 43.127529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435650, 36.632565, 42.884377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371390, -0.534345, 0.759306,
		-0.921724, -0.310636, 0.232229,
		0.111777, -0.786118, -0.607885,
		44.469185, 36.396729, 42.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013454, 36.381020, 43.363029>,  <44.390938, 36.947010, 43.127529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013454, 36.381020, 43.363029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326378, 36.230900, 43.164173>,  <44.514133, 36.140827, 43.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326378, 36.230900, 43.164173>,  <44.013454, 36.381020, 43.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326378, 36.230900, 43.164173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229369, -0.568466, 0.790086,
		-0.579147, -0.732107, -0.358619,
		0.782291, -0.375319, -0.497148,
		44.561069, 36.118309, 43.015030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941525, 35.659641, 43.594227>,  <44.013454, 36.381020, 43.363029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941525, 35.659641, 43.594227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302662, 35.810024, 43.510780>,  <44.519344, 35.900253, 43.460712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302662, 35.810024, 43.510780>,  <43.941525, 35.659641, 43.594227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302662, 35.810024, 43.510780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327137, -0.285796, 0.900723,
		0.279011, -0.881463, -0.381020,
		0.902848, 0.375958, -0.208619,
		44.573517, 35.922810, 43.448196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560539, 35.144794, 43.601475>,  <43.941525, 35.659641, 43.594227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560539, 35.144794, 43.601475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655735, 35.515591, 43.717438>,  <44.712852, 35.738068, 43.787014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655735, 35.515591, 43.717438>,  <44.560539, 35.144794, 43.601475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655735, 35.515591, 43.717438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315291, -0.356048, 0.879671,
		0.918670, -0.117945, -0.377007,
		0.237985, 0.926995, 0.289904,
		44.727131, 35.793690, 43.804409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225410, 35.212860, 43.987087>,  <44.560539, 35.144794, 43.601475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225410, 35.212860, 43.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001820, 35.526627, 44.094593>,  <44.867664, 35.714886, 44.159096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001820, 35.526627, 44.094593>,  <45.225410, 35.212860, 43.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001820, 35.526627, 44.094593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318253, -0.096343, 0.943098,
		0.765675, 0.612706, -0.195789,
		-0.558979, 0.784416, 0.268763,
		44.834126, 35.761951, 44.175220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342106, 35.732525, 44.373817>,  <45.225410, 35.212860, 43.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342106, 35.732525, 44.373817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276180, 35.783428, 44.765049>,  <45.236626, 35.813969, 44.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276180, 35.783428, 44.765049>,  <45.342106, 35.732525, 44.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276180, 35.783428, 44.765049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544421, 0.815157, -0.197799,
		-0.822461, -0.565088, -0.065067,
		-0.164814, 0.127259, 0.978081,
		45.226738, 35.821606, 45.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841743, 36.215595, 44.034122>,  <45.342106, 35.732525, 44.373817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841743, 36.215595, 44.034122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962730, 35.834900, 44.013306>,  <46.035324, 35.606483, 44.000816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962730, 35.834900, 44.013306>,  <45.841743, 36.215595, 44.034122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962730, 35.834900, 44.013306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105425, 0.020856, -0.994208,
		0.947310, 0.306206, -0.094028,
		0.302471, -0.951737, -0.052039,
		46.053471, 35.549377, 43.997692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477318, 36.124557, 43.599712>,  <45.841743, 36.215595, 44.034122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477318, 36.124557, 43.599712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221806, 35.816853, 43.594109>,  <46.068501, 35.632229, 43.590748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221806, 35.816853, 43.594109>,  <46.477318, 36.124557, 43.599712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221806, 35.816853, 43.594109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025332, -0.002835, -0.999675,
		0.768975, -0.638924, 0.021298,
		-0.638776, -0.769265, -0.014005,
		46.030174, 35.586075, 43.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785000, 35.588276, 43.253925>,  <46.477318, 36.124557, 43.599712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785000, 35.588276, 43.253925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388237, 35.555492, 43.215153>,  <46.150177, 35.535820, 43.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388237, 35.555492, 43.215153>,  <46.785000, 35.588276, 43.253925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388237, 35.555492, 43.215153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094721, 0.030399, -0.995040,
		0.084505, -0.996172, -0.022389,
		-0.991911, -0.081965, -0.096928,
		46.090664, 35.530903, 43.186073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741238, 35.016983, 42.827995>,  <46.785000, 35.588276, 43.253925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741238, 35.016983, 42.827995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437431, 35.274364, 42.789841>,  <46.255146, 35.428795, 42.766949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437431, 35.274364, 42.789841>,  <46.741238, 35.016983, 42.827995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437431, 35.274364, 42.789841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029216, -0.112748, -0.993194,
		-0.649831, -0.757135, 0.066835,
		-0.759517, 0.643456, -0.095387,
		46.209576, 35.467400, 42.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156521, 34.701359, 42.498108>,  <46.741238, 35.016983, 42.827995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156521, 34.701359, 42.498108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093803, 35.089340, 42.423706>,  <46.056171, 35.322128, 42.379063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093803, 35.089340, 42.423706>,  <46.156521, 34.701359, 42.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093803, 35.089340, 42.423706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134729, -0.207584, -0.968894,
		-0.978399, -0.126855, 0.163229,
		-0.156793, 0.969957, -0.186009,
		46.046764, 35.380329, 42.367905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559719, 34.790421, 42.083862>,  <46.156521, 34.701359, 42.498108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559719, 34.790421, 42.083862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705803, 35.152172, 41.995567>,  <45.793453, 35.369221, 41.942589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705803, 35.152172, 41.995567>,  <45.559719, 34.790421, 42.083862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705803, 35.152172, 41.995567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301189, -0.109575, -0.947248,
		-0.880855, 0.412429, 0.232370,
		0.365211, 0.904376, -0.220739,
		45.815365, 35.423485, 41.929344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306110, 34.887737, 41.504490>,  <45.559719, 34.790421, 42.083862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306110, 34.887737, 41.504490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556114, 35.199753, 41.492554>,  <45.706116, 35.386963, 41.485394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556114, 35.199753, 41.492554>,  <45.306110, 34.887737, 41.504490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556114, 35.199753, 41.492554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127961, 0.064668, -0.989669,
		-0.770054, 0.622375, 0.140233,
		0.625014, 0.780043, -0.029842,
		45.743618, 35.433765, 41.483601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966434, 35.408665, 41.063728>,  <45.306110, 34.887737, 41.504490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966434, 35.408665, 41.063728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353004, 35.511421, 41.065704>,  <45.584946, 35.573074, 41.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353004, 35.511421, 41.065704>,  <44.966434, 35.408665, 41.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353004, 35.511421, 41.065704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029728, 0.130900, -0.990950,
		-0.255216, 0.957534, 0.134143,
		0.966427, 0.256894, 0.004942,
		45.642933, 35.588490, 41.067188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029202, 36.117535, 40.853523>,  <44.966434, 35.408665, 41.063728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029202, 36.117535, 40.853523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378258, 35.932785, 40.790062>,  <45.587692, 35.821934, 40.751987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378258, 35.932785, 40.790062>,  <45.029202, 36.117535, 40.853523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378258, 35.932785, 40.790062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010943, 0.343268, -0.939174,
		0.488242, 0.817824, 0.304603,
		0.872639, -0.461878, -0.158649,
		45.640049, 35.794220, 40.742466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432117, 36.624523, 40.642300>,  <45.029202, 36.117535, 40.853523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432117, 36.624523, 40.642300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618118, 36.298031, 40.505161>,  <45.729717, 36.102135, 40.422878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618118, 36.298031, 40.505161>,  <45.432117, 36.624523, 40.642300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618118, 36.298031, 40.505161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047164, 0.409547, -0.911069,
		0.884055, 0.407475, 0.228935,
		0.464998, -0.816233, -0.342844,
		45.757618, 36.053162, 40.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953800, 36.839855, 40.247013>,  <45.432117, 36.624523, 40.642300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953800, 36.839855, 40.247013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909382, 36.460659, 40.127689>,  <45.882732, 36.233143, 40.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909382, 36.460659, 40.127689>,  <45.953800, 36.839855, 40.247013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909382, 36.460659, 40.127689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070169, 0.306893, -0.949154,
		0.991335, -0.084467, -0.100598,
		-0.111045, -0.947988, -0.298307,
		45.876068, 36.176262, 40.038197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288849, 36.738827, 39.681351>,  <45.953800, 36.839855, 40.247013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288849, 36.738827, 39.681351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038258, 36.428135, 39.655369>,  <45.887905, 36.241718, 39.639778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038258, 36.428135, 39.655369>,  <46.288849, 36.738827, 39.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038258, 36.428135, 39.655369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087381, 0.152796, -0.984387,
		0.774529, -0.611017, -0.163594,
		-0.626473, -0.776731, -0.064954,
		45.850315, 36.195114, 39.635883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440186, 36.351490, 39.095795>,  <46.288849, 36.738827, 39.681351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440186, 36.351490, 39.095795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061897, 36.255260, 39.183186>,  <45.834923, 36.197521, 39.235622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061897, 36.255260, 39.183186>,  <46.440186, 36.351490, 39.095795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061897, 36.255260, 39.183186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218410, -0.027303, -0.975475,
		0.240642, -0.970246, -0.026724,
		-0.945721, -0.240577, 0.218481,
		45.778179, 36.183086, 39.248730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308132, 35.825253, 38.553303>,  <46.440186, 36.351490, 39.095795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.308132, 35.825253, 38.553303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962357, 35.970200, 38.692696>,  <45.754890, 36.057167, 38.776329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962357, 35.970200, 38.692696>,  <46.308132, 35.825253, 38.553303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962357, 35.970200, 38.692696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362677, 0.030538, -0.931415,
		-0.348154, -0.931536, 0.105023,
		-0.864439, 0.362365, 0.348478,
		45.703026, 36.078911, 38.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835880, 35.460602, 38.247730>,  <46.308132, 35.825253, 38.553303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835880, 35.460602, 38.247730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620071, 35.782848, 38.345623>,  <45.490585, 35.976196, 38.404358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620071, 35.782848, 38.345623>,  <45.835880, 35.460602, 38.247730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620071, 35.782848, 38.345623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298635, 0.088672, -0.950239,
		-0.787230, -0.585763, 0.192745,
		-0.539524, 0.805617, 0.244734,
		45.458214, 36.024532, 38.419044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189449, 35.387939, 37.935909>,  <45.835880, 35.460602, 38.247730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189449, 35.387939, 37.935909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167091, 35.780216, 38.010864>,  <45.153675, 36.015583, 38.055840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167091, 35.780216, 38.010864>,  <45.189449, 35.387939, 37.935909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167091, 35.780216, 38.010864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428255, 0.145992, -0.891787,
		-0.901927, -0.130098, 0.411827,
		-0.055896, 0.980694, 0.187389,
		45.150322, 36.074425, 38.067081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483475, 35.624962, 37.721725>,  <45.189449, 35.387939, 37.935909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483475, 35.624962, 37.721725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708099, 35.954952, 37.696228>,  <44.842873, 36.152946, 37.680931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708099, 35.954952, 37.696228>,  <44.483475, 35.624962, 37.721725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708099, 35.954952, 37.696228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426156, 0.222329, -0.876904,
		-0.709255, 0.519597, 0.476420,
		0.561559, 0.824978, -0.063741,
		44.876568, 36.202446, 37.677105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086300, 36.127731, 37.379707>,  <44.483475, 35.624962, 37.721725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086300, 36.127731, 37.379707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460464, 36.264698, 37.344463>,  <44.684963, 36.346878, 37.323318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460464, 36.264698, 37.344463>,  <44.086300, 36.127731, 37.379707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460464, 36.264698, 37.344463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161057, 0.190813, -0.968324,
		-0.314754, 0.919969, 0.233637,
		0.935409, 0.342413, -0.088109,
		44.741089, 36.367420, 37.318031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978981, 36.734371, 36.981567>,  <44.086300, 36.127731, 37.379707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978981, 36.734371, 36.981567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371754, 36.681870, 36.927044>,  <44.607418, 36.650368, 36.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371754, 36.681870, 36.927044>,  <43.978981, 36.734371, 36.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371754, 36.681870, 36.927044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093009, 0.292554, -0.951715,
		0.164791, 0.947199, 0.275061,
		0.981933, -0.131251, -0.136309,
		44.666332, 36.642494, 36.886150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158756, 37.269272, 36.576488>,  <43.978981, 36.734371, 36.981567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158756, 37.269272, 36.576488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455708, 37.007793, 36.517765>,  <44.633881, 36.850906, 36.482529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455708, 37.007793, 36.517765>,  <44.158756, 37.269272, 36.576488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455708, 37.007793, 36.517765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026131, 0.247215, -0.968608,
		0.669469, 0.715239, 0.200610,
		0.742380, -0.653695, -0.146813,
		44.678421, 36.811684, 36.473721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771214, 37.637833, 36.353035>,  <44.158756, 37.269272, 36.576488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771214, 37.637833, 36.353035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802872, 37.256580, 36.236233>,  <44.821869, 37.027828, 36.166149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802872, 37.256580, 36.236233>,  <44.771214, 37.637833, 36.353035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802872, 37.256580, 36.236233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098132, 0.298955, -0.949208,
		0.992021, 0.046472, 0.117195,
		0.079148, -0.953135, -0.292009,
		44.826614, 36.970638, 36.148628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161388, 37.672726, 35.758446>,  <44.771214, 37.637833, 36.353035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161388, 37.672726, 35.758446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053516, 37.290592, 35.710094>,  <44.988792, 37.061314, 35.681084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053516, 37.290592, 35.710094>,  <45.161388, 37.672726, 35.758446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053516, 37.290592, 35.710094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019443, 0.120101, -0.992572,
		0.962755, -0.270022, -0.013814,
		-0.269676, -0.955334, -0.120878,
		44.972614, 37.003990, 35.673832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595490, 37.280949, 35.172012>,  <45.161388, 37.672726, 35.758446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595490, 37.280949, 35.172012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264618, 37.058800, 35.206268>,  <45.066093, 36.925510, 35.226822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264618, 37.058800, 35.206268>,  <45.595490, 37.280949, 35.172012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264618, 37.058800, 35.206268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161276, 0.088642, -0.982920,
		0.538293, -0.826866, -0.162891,
		-0.827183, -0.555370, 0.085638,
		45.016464, 36.892189, 35.231960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709549, 36.584991, 34.808964>,  <45.595490, 37.280949, 35.172012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709549, 36.584991, 34.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324013, 36.691574, 34.809902>,  <45.092690, 36.755524, 34.810467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324013, 36.691574, 34.809902>,  <45.709549, 36.584991, 34.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324013, 36.691574, 34.809902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000065, 0.009051, -0.999959,
		-0.266472, -0.963803, -0.008741,
		-0.963843, 0.266462, 0.002350,
		45.034859, 36.771511, 34.810608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155380, 36.020565, 35.076893>,  <45.709549, 36.584991, 34.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155380, 36.020565, 35.076893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525795, 36.090805, 34.943253>,  <46.748043, 36.132950, 34.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525795, 36.090805, 34.943253>,  <46.155380, 36.020565, 35.076893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525795, 36.090805, 34.943253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351987, -0.082209, 0.932388,
		0.136266, -0.981022, -0.137940,
		0.926033, 0.175606, -0.334105,
		46.803604, 36.143486, 34.843021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561359, 35.384731, 35.285053>,  <46.155380, 36.020565, 35.076893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561359, 35.384731, 35.285053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717434, 35.751411, 35.250599>,  <46.811081, 35.971420, 35.229927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717434, 35.751411, 35.250599>,  <46.561359, 35.384731, 35.285053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717434, 35.751411, 35.250599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275993, -0.027193, 0.960775,
		0.878396, -0.398658, -0.263612,
		0.390190, 0.916696, -0.086140,
		46.834492, 36.026421, 35.224758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344688, 35.517242, 35.255436>,  <46.561359, 35.384731, 35.285053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344688, 35.517242, 35.255436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123196, 35.790970, 35.445213>,  <46.990299, 35.955204, 35.559078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123196, 35.790970, 35.445213>,  <47.344688, 35.517242, 35.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123196, 35.790970, 35.445213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462751, -0.220795, 0.858552,
		0.692275, 0.694954, -0.194407,
		-0.553730, 0.684316, 0.474441,
		46.957077, 35.996265, 35.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548946, 35.047703, 34.663349>,  <47.344688, 35.517242, 35.255436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548946, 35.047703, 34.663349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582291, 34.990307, 35.057804>,  <47.602295, 34.955868, 35.294476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582291, 34.990307, 35.057804>,  <47.548946, 35.047703, 34.663349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582291, 34.990307, 35.057804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713383, -0.682360, -0.159591,
		0.695799, 0.716796, 0.045481,
		0.083359, -0.143488, 0.986135,
		47.607300, 34.947262, 35.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.018417, 35.415401, 44.390675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625145, 35.342369, 44.388706>,  <35.389183, 35.298550, 44.387527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625145, 35.342369, 44.388706>,  <36.018417, 35.415401, 44.390675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625145, 35.342369, 44.388706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055506, 0.324324, -0.944316,
		0.174007, -0.928159, -0.329002,
		-0.983179, -0.182579, -0.004916,
		35.330193, 35.287594, 44.387230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943794, 35.204235, 43.737736>,  <36.018417, 35.415401, 44.390675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943794, 35.204235, 43.737736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565163, 35.257702, 43.855125>,  <35.337982, 35.289783, 43.925560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565163, 35.257702, 43.855125>,  <35.943794, 35.204235, 43.737736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565163, 35.257702, 43.855125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273061, 0.151890, -0.949930,
		-0.171549, -0.979318, -0.107277,
		-0.946578, 0.133666, 0.293470,
		35.281189, 35.297802, 43.943165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461754, 34.738346, 43.369186>,  <35.943794, 35.204235, 43.737736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461754, 34.738346, 43.369186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279083, 35.075695, 43.482445>,  <35.169479, 35.278103, 43.550400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279083, 35.075695, 43.482445>,  <35.461754, 34.738346, 43.369186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279083, 35.075695, 43.482445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247669, 0.185167, -0.950985,
		-0.854463, -0.504419, 0.124315,
		-0.456676, 0.843371, 0.283147,
		35.142082, 35.328705, 43.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816685, 34.740746, 42.922768>,  <35.461754, 34.738346, 43.369186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816685, 34.740746, 42.922768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852715, 35.112614, 43.065655>,  <34.874332, 35.335735, 43.151386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852715, 35.112614, 43.065655>,  <34.816685, 34.740746, 42.922768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852715, 35.112614, 43.065655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201059, 0.368267, -0.907720,
		-0.975429, 0.009941, 0.220089,
		0.090076, 0.929667, 0.357220,
		34.879738, 35.391514, 43.172821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244694, 35.090519, 42.685516>,  <34.816685, 34.740746, 42.922768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244694, 35.090519, 42.685516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500000, 35.391777, 42.749256>,  <34.653183, 35.572533, 42.787498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500000, 35.391777, 42.749256>,  <34.244694, 35.090519, 42.685516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500000, 35.391777, 42.749256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121563, 0.303000, -0.945206,
		-0.760159, 0.583920, 0.284948,
		0.638263, 0.753146, 0.159345,
		34.691479, 35.617722, 42.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959385, 35.678867, 42.345547>,  <34.244694, 35.090519, 42.685516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959385, 35.678867, 42.345547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344162, 35.775269, 42.397053>,  <34.575027, 35.833111, 42.427956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344162, 35.775269, 42.397053>,  <33.959385, 35.678867, 42.345547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344162, 35.775269, 42.397053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007531, 0.494452, -0.869172,
		-0.273142, 0.835125, 0.477450,
		0.961944, 0.241003, 0.128767,
		34.632744, 35.847569, 42.435684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954037, 36.441128, 42.227463>,  <33.959385, 35.678867, 42.345547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954037, 36.441128, 42.227463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313335, 36.272476, 42.177864>,  <34.528915, 36.171284, 42.148106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313335, 36.272476, 42.177864>,  <33.954037, 36.441128, 42.227463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313335, 36.272476, 42.177864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121313, 0.509046, -0.852148,
		0.422409, 0.750400, 0.508400,
		0.898250, -0.421631, -0.123992,
		34.582809, 36.145988, 42.140667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299400, 36.966351, 41.939014>,  <33.954037, 36.441128, 42.227463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299400, 36.966351, 41.939014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.508240, 36.636230, 41.852947>,  <34.633541, 36.438160, 41.801308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.508240, 36.636230, 41.852947>,  <34.299400, 36.966351, 41.939014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508240, 36.636230, 41.852947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147907, 0.336072, -0.930150,
		0.839964, 0.453802, 0.297530,
		0.522096, -0.825299, -0.215168,
		34.664867, 36.388641, 41.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761940, 37.261505, 41.557308>,  <34.299400, 36.966351, 41.939014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761940, 37.261505, 41.557308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765263, 36.873337, 41.460804>,  <34.767258, 36.640434, 41.402901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765263, 36.873337, 41.460804>,  <34.761940, 37.261505, 41.557308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765263, 36.873337, 41.460804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019817, 0.241065, -0.970307,
		0.999769, 0.012842, -0.017228,
		0.008307, -0.970424, -0.241264,
		34.767754, 36.582211, 41.388424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067982, 37.287617, 40.976849>,  <34.761940, 37.261505, 41.557308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067982, 37.287617, 40.976849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952229, 36.904736, 40.978302>,  <34.882778, 36.675007, 40.979176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952229, 36.904736, 40.978302>,  <35.067982, 37.287617, 40.976849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952229, 36.904736, 40.978302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221383, -0.070619, -0.972627,
		0.931261, -0.280657, 0.232345,
		-0.289383, -0.957207, 0.003632,
		34.865414, 36.617573, 40.979393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530972, 36.960205, 40.721794>,  <35.067982, 37.287617, 40.976849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530972, 36.960205, 40.721794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229099, 36.710148, 40.642139>,  <35.047974, 36.560116, 40.594349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229099, 36.710148, 40.642139>,  <35.530972, 36.960205, 40.721794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229099, 36.710148, 40.642139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404810, -0.204822, -0.891166,
		0.516316, -0.753159, 0.407639,
		-0.754683, -0.625140, -0.199133,
		35.002693, 36.522606, 40.582401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800537, 36.388325, 40.427521>,  <35.530972, 36.960205, 40.721794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800537, 36.388325, 40.427521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418839, 36.388317, 40.307907>,  <35.189819, 36.388313, 40.236141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418839, 36.388317, 40.307907>,  <35.800537, 36.388325, 40.427521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418839, 36.388317, 40.307907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289023, -0.256596, -0.922293,
		-0.076714, -0.966519, 0.244860,
		-0.954244, -0.000017, -0.299030,
		35.132565, 36.388313, 40.218197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654705, 35.757973, 40.091171>,  <35.800537, 36.388325, 40.427521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654705, 35.757973, 40.091171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356945, 35.979183, 39.941490>,  <35.178288, 36.111912, 39.851681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356945, 35.979183, 39.941490>,  <35.654705, 35.757973, 40.091171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356945, 35.979183, 39.941490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346098, -0.159694, -0.924508,
		-0.571037, -0.817714, -0.072525,
		-0.744401, 0.553029, -0.374200,
		35.133625, 36.145092, 39.829231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488274, 35.364216, 39.495728>,  <35.654705, 35.757973, 40.091171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488274, 35.364216, 39.495728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341930, 35.735149, 39.464211>,  <35.254124, 35.957710, 39.445301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341930, 35.735149, 39.464211>,  <35.488274, 35.364216, 39.495728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341930, 35.735149, 39.464211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422294, 0.089965, -0.901983,
		-0.829348, -0.363269, -0.424520,
		-0.365855, 0.927330, -0.078794,
		35.232174, 36.013348, 39.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326469, 35.360802, 38.856598>,  <35.488274, 35.364216, 39.495728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326469, 35.360802, 38.856598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313499, 35.753002, 38.934120>,  <35.305717, 35.988323, 38.980633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313499, 35.753002, 38.934120>,  <35.326469, 35.360802, 38.856598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313499, 35.753002, 38.934120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390547, 0.190920, -0.900568,
		-0.920012, 0.046490, -0.389123,
		-0.032424, 0.980504, 0.193805,
		35.303772, 36.047153, 38.992260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925819, 35.720528, 38.322495>,  <35.326469, 35.360802, 38.856598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925819, 35.720528, 38.322495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136314, 36.026272, 38.471535>,  <35.262611, 36.209717, 38.560959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136314, 36.026272, 38.471535>,  <34.925819, 35.720528, 38.322495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136314, 36.026272, 38.471535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288725, 0.251533, -0.923780,
		-0.799818, 0.593708, -0.088322,
		0.526240, 0.764357, 0.372599,
		35.294186, 36.255577, 38.583313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714500, 36.173279, 37.920029>,  <34.925819, 35.720528, 38.322495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714500, 36.173279, 37.920029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.056984, 36.316410, 38.069092>,  <35.262474, 36.402290, 38.158527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.056984, 36.316410, 38.069092>,  <34.714500, 36.173279, 37.920029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056984, 36.316410, 38.069092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232624, 0.377033, -0.896511,
		-0.461303, 0.854285, 0.239577,
		0.856204, 0.357832, 0.372653,
		35.313847, 36.423759, 38.180889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758350, 36.876087, 37.709873>,  <34.714500, 36.173279, 37.920029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758350, 36.876087, 37.709873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138035, 36.761795, 37.762573>,  <35.365845, 36.693222, 37.794193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138035, 36.761795, 37.762573>,  <34.758350, 36.876087, 37.709873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138035, 36.761795, 37.762573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226965, 0.331782, -0.915646,
		0.217912, 0.899044, 0.379781,
		0.949211, -0.285727, 0.131753,
		35.422798, 36.676079, 37.802097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195637, 37.438324, 37.500763>,  <34.758350, 36.876087, 37.709873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195637, 37.438324, 37.500763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419262, 37.108566, 37.465366>,  <35.553436, 36.910713, 37.444126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419262, 37.108566, 37.465366>,  <35.195637, 37.438324, 37.500763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419262, 37.108566, 37.465366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440606, 0.385805, -0.810568,
		0.702367, 0.414165, 0.578920,
		0.559059, -0.824392, -0.088493,
		35.586979, 36.861248, 37.438820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794834, 37.735104, 37.308834>,  <35.195637, 37.438324, 37.500763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794834, 37.735104, 37.308834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841904, 37.345100, 37.233463>,  <35.870144, 37.111099, 37.188240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841904, 37.345100, 37.233463>,  <35.794834, 37.735104, 37.308834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841904, 37.345100, 37.233463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449641, 0.221491, -0.865312,
		0.885424, 0.017103, 0.464470,
		0.117675, -0.975012, -0.188423,
		35.877205, 37.052597, 37.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370075, 37.710522, 36.937683>,  <35.794834, 37.735104, 37.308834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370075, 37.710522, 36.937683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227802, 37.351002, 36.835194>,  <36.142441, 37.135288, 36.773701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227802, 37.351002, 36.835194>,  <36.370075, 37.710522, 36.937683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227802, 37.351002, 36.835194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553039, 0.018603, -0.832948,
		0.753419, -0.437966, 0.490454,
		-0.355679, -0.898799, -0.256228,
		36.121098, 37.081364, 36.758324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921421, 37.229706, 36.736183>,  <36.370075, 37.710522, 36.937683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921421, 37.229706, 36.736183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590870, 37.110111, 36.545311>,  <36.392540, 37.038353, 36.430786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590870, 37.110111, 36.545311>,  <36.921421, 37.229706, 36.736183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590870, 37.110111, 36.545311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541530, -0.189578, -0.819027,
		0.154416, -0.935236, 0.318575,
		-0.826378, -0.298989, -0.477184,
		36.342957, 37.020416, 36.402157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517429, 36.811878, 36.828171>,  <36.921421, 37.229706, 36.736183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517429, 36.811878, 36.828171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901894, 36.829300, 36.719154>,  <38.132572, 36.839752, 36.653744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901894, 36.829300, 36.719154>,  <37.517429, 36.811878, 36.828171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901894, 36.829300, 36.719154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236793, 0.377164, 0.895364,
		0.141790, -0.925122, 0.352200,
		0.961158, 0.043555, -0.272541,
		38.190243, 36.842365, 36.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866386, 36.524158, 37.353497>,  <37.517429, 36.811878, 36.828171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866386, 36.524158, 37.353497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145855, 36.740108, 37.165714>,  <38.313538, 36.869678, 37.053043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145855, 36.740108, 37.165714>,  <37.866386, 36.524158, 37.353497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145855, 36.740108, 37.165714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405782, 0.241399, 0.881514,
		0.589234, -0.806388, -0.050413,
		0.698673, 0.539875, -0.469459,
		38.355457, 36.902069, 37.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596561, 36.269859, 37.404221>,  <37.866386, 36.524158, 37.353497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596561, 36.269859, 37.404221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 36.666058, 37.349339>,  <38.602898, 36.903774, 37.316410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 36.666058, 37.349339>,  <38.596561, 36.269859, 37.404221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600521, 36.666058, 37.349339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246545, 0.130559, 0.960297,
		0.969081, -0.043333, -0.242909,
		0.009898, 0.990493, -0.137206,
		38.603489, 36.963207, 37.308178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188698, 36.464462, 37.746609>,  <38.596561, 36.269859, 37.404221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188698, 36.464462, 37.746609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012840, 36.821167, 37.703762>,  <38.907326, 37.035191, 37.678055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012840, 36.821167, 37.703762>,  <39.188698, 36.464462, 37.746609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012840, 36.821167, 37.703762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426376, 0.312180, 0.848968,
		0.790519, 0.327568, -0.517473,
		-0.439640, 0.891764, -0.107117,
		38.880947, 37.088696, 37.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688515, 36.938046, 37.971981>,  <39.188698, 36.464462, 37.746609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688515, 36.938046, 37.971981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324997, 37.103058, 37.996986>,  <39.106888, 37.202065, 38.011990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324997, 37.103058, 37.996986>,  <39.688515, 36.938046, 37.971981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324997, 37.103058, 37.996986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171403, 0.232517, 0.957370,
		0.380409, 0.880769, -0.282019,
		-0.908796, 0.412531, 0.062515,
		39.052357, 37.226818, 38.015739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687386, 37.494175, 38.385475>,  <39.688515, 36.938046, 37.971981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687386, 37.494175, 38.385475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294243, 37.427162, 38.416264>,  <39.058357, 37.386955, 38.434734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294243, 37.427162, 38.416264>,  <39.687386, 37.494175, 38.385475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294243, 37.427162, 38.416264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046082, 0.180992, 0.982404,
		-0.178518, 0.969110, -0.170169,
		-0.982857, -0.167535, 0.076969,
		38.999386, 37.376904, 38.439354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421230, 38.100761, 38.755028>,  <39.687386, 37.494175, 38.385475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421230, 38.100761, 38.755028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160698, 37.798824, 38.785973>,  <39.004379, 37.617664, 38.804539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160698, 37.798824, 38.785973>,  <39.421230, 38.100761, 38.755028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160698, 37.798824, 38.785973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125121, 0.207397, 0.970222,
		-0.748406, 0.622258, -0.229530,
		-0.651332, -0.754839, 0.077359,
		38.965298, 37.572372, 38.809181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838959, 38.390415, 39.250072>,  <39.421230, 38.100761, 38.755028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838959, 38.390415, 39.250072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795441, 37.993137, 39.233425>,  <38.769329, 37.754772, 39.223438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795441, 37.993137, 39.233425>,  <38.838959, 38.390415, 39.250072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795441, 37.993137, 39.233425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445788, 0.011330, 0.895067,
		-0.888502, 0.115934, -0.443986,
		-0.108799, -0.993192, -0.041616,
		38.762802, 37.695179, 39.220940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169979, 38.222118, 39.542973>,  <38.838959, 38.390415, 39.250072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169979, 38.222118, 39.542973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409481, 37.902206, 39.560188>,  <38.553181, 37.710258, 39.570518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409481, 37.902206, 39.560188>,  <38.169979, 38.222118, 39.542973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409481, 37.902206, 39.560188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178870, -0.081150, 0.980520,
		-0.780707, -0.594785, -0.191645,
		0.598751, -0.799778, 0.043035,
		38.589108, 37.662273, 39.573097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745190, 37.803753, 39.858334>,  <38.169979, 38.222118, 39.542973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745190, 37.803753, 39.858334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105324, 37.633228, 39.893337>,  <38.321404, 37.530914, 39.914341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105324, 37.633228, 39.893337>,  <37.745190, 37.803753, 39.858334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105324, 37.633228, 39.893337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290633, -0.439314, 0.850021,
		-0.323925, -0.790738, -0.519429,
		0.900336, -0.426306, 0.087510,
		38.375423, 37.505337, 39.919590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649849, 37.149349, 40.112007>,  <37.745190, 37.803753, 39.858334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649849, 37.149349, 40.112007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035515, 37.218464, 40.192535>,  <38.266914, 37.259933, 40.240852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035515, 37.218464, 40.192535>,  <37.649849, 37.149349, 40.112007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035515, 37.218464, 40.192535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085589, -0.515682, 0.852494,
		0.251112, -0.839177, -0.482415,
		0.964166, 0.172782, 0.201318,
		38.324764, 37.270298, 40.252930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987396, 36.552303, 40.198326>,  <37.649849, 37.149349, 40.112007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987396, 36.552303, 40.198326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187786, 36.839226, 40.392025>,  <38.308022, 37.011379, 40.508244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187786, 36.839226, 40.392025>,  <37.987396, 36.552303, 40.198326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187786, 36.839226, 40.392025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321914, -0.364937, 0.873609,
		0.803365, -0.593542, 0.048087,
		0.500975, 0.717306, 0.484247,
		38.338078, 37.054417, 40.537300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076595, 36.185211, 40.779133>,  <37.987396, 36.552303, 40.198326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076595, 36.185211, 40.779133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144901, 36.571857, 40.855537>,  <38.185886, 36.803844, 40.901379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144901, 36.571857, 40.855537>,  <38.076595, 36.185211, 40.779133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144901, 36.571857, 40.855537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214270, -0.152787, 0.964751,
		0.961731, -0.205676, 0.181027,
		0.170768, 0.966619, 0.191010,
		38.196133, 36.861843, 40.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672211, 36.223396, 41.249905>,  <38.076595, 36.185211, 40.779133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672211, 36.223396, 41.249905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448097, 36.553070, 41.282887>,  <38.313629, 36.750874, 41.302673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448097, 36.553070, 41.282887>,  <38.672211, 36.223396, 41.249905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448097, 36.553070, 41.282887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172659, -0.213568, 0.961550,
		0.810104, 0.524507, 0.261962,
		-0.560286, 0.824185, 0.082451,
		38.280010, 36.800327, 41.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934830, 36.529446, 41.929276>,  <38.672211, 36.223396, 41.249905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934830, 36.529446, 41.929276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582630, 36.695534, 41.837784>,  <38.371311, 36.795189, 41.782887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582630, 36.695534, 41.837784>,  <38.934830, 36.529446, 41.929276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582630, 36.695534, 41.837784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327318, -0.183470, 0.926931,
		0.342918, 0.891026, 0.297454,
		-0.880494, 0.415224, -0.228733,
		38.318481, 36.820103, 41.769165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949299, 37.052631, 42.317047>,  <38.934830, 36.529446, 41.929276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949299, 37.052631, 42.317047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577332, 36.935566, 42.227966>,  <38.354153, 36.865326, 42.174519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577332, 36.935566, 42.227966>,  <38.949299, 37.052631, 42.317047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577332, 36.935566, 42.227966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136986, -0.286337, 0.948286,
		-0.341298, 0.912337, 0.226179,
		-0.929919, -0.292665, -0.222704,
		38.298355, 36.847767, 42.161156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631092, 37.192982, 42.922344>,  <38.949299, 37.052631, 42.317047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631092, 37.192982, 42.922344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368515, 36.962669, 42.727383>,  <38.210968, 36.824482, 42.610405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368515, 36.962669, 42.727383>,  <38.631092, 37.192982, 42.922344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368515, 36.962669, 42.727383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264615, -0.429297, 0.863529,
		-0.706446, 0.695829, 0.129447,
		-0.656440, -0.575783, -0.487402,
		38.171581, 36.789936, 42.581161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984749, 37.245605, 43.313629>,  <38.631092, 37.192982, 42.922344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984749, 37.245605, 43.313629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936886, 36.908878, 43.103100>,  <37.908169, 36.706841, 42.976780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936886, 36.908878, 43.103100>,  <37.984749, 37.245605, 43.313629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936886, 36.908878, 43.103100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367792, -0.454831, 0.811084,
		-0.922177, 0.290633, -0.255190,
		-0.119660, -0.841820, -0.526327,
		37.900990, 36.656334, 42.945202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.234169, 36.995316, 43.490788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445560, 36.686012, 43.350624>,  <37.572395, 36.500431, 43.266525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445560, 36.686012, 43.350624>,  <37.234169, 36.995316, 43.490788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445560, 36.686012, 43.350624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081564, -0.457096, 0.885669,
		-0.845020, -0.439476, -0.304635,
		0.528478, -0.773255, -0.350410,
		37.604103, 36.454037, 43.245502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756359, 36.505653, 43.623001>,  <37.234169, 36.995316, 43.490788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756359, 36.505653, 43.623001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114456, 36.331680, 43.584286>,  <37.329315, 36.227295, 43.561058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114456, 36.331680, 43.584286>,  <36.756359, 36.505653, 43.623001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114456, 36.331680, 43.584286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165706, -0.526621, 0.833794,
		-0.413613, -0.730413, -0.543526,
		0.895246, -0.434934, -0.096783,
		37.383030, 36.201199, 43.555252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634106, 35.714581, 43.619732>,  <36.756359, 36.505653, 43.623001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634106, 35.714581, 43.619732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002766, 35.832935, 43.720135>,  <37.223961, 35.903950, 43.780376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002766, 35.832935, 43.720135>,  <36.634106, 35.714581, 43.619732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002766, 35.832935, 43.720135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005956, -0.636042, 0.771631,
		0.387968, -0.712672, -0.584449,
		0.921654, 0.295887, 0.251009,
		37.279263, 35.921700, 43.795437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005657, 35.078968, 43.922951>,  <36.634106, 35.714581, 43.619732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005657, 35.078968, 43.922951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256416, 35.370304, 44.033596>,  <37.406872, 35.545105, 44.099983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256416, 35.370304, 44.033596>,  <37.005657, 35.078968, 43.922951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256416, 35.370304, 44.033596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149967, -0.461210, 0.874526,
		0.764533, -0.506754, -0.398358,
		0.626896, 0.728345, 0.276614,
		37.444485, 35.588806, 44.116581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583542, 34.724880, 44.293301>,  <37.005657, 35.078968, 43.922951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583542, 34.724880, 44.293301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603401, 35.101166, 44.427517>,  <37.615318, 35.326939, 44.508045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603401, 35.101166, 44.427517>,  <37.583542, 34.724880, 44.293301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603401, 35.101166, 44.427517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069416, -0.338390, 0.938442,
		0.996352, -0.023300, -0.082100,
		0.049647, 0.940717, 0.335538,
		37.618294, 35.383381, 44.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112183, 34.814602, 44.716671>,  <37.583542, 34.724880, 44.293301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112183, 34.814602, 44.716671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862717, 35.103588, 44.836060>,  <37.713036, 35.276978, 44.907692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862717, 35.103588, 44.836060>,  <38.112183, 34.814602, 44.716671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862717, 35.103588, 44.836060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098583, -0.306089, 0.946885,
		0.775447, 0.619967, 0.119676,
		-0.623669, 0.722461, 0.298474,
		37.675617, 35.320328, 44.925602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480038, 35.140770, 45.130081>,  <38.112183, 34.814602, 44.716671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480038, 35.140770, 45.130081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105030, 35.246395, 45.220707>,  <37.880024, 35.309769, 45.275082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105030, 35.246395, 45.220707>,  <38.480038, 35.140770, 45.130081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105030, 35.246395, 45.220707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149144, -0.283312, 0.947360,
		0.314347, 0.921959, 0.226227,
		-0.937519, 0.264059, 0.226563,
		37.823772, 35.325611, 45.288677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509140, 35.601170, 45.741741>,  <38.480038, 35.140770, 45.130081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509140, 35.601170, 45.741741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 35.513271, 45.739513>,  <37.884792, 35.460533, 45.738174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 35.513271, 45.739513>,  <38.509140, 35.601170, 45.741741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118923, 35.513271, 45.739513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006489, 0.003449, 0.999973,
		-0.219721, 0.975551, -0.004790,
		-0.975541, -0.219746, -0.005573,
		37.826260, 35.447346, 45.737843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103317, 36.055996, 46.187057>,  <38.509140, 35.601170, 45.741741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103317, 36.055996, 46.187057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836567, 35.758316, 46.202229>,  <37.676517, 35.579708, 46.211330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836567, 35.758316, 46.202229>,  <38.103317, 36.055996, 46.187057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836567, 35.758316, 46.202229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045718, 0.091662, 0.994740,
		-0.743762, 0.661638, -0.095150,
		-0.666879, -0.744200, 0.037926,
		37.636501, 35.535057, 46.213608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774338, 36.206024, 46.751675>,  <38.103317, 36.055996, 46.187057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774338, 36.206024, 46.751675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676872, 35.825699, 46.675167>,  <37.618393, 35.597504, 46.629261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676872, 35.825699, 46.675167>,  <37.774338, 36.206024, 46.751675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676872, 35.825699, 46.675167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046481, -0.185538, 0.981537,
		-0.968745, 0.248056, 0.001014,
		-0.243664, -0.950812, -0.191269,
		37.603775, 35.540455, 46.617786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026138, 35.978794, 47.128792>,  <37.774338, 36.206024, 46.751675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026138, 35.978794, 47.128792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218884, 35.635044, 47.060341>,  <37.334530, 35.428795, 47.019272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218884, 35.635044, 47.060341>,  <37.026138, 35.978794, 47.128792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218884, 35.635044, 47.060341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036942, -0.215044, 0.975905,
		-0.875469, -0.463929, -0.135369,
		0.481861, -0.859376, -0.171126,
		37.363441, 35.377232, 47.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731628, 35.532669, 47.573353>,  <37.026138, 35.978794, 47.128792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731628, 35.532669, 47.573353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073830, 35.352680, 47.470875>,  <37.279152, 35.244686, 47.409386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073830, 35.352680, 47.470875>,  <36.731628, 35.532669, 47.573353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073830, 35.352680, 47.470875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153546, -0.252072, 0.955449,
		-0.494509, -0.856728, -0.146556,
		0.855503, -0.449975, -0.256199,
		37.330482, 35.217690, 47.394016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640846, 34.934856, 47.945938>,  <36.731628, 35.532669, 47.573353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640846, 34.934856, 47.945938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026451, 34.999256, 47.861313>,  <37.257812, 35.037895, 47.810539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026451, 34.999256, 47.861313>,  <36.640846, 34.934856, 47.945938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026451, 34.999256, 47.861313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259246, -0.392958, 0.882256,
		0.058906, -0.905353, -0.420555,
		0.964013, 0.160997, -0.211562,
		37.315655, 35.047554, 47.797844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959415, 34.361996, 48.248398>,  <36.640846, 34.934856, 47.945938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959415, 34.361996, 48.248398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276146, 34.593128, 48.169277>,  <37.466183, 34.731808, 48.121803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276146, 34.593128, 48.169277>,  <36.959415, 34.361996, 48.248398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276146, 34.593128, 48.169277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471075, -0.371691, 0.799959,
		0.388716, -0.726609, -0.566515,
		0.791826, 0.577828, -0.197804,
		37.513695, 34.766476, 48.109936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534500, 33.866112, 48.197395>,  <36.959415, 34.361996, 48.248398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534500, 33.866112, 48.197395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658905, 34.237423, 48.278954>,  <37.733547, 34.460209, 48.327888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658905, 34.237423, 48.278954>,  <37.534500, 33.866112, 48.197395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658905, 34.237423, 48.278954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590154, -0.356793, 0.724166,
		0.744976, -0.104893, -0.658793,
		0.311013, 0.928276, 0.203899,
		37.752209, 34.515907, 48.340122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381065, 33.958382, 48.293060>,  <37.534500, 33.866112, 48.197395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381065, 33.958382, 48.293060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181114, 34.225880, 48.513206>,  <38.061146, 34.386379, 48.645294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181114, 34.225880, 48.513206>,  <38.381065, 33.958382, 48.293060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181114, 34.225880, 48.513206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454839, -0.338075, 0.823910,
		0.737052, 0.662180, -0.135177,
		-0.499876, 0.668748, 0.550364,
		38.031151, 34.426502, 48.678314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722733, 34.082314, 48.893654>,  <38.381065, 33.958382, 48.293060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722733, 34.082314, 48.893654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389427, 34.281082, 48.990593>,  <38.189442, 34.400345, 49.048756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389427, 34.281082, 48.990593>,  <38.722733, 34.082314, 48.893654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389427, 34.281082, 48.990593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043367, -0.378256, 0.924685,
		0.551166, 0.781020, 0.293639,
		-0.833268, 0.496921, 0.242352,
		38.139446, 34.430157, 49.063297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757904, 34.096195, 49.519661>,  <38.722733, 34.082314, 48.893654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757904, 34.096195, 49.519661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368004, 34.183750, 49.502026>,  <38.134064, 34.236282, 49.491444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368004, 34.183750, 49.502026>,  <38.757904, 34.096195, 49.519661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368004, 34.183750, 49.502026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133029, -0.410717, 0.902006,
		0.179330, 0.885098, 0.429466,
		-0.974753, 0.218888, -0.044090,
		38.075577, 34.249416, 49.488800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627037, 34.309898, 50.106434>,  <38.757904, 34.096195, 49.519661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627037, 34.309898, 50.106434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255760, 34.214355, 49.992313>,  <38.032993, 34.157028, 49.923840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255760, 34.214355, 49.992313>,  <38.627037, 34.309898, 50.106434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255760, 34.214355, 49.992313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208796, -0.300304, 0.930711,
		-0.307989, 0.923452, 0.228867,
		-0.928196, -0.238862, -0.285303,
		37.977303, 34.142696, 49.906723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175980, 34.402206, 50.684494>,  <38.627037, 34.309898, 50.106434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175980, 34.402206, 50.684494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988991, 34.150051, 50.436596>,  <37.876797, 33.998756, 50.287857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988991, 34.150051, 50.436596>,  <38.175980, 34.402206, 50.684494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988991, 34.150051, 50.436596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223347, -0.594094, 0.772767,
		-0.855330, 0.499662, 0.136925,
		-0.467469, -0.630388, -0.619745,
		37.848751, 33.960934, 50.250671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586388, 34.232914, 50.968933>,  <38.175980, 34.402206, 50.684494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586388, 34.232914, 50.968933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672070, 33.929558, 50.722694>,  <37.723480, 33.747543, 50.574951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672070, 33.929558, 50.722694>,  <37.586388, 34.232914, 50.968933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672070, 33.929558, 50.722694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139022, -0.647483, 0.749292,
		-0.966845, -0.074920, -0.244126,
		0.214205, -0.758388, -0.615600,
		37.736332, 33.702042, 50.538013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007187, 33.765942, 51.007423>,  <37.586388, 34.232914, 50.968933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007187, 33.765942, 51.007423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324776, 33.557899, 50.881504>,  <37.515331, 33.433075, 50.805954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324776, 33.557899, 50.881504>,  <37.007187, 33.765942, 51.007423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324776, 33.557899, 50.881504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228058, -0.734793, 0.638802,
		-0.563553, -0.435401, -0.702022,
		0.793976, -0.520101, -0.314798,
		37.562969, 33.401871, 50.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781326, 33.067074, 50.706074>,  <37.007187, 33.765942, 51.007423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781326, 33.067074, 50.706074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149078, 33.073387, 50.863293>,  <37.369732, 33.077175, 50.957623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149078, 33.073387, 50.863293>,  <36.781326, 33.067074, 50.706074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149078, 33.073387, 50.863293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278113, -0.680541, 0.677877,
		0.278182, -0.732540, -0.621289,
		0.919385, 0.015785, 0.393043,
		37.424892, 33.078121, 50.981205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050762, 32.417175, 50.857567>,  <36.781326, 33.067074, 50.706074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050762, 32.417175, 50.857567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240757, 32.635647, 51.133560>,  <37.354755, 32.766731, 51.299156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240757, 32.635647, 51.133560>,  <37.050762, 32.417175, 50.857567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240757, 32.635647, 51.133560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246919, -0.669857, 0.700230,
		0.844639, -0.502972, -0.183314,
		0.474990, 0.546178, 0.689981,
		37.383255, 32.799500, 51.340553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671612, 32.345638, 51.422787>,  <37.050762, 32.417175, 50.857567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671612, 32.345638, 51.422787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277981, 32.378391, 51.485897>,  <36.041801, 32.398045, 51.523766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277981, 32.378391, 51.485897>,  <36.671612, 32.345638, 51.422787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277981, 32.378391, 51.485897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164875, -0.088648, -0.982323,
		-0.066441, -0.992692, 0.100736,
		-0.984074, 0.081875, 0.157781,
		35.982758, 32.402958, 51.533230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419460, 31.781588, 51.044434>,  <36.671612, 32.345638, 51.422787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419460, 31.781588, 51.044434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114086, 32.032063, 51.107746>,  <35.930862, 32.182346, 51.145733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114086, 32.032063, 51.107746>,  <36.419460, 31.781588, 51.044434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114086, 32.032063, 51.107746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312414, -0.143532, -0.939040,
		-0.565300, -0.766345, 0.305208,
		-0.763435, 0.626190, 0.158279,
		35.885056, 32.219921, 51.155231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726063, 31.513025, 50.682079>,  <36.419460, 31.781588, 51.044434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726063, 31.513025, 50.682079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656521, 31.900043, 50.755432>,  <35.614796, 32.132256, 50.799446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656521, 31.900043, 50.755432>,  <35.726063, 31.513025, 50.682079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656521, 31.900043, 50.755432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375864, 0.106928, -0.920485,
		-0.910220, -0.228959, 0.345075,
		-0.173855, 0.967545, 0.183386,
		35.604362, 32.190308, 50.810448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985100, 31.604019, 50.564137>,  <35.726063, 31.513025, 50.682079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985100, 31.604019, 50.564137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172974, 31.957096, 50.557831>,  <35.285698, 32.168941, 50.554047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172974, 31.957096, 50.557831>,  <34.985100, 31.604019, 50.564137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172974, 31.957096, 50.557831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526034, 0.265474, -0.807968,
		-0.709000, 0.387787, 0.589016,
		0.469688, 0.882692, -0.015768,
		35.313881, 32.221905, 50.553101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445690, 32.080799, 50.201340>,  <34.985100, 31.604019, 50.564137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445690, 32.080799, 50.201340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784714, 32.292664, 50.187996>,  <34.988129, 32.419781, 50.179989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784714, 32.292664, 50.187996>,  <34.445690, 32.080799, 50.201340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784714, 32.292664, 50.187996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242787, 0.331073, -0.911836,
		-0.471916, 0.780931, 0.409197,
		0.847555, 0.529657, -0.033361,
		35.038979, 32.451561, 50.177986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314259, 32.812878, 50.108475>,  <34.445690, 32.080799, 50.201340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314259, 32.812878, 50.108475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687382, 32.749828, 49.978844>,  <34.911255, 32.711998, 49.901066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687382, 32.749828, 49.978844>,  <34.314259, 32.812878, 50.108475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687382, 32.749828, 49.978844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234392, 0.417719, -0.877822,
		0.273741, 0.894799, 0.352705,
		0.932806, -0.157624, -0.324080,
		34.967224, 32.702541, 49.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503387, 33.416885, 49.789974>,  <34.314259, 32.812878, 50.108475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503387, 33.416885, 49.789974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.763336, 33.153339, 49.638416>,  <34.919304, 32.995213, 49.547482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.763336, 33.153339, 49.638416>,  <34.503387, 33.416885, 49.789974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763336, 33.153339, 49.638416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071468, 0.443336, -0.893502,
		0.756675, 0.607742, 0.241025,
		0.649873, -0.658865, -0.378895,
		34.958298, 32.955681, 49.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928406, 33.845612, 49.532021>,  <34.503387, 33.416885, 49.789974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928406, 33.845612, 49.532021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023087, 33.497974, 49.358284>,  <35.079895, 33.289391, 49.254044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023087, 33.497974, 49.358284>,  <34.928406, 33.845612, 49.532021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023087, 33.497974, 49.358284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090331, 0.425422, -0.900476,
		0.967374, 0.252379, 0.022192,
		0.236702, -0.869092, -0.434340,
		35.094097, 33.237247, 49.227982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459557, 33.947655, 49.107880>,  <34.928406, 33.845612, 49.532021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459557, 33.947655, 49.107880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287525, 33.624897, 48.945911>,  <35.184307, 33.431244, 48.848732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287525, 33.624897, 48.945911>,  <35.459557, 33.947655, 49.107880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287525, 33.624897, 48.945911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090378, 0.407780, -0.908596,
		0.898258, -0.427359, -0.102451,
		-0.430074, -0.806895, -0.404916,
		35.158504, 33.382828, 48.824436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807552, 33.864792, 48.573910>,  <35.459557, 33.947655, 49.107880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807552, 33.864792, 48.573910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470249, 33.662857, 48.500092>,  <35.267868, 33.541695, 48.455799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470249, 33.662857, 48.500092>,  <35.807552, 33.864792, 48.573910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470249, 33.662857, 48.500092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085708, 0.212651, -0.973362,
		0.530636, -0.836610, -0.136050,
		-0.843255, -0.504840, -0.184545,
		35.217274, 33.511406, 48.444729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932499, 33.441669, 48.091644>,  <35.807552, 33.864792, 48.573910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932499, 33.441669, 48.091644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535831, 33.490498, 48.075222>,  <35.297829, 33.519794, 48.065369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535831, 33.490498, 48.075222>,  <35.932499, 33.441669, 48.091644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535831, 33.490498, 48.075222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075053, 0.288714, -0.954469,
		-0.104661, -0.949601, -0.295471,
		-0.991672, 0.122072, -0.041053,
		35.238331, 33.527119, 48.062904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778584, 33.321655, 47.411732>,  <35.932499, 33.441669, 48.091644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778584, 33.321655, 47.411732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.456226, 33.509140, 47.556419>,  <35.262810, 33.621632, 47.643230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.456226, 33.509140, 47.556419>,  <35.778584, 33.321655, 47.411732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456226, 33.509140, 47.556419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094056, 0.501839, -0.859832,
		-0.584537, -0.726958, -0.360346,
		-0.805897, 0.468711, 0.361718,
		35.214458, 33.649754, 47.664936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384251, 33.275928, 46.851307>,  <35.778584, 33.321655, 47.411732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384251, 33.275928, 46.851307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217022, 33.545551, 47.094902>,  <35.116684, 33.707325, 47.241058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217022, 33.545551, 47.094902>,  <35.384251, 33.275928, 46.851307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217022, 33.545551, 47.094902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140522, 0.614325, -0.776440,
		-0.897478, -0.410185, -0.162114,
		-0.418075, 0.674057, 0.608983,
		35.091599, 33.747768, 47.277596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689636, 33.419800, 46.538609>,  <35.384251, 33.275928, 46.851307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689636, 33.419800, 46.538609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819408, 33.732296, 46.751926>,  <34.897274, 33.919796, 46.879917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819408, 33.732296, 46.751926>,  <34.689636, 33.419800, 46.538609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819408, 33.732296, 46.751926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157577, 0.600548, -0.783908,
		-0.932691, 0.170291, 0.317944,
		0.324433, 0.781245, 0.533292,
		34.916737, 33.966671, 46.911915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297737, 33.953201, 46.300991>,  <34.689636, 33.419800, 46.538609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297737, 33.953201, 46.300991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598148, 34.157551, 46.468304>,  <34.778397, 34.280163, 46.568691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598148, 34.157551, 46.468304>,  <34.297737, 33.953201, 46.300991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598148, 34.157551, 46.468304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021286, 0.614442, -0.788675,
		-0.659926, 0.601221, 0.450589,
		0.751029, 0.510876, 0.418284,
		34.823456, 34.310814, 46.593788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270107, 34.508614, 45.878349>,  <34.297737, 33.953201, 46.300991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270107, 34.508614, 45.878349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605396, 34.547668, 46.092957>,  <34.806568, 34.571102, 46.221722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605396, 34.547668, 46.092957>,  <34.270107, 34.508614, 45.878349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605396, 34.547668, 46.092957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383407, 0.594115, -0.707125,
		-0.387793, 0.798433, 0.460567,
		0.838222, 0.097633, 0.536518,
		34.856861, 34.576958, 46.253910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333088, 35.251743, 46.278191>,  <34.270107, 34.508614, 45.878349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333088, 35.251743, 46.278191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656487, 35.053394, 46.151421>,  <34.850525, 34.934387, 46.075359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656487, 35.053394, 46.151421>,  <34.333088, 35.251743, 46.278191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656487, 35.053394, 46.151421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011800, 0.552088, -0.833702,
		0.588379, 0.670308, 0.452214,
		0.808499, -0.495869, -0.316927,
		34.899036, 34.904633, 46.056343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699306, 35.741985, 45.923626>,  <34.333088, 35.251743, 46.278191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699306, 35.741985, 45.923626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841743, 35.395416, 45.783623>,  <34.927208, 35.187473, 45.699619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841743, 35.395416, 45.783623>,  <34.699306, 35.741985, 45.923626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841743, 35.395416, 45.783623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011801, 0.370362, -0.928813,
		0.934376, 0.334875, 0.121659,
		0.356094, -0.866424, -0.350009,
		34.948570, 35.135490, 45.678619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205967, 35.961063, 45.476486>,  <34.699306, 35.741985, 45.923626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205967, 35.961063, 45.476486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118233, 35.589119, 45.358334>,  <35.065590, 35.365952, 45.287441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118233, 35.589119, 45.358334>,  <35.205967, 35.961063, 45.476486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118233, 35.589119, 45.358334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130756, 0.328036, -0.935572,
		0.966847, -0.166585, -0.193536,
		-0.219339, -0.929861, -0.295378,
		35.052429, 35.310162, 45.269722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636490, 35.860497, 44.825592>,  <35.205967, 35.961063, 45.476486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636490, 35.860497, 44.825592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367085, 35.564831, 44.824406>,  <35.205441, 35.387432, 44.823696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367085, 35.564831, 44.824406>,  <35.636490, 35.860497, 44.825592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367085, 35.564831, 44.824406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111472, 0.105535, -0.988148,
		0.730717, -0.665205, -0.153476,
		-0.673518, -0.739165, -0.002964,
		35.165028, 35.343082, 44.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.229481, 38.175659, 41.612423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941792, 38.169167, 41.890259>,  <44.769176, 38.165272, 42.056961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941792, 38.169167, 41.890259>,  <45.229481, 38.175659, 41.612423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941792, 38.169167, 41.890259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573989, -0.549420, -0.607186,
		0.391477, -0.835389, 0.385838,
		-0.719223, -0.016233, 0.694589,
		44.726025, 38.164295, 42.098637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062016, 37.483051, 41.721416>,  <45.229481, 38.175659, 41.612423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062016, 37.483051, 41.721416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746315, 37.715595, 41.800507>,  <44.556892, 37.855122, 41.847961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746315, 37.715595, 41.800507>,  <45.062016, 37.483051, 41.721416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746315, 37.715595, 41.800507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579640, -0.599028, -0.552433,
		-0.202719, -0.550621, 0.809766,
		-0.789254, 0.581362, 0.197727,
		44.509541, 37.890003, 41.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458984, 37.026997, 41.957512>,  <45.062016, 37.483051, 41.721416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458984, 37.026997, 41.957512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306374, 37.376595, 41.837135>,  <44.214806, 37.586353, 41.764908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306374, 37.376595, 41.837135>,  <44.458984, 37.026997, 41.957512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306374, 37.376595, 41.837135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657471, -0.485435, -0.576268,
		-0.649744, -0.022001, 0.759834,
		-0.381528, 0.873996, -0.300944,
		44.191914, 37.638794, 41.746853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784573, 36.852867, 41.922142>,  <44.458984, 37.026997, 41.957512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784573, 36.852867, 41.922142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787762, 37.196335, 41.717152>,  <43.789673, 37.402416, 41.594158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787762, 37.196335, 41.717152>,  <43.784573, 36.852867, 41.922142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787762, 37.196335, 41.717152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647972, -0.385902, -0.656667,
		-0.761622, 0.337301, 0.553317,
		0.007969, 0.858666, -0.512473,
		43.790154, 37.453934, 41.563408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092125, 37.052711, 41.810314>,  <43.784573, 36.852867, 41.922142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092125, 37.052711, 41.810314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300774, 37.228832, 41.518002>,  <43.425964, 37.334507, 41.342613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300774, 37.228832, 41.518002>,  <43.092125, 37.052711, 41.810314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300774, 37.228832, 41.518002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659122, -0.335890, -0.672857,
		-0.541725, 0.832651, 0.115007,
		0.521626, 0.440306, -0.730778,
		43.457260, 37.360924, 41.298767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631672, 37.457626, 41.373619>,  <43.092125, 37.052711, 41.810314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631672, 37.457626, 41.373619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941040, 37.379784, 41.132309>,  <43.126663, 37.333076, 40.987522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941040, 37.379784, 41.132309>,  <42.631672, 37.457626, 41.373619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941040, 37.379784, 41.132309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632622, -0.176825, -0.754004,
		0.040059, 0.964812, -0.259872,
		0.773424, -0.194606, -0.603278,
		43.173069, 37.321404, 40.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433064, 37.761921, 40.722698>,  <42.631672, 37.457626, 41.373619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433064, 37.761921, 40.722698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732121, 37.517220, 40.619320>,  <42.911552, 37.370399, 40.557293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732121, 37.517220, 40.619320>,  <42.433064, 37.761921, 40.722698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732121, 37.517220, 40.619320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456665, -0.191025, -0.868888,
		0.482173, 0.767639, -0.422184,
		0.747640, -0.611751, -0.258447,
		42.956413, 37.333694, 40.541786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505211, 37.950832, 40.061176>,  <42.433064, 37.761921, 40.722698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505211, 37.950832, 40.061176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723431, 37.616364, 40.083778>,  <42.854362, 37.415684, 40.097340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723431, 37.616364, 40.083778>,  <42.505211, 37.950832, 40.061176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723431, 37.616364, 40.083778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275176, -0.242406, -0.930332,
		0.791611, 0.491997, -0.362340,
		0.545554, -0.836169, 0.056505,
		42.887096, 37.365513, 40.100731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969612, 37.809864, 39.415764>,  <42.505211, 37.950832, 40.061176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969612, 37.809864, 39.415764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913883, 37.449371, 39.579899>,  <42.880447, 37.233074, 39.678379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913883, 37.449371, 39.579899>,  <42.969612, 37.809864, 39.415764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913883, 37.449371, 39.579899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196349, -0.381007, -0.903483,
		0.970586, -0.206440, -0.123874,
		-0.139318, -0.901230, 0.410334,
		42.872089, 37.179001, 39.702999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379829, 37.298565, 39.025360>,  <42.969612, 37.809864, 39.415764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379829, 37.298565, 39.025360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093494, 37.077541, 39.196125>,  <42.921696, 36.944927, 39.298584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093494, 37.077541, 39.196125>,  <43.379829, 37.298565, 39.025360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093494, 37.077541, 39.196125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131474, -0.493799, -0.859580,
		0.685781, -0.671445, 0.280831,
		-0.715834, -0.552562, 0.426915,
		42.878742, 36.911774, 39.324200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453323, 36.714272, 38.595566>,  <43.379829, 37.298565, 39.025360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453323, 36.714272, 38.595566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102520, 36.657829, 38.779282>,  <42.892040, 36.623962, 38.889511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102520, 36.657829, 38.779282>,  <43.453323, 36.714272, 38.595566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102520, 36.657829, 38.779282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356811, -0.448920, -0.819242,
		0.321788, -0.882360, 0.343356,
		-0.877006, -0.141109, 0.459293,
		42.839417, 36.615498, 38.917068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226814, 35.976398, 38.611683>,  <43.453323, 36.714272, 38.595566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226814, 35.976398, 38.611683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902290, 36.209187, 38.633926>,  <42.707577, 36.348862, 38.647270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902290, 36.209187, 38.633926>,  <43.226814, 35.976398, 38.611683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902290, 36.209187, 38.633926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355503, -0.415602, -0.837193,
		-0.464117, -0.698985, 0.544074,
		-0.811303, 0.581975, 0.055603,
		42.658897, 36.383778, 38.650608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701160, 35.520870, 38.349747>,  <43.226814, 35.976398, 38.611683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701160, 35.520870, 38.349747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529781, 35.881142, 38.320858>,  <42.426952, 36.097305, 38.303524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529781, 35.881142, 38.320858>,  <42.701160, 35.520870, 38.349747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529781, 35.881142, 38.320858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373583, -0.249358, -0.893452,
		-0.822719, -0.355817, 0.443314,
		-0.428449, 0.900675, -0.072225,
		42.401245, 36.151344, 38.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943699, 35.449768, 37.930286>,  <42.701160, 35.520870, 38.349747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943699, 35.449768, 37.930286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050819, 35.833473, 37.894306>,  <42.115093, 36.063698, 37.872719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050819, 35.833473, 37.894306>,  <41.943699, 35.449768, 37.930286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050819, 35.833473, 37.894306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283342, -0.010824, -0.958958,
		-0.920868, 0.282302, 0.268902,
		0.267805, 0.959265, -0.089955,
		42.131161, 36.121254, 37.867321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454014, 35.809780, 37.472977>,  <41.943699, 35.449768, 37.930286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454014, 35.809780, 37.472977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785782, 36.033169, 37.478149>,  <41.984844, 36.167202, 37.481251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785782, 36.033169, 37.478149>,  <41.454014, 35.809780, 37.472977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785782, 36.033169, 37.478149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058601, 0.110003, -0.992202,
		-0.555542, 0.822195, 0.123966,
		0.829421, 0.558475, 0.012930,
		42.034607, 36.200710, 37.482029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213730, 36.504688, 37.106312>,  <41.454014, 35.809780, 37.472977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213730, 36.504688, 37.106312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611866, 36.466923, 37.098515>,  <41.850750, 36.444263, 37.093838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611866, 36.466923, 37.098515>,  <41.213730, 36.504688, 37.106312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611866, 36.466923, 37.098515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001370, 0.216011, -0.976390,
		0.096397, 0.971815, 0.215134,
		0.995342, -0.094416, -0.019491,
		41.910469, 36.438599, 37.092667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349289, 37.019436, 36.648788>,  <41.213730, 36.504688, 37.106312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349289, 37.019436, 36.648788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685616, 36.804756, 36.677044>,  <41.887409, 36.675949, 36.693996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685616, 36.804756, 36.677044>,  <41.349289, 37.019436, 36.648788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685616, 36.804756, 36.677044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153919, 0.111918, -0.981725,
		0.518983, 0.836319, 0.176710,
		0.840812, -0.536697, 0.070642,
		41.937859, 36.643745, 36.698238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825527, 37.520889, 36.369514>,  <41.349289, 37.019436, 36.648788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825527, 37.520889, 36.369514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975830, 37.152348, 36.329693>,  <42.066013, 36.931221, 36.305801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975830, 37.152348, 36.329693>,  <41.825527, 37.520889, 36.369514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975830, 37.152348, 36.329693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152924, 0.167599, -0.973923,
		0.914013, 0.350735, 0.203873,
		0.375758, -0.921355, -0.099552,
		42.088558, 36.875942, 36.299828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379921, 37.610313, 35.940880>,  <41.825527, 37.520889, 36.369514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379921, 37.610313, 35.940880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306656, 37.217758, 35.917793>,  <42.262695, 36.982224, 35.903942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306656, 37.217758, 35.917793>,  <42.379921, 37.610313, 35.940880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306656, 37.217758, 35.917793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401470, -0.021077, -0.915630,
		0.897371, -0.190881, 0.397857,
		-0.183161, -0.981387, -0.057719,
		42.251709, 36.923344, 35.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038391, 37.273468, 35.590698>,  <42.379921, 37.610313, 35.940880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038391, 37.273468, 35.590698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728752, 37.022915, 35.554024>,  <42.542969, 36.872581, 35.532021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728752, 37.022915, 35.554024>,  <43.038391, 37.273468, 35.590698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728752, 37.022915, 35.554024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336280, -0.284161, -0.897869,
		0.536360, -0.725873, 0.430611,
		-0.774102, -0.626387, -0.091685,
		42.496521, 36.834999, 35.526520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266457, 36.543411, 35.435116>,  <43.038391, 37.273468, 35.590698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266457, 36.543411, 35.435116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889992, 36.564892, 35.301655>,  <42.664112, 36.577782, 35.221577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889992, 36.564892, 35.301655>,  <43.266457, 36.543411, 35.435116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889992, 36.564892, 35.301655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281455, -0.421926, -0.861836,
		-0.187059, -0.905039, 0.381987,
		-0.941165, 0.053702, -0.333653,
		42.607643, 36.581001, 35.201557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767620, 36.891834, 35.105293>,  <43.266457, 36.543411, 35.435116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767620, 36.891834, 35.105293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120373, 36.751583, 34.979214>,  <44.332024, 36.667431, 34.903568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120373, 36.751583, 34.979214>,  <43.767620, 36.891834, 35.105293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120373, 36.751583, 34.979214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239288, -0.243170, 0.940005,
		-0.406239, -0.904394, -0.130545,
		0.881879, -0.350629, -0.315195,
		44.384937, 36.646397, 34.884655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998425, 36.118176, 35.297615>,  <43.767620, 36.891834, 35.105293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998425, 36.118176, 35.297615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322941, 36.347065, 35.249680>,  <44.517651, 36.484398, 35.220917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322941, 36.347065, 35.249680>,  <43.998425, 36.118176, 35.297615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322941, 36.347065, 35.249680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313352, -0.252544, 0.915441,
		0.493575, -0.780242, -0.384195,
		0.811292, 0.572227, -0.119841,
		44.566330, 36.518734, 35.213726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640190, 35.751198, 35.452763>,  <43.998425, 36.118176, 35.297615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640190, 35.751198, 35.452763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718410, 36.135239, 35.532722>,  <44.765343, 36.365665, 35.580696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718410, 36.135239, 35.532722>,  <44.640190, 35.751198, 35.452763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718410, 36.135239, 35.532722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376672, -0.261731, 0.888603,
		0.905470, -0.098475, -0.412827,
		0.195555, 0.960104, 0.199897,
		44.777077, 36.423271, 35.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202259, 35.721073, 35.772343>,  <44.640190, 35.751198, 35.452763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202259, 35.721073, 35.772343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079967, 36.086895, 35.878265>,  <45.006592, 36.306389, 35.941818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079967, 36.086895, 35.878265>,  <45.202259, 35.721073, 35.772343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079967, 36.086895, 35.878265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315243, -0.165207, 0.934520,
		0.898417, 0.369185, -0.237799,
		-0.305725, 0.914554, 0.264808,
		44.988251, 36.361259, 35.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683537, 35.998466, 36.297337>,  <45.202259, 35.721073, 35.772343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683537, 35.998466, 36.297337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384441, 36.257690, 36.355160>,  <45.204983, 36.413227, 36.389854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384441, 36.257690, 36.355160>,  <45.683537, 35.998466, 36.297337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384441, 36.257690, 36.355160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128034, -0.072904, 0.989087,
		0.651529, 0.758089, -0.028461,
		-0.747741, 0.648063, 0.144560,
		45.160118, 36.452110, 36.398529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957306, 36.505623, 36.726082>,  <45.683537, 35.998466, 36.297337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957306, 36.505623, 36.726082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562332, 36.539032, 36.779736>,  <45.325348, 36.559078, 36.811928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562332, 36.539032, 36.779736>,  <45.957306, 36.505623, 36.726082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562332, 36.539032, 36.779736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131966, -0.030974, 0.990770,
		0.086906, 0.996024, 0.019563,
		-0.987437, 0.083522, 0.134133,
		45.266102, 36.564087, 36.819977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913708, 36.867138, 37.274315>,  <45.957306, 36.505623, 36.726082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913708, 36.867138, 37.274315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544983, 36.712177, 37.279758>,  <45.323750, 36.619202, 37.283024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544983, 36.712177, 37.279758>,  <45.913708, 36.867138, 37.274315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544983, 36.712177, 37.279758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025999, -0.026751, 0.999304,
		-0.386765, 0.921524, 0.034731,
		-0.921812, -0.387399, 0.013612,
		45.268440, 36.595959, 37.283840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567680, 37.228451, 37.737244>,  <45.913708, 36.867138, 37.274315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567680, 37.228451, 37.737244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367916, 36.881992, 37.729439>,  <45.248058, 36.674118, 37.724754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367916, 36.881992, 37.729439>,  <45.567680, 37.228451, 37.737244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367916, 36.881992, 37.729439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151016, -0.109207, 0.982480,
		-0.853103, 0.487712, 0.185341,
		-0.499408, -0.866147, -0.019513,
		45.218094, 36.622147, 37.723583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362885, 37.275051, 38.353710>,  <45.567680, 37.228451, 37.737244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362885, 37.275051, 38.353710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300228, 36.893143, 38.252621>,  <45.262634, 36.663998, 38.191967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300228, 36.893143, 38.252621>,  <45.362885, 37.275051, 38.353710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300228, 36.893143, 38.252621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022512, -0.259267, 0.965543,
		-0.987399, 0.145555, 0.062106,
		-0.156641, -0.954775, -0.252723,
		45.253235, 36.606709, 38.176804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784386, 37.019238, 38.781246>,  <45.362885, 37.275051, 38.353710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784386, 37.019238, 38.781246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993870, 36.696945, 38.670601>,  <45.119560, 36.503571, 38.604214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993870, 36.696945, 38.670601>,  <44.784386, 37.019238, 38.781246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993870, 36.696945, 38.670601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011630, -0.331437, 0.943406,
		-0.851815, -0.490857, -0.182949,
		0.523714, -0.805735, -0.276615,
		45.150986, 36.455223, 38.587616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536381, 36.511196, 39.178143>,  <44.784386, 37.019238, 38.781246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536381, 36.511196, 39.178143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881371, 36.346203, 39.060844>,  <45.088364, 36.247208, 38.990463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881371, 36.346203, 39.060844>,  <44.536381, 36.511196, 39.178143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881371, 36.346203, 39.060844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076083, -0.467169, 0.880889,
		-0.500352, -0.782054, -0.371538,
		0.862473, -0.412487, -0.293249,
		45.140114, 36.222458, 38.972870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558174, 35.788857, 39.290825>,  <44.536381, 36.511196, 39.178143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558174, 35.788857, 39.290825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942360, 35.900200, 39.293064>,  <45.172871, 35.967007, 39.294407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942360, 35.900200, 39.293064>,  <44.558174, 35.788857, 39.290825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942360, 35.900200, 39.293064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125406, -0.450477, 0.883937,
		0.248576, -0.848284, -0.467573,
		0.960460, 0.278362, 0.005598,
		45.230499, 35.983707, 39.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979931, 35.286022, 39.597786>,  <44.558174, 35.788857, 39.290825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979931, 35.286022, 39.597786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243309, 35.586937, 39.606903>,  <45.401337, 35.767487, 39.612373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243309, 35.586937, 39.606903>,  <44.979931, 35.286022, 39.597786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243309, 35.586937, 39.606903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475628, -0.439389, 0.762047,
		0.583291, -0.490924, -0.647121,
		0.658445, 0.752284, 0.022795,
		45.440842, 35.812622, 39.613743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644356, 34.940083, 39.552170>,  <44.979931, 35.286022, 39.597786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644356, 34.940083, 39.552170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661407, 35.291515, 39.742447>,  <45.671638, 35.502373, 39.856613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661407, 35.291515, 39.742447>,  <45.644356, 34.940083, 39.552170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661407, 35.291515, 39.742447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442203, -0.443540, 0.779570,
		0.895901, 0.177118, -0.407420,
		0.042631, 0.878580, 0.475690,
		45.674198, 35.555088, 39.885155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201637, 34.915070, 39.964520>,  <45.644356, 34.940083, 39.552170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201637, 34.915070, 39.964520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043911, 35.254337, 40.106010>,  <45.949276, 35.457897, 40.190903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043911, 35.254337, 40.106010>,  <46.201637, 34.915070, 39.964520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043911, 35.254337, 40.106010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501152, -0.124172, 0.856404,
		0.770301, 0.514961, -0.376100,
		-0.394314, 0.848172, 0.353724,
		45.925617, 35.508789, 40.212128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799862, 35.285664, 40.391346>,  <46.201637, 34.915070, 39.964520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799862, 35.285664, 40.391346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433239, 35.406990, 40.495590>,  <46.213264, 35.479786, 40.558136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433239, 35.406990, 40.495590>,  <46.799862, 35.285664, 40.391346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433239, 35.406990, 40.495590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292286, 0.063336, 0.954231,
		0.272925, 0.950783, -0.146706,
		-0.916559, 0.303314, 0.260615,
		46.158272, 35.497986, 40.573776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940998, 35.791927, 40.832298>,  <46.799862, 35.285664, 40.391346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940998, 35.791927, 40.832298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559738, 35.699001, 40.909790>,  <46.330982, 35.643246, 40.956287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559738, 35.699001, 40.909790>,  <46.940998, 35.791927, 40.832298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559738, 35.699001, 40.909790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175344, 0.097550, 0.979663,
		-0.246487, 0.967737, -0.052245,
		-0.953152, -0.232313, 0.193731,
		46.273792, 35.629307, 40.967911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699257, 36.221542, 41.315269>,  <46.940998, 35.791927, 40.832298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699257, 36.221542, 41.315269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403202, 35.956680, 41.362175>,  <46.225571, 35.797764, 41.390316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403202, 35.956680, 41.362175>,  <46.699257, 36.221542, 41.315269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403202, 35.956680, 41.362175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050946, 0.118661, 0.991627,
		-0.670527, 0.739911, -0.054091,
		-0.740134, -0.662156, 0.117261,
		46.181160, 35.758034, 41.397354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426640, 36.550713, 41.814064>,  <46.699257, 36.221542, 41.315269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426640, 36.550713, 41.814064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.225471, 36.205368, 41.830505>,  <46.104771, 35.998161, 41.840370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.225471, 36.205368, 41.830505>,  <46.426640, 36.550713, 41.814064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225471, 36.205368, 41.830505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042959, 0.072465, 0.996445,
		-0.863266, 0.499364, -0.073532,
		-0.502917, -0.863357, 0.041105,
		46.074596, 35.946362, 41.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808548, 36.634830, 42.185474>,  <46.426640, 36.550713, 41.814064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808548, 36.634830, 42.185474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892685, 36.246258, 42.229439>,  <45.943169, 36.013115, 42.255817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892685, 36.246258, 42.229439>,  <45.808548, 36.634830, 42.185474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892685, 36.246258, 42.229439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134960, 0.082498, 0.987411,
		-0.968267, -0.222529, -0.113751,
		0.210343, -0.971429, 0.109912,
		45.955788, 35.954830, 42.262413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266739, 36.319176, 42.540752>,  <45.808548, 36.634830, 42.185474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266739, 36.319176, 42.540752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562473, 36.062878, 42.623524>,  <45.739914, 35.909100, 42.673187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562473, 36.062878, 42.623524>,  <45.266739, 36.319176, 42.540752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562473, 36.062878, 42.623524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232862, 0.045047, 0.971466,
		-0.631785, -0.766430, -0.115901,
		0.739340, -0.640746, 0.206933,
		45.784275, 35.870655, 42.685604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.081093, 37.922997, 41.156944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846748, 37.657742, 40.970604>,  <38.706142, 37.498589, 40.858799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846748, 37.657742, 40.970604>,  <39.081093, 37.922997, 41.156944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846748, 37.657742, 40.970604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502492, 0.153753, -0.850801,
		0.635821, -0.732539, 0.243142,
		-0.585861, -0.663134, -0.465854,
		38.670990, 37.458801, 40.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510109, 37.545918, 40.588295>,  <39.081093, 37.922997, 41.156944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510109, 37.545918, 40.588295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146999, 37.427425, 40.469505>,  <38.929134, 37.356331, 40.398232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146999, 37.427425, 40.469505>,  <39.510109, 37.545918, 40.588295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146999, 37.427425, 40.469505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350193, -0.145493, -0.925309,
		0.230901, -0.943969, 0.235814,
		-0.907772, -0.296235, -0.296977,
		38.874668, 37.338554, 40.380413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583473, 37.115955, 39.993565>,  <39.510109, 37.545918, 40.588295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583473, 37.115955, 39.993565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194515, 37.208817, 39.984196>,  <38.961140, 37.264534, 39.978577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194515, 37.208817, 39.984196>,  <39.583473, 37.115955, 39.993565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194515, 37.208817, 39.984196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021958, -0.190965, -0.981351,
		-0.232305, -0.953747, 0.190791,
		-0.972395, 0.232162, -0.023420,
		38.902798, 37.278461, 39.977169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256504, 36.567352, 39.559048>,  <39.583473, 37.115955, 39.993565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256504, 36.567352, 39.559048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034103, 36.899761, 39.565701>,  <38.900665, 37.099205, 39.569691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034103, 36.899761, 39.565701>,  <39.256504, 36.567352, 39.559048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034103, 36.899761, 39.565701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090726, -0.040791, -0.995040,
		-0.826218, -0.554748, 0.098074,
		-0.555997, 0.831018, 0.016628,
		38.867306, 37.149067, 39.570690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570808, 36.393375, 39.186485>,  <39.256504, 36.567352, 39.559048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570808, 36.393375, 39.186485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642891, 36.786545, 39.201378>,  <38.686142, 37.022446, 39.210312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642891, 36.786545, 39.201378>,  <38.570808, 36.393375, 39.186485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642891, 36.786545, 39.201378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216009, 0.076469, -0.973392,
		-0.959617, 0.167374, 0.226101,
		0.180210, 0.982924, 0.037227,
		38.696953, 37.081421, 39.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956299, 36.717224, 39.026634>,  <38.570808, 36.393375, 39.186485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956299, 36.717224, 39.026634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261829, 36.962650, 38.946526>,  <38.445148, 37.109905, 38.898460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261829, 36.962650, 38.946526>,  <37.956299, 36.717224, 39.026634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261829, 36.962650, 38.946526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283279, 0.039882, -0.958208,
		-0.579931, 0.788640, 0.204272,
		0.763828, 0.613561, -0.200276,
		38.490978, 37.146717, 38.886444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710396, 37.249496, 38.559265>,  <37.956299, 36.717224, 39.026634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710396, 37.249496, 38.559265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107113, 37.280045, 38.518242>,  <38.345142, 37.298374, 38.493629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107113, 37.280045, 38.518242>,  <37.710396, 37.249496, 38.559265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107113, 37.280045, 38.518242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119800, 0.274650, -0.954052,
		-0.044691, 0.958507, 0.281544,
		0.991792, 0.076366, -0.102555,
		38.404652, 37.302956, 38.487476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899921, 37.726849, 37.998093>,  <37.710396, 37.249496, 38.559265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899921, 37.726849, 37.998093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279217, 37.601051, 38.015663>,  <38.506794, 37.525574, 38.026207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279217, 37.601051, 38.015663>,  <37.899921, 37.726849, 37.998093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279217, 37.601051, 38.015663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052576, 0.019065, -0.998435,
		0.313167, 0.949067, 0.034613,
		0.948242, -0.314497, 0.043928,
		38.563690, 37.506702, 38.028843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250725, 38.167320, 37.413422>,  <37.899921, 37.726849, 37.998093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250725, 38.167320, 37.413422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463764, 37.838005, 37.491940>,  <38.591587, 37.640415, 37.539051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463764, 37.838005, 37.491940>,  <38.250725, 38.167320, 37.413422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463764, 37.838005, 37.491940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087885, -0.176872, -0.980302,
		0.841793, 0.539358, -0.021847,
		0.532598, -0.823292, 0.196291,
		38.623543, 37.591019, 37.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811623, 38.179882, 36.915581>,  <38.250725, 38.167320, 37.413422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811623, 38.179882, 36.915581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751598, 37.803169, 37.035927>,  <38.715584, 37.577141, 37.108135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751598, 37.803169, 37.035927>,  <38.811623, 38.179882, 36.915581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751598, 37.803169, 37.035927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041295, -0.310016, -0.949834,
		0.987814, -0.130110, 0.085412,
		-0.150062, -0.941786, 0.300865,
		38.706581, 37.520634, 37.126186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334518, 37.639534, 36.596371>,  <38.811623, 38.179882, 36.915581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334518, 37.639534, 36.596371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035099, 37.401421, 36.713207>,  <38.855450, 37.258553, 36.783310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035099, 37.401421, 36.713207>,  <39.334518, 37.639534, 36.596371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035099, 37.401421, 36.713207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094679, -0.531943, -0.841470,
		0.656291, -0.602223, 0.454544,
		-0.748544, -0.595285, 0.292092,
		38.810535, 37.222836, 36.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484043, 36.930199, 36.362133>,  <39.334518, 37.639534, 36.596371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484043, 36.930199, 36.362133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097137, 36.876640, 36.448357>,  <38.864994, 36.844505, 36.500092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097137, 36.876640, 36.448357>,  <39.484043, 36.930199, 36.362133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097137, 36.876640, 36.448357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120493, -0.505247, -0.854521,
		0.223331, -0.852524, 0.472575,
		-0.967267, -0.133899, 0.215561,
		38.806957, 36.836472, 36.513023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300640, 36.210640, 36.315063>,  <39.484043, 36.930199, 36.362133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300640, 36.210640, 36.315063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973621, 36.432644, 36.253632>,  <38.777409, 36.565845, 36.216774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973621, 36.432644, 36.253632>,  <39.300640, 36.210640, 36.315063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973621, 36.432644, 36.253632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169302, -0.486556, -0.857088,
		-0.550411, -0.674710, 0.491746,
		-0.817548, 0.555004, -0.153576,
		38.728355, 36.599144, 36.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262627, 35.563713, 35.917538>,  <39.300640, 36.210640, 36.315063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262627, 35.563713, 35.917538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074150, 35.330250, 35.653019>,  <38.961063, 35.190170, 35.494308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074150, 35.330250, 35.653019>,  <39.262627, 35.563713, 35.917538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074150, 35.330250, 35.653019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171209, -0.674964, 0.717713,
		-0.865254, 0.451402, 0.218110,
		-0.471193, -0.583661, -0.661299,
		38.932793, 35.155151, 35.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616642, 35.416645, 36.275249>,  <39.262627, 35.563713, 35.917538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616642, 35.416645, 36.275249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729267, 35.140438, 36.008747>,  <38.796844, 34.974712, 35.848846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729267, 35.140438, 36.008747>,  <38.616642, 35.416645, 36.275249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729267, 35.140438, 36.008747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189217, -0.720673, 0.666953,
		-0.940700, -0.061724, -0.333576,
		0.281566, -0.690522, -0.666258,
		38.813736, 34.933281, 35.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080719, 34.982063, 36.196785>,  <38.616642, 35.416645, 36.275249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080719, 34.982063, 36.196785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413933, 34.786926, 36.092426>,  <38.613861, 34.669842, 36.029812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413933, 34.786926, 36.092426>,  <38.080719, 34.982063, 36.196785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413933, 34.786926, 36.092426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371283, -0.842606, 0.390082,
		-0.410131, -0.228085, -0.883046,
		0.833031, -0.487845, -0.260894,
		38.663841, 34.640572, 36.014156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828918, 34.266460, 36.133232>,  <38.080719, 34.982063, 36.196785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828918, 34.266460, 36.133232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226936, 34.235477, 36.158161>,  <38.465748, 34.216888, 36.173119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226936, 34.235477, 36.158161>,  <37.828918, 34.266460, 36.133232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226936, 34.235477, 36.158161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089925, -0.968559, 0.231963,
		0.042395, -0.236418, -0.970726,
		0.995046, -0.077459, 0.062322,
		38.525452, 34.212238, 36.176857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964966, 33.631680, 35.837929>,  <37.828918, 34.266460, 36.133232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964966, 33.631680, 35.837929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271065, 33.723652, 36.078438>,  <38.454723, 33.778835, 36.222744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271065, 33.723652, 36.078438>,  <37.964966, 33.631680, 35.837929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271065, 33.723652, 36.078438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032844, -0.918870, 0.393191,
		0.642896, -0.320637, -0.695612,
		0.765249, 0.229934, 0.601269,
		38.500641, 33.792633, 36.258820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540123, 33.056362, 35.828915>,  <37.964966, 33.631680, 35.837929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540123, 33.056362, 35.828915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555927, 33.267323, 36.168392>,  <38.565411, 33.393898, 36.372078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555927, 33.267323, 36.168392>,  <38.540123, 33.056362, 35.828915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555927, 33.267323, 36.168392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027992, -0.848441, 0.528549,
		0.998827, -0.044642, -0.018762,
		0.039514, 0.527404, 0.848695,
		38.567783, 33.425545, 36.423000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916828, 32.614143, 36.246799>,  <38.540123, 33.056362, 35.828915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916828, 32.614143, 36.246799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768375, 32.876942, 36.509285>,  <38.679302, 33.034622, 36.666775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768375, 32.876942, 36.509285>,  <38.916828, 32.614143, 36.246799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768375, 32.876942, 36.509285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062874, -0.687281, 0.723665,
		0.926449, 0.309835, 0.213765,
		-0.371133, 0.656999, 0.656211,
		38.657036, 33.074039, 36.706150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258331, 32.395664, 36.827003>,  <38.916828, 32.614143, 36.246799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258331, 32.395664, 36.827003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964046, 32.616367, 36.984123>,  <38.787476, 32.748791, 37.078396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964046, 32.616367, 36.984123>,  <39.258331, 32.395664, 36.827003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964046, 32.616367, 36.984123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056982, -0.527471, 0.847660,
		0.674895, 0.646014, 0.356626,
		-0.735710, 0.551761, 0.392799,
		38.743332, 32.781895, 37.101963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466198, 32.582470, 37.520344>,  <39.258331, 32.395664, 36.827003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466198, 32.582470, 37.520344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067577, 32.615440, 37.516613>,  <38.828403, 32.635223, 37.514374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067577, 32.615440, 37.516613>,  <39.466198, 32.582470, 37.520344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067577, 32.615440, 37.516613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051695, -0.529161, 0.846946,
		0.064873, 0.844509, 0.531598,
		-0.996554, 0.082425, -0.009329,
		38.768612, 32.640167, 37.513813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327114, 32.619385, 38.234619>,  <39.466198, 32.582470, 37.520344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327114, 32.619385, 38.234619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991924, 32.512142, 38.044495>,  <38.790810, 32.447796, 37.930420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991924, 32.512142, 38.044495>,  <39.327114, 32.619385, 38.234619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991924, 32.512142, 38.044495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219632, -0.631645, 0.743496,
		-0.499562, 0.727424, 0.470417,
		-0.837973, -0.268104, -0.475312,
		38.740532, 32.431709, 37.901901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820889, 32.797359, 38.786968>,  <39.327114, 32.619385, 38.234619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820889, 32.797359, 38.786968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665386, 32.554871, 38.509445>,  <38.572083, 32.409378, 38.342930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665386, 32.554871, 38.509445>,  <38.820889, 32.797359, 38.786968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665386, 32.554871, 38.509445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429254, -0.547144, 0.718592,
		-0.815235, 0.577178, -0.047516,
		-0.388758, -0.606218, -0.693806,
		38.548759, 32.373005, 38.301304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119312, 32.926311, 38.743134>,  <38.820889, 32.797359, 38.786968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119312, 32.926311, 38.743134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182415, 32.546135, 38.635975>,  <38.220276, 32.318027, 38.571678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182415, 32.546135, 38.635975>,  <38.119312, 32.926311, 38.743134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182415, 32.546135, 38.635975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471180, -0.310869, 0.825440,
		-0.867815, -0.003991, -0.496872,
		0.157756, -0.950445, -0.267896,
		38.229740, 32.261002, 38.555607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489861, 32.593342, 39.023380>,  <38.119312, 32.926311, 38.743134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489861, 32.593342, 39.023380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729797, 32.296951, 38.902618>,  <37.873760, 32.119118, 38.830162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729797, 32.296951, 38.902618>,  <37.489861, 32.593342, 39.023380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729797, 32.296951, 38.902618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216660, -0.513644, 0.830197,
		-0.770230, -0.432573, -0.468644,
		0.599837, -0.740979, -0.301903,
		37.909748, 32.074657, 38.812046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072582, 32.036224, 39.074654>,  <37.489861, 32.593342, 39.023380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072582, 32.036224, 39.074654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429699, 31.857059, 39.055500>,  <37.643970, 31.749561, 39.044010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429699, 31.857059, 39.055500>,  <37.072582, 32.036224, 39.074654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429699, 31.857059, 39.055500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315881, -0.698297, 0.642340,
		-0.321144, -0.558354, -0.764923,
		0.892797, -0.447908, -0.047880,
		37.697536, 31.722687, 39.041138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888477, 31.360680, 39.168339>,  <37.072582, 32.036224, 39.074654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888477, 31.360680, 39.168339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267830, 31.416204, 39.282394>,  <37.495441, 31.449520, 39.350826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267830, 31.416204, 39.282394>,  <36.888477, 31.360680, 39.168339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267830, 31.416204, 39.282394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143272, -0.614585, 0.775731,
		0.282920, -0.776542, -0.562974,
		0.948382, 0.138811, 0.285135,
		37.552345, 31.457848, 39.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623024, 30.692505, 38.848438>,  <36.888477, 31.360680, 39.168339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623024, 30.692505, 38.848438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412617, 30.352566, 38.835434>,  <36.286373, 30.148602, 38.827633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412617, 30.352566, 38.835434>,  <36.623024, 30.692505, 38.848438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412617, 30.352566, 38.835434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205039, 0.163823, -0.964946,
		0.825385, -0.500917, -0.260427,
		-0.526022, -0.849850, -0.032509,
		36.254810, 30.097610, 38.825680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865688, 30.201698, 38.374645>,  <36.623024, 30.692505, 38.848438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865688, 30.201698, 38.374645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475758, 30.121532, 38.413708>,  <36.241798, 30.073433, 38.437145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475758, 30.121532, 38.413708>,  <36.865688, 30.201698, 38.374645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475758, 30.121532, 38.413708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132114, 0.166454, -0.977159,
		0.179597, -0.965464, -0.188744,
		-0.974829, -0.200431, 0.097656,
		36.183308, 30.061407, 38.443005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777637, 29.785046, 37.819969>,  <36.865688, 30.201698, 38.374645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777637, 29.785046, 37.819969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413280, 29.902580, 37.935856>,  <36.194668, 29.973101, 38.005390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413280, 29.902580, 37.935856>,  <36.777637, 29.785046, 37.819969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413280, 29.902580, 37.935856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220113, 0.247881, -0.943454,
		-0.349039, -0.923154, -0.161114,
		-0.910891, 0.293838, 0.289719,
		36.140015, 29.990732, 38.022770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232559, 29.494150, 37.319756>,  <36.777637, 29.785046, 37.819969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232559, 29.494150, 37.319756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066284, 29.808924, 37.502155>,  <35.966518, 29.997787, 37.611595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066284, 29.808924, 37.502155>,  <36.232559, 29.494150, 37.319756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066284, 29.808924, 37.502155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491783, 0.227280, -0.840531,
		-0.765083, -0.573654, 0.292523,
		-0.415689, 0.786934, 0.456001,
		35.941578, 30.045004, 37.638954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437057, 29.502998, 37.225666>,  <36.232559, 29.494150, 37.319756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437057, 29.502998, 37.225666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554436, 29.873220, 37.321362>,  <35.624863, 30.095354, 37.378780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554436, 29.873220, 37.321362>,  <35.437057, 29.502998, 37.225666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554436, 29.873220, 37.321362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350039, 0.336906, -0.874052,
		-0.889586, 0.172743, 0.422844,
		0.293445, 0.925556, 0.239240,
		35.642467, 30.150887, 37.393135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964760, 29.825634, 36.912899>,  <35.437057, 29.502998, 37.225666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964760, 29.825634, 36.912899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214237, 30.127861, 36.993019>,  <35.363926, 30.309196, 37.041092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214237, 30.127861, 36.993019>,  <34.964760, 29.825634, 36.912899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214237, 30.127861, 36.993019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208543, 0.407803, -0.888936,
		-0.753335, 0.512654, 0.411913,
		0.623695, 0.755568, 0.200302,
		35.401344, 30.354532, 37.053108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636326, 30.502163, 36.881428>,  <34.964760, 29.825634, 36.912899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636326, 30.502163, 36.881428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023533, 30.564920, 36.803116>,  <35.255856, 30.602575, 36.756130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023533, 30.564920, 36.803116>,  <34.636326, 30.502163, 36.881428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023533, 30.564920, 36.803116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250834, 0.621302, -0.742338,
		0.005169, 0.767703, 0.640785,
		0.968016, 0.156894, -0.195777,
		35.313938, 30.611988, 36.744381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621212, 31.182205, 36.778599>,  <34.636326, 30.502163, 36.881428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621212, 31.182205, 36.778599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967110, 31.055458, 36.622749>,  <35.174648, 30.979410, 36.529240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967110, 31.055458, 36.622749>,  <34.621212, 31.182205, 36.778599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967110, 31.055458, 36.622749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085365, 0.671796, -0.735801,
		0.494900, 0.669542, 0.553884,
		0.864747, -0.316866, -0.389627,
		35.226532, 30.960398, 36.505859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929764, 31.753147, 36.539188>,  <34.621212, 31.182205, 36.778599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929764, 31.753147, 36.539188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172527, 31.489483, 36.361576>,  <35.318188, 31.331284, 36.255009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172527, 31.489483, 36.361576>,  <34.929764, 31.753147, 36.539188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172527, 31.489483, 36.361576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014485, 0.549424, -0.835418,
		0.794637, 0.513457, 0.323904,
		0.606912, -0.659162, -0.444030,
		35.354603, 31.291735, 36.228367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455490, 32.130058, 36.266811>,  <34.929764, 31.753147, 36.539188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455490, 32.130058, 36.266811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433216, 31.793365, 36.052006>,  <35.419849, 31.591349, 35.923122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433216, 31.793365, 36.052006>,  <35.455490, 32.130058, 36.266811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433216, 31.793365, 36.052006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048932, 0.534902, -0.843496,
		0.997249, -0.073249, 0.011400,
		-0.055688, -0.841733, -0.537015,
		35.416512, 31.540846, 35.890900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054859, 32.089893, 35.813221>,  <35.455490, 32.130058, 36.266811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054859, 32.089893, 35.813221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732777, 31.899635, 35.671574>,  <35.539528, 31.785480, 35.586586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732777, 31.899635, 35.671574>,  <36.054859, 32.089893, 35.813221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732777, 31.899635, 35.671574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087485, 0.495358, -0.864273,
		0.586504, -0.726899, -0.357254,
		-0.805208, -0.475645, -0.354122,
		35.491215, 31.756943, 35.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034222, 32.204014, 35.043839>,  <36.054859, 32.089893, 35.813221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034222, 32.204014, 35.043839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682636, 32.018005, 35.086140>,  <35.471687, 31.906401, 35.111519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682636, 32.018005, 35.086140>,  <36.034222, 32.204014, 35.043839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682636, 32.018005, 35.086140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181414, 0.120964, -0.975939,
		0.441041, -0.876996, -0.190684,
		-0.878960, -0.465022, 0.105749,
		35.418949, 31.878498, 35.117863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.188107, 28.509743, 42.318901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812645, 28.646297, 42.299393>,  <36.587368, 28.728231, 42.287685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812645, 28.646297, 42.299393>,  <37.188107, 28.509743, 42.318901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812645, 28.646297, 42.299393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037076, -0.040712, -0.998483,
		-0.342856, -0.939040, 0.025558,
		-0.938656, 0.341389, -0.048774,
		36.531048, 28.748714, 42.284760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883202, 28.147663, 41.810715>,  <37.188107, 28.509743, 42.318901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883202, 28.147663, 41.810715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637260, 28.463106, 41.813625>,  <36.489697, 28.652372, 41.815372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637260, 28.463106, 41.813625>,  <36.883202, 28.147663, 41.810715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637260, 28.463106, 41.813625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027773, 0.030870, -0.999137,
		-0.788152, -0.614122, -0.040882,
		-0.614854, 0.788607, 0.007275,
		36.452805, 28.699688, 41.815807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582321, 28.073877, 41.280537>,  <36.883202, 28.147663, 41.810715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582321, 28.073877, 41.280537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.470512, 28.449484, 41.360653>,  <36.403427, 28.674847, 41.408722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.470512, 28.449484, 41.360653>,  <36.582321, 28.073877, 41.280537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470512, 28.449484, 41.360653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079350, 0.185297, -0.979474,
		-0.956854, -0.289681, 0.022715,
		-0.279526, 0.939015, 0.200288,
		36.386654, 28.731188, 41.420738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918083, 28.159506, 41.026829>,  <36.582321, 28.073877, 41.280537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918083, 28.159506, 41.026829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061562, 28.531971, 41.052963>,  <36.147648, 28.755451, 41.068645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061562, 28.531971, 41.052963>,  <35.918083, 28.159506, 41.026829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061562, 28.531971, 41.052963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264017, 0.168342, -0.949714,
		-0.895339, 0.323409, 0.306227,
		0.358696, 0.931165, 0.065338,
		36.169170, 28.811321, 41.072563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554440, 28.512945, 40.597466>,  <35.918083, 28.159506, 41.026829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554440, 28.512945, 40.597466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843777, 28.785454, 40.642448>,  <36.017380, 28.948959, 40.669437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843777, 28.785454, 40.642448>,  <35.554440, 28.512945, 40.597466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843777, 28.785454, 40.642448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186036, 0.349127, -0.918423,
		-0.664959, 0.643411, 0.379279,
		0.723340, 0.681273, 0.112458,
		36.060780, 28.989836, 40.676186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346302, 29.129713, 40.368420>,  <35.554440, 28.512945, 40.597466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346302, 29.129713, 40.368420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742321, 29.151880, 40.316681>,  <35.979935, 29.165180, 40.285637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742321, 29.151880, 40.316681>,  <35.346302, 29.129713, 40.368420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742321, 29.151880, 40.316681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139078, 0.525216, -0.839527,
		0.021408, 0.849162, 0.527698,
		0.990050, 0.055418, -0.129344,
		36.039337, 29.168507, 40.277878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512573, 29.761814, 40.175636>,  <35.346302, 29.129713, 40.368420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512573, 29.761814, 40.175636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870132, 29.613319, 40.075127>,  <36.084667, 29.524223, 40.014820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870132, 29.613319, 40.075127>,  <35.512573, 29.761814, 40.175636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870132, 29.613319, 40.075127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078279, 0.422653, -0.902905,
		0.441392, 0.826770, 0.348747,
		0.893894, -0.371235, -0.251275,
		36.138302, 29.501949, 39.999744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805401, 30.410688, 40.009094>,  <35.512573, 29.761814, 40.175636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805401, 30.410688, 40.009094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981575, 30.099503, 39.829857>,  <36.087280, 29.912790, 39.722313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981575, 30.099503, 39.829857>,  <35.805401, 30.410688, 40.009094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981575, 30.099503, 39.829857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223709, 0.388268, -0.893981,
		0.869468, 0.493980, -0.003033,
		0.440431, -0.777967, -0.448094,
		36.113705, 29.866112, 39.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371365, 30.558296, 39.586449>,  <35.805401, 30.410688, 40.009094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371365, 30.558296, 39.586449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304173, 30.214256, 39.393780>,  <36.263859, 30.007832, 39.278179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304173, 30.214256, 39.393780>,  <36.371365, 30.558296, 39.586449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304173, 30.214256, 39.393780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162027, 0.506060, -0.847142,
		0.972384, -0.064258, -0.224367,
		-0.167979, -0.860101, -0.481673,
		36.253780, 29.956226, 39.249279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126499, 30.764315, 39.591648>,  <36.371365, 30.558296, 39.586449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126499, 30.764315, 39.591648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415642, 31.022127, 39.691292>,  <37.589127, 31.176815, 39.751076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415642, 31.022127, 39.691292>,  <37.126499, 30.764315, 39.591648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415642, 31.022127, 39.691292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065766, -0.423040, 0.903721,
		0.687859, -0.636880, -0.348186,
		0.722859, 0.644532, 0.249107,
		37.632500, 31.215487, 39.766026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703560, 30.404987, 39.772480>,  <37.126499, 30.764315, 39.591648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703560, 30.404987, 39.772480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696232, 30.756731, 39.962803>,  <37.691833, 30.967777, 40.076996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696232, 30.756731, 39.962803>,  <37.703560, 30.404987, 39.772480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696232, 30.756731, 39.962803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200991, -0.462930, 0.863307,
		0.979422, 0.111450, -0.168261,
		-0.018322, 0.879361, 0.475804,
		37.690735, 31.020538, 40.105545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024105, 30.275730, 40.400452>,  <37.703560, 30.404987, 39.772480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024105, 30.275730, 40.400452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919773, 30.649729, 40.496578>,  <37.857174, 30.874128, 40.554253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919773, 30.649729, 40.496578>,  <38.024105, 30.275730, 40.400452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919773, 30.649729, 40.496578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072469, -0.229266, 0.970662,
		0.962661, 0.270594, -0.007959,
		-0.260830, 0.934995, 0.240315,
		37.841522, 30.930227, 40.568672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622215, 30.490110, 40.776760>,  <38.024105, 30.275730, 40.400452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622215, 30.490110, 40.776760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299465, 30.710732, 40.861374>,  <38.105816, 30.843103, 40.912144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299465, 30.710732, 40.861374>,  <38.622215, 30.490110, 40.776760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299465, 30.710732, 40.861374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178006, -0.114433, 0.977353,
		0.563267, 0.826254, -0.005847,
		-0.806873, 0.551551, 0.211534,
		38.057404, 30.876198, 40.924835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955284, 30.985771, 41.142548>,  <38.622215, 30.490110, 40.776760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955284, 30.985771, 41.142548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571461, 31.008343, 41.252872>,  <38.341167, 31.021885, 41.319069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571461, 31.008343, 41.252872>,  <38.955284, 30.985771, 41.142548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571461, 31.008343, 41.252872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262081, -0.178725, 0.948352,
		0.102807, 0.982280, 0.156708,
		-0.959554, 0.056427, 0.275811,
		38.283596, 31.025270, 41.335617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751915, 31.603060, 41.623898>,  <38.955284, 30.985771, 41.142548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751915, 31.603060, 41.623898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455532, 31.343143, 41.691730>,  <38.277702, 31.187193, 41.732430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455532, 31.343143, 41.691730>,  <38.751915, 31.603060, 41.623898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455532, 31.343143, 41.691730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298450, -0.092410, 0.949941,
		-0.601592, 0.754475, 0.262401,
		-0.740955, -0.649791, 0.169580,
		38.233246, 31.148207, 41.742603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544590, 31.816498, 42.212208>,  <38.751915, 31.603060, 41.623898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544590, 31.816498, 42.212208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378311, 31.454781, 42.173328>,  <38.278545, 31.237749, 42.150002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378311, 31.454781, 42.173328>,  <38.544590, 31.816498, 42.212208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378311, 31.454781, 42.173328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293547, -0.234550, 0.926723,
		-0.860828, 0.356705, 0.362955,
		-0.415698, -0.904294, -0.097197,
		38.253601, 31.183493, 42.144169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208355, 31.834047, 42.827908>,  <38.544590, 31.816498, 42.212208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208355, 31.834047, 42.827908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269234, 31.458393, 42.704712>,  <38.305759, 31.233000, 42.630795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269234, 31.458393, 42.704712>,  <38.208355, 31.834047, 42.827908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269234, 31.458393, 42.704712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241283, -0.266888, 0.933034,
		-0.958446, -0.216315, 0.185979,
		0.152194, -0.939137, -0.307991,
		38.314892, 31.176651, 42.612316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920937, 31.411591, 43.325768>,  <38.208355, 31.834047, 42.827908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920937, 31.411591, 43.325768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176140, 31.161640, 43.145779>,  <38.329262, 31.011669, 43.037785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176140, 31.161640, 43.145779>,  <37.920937, 31.411591, 43.325768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176140, 31.161640, 43.145779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395431, -0.235553, 0.887778,
		-0.660745, -0.744341, 0.096812,
		0.638005, -0.624877, -0.449976,
		38.367542, 30.974176, 43.010784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965210, 31.007877, 43.796791>,  <37.920937, 31.411591, 43.325768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965210, 31.007877, 43.796791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285641, 30.937967, 43.567799>,  <38.477898, 30.896021, 43.430405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285641, 30.937967, 43.567799>,  <37.965210, 31.007877, 43.796791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285641, 30.937967, 43.567799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547844, -0.171205, 0.818875,
		-0.241133, -0.969609, -0.041397,
		0.801076, -0.174778, -0.572477,
		38.525963, 30.885534, 43.396057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129791, 30.369400, 44.040161>,  <37.965210, 31.007877, 43.796791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129791, 30.369400, 44.040161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453453, 30.522364, 43.861713>,  <38.647652, 30.614141, 43.754642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453453, 30.522364, 43.861713>,  <38.129791, 30.369400, 44.040161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453453, 30.522364, 43.861713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537523, -0.175061, 0.824877,
		0.237342, -0.907258, -0.347206,
		0.809159, 0.382409, -0.446122,
		38.696201, 30.637087, 43.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606197, 29.856516, 44.064415>,  <38.129791, 30.369400, 44.040161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606197, 29.856516, 44.064415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803154, 30.204580, 44.056683>,  <38.921329, 30.413418, 44.052044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803154, 30.204580, 44.056683>,  <38.606197, 29.856516, 44.064415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803154, 30.204580, 44.056683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500187, -0.264726, 0.824459,
		0.712294, -0.415624, -0.565592,
		0.492392, 0.870159, -0.019327,
		38.950871, 30.465628, 44.050884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300274, 29.681284, 44.155735>,  <38.606197, 29.856516, 44.064415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300274, 29.681284, 44.155735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274315, 30.073883, 44.227795>,  <39.258739, 30.309443, 44.271030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274315, 30.073883, 44.227795>,  <39.300274, 29.681284, 44.155735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274315, 30.073883, 44.227795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523088, -0.120283, 0.843748,
		0.849804, 0.148990, -0.505603,
		-0.064895, 0.981496, 0.180152,
		39.254845, 30.368332, 44.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022743, 29.895817, 44.439220>,  <39.300274, 29.681284, 44.155735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022743, 29.895817, 44.439220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767994, 30.193432, 44.520012>,  <39.615143, 30.372002, 44.568485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767994, 30.193432, 44.520012>,  <40.022743, 29.895817, 44.439220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767994, 30.193432, 44.520012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190944, -0.101595, 0.976329,
		0.746946, 0.660368, -0.077366,
		-0.636877, 0.744038, 0.201979,
		39.576931, 30.416643, 44.580605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.270187, 34.300053, 46.281998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353386, 33.960983, 46.086781>,  <32.403305, 33.757542, 45.969650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353386, 33.960983, 46.086781>,  <32.270187, 34.300053, 46.281998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353386, 33.960983, 46.086781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123068, 0.517669, -0.846684,
		0.970356, 0.116045, 0.211995,
		0.207997, -0.847675, -0.488042,
		32.415787, 33.706680, 45.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833794, 34.465504, 46.059608>,  <32.270187, 34.300053, 46.281998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833794, 34.465504, 46.059608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707832, 34.158409, 45.836391>,  <32.632256, 33.974152, 45.702461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707832, 34.158409, 45.836391>,  <32.833794, 34.465504, 46.059608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707832, 34.158409, 45.836391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272824, 0.489923, -0.827975,
		0.909067, -0.412979, 0.055180,
		-0.314902, -0.767740, -0.558043,
		32.613361, 33.928085, 45.668980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393253, 34.320221, 45.597553>,  <32.833794, 34.465504, 46.059608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393253, 34.320221, 45.597553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087749, 34.130676, 45.422226>,  <32.904446, 34.016949, 45.317028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087749, 34.130676, 45.422226>,  <33.393253, 34.320221, 45.597553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087749, 34.130676, 45.422226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320346, 0.311266, -0.894702,
		0.560398, -0.823753, -0.085935,
		-0.763763, -0.473860, -0.438319,
		32.858620, 33.988518, 45.290730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535225, 34.408127, 45.015743>,  <33.393253, 34.320221, 45.597553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535225, 34.408127, 45.015743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170265, 34.263115, 44.939739>,  <32.951290, 34.176109, 44.894138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170265, 34.263115, 44.939739>,  <33.535225, 34.408127, 45.015743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170265, 34.263115, 44.939739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041131, 0.380659, -0.923800,
		0.407236, -0.850687, -0.332401,
		-0.912396, -0.362533, -0.190008,
		32.896545, 34.154358, 44.882736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510979, 34.022346, 44.323479>,  <33.535225, 34.408127, 45.015743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510979, 34.022346, 44.323479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122421, 34.096542, 44.382790>,  <32.889286, 34.141060, 44.418377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122421, 34.096542, 44.382790>,  <33.510979, 34.022346, 44.323479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122421, 34.096542, 44.382790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039825, 0.488305, -0.871764,
		-0.234104, -0.852733, -0.466950,
		-0.971396, 0.185486, 0.148274,
		32.831001, 34.152187, 44.427273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106743, 33.674442, 43.857197>,  <33.510979, 34.022346, 44.323479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106743, 33.674442, 43.857197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888248, 33.987648, 43.976204>,  <32.757153, 34.175571, 44.047607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888248, 33.987648, 43.976204>,  <33.106743, 33.674442, 43.857197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888248, 33.987648, 43.976204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090873, 0.297696, -0.950326,
		-0.832685, -0.546142, -0.091458,
		-0.546239, 0.783011, 0.297517,
		32.724377, 34.222549, 44.065460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521145, 33.523483, 43.517635>,  <33.106743, 33.674442, 43.857197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521145, 33.523483, 43.517635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577049, 33.908134, 43.612076>,  <32.610592, 34.138924, 43.668739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577049, 33.908134, 43.612076>,  <32.521145, 33.523483, 43.517635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577049, 33.908134, 43.612076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192212, 0.260253, -0.946215,
		-0.971350, 0.086866, 0.221210,
		0.139765, 0.961625, 0.236100,
		32.618980, 34.196621, 43.682907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909874, 33.804920, 43.306660>,  <32.521145, 33.523483, 43.517635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909874, 33.804920, 43.306660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190781, 34.088120, 43.336502>,  <32.359325, 34.258038, 43.354408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190781, 34.088120, 43.336502>,  <31.909874, 33.804920, 43.306660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190781, 34.088120, 43.336502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153126, 0.252565, -0.955387,
		-0.695251, 0.659512, 0.285780,
		0.702267, 0.707993, 0.074608,
		32.401463, 34.300518, 43.358883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652864, 34.340992, 42.944866>,  <31.909874, 33.804920, 43.306660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652864, 34.340992, 42.944866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045036, 34.419445, 42.951672>,  <32.280338, 34.466518, 42.955753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045036, 34.419445, 42.951672>,  <31.652864, 34.340992, 42.944866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045036, 34.419445, 42.951672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031953, 0.243786, -0.969303,
		-0.194263, 0.949789, 0.245282,
		0.980429, 0.196137, 0.017010,
		32.339165, 34.478287, 42.956776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767851, 34.851398, 42.482849>,  <31.652864, 34.340992, 42.944866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767851, 34.851398, 42.482849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151569, 34.743988, 42.517826>,  <32.381802, 34.679543, 42.538811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151569, 34.743988, 42.517826>,  <31.767851, 34.851398, 42.482849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151569, 34.743988, 42.517826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209668, 0.469789, -0.857518,
		0.189184, 0.840948, 0.506967,
		0.959296, -0.268524, 0.087443,
		32.439358, 34.663429, 42.544060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183838, 35.455559, 42.359951>,  <31.767851, 34.851398, 42.482849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183838, 35.455559, 42.359951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429756, 35.146038, 42.298946>,  <32.577309, 34.960327, 42.262344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429756, 35.146038, 42.298946>,  <32.183838, 35.455559, 42.359951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429756, 35.146038, 42.298946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279207, 0.394388, -0.875501,
		0.737608, 0.495676, 0.458519,
		0.614799, -0.773798, -0.152508,
		32.614197, 34.913898, 42.253193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767838, 35.846050, 42.084225>,  <32.183838, 35.455559, 42.359951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767838, 35.846050, 42.084225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811630, 35.460575, 41.986797>,  <32.837906, 35.229290, 41.928341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811630, 35.460575, 41.986797>,  <32.767838, 35.846050, 42.084225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811630, 35.460575, 41.986797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203856, 0.261602, -0.943402,
		0.972860, 0.053630, 0.225093,
		0.109479, -0.963685, -0.243569,
		32.844475, 35.171471, 41.913727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370968, 35.852173, 41.730862>,  <32.767838, 35.846050, 42.084225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370968, 35.852173, 41.730862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160229, 35.527966, 41.628502>,  <33.033787, 35.333439, 41.567085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160229, 35.527966, 41.628502>,  <33.370968, 35.852173, 41.730862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160229, 35.527966, 41.628502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165566, 0.197443, -0.966232,
		0.833679, -0.551425, 0.030173,
		-0.526847, -0.810523, -0.255902,
		33.002174, 35.284809, 41.551731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763119, 35.508991, 41.248940>,  <33.370968, 35.852173, 41.730862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763119, 35.508991, 41.248940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407413, 35.339504, 41.180042>,  <33.193989, 35.237812, 41.138702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407413, 35.339504, 41.180042>,  <33.763119, 35.508991, 41.248940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407413, 35.339504, 41.180042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078991, 0.228660, -0.970296,
		0.450515, -0.876459, -0.169870,
		-0.889267, -0.423715, -0.172247,
		33.140633, 35.212391, 41.128368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421978, 35.465168, 40.970421>,  <33.763119, 35.508991, 41.248940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421978, 35.465168, 40.970421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.603161, 35.818626, 40.923092>,  <34.711872, 36.030701, 40.894695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.603161, 35.818626, 40.923092>,  <34.421978, 35.465168, 40.970421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603161, 35.818626, 40.923092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284318, -0.017388, 0.958572,
		0.844979, -0.467837, -0.259112,
		0.452961, 0.883644, -0.118322,
		34.739048, 36.083721, 40.887596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087955, 35.321106, 41.167622>,  <34.421978, 35.465168, 40.970421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087955, 35.321106, 41.167622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014603, 35.708847, 41.233021>,  <34.970592, 35.941490, 41.272259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014603, 35.708847, 41.233021>,  <35.087955, 35.321106, 41.167622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014603, 35.708847, 41.233021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116710, -0.143672, 0.982719,
		0.976089, 0.199294, -0.086786,
		-0.183381, 0.969351, 0.163497,
		34.959587, 35.999653, 41.282070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648575, 35.576176, 41.494503>,  <35.087955, 35.321106, 41.167622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648575, 35.576176, 41.494503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.359955, 35.832897, 41.598392>,  <35.186783, 35.986931, 41.660728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.359955, 35.832897, 41.598392>,  <35.648575, 35.576176, 41.494503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359955, 35.832897, 41.598392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264207, -0.091507, 0.960115,
		0.639971, 0.761390, -0.103542,
		-0.721548, 0.641803, 0.259727,
		35.143490, 36.025436, 41.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786034, 35.606426, 42.137627>,  <35.648575, 35.576176, 41.494503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786034, 35.606426, 42.137627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435017, 35.798168, 42.132862>,  <35.224407, 35.913212, 42.130005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435017, 35.798168, 42.132862>,  <35.786034, 35.606426, 42.137627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435017, 35.798168, 42.132862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109028, -0.175284, 0.978462,
		0.466940, 0.859940, 0.206082,
		-0.877542, 0.479352, -0.011911,
		35.171753, 35.941975, 42.129288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822769, 36.259357, 42.638668>,  <35.786034, 35.606426, 42.137627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822769, 36.259357, 42.638668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448112, 36.135590, 42.572987>,  <35.223320, 36.061329, 42.533577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448112, 36.135590, 42.572987>,  <35.822769, 36.259357, 42.638668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448112, 36.135590, 42.572987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168179, -0.013980, 0.985657,
		-0.307279, 0.950822, -0.038944,
		-0.936640, -0.309422, -0.164204,
		35.167122, 36.042763, 42.523724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318180, 36.697308, 43.114010>,  <35.822769, 36.259357, 42.638668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318180, 36.697308, 43.114010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128727, 36.360901, 43.009422>,  <35.015053, 36.159058, 42.946671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128727, 36.360901, 43.009422>,  <35.318180, 36.697308, 43.114010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128727, 36.360901, 43.009422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272947, -0.142093, 0.951478,
		-0.837359, 0.522019, -0.162252,
		-0.473634, -0.841015, -0.261466,
		34.986637, 36.108597, 42.930981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873466, 36.576946, 43.685078>,  <35.318180, 36.697308, 43.114010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873466, 36.576946, 43.685078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883797, 36.214920, 43.515282>,  <34.889996, 35.997704, 43.413403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883797, 36.214920, 43.515282>,  <34.873466, 36.576946, 43.685078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883797, 36.214920, 43.515282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020792, -0.425030, 0.904940,
		-0.999450, -0.014546, -0.029795,
		0.025827, -0.905062, -0.424494,
		34.891544, 35.943401, 43.387932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453808, 36.278519, 44.173923>,  <34.873466, 36.576946, 43.685078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453808, 36.278519, 44.173923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649658, 35.991673, 43.975529>,  <34.767170, 35.819565, 43.856491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649658, 35.991673, 43.975529>,  <34.453808, 36.278519, 44.173923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649658, 35.991673, 43.975529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109525, -0.614916, 0.780949,
		-0.865025, -0.328051, -0.379623,
		0.489628, -0.717119, -0.495988,
		34.796547, 35.776535, 43.826733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064747, 35.673798, 44.232204>,  <34.453808, 36.278519, 44.173923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064747, 35.673798, 44.232204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427364, 35.530571, 44.142788>,  <34.644936, 35.444637, 44.089138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427364, 35.530571, 44.142788>,  <34.064747, 35.673798, 44.232204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427364, 35.530571, 44.142788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021523, -0.568099, 0.822679,
		-0.421568, -0.740981, -0.522712,
		0.906541, -0.358065, -0.223544,
		34.699326, 35.423153, 44.075726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048649, 35.018620, 44.462658>,  <34.064747, 35.673798, 44.232204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048649, 35.018620, 44.462658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434029, 35.121540, 44.432800>,  <34.665257, 35.183292, 44.414886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434029, 35.121540, 44.432800>,  <34.048649, 35.018620, 44.462658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434029, 35.121540, 44.432800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210377, -0.554089, 0.805435,
		0.165877, -0.791696, -0.587964,
		0.963445, 0.257298, -0.074644,
		34.723061, 35.198730, 44.410408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322487, 34.370308, 44.635044>,  <34.048649, 35.018620, 44.462658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322487, 34.370308, 44.635044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569897, 34.676800, 44.704689>,  <34.718342, 34.860695, 44.746475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569897, 34.676800, 44.704689>,  <34.322487, 34.370308, 44.635044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569897, 34.676800, 44.704689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266164, -0.412795, 0.871067,
		0.739311, -0.492436, -0.459267,
		0.618528, 0.766229, 0.174115,
		34.755455, 34.906670, 44.756924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018318, 34.082470, 44.864624>,  <34.322487, 34.370308, 44.635044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018318, 34.082470, 44.864624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035519, 34.465225, 44.979523>,  <35.045837, 34.694878, 45.048462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035519, 34.465225, 44.979523>,  <35.018318, 34.082470, 44.864624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035519, 34.465225, 44.979523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229700, -0.289279, 0.929277,
		0.972311, 0.026025, -0.232235,
		0.042997, 0.956891, 0.287247,
		35.048416, 34.752293, 45.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655209, 34.121437, 45.176048>,  <35.018318, 34.082470, 44.864624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655209, 34.121437, 45.176048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429371, 34.414223, 45.328609>,  <35.293869, 34.589893, 45.420147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429371, 34.414223, 45.328609>,  <35.655209, 34.121437, 45.176048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429371, 34.414223, 45.328609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260518, -0.280434, 0.923844,
		0.783174, 0.620960, -0.032356,
		-0.564596, 0.731960, 0.381400,
		35.259991, 34.633812, 45.443031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065144, 34.535156, 45.674900>,  <35.655209, 34.121437, 45.176048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065144, 34.535156, 45.674900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689697, 34.621799, 45.782299>,  <35.464432, 34.673786, 45.846741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689697, 34.621799, 45.782299>,  <36.065144, 34.535156, 45.674900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689697, 34.621799, 45.782299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194213, -0.311476, 0.930196,
		0.285115, 0.925238, 0.250287,
		-0.938611, 0.216604, 0.268499,
		35.408115, 34.686779, 45.862850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487118, 35.127354, 45.782539>,  <36.065144, 34.535156, 45.674900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487118, 35.127354, 45.782539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880783, 35.198261, 45.781639>,  <37.116982, 35.240807, 45.781101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880783, 35.198261, 45.781639>,  <36.487118, 35.127354, 45.782539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880783, 35.198261, 45.781639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066657, 0.358264, -0.931238,
		-0.164272, 0.916637, 0.364405,
		0.984160, 0.177267, -0.002248,
		37.176033, 35.251442, 45.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614746, 35.746601, 45.461372>,  <36.487118, 35.127354, 45.782539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614746, 35.746601, 45.461372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.992405, 35.615704, 45.445904>,  <37.219002, 35.537167, 45.436623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.992405, 35.615704, 45.445904>,  <36.614746, 35.746601, 45.461372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992405, 35.615704, 45.445904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172154, 0.589924, -0.788893,
		0.280973, 0.738175, 0.613312,
		0.944149, -0.327242, -0.038673,
		37.275650, 35.517532, 45.434303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000401, 36.333408, 45.366528>,  <36.614746, 35.746601, 45.461372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000401, 36.333408, 45.366528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186893, 36.014259, 45.213673>,  <37.298790, 35.822769, 45.121960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186893, 36.014259, 45.213673>,  <37.000401, 36.333408, 45.366528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186893, 36.014259, 45.213673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058666, 0.458894, -0.886552,
		0.882715, 0.390921, 0.260759,
		0.466233, -0.797870, -0.382139,
		37.326763, 35.774899, 45.099030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645130, 36.589199, 44.947243>,  <37.000401, 36.333408, 45.366528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645130, 36.589199, 44.947243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654583, 36.214767, 44.806843>,  <37.660255, 35.990108, 44.722603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654583, 36.214767, 44.806843>,  <37.645130, 36.589199, 44.947243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654583, 36.214767, 44.806843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154090, 0.350315, -0.923870,
		0.987774, -0.032257, 0.152517,
		0.023628, -0.936076, -0.351002,
		37.661671, 35.933945, 44.701542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265041, 36.572990, 44.553284>,  <37.645130, 36.589199, 44.947243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265041, 36.572990, 44.553284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009907, 36.293892, 44.422859>,  <37.856827, 36.126434, 44.344604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009907, 36.293892, 44.422859>,  <38.265041, 36.572990, 44.553284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009907, 36.293892, 44.422859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012197, 0.432456, -0.901572,
		0.770073, -0.571081, -0.284348,
		-0.637839, -0.697745, -0.326057,
		37.818554, 36.084568, 44.325043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517601, 36.296021, 43.964756>,  <38.265041, 36.572990, 44.553284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517601, 36.296021, 43.964756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134655, 36.184654, 43.933945>,  <37.904888, 36.117836, 43.915459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134655, 36.184654, 43.933945>,  <38.517601, 36.296021, 43.964756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134655, 36.184654, 43.933945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012604, 0.226134, -0.974015,
		0.288606, -0.933459, -0.212983,
		-0.957365, -0.278422, -0.077029,
		37.847446, 36.101128, 43.910835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595333, 35.702965, 43.491795>,  <38.517601, 36.296021, 43.964756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595333, 35.702965, 43.491795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228115, 35.860912, 43.506100>,  <38.007786, 35.955681, 43.514683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228115, 35.860912, 43.506100>,  <38.595333, 35.702965, 43.491795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228115, 35.860912, 43.506100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049344, 0.203295, -0.977873,
		-0.393399, -0.895965, -0.206118,
		-0.918043, 0.394865, 0.035766,
		37.952702, 35.979370, 43.516830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274643, 35.439350, 42.870728>,  <38.595333, 35.702965, 43.491795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274643, 35.439350, 42.870728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063507, 35.767399, 42.959072>,  <37.936825, 35.964230, 43.012077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063507, 35.767399, 42.959072>,  <38.274643, 35.439350, 42.870728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063507, 35.767399, 42.959072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181327, 0.362853, -0.914034,
		-0.829763, -0.442414, -0.340239,
		-0.527838, 0.820126, 0.220860,
		37.905155, 36.013435, 43.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899261, 35.574810, 42.274380>,  <38.274643, 35.439350, 42.870728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899261, 35.574810, 42.274380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854855, 35.915077, 42.479916>,  <37.828209, 36.119240, 42.603237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854855, 35.915077, 42.479916>,  <37.899261, 35.574810, 42.274380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854855, 35.915077, 42.479916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074340, 0.508482, -0.857857,
		-0.991034, -0.133435, 0.006789,
		-0.111017, 0.850671, 0.513843,
		37.821548, 36.170277, 42.634068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322929, 36.039871, 41.973221>,  <37.899261, 35.574810, 42.274380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322929, 36.039871, 41.973221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575592, 36.271835, 42.179020>,  <37.727192, 36.411015, 42.302502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575592, 36.271835, 42.179020>,  <37.322929, 36.039871, 41.973221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575592, 36.271835, 42.179020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061576, 0.624033, -0.778968,
		-0.772797, 0.523723, 0.358467,
		0.631659, 0.579911, 0.514500,
		37.765091, 36.445808, 42.333370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044899, 36.692680, 41.856159>,  <37.322929, 36.039871, 41.973221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044899, 36.692680, 41.856159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435555, 36.717152, 41.938549>,  <37.669949, 36.731834, 41.987984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435555, 36.717152, 41.938549>,  <37.044899, 36.692680, 41.856159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435555, 36.717152, 41.938549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135672, 0.567769, -0.811931,
		-0.166618, 0.820912, 0.546207,
		0.976643, 0.061177, 0.205975,
		37.728546, 36.735504, 42.000343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152897, 37.397419, 41.626369>,  <37.044899, 36.692680, 41.856159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152897, 37.397419, 41.626369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500839, 37.207832, 41.681080>,  <37.709606, 37.094078, 41.713905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500839, 37.207832, 41.681080>,  <37.152897, 37.397419, 41.626369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500839, 37.207832, 41.681080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358122, 0.416041, -0.835858,
		0.339267, 0.776056, 0.531634,
		0.869854, -0.473969, 0.136774,
		37.761795, 37.065643, 41.722111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575661, 37.886234, 41.340591>,  <37.152897, 37.397419, 41.626369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575661, 37.886234, 41.340591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811817, 37.563416, 41.336254>,  <37.953510, 37.369724, 41.333652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811817, 37.563416, 41.336254>,  <37.575661, 37.886234, 41.340591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811817, 37.563416, 41.336254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563208, 0.421562, -0.710692,
		0.578134, 0.413475, 0.703420,
		0.590388, -0.807047, -0.010847,
		37.988934, 37.321301, 41.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370552, 38.139713, 41.243744>,  <37.575661, 37.886234, 41.340591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370552, 38.139713, 41.243744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343803, 37.752899, 41.145462>,  <38.327755, 37.520809, 41.086494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343803, 37.752899, 41.145462>,  <38.370552, 38.139713, 41.243744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343803, 37.752899, 41.145462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605260, 0.156455, -0.780501,
		0.793214, -0.200909, 0.574846,
		-0.066873, -0.967035, -0.245705,
		38.323742, 37.462788, 41.071751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.700649, 41.399868, 32.558861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034391, 41.289860, 32.367771>,  <29.234636, 41.223854, 32.253117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034391, 41.289860, 32.367771>,  <28.700649, 41.399868, 32.558861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034391, 41.289860, 32.367771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121497, -0.937088, 0.327270,
		-0.537672, -0.215017, -0.815277,
		0.834354, -0.275017, -0.477722,
		29.284698, 41.207355, 32.224453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526821, 40.977367, 32.015862>,  <28.700649, 41.399868, 32.558861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526821, 40.977367, 32.015862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884514, 40.905720, 32.179943>,  <29.099129, 40.862732, 32.278393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884514, 40.905720, 32.179943>,  <28.526821, 40.977367, 32.015862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884514, 40.905720, 32.179943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331901, -0.880234, 0.339162,
		0.300325, -0.439436, -0.846582,
		0.894230, -0.179122, 0.410205,
		29.152782, 40.851982, 32.303005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690634, 40.336102, 31.713850>,  <28.526821, 40.977367, 32.015862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690634, 40.336102, 31.713850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.945477, 40.373047, 32.019939>,  <29.098381, 40.395214, 32.203594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.945477, 40.373047, 32.019939>,  <28.690634, 40.336102, 31.713850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945477, 40.373047, 32.019939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279980, -0.897250, 0.341400,
		0.718129, -0.431755, -0.545783,
		0.637105, 0.092360, 0.765224,
		29.136608, 40.400757, 32.249508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124126, 39.676357, 31.711025>,  <28.690634, 40.336102, 31.713850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124126, 39.676357, 31.711025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131950, 39.833038, 32.078979>,  <29.136644, 39.927048, 32.299751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131950, 39.833038, 32.078979>,  <29.124126, 39.676357, 31.711025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131950, 39.833038, 32.078979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210744, -0.897774, 0.386767,
		0.977346, -0.201425, 0.064989,
		0.019559, 0.391701, 0.919885,
		29.137817, 39.950550, 32.354946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321596, 39.150642, 32.088398>,  <29.124126, 39.676357, 31.711025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321596, 39.150642, 32.088398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176838, 39.402172, 32.363678>,  <29.089983, 39.553089, 32.528847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176838, 39.402172, 32.363678>,  <29.321596, 39.150642, 32.088398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176838, 39.402172, 32.363678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329846, -0.776854, 0.536376,
		0.871913, -0.032886, 0.488555,
		-0.361897, 0.628821, 0.688197,
		29.068268, 39.590816, 32.570137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593092, 38.954334, 32.808655>,  <29.321596, 39.150642, 32.088398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593092, 38.954334, 32.808655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250671, 39.160053, 32.829342>,  <29.045219, 39.283485, 32.841755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250671, 39.160053, 32.829342>,  <29.593092, 38.954334, 32.808655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250671, 39.160053, 32.829342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416211, -0.745183, 0.521028,
		0.306505, 0.424500, 0.851971,
		-0.856051, 0.514297, 0.051721,
		28.993856, 39.314342, 32.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383001, 38.896961, 33.495941>,  <29.593092, 38.954334, 32.808655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383001, 38.896961, 33.495941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054697, 38.989147, 33.286850>,  <28.857716, 39.044460, 33.161396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054697, 38.989147, 33.286850>,  <29.383001, 38.896961, 33.495941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054697, 38.989147, 33.286850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548850, -0.571972, 0.609599,
		-0.158491, 0.787231, 0.595943,
		-0.820758, 0.230467, -0.522724,
		28.808470, 39.058289, 33.130032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907663, 39.105862, 33.989418>,  <29.383001, 38.896961, 33.495941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907663, 39.105862, 33.989418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692026, 38.987267, 33.674084>,  <28.562643, 38.916111, 33.484882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692026, 38.987267, 33.674084>,  <28.907663, 39.105862, 33.989418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692026, 38.987267, 33.674084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545223, -0.590565, 0.594950,
		-0.641959, 0.750552, 0.156718,
		-0.539093, -0.296487, -0.788336,
		28.530298, 38.898319, 33.437584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288227, 39.095444, 34.230858>,  <28.907663, 39.105862, 33.989418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288227, 39.095444, 34.230858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292694, 38.853657, 33.912235>,  <28.295374, 38.708584, 33.721062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292694, 38.853657, 33.912235>,  <28.288227, 39.095444, 34.230858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292694, 38.853657, 33.912235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499124, -0.693637, 0.519368,
		-0.866459, 0.391780, -0.309446,
		0.011165, -0.604463, -0.796555,
		28.296043, 38.672318, 33.673267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610596, 38.817699, 34.219090>,  <28.288227, 39.095444, 34.230858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610596, 38.817699, 34.219090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789793, 38.557873, 33.973370>,  <27.897312, 38.401978, 33.825935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789793, 38.557873, 33.973370>,  <27.610596, 38.817699, 34.219090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789793, 38.557873, 33.973370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525917, -0.747123, 0.406471,
		-0.722989, 0.140976, -0.676323,
		0.447994, -0.649563, -0.614303,
		27.924191, 38.363003, 33.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026894, 38.394791, 33.931572>,  <27.610596, 38.817699, 34.219090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026894, 38.394791, 33.931572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374447, 38.197193, 33.918850>,  <27.582979, 38.078636, 33.911217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374447, 38.197193, 33.918850>,  <27.026894, 38.394791, 33.931572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374447, 38.197193, 33.918850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404291, -0.745252, 0.530235,
		-0.285634, -0.447854, -0.847254,
		0.868886, -0.493991, -0.031805,
		27.635113, 38.048996, 33.909309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874449, 37.694180, 33.754471>,  <27.026894, 38.394791, 33.931572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874449, 37.694180, 33.754471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242441, 37.647785, 33.904232>,  <27.463238, 37.619949, 33.994087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242441, 37.647785, 33.904232>,  <26.874449, 37.694180, 33.754471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242441, 37.647785, 33.904232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281562, -0.860094, 0.425395,
		0.272680, -0.496774, -0.823930,
		0.919983, -0.115990, 0.374403,
		27.518436, 37.612988, 34.016552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053722, 37.001015, 33.573719>,  <26.874449, 37.694180, 33.754471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053722, 37.001015, 33.573719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269421, 37.111916, 33.891800>,  <27.398840, 37.178455, 34.082649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269421, 37.111916, 33.891800>,  <27.053722, 37.001015, 33.573719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269421, 37.111916, 33.891800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289302, -0.825801, 0.484104,
		0.790897, -0.491105, -0.365101,
		0.539247, 0.277252, 0.795201,
		27.431194, 37.195091, 34.130360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548243, 36.382240, 33.720741>,  <27.053722, 37.001015, 33.573719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548243, 36.382240, 33.720741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522882, 36.580841, 34.067028>,  <27.507666, 36.700001, 34.274799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522882, 36.580841, 34.067028>,  <27.548243, 36.382240, 33.720741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522882, 36.580841, 34.067028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143884, -0.862947, 0.484377,
		0.987562, -0.093853, 0.126150,
		-0.063400, 0.496503, 0.865717,
		27.503862, 36.729794, 34.326744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178139, 36.219608, 34.199154>,  <27.548243, 36.382240, 33.720741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178139, 36.219608, 34.199154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875156, 36.327881, 34.436806>,  <27.693367, 36.392845, 34.579395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875156, 36.327881, 34.436806>,  <28.178139, 36.219608, 34.199154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875156, 36.327881, 34.436806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173162, -0.794128, 0.582560,
		0.629503, 0.544145, 0.554646,
		-0.757457, 0.270679, 0.594131,
		27.647919, 36.409084, 34.615044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344936, 36.004868, 34.884712>,  <28.178139, 36.219608, 34.199154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344936, 36.004868, 34.884712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959318, 36.102348, 34.927086>,  <27.727947, 36.160835, 34.952511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959318, 36.102348, 34.927086>,  <28.344936, 36.004868, 34.884712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959318, 36.102348, 34.927086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100253, -0.702752, 0.704336,
		0.246094, 0.668393, 0.701918,
		-0.964047, 0.243703, 0.105935,
		27.670103, 36.175461, 34.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274843, 36.017178, 35.546730>,  <28.344936, 36.004868, 34.884712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274843, 36.017178, 35.546730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881714, 36.036724, 35.475540>,  <27.645836, 36.048450, 35.432827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881714, 36.036724, 35.475540>,  <28.274843, 36.017178, 35.546730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881714, 36.036724, 35.475540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163576, -0.677221, 0.717366,
		-0.085473, 0.734155, 0.673581,
		-0.982821, 0.048866, -0.177974,
		27.586868, 36.051384, 35.422150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836454, 36.078037, 36.254097>,  <28.274843, 36.017178, 35.546730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836454, 36.078037, 36.254097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616409, 35.907887, 35.966644>,  <27.484383, 35.805798, 35.794170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616409, 35.907887, 35.966644>,  <27.836454, 36.078037, 36.254097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616409, 35.907887, 35.966644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179046, -0.780456, 0.599025,
		-0.815671, 0.458199, 0.353176,
		-0.550112, -0.425373, -0.718634,
		27.451376, 35.780273, 35.751053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557846, 36.333252, 36.505707>,  <27.836454, 36.078037, 36.254097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557846, 36.333252, 36.505707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758976, 36.247684, 36.840706>,  <28.879654, 36.196342, 37.041706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758976, 36.247684, 36.840706>,  <28.557846, 36.333252, 36.505707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758976, 36.247684, 36.840706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205269, 0.911627, 0.356091,
		-0.839663, -0.350964, 0.414477,
		0.502823, -0.213918, 0.837501,
		28.909822, 36.183510, 37.091957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191595, 36.481468, 37.053444>,  <28.557846, 36.333252, 36.505707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191595, 36.481468, 37.053444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583132, 36.540993, 37.109627>,  <28.818054, 36.576706, 37.143337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583132, 36.540993, 37.109627>,  <28.191595, 36.481468, 37.053444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583132, 36.540993, 37.109627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175364, 0.963761, 0.201030,
		-0.105449, -0.221407, 0.969464,
		0.978840, 0.148810, 0.140454,
		28.876783, 36.585636, 37.151764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140600, 36.898029, 37.640091>,  <28.191595, 36.481468, 37.053444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140600, 36.898029, 37.640091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497255, 36.940777, 37.464108>,  <28.711248, 36.966427, 37.358517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497255, 36.940777, 37.464108>,  <28.140600, 36.898029, 37.640091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497255, 36.940777, 37.464108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068062, 0.992339, 0.103107,
		0.447607, -0.061989, 0.892079,
		0.891636, 0.106868, -0.439959,
		28.764746, 36.972836, 37.332119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497995, 37.392788, 38.019756>,  <28.140600, 36.898029, 37.640091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497995, 37.392788, 38.019756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696020, 37.404114, 37.672398>,  <28.814835, 37.410912, 37.463982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696020, 37.404114, 37.672398>,  <28.497995, 37.392788, 38.019756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696020, 37.404114, 37.672398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111781, 0.993239, -0.031336,
		0.861638, 0.112583, 0.494878,
		0.495059, 0.028318, -0.868397,
		28.844538, 37.412609, 37.411877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912714, 37.859051, 38.065826>,  <28.497995, 37.392788, 38.019756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912714, 37.859051, 38.065826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917257, 37.825153, 37.667290>,  <28.919983, 37.804817, 37.428169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917257, 37.825153, 37.667290>,  <28.912714, 37.859051, 38.065826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917257, 37.825153, 37.667290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017800, 0.996262, -0.084531,
		0.999777, -0.016775, 0.012823,
		0.011358, -0.084740, -0.996338,
		28.920664, 37.799732, 37.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453173, 38.238182, 37.894833>,  <28.912714, 37.859051, 38.065826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453173, 38.238182, 37.894833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198328, 38.216148, 37.587315>,  <29.045422, 38.202930, 37.402802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198328, 38.216148, 37.587315>,  <29.453173, 38.238182, 37.894833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198328, 38.216148, 37.587315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076886, 0.997010, -0.007713,
		0.766926, 0.054195, -0.639444,
		-0.637114, -0.055080, -0.768799,
		29.007195, 38.199623, 37.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651703, 38.820538, 37.469673>,  <29.453173, 38.238182, 37.894833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651703, 38.820538, 37.469673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300438, 38.713490, 37.311073>,  <29.089680, 38.649261, 37.215912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300438, 38.713490, 37.311073>,  <29.651703, 38.820538, 37.469673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300438, 38.713490, 37.311073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129368, 0.930841, -0.341758,
		0.460541, -0.248824, -0.852049,
		-0.878160, -0.267622, -0.396501,
		29.036989, 38.633202, 37.192123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635643, 39.084763, 36.764156>,  <29.651703, 38.820538, 37.469673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635643, 39.084763, 36.764156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256760, 39.026409, 36.878361>,  <29.029430, 38.991398, 36.946884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256760, 39.026409, 36.878361>,  <29.635643, 39.084763, 36.764156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256760, 39.026409, 36.878361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211571, 0.953489, -0.214702,
		-0.240908, -0.263772, -0.934017,
		-0.947207, -0.145888, 0.285510,
		28.972597, 38.982643, 36.964012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253033, 39.215145, 36.165104>,  <29.635643, 39.084763, 36.764156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253033, 39.215145, 36.165104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019444, 39.283268, 36.482586>,  <28.879290, 39.324142, 36.673077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019444, 39.283268, 36.482586>,  <29.253033, 39.215145, 36.165104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019444, 39.283268, 36.482586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213047, 0.911318, -0.352293,
		-0.783319, -0.374826, -0.495900,
		-0.583972, 0.170307, 0.793708,
		28.844252, 39.334362, 36.720699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642857, 39.465385, 35.862705>,  <29.253033, 39.215145, 36.165104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642857, 39.465385, 35.862705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595419, 39.555153, 36.249603>,  <28.566956, 39.609013, 36.481743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595419, 39.555153, 36.249603>,  <28.642857, 39.465385, 35.862705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595419, 39.555153, 36.249603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318852, 0.913926, -0.251144,
		-0.940356, -0.338193, -0.036828,
		-0.118593, 0.224422, 0.967249,
		28.559841, 39.622478, 36.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211939, 40.048820, 35.859058>,  <28.642857, 39.465385, 35.862705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211939, 40.048820, 35.859058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394146, 40.059860, 36.214977>,  <28.503471, 40.066483, 36.428528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394146, 40.059860, 36.214977>,  <28.211939, 40.048820, 35.859058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394146, 40.059860, 36.214977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106106, 0.994077, 0.023489,
		-0.883879, -0.105113, 0.455750,
		0.455520, 0.027596, 0.889798,
		28.530802, 40.068138, 36.481918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737085, 40.300884, 36.317486>,  <28.211939, 40.048820, 35.859058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737085, 40.300884, 36.317486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091534, 40.373985, 36.487846>,  <28.304203, 40.417847, 36.590061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091534, 40.373985, 36.487846>,  <27.737085, 40.300884, 36.317486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091534, 40.373985, 36.487846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154961, 0.982912, -0.099350,
		-0.436780, 0.022038, 0.899299,
		0.886121, 0.182750, 0.425901,
		28.357370, 40.428810, 36.615616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673473, 40.924587, 36.657421>,  <27.737085, 40.300884, 36.317486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673473, 40.924587, 36.657421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067102, 40.873356, 36.608109>,  <28.303280, 40.842617, 36.578522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067102, 40.873356, 36.608109>,  <27.673473, 40.924587, 36.657421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067102, 40.873356, 36.608109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093202, 0.962248, -0.255719,
		0.151380, 0.240155, 0.958858,
		0.984072, -0.128079, -0.123282,
		28.362324, 40.834930, 36.571125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929279, 41.480114, 36.939629>,  <27.673473, 40.924587, 36.657421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929279, 41.480114, 36.939629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237679, 41.370777, 36.709553>,  <28.422718, 41.305176, 36.571507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237679, 41.370777, 36.709553>,  <27.929279, 41.480114, 36.939629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237679, 41.370777, 36.709553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118846, 0.949090, -0.291726,
		0.625648, 0.156561, 0.764234,
		0.770999, -0.273344, -0.575190,
		28.468979, 41.288773, 36.536995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543360, 41.862881, 37.167747>,  <27.929279, 41.480114, 36.939629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543360, 41.862881, 37.167747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618277, 41.729931, 36.798000>,  <28.663227, 41.650162, 36.576153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618277, 41.729931, 36.798000>,  <28.543360, 41.862881, 37.167747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618277, 41.729931, 36.798000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216603, 0.931827, -0.291173,
		0.958126, -0.145685, 0.246518,
		0.187293, -0.332377, -0.924363,
		28.674465, 41.630219, 36.520691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107367, 42.285549, 36.996216>,  <28.543360, 41.862881, 37.167747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107367, 42.285549, 36.996216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976954, 42.158863, 36.639923>,  <28.898705, 42.082851, 36.426147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976954, 42.158863, 36.639923>,  <29.107367, 42.285549, 36.996216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976954, 42.158863, 36.639923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003069, 0.941853, -0.336012,
		0.945350, -0.112287, -0.306112,
		-0.326043, -0.316710, -0.890725,
		28.879143, 42.063850, 36.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470774, 42.651592, 36.509289>,  <29.107367, 42.285549, 36.996216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470774, 42.651592, 36.509289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189167, 42.484852, 36.279301>,  <29.020203, 42.384808, 36.141308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189167, 42.484852, 36.279301>,  <29.470774, 42.651592, 36.509289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189167, 42.484852, 36.279301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103439, 0.861166, -0.497689,
		0.702609, -0.290907, -0.649395,
		-0.704018, -0.416853, -0.574972,
		28.977962, 42.359795, 36.106808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614262, 42.752960, 35.754696>,  <29.470774, 42.651592, 36.509289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614262, 42.752960, 35.754696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217308, 42.712524, 35.782864>,  <28.979136, 42.688263, 35.799767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217308, 42.712524, 35.782864>,  <29.614262, 42.752960, 35.754696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217308, 42.712524, 35.782864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120744, 0.911589, -0.392971,
		-0.024472, -0.398481, -0.916850,
		-0.992382, -0.101087, 0.070422,
		28.919594, 42.682198, 35.803989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403511, 43.062832, 35.116085>,  <29.614262, 42.752960, 35.754696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403511, 43.062832, 35.116085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.085432, 43.053596, 35.358452>,  <28.894585, 43.048058, 35.503872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.085432, 43.053596, 35.358452>,  <29.403511, 43.062832, 35.116085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085432, 43.053596, 35.358452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273335, 0.905633, -0.324217,
		-0.541249, -0.423433, -0.726467,
		-0.795196, -0.023087, 0.605912,
		28.846872, 43.046669, 35.540226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929974, 43.348572, 34.783710>,  <29.403511, 43.062832, 35.116085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929974, 43.348572, 34.783710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767900, 43.385723, 35.147514>,  <28.670656, 43.408016, 35.365795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767900, 43.385723, 35.147514>,  <28.929974, 43.348572, 34.783710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767900, 43.385723, 35.147514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086487, 0.986470, -0.139270,
		-0.910135, -0.135090, -0.391669,
		-0.405184, 0.092880, 0.909505,
		28.646345, 43.413586, 35.420364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357592, 43.712811, 34.690002>,  <28.929974, 43.348572, 34.783710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357592, 43.712811, 34.690002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441372, 43.751854, 35.079178>,  <28.491640, 43.775280, 35.312683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441372, 43.751854, 35.079178>,  <28.357592, 43.712811, 34.690002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441372, 43.751854, 35.079178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200690, 0.978114, -0.054920,
		-0.957002, -0.183755, 0.224456,
		0.209452, 0.097604, 0.972935,
		28.504208, 43.781136, 35.371059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735361, 44.162640, 34.989086>,  <28.357592, 43.712811, 34.690002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735361, 44.162640, 34.989086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054102, 44.213982, 35.225239>,  <28.245346, 44.244785, 35.366932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054102, 44.213982, 35.225239>,  <27.735361, 44.162640, 34.989086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054102, 44.213982, 35.225239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127749, 0.990874, -0.043002,
		-0.590516, -0.041155, 0.805976,
		0.796851, 0.128356, 0.590384,
		28.293158, 44.252487, 35.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516123, 44.711514, 35.398285>,  <27.735361, 44.162640, 34.989086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516123, 44.711514, 35.398285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916035, 44.703190, 35.397583>,  <28.155983, 44.698196, 35.397163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916035, 44.703190, 35.397583>,  <27.516123, 44.711514, 35.398285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916035, 44.703190, 35.397583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020325, 0.988897, -0.147207,
		0.004799, 0.147139, 0.989104,
		0.999782, -0.020810, -0.001755,
		28.215969, 44.696945, 35.397057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693806, 45.275574, 35.705490>,  <27.516123, 44.711514, 35.398285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693806, 45.275574, 35.705490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993044, 45.169239, 35.462284>,  <28.172586, 45.105438, 35.316360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993044, 45.169239, 35.462284>,  <27.693806, 45.275574, 35.705490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993044, 45.169239, 35.462284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171523, 0.962578, -0.209818,
		0.641042, 0.052675, 0.765697,
		0.748095, -0.265837, -0.608017,
		28.217472, 45.089489, 35.279881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.466110, 30.547546, 44.735561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088188, 30.573935, 44.863930>,  <39.861435, 30.589767, 44.940952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088188, 30.573935, 44.863930>,  <40.466110, 30.547546, 44.735561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088188, 30.573935, 44.863930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323413, 0.031112, 0.945746,
		0.052406, 0.997336, -0.050731,
		-0.944806, 0.065970, 0.320921,
		39.804745, 30.593725, 44.960205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638134, 31.012817, 45.245502>,  <40.466110, 30.547546, 44.735561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638134, 31.012817, 45.245502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.268051, 30.884462, 45.326511>,  <40.046001, 30.807449, 45.375118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.268051, 30.884462, 45.326511>,  <40.638134, 31.012817, 45.245502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268051, 30.884462, 45.326511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205297, 0.025545, 0.978366,
		-0.319120, 0.946772, 0.042243,
		-0.925211, -0.320889, 0.202522,
		39.990486, 30.788197, 45.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402241, 31.415636, 45.862041>,  <40.638134, 31.012817, 45.245502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402241, 31.415636, 45.862041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143127, 31.111057, 45.852497>,  <39.987659, 30.928310, 45.846771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143127, 31.111057, 45.852497>,  <40.402241, 31.415636, 45.862041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143127, 31.111057, 45.852497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269159, 0.199462, 0.942215,
		-0.712688, 0.616777, -0.334160,
		-0.647788, -0.761447, -0.023857,
		39.948792, 30.882624, 45.845341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627216, 31.667969, 46.018970>,  <40.402241, 31.415636, 45.862041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627216, 31.667969, 46.018970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690327, 31.280926, 46.097809>,  <39.728191, 31.048700, 46.145111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690327, 31.280926, 46.097809>,  <39.627216, 31.667969, 46.018970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690327, 31.280926, 46.097809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267037, 0.150348, 0.951886,
		-0.950683, -0.202817, -0.234666,
		0.157777, -0.967606, 0.197093,
		39.737659, 30.990644, 46.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999016, 31.563606, 46.419922>,  <39.627216, 31.667969, 46.018970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999016, 31.563606, 46.419922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236176, 31.252657, 46.503979>,  <39.378471, 31.066086, 46.554413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236176, 31.252657, 46.503979>,  <38.999016, 31.563606, 46.419922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236176, 31.252657, 46.503979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259863, 0.062292, 0.963634,
		-0.762196, -0.625944, -0.165078,
		0.592898, -0.777376, 0.210139,
		39.414043, 31.019444, 46.567020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588787, 31.169258, 46.825375>,  <38.999016, 31.563606, 46.419922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588787, 31.169258, 46.825375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969440, 31.068968, 46.896404>,  <39.197830, 31.008793, 46.939022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969440, 31.068968, 46.896404>,  <38.588787, 31.169258, 46.825375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969440, 31.068968, 46.896404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155515, 0.105387, 0.982196,
		-0.264977, -0.962304, 0.061298,
		0.951632, -0.250727, 0.177578,
		39.254929, 30.993750, 46.949677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603081, 30.477011, 47.158554>,  <38.588787, 31.169258, 46.825375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603081, 30.477011, 47.158554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960533, 30.629967, 47.252541>,  <39.175003, 30.721741, 47.308933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960533, 30.629967, 47.252541>,  <38.603081, 30.477011, 47.158554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960533, 30.629967, 47.252541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255208, 0.002283, 0.966883,
		0.369190, -0.923999, 0.099629,
		0.893626, 0.382389, 0.234969,
		39.228622, 30.744684, 47.323032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861324, 29.975647, 47.604416>,  <38.603081, 30.477011, 47.158554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861324, 29.975647, 47.604416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052025, 30.319929, 47.675850>,  <39.166443, 30.526499, 47.718708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052025, 30.319929, 47.675850>,  <38.861324, 29.975647, 47.604416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052025, 30.319929, 47.675850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283222, -0.041920, 0.958138,
		0.832163, -0.507370, 0.223786,
		0.476750, 0.860708, 0.178583,
		39.195049, 30.578142, 47.729424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001404, 29.872204, 48.389046>,  <38.861324, 29.975647, 47.604416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001404, 29.872204, 48.389046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038189, 30.260431, 48.300018>,  <39.060261, 30.493368, 48.246601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038189, 30.260431, 48.300018>,  <39.001404, 29.872204, 48.389046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038189, 30.260431, 48.300018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376594, 0.240818, 0.894530,
		0.921802, 0.001557, 0.387657,
		0.091962, 0.970569, -0.222573,
		39.065777, 30.551601, 48.233246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263451, 30.089788, 48.924545>,  <39.001404, 29.872204, 48.389046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263451, 30.089788, 48.924545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180595, 30.454243, 48.782040>,  <39.130882, 30.672916, 48.696537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180595, 30.454243, 48.782040>,  <39.263451, 30.089788, 48.924545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180595, 30.454243, 48.782040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153634, 0.329350, 0.931625,
		0.966174, 0.247705, 0.071762,
		-0.207133, 0.911137, -0.356265,
		39.118454, 30.727585, 48.675159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738579, 30.637980, 49.209717>,  <39.263451, 30.089788, 48.924545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738579, 30.637980, 49.209717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388325, 30.803391, 49.109913>,  <39.178173, 30.902637, 49.050030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388325, 30.803391, 49.109913>,  <39.738579, 30.637980, 49.209717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388325, 30.803391, 49.109913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158022, 0.242882, 0.957099,
		0.456391, 0.877498, -0.147329,
		-0.875635, 0.413530, -0.249512,
		39.125633, 30.927450, 49.035061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708431, 31.195320, 49.627407>,  <39.738579, 30.637980, 49.209717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708431, 31.195320, 49.627407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329662, 31.183693, 49.499355>,  <39.102402, 31.176716, 49.422523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329662, 31.183693, 49.499355>,  <39.708431, 31.195320, 49.627407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329662, 31.183693, 49.499355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321410, 0.101656, 0.941468,
		0.005175, 0.994395, -0.105604,
		-0.946926, -0.029070, -0.320134,
		39.045586, 31.174973, 49.403316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256454, 31.825018, 49.914062>,  <39.708431, 31.195320, 49.627407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256454, 31.825018, 49.914062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038452, 31.498461, 49.837669>,  <38.907650, 31.302526, 49.791832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038452, 31.498461, 49.837669>,  <39.256454, 31.825018, 49.914062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038452, 31.498461, 49.837669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349298, 0.014004, 0.936907,
		-0.762210, 0.577327, -0.292797,
		-0.545002, -0.816393, -0.190985,
		38.874950, 31.253542, 49.780373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481117, 32.022045, 50.070782>,  <39.256454, 31.825018, 49.914062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481117, 32.022045, 50.070782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591061, 31.648603, 50.162727>,  <38.657024, 31.424538, 50.217896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591061, 31.648603, 50.162727>,  <38.481117, 32.022045, 50.070782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591061, 31.648603, 50.162727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215190, 0.173281, 0.961076,
		-0.937096, -0.313621, -0.153275,
		0.274854, -0.933604, 0.229869,
		38.673515, 31.368523, 50.231689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471714, 32.788239, 50.115936>,  <38.481117, 32.022045, 50.070782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471714, 32.788239, 50.115936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193401, 32.983063, 50.327091>,  <38.026413, 33.099957, 50.453785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193401, 32.983063, 50.327091>,  <38.471714, 32.788239, 50.115936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193401, 32.983063, 50.327091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115375, 0.649620, -0.751453,
		-0.708925, -0.583753, -0.395800,
		-0.695783, 0.487059, 0.527883,
		37.984665, 33.129181, 50.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880581, 32.748169, 49.701977>,  <38.471714, 32.788239, 50.115936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880581, 32.748169, 49.701977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829746, 33.042221, 49.968338>,  <37.799244, 33.218655, 50.128155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829746, 33.042221, 49.968338>,  <37.880581, 32.748169, 49.701977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829746, 33.042221, 49.968338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107965, 0.657105, -0.746027,
		-0.985998, -0.166703, -0.004140,
		-0.127085, 0.735135, 0.665902,
		37.791622, 33.262760, 50.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275467, 33.094368, 49.461945>,  <37.880581, 32.748169, 49.701977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275467, 33.094368, 49.461945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431831, 33.362755, 49.713974>,  <37.525650, 33.523788, 49.865192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431831, 33.362755, 49.713974>,  <37.275467, 33.094368, 49.461945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431831, 33.362755, 49.713974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147971, 0.721448, -0.676475,
		-0.908458, 0.171208, 0.381304,
		0.390909, 0.670970, 0.630071,
		37.549103, 33.564045, 49.902996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884544, 33.642952, 49.343739>,  <37.275467, 33.094368, 49.461945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884544, 33.642952, 49.343739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192604, 33.816898, 49.530396>,  <37.377441, 33.921268, 49.642391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192604, 33.816898, 49.530396>,  <36.884544, 33.642952, 49.343739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192604, 33.816898, 49.530396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054459, 0.684075, -0.727375,
		-0.635535, 0.585601, 0.503157,
		0.770149, 0.434871, 0.466645,
		37.423649, 33.947361, 49.670387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812782, 34.513672, 49.469196>,  <36.884544, 33.642952, 49.343739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812782, 34.513672, 49.469196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201611, 34.423939, 49.441635>,  <37.434910, 34.370098, 49.425098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201611, 34.423939, 49.441635>,  <36.812782, 34.513672, 49.469196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201611, 34.423939, 49.441635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113690, 0.707027, -0.697988,
		0.205293, 0.670663, 0.712787,
		0.972075, -0.224329, -0.068900,
		37.493233, 34.356640, 49.420963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102703, 35.134102, 49.260571>,  <36.812782, 34.513672, 49.469196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102703, 35.134102, 49.260571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394218, 34.870541, 49.186035>,  <37.569126, 34.712402, 49.141315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394218, 34.870541, 49.186035>,  <37.102703, 35.134102, 49.260571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394218, 34.870541, 49.186035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327584, 0.574459, -0.750124,
		0.601300, 0.485639, 0.634503,
		0.728785, -0.658902, -0.186334,
		37.612854, 34.672871, 49.130135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782784, 35.535625, 49.254036>,  <37.102703, 35.134102, 49.260571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782784, 35.535625, 49.254036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823933, 35.186535, 49.063137>,  <37.848621, 34.977081, 48.948597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823933, 35.186535, 49.063137>,  <37.782784, 35.535625, 49.254036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823933, 35.186535, 49.063137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047800, 0.474900, -0.878740,
		0.993546, 0.113207, 0.007136,
		0.102869, -0.872728, -0.477247,
		37.854794, 34.924717, 48.919964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157860, 35.725677, 48.633129>,  <37.782784, 35.535625, 49.254036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157860, 35.725677, 48.633129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041878, 35.352432, 48.548073>,  <37.972286, 35.128483, 48.497040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041878, 35.352432, 48.548073>,  <38.157860, 35.725677, 48.633129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041878, 35.352432, 48.548073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024061, 0.229228, -0.973075,
		0.956737, -0.277035, -0.088919,
		-0.289958, -0.933117, -0.212645,
		37.954891, 35.072498, 48.484280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494564, 35.643066, 47.964939>,  <38.157860, 35.725677, 48.633129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494564, 35.643066, 47.964939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214329, 35.362400, 48.016830>,  <38.046188, 35.194000, 48.047966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214329, 35.362400, 48.016830>,  <38.494564, 35.643066, 47.964939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214329, 35.362400, 48.016830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219328, 0.038747, -0.974881,
		0.679018, -0.711448, -0.181042,
		-0.700592, -0.701670, 0.129731,
		38.004150, 35.151897, 48.055748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612072, 35.048424, 47.644108>,  <38.494564, 35.643066, 47.964939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612072, 35.048424, 47.644108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.213272, 35.057652, 47.673641>,  <37.973991, 35.063190, 47.691360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.213272, 35.057652, 47.673641>,  <38.612072, 35.048424, 47.644108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213272, 35.057652, 47.673641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075469, -0.080753, -0.993873,
		-0.016964, -0.996467, 0.082252,
		-0.997004, 0.023067, 0.073833,
		37.914169, 35.064571, 47.695789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475990, 34.728302, 47.081287>,  <38.612072, 35.048424, 47.644108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475990, 34.728302, 47.081287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110161, 34.865414, 47.167141>,  <37.890663, 34.947681, 47.218651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110161, 34.865414, 47.167141>,  <38.475990, 34.728302, 47.081287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110161, 34.865414, 47.167141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246829, -0.052690, -0.967626,
		-0.320373, -0.937937, 0.132797,
		-0.914569, 0.342779, 0.214630,
		37.835789, 34.968246, 47.231529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009560, 34.322639, 46.763996>,  <38.475990, 34.728302, 47.081287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009560, 34.322639, 46.763996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835163, 34.676632, 46.829365>,  <37.730526, 34.889030, 46.868587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835163, 34.676632, 46.829365>,  <38.009560, 34.322639, 46.763996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835163, 34.676632, 46.829365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456498, -0.060984, -0.887632,
		-0.775575, -0.461607, 0.430584,
		-0.435996, 0.884986, 0.163425,
		37.704365, 34.942127, 46.878391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377960, 34.249138, 46.535748>,  <38.009560, 34.322639, 46.763996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377960, 34.249138, 46.535748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432144, 34.645294, 46.546848>,  <37.464653, 34.882988, 46.553509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432144, 34.645294, 46.546848>,  <37.377960, 34.249138, 46.535748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432144, 34.645294, 46.546848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252590, 0.061609, -0.965610,
		-0.958044, 0.123791, 0.258509,
		0.135460, 0.990394, 0.027756,
		37.472782, 34.942413, 46.555176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768574, 34.543415, 46.181103>,  <37.377960, 34.249138, 46.535748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768574, 34.543415, 46.181103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.044804, 34.832710, 46.178619>,  <37.210541, 35.006287, 46.177132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.044804, 34.832710, 46.178619>,  <36.768574, 34.543415, 46.181103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044804, 34.832710, 46.178619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130962, 0.116600, -0.984507,
		-0.711309, 0.680685, 0.175238,
		0.690571, 0.723238, -0.006205,
		37.251976, 35.049683, 46.176758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107227, 34.689838, 46.539474>,  <36.768574, 34.543415, 46.181103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107227, 34.689838, 46.539474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710827, 34.671501, 46.489185>,  <35.472984, 34.660500, 46.459011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710827, 34.671501, 46.489185>,  <36.107227, 34.689838, 46.539474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710827, 34.671501, 46.489185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083000, -0.526365, 0.846198,
		-0.104972, 0.849022, 0.517825,
		-0.991005, -0.045848, -0.125722,
		35.413525, 34.657745, 46.451469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846592, 34.998028, 47.151379>,  <36.107227, 34.689838, 46.539474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846592, 34.998028, 47.151379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571640, 34.756695, 46.989639>,  <35.406670, 34.611897, 46.892593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571640, 34.756695, 46.989639>,  <35.846592, 34.998028, 47.151379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571640, 34.756695, 46.989639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233576, -0.343522, 0.909634,
		-0.687716, 0.719710, 0.095206,
		-0.687378, -0.603333, -0.404353,
		35.365425, 34.575695, 46.868332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273140, 34.978863, 47.645264>,  <35.846592, 34.998028, 47.151379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273140, 34.978863, 47.645264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196228, 34.652943, 47.426491>,  <35.150082, 34.457390, 47.295227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196228, 34.652943, 47.426491>,  <35.273140, 34.978863, 47.645264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196228, 34.652943, 47.426491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348350, -0.464362, 0.814261,
		-0.917432, 0.347087, -0.194548,
		-0.192279, -0.814800, -0.546928,
		35.138546, 34.408504, 47.262413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708328, 34.720837, 48.043056>,  <35.273140, 34.978863, 47.645264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708328, 34.720837, 48.043056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784992, 34.422897, 47.787411>,  <34.830990, 34.244133, 47.634026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784992, 34.422897, 47.787411>,  <34.708328, 34.720837, 48.043056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784992, 34.422897, 47.787411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187638, -0.666979, 0.721062,
		-0.963358, -0.018276, -0.267594,
		0.191658, -0.744852, -0.639110,
		34.842491, 34.199440, 47.595676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092842, 34.246384, 48.072350>,  <34.708328, 34.720837, 48.043056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092842, 34.246384, 48.072350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411369, 34.047356, 47.934769>,  <34.602486, 33.927940, 47.852219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411369, 34.047356, 47.934769>,  <34.092842, 34.246384, 48.072350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411369, 34.047356, 47.934769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109601, -0.677910, 0.726929,
		-0.594865, -0.541170, -0.594366,
		0.796318, -0.497568, -0.343953,
		34.650265, 33.898087, 47.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946602, 33.463291, 48.030151>,  <34.092842, 34.246384, 48.072350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946602, 33.463291, 48.030151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343689, 33.505424, 48.053555>,  <34.581940, 33.530704, 48.067596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343689, 33.505424, 48.053555>,  <33.946602, 33.463291, 48.030151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343689, 33.505424, 48.053555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019454, -0.619334, 0.784887,
		0.118909, -0.778030, -0.616871,
		0.992714, 0.105331, 0.058508,
		34.641502, 33.537025, 48.071106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127842, 32.851791, 48.178085>,  <33.946602, 33.463291, 48.030151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127842, 32.851791, 48.178085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461262, 33.055801, 48.263000>,  <34.661316, 33.178207, 48.313950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461262, 33.055801, 48.263000>,  <34.127842, 32.851791, 48.178085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461262, 33.055801, 48.263000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149944, -0.578725, 0.801619,
		0.531702, -0.636360, -0.558873,
		0.833553, 0.510022, 0.212291,
		34.711327, 33.208809, 48.326687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969059, 32.040073, 48.187965>,  <34.127842, 32.851791, 48.178085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969059, 32.040073, 48.187965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584202, 32.098610, 48.279942>,  <33.353287, 32.133732, 48.335129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584202, 32.098610, 48.279942>,  <33.969059, 32.040073, 48.187965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584202, 32.098610, 48.279942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186721, 0.260676, -0.947198,
		-0.198551, -0.954271, -0.223482,
		-0.962140, 0.146339, 0.229940,
		33.295559, 32.142509, 48.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548595, 31.722414, 47.684494>,  <33.969059, 32.040073, 48.187965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548595, 31.722414, 47.684494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315590, 32.005440, 47.844509>,  <33.175785, 32.175255, 47.940517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315590, 32.005440, 47.844509>,  <33.548595, 31.722414, 47.684494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315590, 32.005440, 47.844509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152828, 0.388041, -0.908883,
		-0.798323, -0.590576, -0.117904,
		-0.582515, 0.707563, 0.400038,
		33.140835, 32.217709, 47.964520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047184, 31.606592, 47.300865>,  <33.548595, 31.722414, 47.684494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047184, 31.606592, 47.300865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974331, 31.979042, 47.427254>,  <32.930618, 32.202511, 47.503086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974331, 31.979042, 47.427254>,  <33.047184, 31.606592, 47.300865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974331, 31.979042, 47.427254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012191, 0.319183, -0.947615,
		-0.983199, -0.176440, -0.046781,
		-0.182129, 0.931124, 0.315972,
		32.919693, 32.258381, 47.522045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400715, 31.860792, 47.020866>,  <33.047184, 31.606592, 47.300865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400715, 31.860792, 47.020866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568703, 32.208729, 47.124405>,  <32.669495, 32.417492, 47.186527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568703, 32.208729, 47.124405>,  <32.400715, 31.860792, 47.020866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568703, 32.208729, 47.124405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023981, 0.295758, -0.954962,
		-0.907223, 0.394844, 0.145069,
		0.419966, 0.869842, 0.258850,
		32.694695, 32.469681, 47.202061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912178, 32.276337, 46.831818>,  <32.400715, 31.860792, 47.020866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912178, 32.276337, 46.831818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234070, 32.511173, 46.866993>,  <32.427204, 32.652077, 46.888100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234070, 32.511173, 46.866993>,  <31.912178, 32.276337, 46.831818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234070, 32.511173, 46.866993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097165, 0.276403, -0.956117,
		-0.585634, 0.760872, 0.279475,
		0.804731, 0.587090, 0.087941,
		32.475491, 32.687302, 46.893375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651667, 33.003407, 46.817310>,  <31.912178, 32.276337, 46.831818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651667, 33.003407, 46.817310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033871, 32.975174, 46.702755>,  <32.263191, 32.958233, 46.634022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033871, 32.975174, 46.702755>,  <31.651667, 33.003407, 46.817310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033871, 32.975174, 46.702755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199565, 0.560282, -0.803902,
		0.217201, 0.825289, 0.521269,
		0.955509, -0.070581, -0.286392,
		32.320522, 32.953999, 46.616837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786606, 33.691174, 46.665142>,  <31.651667, 33.003407, 46.817310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786606, 33.691174, 46.665142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048153, 33.470818, 46.457687>,  <32.205082, 33.338604, 46.333214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048153, 33.470818, 46.457687>,  <31.786606, 33.691174, 46.665142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048153, 33.470818, 46.457687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029535, 0.666362, -0.745043,
		0.756033, 0.502476, 0.419441,
		0.653866, -0.550889, -0.518633,
		32.244312, 33.305550, 46.302097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.430977, 29.636120, 48.732967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.768112, 29.849392, 48.703735>,  <36.970394, 29.977356, 48.686195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.768112, 29.849392, 48.703735>,  <36.430977, 29.636120, 48.732967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768112, 29.849392, 48.703735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084095, -0.003638, -0.996451,
		-0.531556, 0.845993, 0.041772,
		0.842838, 0.533182, -0.073078,
		37.020966, 30.009346, 48.681812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312702, 30.279396, 48.432549>,  <36.430977, 29.636120, 48.732967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312702, 30.279396, 48.432549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.701405, 30.215693, 48.362896>,  <36.934628, 30.177471, 48.321106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.701405, 30.215693, 48.362896>,  <36.312702, 30.279396, 48.432549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701405, 30.215693, 48.362896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121060, 0.296954, -0.947187,
		0.202557, 0.941517, 0.269287,
		0.971759, -0.159259, -0.174130,
		36.992931, 30.167915, 48.310658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500526, 30.932207, 48.075233>,  <36.312702, 30.279396, 48.432549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500526, 30.932207, 48.075233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751740, 30.631090, 47.996368>,  <36.902470, 30.450420, 47.949051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751740, 30.631090, 47.996368>,  <36.500526, 30.932207, 48.075233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751740, 30.631090, 47.996368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182299, 0.103987, -0.977729,
		0.756531, 0.649991, -0.071926,
		0.628035, -0.752794, -0.197161,
		36.940151, 30.405252, 47.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799229, 31.125420, 47.534286>,  <36.500526, 30.932207, 48.075233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799229, 31.125420, 47.534286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880093, 30.733690, 47.531330>,  <36.928612, 30.498652, 47.529556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880093, 30.733690, 47.531330>,  <36.799229, 31.125420, 47.534286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880093, 30.733690, 47.531330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165999, -0.026824, -0.985761,
		0.965182, 0.200509, -0.167989,
		0.202161, -0.979325, -0.007394,
		36.940742, 30.439894, 47.529114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277752, 31.079157, 46.964127>,  <36.799229, 31.125420, 47.534286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277752, 31.079157, 46.964127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.123852, 30.720959, 47.053623>,  <37.031513, 30.506041, 47.107319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.123852, 30.720959, 47.053623>,  <37.277752, 31.079157, 46.964127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123852, 30.720959, 47.053623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187852, -0.161356, -0.968853,
		0.903703, -0.414796, -0.106138,
		-0.384750, -0.895494, 0.223738,
		37.008427, 30.452311, 47.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548141, 30.706375, 46.401070>,  <37.277752, 31.079157, 46.964127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548141, 30.706375, 46.401070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239677, 30.513817, 46.567722>,  <37.054600, 30.398283, 46.667713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239677, 30.513817, 46.567722>,  <37.548141, 30.706375, 46.401070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239677, 30.513817, 46.567722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219056, -0.413819, -0.883611,
		0.597774, -0.772666, 0.213667,
		-0.771156, -0.481394, 0.416627,
		37.008331, 30.369398, 46.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590965, 30.032753, 46.294952>,  <37.548141, 30.706375, 46.401070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590965, 30.032753, 46.294952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.199669, 30.023909, 46.377460>,  <36.964890, 30.018602, 46.426968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.199669, 30.023909, 46.377460>,  <37.590965, 30.032753, 46.294952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199669, 30.023909, 46.377460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162200, -0.538392, -0.826938,
		0.129341, -0.842405, 0.523092,
		-0.978244, -0.022111, 0.206274,
		36.906197, 30.017275, 46.439342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382515, 29.389051, 46.042118>,  <37.590965, 30.032753, 46.294952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382515, 29.389051, 46.042118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.031944, 29.580133, 46.066372>,  <36.821602, 29.694782, 46.080925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.031944, 29.580133, 46.066372>,  <37.382515, 29.389051, 46.042118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031944, 29.580133, 46.066372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275792, -0.394738, -0.876425,
		-0.394738, -0.784844, 0.477705,
		0.876425, -0.477705, -0.060636,
		36.769016, 29.723446, 46.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853565, 28.913595, 45.795658>,  <37.382515, 29.389051, 46.042118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853565, 28.913595, 45.795658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666748, 29.266130, 45.767056>,  <36.554657, 29.477652, 45.749893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666748, 29.266130, 45.767056>,  <36.853565, 28.913595, 45.795658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666748, 29.266130, 45.767056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395901, -0.280732, -0.874329,
		-0.790653, -0.380042, 0.480037,
		-0.467044, 0.881338, -0.071503,
		36.526634, 29.530533, 45.745605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259293, 28.760355, 45.497322>,  <36.853565, 28.913595, 45.795658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259293, 28.760355, 45.497322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275261, 29.156792, 45.446495>,  <36.284843, 29.394653, 45.416000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275261, 29.156792, 45.446495>,  <36.259293, 28.760355, 45.497322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275261, 29.156792, 45.446495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420811, -0.098663, -0.901767,
		-0.906269, 0.089471, 0.413123,
		0.039922, 0.991091, -0.127065,
		36.287239, 29.454119, 45.408375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615765, 28.968210, 45.360008>,  <36.259293, 28.760355, 45.497322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615765, 28.968210, 45.360008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868382, 29.233812, 45.199883>,  <36.019951, 29.393173, 45.103806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868382, 29.233812, 45.199883>,  <35.615765, 28.968210, 45.360008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868382, 29.233812, 45.199883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336363, -0.230560, -0.913073,
		-0.698581, 0.711296, 0.077738,
		0.631542, 0.664003, -0.400318,
		36.057842, 29.433014, 45.079788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239300, 29.136450, 44.780556>,  <35.615765, 28.968210, 45.360008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239300, 29.136450, 44.780556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604767, 29.292593, 44.735229>,  <35.824047, 29.386278, 44.708035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604767, 29.292593, 44.735229>,  <35.239300, 29.136450, 44.780556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604767, 29.292593, 44.735229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073539, -0.115423, -0.990591,
		-0.399761, 0.913400, -0.076751,
		0.913664, 0.390356, -0.113312,
		35.878868, 29.409700, 44.701237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792801, 29.619783, 45.016861>,  <35.239300, 29.136450, 44.780556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792801, 29.619783, 45.016861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403633, 29.689137, 44.955711>,  <34.170132, 29.730749, 44.919022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403633, 29.689137, 44.955711>,  <34.792801, 29.619783, 45.016861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403633, 29.689137, 44.955711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156889, -0.009611, 0.987569,
		0.169760, 0.984807, 0.036553,
		-0.972917, 0.173385, -0.152874,
		34.111759, 29.741152, 44.909851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608219, 30.168831, 45.414227>,  <34.792801, 29.619783, 45.016861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608219, 30.168831, 45.414227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255020, 29.987885, 45.364143>,  <34.043102, 29.879316, 45.334091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255020, 29.987885, 45.364143>,  <34.608219, 30.168831, 45.414227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255020, 29.987885, 45.364143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168649, 0.056823, 0.984037,
		-0.438031, 0.890020, -0.126466,
		-0.882998, -0.452367, -0.125211,
		33.990120, 29.852175, 45.326580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120682, 30.578867, 45.784843>,  <34.608219, 30.168831, 45.414227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120682, 30.578867, 45.784843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.966938, 30.210365, 45.760971>,  <33.874691, 29.989265, 45.746647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.966938, 30.210365, 45.760971>,  <34.120682, 30.578867, 45.784843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966938, 30.210365, 45.760971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132893, -0.008763, 0.991092,
		-0.913569, 0.388865, -0.119060,
		-0.384358, -0.921253, -0.059683,
		33.851631, 29.933989, 45.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603256, 30.603268, 46.153728>,  <34.120682, 30.578867, 45.784843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603256, 30.603268, 46.153728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625721, 30.203978, 46.161629>,  <33.639198, 29.964403, 46.166367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625721, 30.203978, 46.161629>,  <33.603256, 30.603268, 46.153728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625721, 30.203978, 46.161629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145558, 0.011380, 0.989284,
		-0.987754, -0.058433, -0.144660,
		0.056161, -0.998226, 0.019746,
		33.642570, 29.904510, 46.167553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074997, 30.400990, 46.559387>,  <33.603256, 30.603268, 46.153728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074997, 30.400990, 46.559387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303940, 30.074009, 46.533535>,  <33.441307, 29.877821, 46.518024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303940, 30.074009, 46.533535>,  <33.074997, 30.400990, 46.559387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303940, 30.074009, 46.533535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276138, -0.266359, 0.923472,
		-0.772110, -0.510709, -0.378183,
		0.572357, -0.817453, -0.064632,
		33.475647, 29.828773, 46.514145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561356, 29.956770, 46.775558>,  <33.074997, 30.400990, 46.559387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561356, 29.956770, 46.775558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918488, 29.783449, 46.824711>,  <33.132767, 29.679457, 46.854202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918488, 29.783449, 46.824711>,  <32.561356, 29.956770, 46.775558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918488, 29.783449, 46.824711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310652, -0.394911, 0.864604,
		-0.326108, -0.810120, -0.487195,
		0.892831, -0.433303, 0.122882,
		33.186337, 29.653458, 46.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347523, 29.268164, 46.846035>,  <32.561356, 29.956770, 46.775558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347523, 29.268164, 46.846035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713539, 29.322933, 46.997799>,  <32.933147, 29.355795, 47.088860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713539, 29.322933, 46.997799>,  <32.347523, 29.268164, 46.846035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713539, 29.322933, 46.997799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300209, -0.397045, 0.867312,
		0.269401, -0.907528, -0.322206,
		0.915040, 0.136925, 0.379412,
		32.988052, 29.364010, 47.111622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492443, 28.726217, 47.117592>,  <32.347523, 29.268164, 46.846035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492443, 28.726217, 47.117592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744041, 28.973625, 47.305973>,  <32.895000, 29.122070, 47.419003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744041, 28.973625, 47.305973>,  <32.492443, 28.726217, 47.117592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744041, 28.973625, 47.305973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293325, -0.372198, 0.880584,
		0.719948, -0.692025, -0.052683,
		0.628995, 0.618522, 0.470952,
		32.932739, 29.159182, 47.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827702, 28.317883, 47.519394>,  <32.492443, 28.726217, 47.117592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827702, 28.317883, 47.519394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872692, 28.673510, 47.696892>,  <32.899689, 28.886887, 47.803391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872692, 28.673510, 47.696892>,  <32.827702, 28.317883, 47.519394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872692, 28.673510, 47.696892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159520, -0.424625, 0.891205,
		0.980766, -0.171028, 0.094062,
		0.112480, 0.889068, 0.443740,
		32.906437, 28.940229, 47.830013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338383, 28.310574, 48.098995>,  <32.827702, 28.317883, 47.519394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338383, 28.310574, 48.098995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131466, 28.638105, 48.198536>,  <33.007317, 28.834623, 48.258259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131466, 28.638105, 48.198536>,  <33.338383, 28.310574, 48.098995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131466, 28.638105, 48.198536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025543, -0.305422, 0.951875,
		0.855425, 0.486045, 0.178909,
		-0.517296, 0.818827, 0.248850,
		32.976276, 28.883753, 48.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692822, 28.760345, 48.658295>,  <33.338383, 28.310574, 48.098995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692822, 28.760345, 48.658295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304623, 28.855461, 48.674213>,  <33.071701, 28.912531, 48.683765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304623, 28.855461, 48.674213>,  <33.692822, 28.760345, 48.658295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304623, 28.855461, 48.674213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007953, -0.133419, 0.991028,
		0.240966, 0.962110, 0.127592,
		-0.970501, 0.237789, 0.039801,
		33.013474, 28.926798, 48.686153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550415, 29.065367, 49.363022>,  <33.692822, 28.760345, 48.658295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550415, 29.065367, 49.363022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175037, 29.031538, 49.229057>,  <32.949810, 29.011242, 49.148678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175037, 29.031538, 49.229057>,  <33.550415, 29.065367, 49.363022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175037, 29.031538, 49.229057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343473, 0.125677, 0.930715,
		-0.036620, 0.988460, -0.146989,
		-0.938448, -0.084570, -0.334908,
		32.893501, 29.006166, 49.128586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216961, 29.408344, 49.797817>,  <33.550415, 29.065367, 49.363022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216961, 29.408344, 49.797817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.930317, 29.174236, 49.646069>,  <32.758331, 29.033772, 49.555019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.930317, 29.174236, 49.646069>,  <33.216961, 29.408344, 49.797817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930317, 29.174236, 49.646069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379682, -0.128927, 0.916089,
		-0.585072, 0.800523, -0.129826,
		-0.716612, -0.585270, -0.379375,
		32.715332, 28.998655, 49.532257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592190, 29.556406, 50.161064>,  <33.216961, 29.408344, 49.797817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592190, 29.556406, 50.161064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528912, 29.179785, 50.042103>,  <32.490944, 28.953812, 49.970726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528912, 29.179785, 50.042103>,  <32.592190, 29.556406, 50.161064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528912, 29.179785, 50.042103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342457, -0.230181, 0.910900,
		-0.926119, 0.245950, -0.286028,
		-0.158197, -0.941555, -0.297403,
		32.481453, 28.897318, 49.952881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779324, 30.160118, 50.404209>,  <32.592190, 29.556406, 50.161064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779324, 30.160118, 50.404209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.022018, 30.404615, 50.607483>,  <33.167633, 30.551313, 50.729446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.022018, 30.404615, 50.607483>,  <32.779324, 30.160118, 50.404209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022018, 30.404615, 50.607483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042115, 0.663126, -0.747322,
		-0.793788, 0.432023, 0.428084,
		0.606734, 0.611245, 0.508187,
		33.204041, 30.587988, 50.759937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403374, 30.821131, 50.530182>,  <32.779324, 30.160118, 50.404209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403374, 30.821131, 50.530182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.794487, 30.893148, 50.573112>,  <33.029156, 30.936359, 50.598873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.794487, 30.893148, 50.573112>,  <32.403374, 30.821131, 50.530182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794487, 30.893148, 50.573112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046642, 0.686100, -0.726010,
		-0.204352, 0.704876, 0.679257,
		0.977786, 0.180044, 0.107329,
		33.087822, 30.947161, 50.605312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373814, 31.555235, 50.399223>,  <32.403374, 30.821131, 50.530182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373814, 31.555235, 50.399223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.741749, 31.417677, 50.323719>,  <32.962509, 31.335142, 50.278416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.741749, 31.417677, 50.323719>,  <32.373814, 31.555235, 50.399223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741749, 31.417677, 50.323719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005819, 0.469154, -0.883097,
		0.392249, 0.813408, 0.429545,
		0.919841, -0.343894, -0.188758,
		33.017700, 31.314508, 50.267090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761726, 32.202301, 50.331074>,  <32.373814, 31.555235, 50.399223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761726, 32.202301, 50.331074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.950321, 31.908335, 50.136097>,  <33.063477, 31.731955, 50.019112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.950321, 31.908335, 50.136097>,  <32.761726, 32.202301, 50.331074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950321, 31.908335, 50.136097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044906, 0.572029, -0.819004,
		0.880729, 0.364260, 0.302706,
		0.471487, -0.734914, -0.487445,
		33.091766, 31.687860, 49.989864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129967, 32.590561, 49.948711>,  <32.761726, 32.202301, 50.331074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129967, 32.590561, 49.948711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160843, 32.230953, 49.776291>,  <33.179367, 32.015186, 49.672840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160843, 32.230953, 49.776291>,  <33.129967, 32.590561, 49.948711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160843, 32.230953, 49.776291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059954, 0.435741, -0.898073,
		0.995212, 0.043481, 0.087535,
		0.077191, -0.899021, -0.431048,
		33.184002, 31.961246, 49.646976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701092, 32.635666, 49.455784>,  <33.129967, 32.590561, 49.948711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701092, 32.635666, 49.455784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460754, 32.344460, 49.323734>,  <33.316551, 32.169735, 49.244507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460754, 32.344460, 49.323734>,  <33.701092, 32.635666, 49.455784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460754, 32.344460, 49.323734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179985, 0.279164, -0.943225,
		0.778843, -0.626145, -0.036701,
		-0.600841, -0.728018, -0.330121,
		33.280502, 32.126053, 49.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998528, 32.353359, 48.886791>,  <33.701092, 32.635666, 49.455784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998528, 32.353359, 48.886791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617249, 32.241375, 48.841106>,  <33.388481, 32.174183, 48.813698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617249, 32.241375, 48.841106>,  <33.998528, 32.353359, 48.886791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617249, 32.241375, 48.841106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050319, 0.225577, -0.972925,
		0.298150, -0.933131, -0.200930,
		-0.953192, -0.279967, -0.114210,
		33.331291, 32.157387, 48.806843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607033, 32.346767, 48.330238>,  <33.998528, 32.353359, 48.886791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607033, 32.346767, 48.330238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.812065, 32.658695, 48.473988>,  <34.935085, 32.845852, 48.560238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.812065, 32.658695, 48.473988>,  <34.607033, 32.346767, 48.330238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812065, 32.658695, 48.473988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181593, -0.507517, 0.842289,
		0.839220, -0.366478, -0.401751,
		0.512576, 0.779821, 0.359369,
		34.965839, 32.892643, 48.581799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192265, 32.058926, 48.756233>,  <34.607033, 32.346767, 48.330238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192265, 32.058926, 48.756233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.129276, 32.429703, 48.892452>,  <35.091484, 32.652168, 48.974182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.129276, 32.429703, 48.892452>,  <35.192265, 32.058926, 48.756233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129276, 32.429703, 48.892452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487622, -0.226888, 0.843058,
		0.858736, 0.298817, -0.416271,
		-0.157473, 0.926947, 0.340546,
		35.082035, 32.707787, 48.994617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922031, 32.255810, 49.015331>,  <35.192265, 32.058926, 48.756233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922031, 32.255810, 49.015331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636116, 32.479725, 49.183002>,  <35.464565, 32.614075, 49.283607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636116, 32.479725, 49.183002>,  <35.922031, 32.255810, 49.015331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636116, 32.479725, 49.183002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366014, -0.211297, 0.906304,
		0.595908, 0.801245, -0.053856,
		-0.714792, 0.559786, 0.419181,
		35.421677, 32.647659, 49.308758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246441, 32.428040, 49.671959>,  <35.922031, 32.255810, 49.015331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246441, 32.428040, 49.671959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864830, 32.533875, 49.728294>,  <35.635864, 32.597374, 49.762096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864830, 32.533875, 49.728294>,  <36.246441, 32.428040, 49.671959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864830, 32.533875, 49.728294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123953, -0.079543, 0.989095,
		0.272904, 0.961076, 0.043090,
		-0.954023, 0.264587, 0.140836,
		35.578625, 32.613251, 49.770546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292519, 32.975113, 50.059387>,  <36.246441, 32.428040, 49.671959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292519, 32.975113, 50.059387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927197, 32.817745, 50.101536>,  <35.708004, 32.723324, 50.126823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927197, 32.817745, 50.101536>,  <36.292519, 32.975113, 50.059387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927197, 32.817745, 50.101536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105161, 0.022147, 0.994208,
		-0.393472, 0.919093, 0.021145,
		-0.913302, -0.393417, 0.105367,
		35.653206, 32.699718, 50.133144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885563, 33.397045, 50.507889>,  <36.292519, 32.975113, 50.059387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885563, 33.397045, 50.507889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718552, 33.033703, 50.517323>,  <35.618343, 32.815697, 50.522984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718552, 33.033703, 50.517323>,  <35.885563, 33.397045, 50.507889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718552, 33.033703, 50.517323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155431, -0.045823, 0.986783,
		-0.895271, 0.415677, 0.160320,
		-0.417529, -0.908357, 0.023585,
		35.593292, 32.761196, 50.524399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409706, 33.488544, 51.000710>,  <35.885563, 33.397045, 50.507889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409706, 33.488544, 51.000710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.495258, 33.101727, 50.945450>,  <35.546589, 32.869637, 50.912292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.495258, 33.101727, 50.945450>,  <35.409706, 33.488544, 51.000710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495258, 33.101727, 50.945450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246909, -0.083311, 0.965451,
		-0.945141, -0.240602, 0.220952,
		0.213882, -0.967042, -0.138148,
		35.559422, 32.811615, 50.904007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977676, 33.187653, 51.490528>,  <35.409706, 33.488544, 51.000710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977676, 33.187653, 51.490528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232792, 32.897095, 51.388092>,  <35.385860, 32.722759, 51.326630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232792, 32.897095, 51.388092>,  <34.977676, 33.187653, 51.490528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232792, 32.897095, 51.388092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159875, -0.200396, 0.966582,
		-0.753439, -0.657414, -0.011678,
		0.637785, -0.726394, -0.256090,
		35.424126, 32.679176, 51.311264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727512, 32.649288, 51.879154>,  <34.977676, 33.187653, 51.490528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727512, 32.649288, 51.879154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.099045, 32.554176, 51.765499>,  <35.321964, 32.497108, 51.697308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.099045, 32.554176, 51.765499>,  <34.727512, 32.649288, 51.879154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099045, 32.554176, 51.765499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214667, -0.279675, 0.935788,
		-0.301989, -0.930181, -0.208724,
		0.928828, -0.237791, -0.284138,
		35.377693, 32.482841, 51.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.250828, 36.400719, 36.051228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598446, 36.572308, 36.149807>,  <35.807018, 36.675262, 36.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598446, 36.572308, 36.149807>,  <35.250828, 36.400719, 36.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598446, 36.572308, 36.149807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, -0.219405, 0.961679,
		0.466611, -0.876265, -0.120141,
		0.869046, 0.428976, 0.246453,
		35.859161, 36.701000, 36.223743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604000, 35.950413, 36.521214>,  <35.250828, 36.400719, 36.051228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604000, 35.950413, 36.521214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771896, 36.308910, 36.578587>,  <35.872635, 36.524010, 36.613010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771896, 36.308910, 36.578587>,  <35.604000, 35.950413, 36.521214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771896, 36.308910, 36.578587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047616, -0.136071, 0.989554,
		0.906395, -0.422183, -0.014439,
		0.419738, 0.896240, 0.143437,
		35.897820, 36.577782, 36.621616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103928, 35.760792, 36.944687>,  <35.604000, 35.950413, 36.521214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103928, 35.760792, 36.944687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036983, 36.152203, 36.992825>,  <35.996819, 36.387047, 37.021706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036983, 36.152203, 36.992825>,  <36.103928, 35.760792, 36.944687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036983, 36.152203, 36.992825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059241, -0.131824, 0.989501,
		0.984115, 0.158470, 0.080031,
		-0.167356, 0.978524, 0.120342,
		35.986778, 36.445759, 37.028927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498112, 35.960468, 37.517239>,  <36.103928, 35.760792, 36.944687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498112, 35.960468, 37.517239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218494, 36.245914, 37.498974>,  <36.050724, 36.417183, 37.488014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218494, 36.245914, 37.498974>,  <36.498112, 35.960468, 37.517239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218494, 36.245914, 37.498974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193027, -0.126834, 0.972961,
		0.688530, 0.688959, 0.226410,
		-0.699047, 0.713616, -0.045658,
		36.008781, 36.459999, 37.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607327, 36.357540, 38.178841>,  <36.498112, 35.960468, 37.517239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607327, 36.357540, 38.178841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235020, 36.452114, 38.067295>,  <36.011635, 36.508858, 38.000366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235020, 36.452114, 38.067295>,  <36.607327, 36.357540, 38.178841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235020, 36.452114, 38.067295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282672, 0.018353, 0.959041,
		0.231869, 0.971474, 0.049751,
		-0.930770, 0.236435, -0.278864,
		35.955788, 36.523045, 37.983635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406395, 36.837719, 38.643944>,  <36.607327, 36.357540, 38.178841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406395, 36.837719, 38.643944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056660, 36.732780, 38.480629>,  <35.846817, 36.669819, 38.382641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056660, 36.732780, 38.480629>,  <36.406395, 36.837719, 38.643944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056660, 36.732780, 38.480629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449869, 0.122538, 0.884648,
		-0.182054, 0.957162, -0.225162,
		-0.874342, -0.262347, -0.408289,
		35.794357, 36.654076, 38.358143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993774, 37.238857, 39.059177>,  <36.406395, 36.837719, 38.643944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993774, 37.238857, 39.059177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774849, 36.944584, 38.899570>,  <35.643494, 36.768021, 38.803806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774849, 36.944584, 38.899570>,  <35.993774, 37.238857, 39.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774849, 36.944584, 38.899570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577918, -0.012630, 0.815997,
		-0.605357, 0.677206, -0.418253,
		-0.547316, -0.735685, -0.399015,
		35.610653, 36.723877, 38.779865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317993, 37.319614, 39.317848>,  <35.993774, 37.238857, 39.059177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317993, 37.319614, 39.317848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311417, 36.936577, 39.202789>,  <35.307472, 36.706753, 39.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311417, 36.936577, 39.202789>,  <35.317993, 37.319614, 39.317848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311417, 36.936577, 39.202789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446879, -0.250313, 0.858861,
		-0.894443, 0.142662, -0.423815,
		-0.016441, -0.957596, -0.287643,
		35.306484, 36.649300, 39.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621334, 37.243999, 39.372368>,  <35.317993, 37.319614, 39.317848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621334, 37.243999, 39.372368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812202, 36.892597, 39.363194>,  <34.926723, 36.681755, 39.357689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812202, 36.892597, 39.363194>,  <34.621334, 37.243999, 39.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812202, 36.892597, 39.363194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434693, -0.258636, 0.862641,
		-0.763771, -0.401658, -0.505296,
		0.477175, -0.878509, -0.022940,
		34.955357, 36.629044, 39.356312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086720, 36.785709, 39.437115>,  <34.621334, 37.243999, 39.372368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086720, 36.785709, 39.437115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404118, 36.575729, 39.560265>,  <34.594559, 36.449741, 39.634155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404118, 36.575729, 39.560265>,  <34.086720, 36.785709, 39.437115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404118, 36.575729, 39.560265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417591, -0.101670, 0.902929,
		-0.442694, -0.845037, -0.299890,
		0.793498, -0.524953, 0.307871,
		34.642166, 36.418243, 39.652626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885010, 36.129883, 39.707214>,  <34.086720, 36.785709, 39.437115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885010, 36.129883, 39.707214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234829, 36.215351, 39.881348>,  <34.444721, 36.266632, 39.985828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234829, 36.215351, 39.881348>,  <33.885010, 36.129883, 39.707214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234829, 36.215351, 39.881348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406918, -0.164986, 0.898442,
		0.263793, -0.962873, -0.057342,
		0.874547, 0.213670, 0.435333,
		34.497192, 36.279453, 40.011948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999996, 35.728813, 40.395851>,  <33.885010, 36.129883, 39.707214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999996, 35.728813, 40.395851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302078, 35.986423, 40.444664>,  <34.483326, 36.140991, 40.473953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302078, 35.986423, 40.444664>,  <33.999996, 35.728813, 40.395851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302078, 35.986423, 40.444664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043771, -0.136205, 0.989713,
		0.654025, -0.752778, -0.074674,
		0.755206, 0.644028, 0.122031,
		34.528641, 36.179630, 40.481274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793407, 35.099091, 40.557709>,  <33.999996, 35.728813, 40.395851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793407, 35.099091, 40.557709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397957, 35.136353, 40.604923>,  <33.160686, 35.158710, 40.633251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397957, 35.136353, 40.604923>,  <33.793407, 35.099091, 40.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397957, 35.136353, 40.604923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114206, 0.045484, -0.992415,
		-0.097822, -0.994612, -0.034328,
		-0.988629, 0.093160, 0.118040,
		33.101368, 35.164299, 40.640335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504459, 34.669399, 40.011761>,  <33.793407, 35.099091, 40.557709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504459, 34.669399, 40.011761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213795, 34.919571, 40.125462>,  <33.039394, 35.069675, 40.193680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213795, 34.919571, 40.125462>,  <33.504459, 34.669399, 40.011761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213795, 34.919571, 40.125462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145145, 0.264646, -0.953360,
		-0.671488, -0.734027, -0.101530,
		-0.726661, 0.625433, 0.284248,
		32.995796, 35.107201, 40.210735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904613, 34.411758, 39.725605>,  <33.504459, 34.669399, 40.011761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904613, 34.411758, 39.725605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820324, 34.794724, 39.804562>,  <32.769749, 35.024502, 39.851936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820324, 34.794724, 39.804562>,  <32.904613, 34.411758, 39.725605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820324, 34.794724, 39.804562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217960, 0.150823, -0.964233,
		-0.952936, -0.246214, 0.176894,
		-0.210728, 0.957408, 0.197389,
		32.757107, 35.081947, 39.863777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297874, 34.477612, 39.433113>,  <32.904613, 34.411758, 39.725605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297874, 34.477612, 39.433113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456158, 34.841980, 39.479820>,  <32.551128, 35.060600, 39.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456158, 34.841980, 39.479820>,  <32.297874, 34.477612, 39.433113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456158, 34.841980, 39.479820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331022, 0.260074, -0.907075,
		-0.856642, 0.320288, 0.404450,
		0.395713, 0.910921, 0.116768,
		32.574871, 35.115257, 39.514851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768497, 34.858322, 39.242741>,  <32.297874, 34.477612, 39.433113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768497, 34.858322, 39.242741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098774, 35.081608, 39.210167>,  <32.296940, 35.215580, 39.190624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098774, 35.081608, 39.210167>,  <31.768497, 34.858322, 39.242741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098774, 35.081608, 39.210167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317047, 0.339801, -0.885447,
		-0.466598, 0.756924, 0.457551,
		0.825692, 0.558213, -0.081430,
		32.346481, 35.249073, 39.185738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520605, 35.477249, 38.943592>,  <31.768497, 34.858322, 39.242741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520605, 35.477249, 38.943592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914215, 35.491730, 38.873871>,  <32.150383, 35.500420, 38.832039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914215, 35.491730, 38.873871>,  <31.520605, 35.477249, 38.943592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914215, 35.491730, 38.873871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177912, 0.165310, -0.970062,
		-0.006307, 0.985577, 0.169110,
		0.984026, 0.036205, -0.174303,
		32.209423, 35.502590, 38.821579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625128, 36.016846, 38.498745>,  <31.520605, 35.477249, 38.943592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625128, 36.016846, 38.498745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954182, 35.793900, 38.453804>,  <32.151615, 35.660133, 38.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954182, 35.793900, 38.453804>,  <31.625128, 36.016846, 38.498745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954182, 35.793900, 38.453804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026631, 0.159612, -0.986820,
		0.567948, 0.814784, 0.116459,
		0.822634, -0.557361, -0.112350,
		32.200974, 35.626690, 38.420097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957487, 36.410645, 37.933304>,  <31.625128, 36.016846, 38.498745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957487, 36.410645, 37.933304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150879, 36.060520, 37.936829>,  <32.266914, 35.850445, 37.938942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150879, 36.060520, 37.936829>,  <31.957487, 36.410645, 37.933304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150879, 36.060520, 37.936829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117977, -0.075133, -0.990170,
		0.867370, 0.477686, -0.139592,
		0.483479, -0.875312, 0.008812,
		32.295921, 35.797928, 37.939472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672470, 36.338776, 37.366650>,  <31.957487, 36.410645, 37.933304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672470, 36.338776, 37.366650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484352, 35.998035, 37.458885>,  <32.371483, 35.793591, 37.514225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484352, 35.998035, 37.458885>,  <32.672470, 36.338776, 37.366650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484352, 35.998035, 37.458885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341208, -0.065451, -0.937706,
		0.813879, -0.519678, -0.259877,
		-0.470296, -0.851852, 0.230587,
		32.343262, 35.742481, 37.528061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101307, 35.689896, 36.993740>,  <32.672470, 36.338776, 37.366650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101307, 35.689896, 36.993740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737938, 35.550739, 37.086468>,  <32.519917, 35.467247, 37.142105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737938, 35.550739, 37.086468>,  <33.101307, 35.689896, 36.993740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737938, 35.550739, 37.086468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105213, -0.346423, -0.932159,
		0.404597, -0.871185, 0.278096,
		-0.908423, -0.347889, 0.231822,
		32.465412, 35.446373, 37.156013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015285, 35.009811, 36.588482>,  <33.101307, 35.689896, 36.993740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015285, 35.009811, 36.588482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650684, 35.146336, 36.680275>,  <32.431923, 35.228252, 36.735352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650684, 35.146336, 36.680275>,  <33.015285, 35.009811, 36.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650684, 35.146336, 36.680275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295914, -0.156740, -0.942267,
		-0.285644, -0.926787, 0.243870,
		-0.911505, 0.341318, 0.229477,
		32.377232, 35.248730, 36.749119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532150, 34.545704, 36.349686>,  <33.015285, 35.009811, 36.588482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532150, 34.545704, 36.349686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394722, 34.920822, 36.369682>,  <32.312267, 35.145893, 36.381680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394722, 34.920822, 36.369682>,  <32.532150, 34.545704, 36.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394722, 34.920822, 36.369682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182550, -0.014478, -0.983090,
		-0.921214, -0.346884, 0.176169,
		-0.343569, 0.937796, 0.049987,
		32.291653, 35.202160, 36.384678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519341, 33.707493, 36.348202>,  <32.532150, 34.545704, 36.349686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519341, 33.707493, 36.348202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241287, 33.682705, 36.061718>,  <32.074455, 33.667831, 35.889828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241287, 33.682705, 36.061718>,  <32.519341, 33.707493, 36.348202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241287, 33.682705, 36.061718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718749, -0.040793, -0.694072,
		0.013796, -0.997244, 0.072898,
		-0.695133, -0.061971, -0.716205,
		32.032749, 33.664116, 35.846855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640785, 33.154472, 35.874512>,  <32.519341, 33.707493, 36.348202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640785, 33.154472, 35.874512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399319, 33.393730, 35.663681>,  <32.254440, 33.537285, 35.537182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399319, 33.393730, 35.663681>,  <32.640785, 33.154472, 35.874512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399319, 33.393730, 35.663681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648417, -0.016280, -0.761112,
		-0.463837, -0.801221, -0.378021,
		-0.603665, 0.598147, -0.527076,
		32.218220, 33.573174, 35.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518177, 32.726765, 35.311909>,  <32.640785, 33.154472, 35.874512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518177, 32.726765, 35.311909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480480, 33.120132, 35.249928>,  <32.457863, 33.356152, 35.212738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480480, 33.120132, 35.249928>,  <32.518177, 32.726765, 35.311909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480480, 33.120132, 35.249928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729838, -0.037610, -0.682585,
		-0.677093, -0.177425, -0.714189,
		-0.094247, 0.983415, -0.154957,
		32.452206, 33.415157, 35.203442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986050, 32.504585, 34.857796>,  <32.518177, 32.726765, 35.311909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986050, 32.504585, 34.857796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136761, 32.141293, 34.784966>,  <32.227188, 31.923317, 34.741268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136761, 32.141293, 34.784966>,  <31.986050, 32.504585, 34.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136761, 32.141293, 34.784966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068839, -0.168564, 0.983284,
		-0.923743, -0.383012, -0.000989,
		0.376776, -0.908234, -0.182076,
		32.249794, 31.868822, 34.730343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624931, 32.005081, 35.227459>,  <31.986050, 32.504585, 34.857796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624931, 32.005081, 35.227459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988071, 31.849239, 35.165470>,  <32.205956, 31.755733, 35.128277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988071, 31.849239, 35.165470>,  <31.624931, 32.005081, 35.227459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988071, 31.849239, 35.165470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172551, 0.010303, 0.984947,
		-0.382147, -0.920923, 0.076581,
		0.907849, -0.389609, -0.154969,
		32.260426, 31.732357, 35.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646612, 31.330444, 35.502510>,  <31.624931, 32.005081, 35.227459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646612, 31.330444, 35.502510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016689, 31.482054, 35.494915>,  <32.238735, 31.573019, 35.490360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016689, 31.482054, 35.494915>,  <31.646612, 31.330444, 35.502510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016689, 31.482054, 35.494915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082594, -0.152281, 0.984880,
		0.370403, -0.912771, -0.172194,
		0.925192, 0.379025, -0.018984,
		32.294247, 31.595760, 35.489220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036633, 30.872438, 35.869091>,  <31.646612, 31.330444, 35.502510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036633, 30.872438, 35.869091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266376, 31.199213, 35.889954>,  <32.404224, 31.395277, 35.902470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266376, 31.199213, 35.889954>,  <32.036633, 30.872438, 35.869091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266376, 31.199213, 35.889954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270599, -0.249607, 0.929770,
		0.772582, -0.519914, -0.364427,
		0.574364, 0.816937, 0.052153,
		32.438686, 31.444294, 35.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643383, 30.588531, 36.070473>,  <32.036633, 30.872438, 35.869091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643383, 30.588531, 36.070473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634361, 30.974648, 36.174557>,  <32.628948, 31.206318, 36.237007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634361, 30.974648, 36.174557>,  <32.643383, 30.588531, 36.070473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634361, 30.974648, 36.174557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331652, -0.238308, 0.912807,
		0.943132, 0.106888, -0.314764,
		-0.022558, 0.965290, 0.260205,
		32.627594, 31.264235, 36.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325012, 30.658396, 36.458115>,  <32.643383, 30.588531, 36.070473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325012, 30.658396, 36.458115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093300, 30.973881, 36.540440>,  <32.954273, 31.163172, 36.589836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093300, 30.973881, 36.540440>,  <33.325012, 30.658396, 36.458115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093300, 30.973881, 36.540440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390376, 0.046786, 0.919466,
		0.715567, 0.612976, -0.334998,
		-0.579284, 0.788715, 0.205813,
		32.919514, 31.210495, 36.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781120, 31.125443, 36.728764>,  <33.325012, 30.658396, 36.458115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781120, 31.125443, 36.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416008, 31.232973, 36.851768>,  <33.196941, 31.297491, 36.925571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416008, 31.232973, 36.851768>,  <33.781120, 31.125443, 36.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416008, 31.232973, 36.851768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333224, 0.054727, 0.941258,
		0.236206, 0.961633, -0.139534,
		-0.912781, 0.268826, 0.307512,
		33.142174, 31.313622, 36.944023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906048, 31.762808, 37.005814>,  <33.781120, 31.125443, 36.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906048, 31.762808, 37.005814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557701, 31.654795, 37.170094>,  <33.348694, 31.589987, 37.268661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557701, 31.654795, 37.170094>,  <33.906048, 31.762808, 37.005814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557701, 31.654795, 37.170094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334046, 0.287791, 0.897547,
		-0.360561, 0.918836, -0.160424,
		-0.870867, -0.270031, 0.410699,
		33.296440, 31.573786, 37.293304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743454, 32.334629, 37.363560>,  <33.906048, 31.762808, 37.005814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743454, 32.334629, 37.363560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533871, 32.030979, 37.518063>,  <33.408119, 31.848789, 37.610764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533871, 32.030979, 37.518063>,  <33.743454, 32.334629, 37.363560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533871, 32.030979, 37.518063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380237, 0.197316, 0.903596,
		-0.762159, 0.620316, 0.185263,
		-0.523960, -0.759128, 0.386253,
		33.376682, 31.803242, 37.633938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500008, 32.574837, 38.090473>,  <33.743454, 32.334629, 37.363560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500008, 32.574837, 38.090473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449306, 32.178078, 38.093880>,  <33.418884, 31.940022, 38.095924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449306, 32.178078, 38.093880>,  <33.500008, 32.574837, 38.090473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449306, 32.178078, 38.093880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081255, -0.001828, 0.996692,
		-0.988601, 0.127025, 0.080829,
		-0.126752, -0.991898, 0.008514,
		33.411282, 31.880508, 38.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049019, 32.415703, 38.603508>,  <33.500008, 32.574837, 38.090473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049019, 32.415703, 38.603508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248100, 32.071854, 38.557316>,  <33.367550, 31.865545, 38.529598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248100, 32.071854, 38.557316>,  <33.049019, 32.415703, 38.603508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248100, 32.071854, 38.557316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040697, -0.156147, 0.986895,
		-0.866390, -0.486485, -0.112700,
		0.497708, -0.859622, -0.115485,
		33.397411, 31.813967, 38.522671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767681, 31.950710, 38.987457>,  <33.049019, 32.415703, 38.603508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767681, 31.950710, 38.987457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134315, 31.796988, 38.943302>,  <33.354294, 31.704754, 38.916809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134315, 31.796988, 38.943302>,  <32.767681, 31.950710, 38.987457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134315, 31.796988, 38.943302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033423, -0.201477, 0.978923,
		-0.398448, -0.900952, -0.171825,
		0.916582, -0.384307, -0.110390,
		33.409290, 31.681696, 38.910187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738163, 31.526703, 39.501209>,  <32.767681, 31.950710, 38.987457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738163, 31.526703, 39.501209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120441, 31.557369, 39.387531>,  <33.349808, 31.575769, 39.319324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120441, 31.557369, 39.387531>,  <32.738163, 31.526703, 39.501209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120441, 31.557369, 39.387531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293963, -0.298356, 0.908058,
		-0.015173, -0.951370, -0.307675,
		0.955697, 0.076668, -0.284194,
		33.407150, 31.580370, 39.302273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097706, 30.919527, 39.799397>,  <32.738163, 31.526703, 39.501209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097706, 30.919527, 39.799397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390598, 31.182178, 39.727093>,  <33.566334, 31.339769, 39.683708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390598, 31.182178, 39.727093>,  <33.097706, 30.919527, 39.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390598, 31.182178, 39.727093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340269, -0.122802, 0.932275,
		0.589960, -0.744150, -0.313350,
		0.732233, 0.656628, -0.180763,
		33.610268, 31.379168, 39.672863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716995, 30.661098, 40.009941>,  <33.097706, 30.919527, 39.799397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716995, 30.661098, 40.009941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808800, 31.049980, 39.991402>,  <33.863884, 31.283308, 39.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808800, 31.049980, 39.991402>,  <33.716995, 30.661098, 40.009941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808800, 31.049980, 39.991402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461814, -0.066857, 0.884454,
		0.856769, -0.224395, -0.464321,
		0.229510, 0.972202, -0.046348,
		33.877651, 31.341640, 39.977497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396873, 30.726526, 40.185936>,  <33.716995, 30.661098, 40.009941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396873, 30.726526, 40.185936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237415, 31.084011, 40.268261>,  <34.141739, 31.298502, 40.317654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237415, 31.084011, 40.268261>,  <34.396873, 30.726526, 40.185936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237415, 31.084011, 40.268261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284031, -0.093066, 0.954288,
		0.872014, 0.438880, -0.216742,
		-0.398646, 0.893713, 0.205810,
		34.117821, 31.352125, 40.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989235, 31.165464, 40.471008>,  <34.396873, 30.726526, 40.185936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989235, 31.165464, 40.471008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636147, 31.301233, 40.600990>,  <34.424294, 31.382694, 40.678978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636147, 31.301233, 40.600990>,  <34.989235, 31.165464, 40.471008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636147, 31.301233, 40.600990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262699, -0.216913, 0.940180,
		0.389604, 0.915282, 0.102308,
		-0.882722, 0.339422, 0.324954,
		34.371330, 31.403059, 40.698475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164062, 31.365919, 41.161617>,  <34.989235, 31.165464, 40.471008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164062, 31.365919, 41.161617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767166, 31.408968, 41.186489>,  <34.529026, 31.434797, 41.201412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767166, 31.408968, 41.186489>,  <35.164062, 31.365919, 41.161617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767166, 31.408968, 41.186489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056321, -0.056686, 0.996802,
		0.110802, 0.992574, 0.050185,
		-0.992245, 0.107621, 0.062184,
		34.469494, 31.441254, 41.205143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006565, 31.851286, 41.700432>,  <35.164062, 31.365919, 41.161617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006565, 31.851286, 41.700432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705135, 31.594112, 41.645649>,  <34.524277, 31.439808, 41.612778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705135, 31.594112, 41.645649>,  <35.006565, 31.851286, 41.700432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705135, 31.594112, 41.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008675, -0.218053, 0.975898,
		-0.657304, 0.734225, 0.169897,
		-0.753576, -0.642935, -0.136958,
		34.479061, 31.401232, 41.604561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618347, 32.021587, 42.233467>,  <35.006565, 31.851286, 41.700432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618347, 32.021587, 42.233467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491043, 31.667309, 42.098263>,  <34.414661, 31.454741, 42.017139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491043, 31.667309, 42.098263>,  <34.618347, 32.021587, 42.233467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491043, 31.667309, 42.098263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064245, -0.335578, 0.939819,
		-0.945825, 0.320818, 0.049898,
		-0.318256, -0.885699, -0.338009,
		34.395565, 31.401600, 41.996861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210648, 31.983446, 42.711597>,  <34.618347, 32.021587, 42.233467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210648, 31.983446, 42.711597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241592, 31.615770, 42.557140>,  <34.260159, 31.395164, 42.464466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241592, 31.615770, 42.557140>,  <34.210648, 31.983446, 42.711597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241592, 31.615770, 42.557140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094968, -0.392338, 0.914906,
		-0.992470, -0.034109, -0.117646,
		0.077364, -0.919188, -0.386144,
		34.264801, 31.340014, 42.441296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631210, 31.619398, 42.918274>,  <34.210648, 31.983446, 42.711597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631210, 31.619398, 42.918274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910469, 31.340340, 42.853924>,  <34.078026, 31.172905, 42.815315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910469, 31.340340, 42.853924>,  <33.631210, 31.619398, 42.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910469, 31.340340, 42.853924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233293, -0.434107, 0.870130,
		-0.676876, -0.569951, -0.465827,
		0.698150, -0.697644, -0.160871,
		34.119915, 31.131046, 42.805664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287163, 30.877409, 43.019627>,  <33.631210, 31.619398, 42.918274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287163, 30.877409, 43.019627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675632, 30.782114, 43.016335>,  <33.908714, 30.724937, 43.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675632, 30.782114, 43.016335>,  <33.287163, 30.877409, 43.019627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675632, 30.782114, 43.016335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152708, -0.648296, 0.745917,
		-0.183044, -0.723157, -0.665988,
		0.971172, -0.238237, -0.008235,
		33.966984, 30.710644, 43.013863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254200, 30.147024, 42.944836>,  <33.287163, 30.877409, 43.019627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254200, 30.147024, 42.944836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591827, 30.251493, 43.132172>,  <33.794403, 30.314175, 43.244572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591827, 30.251493, 43.132172>,  <33.254200, 30.147024, 42.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591827, 30.251493, 43.132172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142323, -0.732946, 0.665232,
		0.517007, -0.628156, -0.581484,
		0.844066, 0.261172, 0.468339,
		33.845047, 30.329845, 43.272675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575127, 29.530176, 43.151459>,  <33.254200, 30.147024, 42.944836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575127, 29.530176, 43.151459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758171, 29.798050, 43.385418>,  <33.868000, 29.958775, 43.525795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758171, 29.798050, 43.385418>,  <33.575127, 29.530176, 43.151459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758171, 29.798050, 43.385418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041099, -0.641186, 0.766284,
		0.888200, -0.374702, -0.265893,
		0.457615, 0.669686, 0.584901,
		33.895454, 29.998955, 43.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001472, 29.118376, 43.780613>,  <33.575127, 29.530176, 43.151459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001472, 29.118376, 43.780613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954247, 29.496386, 43.902592>,  <33.925911, 29.723190, 43.975777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954247, 29.496386, 43.902592>,  <34.001472, 29.118376, 43.780613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954247, 29.496386, 43.902592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028694, -0.310211, 0.950234,
		0.992591, 0.103440, 0.063742,
		-0.118066, 0.945023, 0.304945,
		33.918827, 29.779892, 43.994076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570717, 29.214512, 44.360249>,  <34.001472, 29.118376, 43.780613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570717, 29.214512, 44.360249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302235, 29.506250, 44.413223>,  <34.141144, 29.681293, 44.445007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302235, 29.506250, 44.413223>,  <34.570717, 29.214512, 44.360249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302235, 29.506250, 44.413223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183329, -0.336442, 0.923687,
		0.718244, 0.595703, 0.359532,
		-0.671205, 0.729345, 0.132438,
		34.100872, 29.725054, 44.452953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205540, 29.697893, 44.329628>,  <34.570717, 29.214512, 44.360249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205540, 29.697893, 44.329628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563305, 29.519215, 44.320721>,  <35.777962, 29.412008, 44.315376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563305, 29.519215, 44.320721>,  <35.205540, 29.697893, 44.329628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563305, 29.519215, 44.320721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069607, -0.089853, -0.993520,
		0.441801, 0.890163, -0.111458,
		0.894409, -0.446696, -0.022265,
		35.831627, 29.385206, 44.314041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544083, 29.941179, 43.716698>,  <35.205540, 29.697893, 44.329628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544083, 29.941179, 43.716698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778378, 29.625099, 43.788807>,  <35.918953, 29.435452, 43.832073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778378, 29.625099, 43.788807>,  <35.544083, 29.941179, 43.716698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778378, 29.625099, 43.788807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037887, -0.195487, -0.979974,
		0.809618, 0.580834, -0.084565,
		0.585734, -0.790201, 0.180275,
		35.954098, 29.388039, 43.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120815, 30.016363, 43.280464>,  <35.544083, 29.941179, 43.716698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120815, 30.016363, 43.280464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097820, 29.627567, 43.371616>,  <36.084023, 29.394289, 43.426308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097820, 29.627567, 43.371616>,  <36.120815, 30.016363, 43.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097820, 29.627567, 43.371616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182539, -0.234641, -0.954790,
		0.981516, -0.013296, 0.190916,
		-0.057491, -0.971991, 0.227877,
		36.080574, 29.335970, 43.439980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641190, 29.750668, 42.819241>,  <36.120815, 30.016363, 43.280464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641190, 29.750668, 42.819241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455624, 29.420244, 42.947250>,  <36.344284, 29.221991, 43.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455624, 29.420244, 42.947250>,  <36.641190, 29.750668, 42.819241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455624, 29.420244, 42.947250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137621, -0.424066, -0.895114,
		0.875126, -0.371211, 0.310412,
		-0.463912, -0.826057, 0.320025,
		36.316448, 29.172426, 43.043259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138355, 29.224127, 42.595291>,  <36.641190, 29.750668, 42.819241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138355, 29.224127, 42.595291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769245, 29.075661, 42.636711>,  <36.547779, 28.986582, 42.661564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769245, 29.075661, 42.636711>,  <37.138355, 29.224127, 42.595291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769245, 29.075661, 42.636711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028718, -0.334211, -0.942061,
		0.384266, -0.866337, 0.319061,
		-0.922776, -0.371164, 0.103547,
		36.492413, 28.964312, 42.667774>
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
