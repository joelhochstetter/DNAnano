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
	<24.084936, 34.775181, 35.329346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229601, 34.878254, 34.970951>,  <24.316401, 34.940098, 34.755913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229601, 34.878254, 34.970951>,  <24.084936, 34.775181, 35.329346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229601, 34.878254, 34.970951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724312, 0.682755, -0.096009,
		0.587003, 0.683699, 0.433570,
		0.361663, 0.257683, -0.895991,
		24.338100, 34.955559, 34.702152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320234, 35.465557, 35.264027>,  <24.084936, 34.775181, 35.329346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320234, 35.465557, 35.264027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177940, 35.315800, 34.921497>,  <24.092564, 35.225945, 34.715981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177940, 35.315800, 34.921497>,  <24.320234, 35.465557, 35.264027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177940, 35.315800, 34.921497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594584, 0.797575, -0.101702,
		0.721056, 0.472975, -0.506333,
		-0.355736, -0.374390, -0.856320,
		24.071220, 35.203484, 34.664600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641592, 35.906593, 34.726170>,  <24.320234, 35.465557, 35.264027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641592, 35.906593, 34.726170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272902, 35.755913, 34.689251>,  <24.051687, 35.665504, 34.667099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272902, 35.755913, 34.689251>,  <24.641592, 35.906593, 34.726170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272902, 35.755913, 34.689251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374085, 0.926311, -0.044808,
		0.102377, -0.006773, -0.994723,
		-0.921726, -0.376698, -0.092299,
		23.996384, 35.642902, 34.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504753, 36.569481, 35.179955>,  <24.641592, 35.906593, 34.726170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504753, 36.569481, 35.179955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685541, 36.601101, 35.535366>,  <24.794014, 36.620071, 35.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685541, 36.601101, 35.535366>,  <24.504753, 36.569481, 35.179955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685541, 36.601101, 35.535366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711060, -0.633368, -0.305350,
		0.538626, 0.769803, -0.342470,
		0.451969, 0.079047, 0.888524,
		24.821133, 36.624817, 35.801922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348589, 36.742393, 35.083920>,  <24.504753, 36.569481, 35.179955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348589, 36.742393, 35.083920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226786, 36.549053, 35.412224>,  <25.153704, 36.433048, 35.609207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226786, 36.549053, 35.412224>,  <25.348589, 36.742393, 35.083920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226786, 36.549053, 35.412224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762201, -0.640425, -0.094369,
		0.571248, 0.596847, 0.563426,
		-0.304509, -0.483352, 0.820759,
		25.135433, 36.404049, 35.658451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936264, 36.779419, 35.559387>,  <25.348589, 36.742393, 35.083920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936264, 36.779419, 35.559387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695375, 36.461178, 35.585754>,  <25.550842, 36.270233, 35.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695375, 36.461178, 35.585754>,  <25.936264, 36.779419, 35.559387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695375, 36.461178, 35.585754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792259, -0.605766, -0.073298,
		0.098248, 0.008085, 0.995129,
		-0.602223, -0.795602, 0.065920,
		25.514708, 36.222496, 35.605530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123150, 36.288448, 36.103508>,  <25.936264, 36.779419, 35.559387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123150, 36.288448, 36.103508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941822, 36.141197, 35.778797>,  <25.833025, 36.052849, 35.583969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941822, 36.141197, 35.778797>,  <26.123150, 36.288448, 36.103508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941822, 36.141197, 35.778797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797943, -0.573465, -0.185538,
		-0.397225, -0.731862, 0.553706,
		-0.453320, -0.368126, -0.811779,
		25.805826, 36.030758, 35.535263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849602, 35.617859, 36.092026>,  <26.123150, 36.288448, 36.103508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849602, 35.617859, 36.092026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980289, 35.730293, 35.731083>,  <26.058702, 35.797756, 35.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980289, 35.730293, 35.731083>,  <25.849602, 35.617859, 36.092026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980289, 35.730293, 35.731083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723058, -0.689179, 0.047117,
		-0.608640, -0.667848, -0.428411,
		0.326719, 0.281089, -0.902354,
		26.078304, 35.814621, 35.460377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828978, 34.961472, 35.667004>,  <25.849602, 35.617859, 36.092026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828978, 34.961472, 35.667004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088186, 35.241188, 35.546295>,  <26.243711, 35.409016, 35.473869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088186, 35.241188, 35.546295>,  <25.828978, 34.961472, 35.667004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088186, 35.241188, 35.546295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747829, -0.659275, 0.078154,
		-0.144296, -0.276317, -0.950172,
		0.648020, 0.699289, -0.301768,
		26.282593, 35.450974, 35.455765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226263, 34.696873, 35.087959>,  <25.828978, 34.961472, 35.667004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226263, 34.696873, 35.087959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445040, 34.983616, 35.260921>,  <26.576305, 35.155663, 35.364697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445040, 34.983616, 35.260921>,  <26.226263, 34.696873, 35.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445040, 34.983616, 35.260921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787447, -0.615875, 0.024986,
		0.284217, 0.326828, -0.901335,
		0.546944, 0.716855, 0.432402,
		26.609123, 35.198673, 35.390640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849066, 34.579571, 34.804237>,  <26.226263, 34.696873, 35.087959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849066, 34.579571, 34.804237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921457, 34.806644, 35.125481>,  <26.964891, 34.942890, 35.318226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921457, 34.806644, 35.125481>,  <26.849066, 34.579571, 34.804237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921457, 34.806644, 35.125481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851537, -0.499014, 0.160841,
		0.492069, 0.654768, -0.573713,
		0.180977, 0.567683, 0.803109,
		26.975750, 34.976948, 35.366413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531618, 34.766720, 34.707947>,  <26.849066, 34.579571, 34.804237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531618, 34.766720, 34.707947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461676, 34.827854, 35.097012>,  <27.419710, 34.864536, 35.330448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461676, 34.827854, 35.097012>,  <27.531618, 34.766720, 34.707947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461676, 34.827854, 35.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722134, -0.651614, 0.232210,
		0.669289, 0.742993, 0.003570,
		-0.174857, 0.152838, 0.972659,
		27.409218, 34.873707, 35.388809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135607, 34.826283, 35.024990>,  <27.531618, 34.766720, 34.707947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135607, 34.826283, 35.024990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900185, 34.703911, 35.324326>,  <27.758932, 34.630489, 35.503925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900185, 34.703911, 35.324326>,  <28.135607, 34.826283, 35.024990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900185, 34.703911, 35.324326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654175, -0.724102, 0.218478,
		0.475035, 0.618131, 0.626304,
		-0.588556, -0.305927, 0.748339,
		27.723618, 34.612133, 35.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613422, 34.613724, 35.646942>,  <28.135607, 34.826283, 35.024990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613422, 34.613724, 35.646942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260002, 34.459377, 35.753109>,  <28.047951, 34.366768, 35.816811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260002, 34.459377, 35.753109>,  <28.613422, 34.613724, 35.646942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260002, 34.459377, 35.753109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467828, -0.753556, 0.461833,
		0.021800, 0.532222, 0.846324,
		-0.883551, -0.385866, 0.265416,
		27.994938, 34.343616, 35.832733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741163, 34.380898, 36.346378>,  <28.613422, 34.613724, 35.646942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741163, 34.380898, 36.346378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432846, 34.192322, 36.174973>,  <28.247856, 34.079178, 36.072128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432846, 34.192322, 36.174973>,  <28.741163, 34.380898, 36.346378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432846, 34.192322, 36.174973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323012, -0.868944, 0.374966,
		-0.549128, 0.150606, 0.822056,
		-0.770793, -0.471438, -0.428514,
		28.201609, 34.050892, 36.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552010, 33.889793, 36.802139>,  <28.741163, 34.380898, 36.346378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552010, 33.889793, 36.802139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381536, 33.770000, 36.460690>,  <28.279253, 33.698124, 36.255821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381536, 33.770000, 36.460690>,  <28.552010, 33.889793, 36.802139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381536, 33.770000, 36.460690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156751, -0.953785, 0.256367,
		-0.890954, -0.024548, 0.453430,
		-0.426181, -0.299486, -0.853626,
		28.253681, 33.680153, 36.204601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066452, 33.343704, 36.959953>,  <28.552010, 33.889793, 36.802139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066452, 33.343704, 36.959953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130648, 33.296547, 36.567966>,  <28.169165, 33.268253, 36.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130648, 33.296547, 36.567966>,  <28.066452, 33.343704, 36.959953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130648, 33.296547, 36.567966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204211, -0.967394, 0.149820,
		-0.965682, -0.224165, -0.131179,
		0.160486, -0.117891, -0.979972,
		28.178795, 33.261181, 36.273975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780399, 32.726479, 36.790340>,  <28.066452, 33.343704, 36.959953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780399, 32.726479, 36.790340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042574, 32.788101, 36.494595>,  <28.199879, 32.825077, 36.317146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042574, 32.788101, 36.494595>,  <27.780399, 32.726479, 36.790340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042574, 32.788101, 36.494595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260794, -0.964924, 0.030130,
		-0.708792, -0.212571, -0.672627,
		0.655439, 0.154061, -0.739368,
		28.239206, 32.834320, 36.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751303, 32.108387, 36.377499>,  <27.780399, 32.726479, 36.790340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751303, 32.108387, 36.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101627, 32.284306, 36.297970>,  <28.311823, 32.389858, 36.250252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101627, 32.284306, 36.297970>,  <27.751303, 32.108387, 36.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101627, 32.284306, 36.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451186, -0.892326, 0.013637,
		-0.171420, -0.101651, -0.979940,
		0.875812, 0.439797, -0.198826,
		28.364370, 32.416245, 36.238323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196953, 31.752214, 35.770454>,  <27.751303, 32.108387, 36.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196953, 31.752214, 35.770454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460184, 31.956871, 35.991417>,  <28.618122, 32.079666, 36.123997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460184, 31.956871, 35.991417>,  <28.196953, 31.752214, 35.770454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460184, 31.956871, 35.991417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573204, -0.816149, 0.073062,
		0.488231, 0.268563, -0.830364,
		0.658079, 0.511640, 0.552410,
		28.657608, 32.110363, 36.157139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755070, 31.398777, 35.651493>,  <28.196953, 31.752214, 35.770454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755070, 31.398777, 35.651493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893936, 31.628681, 35.947906>,  <28.977255, 31.766624, 36.125755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893936, 31.628681, 35.947906>,  <28.755070, 31.398777, 35.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893936, 31.628681, 35.947906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716497, -0.672379, 0.185843,
		0.605069, 0.466429, -0.645241,
		0.347164, 0.574761, 0.741031,
		28.998085, 31.801109, 36.170216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400957, 31.560595, 35.456417>,  <28.755070, 31.398777, 35.651493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400957, 31.560595, 35.456417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360941, 31.569889, 35.854301>,  <29.336931, 31.575466, 36.093033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360941, 31.569889, 35.854301>,  <29.400957, 31.560595, 35.456417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360941, 31.569889, 35.854301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614627, -0.784736, 0.080146,
		0.782448, 0.619395, 0.064224,
		-0.100041, 0.023236, 0.994712,
		29.330929, 31.576860, 36.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035530, 31.640680, 35.719723>,  <29.400957, 31.560595, 35.456417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035530, 31.640680, 35.719723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812677, 31.499321, 36.020313>,  <29.678965, 31.414505, 36.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812677, 31.499321, 36.020313>,  <30.035530, 31.640680, 35.719723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812677, 31.499321, 36.020313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685702, -0.706220, 0.176256,
		0.468417, 0.613484, 0.635784,
		-0.557134, -0.353397, 0.751473,
		29.645536, 31.393301, 36.245754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507265, 31.204044, 36.029118>,  <30.035530, 31.640680, 35.719723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507265, 31.204044, 36.029118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186958, 31.108898, 36.249008>,  <29.994774, 31.051811, 36.380943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186958, 31.108898, 36.249008>,  <30.507265, 31.204044, 36.029118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186958, 31.108898, 36.249008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494426, -0.780548, 0.382475,
		0.338109, 0.578071, 0.742642,
		-0.800766, -0.237863, 0.549723,
		29.946728, 31.037539, 36.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604864, 31.225517, 36.754105>,  <30.507265, 31.204044, 36.029118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604864, 31.225517, 36.754105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307899, 30.962990, 36.700333>,  <30.129721, 30.805473, 36.668068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307899, 30.962990, 36.700333>,  <30.604864, 31.225517, 36.754105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307899, 30.962990, 36.700333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570999, -0.724844, 0.385437,
		-0.350410, 0.209394, 0.912889,
		-0.742410, -0.656320, -0.134429,
		30.085176, 30.766094, 36.660004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424685, 30.745632, 37.393162>,  <30.604864, 31.225517, 36.754105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424685, 30.745632, 37.393162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343849, 30.555899, 37.050426>,  <30.295349, 30.442059, 36.844788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343849, 30.555899, 37.050426>,  <30.424685, 30.745632, 37.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343849, 30.555899, 37.050426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619334, -0.739632, 0.263380,
		-0.758674, -0.477442, 0.443242,
		-0.202088, -0.474335, -0.856835,
		30.283222, 30.413599, 36.793377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144888, 30.021114, 37.502720>,  <30.424685, 30.745632, 37.393162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144888, 30.021114, 37.502720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335464, 30.043442, 37.151749>,  <30.449810, 30.056839, 36.941166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335464, 30.043442, 37.151749>,  <30.144888, 30.021114, 37.502720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335464, 30.043442, 37.151749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691963, -0.639475, 0.335052,
		-0.542392, -0.766783, -0.343299,
		0.476443, 0.055820, -0.877431,
		30.478397, 30.060188, 36.888519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198597, 29.327229, 37.202820>,  <30.144888, 30.021114, 37.502720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198597, 29.327229, 37.202820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511869, 29.558041, 37.110157>,  <30.699833, 29.696527, 37.054558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511869, 29.558041, 37.110157>,  <30.198597, 29.327229, 37.202820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511869, 29.558041, 37.110157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605904, -0.624537, 0.492782,
		0.139671, -0.526300, -0.838749,
		0.783181, 0.577029, -0.231657,
		30.746824, 29.731150, 37.040661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723896, 28.838894, 36.874771>,  <30.198597, 29.327229, 37.202820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723896, 28.838894, 36.874771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 28.469112, 37.027134>,  <29.734852, 28.247244, 37.118553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 28.469112, 37.027134>,  <29.723896, 28.838894, 36.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730743, 28.469112, 37.027134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999687, -0.022777, -0.010359,
		0.018252, -0.380611, -0.924555,
		0.017116, -0.924454, 0.380908,
		29.735878, 28.191776, 37.141407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528570, 28.274210, 36.343662>,  <29.723896, 28.838894, 36.874771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528570, 28.274210, 36.343662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415939, 28.246668, 36.726486>,  <29.348360, 28.230143, 36.956181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415939, 28.246668, 36.726486>,  <29.528570, 28.274210, 36.343662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415939, 28.246668, 36.726486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956202, 0.103239, -0.273898,
		-0.079948, -0.992271, -0.094908,
		-0.281579, -0.068854, 0.957064,
		29.331465, 28.226011, 37.013607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030052, 27.688931, 36.504314>,  <29.528570, 28.274210, 36.343662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030052, 27.688931, 36.504314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979893, 28.013958, 36.732002>,  <28.949797, 28.208975, 36.868614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979893, 28.013958, 36.732002>,  <29.030052, 27.688931, 36.504314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979893, 28.013958, 36.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940559, 0.085164, -0.328780,
		-0.315632, -0.576612, 0.753588,
		-0.125400, 0.812568, 0.569218,
		28.942272, 28.257729, 36.902767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348246, 27.606258, 36.845467>,  <29.030052, 27.688931, 36.504314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348246, 27.606258, 36.845467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448050, 27.989517, 36.789318>,  <28.507933, 28.219473, 36.755630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448050, 27.989517, 36.789318>,  <28.348246, 27.606258, 36.845467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448050, 27.989517, 36.789318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891776, 0.170844, -0.418985,
		-0.377467, 0.229719, 0.897077,
		0.249509, 0.958145, -0.140370,
		28.522902, 28.276960, 36.747208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839493, 28.109774, 37.080978>,  <28.348246, 27.606258, 36.845467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839493, 28.109774, 37.080978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066530, 28.222452, 36.771530>,  <28.202753, 28.290060, 36.585861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066530, 28.222452, 36.771530>,  <27.839493, 28.109774, 37.080978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066530, 28.222452, 36.771530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805196, -0.006093, -0.592978,
		-0.171753, 0.959484, 0.223362,
		0.567592, 0.281696, -0.773619,
		28.236807, 28.306961, 36.539444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398815, 28.667955, 36.773983>,  <27.839493, 28.109774, 37.080978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398815, 28.667955, 36.773983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634941, 28.449322, 36.536404>,  <27.776617, 28.318142, 36.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634941, 28.449322, 36.536404>,  <27.398815, 28.667955, 36.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634941, 28.449322, 36.536404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805302, -0.448880, -0.387292,
		-0.054924, 0.706933, -0.705145,
		0.590315, -0.546583, -0.593949,
		27.812037, 28.285347, 36.358219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504164, 28.796040, 36.044239>,  <27.398815, 28.667955, 36.773983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504164, 28.796040, 36.044239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711285, 28.607063, 35.758953>,  <27.835558, 28.493677, 35.587780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711285, 28.607063, 35.758953>,  <27.504164, 28.796040, 36.044239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711285, 28.607063, 35.758953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113917, 0.788183, -0.604805,
		0.847881, 0.394418, 0.354305,
		0.517803, -0.472442, -0.713217,
		27.866625, 28.465330, 35.544987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165173, 29.035051, 35.935699>,  <27.504164, 28.796040, 36.044239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165173, 29.035051, 35.935699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953753, 28.890673, 35.628361>,  <27.826900, 28.804045, 35.443958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953753, 28.890673, 35.628361>,  <28.165173, 29.035051, 35.935699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953753, 28.890673, 35.628361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063454, 0.919370, -0.388243,
		0.846528, -0.156451, -0.508835,
		-0.528549, -0.360946, -0.768345,
		27.795189, 28.782389, 35.397858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455551, 29.326902, 35.315529>,  <28.165173, 29.035051, 35.935699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455551, 29.326902, 35.315529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104443, 29.206331, 35.166584>,  <27.893778, 29.133987, 35.077217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104443, 29.206331, 35.166584>,  <28.455551, 29.326902, 35.315529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104443, 29.206331, 35.166584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028614, 0.742882, -0.668810,
		0.478223, -0.597718, -0.643457,
		-0.877772, -0.301429, -0.372366,
		27.841110, 29.115902, 35.054874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507748, 29.247307, 34.617695>,  <28.455551, 29.326902, 35.315529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507748, 29.247307, 34.617695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120234, 29.295980, 34.704086>,  <27.887726, 29.325184, 34.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120234, 29.295980, 34.704086>,  <28.507748, 29.247307, 34.617695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120234, 29.295980, 34.704086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076774, 0.681141, -0.728116,
		-0.235714, -0.721969, -0.650537,
		-0.968785, 0.121683, 0.215983,
		27.829597, 29.332485, 34.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161930, 29.258228, 33.980896>,  <28.507748, 29.247307, 34.617695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161930, 29.258228, 33.980896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926836, 29.440435, 34.248348>,  <27.785780, 29.549759, 34.408821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926836, 29.440435, 34.248348>,  <28.161930, 29.258228, 33.980896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926836, 29.440435, 34.248348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127741, 0.763827, -0.632653,
		-0.798907, -0.457244, -0.390738,
		-0.587733, 0.455518, 0.668635,
		27.750517, 29.577091, 34.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650501, 29.440664, 33.478943>,  <28.161930, 29.258228, 33.980896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650501, 29.440664, 33.478943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580132, 29.638796, 33.819225>,  <27.537910, 29.757675, 34.023396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580132, 29.638796, 33.819225>,  <27.650501, 29.440664, 33.478943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580132, 29.638796, 33.819225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107904, 0.849275, -0.516807,
		-0.978472, -0.182713, -0.095959,
		-0.175923, 0.495327, 0.850707,
		27.527355, 29.787394, 34.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049734, 29.693882, 33.315472>,  <27.650501, 29.440664, 33.478943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049734, 29.693882, 33.315472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239958, 29.890032, 33.607601>,  <27.354092, 30.007721, 33.782879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239958, 29.890032, 33.607601>,  <27.049734, 29.693882, 33.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239958, 29.890032, 33.607601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173357, 0.866177, -0.468706,
		-0.862432, 0.096291, 0.496930,
		0.475561, 0.490373, 0.730326,
		27.382626, 30.037144, 33.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587528, 30.273127, 33.464455>,  <27.049734, 29.693882, 33.315472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587528, 30.273127, 33.464455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957197, 30.370157, 33.582481>,  <27.178999, 30.428375, 33.653297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957197, 30.370157, 33.582481>,  <26.587528, 30.273127, 33.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957197, 30.370157, 33.582481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047170, 0.839028, -0.542040,
		-0.379053, 0.487020, 0.786848,
		0.924172, 0.242577, 0.295063,
		27.234449, 30.442930, 33.671001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513769, 30.914442, 33.680882>,  <26.587528, 30.273127, 33.464455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513769, 30.914442, 33.680882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909697, 30.875675, 33.639194>,  <27.147253, 30.852415, 33.614182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909697, 30.875675, 33.639194>,  <26.513769, 30.914442, 33.680882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909697, 30.875675, 33.639194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039285, 0.889907, -0.454447,
		0.136792, 0.445726, 0.884656,
		0.989820, -0.096919, -0.104222,
		27.206642, 30.846600, 33.607929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736496, 31.577795, 33.900360>,  <26.513769, 30.914442, 33.680882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736496, 31.577795, 33.900360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052338, 31.428036, 33.705898>,  <27.241842, 31.338181, 33.589222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052338, 31.428036, 33.705898>,  <26.736496, 31.577795, 33.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052338, 31.428036, 33.705898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331997, 0.926970, -0.174653,
		0.516044, -0.023496, 0.856240,
		0.789605, -0.374398, -0.486158,
		27.289219, 31.315716, 33.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373268, 31.801699, 34.186394>,  <26.736496, 31.577795, 33.900360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373268, 31.801699, 34.186394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496933, 31.695503, 33.821114>,  <27.571133, 31.631786, 33.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496933, 31.695503, 33.821114>,  <27.373268, 31.801699, 34.186394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496933, 31.695503, 33.821114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537515, 0.840935, -0.062505,
		0.784536, -0.471534, 0.402689,
		0.309162, -0.265489, -0.913200,
		27.589682, 31.615856, 33.547153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003599, 32.049332, 34.206455>,  <27.373268, 31.801699, 34.186394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003599, 32.049332, 34.206455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940643, 32.000576, 33.814461>,  <27.902870, 31.971323, 33.579266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940643, 32.000576, 33.814461>,  <28.003599, 32.049332, 34.206455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940643, 32.000576, 33.814461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517676, 0.834894, -0.186984,
		0.840975, -0.536745, -0.068308,
		-0.157392, -0.121887, -0.979985,
		27.893425, 31.964010, 33.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634699, 32.110313, 33.865562>,  <28.003599, 32.049332, 34.206455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634699, 32.110313, 33.865562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351681, 32.166611, 33.588558>,  <28.181870, 32.200390, 33.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351681, 32.166611, 33.588558>,  <28.634699, 32.110313, 33.865562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351681, 32.166611, 33.588558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442764, 0.852059, -0.279205,
		0.550762, -0.504168, -0.665188,
		-0.707546, 0.140746, -0.692509,
		28.139418, 32.208836, 33.380806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984066, 32.463375, 33.263329>,  <28.634699, 32.110313, 33.865562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984066, 32.463375, 33.263329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597784, 32.546410, 33.200951>,  <28.366014, 32.596230, 33.163525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597784, 32.546410, 33.200951>,  <28.984066, 32.463375, 33.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597784, 32.546410, 33.200951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236843, 0.950420, -0.201513,
		0.106377, -0.231536, -0.966993,
		-0.965707, 0.207589, -0.155940,
		28.308071, 32.608685, 33.154167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865175, 32.895168, 32.588886>,  <28.984066, 32.463375, 33.263329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865175, 32.895168, 32.588886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572685, 32.945057, 32.857140>,  <28.397190, 32.974991, 33.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572685, 32.945057, 32.857140>,  <28.865175, 32.895168, 32.588886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572685, 32.945057, 32.857140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153187, 0.988056, -0.016732,
		-0.664712, 0.090498, -0.741599,
		-0.731226, 0.124725, 0.670635,
		28.353317, 32.982475, 33.058331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571516, 33.347466, 32.252811>,  <28.865175, 32.895168, 32.588886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571516, 33.347466, 32.252811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442455, 33.389740, 32.629051>,  <28.365019, 33.415104, 32.854794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442455, 33.389740, 32.629051>,  <28.571516, 33.347466, 32.252811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442455, 33.389740, 32.629051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087605, 0.992815, -0.081502,
		-0.942455, 0.056104, -0.329593,
		-0.322652, 0.105686, 0.940599,
		28.345659, 33.421448, 32.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150005, 33.898746, 32.258175>,  <28.571516, 33.347466, 32.252811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150005, 33.898746, 32.258175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204468, 33.883236, 32.654148>,  <28.237144, 33.873928, 32.891731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204468, 33.883236, 32.654148>,  <28.150005, 33.898746, 32.258175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204468, 33.883236, 32.654148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088271, 0.994784, 0.051111,
		-0.986747, -0.094341, 0.132021,
		0.136154, -0.038780, 0.989928,
		28.245314, 33.871601, 32.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565933, 34.213566, 32.529984>,  <28.150005, 33.898746, 32.258175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565933, 34.213566, 32.529984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867176, 34.231880, 32.792507>,  <28.047922, 34.242870, 32.950020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867176, 34.231880, 32.792507>,  <27.565933, 34.213566, 32.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867176, 34.231880, 32.792507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126821, 0.988969, 0.076528,
		-0.645561, -0.140867, 0.750605,
		0.753105, 0.045789, 0.656305,
		28.093107, 34.245617, 32.989399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346968, 34.699764, 33.027622>,  <27.565933, 34.213566, 32.529984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346968, 34.699764, 33.027622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738367, 34.660393, 33.100121>,  <27.973207, 34.636772, 33.143620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738367, 34.660393, 33.100121>,  <27.346968, 34.699764, 33.027622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738367, 34.660393, 33.100121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061981, 0.978493, 0.196746,
		-0.196709, -0.181283, 0.963557,
		0.978500, -0.098424, 0.181243,
		28.031918, 34.630867, 33.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463251, 34.977825, 33.750687>,  <27.346968, 34.699764, 33.027622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463251, 34.977825, 33.750687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800987, 34.979534, 33.536373>,  <28.003630, 34.980560, 33.407784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800987, 34.979534, 33.536373>,  <27.463251, 34.977825, 33.750687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800987, 34.979534, 33.536373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187394, 0.934460, 0.302768,
		0.501966, -0.356043, 0.788203,
		0.844342, 0.004275, -0.535787,
		28.054291, 34.980816, 33.375637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996695, 35.211624, 34.232128>,  <27.463251, 34.977825, 33.750687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996695, 35.211624, 34.232128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165253, 35.268097, 33.873802>,  <28.266388, 35.301979, 33.658806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165253, 35.268097, 33.873802>,  <27.996695, 35.211624, 34.232128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165253, 35.268097, 33.873802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292558, 0.913832, 0.281641,
		0.858391, -0.380761, 0.343782,
		0.421397, 0.141182, -0.895819,
		28.291672, 35.310452, 33.605057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674690, 35.550121, 34.352520>,  <27.996695, 35.211624, 34.232128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674690, 35.550121, 34.352520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579897, 35.638031, 33.973988>,  <28.523022, 35.690777, 33.746868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579897, 35.638031, 33.973988>,  <28.674690, 35.550121, 34.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579897, 35.638031, 33.973988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236305, 0.957863, 0.163273,
		0.942337, -0.184930, -0.278929,
		-0.236982, 0.219771, -0.946330,
		28.508802, 35.703960, 33.690090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109665, 36.052982, 34.186161>,  <28.674690, 35.550121, 34.352520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109665, 36.052982, 34.186161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793987, 36.089973, 33.943306>,  <28.604580, 36.112167, 33.797592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793987, 36.089973, 33.943306>,  <29.109665, 36.052982, 34.186161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793987, 36.089973, 33.943306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059056, 0.972587, 0.224915,
		0.611295, 0.213357, -0.762100,
		-0.789196, 0.092482, -0.607138,
		28.557228, 36.117718, 33.761166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163170, 36.656540, 33.807922>,  <29.109665, 36.052982, 34.186161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163170, 36.656540, 33.807922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780018, 36.549835, 33.850449>,  <28.550127, 36.485813, 33.875965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780018, 36.549835, 33.850449>,  <29.163170, 36.656540, 33.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780018, 36.549835, 33.850449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239150, 0.945980, 0.218927,
		-0.158977, 0.184279, -0.969932,
		-0.957880, -0.266764, 0.106318,
		28.492655, 36.469807, 33.882343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304550, 37.134995, 34.329082>,  <29.163170, 36.656540, 33.807922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304550, 37.134995, 34.329082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570810, 37.425865, 34.262005>,  <29.730566, 37.600388, 34.221760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570810, 37.425865, 34.262005>,  <29.304550, 37.134995, 34.329082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570810, 37.425865, 34.262005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713192, -0.553729, 0.429816,
		0.219697, -0.405704, -0.887208,
		0.665650, 0.727179, -0.167692,
		29.770506, 37.644020, 34.211697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012178, 36.855370, 34.204479>,  <29.304550, 37.134995, 34.329082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012178, 36.855370, 34.204479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032778, 37.230713, 34.341206>,  <30.045137, 37.455917, 34.423241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032778, 37.230713, 34.341206>,  <30.012178, 36.855370, 34.204479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032778, 37.230713, 34.341206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520036, -0.317403, 0.792981,
		0.852591, 0.136919, -0.504324,
		0.051499, 0.938354, 0.341818,
		30.048227, 37.512218, 34.443752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165623, 36.843857, 34.828697>,  <30.012178, 36.855370, 34.204479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165623, 36.843857, 34.828697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229073, 37.237850, 34.855949>,  <30.267141, 37.474247, 34.872299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229073, 37.237850, 34.855949>,  <30.165623, 36.843857, 34.828697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229073, 37.237850, 34.855949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291967, -0.112712, 0.949764,
		0.943183, -0.130762, -0.305462,
		0.158623, 0.984986, 0.068130,
		30.276659, 37.533344, 34.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726887, 36.864193, 35.229744>,  <30.165623, 36.843857, 34.828697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726887, 36.864193, 35.229744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519943, 37.206474, 35.233902>,  <30.395777, 37.411842, 35.236397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519943, 37.206474, 35.233902>,  <30.726887, 36.864193, 35.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519943, 37.206474, 35.233902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104176, 0.050914, 0.993255,
		0.849404, 0.514953, -0.115484,
		-0.517359, 0.855705, 0.010399,
		30.364735, 37.463184, 35.237022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201025, 37.425060, 35.571945>,  <30.726887, 36.864193, 35.229744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201025, 37.425060, 35.571945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803026, 37.442013, 35.608128>,  <30.564226, 37.452183, 35.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803026, 37.442013, 35.608128>,  <31.201025, 37.425060, 35.571945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803026, 37.442013, 35.608128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078643, -0.226027, 0.970941,
		0.061594, 0.973199, 0.221563,
		-0.994998, 0.042380, 0.090457,
		30.504526, 37.454727, 35.635265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908421, 37.906208, 36.178223>,  <31.201025, 37.425060, 35.571945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908421, 37.906208, 36.178223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664238, 37.601929, 36.089962>,  <30.517729, 37.419361, 36.037006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664238, 37.601929, 36.089962>,  <30.908421, 37.906208, 36.178223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664238, 37.601929, 36.089962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076626, -0.333995, 0.939455,
		-0.788335, 0.556588, 0.262178,
		-0.610456, -0.760695, -0.220651,
		30.481102, 37.373718, 36.023766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475208, 37.795059, 36.666237>,  <30.908421, 37.906208, 36.178223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475208, 37.795059, 36.666237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509996, 37.428062, 36.510983>,  <30.530870, 37.207863, 36.417831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509996, 37.428062, 36.510983>,  <30.475208, 37.795059, 36.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509996, 37.428062, 36.510983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152116, -0.397271, 0.905007,
		-0.984529, -0.019669, -0.174116,
		0.086971, -0.917491, -0.388132,
		30.536087, 37.152817, 36.394543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912851, 37.398438, 36.992229>,  <30.475208, 37.795059, 36.666237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912851, 37.398438, 36.992229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201481, 37.159286, 36.852585>,  <30.374659, 37.015797, 36.768799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201481, 37.159286, 36.852585>,  <29.912851, 37.398438, 36.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201481, 37.159286, 36.852585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119118, -0.389516, 0.913284,
		-0.682014, -0.700586, -0.209847,
		0.721573, -0.597877, -0.349108,
		30.417953, 36.979923, 36.747852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753702, 36.732456, 37.258686>,  <29.912851, 37.398438, 36.992229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753702, 36.732456, 37.258686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146944, 36.755989, 37.189358>,  <30.382889, 36.770107, 37.147758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146944, 36.755989, 37.189358>,  <29.753702, 36.732456, 37.258686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146944, 36.755989, 37.189358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182795, -0.364166, 0.913219,
		-0.009396, -0.929474, -0.368767,
		0.983106, 0.058828, -0.173325,
		30.441875, 36.773636, 37.137360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101078, 36.055222, 37.516304>,  <29.753702, 36.732456, 37.258686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101078, 36.055222, 37.516304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390284, 36.328709, 37.476761>,  <30.563807, 36.492802, 37.453033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390284, 36.328709, 37.476761>,  <30.101078, 36.055222, 37.516304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390284, 36.328709, 37.476761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420052, -0.321483, 0.848649,
		0.548457, -0.655114, -0.519636,
		0.723016, 0.683721, -0.098862,
		30.607189, 36.533825, 37.447102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674780, 35.671238, 37.739182>,  <30.101078, 36.055222, 37.516304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674780, 35.671238, 37.739182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761032, 36.059879, 37.778152>,  <30.812784, 36.293064, 37.801537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761032, 36.059879, 37.778152>,  <30.674780, 35.671238, 37.739182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761032, 36.059879, 37.778152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494727, -0.194728, 0.846951,
		0.841872, -0.134428, -0.522667,
		0.215632, 0.971602, 0.097431,
		30.825722, 36.351360, 37.807381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327988, 35.693562, 38.087311>,  <30.674780, 35.671238, 37.739182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327988, 35.693562, 38.087311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239883, 36.080414, 38.138142>,  <31.187021, 36.312523, 38.168640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239883, 36.080414, 38.138142>,  <31.327988, 35.693562, 38.087311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239883, 36.080414, 38.138142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319363, -0.051598, 0.946227,
		0.921679, 0.249000, -0.297500,
		-0.220260, 0.967128, 0.127079,
		31.173805, 36.370552, 38.176266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024864, 36.047020, 38.258110>,  <31.327988, 35.693562, 38.087311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024864, 36.047020, 38.258110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710297, 36.250896, 38.397686>,  <31.521555, 36.373222, 38.481430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710297, 36.250896, 38.397686>,  <32.024864, 36.047020, 38.258110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710297, 36.250896, 38.397686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401665, -0.007187, 0.915759,
		0.469261, 0.860328, -0.199072,
		-0.786422, 0.509690, 0.348936,
		31.474371, 36.403805, 38.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359444, 36.471268, 38.838280>,  <32.024864, 36.047020, 38.258110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359444, 36.471268, 38.838280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963932, 36.490414, 38.894890>,  <31.726625, 36.501900, 38.928856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963932, 36.490414, 38.894890>,  <32.359444, 36.471268, 38.838280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963932, 36.490414, 38.894890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144825, 0.074576, 0.986643,
		0.036667, 0.996066, -0.080671,
		-0.988778, 0.047861, 0.141521,
		31.667299, 36.504772, 38.937347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268188, 36.936947, 39.386219>,  <32.359444, 36.471268, 38.838280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268188, 36.936947, 39.386219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918591, 36.742863, 39.375595>,  <31.708832, 36.626411, 39.369221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918591, 36.742863, 39.375595>,  <32.268188, 36.936947, 39.386219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918591, 36.742863, 39.375595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051645, 0.038405, 0.997927,
		-0.483188, 0.873552, -0.058625,
		-0.873992, -0.485214, -0.026558,
		31.656393, 36.597298, 39.367626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805380, 37.252674, 39.936127>,  <32.268188, 36.936947, 39.386219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805380, 37.252674, 39.936127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642925, 36.897030, 39.851711>,  <31.545452, 36.683643, 39.801060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642925, 36.897030, 39.851711>,  <31.805380, 37.252674, 39.936127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642925, 36.897030, 39.851711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239718, -0.119200, 0.963497,
		-0.881810, 0.441902, -0.164724,
		-0.406137, -0.889108, -0.211043,
		31.521084, 36.630299, 39.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054432, 37.171173, 40.227428>,  <31.805380, 37.252674, 39.936127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054432, 37.171173, 40.227428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205395, 36.801018, 40.213478>,  <31.295973, 36.578922, 40.205109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205395, 36.801018, 40.213478>,  <31.054432, 37.171173, 40.227428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205395, 36.801018, 40.213478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298050, -0.157043, 0.941543,
		-0.876773, -0.344949, -0.335081,
		0.377406, -0.925391, -0.034879,
		31.318617, 36.523399, 40.203014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663918, 36.841572, 40.593529>,  <31.054432, 37.171173, 40.227428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663918, 36.841572, 40.593529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959677, 36.572556, 40.581032>,  <31.137133, 36.411144, 40.573532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959677, 36.572556, 40.581032>,  <30.663918, 36.841572, 40.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959677, 36.572556, 40.581032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184809, -0.247362, 0.951135,
		-0.647409, -0.697492, -0.307191,
		0.739397, -0.672545, -0.031241,
		31.181496, 36.370792, 40.571659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398214, 36.247139, 40.814365>,  <30.663918, 36.841572, 40.593529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398214, 36.247139, 40.814365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790340, 36.204052, 40.880550>,  <31.025616, 36.178200, 40.920261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790340, 36.204052, 40.880550>,  <30.398214, 36.247139, 40.814365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790340, 36.204052, 40.880550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197053, -0.481571, 0.853967,
		-0.012307, -0.869762, -0.493318,
		0.980316, -0.107720, 0.165463,
		31.084435, 36.171738, 40.930191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406487, 35.608826, 41.116341>,  <30.398214, 36.247139, 40.814365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406487, 35.608826, 41.116341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764267, 35.767708, 41.198498>,  <30.978935, 35.863037, 41.247791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764267, 35.767708, 41.198498>,  <30.406487, 35.608826, 41.116341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764267, 35.767708, 41.198498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086886, -0.604949, 0.791510,
		0.438643, -0.690121, -0.575609,
		0.894451, 0.397203, 0.205395,
		31.032602, 35.886868, 41.260117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832670, 34.981602, 41.325920>,  <30.406487, 35.608826, 41.116341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832670, 34.981602, 41.325920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995182, 35.314789, 41.476177>,  <31.092690, 35.514702, 41.566330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995182, 35.314789, 41.476177>,  <30.832670, 34.981602, 41.325920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995182, 35.314789, 41.476177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125526, -0.458078, 0.880004,
		0.905085, -0.310377, -0.290667,
		0.406281, 0.832965, 0.375639,
		31.117067, 35.564678, 41.588867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362938, 34.744141, 41.702187>,  <30.832670, 34.981602, 41.325920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362938, 34.744141, 41.702187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290579, 35.112309, 41.840809>,  <31.247164, 35.333210, 41.923981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290579, 35.112309, 41.840809>,  <31.362938, 34.744141, 41.702187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290579, 35.112309, 41.840809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019276, -0.348981, 0.936931,
		0.983313, 0.176170, 0.045389,
		-0.180899, 0.920422, 0.346553,
		31.236309, 35.388435, 41.944775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854132, 34.793182, 42.272331>,  <31.362938, 34.744141, 41.702187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854132, 34.793182, 42.272331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562679, 35.052731, 42.360023>,  <31.387808, 35.208458, 42.412640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562679, 35.052731, 42.360023>,  <31.854132, 34.793182, 42.272331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562679, 35.052731, 42.360023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037120, -0.282207, 0.958635,
		0.683898, 0.706631, 0.181539,
		-0.728632, 0.648870, 0.219231,
		31.344090, 35.247391, 42.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131451, 35.347767, 42.675877>,  <31.854132, 34.793182, 42.272331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131451, 35.347767, 42.675877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736818, 35.324234, 42.736805>,  <31.500040, 35.310116, 42.773361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736818, 35.324234, 42.736805>,  <32.131451, 35.347767, 42.675877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736818, 35.324234, 42.736805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155005, -0.044154, 0.986927,
		-0.051337, 0.997291, 0.052681,
		-0.986579, -0.058832, 0.152318,
		31.440845, 35.306583, 42.782501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043488, 35.524178, 43.361820>,  <32.131451, 35.347767, 42.675877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043488, 35.524178, 43.361820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665512, 35.400970, 43.317631>,  <31.438726, 35.327045, 43.291119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665512, 35.400970, 43.317631>,  <32.043488, 35.524178, 43.361820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665512, 35.400970, 43.317631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073589, -0.128926, 0.988920,
		-0.318852, 0.942603, 0.099161,
		-0.944943, -0.308022, -0.110474,
		31.382029, 35.308563, 43.284489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540304, 35.880714, 43.920399>,  <32.043488, 35.524178, 43.361820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540304, 35.880714, 43.920399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396496, 35.537998, 43.772530>,  <31.310211, 35.332367, 43.683807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396496, 35.537998, 43.772530>,  <31.540304, 35.880714, 43.920399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396496, 35.537998, 43.772530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161067, -0.333231, 0.928986,
		-0.919132, 0.393529, -0.018198,
		-0.359519, -0.856792, -0.369668,
		31.288641, 35.280960, 43.661629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130621, 35.725452, 44.393280>,  <31.540304, 35.880714, 43.920399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130621, 35.725452, 44.393280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180504, 35.379726, 44.198380>,  <31.210434, 35.172291, 44.081440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180504, 35.379726, 44.198380>,  <31.130621, 35.725452, 44.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180504, 35.379726, 44.198380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151836, -0.501921, 0.851481,
		-0.980507, -0.032204, -0.193827,
		0.124707, -0.864314, -0.487248,
		31.217916, 35.120434, 44.052204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775194, 35.321602, 44.771259>,  <31.130621, 35.725452, 44.393280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775194, 35.321602, 44.771259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961395, 35.028587, 44.572586>,  <31.073116, 34.852779, 44.453381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961395, 35.028587, 44.572586>,  <30.775194, 35.321602, 44.771259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961395, 35.028587, 44.572586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291286, -0.656739, 0.695591,
		-0.835740, -0.179120, -0.519090,
		0.465501, -0.732537, -0.496688,
		31.101046, 34.808826, 44.423580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256624, 34.707676, 44.698467>,  <30.775194, 35.321602, 44.771259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256624, 34.707676, 44.698467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633747, 34.580921, 44.657093>,  <30.860022, 34.504868, 44.632267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633747, 34.580921, 44.657093>,  <30.256624, 34.707676, 44.698467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633747, 34.580921, 44.657093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140729, -0.659680, 0.738253,
		-0.302173, -0.681474, -0.666546,
		0.942808, -0.316883, -0.103434,
		30.916590, 34.485855, 44.626064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175243, 34.024368, 44.764332>,  <30.256624, 34.707676, 44.698467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175243, 34.024368, 44.764332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561653, 34.095119, 44.839703>,  <30.793499, 34.137569, 44.884926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561653, 34.095119, 44.839703>,  <30.175243, 34.024368, 44.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561653, 34.095119, 44.839703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033749, -0.636519, 0.770522,
		0.256229, -0.750704, -0.608925,
		0.966027, 0.176880, 0.188430,
		30.851461, 34.148182, 44.896233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410959, 33.415070, 44.865387>,  <30.175243, 34.024368, 44.764332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410959, 33.415070, 44.865387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663614, 33.657772, 45.058418>,  <30.815208, 33.803394, 45.174236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663614, 33.657772, 45.058418>,  <30.410959, 33.415070, 44.865387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663614, 33.657772, 45.058418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055478, -0.656251, 0.752500,
		0.773274, -0.448537, -0.448176,
		0.631640, 0.606753, 0.482578,
		30.853106, 33.839798, 45.203190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838209, 32.976818, 45.309238>,  <30.410959, 33.415070, 44.865387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838209, 32.976818, 45.309238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909782, 33.347462, 45.441525>,  <30.952726, 33.569847, 45.520897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909782, 33.347462, 45.441525>,  <30.838209, 32.976818, 45.309238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909782, 33.347462, 45.441525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013403, -0.333811, 0.942545,
		0.983770, -0.173084, -0.047310,
		0.178932, 0.926614, 0.330713,
		30.963463, 33.625446, 45.540737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445650, 32.956192, 45.714634>,  <30.838209, 32.976818, 45.309238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445650, 32.956192, 45.714634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257416, 33.287132, 45.837292>,  <31.144476, 33.485699, 45.910889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257416, 33.287132, 45.837292>,  <31.445650, 32.956192, 45.714634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257416, 33.287132, 45.837292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027572, -0.333577, 0.942319,
		0.881923, 0.451898, 0.134165,
		-0.470586, 0.827354, 0.306649,
		31.116240, 33.535339, 45.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851606, 33.049179, 46.391644>,  <31.445650, 32.956192, 45.714634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851606, 33.049179, 46.391644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510284, 33.255844, 46.419720>,  <31.305490, 33.379845, 46.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510284, 33.255844, 46.419720>,  <31.851606, 33.049179, 46.391644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510284, 33.255844, 46.419720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110062, -0.310064, 0.944324,
		0.509660, 0.798073, 0.321444,
		-0.853307, 0.516663, 0.070190,
		31.254292, 33.410843, 46.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860552, 33.412010, 47.052578>,  <31.851606, 33.049179, 46.391644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860552, 33.412010, 47.052578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469019, 33.440212, 46.975723>,  <31.234098, 33.457134, 46.929611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469019, 33.440212, 46.975723>,  <31.860552, 33.412010, 47.052578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469019, 33.440212, 46.975723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204322, -0.282336, 0.937304,
		0.011836, 0.956721, 0.290765,
		-0.978832, 0.070504, -0.192137,
		31.175369, 33.461365, 46.918083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530571, 33.859978, 47.617355>,  <31.860552, 33.412010, 47.052578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530571, 33.859978, 47.617355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261276, 33.617409, 47.448120>,  <31.099699, 33.471867, 47.346577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261276, 33.617409, 47.448120>,  <31.530571, 33.859978, 47.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261276, 33.617409, 47.448120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263364, -0.338007, 0.903543,
		-0.690934, 0.719727, 0.067851,
		-0.673238, -0.606419, -0.423091,
		31.059305, 33.435482, 47.321194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911551, 33.941711, 47.996639>,  <31.530571, 33.859978, 47.617355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911551, 33.941711, 47.996639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884720, 33.594357, 47.800110>,  <30.868622, 33.385944, 47.682194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884720, 33.594357, 47.800110>,  <30.911551, 33.941711, 47.996639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884720, 33.594357, 47.800110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408523, -0.425360, 0.807575,
		-0.910280, 0.254886, -0.326226,
		-0.067076, -0.868391, -0.491323,
		30.864597, 33.333839, 47.652714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350912, 33.532669, 48.216228>,  <30.911551, 33.941711, 47.996639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350912, 33.532669, 48.216228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595291, 33.261257, 48.053093>,  <30.741919, 33.098412, 47.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595291, 33.261257, 48.053093>,  <30.350912, 33.532669, 48.216228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595291, 33.261257, 48.053093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186109, -0.623829, 0.759079,
		-0.769483, -0.387856, -0.507409,
		0.610950, -0.678531, -0.407843,
		30.778576, 33.057697, 47.930740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009546, 32.887051, 48.292347>,  <30.350912, 33.532669, 48.216228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009546, 32.887051, 48.292347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387936, 32.785461, 48.211720>,  <30.614969, 32.724506, 48.163342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387936, 32.785461, 48.211720>,  <30.009546, 32.887051, 48.292347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387936, 32.785461, 48.211720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115910, -0.845462, 0.521306,
		-0.302816, -0.469778, -0.829223,
		0.945974, -0.253975, -0.201568,
		30.671728, 32.709270, 48.151249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039379, 32.103874, 48.221870>,  <30.009546, 32.887051, 48.292347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039379, 32.103874, 48.221870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421833, 32.211330, 48.268589>,  <30.651304, 32.275803, 48.296619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421833, 32.211330, 48.268589>,  <30.039379, 32.103874, 48.221870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421833, 32.211330, 48.268589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150468, -0.792493, 0.591028,
		0.251332, -0.547528, -0.798151,
		0.956133, 0.268640, 0.116793,
		30.708673, 32.291924, 48.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271004, 31.499388, 48.112427>,  <30.039379, 32.103874, 48.221870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271004, 31.499388, 48.112427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550558, 31.714161, 48.301430>,  <30.718290, 31.843025, 48.414833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550558, 31.714161, 48.301430>,  <30.271004, 31.499388, 48.112427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550558, 31.714161, 48.301430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001679, -0.659401, 0.751789,
		0.715234, -0.526206, -0.459943,
		0.698884, 0.536933, 0.472509,
		30.760223, 31.875240, 48.443184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889698, 31.063660, 48.105736>,  <30.271004, 31.499388, 48.112427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889698, 31.063660, 48.105736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897688, 31.319445, 48.413162>,  <30.902481, 31.472916, 48.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897688, 31.319445, 48.413162>,  <30.889698, 31.063660, 48.105736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897688, 31.319445, 48.413162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071012, -0.767682, 0.636884,
		0.997275, 0.041856, -0.060743,
		0.019974, 0.639462, 0.768563,
		30.903681, 31.511284, 48.643730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466537, 30.898418, 48.494507>,  <30.889698, 31.063660, 48.105736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466537, 30.898418, 48.494507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235125, 31.117640, 48.736149>,  <31.096277, 31.249172, 48.881134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235125, 31.117640, 48.736149>,  <31.466537, 30.898418, 48.494507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235125, 31.117640, 48.736149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014230, -0.733738, 0.679283,
		0.815536, 0.401582, 0.416691,
		-0.578531, 0.548051, 0.604105,
		31.061565, 31.282055, 48.917381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756073, 30.741461, 49.151608>,  <31.466537, 30.898418, 48.494507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756073, 30.741461, 49.151608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393431, 30.877882, 49.251003>,  <31.175846, 30.959734, 49.310642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393431, 30.877882, 49.251003>,  <31.756073, 30.741461, 49.151608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393431, 30.877882, 49.251003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048271, -0.668830, 0.741847,
		0.419209, 0.660567, 0.622827,
		-0.906605, 0.341053, 0.248494,
		31.121449, 30.980198, 49.325550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797258, 30.809130, 49.854340>,  <31.756073, 30.741461, 49.151608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797258, 30.809130, 49.854340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405779, 30.768980, 49.782700>,  <31.170891, 30.744890, 49.739716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405779, 30.768980, 49.782700>,  <31.797258, 30.809130, 49.854340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405779, 30.768980, 49.782700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118582, -0.435769, 0.892213,
		-0.167602, 0.894444, 0.414583,
		-0.978697, -0.100375, -0.179101,
		31.112169, 30.738867, 49.728970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565897, 31.003630, 50.454540>,  <31.797258, 30.809130, 49.854340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565897, 31.003630, 50.454540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283709, 30.777447, 50.283627>,  <31.114395, 30.641737, 50.181080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283709, 30.777447, 50.283627>,  <31.565897, 31.003630, 50.454540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283709, 30.777447, 50.283627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158189, -0.462040, 0.872637,
		-0.690862, 0.683210, 0.236505,
		-0.705469, -0.565459, -0.427282,
		31.072067, 30.607809, 50.155441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264029, 30.676674, 50.977634>,  <31.565897, 31.003630, 50.454540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264029, 30.676674, 50.977634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096567, 30.465628, 50.681973>,  <30.996090, 30.338999, 50.504574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096567, 30.465628, 50.681973>,  <31.264029, 30.676674, 50.977634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096567, 30.465628, 50.681973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193407, -0.743444, 0.640223,
		-0.887313, 0.410988, 0.209200,
		-0.418653, -0.527617, -0.739155,
		30.970972, 30.307343, 50.460224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643696, 30.270712, 51.277542>,  <31.264029, 30.676674, 50.977634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643696, 30.270712, 51.277542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800571, 30.096560, 50.953411>,  <30.894697, 29.992067, 50.758934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800571, 30.096560, 50.953411>,  <30.643696, 30.270712, 51.277542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800571, 30.096560, 50.953411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003628, -0.881627, 0.471933,
		-0.919878, -0.182147, -0.347343,
		0.392188, -0.435381, -0.810328,
		30.918228, 29.965946, 50.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218950, 29.740788, 50.943192>,  <30.643696, 30.270712, 51.277542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218950, 29.740788, 50.943192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615198, 29.687878, 50.929462>,  <30.852947, 29.656132, 50.921227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615198, 29.687878, 50.929462>,  <30.218950, 29.740788, 50.943192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615198, 29.687878, 50.929462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085857, -0.797830, 0.596737,
		-0.106317, -0.588192, -0.801702,
		0.990618, -0.132275, -0.034322,
		30.912384, 29.648195, 50.919167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434174, 29.045197, 51.095417>,  <30.218950, 29.740788, 50.943192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434174, 29.045197, 51.095417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042070, 29.122225, 51.113342>,  <29.806808, 29.168442, 51.124096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042070, 29.122225, 51.113342>,  <30.434174, 29.045197, 51.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042070, 29.122225, 51.113342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189492, -0.850335, -0.490942,
		-0.056434, -0.489742, 0.870039,
		-0.980259, 0.192571, 0.044815,
		29.747993, 29.179996, 51.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935226, 28.558710, 51.523502>,  <30.434174, 29.045197, 51.095417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935226, 28.558710, 51.523502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722227, 28.712948, 51.222103>,  <29.594427, 28.805490, 51.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722227, 28.712948, 51.222103>,  <29.935226, 28.558710, 51.523502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722227, 28.712948, 51.222103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149303, -0.919038, -0.364797,
		-0.833158, -0.081755, 0.546959,
		-0.532501, 0.385596, -0.753498,
		29.562477, 28.828627, 50.996052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209179, 28.439819, 51.537117>,  <29.935226, 28.558710, 51.523502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209179, 28.439819, 51.537117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401310, 28.404240, 51.188091>,  <29.516588, 28.382893, 50.978676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401310, 28.404240, 51.188091>,  <29.209179, 28.439819, 51.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401310, 28.404240, 51.188091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215249, -0.976375, -0.018958,
		-0.850265, 0.196925, -0.488128,
		0.480330, -0.088950, -0.872566,
		29.545408, 28.377554, 50.926323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893147, 27.960018, 51.211567>,  <29.209179, 28.439819, 51.537117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893147, 27.960018, 51.211567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244913, 27.927565, 51.023933>,  <29.455973, 27.908092, 50.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244913, 27.927565, 51.023933>,  <28.893147, 27.960018, 51.211567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244913, 27.927565, 51.023933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049750, -0.995637, 0.078940,
		-0.473444, -0.046084, -0.879618,
		0.879418, -0.081135, -0.469086,
		29.508738, 27.903225, 50.883209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756943, 27.471914, 50.550560>,  <28.893147, 27.960018, 51.211567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756943, 27.471914, 50.550560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128082, 27.478107, 50.699615>,  <29.350765, 27.481823, 50.789051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128082, 27.478107, 50.699615>,  <28.756943, 27.471914, 50.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128082, 27.478107, 50.699615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119959, -0.958437, -0.258860,
		0.353144, 0.284884, -0.891140,
		0.927847, 0.015485, 0.372640,
		29.406437, 27.482754, 50.811409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389645, 27.320461, 50.111923>,  <28.756943, 27.471914, 50.550560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389645, 27.320461, 50.111923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487814, 27.197407, 50.479645>,  <29.546715, 27.123573, 50.700279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487814, 27.197407, 50.479645>,  <29.389645, 27.320461, 50.111923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487814, 27.197407, 50.479645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150078, -0.924821, -0.349547,
		0.957729, 0.223754, -0.180801,
		0.245421, -0.307637, 0.919308,
		29.561440, 27.105116, 50.755436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051826, 27.062571, 50.109192>,  <29.389645, 27.320461, 50.111923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051826, 27.062571, 50.109192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805155, 26.897060, 50.377071>,  <29.657152, 26.797754, 50.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805155, 26.897060, 50.377071>,  <30.051826, 27.062571, 50.109192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805155, 26.897060, 50.377071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379452, -0.901608, -0.207651,
		0.689727, 0.126064, 0.713011,
		-0.616679, -0.413775, 0.669699,
		29.620152, 26.772928, 50.577980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785051, 27.197626, 49.895119>,  <30.051826, 27.062571, 50.109192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785051, 27.197626, 49.895119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514170, 27.490784, 49.921230>,  <30.351641, 27.666677, 49.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514170, 27.490784, 49.921230>,  <30.785051, 27.197626, 49.895119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514170, 27.490784, 49.921230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439790, 0.474301, -0.762643,
		-0.589899, -0.487755, -0.643518,
		-0.677203, 0.732894, 0.065280,
		30.311008, 27.710651, 49.940815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462479, 27.329691, 49.247360>,  <30.785051, 27.197626, 49.895119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462479, 27.329691, 49.247360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439962, 27.675034, 49.447941>,  <30.426453, 27.882238, 49.568287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439962, 27.675034, 49.447941>,  <30.462479, 27.329691, 49.247360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439962, 27.675034, 49.447941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213407, 0.501041, -0.838698,
		-0.975340, 0.059803, -0.212449,
		-0.056289, 0.863355, 0.501448,
		30.423077, 27.934040, 49.598377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046890, 27.717571, 48.868420>,  <30.462479, 27.329691, 49.247360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046890, 27.717571, 48.868420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270735, 27.987537, 49.060802>,  <30.405041, 28.149517, 49.176231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270735, 27.987537, 49.060802>,  <30.046890, 27.717571, 48.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270735, 27.987537, 49.060802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193725, 0.457731, -0.867729,
		-0.805795, 0.578765, 0.125403,
		0.559612, 0.674918, 0.480958,
		30.438618, 28.190012, 49.205090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777988, 28.453739, 48.702137>,  <30.046890, 27.717571, 48.868420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777988, 28.453739, 48.702137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141970, 28.532263, 48.848259>,  <30.360359, 28.579376, 48.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141970, 28.532263, 48.848259>,  <29.777988, 28.453739, 48.702137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141970, 28.532263, 48.848259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170854, 0.625174, -0.761555,
		-0.377878, 0.755394, 0.535340,
		0.909954, 0.196310, 0.365302,
		30.414955, 28.591156, 48.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863657, 29.114279, 48.568562>,  <29.777988, 28.453739, 48.702137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863657, 29.114279, 48.568562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242666, 29.019939, 48.654884>,  <30.470072, 28.963337, 48.706680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242666, 29.019939, 48.654884>,  <29.863657, 29.114279, 48.568562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242666, 29.019939, 48.654884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315579, 0.582239, -0.749272,
		0.051061, 0.778058, 0.626114,
		0.947524, -0.235847, 0.215809,
		30.526924, 28.949184, 48.719627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258947, 29.783127, 48.586395>,  <29.863657, 29.114279, 48.568562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258947, 29.783127, 48.586395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511614, 29.482649, 48.509766>,  <30.663214, 29.302362, 48.463787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511614, 29.482649, 48.509766>,  <30.258947, 29.783127, 48.586395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511614, 29.482649, 48.509766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402004, 0.528692, -0.747581,
		0.662866, 0.395207, 0.635941,
		0.631666, -0.751197, -0.191577,
		30.701113, 29.257290, 48.452293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906326, 30.134663, 48.577271>,  <30.258947, 29.783127, 48.586395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906326, 30.134663, 48.577271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969734, 29.776115, 48.411671>,  <31.007778, 29.560987, 48.312313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969734, 29.776115, 48.411671>,  <30.906326, 30.134663, 48.577271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969734, 29.776115, 48.411671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502735, 0.434150, -0.747510,
		0.849782, -0.089635, 0.519457,
		0.158519, -0.896370, -0.413995,
		31.017290, 29.507204, 48.287472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632750, 30.052008, 48.621620>,  <30.906326, 30.134663, 48.577271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632750, 30.052008, 48.621620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450836, 29.834738, 48.339306>,  <31.341688, 29.704376, 48.169918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450836, 29.834738, 48.339306>,  <31.632750, 30.052008, 48.621620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450836, 29.834738, 48.339306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599388, 0.399469, -0.693656,
		0.658716, -0.738503, 0.143900,
		-0.454783, -0.543174, -0.705786,
		31.314402, 29.671785, 48.127571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107525, 29.773769, 48.207142>,  <31.632750, 30.052008, 48.621620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107525, 29.773769, 48.207142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789387, 29.748907, 47.965954>,  <31.598505, 29.733990, 47.821243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789387, 29.748907, 47.965954>,  <32.107525, 29.773769, 48.207142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789387, 29.748907, 47.965954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564330, 0.287203, -0.773981,
		0.221281, -0.955851, -0.193348,
		-0.795340, -0.062155, -0.602968,
		31.550785, 29.730261, 47.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336021, 29.469097, 47.586056>,  <32.107525, 29.773769, 48.207142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336021, 29.469097, 47.586056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991308, 29.639925, 47.476555>,  <31.784479, 29.742422, 47.410854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991308, 29.639925, 47.476555>,  <32.336021, 29.469097, 47.586056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991308, 29.639925, 47.476555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421964, 0.303992, -0.854128,
		-0.281557, -0.851586, -0.442185,
		-0.861784, 0.427072, -0.273748,
		31.732773, 29.768047, 47.394432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251225, 29.248623, 46.945206>,  <32.336021, 29.469097, 47.586056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251225, 29.248623, 46.945206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012821, 29.568329, 46.976048>,  <31.869778, 29.760153, 46.994553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012821, 29.568329, 46.976048>,  <32.251225, 29.248623, 46.945206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012821, 29.568329, 46.976048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326082, 0.328668, -0.886368,
		-0.733785, -0.503143, -0.456516,
		-0.596012, 0.799265, 0.077105,
		31.834017, 29.808107, 46.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147606, 29.445091, 46.303371>,  <32.251225, 29.248623, 46.945206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147606, 29.445091, 46.303371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038563, 29.777010, 46.498154>,  <31.973137, 29.976162, 46.615021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038563, 29.777010, 46.498154>,  <32.147606, 29.445091, 46.303371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038563, 29.777010, 46.498154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356354, 0.557206, -0.750022,
		-0.893699, -0.030935, -0.447600,
		-0.272607, 0.829798, 0.486951,
		31.956781, 30.025949, 46.644238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895895, 29.990032, 45.792503>,  <32.147606, 29.445091, 46.303371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895895, 29.990032, 45.792503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972656, 30.226797, 46.105633>,  <32.018711, 30.368856, 46.293510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972656, 30.226797, 46.105633>,  <31.895895, 29.990032, 45.792503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972656, 30.226797, 46.105633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590612, 0.567389, -0.573801,
		-0.783806, 0.572458, -0.240708,
		0.191902, 0.591913, 0.782823,
		32.030228, 30.404371, 46.340481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652851, 30.551208, 45.642288>,  <31.895895, 29.990032, 45.792503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652851, 30.551208, 45.642288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925812, 30.660076, 45.913654>,  <32.089588, 30.725397, 46.076473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925812, 30.660076, 45.913654>,  <31.652851, 30.551208, 45.642288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925812, 30.660076, 45.913654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367968, 0.674027, -0.640537,
		-0.631605, 0.686740, 0.359809,
		0.682404, 0.272169, 0.678417,
		32.130531, 30.741726, 46.117180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507153, 31.246870, 45.726665>,  <31.652851, 30.551208, 45.642288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507153, 31.246870, 45.726665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882408, 31.181353, 45.848690>,  <32.107563, 31.142042, 45.921906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882408, 31.181353, 45.848690>,  <31.507153, 31.246870, 45.726665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882408, 31.181353, 45.848690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343627, 0.548735, -0.762109,
		-0.042569, 0.819793, 0.571075,
		0.938141, -0.163795, 0.305062,
		32.163849, 31.132214, 45.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874395, 31.857718, 45.724407>,  <31.507153, 31.246870, 45.726665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874395, 31.857718, 45.724407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139019, 31.564022, 45.663437>,  <32.297794, 31.387804, 45.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139019, 31.564022, 45.663437>,  <31.874395, 31.857718, 45.724407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139019, 31.564022, 45.663437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296093, 0.442508, -0.846472,
		0.688964, 0.514857, 0.510148,
		0.661557, -0.734240, -0.152427,
		32.337486, 31.343750, 45.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533684, 32.105354, 45.520641>,  <31.874395, 31.857718, 45.724407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533684, 32.105354, 45.520641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565842, 31.738411, 45.364693>,  <32.585136, 31.518246, 45.271126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565842, 31.738411, 45.364693>,  <32.533684, 32.105354, 45.520641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565842, 31.738411, 45.364693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209444, 0.397948, -0.893180,
		0.974510, -0.009850, 0.224127,
		0.080394, -0.917355, -0.389868,
		32.589958, 31.463205, 45.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026783, 32.168053, 44.970596>,  <32.533684, 32.105354, 45.520641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026783, 32.168053, 44.970596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811798, 31.840858, 44.888592>,  <32.682808, 31.644541, 44.839390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811798, 31.840858, 44.888592>,  <33.026783, 32.168053, 44.970596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811798, 31.840858, 44.888592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074993, 0.288511, -0.954535,
		0.839949, -0.497649, -0.216406,
		-0.537459, -0.817990, -0.205015,
		32.650562, 31.595461, 44.827087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364758, 31.822046, 44.373863>,  <33.026783, 32.168053, 44.970596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364758, 31.822046, 44.373863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976574, 31.731361, 44.406872>,  <32.743664, 31.676950, 44.426678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976574, 31.731361, 44.406872>,  <33.364758, 31.822046, 44.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976574, 31.731361, 44.406872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142332, 0.261807, -0.954567,
		0.194804, -0.938115, -0.286341,
		-0.970461, -0.226709, 0.082523,
		32.685436, 31.663347, 44.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211071, 31.596922, 43.664993>,  <33.364758, 31.822046, 44.373863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211071, 31.596922, 43.664993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848576, 31.664715, 43.819912>,  <32.631077, 31.705391, 43.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848576, 31.664715, 43.819912>,  <33.211071, 31.596922, 43.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848576, 31.664715, 43.819912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292022, 0.411489, -0.863365,
		-0.305693, -0.895518, -0.323417,
		-0.906242, 0.169480, 0.387300,
		32.576702, 31.715559, 43.936104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739887, 31.455694, 43.176628>,  <33.211071, 31.596922, 43.664993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739887, 31.455694, 43.176628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484367, 31.651886, 43.413731>,  <32.331055, 31.769602, 43.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484367, 31.651886, 43.413731>,  <32.739887, 31.455694, 43.176628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484367, 31.651886, 43.413731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381804, 0.466787, -0.797706,
		-0.667951, -0.735893, -0.110917,
		-0.638801, 0.490480, 0.592758,
		32.292728, 31.799030, 43.591557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068390, 31.234972, 42.921074>,  <32.739887, 31.455694, 43.176628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068390, 31.234972, 42.921074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053055, 31.585426, 43.113289>,  <32.043854, 31.795700, 43.228619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053055, 31.585426, 43.113289>,  <32.068390, 31.234972, 42.921074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053055, 31.585426, 43.113289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415822, 0.423286, -0.804935,
		-0.908638, -0.230678, 0.348088,
		-0.038340, 0.876137, 0.480535,
		32.041553, 31.848267, 43.257450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381807, 31.436823, 42.889191>,  <32.068390, 31.234972, 42.921074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381807, 31.436823, 42.889191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609480, 31.760242, 42.948898>,  <31.746084, 31.954294, 42.984722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609480, 31.760242, 42.948898>,  <31.381807, 31.436823, 42.889191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609480, 31.760242, 42.948898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415088, 0.439284, -0.796700,
		-0.709743, 0.391507, 0.585651,
		0.569181, 0.808549, 0.149269,
		31.780233, 32.002808, 42.993679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963305, 31.910814, 42.754967>,  <31.381807, 31.436823, 42.889191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963305, 31.910814, 42.754967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318464, 32.089729, 42.711937>,  <31.531559, 32.197079, 42.686119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318464, 32.089729, 42.711937>,  <30.963305, 31.910814, 42.754967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318464, 32.089729, 42.711937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293067, 0.369694, -0.881724,
		-0.354613, 0.814408, 0.459336,
		0.887897, 0.447287, -0.107578,
		31.584833, 32.223915, 42.679665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856359, 32.532551, 42.437660>,  <30.963305, 31.910814, 42.754967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856359, 32.532551, 42.437660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237471, 32.448120, 42.350330>,  <31.466137, 32.397461, 42.297932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237471, 32.448120, 42.350330>,  <30.856359, 32.532551, 42.437660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237471, 32.448120, 42.350330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161325, 0.257275, -0.952777,
		0.257275, 0.943005, 0.211074,
		0.952777, -0.211074, -0.218320,
		31.523304, 32.384796, 42.284836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066164, 33.104420, 42.042057>,  <30.856359, 32.532551, 42.437660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066164, 33.104420, 42.042057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337437, 32.827023, 41.944786>,  <31.500200, 32.660583, 41.886425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337437, 32.827023, 41.944786>,  <31.066164, 33.104420, 42.042057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337437, 32.827023, 41.944786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018548, 0.314640, -0.949030,
		0.734659, 0.648126, 0.200521,
		0.678183, -0.693494, -0.243174,
		31.540892, 32.618973, 41.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642952, 33.443260, 41.641518>,  <31.066164, 33.104420, 42.042057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642952, 33.443260, 41.641518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664433, 33.055592, 41.545326>,  <31.677320, 32.822990, 41.487614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664433, 33.055592, 41.545326>,  <31.642952, 33.443260, 41.641518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664433, 33.055592, 41.545326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104676, 0.244960, -0.963866,
		0.993055, 0.026589, 0.114603,
		0.053701, -0.969168, -0.240475,
		31.680542, 32.764839, 41.473183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252731, 33.451099, 41.180981>,  <31.642952, 33.443260, 41.641518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252731, 33.451099, 41.180981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 33.111828, 41.129604>,  <31.923838, 32.908264, 41.098778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 33.111828, 41.129604>,  <32.252731, 33.451099, 41.180981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047173, 33.111828, 41.129604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244577, -0.001357, -0.969629,
		0.822247, -0.529704, 0.208143,
		-0.513898, -0.848182, -0.128438,
		31.893003, 32.857372, 41.091072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677650, 33.028786, 40.725903>,  <32.252731, 33.451099, 41.180981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677650, 33.028786, 40.725903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298359, 32.907814, 40.687138>,  <32.070782, 32.835232, 40.663879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298359, 32.907814, 40.687138>,  <32.677650, 33.028786, 40.725903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298359, 32.907814, 40.687138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108931, -0.023102, -0.993781,
		0.298313, -0.952891, 0.054850,
		-0.948231, -0.302432, -0.096908,
		32.013889, 32.817085, 40.658066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687706, 32.516434, 40.125687>,  <32.677650, 33.028786, 40.725903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687706, 32.516434, 40.125687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297375, 32.601852, 40.144234>,  <32.063175, 32.653103, 40.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297375, 32.601852, 40.144234>,  <32.687706, 32.516434, 40.125687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297375, 32.601852, 40.144234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028778, 0.084761, -0.995986,
		-0.216619, -0.973249, -0.076567,
		-0.975832, 0.213546, 0.046369,
		32.004623, 32.665916, 40.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432949, 32.254307, 39.545006>,  <32.687706, 32.516434, 40.125687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432949, 32.254307, 39.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136837, 32.493778, 39.667358>,  <31.959169, 32.637463, 39.740772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136837, 32.493778, 39.667358>,  <32.432949, 32.254307, 39.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136837, 32.493778, 39.667358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216360, 0.218630, -0.951520,
		-0.636532, -0.770573, -0.032317,
		-0.740281, 0.598681, 0.305886,
		31.914753, 32.673382, 39.759125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848726, 32.127415, 39.025993>,  <32.432949, 32.254307, 39.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848726, 32.127415, 39.025993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761663, 32.478310, 39.197144>,  <31.709425, 32.688847, 39.299831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761663, 32.478310, 39.197144>,  <31.848726, 32.127415, 39.025993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761663, 32.478310, 39.197144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339257, 0.343049, -0.875912,
		-0.915167, -0.335807, 0.222943,
		-0.217657, 0.877240, 0.427872,
		31.696365, 32.741482, 39.325504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070606, 32.373035, 38.964073>,  <31.848726, 32.127415, 39.025993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070606, 32.373035, 38.964073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325911, 32.680031, 38.987991>,  <31.479094, 32.864227, 39.002342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325911, 32.680031, 38.987991>,  <31.070606, 32.373035, 38.964073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325911, 32.680031, 38.987991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169903, 0.216199, -0.961453,
		-0.750835, 0.603500, 0.268391,
		0.638263, 0.767493, 0.059793,
		31.517389, 32.910278, 39.005928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891108, 32.644524, 38.329453>,  <31.070606, 32.373035, 38.964073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891108, 32.644524, 38.329453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226627, 32.837414, 38.430546>,  <31.427938, 32.953148, 38.491203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226627, 32.837414, 38.430546>,  <30.891108, 32.644524, 38.329453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226627, 32.837414, 38.430546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014497, 0.444269, -0.895776,
		-0.544247, 0.755041, 0.365662,
		0.838800, 0.482223, 0.252738,
		31.478268, 32.982082, 38.506367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828857, 33.205513, 37.927429>,  <30.891108, 32.644524, 38.329453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828857, 33.205513, 37.927429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209002, 33.199673, 38.051754>,  <31.437088, 33.196167, 38.126350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209002, 33.199673, 38.051754>,  <30.828857, 33.205513, 37.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209002, 33.199673, 38.051754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292027, 0.386722, -0.874738,
		-0.107425, 0.922081, 0.371789,
		0.950358, -0.014603, 0.310816,
		31.494108, 33.195293, 38.145000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193064, 33.855087, 37.817997>,  <30.828857, 33.205513, 37.927429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193064, 33.855087, 37.817997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461414, 33.558636, 37.828186>,  <31.622425, 33.380764, 37.834301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461414, 33.558636, 37.828186>,  <31.193064, 33.855087, 37.817997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461414, 33.558636, 37.828186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364184, 0.299351, -0.881906,
		0.645982, 0.600928, 0.470736,
		0.670878, -0.741130, 0.025473,
		31.662678, 33.336296, 37.835827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740088, 34.145847, 37.592556>,  <31.193064, 33.855087, 37.817997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740088, 34.145847, 37.592556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821892, 33.757866, 37.539856>,  <31.870974, 33.525078, 37.508236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821892, 33.757866, 37.539856>,  <31.740088, 34.145847, 37.592556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821892, 33.757866, 37.539856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304761, 0.190997, -0.933081,
		0.930213, 0.150672, 0.334666,
		0.204509, -0.969958, -0.131749,
		31.883244, 33.466877, 37.500332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356606, 34.130814, 37.219776>,  <31.740088, 34.145847, 37.592556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356606, 34.130814, 37.219776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200817, 33.764999, 37.176086>,  <32.107342, 33.545509, 37.149872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200817, 33.764999, 37.176086>,  <32.356606, 34.130814, 37.219776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200817, 33.764999, 37.176086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275554, -0.002540, -0.961282,
		0.878851, -0.404494, 0.252993,
		-0.389476, -0.914537, -0.109228,
		32.083973, 33.490639, 37.143318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864628, 33.609241, 36.914024>,  <32.356606, 34.130814, 37.219776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864628, 33.609241, 36.914024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493587, 33.488899, 36.825436>,  <32.270966, 33.416695, 36.772282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493587, 33.488899, 36.825436>,  <32.864628, 33.609241, 36.914024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493587, 33.488899, 36.825436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290256, -0.207166, -0.934255,
		0.235193, -0.930897, 0.279492,
		-0.927596, -0.300854, -0.221474,
		32.215309, 33.398643, 36.758995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952911, 33.058861, 36.529495>,  <32.864628, 33.609241, 36.914024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952911, 33.058861, 36.529495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580406, 33.167324, 36.432144>,  <32.356903, 33.232403, 36.373734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580406, 33.167324, 36.432144>,  <32.952911, 33.058861, 36.529495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580406, 33.167324, 36.432144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167143, -0.275604, -0.946629,
		-0.323759, -0.922235, 0.211337,
		-0.931259, 0.271156, -0.243374,
		32.301029, 33.248669, 36.359131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700100, 32.491920, 36.201492>,  <32.952911, 33.058861, 36.529495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700100, 32.491920, 36.201492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479248, 32.801907, 36.078476>,  <32.346737, 32.987900, 36.004665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479248, 32.801907, 36.078476>,  <32.700100, 32.491920, 36.201492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479248, 32.801907, 36.078476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313340, -0.148948, -0.937887,
		-0.772636, -0.614203, -0.160588,
		-0.552134, 0.774964, -0.307536,
		32.313606, 33.034397, 35.986214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900169, 31.852243, 36.294750>,  <32.700100, 32.491920, 36.201492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900169, 31.852243, 36.294750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279884, 31.862360, 36.169392>,  <33.507713, 31.868431, 36.094177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279884, 31.862360, 36.169392>,  <32.900169, 31.852243, 36.294750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279884, 31.862360, 36.169392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295699, -0.410619, 0.862528,
		-0.106872, -0.911456, -0.397273,
		0.949284, 0.025293, -0.313400,
		33.564671, 31.869947, 36.075371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253330, 31.143463, 36.473217>,  <32.900169, 31.852243, 36.294750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253330, 31.143463, 36.473217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549904, 31.409513, 36.437698>,  <33.727848, 31.569143, 36.416386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549904, 31.409513, 36.437698>,  <33.253330, 31.143463, 36.473217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549904, 31.409513, 36.437698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334795, -0.251987, 0.907973,
		0.581540, -0.702930, -0.409512,
		0.741433, 0.665125, -0.088797,
		33.772335, 31.609051, 36.411060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763866, 30.776924, 36.730995>,  <33.253330, 31.143463, 36.473217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763866, 30.776924, 36.730995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933872, 31.138132, 36.756023>,  <34.035877, 31.354856, 36.771038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933872, 31.138132, 36.756023>,  <33.763866, 30.776924, 36.730995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933872, 31.138132, 36.756023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403036, -0.250679, 0.880183,
		0.810507, -0.348877, -0.470492,
		0.425018, 0.903020, 0.062567,
		34.061378, 31.409039, 36.774792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347363, 30.610798, 37.109436>,  <33.763866, 30.776924, 36.730995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347363, 30.610798, 37.109436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296013, 31.006338, 37.139633>,  <34.265205, 31.243662, 37.157753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296013, 31.006338, 37.139633>,  <34.347363, 30.610798, 37.109436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296013, 31.006338, 37.139633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447120, -0.010238, 0.894415,
		0.885215, 0.148569, -0.440820,
		-0.128369, 0.988849, 0.075492,
		34.257504, 31.302994, 37.162281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992443, 30.839270, 37.516857>,  <34.347363, 30.610798, 37.109436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992443, 30.839270, 37.516857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725151, 31.136650, 37.527779>,  <34.564774, 31.315079, 37.534332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725151, 31.136650, 37.527779>,  <34.992443, 30.839270, 37.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725151, 31.136650, 37.527779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205026, 0.148759, 0.967386,
		0.715143, 0.652036, -0.251833,
		-0.668233, 0.743451, 0.027300,
		34.524681, 31.359686, 37.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325230, 31.431852, 37.746670>,  <34.992443, 30.839270, 37.516857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325230, 31.431852, 37.746670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934261, 31.454479, 37.828102>,  <34.699680, 31.468056, 37.876961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934261, 31.454479, 37.828102>,  <35.325230, 31.431852, 37.746670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934261, 31.454479, 37.828102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204854, 0.017701, 0.978632,
		0.051753, 0.998242, -0.028889,
		-0.977423, 0.056565, 0.203578,
		34.641033, 31.471449, 37.889175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245060, 32.059357, 38.151081>,  <35.325230, 31.431852, 37.746670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245060, 32.059357, 38.151081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943878, 31.803328, 38.212215>,  <34.763168, 31.649710, 38.248898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943878, 31.803328, 38.212215>,  <35.245060, 32.059357, 38.151081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943878, 31.803328, 38.212215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126955, 0.086596, 0.988121,
		-0.645707, 0.763417, 0.016057,
		-0.752958, -0.640075, 0.152835,
		34.717991, 31.611305, 38.258064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092896, 32.365498, 38.741051>,  <35.245060, 32.059357, 38.151081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092896, 32.365498, 38.741051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882526, 32.025421, 38.731441>,  <34.756306, 31.821375, 38.725677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882526, 32.025421, 38.731441>,  <35.092896, 32.365498, 38.741051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882526, 32.025421, 38.731441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007937, -0.033147, 0.999419,
		-0.850497, 0.525424, 0.024181,
		-0.525920, -0.850195, -0.024021,
		34.724751, 31.770363, 38.724236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579102, 32.390327, 39.251396>,  <35.092896, 32.365498, 38.741051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579102, 32.390327, 39.251396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601425, 31.994656, 39.197117>,  <34.614819, 31.757254, 39.164551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601425, 31.994656, 39.197117>,  <34.579102, 32.390327, 39.251396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601425, 31.994656, 39.197117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088257, -0.140262, 0.986173,
		-0.994533, -0.043059, -0.095129,
		0.055806, -0.989178, -0.135695,
		34.618168, 31.697903, 39.156410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195442, 32.114559, 39.802090>,  <34.579102, 32.390327, 39.251396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195442, 32.114559, 39.802090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442856, 31.820185, 39.691959>,  <34.591305, 31.643560, 39.625881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442856, 31.820185, 39.691959>,  <34.195442, 32.114559, 39.802090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442856, 31.820185, 39.691959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185869, -0.203419, 0.961287,
		-0.763455, -0.645768, 0.010966,
		0.618538, -0.735938, -0.275329,
		34.628418, 31.599403, 39.609360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042492, 31.549774, 40.183453>,  <34.195442, 32.114559, 39.802090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042492, 31.549774, 40.183453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413357, 31.464415, 40.060272>,  <34.635876, 31.413198, 39.986362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413357, 31.464415, 40.060272>,  <34.042492, 31.549774, 40.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413357, 31.464415, 40.060272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221337, -0.351215, 0.909757,
		-0.302299, -0.911652, -0.278399,
		0.927160, -0.213399, -0.307954,
		34.691505, 31.400394, 39.967884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226215, 30.938709, 40.596920>,  <34.042492, 31.549774, 40.183453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226215, 30.938709, 40.596920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598598, 31.017395, 40.473873>,  <34.822029, 31.064606, 40.400043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598598, 31.017395, 40.473873>,  <34.226215, 30.938709, 40.596920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598598, 31.017395, 40.473873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364979, -0.476616, 0.799767,
		0.010710, -0.856820, -0.515504,
		0.930954, 0.196714, -0.307617,
		34.877884, 31.076408, 40.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588779, 30.314184, 40.736851>,  <34.226215, 30.938709, 40.596920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588779, 30.314184, 40.736851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857155, 30.610676, 40.728657>,  <35.018181, 30.788570, 40.723740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857155, 30.610676, 40.728657>,  <34.588779, 30.314184, 40.736851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857155, 30.610676, 40.728657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365472, -0.306525, 0.878904,
		0.645189, -0.597179, -0.476559,
		0.670940, 0.741228, -0.020485,
		35.058437, 30.833044, 40.722511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227478, 30.013409, 40.813385>,  <34.588779, 30.314184, 40.736851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227478, 30.013409, 40.813385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251839, 30.391586, 40.941399>,  <35.266457, 30.618494, 41.018208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251839, 30.391586, 40.941399>,  <35.227478, 30.013409, 40.813385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251839, 30.391586, 40.941399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239799, -0.325100, 0.914771,
		0.968911, 0.021035, -0.246515,
		0.060900, 0.945446, 0.320037,
		35.270107, 30.675220, 41.037411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691284, 30.010057, 41.339870>,  <35.227478, 30.013409, 40.813385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691284, 30.010057, 41.339870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498222, 30.355965, 41.395325>,  <35.382385, 30.563509, 41.428596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498222, 30.355965, 41.395325>,  <35.691284, 30.010057, 41.339870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498222, 30.355965, 41.395325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072494, -0.118308, 0.990327,
		0.872806, 0.488036, -0.005589,
		-0.482654, 0.864768, 0.138639,
		35.353428, 30.615395, 41.436916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870079, 30.268269, 41.956486>,  <35.691284, 30.010057, 41.339870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870079, 30.268269, 41.956486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554562, 30.510542, 41.914642>,  <35.365250, 30.655907, 41.889538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554562, 30.510542, 41.914642>,  <35.870079, 30.268269, 41.956486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554562, 30.510542, 41.914642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185838, -0.072791, 0.979880,
		0.585885, 0.792368, 0.169977,
		-0.788798, 0.605686, -0.104605,
		35.317921, 30.692247, 41.883263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928219, 30.816853, 42.419460>,  <35.870079, 30.268269, 41.956486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928219, 30.816853, 42.419460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540768, 30.787907, 42.324364>,  <35.308296, 30.770538, 42.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540768, 30.787907, 42.324364>,  <35.928219, 30.816853, 42.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540768, 30.787907, 42.324364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246621, 0.162017, 0.955473,
		-0.030625, 0.984131, -0.174782,
		-0.968628, -0.072366, -0.237746,
		35.250179, 30.766197, 42.253040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627262, 31.381025, 42.779778>,  <35.928219, 30.816853, 42.419460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627262, 31.381025, 42.779778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346535, 31.109131, 42.694542>,  <35.178097, 30.945993, 42.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346535, 31.109131, 42.694542>,  <35.627262, 31.381025, 42.779778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346535, 31.109131, 42.694542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287805, -0.003062, 0.957684,
		-0.651625, 0.733450, -0.193482,
		-0.701822, -0.679736, -0.213086,
		35.135990, 30.905210, 42.630615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917622, 31.647005, 42.964180>,  <35.627262, 31.381025, 42.779778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917622, 31.647005, 42.964180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877586, 31.249016, 42.965290>,  <34.853565, 31.010221, 42.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877586, 31.249016, 42.965290>,  <34.917622, 31.647005, 42.964180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877586, 31.249016, 42.965290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399052, 0.042699, 0.915934,
		-0.911449, 0.090568, -0.401320,
		-0.100091, -0.994975, 0.002777,
		34.847561, 30.950523, 42.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328575, 31.508627, 43.307091>,  <34.917622, 31.647005, 42.964180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328575, 31.508627, 43.307091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496658, 31.146515, 43.332047>,  <34.597507, 30.929247, 43.347019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496658, 31.146515, 43.332047>,  <34.328575, 31.508627, 43.307091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496658, 31.146515, 43.332047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400403, -0.123273, 0.908010,
		-0.814313, -0.406532, -0.414277,
		0.420204, -0.905282, 0.062394,
		34.622719, 30.874929, 43.350765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781265, 31.007492, 43.642269>,  <34.328575, 31.508627, 43.307091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781265, 31.007492, 43.642269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126484, 30.808937, 43.679695>,  <34.333614, 30.689804, 43.702152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126484, 30.808937, 43.679695>,  <33.781265, 31.007492, 43.642269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126484, 30.808937, 43.679695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205584, -0.175972, 0.962688,
		-0.461399, -0.850079, -0.253921,
		0.863044, -0.496386, 0.093569,
		34.385399, 30.660021, 43.707767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659210, 30.465540, 44.112011>,  <33.781265, 31.007492, 43.642269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659210, 30.465540, 44.112011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059074, 30.467218, 44.101711>,  <34.298992, 30.468225, 44.095531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059074, 30.467218, 44.101711>,  <33.659210, 30.465540, 44.112011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059074, 30.467218, 44.101711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025999, -0.242753, 0.969739,
		-0.002180, -0.970079, -0.242780,
		0.999659, 0.004198, -0.025750,
		34.358971, 30.468477, 44.093987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931328, 29.714336, 44.258900>,  <33.659210, 30.465540, 44.112011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931328, 29.714336, 44.258900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192924, 29.993876, 44.374767>,  <34.349880, 30.161600, 44.444286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192924, 29.993876, 44.374767>,  <33.931328, 29.714336, 44.258900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192924, 29.993876, 44.374767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003408, -0.385622, 0.922651,
		0.756496, -0.602417, -0.254574,
		0.653989, 0.698849, 0.289668,
		34.389122, 30.203529, 44.461666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427422, 29.335670, 44.590176>,  <33.931328, 29.714336, 44.258900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427422, 29.335670, 44.590176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478184, 29.713154, 44.712364>,  <34.508640, 29.939644, 44.785679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478184, 29.713154, 44.712364>,  <34.427422, 29.335670, 44.590176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478184, 29.713154, 44.712364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061358, -0.314844, 0.947158,
		0.990016, -0.101452, -0.097858,
		0.126901, 0.943706, 0.305475,
		34.516254, 29.996265, 44.804008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951248, 29.322933, 45.141525>,  <34.427422, 29.335670, 44.590176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951248, 29.322933, 45.141525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726749, 29.644976, 45.218266>,  <34.592052, 29.838202, 45.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726749, 29.644976, 45.218266>,  <34.951248, 29.322933, 45.141525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726749, 29.644976, 45.218266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065355, -0.187971, 0.979998,
		0.825067, 0.562555, 0.052879,
		-0.561243, 0.805108, 0.191854,
		34.558376, 29.886509, 45.275822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162735, 29.419861, 45.774368>,  <34.951248, 29.322933, 45.141525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162735, 29.419861, 45.774368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860134, 29.681252, 45.784695>,  <34.678574, 29.838087, 45.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860134, 29.681252, 45.784695>,  <35.162735, 29.419861, 45.774368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860134, 29.681252, 45.784695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006851, -0.031554, 0.999479,
		0.653952, 0.756287, 0.019394,
		-0.756505, 0.653478, 0.025817,
		34.633183, 29.877295, 45.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350445, 30.033466, 46.253674>,  <35.162735, 29.419861, 45.774368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350445, 30.033466, 46.253674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960384, 29.952925, 46.216724>,  <34.726349, 29.904600, 46.194557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960384, 29.952925, 46.216724>,  <35.350445, 30.033466, 46.253674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960384, 29.952925, 46.216724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097625, 0.016301, 0.995090,
		-0.198857, 0.979383, -0.035553,
		-0.975154, -0.201352, -0.092370,
		34.667839, 29.892519, 46.189014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199554, 30.512426, 46.782448>,  <35.350445, 30.033466, 46.253674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199554, 30.512426, 46.782448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900932, 30.263023, 46.689594>,  <34.721760, 30.113382, 46.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900932, 30.263023, 46.689594>,  <35.199554, 30.512426, 46.782448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900932, 30.263023, 46.689594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308155, 0.014823, 0.951221,
		-0.589651, 0.781677, -0.203203,
		-0.746560, -0.623507, -0.232137,
		34.676964, 30.075972, 46.619953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841568, 30.696337, 47.245426>,  <35.199554, 30.512426, 46.782448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841568, 30.696337, 47.245426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651939, 30.363459, 47.130394>,  <34.538162, 30.163731, 47.061375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651939, 30.363459, 47.130394>,  <34.841568, 30.696337, 47.245426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651939, 30.363459, 47.130394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319781, -0.141574, 0.936855,
		-0.820361, 0.536102, -0.199004,
		-0.474076, -0.832197, -0.287577,
		34.509716, 30.113800, 47.044121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155807, 30.693043, 47.508484>,  <34.841568, 30.696337, 47.245426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155807, 30.693043, 47.508484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209755, 30.301613, 47.446262>,  <34.242123, 30.066755, 47.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209755, 30.301613, 47.446262>,  <34.155807, 30.693043, 47.508484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209755, 30.301613, 47.446262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358268, -0.194530, 0.913128,
		-0.923826, -0.067424, -0.376829,
		0.134871, -0.978576, -0.155556,
		34.250217, 30.008039, 47.399597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558216, 30.395615, 47.881096>,  <34.155807, 30.693043, 47.508484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558216, 30.395615, 47.881096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830368, 30.104782, 47.844364>,  <33.993660, 29.930283, 47.822327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830368, 30.104782, 47.844364>,  <33.558216, 30.395615, 47.881096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830368, 30.104782, 47.844364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086586, -0.204177, 0.975097,
		-0.727725, -0.655487, -0.201873,
		0.680381, -0.727082, -0.091828,
		34.034481, 29.886658, 47.816814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183025, 29.855825, 47.971008>,  <33.558216, 30.395615, 47.881096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183025, 29.855825, 47.971008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549061, 29.721460, 48.060242>,  <33.768684, 29.640841, 48.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549061, 29.721460, 48.060242>,  <33.183025, 29.855825, 47.971008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549061, 29.721460, 48.060242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322630, -0.278043, 0.904766,
		-0.241887, -0.899922, -0.362809,
		0.915096, -0.335905, 0.223087,
		33.823589, 29.620686, 48.127167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010658, 29.464437, 48.516418>,  <33.183025, 29.855825, 47.971008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010658, 29.464437, 48.516418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400864, 29.539970, 48.561520>,  <33.634987, 29.585291, 48.588581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400864, 29.539970, 48.561520>,  <33.010658, 29.464437, 48.516418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400864, 29.539970, 48.561520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118725, 0.020571, 0.992714,
		0.185139, -0.981794, 0.042486,
		0.975514, 0.188834, 0.112755,
		33.693520, 29.596621, 48.595345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259197, 29.044527, 49.082520>,  <33.010658, 29.464437, 48.516418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259197, 29.044527, 49.082520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518982, 29.347994, 49.062004>,  <33.674850, 29.530073, 49.049694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518982, 29.347994, 49.062004>,  <33.259197, 29.044527, 49.082520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518982, 29.347994, 49.062004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028768, 0.042887, 0.998666,
		0.759854, -0.650066, 0.006028,
		0.649457, 0.758667, -0.051288,
		33.713818, 29.575594, 49.046619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743847, 28.883722, 49.611893>,  <33.259197, 29.044527, 49.082520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743847, 28.883722, 49.611893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783287, 29.272882, 49.528236>,  <33.806950, 29.506378, 49.478043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783287, 29.272882, 49.528236>,  <33.743847, 28.883722, 49.611893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783287, 29.272882, 49.528236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212422, 0.184740, 0.959556,
		0.972191, -0.139038, -0.188451,
		0.098600, 0.972903, -0.209137,
		33.812866, 29.564753, 49.465496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331848, 29.093348, 50.042099>,  <33.743847, 28.883722, 49.611893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331848, 29.093348, 50.042099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140945, 29.436335, 49.965183>,  <34.026405, 29.642126, 49.919033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140945, 29.436335, 49.965183>,  <34.331848, 29.093348, 50.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140945, 29.436335, 49.965183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046049, 0.242919, 0.968953,
		0.877556, 0.453586, -0.155420,
		-0.477258, 0.857467, -0.192288,
		33.997768, 29.693575, 49.907497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826981, 29.707438, 50.318211>,  <34.331848, 29.093348, 50.042099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826981, 29.707438, 50.318211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445171, 29.823771, 50.291996>,  <34.216084, 29.893570, 50.276268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445171, 29.823771, 50.291996>,  <34.826981, 29.707438, 50.318211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445171, 29.823771, 50.291996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041941, 0.086653, 0.995355,
		0.295162, 0.952842, -0.070515,
		-0.954526, 0.290834, -0.065540,
		34.158813, 29.911020, 50.272335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762352, 30.476467, 50.481331>,  <34.826981, 29.707438, 50.318211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762352, 30.476467, 50.481331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955196, 30.799280, 50.617722>,  <35.070904, 30.992968, 50.699558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955196, 30.799280, 50.617722>,  <34.762352, 30.476467, 50.481331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955196, 30.799280, 50.617722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085829, 0.343820, -0.935105,
		-0.871894, 0.480093, 0.096494,
		0.482114, 0.807031, 0.340981,
		35.099831, 31.041389, 50.720016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546154, 31.018728, 50.169460>,  <34.762352, 30.476467, 50.481331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546154, 31.018728, 50.169460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934528, 31.073484, 50.247993>,  <35.167553, 31.106339, 50.295113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934528, 31.073484, 50.247993>,  <34.546154, 31.018728, 50.169460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934528, 31.073484, 50.247993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165268, 0.209919, -0.963650,
		-0.173130, 0.968088, 0.181194,
		0.970934, 0.136891, 0.196337,
		35.225807, 31.114552, 50.306896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753925, 31.709625, 49.942860>,  <34.546154, 31.018728, 50.169460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753925, 31.709625, 49.942860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116573, 31.540874, 49.946056>,  <35.334160, 31.439623, 49.947975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116573, 31.540874, 49.946056>,  <34.753925, 31.709625, 49.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116573, 31.540874, 49.946056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174433, 0.357482, -0.917486,
		0.384212, 0.833202, 0.397689,
		0.906617, -0.421879, 0.007989,
		35.388557, 31.414310, 49.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304737, 32.166077, 49.730045>,  <34.753925, 31.709625, 49.942860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304737, 32.166077, 49.730045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498993, 31.821039, 49.673367>,  <35.615547, 31.614016, 49.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498993, 31.821039, 49.673367>,  <35.304737, 32.166077, 49.730045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498993, 31.821039, 49.673367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328152, 0.330139, -0.885056,
		0.810228, 0.383319, 0.443392,
		0.485640, -0.862598, -0.141700,
		35.644684, 31.562260, 49.630856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083752, 32.334896, 49.571056>,  <35.304737, 32.166077, 49.730045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083752, 32.334896, 49.571056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020550, 31.968943, 49.422447>,  <35.982628, 31.749371, 49.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020550, 31.968943, 49.422447>,  <36.083752, 32.334896, 49.571056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020550, 31.968943, 49.422447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291508, 0.316260, -0.902775,
		0.943429, -0.250941, 0.216726,
		-0.158001, -0.914881, -0.371520,
		35.973148, 31.694479, 49.310989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787395, 31.970457, 49.388474>,  <36.083752, 32.334896, 49.571056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787395, 31.970457, 49.388474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480354, 31.850565, 49.161865>,  <36.296131, 31.778629, 49.025898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480354, 31.850565, 49.161865>,  <36.787395, 31.970457, 49.388474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480354, 31.850565, 49.161865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502585, 0.267037, -0.822253,
		0.397737, -0.915889, -0.054339,
		-0.767603, -0.299730, -0.566523,
		36.250072, 31.760647, 48.991909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147846, 31.603834, 48.888390>,  <36.787395, 31.970457, 49.388474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147846, 31.603834, 48.888390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783710, 31.651705, 48.729916>,  <36.565231, 31.680428, 48.634830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783710, 31.651705, 48.729916>,  <37.147846, 31.603834, 48.888390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783710, 31.651705, 48.729916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412145, 0.174895, -0.894175,
		-0.037723, -0.977286, -0.208539,
		-0.910337, 0.119679, -0.396186,
		36.510609, 31.687609, 48.611061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206226, 31.117256, 48.410919>,  <37.147846, 31.603834, 48.888390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206226, 31.117256, 48.410919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914616, 31.372995, 48.313137>,  <36.739651, 31.526440, 48.254467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914616, 31.372995, 48.313137>,  <37.206226, 31.117256, 48.410919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914616, 31.372995, 48.313137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376617, 0.076453, -0.923209,
		-0.571562, -0.765108, -0.296525,
		-0.729024, 0.639348, -0.244455,
		36.695908, 31.564800, 48.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798862, 30.815987, 47.840912>,  <37.206226, 31.117256, 48.410919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798862, 30.815987, 47.840912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735516, 31.209307, 47.805046>,  <36.697506, 31.445299, 47.783527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735516, 31.209307, 47.805046>,  <36.798862, 30.815987, 47.840912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735516, 31.209307, 47.805046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281399, -0.042100, -0.958667,
		-0.946432, -0.177054, -0.270033,
		-0.158367, 0.983300, -0.089668,
		36.688007, 31.504297, 47.778145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536774, 30.854723, 47.177395>,  <36.798862, 30.815987, 47.840912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536774, 30.854723, 47.177395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637360, 31.231424, 47.266720>,  <36.697712, 31.457445, 47.320316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637360, 31.231424, 47.266720>,  <36.536774, 30.854723, 47.177395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637360, 31.231424, 47.266720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071252, 0.212091, -0.974649,
		-0.965240, 0.261001, -0.013769,
		0.251464, 0.941751, 0.223315,
		36.712799, 31.513950, 47.333714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175896, 31.293442, 46.749931>,  <36.536774, 30.854723, 47.177395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175896, 31.293442, 46.749931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493217, 31.519152, 46.841373>,  <36.683613, 31.654577, 46.896240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493217, 31.519152, 46.841373>,  <36.175896, 31.293442, 46.749931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493217, 31.519152, 46.841373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133733, 0.204815, -0.969622,
		-0.593954, 0.799779, 0.087019,
		0.793306, 0.564273, 0.228607,
		36.731209, 31.688435, 46.909954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089748, 31.931171, 46.395653>,  <36.175896, 31.293442, 46.749931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089748, 31.931171, 46.395653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476036, 31.953568, 46.497047>,  <36.707809, 31.967005, 46.557884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476036, 31.953568, 46.497047>,  <36.089748, 31.931171, 46.395653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476036, 31.953568, 46.497047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233590, 0.238531, -0.942623,
		-0.113242, 0.969519, 0.217275,
		0.965718, 0.055991, 0.253482,
		36.765751, 31.970366, 46.573093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415958, 32.567223, 46.193840>,  <36.089748, 31.931171, 46.395653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415958, 32.567223, 46.193840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716736, 32.303719, 46.203781>,  <36.897202, 32.145618, 46.209747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716736, 32.303719, 46.203781>,  <36.415958, 32.567223, 46.193840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716736, 32.303719, 46.203781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287330, 0.293575, -0.911732,
		0.593313, 0.692714, 0.410033,
		0.751945, -0.658758, 0.024856,
		36.942318, 32.106091, 46.211239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922459, 32.920517, 45.837303>,  <36.415958, 32.567223, 46.193840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922459, 32.920517, 45.837303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028656, 32.536263, 45.804585>,  <37.092373, 32.305710, 45.784954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028656, 32.536263, 45.804585>,  <36.922459, 32.920517, 45.837303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028656, 32.536263, 45.804585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276559, 0.157159, -0.948059,
		0.923596, 0.229080, 0.307397,
		0.265492, -0.960637, -0.081797,
		37.108303, 32.248070, 45.780045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455189, 32.941948, 45.427700>,  <36.922459, 32.920517, 45.837303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455189, 32.941948, 45.427700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370373, 32.551117, 45.420204>,  <37.319485, 32.316616, 45.415707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370373, 32.551117, 45.420204>,  <37.455189, 32.941948, 45.427700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370373, 32.551117, 45.420204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253024, -0.036368, -0.966776,
		0.943937, -0.209737, 0.254937,
		-0.212041, -0.977081, -0.018739,
		37.306759, 32.257992, 45.414581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044079, 32.663696, 45.086685>,  <37.455189, 32.941948, 45.427700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044079, 32.663696, 45.086685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753044, 32.389835, 45.069424>,  <37.578423, 32.225517, 45.059067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753044, 32.389835, 45.069424>,  <38.044079, 32.663696, 45.086685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753044, 32.389835, 45.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106977, -0.051096, -0.992948,
		0.677621, -0.727074, 0.110419,
		-0.727589, -0.684655, -0.043156,
		37.534767, 32.184441, 45.056477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324577, 32.135773, 44.623142>,  <38.044079, 32.663696, 45.086685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324577, 32.135773, 44.623142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925816, 32.106411, 44.611839>,  <37.686558, 32.088795, 44.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925816, 32.106411, 44.611839>,  <38.324577, 32.135773, 44.623142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925816, 32.106411, 44.611839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040294, -0.168067, -0.984952,
		0.067554, -0.983039, 0.170504,
		-0.996902, -0.073408, -0.028257,
		37.626743, 32.084389, 44.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236492, 31.546753, 44.174084>,  <38.324577, 32.135773, 44.623142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236492, 31.546753, 44.174084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898781, 31.760977, 44.181789>,  <37.696156, 31.889511, 44.186413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898781, 31.760977, 44.181789>,  <38.236492, 31.546753, 44.174084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898781, 31.760977, 44.181789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201877, -0.284533, -0.937169,
		-0.496428, -0.795120, 0.348342,
		-0.844277, 0.535560, 0.019267,
		37.645496, 31.921644, 44.187569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830002, 31.175909, 43.767029>,  <38.236492, 31.546753, 44.174084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830002, 31.175909, 43.767029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670959, 31.542715, 43.779606>,  <37.575535, 31.762798, 43.787151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670959, 31.542715, 43.779606>,  <37.830002, 31.175909, 43.767029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670959, 31.542715, 43.779606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341486, -0.116086, -0.932690,
		-0.851643, -0.381581, 0.359305,
		-0.397607, 0.917017, 0.031441,
		37.551678, 31.817820, 43.789040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103897, 31.077721, 43.471249>,  <37.830002, 31.175909, 43.767029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103897, 31.077721, 43.471249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175423, 31.470968, 43.455753>,  <37.218338, 31.706917, 43.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175423, 31.470968, 43.455753>,  <37.103897, 31.077721, 43.471249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175423, 31.470968, 43.455753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193557, -0.003453, -0.981083,
		-0.964656, 0.182931, 0.189672,
		0.178816, 0.983120, -0.038739,
		37.229069, 31.765903, 43.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692650, 31.374229, 42.997433>,  <37.103897, 31.077721, 43.471249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692650, 31.374229, 42.997433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968307, 31.663757, 43.011070>,  <37.133701, 31.837475, 43.019253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968307, 31.663757, 43.011070>,  <36.692650, 31.374229, 42.997433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968307, 31.663757, 43.011070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007352, 0.054035, -0.998512,
		-0.724585, 0.687870, 0.042559,
		0.689146, 0.723820, 0.034096,
		37.175053, 31.880903, 43.021297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475986, 31.995298, 42.572048>,  <36.692650, 31.374229, 42.997433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475986, 31.995298, 42.572048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875473, 32.014820, 42.577511>,  <37.115166, 32.026535, 42.580788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875473, 32.014820, 42.577511>,  <36.475986, 31.995298, 42.572048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875473, 32.014820, 42.577511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010316, 0.068046, -0.997629,
		-0.049619, 0.996488, 0.067456,
		0.998715, 0.048805, 0.013657,
		37.175087, 32.029461, 42.581608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559902, 32.497826, 42.054077>,  <36.475986, 31.995298, 42.572048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559902, 32.497826, 42.054077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915577, 32.322353, 42.106091>,  <37.128983, 32.217072, 42.137299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915577, 32.322353, 42.106091>,  <36.559902, 32.497826, 42.054077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915577, 32.322353, 42.106091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174285, 0.061966, -0.982744,
		0.423052, 0.896505, 0.131554,
		0.889186, -0.438679, 0.130032,
		37.182331, 32.190750, 42.145100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904537, 32.798580, 41.548771>,  <36.559902, 32.497826, 42.054077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904537, 32.798580, 41.548771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128540, 32.479160, 41.637054>,  <37.262939, 32.287506, 41.690025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128540, 32.479160, 41.637054>,  <36.904537, 32.798580, 41.548771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128540, 32.479160, 41.637054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179050, -0.143448, -0.973326,
		0.808911, 0.584584, 0.062649,
		0.560003, -0.798552, 0.220707,
		37.296539, 32.239594, 41.703266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507748, 32.876183, 41.125313>,  <36.904537, 32.798580, 41.548771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507748, 32.876183, 41.125313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497334, 32.486935, 41.216843>,  <37.491085, 32.253387, 41.271763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497334, 32.486935, 41.216843>,  <37.507748, 32.876183, 41.125313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497334, 32.486935, 41.216843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267556, -0.227338, -0.936339,
		0.963191, 0.036847, 0.266283,
		-0.026034, -0.973119, 0.228828,
		37.489525, 32.195000, 41.285492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017849, 32.649284, 40.778999>,  <37.507748, 32.876183, 41.125313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017849, 32.649284, 40.778999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808750, 32.317234, 40.856583>,  <37.683292, 32.118004, 40.903133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808750, 32.317234, 40.856583>,  <38.017849, 32.649284, 40.778999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808750, 32.317234, 40.856583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254553, -0.369136, -0.893835,
		0.813596, -0.417878, 0.404277,
		-0.522747, -0.830130, 0.193956,
		37.651924, 32.068195, 40.914768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417763, 32.075775, 40.497593>,  <38.017849, 32.649284, 40.778999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417763, 32.075775, 40.497593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046581, 31.930729, 40.532021>,  <37.823872, 31.843702, 40.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046581, 31.930729, 40.532021>,  <38.417763, 32.075775, 40.497593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046581, 31.930729, 40.532021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107554, -0.481678, -0.869723,
		0.356830, -0.797809, 0.485977,
		-0.927957, -0.362612, 0.086069,
		37.768192, 31.821945, 40.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466518, 31.423309, 40.229507>,  <38.417763, 32.075775, 40.497593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466518, 31.423309, 40.229507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074642, 31.502968, 40.220131>,  <37.839516, 31.550764, 40.214504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074642, 31.502968, 40.220131>,  <38.466518, 31.423309, 40.229507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074642, 31.502968, 40.220131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053029, -0.370054, -0.927495,
		-0.193384, -0.907414, 0.373099,
		-0.979689, 0.199147, -0.023443,
		37.780735, 31.562712, 40.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182259, 30.892977, 39.821579>,  <38.466518, 31.423309, 40.229507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182259, 30.892977, 39.821579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900589, 31.176975, 39.824223>,  <37.731586, 31.347374, 39.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900589, 31.176975, 39.824223>,  <38.182259, 30.892977, 39.821579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900589, 31.176975, 39.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074928, -0.065051, -0.995065,
		-0.706064, -0.701193, 0.099006,
		-0.704173, 0.709998, 0.006609,
		37.689339, 31.389975, 39.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500263, 30.589560, 39.591606>,  <38.182259, 30.892977, 39.821579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500263, 30.589560, 39.591606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497066, 30.985767, 39.536751>,  <37.495148, 31.223492, 39.503838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497066, 30.985767, 39.536751>,  <37.500263, 30.589560, 39.591606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497066, 30.985767, 39.536751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127264, -0.137033, -0.982357,
		-0.991837, 0.009604, 0.127153,
		-0.007989, 0.990520, -0.137137,
		37.494671, 31.282923, 39.495609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100254, 30.643358, 39.037598>,  <37.500263, 30.589560, 39.591606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100254, 30.643358, 39.037598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251995, 31.012405, 39.009701>,  <37.343040, 31.233833, 38.992962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251995, 31.012405, 39.009701>,  <37.100254, 30.643358, 39.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251995, 31.012405, 39.009701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145534, -0.014940, -0.989240,
		-0.913734, 0.385423, 0.128605,
		0.379355, 0.922619, -0.069743,
		37.365803, 31.289190, 38.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629868, 31.169291, 38.727562>,  <37.100254, 30.643358, 39.037598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629868, 31.169291, 38.727562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999111, 31.312731, 38.672035>,  <37.220657, 31.398796, 38.638721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999111, 31.312731, 38.672035>,  <36.629868, 31.169291, 38.727562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999111, 31.312731, 38.672035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194038, 0.122734, -0.973286,
		-0.331986, 0.925387, 0.182879,
		0.923112, 0.358602, -0.138814,
		37.276043, 31.420311, 38.630390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518921, 31.760803, 38.250469>,  <36.629868, 31.169291, 38.727562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518921, 31.760803, 38.250469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917992, 31.737923, 38.235664>,  <37.157433, 31.724195, 38.226780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917992, 31.737923, 38.235664>,  <36.518921, 31.760803, 38.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917992, 31.737923, 38.235664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000986, 0.531120, -0.847296,
		0.068126, 0.845364, 0.529829,
		0.997676, -0.057200, -0.037017,
		37.217293, 31.720762, 38.224560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749683, 32.468365, 38.188465>,  <36.518921, 31.760803, 38.250469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749683, 32.468365, 38.188465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027321, 32.211712, 38.057907>,  <37.193905, 32.057720, 37.979572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027321, 32.211712, 38.057907>,  <36.749683, 32.468365, 38.188465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027321, 32.211712, 38.057907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108142, 0.541190, -0.833918,
		0.711712, 0.543524, 0.445026,
		0.694098, -0.641635, -0.326393,
		37.235550, 32.019222, 37.959988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442013, 32.916916, 37.942238>,  <36.749683, 32.468365, 38.188465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442013, 32.916916, 37.942238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488503, 32.556244, 37.775639>,  <37.516396, 32.339840, 37.675678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488503, 32.556244, 37.775639>,  <37.442013, 32.916916, 37.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488503, 32.556244, 37.775639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310217, 0.431315, -0.847191,
		0.943534, -0.030740, 0.329845,
		0.116225, -0.901677, -0.416497,
		37.523369, 32.285740, 37.650688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004536, 32.926212, 37.573578>,  <37.442013, 32.916916, 37.942238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004536, 32.926212, 37.573578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823421, 32.612606, 37.403728>,  <37.714752, 32.424442, 37.301819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823421, 32.612606, 37.403728>,  <38.004536, 32.926212, 37.573578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823421, 32.612606, 37.403728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236881, 0.353347, -0.905005,
		0.859578, -0.510357, 0.025729,
		-0.452784, -0.784017, -0.424623,
		37.687588, 32.377399, 37.276340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420860, 32.801098, 36.906372>,  <38.004536, 32.926212, 37.573578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420860, 32.801098, 36.906372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069386, 32.616688, 36.856781>,  <37.858501, 32.506042, 36.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069386, 32.616688, 36.856781>,  <38.420860, 32.801098, 36.906372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069386, 32.616688, 36.856781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080707, 0.112495, -0.990369,
		0.470531, -0.880228, -0.061640,
		-0.878685, -0.461025, -0.123973,
		37.805779, 32.478382, 36.819588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548286, 32.778084, 36.260139>,  <38.420860, 32.801098, 36.906372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548286, 32.778084, 36.260139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158405, 32.714001, 36.322472>,  <37.924477, 32.675549, 36.359871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158405, 32.714001, 36.322472>,  <38.548286, 32.778084, 36.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158405, 32.714001, 36.322472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192630, 0.248675, -0.949239,
		0.113327, -0.955245, -0.273246,
		-0.974706, -0.160210, 0.155827,
		37.865993, 32.665936, 36.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328148, 32.417953, 35.592754>,  <38.548286, 32.778084, 36.260139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328148, 32.417953, 35.592754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012257, 32.574745, 35.781513>,  <37.822723, 32.668819, 35.894768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012257, 32.574745, 35.781513>,  <38.328148, 32.417953, 35.592754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012257, 32.574745, 35.781513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346004, 0.350590, -0.870269,
		-0.506568, -0.850552, -0.141244,
		-0.789728, 0.391979, 0.471892,
		37.775337, 32.692337, 35.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852962, 32.143295, 35.236317>,  <38.328148, 32.417953, 35.592754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852962, 32.143295, 35.236317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728451, 32.475945, 35.420280>,  <37.653744, 32.675533, 35.530659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728451, 32.475945, 35.420280>,  <37.852962, 32.143295, 35.236317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728451, 32.475945, 35.420280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390773, 0.329132, -0.859633,
		-0.866258, -0.447302, 0.222524,
		-0.311276, 0.831621, 0.459907,
		37.635067, 32.725430, 35.558254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618080, 32.480881, 34.624123>,  <37.852962, 32.143295, 35.236317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618080, 32.480881, 34.624123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526985, 32.749161, 34.906483>,  <37.472328, 32.910130, 35.075897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526985, 32.749161, 34.906483>,  <37.618080, 32.480881, 34.624123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526985, 32.749161, 34.906483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418575, 0.587121, -0.692881,
		-0.879166, -0.453265, 0.147032,
		-0.227733, 0.670702, 0.705902,
		37.458664, 32.950371, 35.118252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275860, 32.778809, 34.749672>,  <37.618080, 32.480881, 34.624123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275860, 32.778809, 34.749672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578045, 32.516785, 34.754936>,  <38.759354, 32.359570, 34.758095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578045, 32.516785, 34.754936>,  <38.275860, 32.778809, 34.749672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578045, 32.516785, 34.754936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641794, 0.735813, -0.216054,
		0.131846, 0.171666, 0.976293,
		0.755459, -0.655064, 0.013161,
		38.804684, 32.320267, 34.758884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806633, 33.125187, 35.082565>,  <38.275860, 32.778809, 34.749672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806633, 33.125187, 35.082565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959152, 32.869205, 34.815708>,  <39.050663, 32.715618, 34.655594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959152, 32.869205, 34.815708>,  <38.806633, 33.125187, 35.082565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959152, 32.869205, 34.815708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734301, 0.648078, -0.201981,
		0.561616, -0.412866, 0.717028,
		0.381300, -0.639950, -0.667139,
		39.073544, 32.677219, 34.615566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553581, 33.002434, 35.242481>,  <38.806633, 33.125187, 35.082565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553581, 33.002434, 35.242481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491955, 32.945473, 34.851383>,  <39.454979, 32.911297, 34.616726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491955, 32.945473, 34.851383>,  <39.553581, 33.002434, 35.242481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491955, 32.945473, 34.851383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792287, 0.573466, -0.208368,
		0.590376, -0.806757, 0.024473,
		-0.154068, -0.142405, -0.977744,
		39.445736, 32.902752, 34.558060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080166, 32.656544, 34.814590>,  <39.553581, 33.002434, 35.242481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080166, 32.656544, 34.814590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866867, 32.923584, 34.606762>,  <39.738888, 33.083809, 34.482063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866867, 32.923584, 34.606762>,  <40.080166, 32.656544, 34.814590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866867, 32.923584, 34.606762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829590, 0.532920, -0.166662,
		0.165626, -0.519903, -0.838015,
		-0.533243, 0.667605, -0.519572,
		39.706894, 33.123867, 34.450890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414398, 32.882473, 34.194633>,  <40.080166, 32.656544, 34.814590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414398, 32.882473, 34.194633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 33.157635, 34.370121>,  <40.044353, 33.322731, 34.475414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 33.157635, 34.370121>,  <40.414398, 32.882473, 34.194633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183121, 33.157635, 34.370121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704830, 0.691984, -0.156116,
		-0.410980, 0.218956, -0.884960,
		-0.578196, 0.687907, 0.438718,
		40.009663, 33.364006, 34.501736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840710, 33.452232, 34.440018>,  <40.414398, 32.882473, 34.194633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840710, 33.452232, 34.440018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800518, 33.774914, 34.672958>,  <40.776405, 33.968521, 34.812721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800518, 33.774914, 34.672958>,  <40.840710, 33.452232, 34.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800518, 33.774914, 34.672958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994938, 0.082659, 0.057156,
		-0.002029, 0.585146, -0.810925,
		-0.100475, 0.806704, 0.582352,
		40.770374, 34.016926, 34.847664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372707, 34.023113, 34.250668>,  <40.840710, 33.452232, 34.440018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372707, 34.023113, 34.250668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232319, 34.157253, 34.600380>,  <41.148087, 34.237736, 34.810207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232319, 34.157253, 34.600380>,  <41.372707, 34.023113, 34.250668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232319, 34.157253, 34.600380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932086, 0.214504, 0.291898,
		-0.089649, 0.917349, -0.387858,
		-0.350969, 0.335348, 0.874278,
		41.127029, 34.257858, 34.862663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057003, 33.852039, 34.599663>,  <41.372707, 34.023113, 34.250668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057003, 33.852039, 34.599663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377167, 33.652443, 34.732544>,  <42.569263, 33.532684, 34.812271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377167, 33.652443, 34.732544>,  <42.057003, 33.852039, 34.599663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377167, 33.652443, 34.732544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396478, -0.856313, -0.330958,
		0.449614, 0.133189, -0.883237,
		0.800407, -0.498988, 0.332204,
		42.617290, 33.502747, 34.832207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355274, 33.542717, 34.005100>,  <42.057003, 33.852039, 34.599663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355274, 33.542717, 34.005100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472683, 33.330135, 34.322945>,  <42.543129, 33.202587, 34.513649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472683, 33.330135, 34.322945>,  <42.355274, 33.542717, 34.005100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472683, 33.330135, 34.322945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216949, -0.846567, -0.486063,
		0.931008, -0.029718, -0.363787,
		0.293526, -0.531451, 0.794608,
		42.560741, 33.170700, 34.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900429, 33.007652, 33.676685>,  <42.355274, 33.542717, 34.005100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900429, 33.007652, 33.676685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769089, 32.887844, 34.035011>,  <42.690285, 32.815960, 34.250008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769089, 32.887844, 34.035011>,  <42.900429, 33.007652, 33.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769089, 32.887844, 34.035011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054425, -0.940818, -0.334515,
		0.942988, -0.158591, 0.292614,
		-0.328347, -0.299518, 0.895811,
		42.670586, 32.797989, 34.303753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273842, 32.455280, 33.778790>,  <42.900429, 33.007652, 33.676685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273842, 32.455280, 33.778790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949337, 32.424320, 34.010601>,  <42.754635, 32.405746, 34.149689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949337, 32.424320, 34.010601>,  <43.273842, 32.455280, 33.778790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949337, 32.424320, 34.010601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079008, -0.967596, -0.239825,
		0.579314, -0.240350, 0.778863,
		-0.811267, -0.077398, 0.579531,
		42.705956, 32.401100, 34.184460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444237, 31.820751, 34.078129>,  <43.273842, 32.455280, 33.778790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444237, 31.820751, 34.078129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066425, 31.888439, 34.190723>,  <42.839741, 31.929052, 34.258282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066425, 31.888439, 34.190723>,  <43.444237, 31.820751, 34.078129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066425, 31.888439, 34.190723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131735, -0.980283, 0.147282,
		0.300862, 0.102029, 0.948194,
		-0.944525, 0.169222, 0.281489,
		42.783070, 31.939205, 34.275169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210011, 31.428486, 34.808865>,  <43.444237, 31.820751, 34.078129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210011, 31.428486, 34.808865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884354, 31.530996, 34.600441>,  <42.688961, 31.592503, 34.475388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884354, 31.530996, 34.600441>,  <43.210011, 31.428486, 34.808865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884354, 31.530996, 34.600441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356602, -0.928852, 0.100338,
		-0.458270, 0.267499, 0.847604,
		-0.814140, 0.256276, -0.521056,
		42.640110, 31.607880, 34.444122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699184, 31.092785, 35.221352>,  <43.210011, 31.428486, 34.808865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699184, 31.092785, 35.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546928, 31.162497, 34.858089>,  <42.455574, 31.204323, 34.640133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546928, 31.162497, 34.858089>,  <42.699184, 31.092785, 35.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546928, 31.162497, 34.858089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275662, -0.958814, -0.068460,
		-0.882680, 0.224284, 0.413005,
		-0.380640, 0.174278, -0.908152,
		42.432735, 31.214781, 34.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956142, 30.881178, 35.301552>,  <42.699184, 31.092785, 35.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956142, 30.881178, 35.301552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 30.909828, 34.909512>,  <42.074631, 30.927017, 34.674286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 30.909828, 34.909512>,  <41.956142, 30.881178, 35.301552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030197, 30.909828, 34.909512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547513, -0.820689, -0.163397,
		-0.816060, 0.566868, -0.112723,
		0.185135, 0.071625, -0.980099,
		42.085739, 30.931316, 34.615482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298672, 30.800077, 34.844299>,  <41.956142, 30.881178, 35.301552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298672, 30.800077, 34.844299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605122, 30.712015, 34.602776>,  <41.788990, 30.659178, 34.457863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605122, 30.712015, 34.602776>,  <41.298672, 30.800077, 34.844299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605122, 30.712015, 34.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499344, -0.795369, -0.343574,
		-0.404612, 0.564729, -0.719285,
		0.766123, -0.220157, -0.603810,
		41.834957, 30.645967, 34.421631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953926, 30.653681, 34.261459>,  <41.298672, 30.800077, 34.844299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953926, 30.653681, 34.261459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317688, 30.487507, 34.253498>,  <41.535946, 30.387802, 34.248722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317688, 30.487507, 34.253498>,  <40.953926, 30.653681, 34.261459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317688, 30.487507, 34.253498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399055, -0.858057, -0.323254,
		0.117210, 0.301913, -0.946103,
		0.909405, -0.415436, -0.019907,
		41.590508, 30.362877, 34.247524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039619, 30.334000, 33.640900>,  <40.953926, 30.653681, 34.261459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039619, 30.334000, 33.640900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305199, 30.147699, 33.874908>,  <41.464546, 30.035919, 34.015312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305199, 30.147699, 33.874908>,  <41.039619, 30.334000, 33.640900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305199, 30.147699, 33.874908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393460, -0.882880, -0.256345,
		0.635896, -0.059983, -0.769440,
		0.663947, -0.465753, 0.585021,
		41.504383, 30.007973, 34.050415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207138, 29.764805, 33.221569>,  <41.039619, 30.334000, 33.640900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207138, 29.764805, 33.221569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317101, 29.658663, 33.591221>,  <41.383080, 29.594978, 33.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317101, 29.658663, 33.591221>,  <41.207138, 29.764805, 33.221569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317101, 29.658663, 33.591221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367881, -0.917051, -0.153886,
		0.888307, -0.297664, -0.349725,
		0.274909, -0.265355, 0.924127,
		41.399574, 29.579056, 33.868458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701305, 29.050035, 33.190083>,  <41.207138, 29.764805, 33.221569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701305, 29.050035, 33.190083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529278, 29.087296, 33.549274>,  <41.426064, 29.109652, 33.764790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529278, 29.087296, 33.549274>,  <41.701305, 29.050035, 33.190083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529278, 29.087296, 33.549274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375414, -0.923039, -0.084045,
		0.821041, -0.373258, 0.431938,
		-0.430066, 0.093151, 0.897979,
		41.400257, 29.115240, 33.818668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875896, 28.453571, 33.495480>,  <41.701305, 29.050035, 33.190083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875896, 28.453571, 33.495480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546921, 28.570700, 33.690563>,  <41.349537, 28.640976, 33.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546921, 28.570700, 33.690563>,  <41.875896, 28.453571, 33.495480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546921, 28.570700, 33.690563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307680, -0.950090, 0.051586,
		0.478470, -0.107631, 0.871482,
		-0.822435, 0.292821, 0.487706,
		41.300190, 28.658546, 33.836876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807102, 27.993431, 33.979080>,  <41.875896, 28.453571, 33.495480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807102, 27.993431, 33.979080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437359, 28.143370, 33.950665>,  <41.215511, 28.233334, 33.933617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437359, 28.143370, 33.950665>,  <41.807102, 27.993431, 33.979080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437359, 28.143370, 33.950665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376986, -0.926023, 0.019043,
		-0.058643, 0.044382, 0.997292,
		-0.924361, 0.374848, -0.071036,
		41.160049, 28.255825, 33.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409180, 27.600977, 34.515526>,  <41.807102, 27.993431, 33.979080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409180, 27.600977, 34.515526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139256, 27.743513, 34.257023>,  <40.977303, 27.829035, 34.101921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139256, 27.743513, 34.257023>,  <41.409180, 27.600977, 34.515526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139256, 27.743513, 34.257023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487602, -0.872618, 0.027990,
		-0.553965, 0.334006, 0.762602,
		-0.674809, 0.356341, -0.646262,
		40.936813, 27.850416, 34.063145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799442, 27.185694, 34.631691>,  <41.409180, 27.600977, 34.515526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799442, 27.185694, 34.631691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697365, 27.366888, 34.290005>,  <40.636120, 27.475605, 34.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697365, 27.366888, 34.290005>,  <40.799442, 27.185694, 34.631691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697365, 27.366888, 34.290005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600913, -0.766429, -0.226914,
		-0.757482, 0.455399, 0.467795,
		-0.255195, 0.452987, -0.854212,
		40.620808, 27.502785, 34.033741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089054, 27.067085, 34.602875>,  <40.799442, 27.185694, 34.631691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089054, 27.067085, 34.602875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228634, 27.144844, 34.236172>,  <40.312382, 27.191500, 34.016151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228634, 27.144844, 34.236172>,  <40.089054, 27.067085, 34.602875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228634, 27.144844, 34.236172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406473, -0.850044, -0.334968,
		-0.844402, 0.489524, -0.217604,
		0.348948, 0.194398, -0.916758,
		40.333317, 27.203163, 33.961143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560741, 26.871508, 34.217953>,  <40.089054, 27.067085, 34.602875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560741, 26.871508, 34.217953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836750, 26.871511, 33.928440>,  <40.002357, 26.871513, 33.754730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836750, 26.871511, 33.928440>,  <39.560741, 26.871508, 34.217953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836750, 26.871511, 33.928440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536132, -0.671791, -0.511135,
		-0.486238, 0.740740, -0.463548,
		0.690026, 0.000011, -0.723785,
		40.043758, 26.871515, 33.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239517, 27.080719, 33.474514>,  <39.560741, 26.871508, 34.217953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239517, 27.080719, 33.474514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572521, 26.859968, 33.455109>,  <39.772324, 26.727518, 33.443466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572521, 26.859968, 33.455109>,  <39.239517, 27.080719, 33.474514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572521, 26.859968, 33.455109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482328, -0.678935, -0.553541,
		0.272549, 0.484230, -0.831407,
		0.832512, -0.551878, -0.048514,
		39.822273, 26.694405, 33.440556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204880, 26.770844, 32.757992>,  <39.239517, 27.080719, 33.474514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204880, 26.770844, 32.757992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459988, 26.549540, 32.972340>,  <39.613052, 26.416758, 33.100948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459988, 26.549540, 32.972340>,  <39.204880, 26.770844, 32.757992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459988, 26.549540, 32.972340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516088, -0.823409, -0.235903,
		0.571752, -0.126101, -0.810677,
		0.637771, -0.553259, 0.535866,
		39.651318, 26.383562, 33.133099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315235, 26.102646, 32.431034>,  <39.204880, 26.770844, 32.757992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315235, 26.102646, 32.431034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421879, 26.009178, 32.805054>,  <39.485867, 25.953098, 33.029465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421879, 26.009178, 32.805054>,  <39.315235, 26.102646, 32.431034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421879, 26.009178, 32.805054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600183, -0.799350, -0.028629,
		0.754123, -0.553569, -0.353357,
		0.266608, -0.233669, 0.935051,
		39.501862, 25.939077, 33.085567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518482, 25.439297, 32.303608>,  <39.315235, 26.102646, 32.431034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518482, 25.439297, 32.303608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724838, 25.127377, 32.161755>,  <39.848652, 24.940224, 32.076641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724838, 25.127377, 32.161755>,  <39.518482, 25.439297, 32.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724838, 25.127377, 32.161755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522277, -0.041830, 0.851750,
		-0.679030, -0.624627, 0.385692,
		0.515892, -0.779802, -0.354632,
		39.879604, 24.893436, 32.055367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027683, 24.912687, 32.678207>,  <39.518482, 25.439297, 32.303608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027683, 24.912687, 32.678207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366501, 25.077269, 32.812805>,  <40.569790, 25.176018, 32.893562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366501, 25.077269, 32.812805>,  <40.027683, 24.912687, 32.678207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366501, 25.077269, 32.812805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446073, -0.206026, -0.870960,
		-0.289035, 0.887839, -0.358051,
		0.847041, 0.411455, 0.336492,
		40.620613, 25.200705, 32.913754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241856, 25.570110, 32.295612>,  <40.027683, 24.912687, 32.678207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241856, 25.570110, 32.295612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552811, 25.390276, 32.471584>,  <40.739384, 25.282375, 32.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552811, 25.390276, 32.471584>,  <40.241856, 25.570110, 32.295612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552811, 25.390276, 32.471584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480803, -0.026257, -0.876435,
		0.405586, 0.892850, 0.195751,
		0.777386, -0.449587, 0.439935,
		40.786026, 25.255400, 32.603565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872086, 25.879093, 32.009853>,  <40.241856, 25.570110, 32.295612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872086, 25.879093, 32.009853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980610, 25.534960, 32.182465>,  <41.045723, 25.328480, 32.286034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980610, 25.534960, 32.182465>,  <40.872086, 25.879093, 32.009853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980610, 25.534960, 32.182465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576730, -0.213631, -0.788508,
		0.770567, 0.462808, 0.438219,
		0.271311, -0.860332, 0.431532,
		41.062004, 25.276859, 32.311924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585300, 25.970465, 31.965124>,  <40.872086, 25.879093, 32.009853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585300, 25.970465, 31.965124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490002, 25.583128, 31.994942>,  <41.432823, 25.350727, 32.012833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490002, 25.583128, 31.994942>,  <41.585300, 25.970465, 31.965124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490002, 25.583128, 31.994942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708481, -0.225784, -0.668637,
		0.664299, -0.106487, 0.739843,
		-0.238246, -0.968340, 0.074544,
		41.418530, 25.292625, 32.017303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298325, 25.859867, 31.867407>,  <41.585300, 25.970465, 31.965124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298325, 25.859867, 31.867407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635624, 25.707508, 31.715696>,  <42.838005, 25.616093, 31.624670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635624, 25.707508, 31.715696>,  <42.298325, 25.859867, 31.867407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635624, 25.707508, 31.715696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414377, 0.910076, 0.007325,
		0.342379, -0.163340, 0.925255,
		0.843249, -0.380897, -0.379275,
		42.888599, 25.593239, 31.601913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910797, 25.808437, 32.398125>,  <42.298325, 25.859867, 31.867407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910797, 25.808437, 32.398125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019127, 25.878311, 32.019466>,  <43.084126, 25.920237, 31.792271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019127, 25.878311, 32.019466>,  <42.910797, 25.808437, 32.398125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019127, 25.878311, 32.019466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627211, 0.713980, 0.311191,
		0.730247, -0.678025, 0.083797,
		0.270825, 0.174687, -0.946646,
		43.100376, 25.930717, 31.735472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677059, 25.626942, 32.230957>,  <42.910797, 25.808437, 32.398125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677059, 25.626942, 32.230957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515732, 25.929182, 32.024502>,  <43.418934, 26.110527, 31.900629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515732, 25.929182, 32.024502>,  <43.677059, 25.626942, 32.230957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515732, 25.929182, 32.024502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569509, 0.648768, 0.504737,
		0.716235, -0.090375, -0.691983,
		-0.403321, 0.755601, -0.516139,
		43.394737, 26.155863, 31.869659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256134, 26.132074, 32.072659>,  <43.677059, 25.626942, 32.230957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256134, 26.132074, 32.072659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901268, 26.314192, 32.042580>,  <43.688351, 26.423462, 32.024532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901268, 26.314192, 32.042580>,  <44.256134, 26.132074, 32.072659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901268, 26.314192, 32.042580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413648, 0.856846, 0.307751,
		0.204547, 0.241920, -0.948491,
		-0.887161, 0.455291, -0.075196,
		43.635120, 26.450779, 32.020020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166283, 26.689856, 31.567701>,  <44.256134, 26.132074, 32.072659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166283, 26.689856, 31.567701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910389, 26.763489, 31.866192>,  <43.756851, 26.807669, 32.045284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910389, 26.763489, 31.866192>,  <44.166283, 26.689856, 31.567701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910389, 26.763489, 31.866192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380417, 0.919467, 0.099309,
		-0.667849, 0.347409, -0.658243,
		-0.639734, 0.184083, 0.746226,
		43.718468, 26.818714, 32.090061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996780, 27.331251, 31.442259>,  <44.166283, 26.689856, 31.567701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996780, 27.331251, 31.442259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859192, 27.273685, 31.813414>,  <43.776638, 27.239145, 32.036106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859192, 27.273685, 31.813414>,  <43.996780, 27.331251, 31.442259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859192, 27.273685, 31.813414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297857, 0.920426, 0.253175,
		-0.890486, 0.363462, -0.273734,
		-0.343972, -0.143915, 0.927886,
		43.756001, 27.230511, 32.091778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769562, 27.957773, 31.618841>,  <43.996780, 27.331251, 31.442259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769562, 27.957773, 31.618841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829052, 27.790342, 31.977209>,  <43.864746, 27.689884, 32.192230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829052, 27.790342, 31.977209>,  <43.769562, 27.957773, 31.618841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829052, 27.790342, 31.977209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256272, 0.891360, 0.373902,
		-0.955094, 0.173989, 0.239841,
		0.148729, -0.418576, 0.895921,
		43.873672, 27.664770, 32.245987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381081, 28.307474, 32.097195>,  <43.769562, 27.957773, 31.618841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381081, 28.307474, 32.097195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689816, 28.143383, 32.291508>,  <43.875057, 28.044930, 32.408096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689816, 28.143383, 32.291508>,  <43.381081, 28.307474, 32.097195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689816, 28.143383, 32.291508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139694, 0.854762, 0.499867,
		-0.620284, -0.317956, 0.717044,
		0.771838, -0.410226, 0.485779,
		43.921368, 28.020315, 32.437241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760571, 28.816643, 32.447689>,  <43.381081, 28.307474, 32.097195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760571, 28.816643, 32.447689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010612, 28.546875, 32.604866>,  <44.160637, 28.385014, 32.699173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010612, 28.546875, 32.604866>,  <43.760571, 28.816643, 32.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010612, 28.546875, 32.604866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253626, 0.651605, 0.714902,
		-0.738184, -0.347230, 0.578373,
		0.625106, -0.674419, 0.392938,
		44.198143, 28.344549, 32.722748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516479, 28.717772, 33.113983>,  <43.760571, 28.816643, 32.447689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516479, 28.717772, 33.113983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907261, 28.636847, 33.086784>,  <44.141731, 28.588291, 33.070465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907261, 28.636847, 33.086784>,  <43.516479, 28.717772, 33.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907261, 28.636847, 33.086784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190386, 0.682030, 0.706107,
		-0.096479, -0.702783, 0.704832,
		0.976957, -0.202315, -0.067999,
		44.200348, 28.576153, 33.066383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875366, 28.691864, 33.861538>,  <43.516479, 28.717772, 33.113983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875366, 28.691864, 33.861538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185570, 28.718798, 33.610443>,  <44.371693, 28.734959, 33.459785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185570, 28.718798, 33.610443>,  <43.875366, 28.691864, 33.861538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185570, 28.718798, 33.610443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444768, 0.647400, 0.618913,
		0.448070, -0.759170, 0.472117,
		0.775509, 0.067334, -0.627736,
		44.418221, 28.738998, 33.422123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488331, 28.682669, 34.253838>,  <43.875366, 28.691864, 33.861538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488331, 28.682669, 34.253838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613449, 28.839563, 33.907818>,  <44.688519, 28.933701, 33.700207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613449, 28.839563, 33.907818>,  <44.488331, 28.682669, 34.253838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613449, 28.839563, 33.907818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514877, 0.695308, 0.501447,
		0.798162, -0.602243, 0.015532,
		0.312792, 0.392239, -0.865049,
		44.707287, 28.957235, 33.648304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330723, 28.765274, 34.167183>,  <44.488331, 28.682669, 34.253838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330723, 28.765274, 34.167183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144608, 29.029787, 33.931824>,  <45.032940, 29.188496, 33.790607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144608, 29.029787, 33.931824>,  <45.330723, 28.765274, 34.167183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144608, 29.029787, 33.931824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425030, 0.750001, 0.506802,
		0.776440, -0.014279, -0.630030,
		-0.465286, 0.661283, -0.588399,
		45.005020, 29.228172, 33.755302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815193, 29.238934, 34.017403>,  <45.330723, 28.765274, 34.167183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815193, 29.238934, 34.017403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484077, 29.437946, 33.913696>,  <45.285408, 29.557354, 33.851471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484077, 29.437946, 33.913696>,  <45.815193, 29.238934, 34.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484077, 29.437946, 33.913696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347648, 0.817601, 0.458987,
		0.440340, 0.289812, -0.849770,
		-0.827793, 0.497532, -0.259270,
		45.235741, 29.587206, 33.835915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999794, 29.910503, 34.179485>,  <45.815193, 29.238934, 34.017403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999794, 29.910503, 34.179485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629517, 29.958900, 34.036121>,  <45.407352, 29.987938, 33.950104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629517, 29.958900, 34.036121>,  <45.999794, 29.910503, 34.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629517, 29.958900, 34.036121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047264, 0.977038, 0.207758,
		0.375316, 0.175380, -0.910154,
		-0.925691, 0.120992, -0.358408,
		45.351810, 29.995197, 33.928600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902634, 30.511696, 33.587376>,  <45.999794, 29.910503, 34.179485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902634, 30.511696, 33.587376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579842, 30.486826, 33.822292>,  <45.386166, 30.471905, 33.963242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579842, 30.486826, 33.822292>,  <45.902634, 30.511696, 33.587376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579842, 30.486826, 33.822292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059526, 0.980815, 0.185631,
		-0.587565, 0.184760, -0.787801,
		-0.806984, -0.062175, 0.587291,
		45.337746, 30.468174, 33.998478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397007, 31.084312, 33.433331>,  <45.902634, 30.511696, 33.587376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397007, 31.084312, 33.433331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294186, 30.973141, 33.803558>,  <45.232491, 30.906437, 34.025696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294186, 30.973141, 33.803558>,  <45.397007, 31.084312, 33.433331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294186, 30.973141, 33.803558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168550, 0.955966, 0.240249,
		-0.951584, -0.094247, -0.292583,
		-0.257057, -0.277932, 0.925568,
		45.217068, 30.889761, 34.081230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851898, 31.577635, 33.521076>,  <45.397007, 31.084312, 33.433331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851898, 31.577635, 33.521076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973286, 31.457066, 33.882641>,  <45.046120, 31.384724, 34.099579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973286, 31.457066, 33.882641>,  <44.851898, 31.577635, 33.521076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973286, 31.457066, 33.882641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231063, 0.897050, 0.376711,
		-0.924399, -0.323181, 0.202583,
		0.303473, -0.301422, 0.903908,
		45.064327, 31.366638, 34.153812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381313, 31.930346, 34.111469>,  <44.851898, 31.577635, 33.521076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381313, 31.930346, 34.111469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701530, 31.778959, 34.297325>,  <44.893661, 31.688128, 34.408836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701530, 31.778959, 34.297325>,  <44.381313, 31.930346, 34.111469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701530, 31.778959, 34.297325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098180, 0.847692, 0.521324,
		-0.591172, -0.371727, 0.715775,
		0.800547, -0.378467, 0.464636,
		44.941696, 31.665419, 34.436714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250973, 32.008808, 34.910233>,  <44.381313, 31.930346, 34.111469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250973, 32.008808, 34.910233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642696, 31.981897, 34.833897>,  <44.877731, 31.965752, 34.788097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642696, 31.981897, 34.833897>,  <44.250973, 32.008808, 34.910233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642696, 31.981897, 34.833897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144083, 0.894024, 0.424217,
		0.142073, -0.442938, 0.885224,
		0.979313, -0.067276, -0.190837,
		44.936489, 31.961714, 34.776646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488602, 32.430851, 35.405396>,  <44.250973, 32.008808, 34.910233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488602, 32.430851, 35.405396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812969, 32.370094, 35.179352>,  <45.007587, 32.333641, 35.043728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812969, 32.370094, 35.179352>,  <44.488602, 32.430851, 35.405396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812969, 32.370094, 35.179352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329810, 0.916355, 0.226977,
		0.483363, -0.370437, 0.793182,
		0.810917, -0.151888, -0.565106,
		45.056244, 32.324528, 35.009819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114628, 32.701294, 35.888908>,  <44.488602, 32.430851, 35.405396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114628, 32.701294, 35.888908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201820, 32.691120, 35.498661>,  <45.254135, 32.685017, 35.264511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201820, 32.691120, 35.498661>,  <45.114628, 32.701294, 35.888908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201820, 32.691120, 35.498661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334051, 0.941223, 0.050097,
		0.917004, -0.336827, 0.213661,
		0.217977, -0.025435, -0.975622,
		45.267212, 32.683491, 35.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749622, 32.933662, 35.723450>,  <45.114628, 32.701294, 35.888908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749622, 32.933662, 35.723450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556667, 33.003288, 35.380054>,  <45.440895, 33.045063, 35.174019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556667, 33.003288, 35.380054>,  <45.749622, 32.933662, 35.723450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556667, 33.003288, 35.380054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026856, 0.982535, 0.184130,
		0.875546, 0.065767, -0.478638,
		-0.482388, 0.174069, -0.858488,
		45.411949, 33.055508, 35.122509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157814, 33.440491, 35.387501>,  <45.749622, 32.933662, 35.723450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157814, 33.440491, 35.387501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769875, 33.447464, 35.290276>,  <45.537109, 33.451649, 35.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769875, 33.447464, 35.290276>,  <46.157814, 33.440491, 35.387501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769875, 33.447464, 35.290276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033061, 0.978803, 0.202117,
		0.241436, 0.204060, -0.948719,
		-0.969853, 0.017433, -0.243065,
		45.478920, 33.452694, 35.217358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054955, 33.910172, 34.831005>,  <46.157814, 33.440491, 35.387501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054955, 33.910172, 34.831005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723675, 33.875290, 35.052448>,  <45.524906, 33.854362, 35.185314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723675, 33.875290, 35.052448>,  <46.054955, 33.910172, 34.831005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723675, 33.875290, 35.052448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075671, 0.996174, 0.043714,
		-0.555299, -0.005688, -0.831631,
		-0.828201, -0.087205, 0.553605,
		45.475216, 33.849129, 35.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669628, 34.049763, 34.326027>,  <46.054955, 33.910172, 34.831005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669628, 34.049763, 34.326027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562752, 34.292778, 34.625229>,  <46.498627, 34.438587, 34.804749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562752, 34.292778, 34.625229>,  <46.669628, 34.049763, 34.326027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562752, 34.292778, 34.625229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960791, 0.227643, 0.158300,
		-0.074104, 0.760969, -0.644542,
		-0.267187, 0.607540, 0.748002,
		46.482597, 34.475040, 34.849628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036064, 34.566074, 34.205345>,  <46.669628, 34.049763, 34.326027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036064, 34.566074, 34.205345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985638, 34.606411, 34.600098>,  <46.955383, 34.630611, 34.836948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985638, 34.606411, 34.600098>,  <47.036064, 34.566074, 34.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985638, 34.606411, 34.600098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924636, 0.372340, 0.080070,
		-0.359382, 0.922602, -0.140180,
		-0.126067, 0.100839, 0.986883,
		46.947819, 34.636662, 34.896164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661270, 34.753864, 34.355228>,  <47.036064, 34.566074, 34.205345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661270, 34.753864, 34.355228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.471107, 34.761841, 34.707043>,  <47.357010, 34.766628, 34.918133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.471107, 34.761841, 34.707043>,  <47.661270, 34.753864, 34.355228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.471107, 34.761841, 34.707043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826024, 0.354183, 0.438451,
		-0.302774, 0.934964, -0.184854,
		-0.475407, 0.019942, 0.879540,
		47.328484, 34.767822, 34.970905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.601440, 35.440868, 34.792141>,  <47.661270, 34.753864, 34.355228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.601440, 35.440868, 34.792141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651413, 35.097294, 34.990784>,  <47.681396, 34.891148, 35.109970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651413, 35.097294, 34.990784>,  <47.601440, 35.440868, 34.792141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.651413, 35.097294, 34.990784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892968, 0.315496, 0.321046,
		-0.432436, 0.403349, 0.806417,
		0.124928, -0.858936, 0.496610,
		47.688892, 34.839615, 35.139767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.427303, 36.074963, 45.563988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033985, 36.111904, 45.501255>,  <33.797993, 36.134068, 45.463615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033985, 36.111904, 45.501255>,  <34.427303, 36.074963, 45.563988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033985, 36.111904, 45.501255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170193, 0.161235, -0.972130,
		-0.064491, -0.982586, -0.174260,
		-0.983298, 0.092352, -0.156831,
		33.738995, 36.139610, 45.454205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325672, 35.787548, 44.995052>,  <34.427303, 36.074963, 45.563988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325672, 35.787548, 44.995052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988853, 36.003113, 45.004211>,  <33.786762, 36.132450, 45.009708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988853, 36.003113, 45.004211>,  <34.325672, 35.787548, 44.995052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988853, 36.003113, 45.004211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100195, 0.197987, -0.975071,
		-0.530012, -0.818764, -0.220711,
		-0.842051, 0.538913, 0.022899,
		33.736237, 36.164787, 45.011082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952404, 35.449417, 44.583477>,  <34.325672, 35.787548, 44.995052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952404, 35.449417, 44.583477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800121, 35.818699, 44.604500>,  <33.708752, 36.040268, 44.617115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800121, 35.818699, 44.604500>,  <33.952404, 35.449417, 44.583477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800121, 35.818699, 44.604500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067921, 0.028765, -0.997276,
		-0.922198, -0.383239, 0.051753,
		-0.380707, 0.923201, 0.052557,
		33.685909, 36.095657, 44.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405674, 35.462494, 44.154106>,  <33.952404, 35.449417, 44.583477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405674, 35.462494, 44.154106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 35.853485, 44.207687>,  <33.510033, 36.088081, 44.239838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 35.853485, 44.207687>,  <33.405674, 35.462494, 44.154106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470898, 35.853485, 44.207687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198691, 0.165525, -0.965983,
		-0.966402, 0.130901, 0.221208,
		0.163064, 0.977480, 0.133955,
		33.519817, 36.146729, 44.247875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903763, 35.799309, 43.730007>,  <33.405674, 35.462494, 44.154106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903763, 35.799309, 43.730007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176624, 36.089993, 43.762405>,  <33.340340, 36.264404, 43.781845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176624, 36.089993, 43.762405>,  <32.903763, 35.799309, 43.730007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176624, 36.089993, 43.762405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191031, 0.284042, -0.939589,
		-0.705813, 0.625473, 0.332584,
		0.682155, 0.726708, 0.080995,
		33.381271, 36.308006, 43.786705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586586, 36.480698, 43.412720>,  <32.903763, 35.799309, 43.730007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586586, 36.480698, 43.412720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982948, 36.533775, 43.403717>,  <33.220764, 36.565620, 43.398315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982948, 36.533775, 43.403717>,  <32.586586, 36.480698, 43.412720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982948, 36.533775, 43.403717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048378, 0.195136, -0.979582,
		-0.125594, 0.971758, 0.199780,
		0.990901, 0.132695, -0.022504,
		33.280220, 36.573586, 43.396965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680523, 37.119350, 43.254089>,  <32.586586, 36.480698, 43.412720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680523, 37.119350, 43.254089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.020073, 36.935127, 43.150318>,  <33.223801, 36.824593, 43.088055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.020073, 36.935127, 43.150318>,  <32.680523, 37.119350, 43.254089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020073, 36.935127, 43.150318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119577, 0.310761, -0.942936,
		0.514895, 0.831455, 0.208725,
		0.848873, -0.460554, -0.259432,
		33.274734, 36.796963, 43.072487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970654, 37.511822, 42.785469>,  <32.680523, 37.119350, 43.254089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970654, 37.511822, 42.785469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180798, 37.176823, 42.725342>,  <33.306885, 36.975822, 42.689266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180798, 37.176823, 42.725342>,  <32.970654, 37.511822, 42.785469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180798, 37.176823, 42.725342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171989, 0.277538, -0.945194,
		0.833319, 0.470711, 0.289847,
		0.525357, -0.837499, -0.150321,
		33.338406, 36.925571, 42.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534542, 37.760841, 42.352531>,  <32.970654, 37.511822, 42.785469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534542, 37.760841, 42.352531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540565, 37.369129, 42.271755>,  <33.544178, 37.134102, 42.223289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540565, 37.369129, 42.271755>,  <33.534542, 37.760841, 42.352531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540565, 37.369129, 42.271755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175483, 0.201415, -0.963659,
		0.984367, -0.020926, 0.174880,
		0.015058, -0.979283, -0.201938,
		33.545082, 37.075344, 42.211174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099503, 37.585449, 41.819847>,  <33.534542, 37.760841, 42.352531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099503, 37.585449, 41.819847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846134, 37.278618, 41.779110>,  <33.694115, 37.094521, 41.754669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846134, 37.278618, 41.779110>,  <34.099503, 37.585449, 41.819847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846134, 37.278618, 41.779110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148581, 0.008593, -0.988863,
		0.759412, -0.641494, 0.108530,
		-0.633417, -0.767080, -0.101840,
		33.656109, 37.048492, 41.748558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442047, 37.123161, 41.469242>,  <34.099503, 37.585449, 41.819847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442047, 37.123161, 41.469242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060028, 37.042065, 41.382725>,  <33.830818, 36.993404, 41.330814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060028, 37.042065, 41.382725>,  <34.442047, 37.123161, 41.469242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060028, 37.042065, 41.382725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248521, -0.149765, -0.956978,
		0.161631, -0.967711, 0.193419,
		-0.955046, -0.202746, -0.216290,
		33.773514, 36.981239, 41.317837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487270, 36.541073, 40.976612>,  <34.442047, 37.123161, 41.469242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487270, 36.541073, 40.976612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119225, 36.690563, 40.929745>,  <33.898399, 36.780258, 40.901627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119225, 36.690563, 40.929745>,  <34.487270, 36.541073, 40.976612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119225, 36.690563, 40.929745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059386, -0.162571, -0.984908,
		-0.387129, -0.913183, 0.127389,
		-0.920111, 0.373722, -0.117166,
		33.843193, 36.802681, 40.894596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209312, 36.039608, 40.597496>,  <34.487270, 36.541073, 40.976612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209312, 36.039608, 40.597496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009727, 36.382233, 40.544830>,  <33.889977, 36.587807, 40.513229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009727, 36.382233, 40.544830>,  <34.209312, 36.039608, 40.597496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009727, 36.382233, 40.544830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150021, -0.064264, -0.986592,
		-0.853539, -0.512027, -0.096437,
		-0.498964, 0.856562, -0.131667,
		33.860039, 36.639202, 40.505329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841774, 35.879711, 39.994366>,  <34.209312, 36.039608, 40.597496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841774, 35.879711, 39.994366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862164, 36.276211, 40.043076>,  <33.874397, 36.514111, 40.072300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862164, 36.276211, 40.043076>,  <33.841774, 35.879711, 39.994366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862164, 36.276211, 40.043076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273026, 0.103457, -0.956427,
		-0.960655, 0.082004, -0.265363,
		0.050978, 0.991248, 0.121775,
		33.877457, 36.573586, 40.079609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353531, 36.162876, 39.619041>,  <33.841774, 35.879711, 39.994366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353531, 36.162876, 39.619041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595158, 36.478012, 39.667053>,  <33.740135, 36.667095, 39.695858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595158, 36.478012, 39.667053>,  <33.353531, 36.162876, 39.619041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595158, 36.478012, 39.667053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096062, 0.077526, -0.992352,
		-0.791124, 0.610976, -0.028851,
		0.604066, 0.787844, 0.120025,
		33.776379, 36.714367, 39.703060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196445, 36.615826, 39.052490>,  <33.353531, 36.162876, 39.619041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196445, 36.615826, 39.052490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568626, 36.697540, 39.174160>,  <33.791935, 36.746571, 39.247162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568626, 36.697540, 39.174160>,  <33.196445, 36.615826, 39.052490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568626, 36.697540, 39.174160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311992, -0.006427, -0.950063,
		-0.192129, 0.978890, -0.069716,
		0.930456, 0.204286, 0.304171,
		33.847763, 36.758827, 39.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401836, 37.181404, 38.624157>,  <33.196445, 36.615826, 39.052490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401836, 37.181404, 38.624157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727688, 37.006039, 38.776039>,  <33.923199, 36.900818, 38.867168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727688, 37.006039, 38.776039>,  <33.401836, 37.181404, 38.624157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727688, 37.006039, 38.776039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417322, -0.011568, -0.908685,
		0.402775, 0.898698, 0.173537,
		0.814626, -0.438416, 0.379705,
		33.972076, 36.874516, 38.889950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979465, 37.519760, 38.275757>,  <33.401836, 37.181404, 38.624157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979465, 37.519760, 38.275757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129417, 37.173580, 38.408703>,  <34.219391, 36.965874, 38.488468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129417, 37.173580, 38.408703>,  <33.979465, 37.519760, 38.275757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129417, 37.173580, 38.408703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515158, -0.103592, -0.850812,
		0.770762, 0.490175, 0.407007,
		0.374884, -0.865446, 0.332362,
		34.241882, 36.913948, 38.508411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777836, 37.544682, 38.164268>,  <33.979465, 37.519760, 38.275757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777836, 37.544682, 38.164268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667946, 37.161098, 38.192348>,  <34.602013, 36.930950, 38.209198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667946, 37.161098, 38.192348>,  <34.777836, 37.544682, 38.164268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667946, 37.161098, 38.192348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567822, -0.220729, -0.793005,
		0.775952, -0.177999, 0.605157,
		-0.274729, -0.958955, 0.070204,
		34.585526, 36.873413, 38.213409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376125, 37.126060, 37.822033>,  <34.777836, 37.544682, 38.164268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376125, 37.126060, 37.822033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083134, 36.854252, 37.838688>,  <34.907341, 36.691166, 37.848679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083134, 36.854252, 37.838688>,  <35.376125, 37.126060, 37.822033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083134, 36.854252, 37.838688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344958, -0.423172, -0.837812,
		0.586928, -0.599314, 0.544368,
		-0.732474, -0.679520, 0.041633,
		34.863392, 36.650394, 37.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687172, 36.550461, 37.671349>,  <35.376125, 37.126060, 37.822033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687172, 36.550461, 37.671349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303577, 36.467701, 37.593842>,  <35.073421, 36.418045, 37.547337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303577, 36.467701, 37.593842>,  <35.687172, 36.550461, 37.671349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303577, 36.467701, 37.593842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267044, -0.430105, -0.862379,
		0.095087, -0.878750, 0.467715,
		-0.958982, -0.206901, -0.193768,
		35.015884, 36.405632, 37.535709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627560, 35.873791, 37.472198>,  <35.687172, 36.550461, 37.671349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627560, 35.873791, 37.472198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307755, 36.049809, 37.308670>,  <35.115871, 36.155418, 37.210552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307755, 36.049809, 37.308670>,  <35.627560, 35.873791, 37.472198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307755, 36.049809, 37.308670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212337, -0.429614, -0.877693,
		-0.561863, -0.788535, 0.250044,
		-0.799514, 0.440050, -0.408820,
		35.067902, 36.181824, 37.186024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610989, 35.147167, 37.801910>,  <35.627560, 35.873791, 37.472198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610989, 35.147167, 37.801910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569557, 34.754494, 37.737957>,  <35.544697, 34.518890, 37.699585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569557, 34.754494, 37.737957>,  <35.610989, 35.147167, 37.801910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569557, 34.754494, 37.737957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559242, 0.075447, -0.825564,
		0.822508, -0.174927, 0.541185,
		-0.103583, -0.981686, -0.159883,
		35.538483, 34.459988, 37.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173489, 35.031517, 37.405807>,  <35.610989, 35.147167, 37.801910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173489, 35.031517, 37.405807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554482, 34.914330, 37.372471>,  <36.783077, 34.844017, 37.352470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554482, 34.914330, 37.372471>,  <36.173489, 35.031517, 37.405807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554482, 34.914330, 37.372471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030029, -0.181958, 0.982848,
		-0.303110, -0.938648, -0.164514,
		0.952482, -0.292971, -0.083340,
		36.840225, 34.826439, 37.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191799, 34.429279, 37.784283>,  <36.173489, 35.031517, 37.405807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191799, 34.429279, 37.784283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559990, 34.583042, 37.756123>,  <36.780903, 34.675301, 37.739227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559990, 34.583042, 37.756123>,  <36.191799, 34.429279, 37.784283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559990, 34.583042, 37.756123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098255, -0.053283, 0.993734,
		0.378249, -0.921624, -0.086816,
		0.920474, 0.384409, -0.070400,
		36.836132, 34.698364, 37.735004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753170, 33.940155, 38.053337>,  <36.191799, 34.429279, 37.784283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753170, 33.940155, 38.053337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880268, 34.318554, 38.079037>,  <36.956528, 34.545593, 38.094456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880268, 34.318554, 38.079037>,  <36.753170, 33.940155, 38.053337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880268, 34.318554, 38.079037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119835, -0.107280, 0.986981,
		0.940572, -0.305914, -0.147451,
		0.317750, 0.945996, 0.064246,
		36.975594, 34.602352, 38.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275970, 33.818977, 38.559433>,  <36.753170, 33.940155, 38.053337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275970, 33.818977, 38.559433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244587, 34.216938, 38.534065>,  <37.225758, 34.455715, 38.518845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244587, 34.216938, 38.534065>,  <37.275970, 33.818977, 38.559433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244587, 34.216938, 38.534065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160573, 0.075397, 0.984140,
		0.983901, 0.067029, -0.165669,
		-0.078457, 0.994898, -0.063420,
		37.221050, 34.515408, 38.515038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892490, 34.220737, 38.860153>,  <37.275970, 33.818977, 38.559433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892490, 34.220737, 38.860153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558968, 34.439247, 38.892017>,  <37.358852, 34.570354, 38.911137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558968, 34.439247, 38.892017>,  <37.892490, 34.220737, 38.860153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558968, 34.439247, 38.892017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164703, 0.108430, 0.980365,
		0.526912, 0.830557, -0.180383,
		-0.833808, 0.546276, 0.079662,
		37.308826, 34.603130, 38.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054630, 34.708912, 39.398167>,  <37.892490, 34.220737, 38.860153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054630, 34.708912, 39.398167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658649, 34.759815, 39.373508>,  <37.421062, 34.790356, 39.358715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658649, 34.759815, 39.373508>,  <38.054630, 34.708912, 39.398167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658649, 34.759815, 39.373508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017221, 0.324182, 0.945838,
		0.140349, 0.937396, -0.318734,
		-0.989952, 0.127258, -0.061641,
		37.361664, 34.797993, 39.355015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874084, 35.365501, 39.734173>,  <38.054630, 34.708912, 39.398167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874084, 35.365501, 39.734173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535019, 35.153389, 39.740768>,  <37.331581, 35.026119, 39.744724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535019, 35.153389, 39.740768>,  <37.874084, 35.365501, 39.734173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535019, 35.153389, 39.740768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200035, 0.348228, 0.915818,
		-0.491384, 0.773005, -0.401254,
		-0.847660, -0.530284, 0.016485,
		37.280720, 34.994305, 39.745712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320808, 35.724403, 40.164028>,  <37.874084, 35.365501, 39.734173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320808, 35.724403, 40.164028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152184, 35.362068, 40.147346>,  <37.051010, 35.144665, 40.137337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152184, 35.362068, 40.147346>,  <37.320808, 35.724403, 40.164028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152184, 35.362068, 40.147346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420312, 0.154440, 0.894140,
		-0.803507, 0.394465, -0.445841,
		-0.421563, -0.905840, -0.041705,
		37.025715, 35.090317, 40.134834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625401, 35.818146, 40.465946>,  <37.320808, 35.724403, 40.164028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625401, 35.818146, 40.465946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695408, 35.424343, 40.461685>,  <36.737411, 35.188061, 40.459129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695408, 35.424343, 40.461685>,  <36.625401, 35.818146, 40.465946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695408, 35.424343, 40.461685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374824, -0.076628, 0.923924,
		-0.910426, -0.157711, -0.382428,
		0.175017, -0.984508, -0.010650,
		36.747913, 35.128990, 40.458488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922295, 35.382515, 40.674248>,  <36.625401, 35.818146, 40.465946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922295, 35.382515, 40.674248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237171, 35.157143, 40.774551>,  <36.426098, 35.021919, 40.834732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237171, 35.157143, 40.774551>,  <35.922295, 35.382515, 40.674248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237171, 35.157143, 40.774551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385212, -0.131696, 0.913383,
		-0.481602, -0.815601, -0.320709,
		0.787192, -0.563428, 0.250754,
		36.473328, 34.988113, 40.849777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642372, 34.770248, 40.964741>,  <35.922295, 35.382515, 40.674248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642372, 34.770248, 40.964741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017796, 34.765301, 41.102703>,  <36.243050, 34.762333, 41.185478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017796, 34.765301, 41.102703>,  <35.642372, 34.770248, 40.964741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017796, 34.765301, 41.102703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332237, -0.302929, 0.893226,
		0.093435, -0.952933, -0.288425,
		0.938557, -0.012367, 0.344904,
		36.299362, 34.761589, 41.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674660, 34.235905, 41.468746>,  <35.642372, 34.770248, 40.964741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674660, 34.235905, 41.468746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988503, 34.468380, 41.555103>,  <36.176807, 34.607864, 41.606918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988503, 34.468380, 41.555103>,  <35.674660, 34.235905, 41.468746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988503, 34.468380, 41.555103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106415, -0.216814, 0.970396,
		0.610790, -0.784355, -0.108267,
		0.784609, 0.581187, 0.215895,
		36.223885, 34.642735, 41.619873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278824, 33.847027, 41.860229>,  <35.674660, 34.235905, 41.468746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278824, 33.847027, 41.860229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252502, 34.235184, 41.953186>,  <36.236710, 34.468079, 42.008961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252502, 34.235184, 41.953186>,  <36.278824, 33.847027, 41.860229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252502, 34.235184, 41.953186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074283, -0.237011, 0.968663,
		0.995064, 0.046478, 0.087680,
		-0.065803, 0.970395, 0.232388,
		36.232761, 34.526302, 42.022903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239609, 33.812061, 42.531776>,  <36.278824, 33.847027, 41.860229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239609, 33.812061, 42.531776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212429, 34.208927, 42.489849>,  <36.196121, 34.447048, 42.464691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212429, 34.208927, 42.489849>,  <36.239609, 33.812061, 42.531776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212429, 34.208927, 42.489849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073548, 0.099798, 0.992286,
		0.994975, 0.075130, 0.066191,
		-0.067945, 0.992167, -0.104822,
		36.192047, 34.506577, 42.458401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820786, 34.186619, 42.895580>,  <36.239609, 33.812061, 42.531776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820786, 34.186619, 42.895580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482178, 34.398991, 42.880013>,  <36.279015, 34.526413, 42.870670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482178, 34.398991, 42.880013>,  <36.820786, 34.186619, 42.895580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482178, 34.398991, 42.880013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031772, 0.123369, 0.991852,
		0.531406, 0.838387, -0.121303,
		-0.846521, 0.530930, -0.038922,
		36.228222, 34.558270, 42.868336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852253, 34.754799, 43.471519>,  <36.820786, 34.186619, 42.895580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852253, 34.754799, 43.471519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457298, 34.761669, 43.408569>,  <36.220325, 34.765789, 43.370800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457298, 34.761669, 43.408569>,  <36.852253, 34.754799, 43.471519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457298, 34.761669, 43.408569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155071, 0.095092, 0.983316,
		0.031852, 0.995320, -0.091229,
		-0.987390, 0.017174, -0.157374,
		36.161083, 34.766823, 43.361359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591770, 35.255817, 43.883999>,  <36.852253, 34.754799, 43.471519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591770, 35.255817, 43.883999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273472, 35.022995, 43.817070>,  <36.082493, 34.883301, 43.776913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273472, 35.022995, 43.817070>,  <36.591770, 35.255817, 43.883999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273472, 35.022995, 43.817070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314616, 0.161209, 0.935430,
		-0.517501, 0.797006, -0.311406,
		-0.795745, -0.582059, -0.167325,
		36.034748, 34.848377, 43.766872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.098598, 35.645164, 44.309536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975868, 35.274788, 44.221447>,  <35.902229, 35.052563, 44.168594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975868, 35.274788, 44.221447>,  <36.098598, 35.645164, 44.309536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975868, 35.274788, 44.221447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451783, -0.061969, 0.889973,
		-0.837707, 0.372558, -0.399310,
		-0.306822, -0.925938, -0.220227,
		35.883823, 34.997005, 44.155380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487465, 35.637676, 44.599873>,  <36.098598, 35.645164, 44.309536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487465, 35.637676, 44.599873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574425, 35.248646, 44.566803>,  <35.626602, 35.015228, 44.546959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574425, 35.248646, 44.566803>,  <35.487465, 35.637676, 44.599873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574425, 35.248646, 44.566803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499425, -0.183614, 0.846676,
		-0.838636, -0.142779, -0.525646,
		0.217404, -0.972574, -0.082678,
		35.639645, 34.956875, 44.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842175, 35.260376, 44.855923>,  <35.487465, 35.637676, 44.599873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842175, 35.260376, 44.855923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139061, 34.992344, 44.859879>,  <35.317192, 34.831524, 44.862251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139061, 34.992344, 44.859879>,  <34.842175, 35.260376, 44.855923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139061, 34.992344, 44.859879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394082, -0.424481, 0.815178,
		-0.542041, -0.608938, -0.579126,
		0.742220, -0.670083, 0.009885,
		35.361729, 34.791321, 44.862843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562756, 34.547974, 44.967308>,  <34.842175, 35.260376, 44.855923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562756, 34.547974, 44.967308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944618, 34.560978, 45.085678>,  <35.173737, 34.568783, 45.156700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944618, 34.560978, 45.085678>,  <34.562756, 34.547974, 44.967308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944618, 34.560978, 45.085678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247264, -0.466977, 0.848995,
		0.165795, -0.883671, -0.437764,
		0.954659, 0.032516, 0.295922,
		35.231014, 34.570732, 45.174454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620258, 33.972965, 45.364685>,  <34.562756, 34.547974, 44.967308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620258, 33.972965, 45.364685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948753, 34.176533, 45.467892>,  <35.145851, 34.298676, 45.529816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948753, 34.176533, 45.467892>,  <34.620258, 33.972965, 45.364685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948753, 34.176533, 45.467892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136348, -0.264058, 0.954821,
		0.554060, -0.819312, -0.147463,
		0.821235, 0.508922, 0.258016,
		35.195126, 34.329208, 45.545296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072235, 33.542942, 45.887802>,  <34.620258, 33.972965, 45.364685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072235, 33.542942, 45.887802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229641, 33.907627, 45.935013>,  <35.324085, 34.126438, 45.963341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229641, 33.907627, 45.935013>,  <35.072235, 33.542942, 45.887802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229641, 33.907627, 45.935013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005468, -0.130709, 0.991406,
		0.919303, -0.389485, -0.056421,
		0.393512, 0.911711, 0.118031,
		35.347694, 34.181141, 45.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701202, 33.452007, 46.226044>,  <35.072235, 33.542942, 45.887802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701202, 33.452007, 46.226044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573753, 33.823040, 46.304092>,  <35.497284, 34.045658, 46.350922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573753, 33.823040, 46.304092>,  <35.701202, 33.452007, 46.226044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573753, 33.823040, 46.304092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011877, -0.201926, 0.979329,
		0.947809, 0.314350, 0.053321,
		-0.318619, 0.927583, 0.195121,
		35.478168, 34.101315, 46.362629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188454, 33.783859, 46.783268>,  <35.701202, 33.452007, 46.226044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188454, 33.783859, 46.783268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854519, 34.003994, 46.788628>,  <35.654160, 34.136074, 46.791843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854519, 34.003994, 46.788628>,  <36.188454, 33.783859, 46.783268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854519, 34.003994, 46.788628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008536, -0.011398, 0.999899,
		0.550435, 0.834864, 0.004818,
		-0.834835, 0.550338, 0.013400,
		35.604069, 34.169094, 46.792648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435692, 34.343300, 47.126389>,  <36.188454, 33.783859, 46.783268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435692, 34.343300, 47.126389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037613, 34.381866, 47.133228>,  <35.798767, 34.405006, 47.137333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037613, 34.381866, 47.133228>,  <36.435692, 34.343300, 47.126389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037613, 34.381866, 47.133228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023616, 0.066886, 0.997481,
		0.095029, 0.993091, -0.068841,
		-0.995194, 0.096416, 0.017097,
		35.739056, 34.410789, 47.138359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291759, 34.835350, 47.589695>,  <36.435692, 34.343300, 47.126389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291759, 34.835350, 47.589695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.939327, 34.648022, 47.563271>,  <35.727867, 34.535625, 47.547417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.939327, 34.648022, 47.563271>,  <36.291759, 34.835350, 47.589695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939327, 34.648022, 47.563271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096119, 0.040536, 0.994544,
		-0.463089, 0.882628, -0.080730,
		-0.881085, -0.468322, -0.066065,
		35.675003, 34.507526, 47.543449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864567, 35.224770, 47.982315>,  <36.291759, 34.835350, 47.589695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864567, 35.224770, 47.982315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684311, 34.869980, 47.941914>,  <35.576157, 34.657104, 47.917671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684311, 34.869980, 47.941914>,  <35.864567, 35.224770, 47.982315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684311, 34.869980, 47.941914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164537, -0.028681, 0.985954,
		-0.877414, 0.460926, -0.133015,
		-0.450637, -0.886975, -0.101005,
		35.549118, 34.603886, 47.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208698, 35.317696, 48.206612>,  <35.864567, 35.224770, 47.982315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208698, 35.317696, 48.206612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299377, 34.931828, 48.260307>,  <35.353786, 34.700306, 48.292526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299377, 34.931828, 48.260307>,  <35.208698, 35.317696, 48.206612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299377, 34.931828, 48.260307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274007, 0.069094, 0.959242,
		-0.934627, -0.254243, -0.248663,
		0.226699, -0.964669, 0.134241,
		35.367386, 34.642426, 48.300579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672863, 34.973881, 48.712231>,  <35.208698, 35.317696, 48.206612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672863, 34.973881, 48.712231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968208, 34.705734, 48.682755>,  <35.145416, 34.544846, 48.665070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968208, 34.705734, 48.682755>,  <34.672863, 34.973881, 48.712231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968208, 34.705734, 48.682755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025494, -0.081446, 0.996352,
		-0.673926, -0.737543, -0.043046,
		0.738358, -0.670370, -0.073692,
		35.189716, 34.504623, 48.660648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490757, 34.370834, 49.173538>,  <34.672863, 34.973881, 48.712231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490757, 34.370834, 49.173538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882889, 34.329716, 49.106152>,  <35.118168, 34.305046, 49.065720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882889, 34.329716, 49.106152>,  <34.490757, 34.370834, 49.173538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882889, 34.329716, 49.106152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148056, -0.181314, 0.972216,
		-0.130481, -0.978039, -0.162529,
		0.980334, -0.102792, -0.168463,
		35.176991, 34.298878, 49.055611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643017, 33.707653, 49.399990>,  <34.490757, 34.370834, 49.173538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643017, 33.707653, 49.399990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971382, 33.935783, 49.411442>,  <35.168404, 34.072662, 49.418312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971382, 33.935783, 49.411442>,  <34.643017, 33.707653, 49.399990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971382, 33.935783, 49.411442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178428, -0.303810, 0.935875,
		0.542456, -0.763167, -0.351165,
		0.820917, 0.570329, 0.028633,
		35.217659, 34.106880, 49.420033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131382, 33.261845, 49.630409>,  <34.643017, 33.707653, 49.399990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131382, 33.261845, 49.630409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316807, 33.600391, 49.735310>,  <35.428062, 33.803520, 49.798252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316807, 33.600391, 49.735310>,  <35.131382, 33.261845, 49.630409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316807, 33.600391, 49.735310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173269, -0.376852, 0.909923,
		0.868957, -0.376366, -0.321344,
		0.463563, 0.846363, 0.262256,
		35.455875, 33.854301, 49.813988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879562, 33.046432, 49.824100>,  <35.131382, 33.261845, 49.630409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879562, 33.046432, 49.824100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805965, 33.406994, 49.980877>,  <35.761806, 33.623329, 50.074944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805965, 33.406994, 49.980877>,  <35.879562, 33.046432, 49.824100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805965, 33.406994, 49.980877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116037, -0.376046, 0.919307,
		0.976054, 0.214628, -0.035406,
		-0.183994, 0.901402, 0.391946,
		35.750767, 33.677414, 50.098461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344292, 33.090912, 50.358955>,  <35.879562, 33.046432, 49.824100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344292, 33.090912, 50.358955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080090, 33.373661, 50.460205>,  <35.921570, 33.543308, 50.520954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080090, 33.373661, 50.460205>,  <36.344292, 33.090912, 50.358955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080090, 33.373661, 50.460205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102474, -0.249103, 0.963041,
		0.743799, 0.662028, 0.092097,
		-0.660502, 0.706871, 0.253123,
		35.881939, 33.585724, 50.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584930, 33.342545, 51.052982>,  <36.344292, 33.090912, 50.358955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584930, 33.342545, 51.052982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200077, 33.446865, 51.021294>,  <35.969166, 33.509457, 51.002281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200077, 33.446865, 51.021294>,  <36.584930, 33.342545, 51.052982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200077, 33.446865, 51.021294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147221, -0.252654, 0.956291,
		0.229383, 0.931746, 0.281483,
		-0.962138, 0.260798, -0.079218,
		35.911434, 33.525105, 50.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472687, 33.626690, 51.768436>,  <36.584930, 33.342545, 51.052982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472687, 33.626690, 51.768436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114040, 33.562084, 51.603516>,  <35.898853, 33.523319, 51.504562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114040, 33.562084, 51.603516>,  <36.472687, 33.626690, 51.768436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114040, 33.562084, 51.603516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363440, -0.263497, 0.893577,
		-0.252970, 0.951042, 0.177553,
		-0.896614, -0.161518, -0.412304,
		35.845055, 33.513630, 51.479824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981995, 34.023613, 52.074966>,  <36.472687, 33.626690, 51.768436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981995, 34.023613, 52.074966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763390, 33.718594, 51.936493>,  <35.632225, 33.535583, 51.853409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763390, 33.718594, 51.936493>,  <35.981995, 34.023613, 52.074966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763390, 33.718594, 51.936493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200441, -0.282255, 0.938166,
		-0.813108, 0.582111, 0.001411,
		-0.546515, -0.762547, -0.346183,
		35.599434, 33.489830, 51.832638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418602, 34.014568, 52.521564>,  <35.981995, 34.023613, 52.074966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418602, 34.014568, 52.521564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408764, 33.654343, 52.347950>,  <35.402863, 33.438210, 52.243782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408764, 33.654343, 52.347950>,  <35.418602, 34.014568, 52.521564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408764, 33.654343, 52.347950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200025, -0.420953, 0.884753,
		-0.979482, 0.108576, -0.169783,
		-0.024593, -0.900561, -0.434034,
		35.401386, 33.384174, 52.217739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797695, 33.697784, 52.662430>,  <35.418602, 34.014568, 52.521564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797695, 33.697784, 52.662430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068478, 33.411552, 52.593525>,  <35.230946, 33.239815, 52.552181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068478, 33.411552, 52.593525>,  <34.797695, 33.697784, 52.662430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068478, 33.411552, 52.593525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189769, -0.395826, 0.898504,
		-0.711140, -0.575556, -0.403752,
		0.676955, -0.715581, -0.172265,
		35.271564, 33.196877, 52.541847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486382, 33.181583, 52.958992>,  <34.797695, 33.697784, 52.662430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486382, 33.181583, 52.958992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874058, 33.083244, 52.965126>,  <35.106663, 33.024239, 52.968807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874058, 33.083244, 52.965126>,  <34.486382, 33.181583, 52.958992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874058, 33.083244, 52.965126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106288, -0.361237, 0.926397,
		-0.222214, -0.899482, -0.376237,
		0.969187, -0.245847, 0.015333,
		35.164814, 33.009491, 52.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020611, 33.039520, 52.467079>,  <34.486382, 33.181583, 52.958992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020611, 33.039520, 52.467079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630573, 33.011570, 52.551273>,  <33.396549, 32.994801, 52.601791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630573, 33.011570, 52.551273>,  <34.020611, 33.039520, 52.467079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630573, 33.011570, 52.551273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210654, -0.005079, -0.977548,
		0.069383, -0.997542, -0.009769,
		-0.975096, -0.069883, 0.210488,
		33.338043, 32.990604, 52.614418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822590, 32.723923, 51.994549>,  <34.020611, 33.039520, 52.467079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822590, 32.723923, 51.994549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458668, 32.829723, 52.122486>,  <33.240314, 32.893204, 52.199249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458668, 32.829723, 52.122486>,  <33.822590, 32.723923, 51.994549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458668, 32.829723, 52.122486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360347, -0.121037, -0.924932,
		-0.205939, -0.956758, 0.205434,
		-0.909801, 0.264507, 0.319839,
		33.185726, 32.909077, 52.218437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429813, 32.295521, 51.657516>,  <33.822590, 32.723923, 51.994549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429813, 32.295521, 51.657516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206425, 32.615837, 51.744099>,  <33.072392, 32.808025, 51.796047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206425, 32.615837, 51.744099>,  <33.429813, 32.295521, 51.657516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206425, 32.615837, 51.744099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233273, 0.098801, -0.967379,
		-0.796051, -0.590743, 0.131625,
		-0.558468, 0.800787, 0.216455,
		33.038883, 32.856071, 51.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750114, 32.216457, 51.274738>,  <33.429813, 32.295521, 51.657516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750114, 32.216457, 51.274738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765343, 32.601852, 51.380753>,  <32.774479, 32.833088, 51.444363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765343, 32.601852, 51.380753>,  <32.750114, 32.216457, 51.274738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765343, 32.601852, 51.380753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273155, 0.265160, -0.924704,
		-0.961216, -0.037188, 0.273277,
		0.038074, 0.963487, 0.265034,
		32.776764, 32.890900, 51.460262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014679, 32.590248, 51.201797>,  <32.750114, 32.216457, 51.274738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014679, 32.590248, 51.201797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346619, 32.805874, 51.144157>,  <32.545780, 32.935249, 51.109573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346619, 32.805874, 51.144157>,  <32.014679, 32.590248, 51.201797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346619, 32.805874, 51.144157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315841, 0.240896, -0.917722,
		-0.460002, 0.807078, 0.370166,
		0.829845, 0.539067, -0.144096,
		32.595573, 32.967594, 51.100929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754425, 33.058022, 50.721806>,  <32.014679, 32.590248, 51.201797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754425, 33.058022, 50.721806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149952, 33.115520, 50.705944>,  <32.387268, 33.150021, 50.696426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149952, 33.115520, 50.705944>,  <31.754425, 33.058022, 50.721806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149952, 33.115520, 50.705944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078192, 0.273363, -0.958728,
		-0.126976, 0.951109, 0.281547,
		0.988819, 0.143750, -0.039658,
		32.446598, 33.158646, 50.694046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813332, 33.606686, 50.300777>,  <31.754425, 33.058022, 50.721806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813332, 33.606686, 50.300777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185673, 33.460693, 50.307735>,  <32.409077, 33.373100, 50.311909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185673, 33.460693, 50.307735>,  <31.813332, 33.606686, 50.300777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185673, 33.460693, 50.307735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124090, 0.270994, -0.954549,
		0.343674, 0.890704, 0.297546,
		0.930854, -0.364976, 0.017394,
		32.464928, 33.351200, 50.312954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244568, 34.233433, 50.131401>,  <31.813332, 33.606686, 50.300777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244568, 34.233433, 50.131401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444630, 33.896511, 50.051041>,  <32.564667, 33.694359, 50.002827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444630, 33.896511, 50.051041>,  <32.244568, 34.233433, 50.131401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444630, 33.896511, 50.051041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087914, 0.280194, -0.955909,
		0.861459, 0.460445, 0.214192,
		0.500159, -0.842307, -0.200897,
		32.594677, 33.643818, 49.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890339, 34.452354, 49.781189>,  <32.244568, 34.233433, 50.131401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890339, 34.452354, 49.781189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812607, 34.071461, 49.686962>,  <32.765968, 33.842926, 49.630428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812607, 34.071461, 49.686962>,  <32.890339, 34.452354, 49.781189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812607, 34.071461, 49.686962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142874, 0.210104, -0.967183,
		0.970475, -0.221611, 0.095219,
		-0.194333, -0.952231, -0.235563,
		32.754307, 33.785789, 49.616295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566254, 34.169563, 49.441612>,  <32.890339, 34.452354, 49.781189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566254, 34.169563, 49.441612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222065, 33.997929, 49.331722>,  <33.015553, 33.894947, 49.265789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222065, 33.997929, 49.331722>,  <33.566254, 34.169563, 49.441612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222065, 33.997929, 49.331722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163698, 0.277790, -0.946591,
		0.482487, -0.859486, -0.168790,
		-0.860470, -0.429088, -0.274726,
		32.963924, 33.869202, 49.249306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798237, 33.971638, 48.773182>,  <33.566254, 34.169563, 49.441612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798237, 33.971638, 48.773182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399475, 33.942226, 48.762112>,  <33.160217, 33.924580, 48.755470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399475, 33.942226, 48.762112>,  <33.798237, 33.971638, 48.773182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399475, 33.942226, 48.762112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018804, 0.565349, -0.824638,
		0.076286, -0.821568, -0.564984,
		-0.996908, -0.073532, -0.027679,
		33.100403, 33.920166, 48.753807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611763, 33.525433, 48.203510>,  <33.798237, 33.971638, 48.773182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611763, 33.525433, 48.203510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328159, 33.795437, 48.285160>,  <33.157997, 33.957439, 48.334148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328159, 33.795437, 48.285160>,  <33.611763, 33.525433, 48.203510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328159, 33.795437, 48.285160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129152, 0.408850, -0.903417,
		-0.693268, -0.614171, -0.377058,
		-0.709012, 0.675008, 0.204121,
		33.115456, 33.997940, 48.346397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194908, 33.627571, 47.529884>,  <33.611763, 33.525433, 48.203510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194908, 33.627571, 47.529884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078796, 33.948177, 47.738998>,  <33.009129, 34.140541, 47.864468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078796, 33.948177, 47.738998>,  <33.194908, 33.627571, 47.529884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078796, 33.948177, 47.738998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171269, 0.493977, -0.852440,
		-0.941491, -0.336984, -0.006117,
		-0.290281, 0.801516, 0.522790,
		32.991711, 34.188633, 47.895836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729755, 33.957497, 47.113972>,  <33.194908, 33.627571, 47.529884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729755, 33.957497, 47.113972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838387, 34.241917, 47.373402>,  <32.903564, 34.412567, 47.529060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838387, 34.241917, 47.373402>,  <32.729755, 33.957497, 47.113972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838387, 34.241917, 47.373402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039981, 0.664989, -0.745782,
		-0.961586, 0.228467, 0.152166,
		0.271575, 0.711050, 0.648579,
		32.919861, 34.455231, 47.567974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151901, 34.516418, 47.160843>,  <32.729755, 33.957497, 47.113972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151901, 34.516418, 47.160843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514793, 34.660084, 47.248421>,  <32.732529, 34.746281, 47.300968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514793, 34.660084, 47.248421>,  <32.151901, 34.516418, 47.160843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514793, 34.660084, 47.248421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073306, 0.647551, -0.758488,
		-0.414200, 0.672072, 0.613806,
		0.907229, 0.359161, 0.218949,
		32.786961, 34.767834, 47.314106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114368, 35.219597, 47.046120>,  <32.151901, 34.516418, 47.160843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114368, 35.219597, 47.046120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512192, 35.194874, 47.079651>,  <32.750885, 35.180042, 47.099770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512192, 35.194874, 47.079651>,  <32.114368, 35.219597, 47.046120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512192, 35.194874, 47.079651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102733, 0.714408, -0.692147,
		-0.017111, 0.696995, 0.716872,
		0.994562, -0.061803, 0.083829,
		32.810562, 35.176334, 47.104801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352226, 35.860195, 47.007858>,  <32.114368, 35.219597, 47.046120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352226, 35.860195, 47.007858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692257, 35.669891, 46.917515>,  <32.896275, 35.555710, 46.863308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692257, 35.669891, 46.917515>,  <32.352226, 35.860195, 47.007858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692257, 35.669891, 46.917515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213503, 0.703356, -0.678017,
		0.481435, 0.528147, 0.699486,
		0.850080, -0.475763, -0.225860,
		32.947281, 35.527161, 46.849758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910419, 36.426620, 46.869328>,  <32.352226, 35.860195, 47.007858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910419, 36.426620, 46.869328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020828, 36.084896, 46.693165>,  <33.087074, 35.879860, 46.587467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020828, 36.084896, 46.693165>,  <32.910419, 36.426620, 46.869328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020828, 36.084896, 46.693165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298284, 0.511726, -0.805707,
		0.913696, 0.091023, 0.396075,
		0.276020, -0.854313, -0.440411,
		33.103634, 35.828602, 46.561043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608974, 36.558704, 46.672791>,  <32.910419, 36.426620, 46.869328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608974, 36.558704, 46.672791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487843, 36.256065, 46.440979>,  <33.415165, 36.074482, 46.301891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487843, 36.256065, 46.440979>,  <33.608974, 36.558704, 46.672791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487843, 36.256065, 46.440979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435255, 0.431171, -0.790344,
		0.847849, -0.491583, 0.198742,
		-0.302829, -0.756596, -0.579532,
		33.396996, 36.029087, 46.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144485, 36.565536, 46.233391>,  <33.608974, 36.558704, 46.672791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144485, 36.565536, 46.233391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844875, 36.363174, 46.062263>,  <33.665112, 36.241756, 45.959587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844875, 36.363174, 46.062263>,  <34.144485, 36.565536, 46.233391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844875, 36.363174, 46.062263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283186, 0.339303, -0.897039,
		0.598974, -0.793054, -0.110882,
		-0.749023, -0.505903, -0.427816,
		33.620167, 36.211403, 45.933918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.584282, 25.737812, 33.705898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337475, 25.922075, 33.450684>,  <40.189392, 26.032633, 33.297554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337475, 25.922075, 33.450684>,  <40.584282, 25.737812, 33.705898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337475, 25.922075, 33.450684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494824, 0.857541, 0.140616,
		0.611917, -0.228953, -0.757059,
		-0.617014, 0.460656, -0.638035,
		40.152370, 26.060272, 33.259274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960743, 26.154015, 33.188049>,  <40.584282, 25.737812, 33.705898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960743, 26.154015, 33.188049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605175, 26.317463, 33.270859>,  <40.391834, 26.415531, 33.320545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605175, 26.317463, 33.270859>,  <40.960743, 26.154015, 33.188049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605175, 26.317463, 33.270859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423765, 0.905173, 0.032940,
		-0.173930, 0.117009, -0.977782,
		-0.888916, 0.408621, 0.207021,
		40.338501, 26.440048, 33.332966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046185, 26.771343, 32.878605>,  <40.960743, 26.154015, 33.188049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046185, 26.771343, 32.878605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745796, 26.805134, 33.140568>,  <40.565563, 26.825409, 33.297745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745796, 26.805134, 33.140568>,  <41.046185, 26.771343, 32.878605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745796, 26.805134, 33.140568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236050, 0.960593, 0.146767,
		-0.616699, 0.264808, -0.741323,
		-0.750975, 0.084478, 0.654905,
		40.520504, 26.830477, 33.337040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792393, 27.444441, 32.765129>,  <41.046185, 26.771343, 32.878605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792393, 27.444441, 32.765129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633938, 27.376686, 33.126102>,  <40.538864, 27.336033, 33.342686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633938, 27.376686, 33.126102>,  <40.792393, 27.444441, 32.765129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633938, 27.376686, 33.126102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195184, 0.944839, 0.263026,
		-0.897208, 0.280333, -0.341220,
		-0.396133, -0.169388, 0.902434,
		40.515099, 27.325871, 33.396832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279312, 27.975828, 32.866302>,  <40.792393, 27.444441, 32.765129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279312, 27.975828, 32.866302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405647, 27.838066, 33.219944>,  <40.481449, 27.755409, 33.432129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405647, 27.838066, 33.219944>,  <40.279312, 27.975828, 32.866302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405647, 27.838066, 33.219944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106891, 0.938779, 0.327519,
		-0.942773, -0.008941, 0.333316,
		0.315838, -0.344404, 0.884099,
		40.500401, 27.734745, 33.485172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047630, 28.480156, 33.283417>,  <40.279312, 27.975828, 32.866302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047630, 28.480156, 33.283417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321022, 28.296284, 33.510239>,  <40.485058, 28.185961, 33.646332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321022, 28.296284, 33.510239>,  <40.047630, 28.480156, 33.283417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321022, 28.296284, 33.510239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133126, 0.842282, 0.522340,
		-0.717728, -0.281519, 0.636878,
		0.683479, -0.459683, 0.567052,
		40.526066, 28.158379, 33.680355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028202, 28.839254, 33.889896>,  <40.047630, 28.480156, 33.283417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028202, 28.839254, 33.889896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372284, 28.635302, 33.893379>,  <40.578732, 28.512930, 33.895470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372284, 28.635302, 33.893379>,  <40.028202, 28.839254, 33.889896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372284, 28.635302, 33.893379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444584, 0.758186, 0.476969,
		-0.249802, -0.406417, 0.878877,
		0.860200, -0.509882, 0.008710,
		40.630344, 28.482336, 33.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345917, 29.080807, 34.569866>,  <40.028202, 28.839254, 33.889896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345917, 29.080807, 34.569866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647915, 28.936686, 34.350716>,  <40.829113, 28.850212, 34.219223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647915, 28.936686, 34.350716>,  <40.345917, 29.080807, 34.569866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647915, 28.936686, 34.350716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596799, 0.723744, 0.346448,
		0.271697, -0.588538, 0.761449,
		0.754991, -0.360303, -0.547878,
		40.874413, 28.828594, 34.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961227, 29.158842, 35.038769>,  <40.345917, 29.080807, 34.569866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961227, 29.158842, 35.038769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095257, 29.127144, 34.663227>,  <41.175674, 29.108124, 34.437901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095257, 29.127144, 34.663227>,  <40.961227, 29.158842, 35.038769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095257, 29.127144, 34.663227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692522, 0.696368, 0.188376,
		0.638860, -0.713296, 0.288212,
		0.335069, -0.079247, -0.938855,
		41.195778, 29.103369, 34.381569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728828, 29.191328, 35.085953>,  <40.961227, 29.158842, 35.038769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728828, 29.191328, 35.085953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635204, 29.289993, 34.709789>,  <41.579029, 29.349194, 34.484089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635204, 29.289993, 34.709789>,  <41.728828, 29.191328, 35.085953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635204, 29.289993, 34.709789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625415, 0.778777, 0.048609,
		0.744360, -0.576770, -0.336547,
		-0.234059, 0.246664, -0.940411,
		41.564987, 29.363993, 34.427666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341873, 29.438086, 34.841843>,  <41.728828, 29.191328, 35.085953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341873, 29.438086, 34.841843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089878, 29.612537, 34.584812>,  <41.938683, 29.717209, 34.430595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089878, 29.612537, 34.584812>,  <42.341873, 29.438086, 34.841843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089878, 29.612537, 34.584812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594134, 0.803508, -0.037137,
		0.500120, -0.405173, -0.765320,
		-0.629988, 0.436130, -0.642578,
		41.900883, 29.743376, 34.392040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771599, 29.780418, 34.231880>,  <42.341873, 29.438086, 34.841843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771599, 29.780418, 34.231880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409672, 29.950701, 34.228256>,  <42.192516, 30.052870, 34.226082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409672, 29.950701, 34.228256>,  <42.771599, 29.780418, 34.231880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409672, 29.950701, 34.228256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425782, 0.904774, -0.009661,
		0.004082, -0.012598, -0.999913,
		-0.904817, 0.425705, -0.009057,
		42.138226, 30.078413, 34.225540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888153, 30.301731, 33.709579>,  <42.771599, 29.780418, 34.231880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888153, 30.301731, 33.709579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567467, 30.406546, 33.924461>,  <42.375053, 30.469435, 34.053391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567467, 30.406546, 33.924461>,  <42.888153, 30.301731, 33.709579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567467, 30.406546, 33.924461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206636, 0.964870, -0.162260,
		-0.560846, -0.019082, -0.827700,
		-0.801719, 0.262035, 0.537200,
		42.326950, 30.485157, 34.085621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489250, 30.782110, 33.382210>,  <42.888153, 30.301731, 33.709579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489250, 30.782110, 33.382210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334534, 30.829657, 33.748001>,  <42.241703, 30.858185, 33.967476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334534, 30.829657, 33.748001>,  <42.489250, 30.782110, 33.382210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334534, 30.829657, 33.748001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116528, 0.990009, -0.079396,
		-0.914777, 0.075853, -0.396774,
		-0.386787, 0.118865, 0.914476,
		42.218498, 30.865316, 34.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046520, 31.357748, 33.359734>,  <42.489250, 30.782110, 33.382210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046520, 31.357748, 33.359734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139576, 31.315018, 33.746407>,  <42.195408, 31.289379, 33.978409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139576, 31.315018, 33.746407>,  <42.046520, 31.357748, 33.359734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139576, 31.315018, 33.746407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049275, 0.991378, 0.121415,
		-0.971314, -0.075879, 0.225371,
		0.232641, -0.106827, 0.966678,
		42.209370, 31.282970, 34.036411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529995, 31.881115, 33.774761>,  <42.046520, 31.357748, 33.359734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529995, 31.881115, 33.774761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.867062, 31.785282, 33.967640>,  <42.069302, 31.727783, 34.083366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.867062, 31.785282, 33.967640>,  <41.529995, 31.881115, 33.774761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867062, 31.785282, 33.967640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121799, 0.957154, 0.262718,
		-0.524476, -0.162654, 0.835744,
		0.842669, -0.239582, 0.482193,
		42.119862, 31.713408, 34.112297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508343, 32.104275, 34.450024>,  <41.529995, 31.881115, 33.774761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508343, 32.104275, 34.450024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902870, 32.047840, 34.415928>,  <42.139587, 32.013981, 34.395470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902870, 32.047840, 34.415928>,  <41.508343, 32.104275, 34.450024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902870, 32.047840, 34.415928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164807, 0.853416, 0.494489,
		0.002980, -0.501773, 0.864994,
		0.986321, -0.141083, -0.085239,
		42.198765, 32.005516, 34.390358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871208, 32.132183, 35.162628>,  <41.508343, 32.104275, 34.450024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871208, 32.132183, 35.162628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132324, 32.211643, 34.870216>,  <42.288994, 32.259319, 34.694771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132324, 32.211643, 34.870216>,  <41.871208, 32.132183, 35.162628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132324, 32.211643, 34.870216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251016, 0.853763, 0.456157,
		0.714743, -0.481274, 0.507462,
		0.652789, 0.198654, -0.731029,
		42.328159, 32.271240, 34.650906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396301, 32.398098, 35.505386>,  <41.871208, 32.132183, 35.162628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396301, 32.398098, 35.505386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470940, 32.530777, 35.135487>,  <42.515720, 32.610386, 34.913548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470940, 32.530777, 35.135487>,  <42.396301, 32.398098, 35.505386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470940, 32.530777, 35.135487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332902, 0.864245, 0.377170,
		0.924316, -0.378227, 0.050840,
		0.186594, 0.331699, -0.924748,
		42.526917, 32.630287, 34.858063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064400, 32.592476, 35.608707>,  <42.396301, 32.398098, 35.505386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064400, 32.592476, 35.608707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961994, 32.763271, 35.261803>,  <42.900551, 32.865749, 35.053661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961994, 32.763271, 35.261803>,  <43.064400, 32.592476, 35.608707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961994, 32.763271, 35.261803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360080, 0.874717, 0.324365,
		0.897107, -0.229242, -0.377687,
		-0.256011, 0.426987, -0.867260,
		42.885189, 32.891369, 35.001625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653011, 32.821686, 35.182190>,  <43.064400, 32.592476, 35.608707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653011, 32.821686, 35.182190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330994, 33.051231, 35.122078>,  <43.137783, 33.188961, 35.086010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330994, 33.051231, 35.122078>,  <43.653011, 32.821686, 35.182190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330994, 33.051231, 35.122078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564660, 0.818946, 0.102405,
		0.181834, -0.002415, -0.983326,
		-0.805044, 0.573866, -0.150276,
		43.089481, 33.223392, 35.076996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795853, 33.261936, 34.673759>,  <43.653011, 32.821686, 35.182190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795853, 33.261936, 34.673759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541504, 33.413273, 34.942841>,  <43.388893, 33.504074, 35.104290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541504, 33.413273, 34.942841>,  <43.795853, 33.261936, 34.673759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541504, 33.413273, 34.942841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539545, 0.841146, 0.036930,
		-0.551869, 0.386436, -0.738991,
		-0.635871, 0.378339, 0.672702,
		43.350742, 33.526775, 35.144650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485294, 33.608894, 34.457413>,  <43.795853, 33.261936, 34.673759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485294, 33.608894, 34.457413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858551, 33.587215, 34.599575>,  <45.082504, 33.574207, 34.684872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858551, 33.587215, 34.599575>,  <44.485294, 33.608894, 34.457413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858551, 33.587215, 34.599575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001225, -0.988088, -0.153883,
		0.359515, 0.144029, -0.921957,
		0.933138, -0.054194, 0.355409,
		45.138493, 33.570957, 34.706200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882328, 33.256878, 33.961803>,  <44.485294, 33.608894, 34.457413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882328, 33.256878, 33.961803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028858, 33.210556, 34.331104>,  <45.116776, 33.182762, 34.552685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028858, 33.210556, 34.331104>,  <44.882328, 33.256878, 33.961803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028858, 33.210556, 34.331104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048968, -0.988451, -0.143407,
		0.929196, 0.097744, -0.356427,
		0.366328, -0.115800, 0.923252,
		45.138756, 33.175816, 34.608078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348145, 32.722446, 33.893154>,  <44.882328, 33.256878, 33.961803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348145, 32.722446, 33.893154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360188, 32.733940, 34.292809>,  <45.367413, 32.740837, 34.532600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360188, 32.733940, 34.292809>,  <45.348145, 32.722446, 33.893154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360188, 32.733940, 34.292809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299120, -0.954038, 0.018421,
		0.953741, 0.298306, -0.037313,
		0.030103, 0.028730, 0.999134,
		45.369217, 32.742558, 34.592548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972752, 32.316616, 34.098663>,  <45.348145, 32.722446, 33.893154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972752, 32.316616, 34.098663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717770, 32.302811, 34.406548>,  <45.564781, 32.294529, 34.591278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717770, 32.302811, 34.406548>,  <45.972752, 32.316616, 34.098663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717770, 32.302811, 34.406548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194927, -0.973721, 0.117777,
		0.745420, 0.225116, 0.627433,
		-0.637458, -0.034510, 0.769712,
		45.526531, 32.292458, 34.637463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224323, 31.826807, 34.561954>,  <45.972752, 32.316616, 34.098663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224323, 31.826807, 34.561954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833130, 31.845188, 34.643375>,  <45.598415, 31.856216, 34.692230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833130, 31.845188, 34.643375>,  <46.224323, 31.826807, 34.561954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833130, 31.845188, 34.643375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078302, -0.984986, -0.153852,
		0.193430, -0.166404, 0.966900,
		-0.977984, 0.045951, 0.203555,
		45.539734, 31.858973, 34.704441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010582, 31.320410, 35.067276>,  <46.224323, 31.826807, 34.561954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010582, 31.320410, 35.067276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672089, 31.415594, 34.876591>,  <45.468990, 31.472704, 34.762180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672089, 31.415594, 34.876591>,  <46.010582, 31.320410, 35.067276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672089, 31.415594, 34.876591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179354, -0.969733, -0.165678,
		-0.501712, -0.054702, 0.863303,
		-0.846237, 0.237960, -0.476716,
		45.418217, 31.486982, 34.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408607, 30.858675, 35.296909>,  <46.010582, 31.320410, 35.067276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408607, 30.858675, 35.296909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308701, 31.014650, 34.942383>,  <45.248756, 31.108236, 34.729668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308701, 31.014650, 34.942383>,  <45.408607, 30.858675, 35.296909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308701, 31.014650, 34.942383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239010, -0.911835, -0.333813,
		-0.938346, 0.128466, 0.320942,
		-0.249762, 0.389940, -0.886322,
		45.233772, 31.131632, 34.676487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785076, 30.549692, 35.263279>,  <45.408607, 30.858675, 35.296909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785076, 30.549692, 35.263279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934654, 30.654442, 34.907394>,  <45.024403, 30.717293, 34.693863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934654, 30.654442, 34.907394>,  <44.785076, 30.549692, 35.263279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934654, 30.654442, 34.907394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410746, -0.813337, -0.412032,
		-0.831536, 0.519523, -0.196580,
		0.373945, 0.261875, -0.889711,
		45.046837, 30.733004, 34.640480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327312, 30.247217, 34.817753>,  <44.785076, 30.549692, 35.263279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327312, 30.247217, 34.817753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632259, 30.312265, 34.567204>,  <44.815228, 30.351294, 34.416874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632259, 30.312265, 34.567204>,  <44.327312, 30.247217, 34.817753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632259, 30.312265, 34.567204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389331, -0.657896, -0.644666,
		-0.516924, 0.735343, -0.438248,
		0.762372, 0.162620, -0.626374,
		44.860970, 30.361052, 34.379292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007961, 29.974407, 34.265526>,  <44.327312, 30.247217, 34.817753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007961, 29.974407, 34.265526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382069, 30.033092, 34.136684>,  <44.606533, 30.068304, 34.059380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382069, 30.033092, 34.136684>,  <44.007961, 29.974407, 34.265526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382069, 30.033092, 34.136684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151187, -0.657243, -0.738359,
		-0.320026, 0.739261, -0.592517,
		0.935268, 0.146713, -0.322102,
		44.662647, 30.077106, 34.040054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050308, 30.099543, 33.552990>,  <44.007961, 29.974407, 34.265526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050308, 30.099543, 33.552990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.411301, 29.959396, 33.653210>,  <44.627895, 29.875309, 33.713341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.411301, 29.959396, 33.653210>,  <44.050308, 30.099543, 33.552990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411301, 29.959396, 33.653210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080219, -0.708216, -0.701424,
		0.423198, 0.612922, -0.667256,
		0.902479, -0.350367, 0.250547,
		44.682045, 29.854286, 33.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322872, 29.932640, 32.927410>,  <44.050308, 30.099543, 33.552990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322872, 29.932640, 32.927410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547543, 29.735222, 33.193020>,  <44.682346, 29.616772, 33.352386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547543, 29.735222, 33.193020>,  <44.322872, 29.932640, 32.927410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547543, 29.735222, 33.193020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082776, -0.765039, -0.638642,
		0.823205, 0.413676, -0.388852,
		0.561678, -0.493546, 0.664026,
		44.716045, 29.587158, 33.392227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914680, 29.675987, 32.538738>,  <44.322872, 29.932640, 32.927410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914680, 29.675987, 32.538738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830334, 29.449060, 32.857155>,  <44.779724, 29.312904, 33.048206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830334, 29.449060, 32.857155>,  <44.914680, 29.675987, 32.538738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830334, 29.449060, 32.857155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010838, -0.815661, -0.578428,
		0.977454, -0.113346, 0.178147,
		-0.210871, -0.567317, 0.796043,
		44.767071, 29.278866, 33.095966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316128, 29.013220, 32.511307>,  <44.914680, 29.675987, 32.538738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316128, 29.013220, 32.511307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051495, 28.924507, 32.797836>,  <44.892715, 28.871279, 32.969753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051495, 28.924507, 32.797836>,  <45.316128, 29.013220, 32.511307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051495, 28.924507, 32.797836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243710, -0.839810, -0.485104,
		0.709162, -0.495512, 0.501555,
		-0.661585, -0.221783, 0.716322,
		44.853020, 28.857973, 33.012733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442013, 28.334934, 32.828461>,  <45.316128, 29.013220, 32.511307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442013, 28.334934, 32.828461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051579, 28.392372, 32.893734>,  <44.817318, 28.426834, 32.932896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051579, 28.392372, 32.893734>,  <45.442013, 28.334934, 32.828461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051579, 28.392372, 32.893734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197455, -0.899629, -0.389460,
		0.090879, -0.412369, 0.906473,
		-0.976090, 0.143594, 0.163182,
		44.758751, 28.435450, 32.942688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216351, 27.663918, 32.869152>,  <45.442013, 28.334934, 32.828461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216351, 27.663918, 32.869152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865929, 27.855772, 32.849239>,  <44.655674, 27.970884, 32.837292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865929, 27.855772, 32.849239>,  <45.216351, 27.663918, 32.869152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865929, 27.855772, 32.849239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434342, -0.829715, -0.350599,
		-0.209463, -0.285522, 0.935202,
		-0.876055, 0.479635, -0.049781,
		44.603111, 27.999662, 32.834305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757896, 27.279133, 33.174583>,  <45.216351, 27.663918, 32.869152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757896, 27.279133, 33.174583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516518, 27.515150, 32.960030>,  <44.371693, 27.656761, 32.831299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516518, 27.515150, 32.960030>,  <44.757896, 27.279133, 33.174583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516518, 27.515150, 32.960030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566769, -0.790538, -0.231997,
		-0.560917, 0.164006, 0.811464,
		-0.603444, 0.590044, -0.536380,
		44.335484, 27.692163, 32.799114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093437, 27.182657, 33.389786>,  <44.757896, 27.279133, 33.174583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093437, 27.182657, 33.389786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003452, 27.331923, 33.029755>,  <43.949463, 27.421482, 32.813736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003452, 27.331923, 33.029755>,  <44.093437, 27.182657, 33.389786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003452, 27.331923, 33.029755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631938, -0.759006, -0.156732,
		-0.741652, 0.533536, 0.406561,
		-0.224960, 0.373162, -0.900079,
		43.935963, 27.443871, 32.759731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345566, 27.261871, 33.334499>,  <44.093437, 27.182657, 33.389786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345566, 27.261871, 33.334499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480480, 27.229420, 32.959339>,  <43.561428, 27.209948, 32.734245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480480, 27.229420, 32.959339>,  <43.345566, 27.261871, 33.334499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480480, 27.229420, 32.959339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520536, -0.846196, -0.113997,
		-0.784397, 0.526660, -0.327644,
		0.337289, -0.081131, -0.937899,
		43.581665, 27.205080, 32.677971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764217, 27.019550, 32.932774>,  <43.345566, 27.261871, 33.334499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764217, 27.019550, 32.932774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079166, 26.953009, 32.695332>,  <43.268135, 26.913084, 32.552864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079166, 26.953009, 32.695332>,  <42.764217, 27.019550, 32.932774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079166, 26.953009, 32.695332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360737, -0.905165, -0.224823,
		-0.499914, 0.391156, -0.772712,
		0.787372, -0.166354, -0.593609,
		43.315376, 26.903103, 32.517250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.553337, 34.773438, 41.646301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181202, 34.748604, 41.501740>,  <36.957920, 34.733704, 41.415005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181202, 34.748604, 41.501740>,  <37.553337, 34.773438, 41.646301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181202, 34.748604, 41.501740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366666, -0.170078, -0.914674,
		-0.004679, -0.983473, 0.180995,
		-0.930341, -0.062085, -0.361402,
		36.902100, 34.729980, 41.393318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512497, 34.252415, 41.095024>,  <37.553337, 34.773438, 41.646301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512497, 34.252415, 41.095024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190575, 34.478794, 41.023495>,  <36.997421, 34.614624, 40.980576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190575, 34.478794, 41.023495>,  <37.512497, 34.252415, 41.095024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190575, 34.478794, 41.023495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183778, -0.048870, -0.981752,
		-0.564364, -0.822988, -0.064679,
		-0.804809, 0.565952, -0.178828,
		36.949131, 34.648579, 40.969845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202385, 33.908638, 40.536373>,  <37.512497, 34.252415, 41.095024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202385, 33.908638, 40.536373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041782, 34.273663, 40.505325>,  <36.945419, 34.492676, 40.486694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041782, 34.273663, 40.505325>,  <37.202385, 33.908638, 40.536373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041782, 34.273663, 40.505325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027365, -0.096669, -0.994940,
		-0.915448, -0.397349, 0.063786,
		-0.401505, 0.912562, -0.077622,
		36.921329, 34.547432, 40.482040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691101, 33.837940, 39.969967>,  <37.202385, 33.908638, 40.536373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691101, 33.837940, 39.969967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788239, 34.221924, 40.025818>,  <36.846523, 34.452316, 40.059330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788239, 34.221924, 40.025818>,  <36.691101, 33.837940, 39.969967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788239, 34.221924, 40.025818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025918, 0.150308, -0.988299,
		-0.969719, 0.236386, 0.061382,
		0.242846, 0.959963, 0.139630,
		36.861092, 34.509914, 40.067707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217392, 34.253429, 39.733994>,  <36.691101, 33.837940, 39.969967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217392, 34.253429, 39.733994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546814, 34.480286, 39.738121>,  <36.744469, 34.616398, 39.740597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546814, 34.480286, 39.738121>,  <36.217392, 34.253429, 39.733994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546814, 34.480286, 39.738121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071475, 0.121796, -0.989978,
		-0.562708, 0.814569, 0.140842,
		0.823560, 0.567136, 0.010314,
		36.793880, 34.650425, 39.741215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100052, 34.698483, 39.207359>,  <36.217392, 34.253429, 39.733994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100052, 34.698483, 39.207359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491974, 34.747910, 39.270252>,  <36.727127, 34.777565, 39.307987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491974, 34.747910, 39.270252>,  <36.100052, 34.698483, 39.207359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491974, 34.747910, 39.270252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133385, 0.182011, -0.974207,
		-0.148996, 0.975502, 0.161853,
		0.979800, 0.123564, 0.157236,
		36.785915, 34.784977, 39.317425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359394, 35.443501, 39.008842>,  <36.100052, 34.698483, 39.207359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359394, 35.443501, 39.008842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652554, 35.173965, 38.971321>,  <36.828449, 35.012245, 38.948807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652554, 35.173965, 38.971321>,  <36.359394, 35.443501, 39.008842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652554, 35.173965, 38.971321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247037, 0.392049, -0.886155,
		0.633904, 0.626287, 0.453795,
		0.732897, -0.673842, -0.093805,
		36.872421, 34.971813, 38.943180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915138, 35.750240, 38.638851>,  <36.359394, 35.443501, 39.008842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915138, 35.750240, 38.638851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996662, 35.364006, 38.574215>,  <37.045578, 35.132267, 38.535435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996662, 35.364006, 38.574215>,  <36.915138, 35.750240, 38.638851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996662, 35.364006, 38.574215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262418, 0.212894, -0.941176,
		0.943185, 0.149420, 0.296777,
		0.203812, -0.965583, -0.161588,
		37.057804, 35.074329, 38.525738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465202, 35.776516, 38.133564>,  <36.915138, 35.750240, 38.638851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465202, 35.776516, 38.133564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309437, 35.408100, 38.130779>,  <37.215977, 35.187050, 38.129108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309437, 35.408100, 38.130779>,  <37.465202, 35.776516, 38.133564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309437, 35.408100, 38.130779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120650, -0.043519, -0.991741,
		0.913127, -0.387036, 0.128070,
		-0.389412, -0.921037, -0.006957,
		37.192612, 35.131790, 38.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946232, 35.522560, 37.747944>,  <37.465202, 35.776516, 38.133564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946232, 35.522560, 37.747944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619995, 35.291275, 37.739197>,  <37.424252, 35.152504, 37.733948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619995, 35.291275, 37.739197>,  <37.946232, 35.522560, 37.747944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619995, 35.291275, 37.739197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059793, -0.046631, -0.997121,
		0.575526, -0.814554, 0.072605,
		-0.815595, -0.578210, -0.021867,
		37.375317, 35.117813, 37.732635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088711, 34.883026, 37.327454>,  <37.946232, 35.522560, 37.747944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088711, 34.883026, 37.327454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689407, 34.861225, 37.318413>,  <37.449825, 34.848145, 37.312988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689407, 34.861225, 37.318413>,  <38.088711, 34.883026, 37.327454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689407, 34.861225, 37.318413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029449, -0.128272, -0.991302,
		0.051130, -0.990240, 0.129653,
		-0.998258, -0.054503, -0.022603,
		37.389931, 34.844875, 37.311630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694668, 34.217278, 37.029682>,  <38.088711, 34.883026, 37.327454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694668, 34.217278, 37.029682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528259, 34.574474, 36.960983>,  <37.428413, 34.788792, 36.919765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528259, 34.574474, 36.960983>,  <37.694668, 34.217278, 37.029682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528259, 34.574474, 36.960983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132409, -0.127366, -0.982978,
		-0.899664, -0.431678, -0.065253,
		-0.416019, 0.892990, -0.171745,
		37.403454, 34.842373, 36.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961109, 34.269772, 36.719597>,  <37.694668, 34.217278, 37.029682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961109, 34.269772, 36.719597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247589, 34.530678, 36.620316>,  <37.419479, 34.687222, 36.560745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247589, 34.530678, 36.620316>,  <36.961109, 34.269772, 36.719597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247589, 34.530678, 36.620316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079449, -0.429542, -0.899546,
		-0.693354, 0.624539, -0.359461,
		0.716205, 0.652262, -0.248205,
		37.462452, 34.726357, 36.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298859, 34.424198, 35.989555>,  <36.961109, 34.269772, 36.719597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298859, 34.424198, 35.989555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284042, 34.730244, 36.246689>,  <37.275154, 34.913872, 36.400967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284042, 34.730244, 36.246689>,  <37.298859, 34.424198, 35.989555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284042, 34.730244, 36.246689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921886, 0.274435, -0.273518,
		-0.385687, 0.582486, -0.715511,
		-0.037041, 0.765112, 0.642832,
		37.272930, 34.959778, 36.439537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759258, 33.704948, 35.879162>,  <37.298859, 34.424198, 35.989555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759258, 33.704948, 35.879162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493713, 33.502609, 35.658829>,  <37.334389, 33.381207, 35.526630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493713, 33.502609, 35.658829>,  <37.759258, 33.704948, 35.879162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493713, 33.502609, 35.658829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027351, -0.752474, 0.658054,
		-0.747358, 0.421788, 0.513371,
		-0.663858, -0.505843, -0.550831,
		37.294556, 33.350857, 35.493580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105747, 33.660545, 36.219296>,  <37.759258, 33.704948, 35.879162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105747, 33.660545, 36.219296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250008, 33.357155, 36.002167>,  <37.336563, 33.175121, 35.871891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250008, 33.357155, 36.002167>,  <37.105747, 33.660545, 36.219296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250008, 33.357155, 36.002167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005193, -0.580344, 0.814355,
		-0.932687, -0.296515, -0.205361,
		0.360648, -0.758472, -0.542819,
		37.358204, 33.129612, 35.839321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718082, 33.139915, 36.421604>,  <37.105747, 33.660545, 36.219296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718082, 33.139915, 36.421604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055473, 32.998066, 36.260212>,  <37.257908, 32.912956, 36.163376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055473, 32.998066, 36.260212>,  <36.718082, 33.139915, 36.421604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055473, 32.998066, 36.260212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139091, -0.581326, 0.801694,
		-0.518851, -0.732328, -0.441009,
		0.843473, -0.354619, -0.403483,
		37.308514, 32.891682, 36.139168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550983, 32.503258, 36.394512>,  <36.718082, 33.139915, 36.421604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550983, 32.503258, 36.394512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947044, 32.558453, 36.403927>,  <37.184681, 32.591568, 36.409576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947044, 32.558453, 36.403927>,  <36.550983, 32.503258, 36.394512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947044, 32.558453, 36.403927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085840, -0.731372, 0.676555,
		0.110572, -0.667873, -0.736016,
		0.990154, 0.137988, 0.023539,
		37.244091, 32.599850, 36.410988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630707, 31.869854, 36.661751>,  <36.550983, 32.503258, 36.394512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630707, 31.869854, 36.661751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985676, 32.052387, 36.687778>,  <37.198658, 32.161907, 36.703396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985676, 32.052387, 36.687778>,  <36.630707, 31.869854, 36.661751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985676, 32.052387, 36.687778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242156, -0.581648, 0.776560,
		0.392219, -0.673383, -0.626674,
		0.887426, 0.456335, 0.065070,
		37.251904, 32.189289, 36.707298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012913, 31.379417, 36.845722>,  <36.630707, 31.869854, 36.661751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012913, 31.379417, 36.845722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251789, 31.679934, 36.958096>,  <37.395115, 31.860243, 37.025520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251789, 31.679934, 36.958096>,  <37.012913, 31.379417, 36.845722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251789, 31.679934, 36.958096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208032, -0.483341, 0.850355,
		0.774653, -0.449380, -0.444938,
		0.597189, 0.751292, 0.280936,
		37.430946, 31.905321, 37.042377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598064, 31.057627, 37.132130>,  <37.012913, 31.379417, 36.845722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598064, 31.057627, 37.132130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579475, 31.425116, 37.288994>,  <37.568321, 31.645609, 37.383114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579475, 31.425116, 37.288994>,  <37.598064, 31.057627, 37.132130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579475, 31.425116, 37.288994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198637, -0.376244, 0.904977,
		0.978970, 0.119957, -0.165006,
		-0.046476, 0.918722, 0.392160,
		37.565533, 31.700733, 37.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131325, 31.087961, 37.599102>,  <37.598064, 31.057627, 37.132130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131325, 31.087961, 37.599102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865982, 31.371248, 37.695759>,  <37.706776, 31.541220, 37.753754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865982, 31.371248, 37.695759>,  <38.131325, 31.087961, 37.599102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865982, 31.371248, 37.695759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116390, -0.221341, 0.968226,
		0.739200, 0.670400, 0.064398,
		-0.663353, 0.708217, 0.241643,
		37.666977, 31.583714, 37.768253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473495, 31.493305, 38.148567>,  <38.131325, 31.087961, 37.599102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473495, 31.493305, 38.148567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084427, 31.583429, 38.171024>,  <37.850986, 31.637505, 38.184498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084427, 31.583429, 38.171024>,  <38.473495, 31.493305, 38.148567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084427, 31.583429, 38.171024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029334, -0.120630, 0.992264,
		0.230340, 0.966790, 0.110724,
		-0.972668, 0.225310, 0.056146,
		37.792625, 31.651022, 38.187866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329193, 32.092808, 38.630749>,  <38.473495, 31.493305, 38.148567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329193, 32.092808, 38.630749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986195, 31.888269, 38.608032>,  <37.780396, 31.765545, 38.594402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986195, 31.888269, 38.608032>,  <38.329193, 32.092808, 38.630749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986195, 31.888269, 38.608032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167879, 0.173748, 0.970375,
		-0.486333, 0.841626, -0.234832,
		-0.857494, -0.511349, -0.056792,
		37.728947, 31.734865, 38.590996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925335, 32.481201, 39.067230>,  <38.329193, 32.092808, 38.630749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925335, 32.481201, 39.067230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755646, 32.120243, 39.036972>,  <37.653831, 31.903669, 39.018818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755646, 32.120243, 39.036972>,  <37.925335, 32.481201, 39.067230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755646, 32.120243, 39.036972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235926, 0.029487, 0.971324,
		-0.874284, 0.429906, -0.225407,
		-0.424224, -0.902392, -0.075646,
		37.628380, 31.849525, 39.014278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237480, 32.569736, 39.309696>,  <37.925335, 32.481201, 39.067230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237480, 32.569736, 39.309696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329006, 32.181011, 39.332409>,  <37.383923, 31.947777, 39.346035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329006, 32.181011, 39.332409>,  <37.237480, 32.569736, 39.309696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329006, 32.181011, 39.332409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234900, 0.001485, 0.972018,
		-0.944704, -0.235749, -0.227939,
		0.228814, -0.971813, 0.056781,
		37.397652, 31.889467, 39.349442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830391, 32.389542, 39.840351>,  <37.237480, 32.569736, 39.309696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830391, 32.389542, 39.840351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076935, 32.074581, 39.836285>,  <37.224861, 31.885605, 39.833843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076935, 32.074581, 39.836285>,  <36.830391, 32.389542, 39.840351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076935, 32.074581, 39.836285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170470, -0.146023, 0.974483,
		-0.768794, -0.598896, -0.224231,
		0.616357, -0.787401, -0.010168,
		37.261841, 31.838360, 39.833233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473091, 31.864744, 40.177513>,  <36.830391, 32.389542, 39.840351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473091, 31.864744, 40.177513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865669, 31.788332, 40.184158>,  <37.101215, 31.742485, 40.188145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865669, 31.788332, 40.184158>,  <36.473091, 31.864744, 40.177513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865669, 31.788332, 40.184158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000997, 0.081554, 0.996669,
		-0.191749, -0.978190, 0.079851,
		0.981443, -0.191031, 0.016613,
		37.160103, 31.731022, 40.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121441, 31.323853, 40.138073>,  <36.473091, 31.864744, 40.177513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121441, 31.323853, 40.138073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734184, 31.249384, 40.205051>,  <35.501831, 31.204702, 40.245239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734184, 31.249384, 40.205051>,  <36.121441, 31.323853, 40.138073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734184, 31.249384, 40.205051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194206, 0.136155, -0.971466,
		0.158073, -0.973035, -0.167976,
		-0.968141, -0.186184, 0.167446,
		35.443741, 31.193531, 40.255287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830658, 30.976435, 39.481281>,  <36.121441, 31.323853, 40.138073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830658, 30.976435, 39.481281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489319, 31.113111, 39.638786>,  <35.284515, 31.195118, 39.733292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489319, 31.113111, 39.638786>,  <35.830658, 30.976435, 39.481281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489319, 31.113111, 39.638786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364598, 0.148747, -0.919208,
		-0.372656, -0.927966, -0.002352,
		-0.853344, 0.341691, 0.393766,
		35.233315, 31.215618, 39.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326527, 30.640831, 39.174202>,  <35.830658, 30.976435, 39.481281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326527, 30.640831, 39.174202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123302, 30.944286, 39.337341>,  <35.001366, 31.126360, 39.435226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123302, 30.944286, 39.337341>,  <35.326527, 30.640831, 39.174202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123302, 30.944286, 39.337341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465663, 0.156414, -0.871030,
		-0.724589, -0.632459, 0.273801,
		-0.508065, 0.758637, 0.407849,
		34.970882, 31.171877, 39.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643559, 30.464432, 39.033913>,  <35.326527, 30.640831, 39.174202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643559, 30.464432, 39.033913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662354, 30.862099, 39.072735>,  <34.673630, 31.100698, 39.096027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662354, 30.862099, 39.072735>,  <34.643559, 30.464432, 39.033913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662354, 30.862099, 39.072735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355572, 0.107450, -0.928452,
		-0.933467, 0.009118, 0.358548,
		0.046991, 0.994169, 0.097059,
		34.676453, 31.160349, 39.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989922, 30.657879, 38.778694>,  <34.643559, 30.464432, 39.033913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989922, 30.657879, 38.778694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223476, 30.980980, 38.746159>,  <34.363609, 31.174841, 38.726639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223476, 30.980980, 38.746159>,  <33.989922, 30.657879, 38.778694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223476, 30.980980, 38.746159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480157, 0.262808, -0.836888,
		-0.654622, 0.527700, 0.541297,
		0.583883, 0.807753, -0.081339,
		34.398640, 31.223307, 38.721756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555477, 31.084627, 38.467365>,  <33.989922, 30.657879, 38.778694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555477, 31.084627, 38.467365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917068, 31.248091, 38.417061>,  <34.134026, 31.346169, 38.386879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917068, 31.248091, 38.417061>,  <33.555477, 31.084627, 38.467365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917068, 31.248091, 38.417061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267104, 0.310074, -0.912420,
		-0.333874, 0.858401, 0.389455,
		0.903982, 0.408658, -0.125757,
		34.188263, 31.370687, 38.379333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394768, 31.700464, 38.168221>,  <33.555477, 31.084627, 38.467365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394768, 31.700464, 38.168221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783081, 31.641048, 38.092846>,  <34.016071, 31.605398, 38.047619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783081, 31.641048, 38.092846>,  <33.394768, 31.700464, 38.168221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783081, 31.641048, 38.092846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178212, 0.079520, -0.980774,
		0.160670, 0.985704, 0.050725,
		0.970786, -0.148541, -0.188440,
		34.074318, 31.596487, 38.036312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636253, 32.243645, 37.790390>,  <33.394768, 31.700464, 38.168221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636253, 32.243645, 37.790390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901939, 31.953697, 37.717308>,  <34.061352, 31.779730, 37.673458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901939, 31.953697, 37.717308>,  <33.636253, 32.243645, 37.790390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901939, 31.953697, 37.717308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145348, 0.114519, -0.982731,
		0.733273, 0.679304, -0.029292,
		0.664218, -0.724867, -0.182709,
		34.101204, 31.736237, 37.662495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089176, 32.597092, 37.430832>,  <33.636253, 32.243645, 37.790390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089176, 32.597092, 37.430832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163261, 32.212799, 37.348175>,  <34.207710, 31.982224, 37.298580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163261, 32.212799, 37.348175>,  <34.089176, 32.597092, 37.430832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163261, 32.212799, 37.348175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143248, 0.181637, -0.972876,
		0.972202, 0.209786, -0.103982,
		0.185209, -0.960728, -0.206640,
		34.218822, 31.924582, 37.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510201, 32.605488, 36.830765>,  <34.089176, 32.597092, 37.430832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510201, 32.605488, 36.830765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365040, 32.233025, 36.816650>,  <34.277943, 32.009548, 36.808182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365040, 32.233025, 36.816650>,  <34.510201, 32.605488, 36.830765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365040, 32.233025, 36.816650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140926, 0.092279, -0.985710,
		0.921110, -0.352741, -0.164712,
		-0.362900, -0.931160, -0.035288,
		34.256168, 31.953676, 36.806065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841011, 32.322388, 36.307995>,  <34.510201, 32.605488, 36.830765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841011, 32.322388, 36.307995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489159, 32.136776, 36.349812>,  <34.278046, 32.025410, 36.374901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489159, 32.136776, 36.349812>,  <34.841011, 32.322388, 36.307995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489159, 32.136776, 36.349812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156867, 0.075521, -0.984728,
		0.449046, -0.882596, -0.139221,
		-0.879631, -0.464027, 0.104538,
		34.225269, 31.997568, 36.381172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811672, 32.075836, 35.720387>,  <34.841011, 32.322388, 36.307995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811672, 32.075836, 35.720387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436249, 32.044918, 35.854927>,  <34.210995, 32.026367, 35.935654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436249, 32.044918, 35.854927>,  <34.811672, 32.075836, 35.720387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436249, 32.044918, 35.854927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340827, 0.054287, -0.938557,
		0.054287, -0.995529, -0.077296,
		0.938557, 0.077296, -0.336356,
		34.154682, 32.021729, 35.955833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.505871, 30.042160, 43.899445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160637, 30.234465, 43.837543>,  <34.953495, 30.349848, 43.800404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160637, 30.234465, 43.837543>,  <35.505871, 30.042160, 43.899445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160637, 30.234465, 43.837543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067573, -0.193723, -0.978726,
		-0.500513, -0.855183, 0.134713,
		-0.863088, 0.480763, -0.154749,
		34.901711, 30.378693, 43.791119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115421, 29.634222, 43.446800>,  <35.505871, 30.042160, 43.899445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115421, 29.634222, 43.446800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965775, 30.004286, 43.421143>,  <34.875984, 30.226324, 43.405750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965775, 30.004286, 43.421143>,  <35.115421, 29.634222, 43.446800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965775, 30.004286, 43.421143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049895, -0.048984, -0.997553,
		-0.926037, -0.376405, -0.027835,
		-0.374120, 0.925160, -0.064142,
		34.853539, 30.281834, 43.401901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620304, 29.675934, 42.918129>,  <35.115421, 29.634222, 43.446800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620304, 29.675934, 42.918129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663982, 30.073423, 42.927856>,  <34.690189, 30.311916, 42.933693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663982, 30.073423, 42.927856>,  <34.620304, 29.675934, 42.918129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663982, 30.073423, 42.927856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045759, 0.029465, -0.998518,
		-0.992967, 0.107920, 0.048689,
		0.109195, 0.993723, 0.024319,
		34.696739, 30.371540, 42.935154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162205, 30.098629, 42.465847>,  <34.620304, 29.675934, 42.918129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162205, 30.098629, 42.465847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485741, 30.330893, 42.502979>,  <34.679863, 30.470251, 42.525261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485741, 30.330893, 42.502979>,  <34.162205, 30.098629, 42.465847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485741, 30.330893, 42.502979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039513, 0.103848, -0.993808,
		-0.586705, 0.807496, 0.061052,
		0.808836, 0.580660, 0.092835,
		34.728390, 30.505091, 42.530830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989594, 30.683567, 41.988796>,  <34.162205, 30.098629, 42.465847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989594, 30.683567, 41.988796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374805, 30.734583, 42.083710>,  <34.605934, 30.765192, 42.140656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374805, 30.734583, 42.083710>,  <33.989594, 30.683567, 41.988796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374805, 30.734583, 42.083710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216689, 0.156554, -0.963606,
		-0.160043, 0.979400, 0.123131,
		0.963033, 0.127538, 0.237281,
		34.663715, 30.772844, 42.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216953, 31.377813, 41.685959>,  <33.989594, 30.683567, 41.988796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216953, 31.377813, 41.685959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550793, 31.166094, 41.747002>,  <34.751095, 31.039062, 41.783627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550793, 31.166094, 41.747002>,  <34.216953, 31.377813, 41.685959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550793, 31.166094, 41.747002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313758, 0.229058, -0.921460,
		0.452771, 0.816931, 0.357243,
		0.834598, -0.529298, 0.152608,
		34.801170, 31.007305, 41.792786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801903, 31.748837, 41.453888>,  <34.216953, 31.377813, 41.685959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801903, 31.748837, 41.453888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978817, 31.390181, 41.462082>,  <35.084965, 31.174986, 41.466999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978817, 31.390181, 41.462082>,  <34.801903, 31.748837, 41.453888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978817, 31.390181, 41.462082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558688, 0.257570, -0.788369,
		0.701609, 0.360126, 0.614861,
		0.442282, -0.896642, 0.020484,
		35.111500, 31.121187, 41.468227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560310, 31.921789, 41.282005>,  <34.801903, 31.748837, 41.453888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560310, 31.921789, 41.282005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449947, 31.544867, 41.206181>,  <35.383732, 31.318712, 41.160686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449947, 31.544867, 41.206181>,  <35.560310, 31.921789, 41.282005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449947, 31.544867, 41.206181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249579, 0.120222, -0.960863,
		0.928217, -0.312418, 0.202010,
		-0.275905, -0.942307, -0.189566,
		35.367176, 31.262175, 41.149311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945793, 31.787750, 40.712334>,  <35.560310, 31.921789, 41.282005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945793, 31.787750, 40.712334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.669991, 31.498457, 40.696754>,  <35.504509, 31.324881, 40.687408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.669991, 31.498457, 40.696754>,  <35.945793, 31.787750, 40.712334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669991, 31.498457, 40.696754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070245, -0.013256, -0.997442,
		0.720867, -0.690476, 0.059944,
		-0.689504, -0.723234, -0.038947,
		35.463139, 31.281487, 40.685070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560699, 31.380045, 40.709972>,  <35.945793, 31.787750, 40.712334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560699, 31.380045, 40.709972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940388, 31.496759, 40.662914>,  <37.168201, 31.566788, 40.634678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940388, 31.496759, 40.662914>,  <36.560699, 31.380045, 40.709972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940388, 31.496759, 40.662914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073433, 0.158135, 0.984683,
		0.305925, -0.943319, 0.128677,
		0.949219, 0.291790, -0.117649,
		37.225155, 31.584295, 40.627621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970585, 30.946920, 41.108631>,  <36.560699, 31.380045, 40.709972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970585, 30.946920, 41.108631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157207, 31.297176, 41.058697>,  <37.269180, 31.507330, 41.028736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157207, 31.297176, 41.058697>,  <36.970585, 30.946920, 41.108631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157207, 31.297176, 41.058697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135673, 0.068623, 0.988374,
		0.874025, -0.478067, -0.086784,
		0.466554, 0.875638, -0.124839,
		37.297173, 31.559868, 41.021244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498669, 30.897644, 41.601902>,  <36.970585, 30.946920, 41.108631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498669, 30.897644, 41.601902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529205, 31.279461, 41.486649>,  <37.547527, 31.508551, 41.417496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529205, 31.279461, 41.486649>,  <37.498669, 30.897644, 41.601902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529205, 31.279461, 41.486649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287459, 0.255640, 0.923047,
		0.954746, -0.153293, -0.254876,
		0.076340, 0.954542, -0.288136,
		37.552109, 31.565823, 41.400208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119949, 31.256344, 41.831444>,  <37.498669, 30.897644, 41.601902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119949, 31.256344, 41.831444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852066, 31.552208, 41.804939>,  <37.691334, 31.729727, 41.789036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852066, 31.552208, 41.804939>,  <38.119949, 31.256344, 41.831444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852066, 31.552208, 41.804939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093159, 0.172199, 0.980647,
		0.736756, 0.650577, -0.184230,
		-0.669710, 0.739661, -0.066261,
		37.651154, 31.774107, 41.785061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365643, 31.618097, 42.336632>,  <38.119949, 31.256344, 41.831444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365643, 31.618097, 42.336632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001591, 31.774012, 42.280434>,  <37.783161, 31.867561, 42.246716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001591, 31.774012, 42.280434>,  <38.365643, 31.618097, 42.336632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001591, 31.774012, 42.280434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052406, 0.228060, 0.972236,
		0.411006, 0.892219, -0.187136,
		-0.910125, 0.389788, -0.140491,
		37.728554, 31.890947, 42.238285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416676, 32.254784, 42.668907>,  <38.365643, 31.618097, 42.336632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416676, 32.254784, 42.668907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025410, 32.179577, 42.633476>,  <37.790649, 32.134453, 42.612217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025410, 32.179577, 42.633476>,  <38.416676, 32.254784, 42.668907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025410, 32.179577, 42.633476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126642, 0.201254, 0.971318,
		-0.164793, 0.961326, -0.220670,
		-0.978164, -0.188012, -0.088579,
		37.731960, 32.123173, 42.606903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088589, 32.828979, 43.006279>,  <38.416676, 32.254784, 42.668907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088589, 32.828979, 43.006279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798729, 32.553719, 43.020882>,  <37.624813, 32.388561, 43.029644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798729, 32.553719, 43.020882>,  <38.088589, 32.828979, 43.006279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798729, 32.553719, 43.020882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186697, 0.247044, 0.950849,
		-0.663350, 0.682212, -0.307496,
		-0.724646, -0.688154, 0.036510,
		37.581337, 32.347271, 43.031834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564892, 33.125916, 43.352009>,  <38.088589, 32.828979, 43.006279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564892, 33.125916, 43.352009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460407, 32.741848, 43.391701>,  <37.397717, 32.511406, 43.415516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460407, 32.741848, 43.391701>,  <37.564892, 33.125916, 43.352009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460407, 32.741848, 43.391701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210409, 0.156965, 0.964930,
		-0.942072, 0.231167, -0.243029,
		-0.261207, -0.960169, 0.099232,
		37.382046, 32.453796, 43.421471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017990, 33.064976, 43.738766>,  <37.564892, 33.125916, 43.352009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017990, 33.064976, 43.738766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164337, 32.693588, 43.764347>,  <37.252144, 32.470757, 43.779697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164337, 32.693588, 43.764347>,  <37.017990, 33.064976, 43.738766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164337, 32.693588, 43.764347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220117, -0.019558, 0.975277,
		-0.904263, -0.370896, -0.211527,
		0.365863, -0.928468, 0.063955,
		37.274097, 32.415047, 43.783535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495510, 32.593887, 44.107338>,  <37.017990, 33.064976, 43.738766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495510, 32.593887, 44.107338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846210, 32.403648, 44.135948>,  <37.056629, 32.289505, 44.153114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846210, 32.403648, 44.135948>,  <36.495510, 32.593887, 44.107338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846210, 32.403648, 44.135948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204580, -0.234193, 0.950421,
		-0.435268, -0.847914, -0.302627,
		0.876749, -0.475599, 0.071530,
		37.109234, 32.260967, 44.157406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371181, 31.924437, 44.489918>,  <36.495510, 32.593887, 44.107338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371181, 31.924437, 44.489918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764965, 31.980007, 44.532894>,  <37.001236, 32.013348, 44.558681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764965, 31.980007, 44.532894>,  <36.371181, 31.924437, 44.489918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764965, 31.980007, 44.532894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028855, -0.475505, 0.879240,
		0.173237, -0.868674, -0.464106,
		0.984457, 0.138925, 0.107441,
		37.060303, 32.021683, 44.565125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625961, 31.300987, 44.854115>,  <36.371181, 31.924437, 44.489918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625961, 31.300987, 44.854115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925594, 31.559223, 44.913555>,  <37.105373, 31.714165, 44.949219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925594, 31.559223, 44.913555>,  <36.625961, 31.300987, 44.854115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925594, 31.559223, 44.913555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042441, -0.270615, 0.961752,
		0.661111, -0.714129, -0.230113,
		0.749086, 0.645591, 0.148598,
		37.150322, 31.752901, 44.958134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972256, 30.991974, 45.376740>,  <36.625961, 31.300987, 44.854115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972256, 30.991974, 45.376740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091515, 31.373777, 45.378761>,  <37.163071, 31.602859, 45.379974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091515, 31.373777, 45.378761>,  <36.972256, 30.991974, 45.376740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091515, 31.373777, 45.378761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053695, -0.022060, 0.998314,
		0.953010, -0.297369, -0.057829,
		0.298143, 0.954508, 0.005056,
		37.180958, 31.660130, 45.380280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647980, 31.073668, 45.738136>,  <36.972256, 30.991974, 45.376740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647980, 31.073668, 45.738136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468395, 31.430632, 45.756195>,  <37.360645, 31.644810, 45.767029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468395, 31.430632, 45.756195>,  <37.647980, 31.073668, 45.738136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468395, 31.430632, 45.756195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055029, -0.078039, 0.995430,
		0.891856, 0.444424, 0.084145,
		-0.448959, 0.892411, 0.045143,
		37.333706, 31.698355, 45.769737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.580210, 34.588314, 46.349426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776846, 34.260632, 46.231281>,  <30.894827, 34.064022, 46.160393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776846, 34.260632, 46.231281>,  <30.580210, 34.588314, 46.349426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776846, 34.260632, 46.231281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349462, 0.496249, -0.794741,
		0.797632, 0.287466, 0.530232,
		0.491589, -0.819207, -0.295366,
		30.924322, 34.014870, 46.142670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120995, 34.829243, 46.031494>,  <30.580210, 34.588314, 46.349426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120995, 34.829243, 46.031494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075151, 34.463352, 45.876503>,  <31.047646, 34.243816, 45.783508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075151, 34.463352, 45.876503>,  <31.120995, 34.829243, 46.031494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075151, 34.463352, 45.876503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213990, 0.358162, -0.908806,
		0.970089, -0.187074, 0.154694,
		-0.114608, -0.914726, -0.387481,
		31.040770, 34.188934, 45.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823643, 34.518810, 45.732651>,  <31.120995, 34.829243, 46.031494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823643, 34.518810, 45.732651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491592, 34.381718, 45.556732>,  <31.292362, 34.299461, 45.451180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491592, 34.381718, 45.556732>,  <31.823643, 34.518810, 45.732651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491592, 34.381718, 45.556732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296456, 0.396741, -0.868741,
		0.472231, -0.851547, -0.227741,
		-0.830128, -0.342731, -0.439800,
		31.242554, 34.278896, 45.424793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062057, 34.619583, 45.072540>,  <31.823643, 34.518810, 45.732651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062057, 34.619583, 45.072540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.718596, 34.425430, 45.006672>,  <31.512518, 34.308937, 44.967152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.718596, 34.425430, 45.006672>,  <32.062057, 34.619583, 45.072540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718596, 34.425430, 45.006672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014260, 0.298533, -0.954293,
		0.512357, -0.821756, -0.249416,
		-0.858655, -0.485382, -0.164674,
		31.460999, 34.279816, 44.957272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173897, 34.189526, 44.469891>,  <32.062057, 34.619583, 45.072540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173897, 34.189526, 44.469891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783979, 34.270340, 44.507771>,  <31.550030, 34.318829, 44.530499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783979, 34.270340, 44.507771>,  <32.173897, 34.189526, 44.469891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783979, 34.270340, 44.507771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008825, 0.389177, -0.921121,
		-0.222952, -0.898734, -0.377583,
		-0.974790, 0.202033, 0.094699,
		31.491543, 34.330952, 44.536179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775028, 33.868698, 43.837013>,  <32.173897, 34.189526, 44.469891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775028, 33.868698, 43.837013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550179, 34.157623, 43.998150>,  <31.415268, 34.330978, 44.094830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550179, 34.157623, 43.998150>,  <31.775028, 33.868698, 43.837013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550179, 34.157623, 43.998150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112215, 0.415962, -0.902432,
		-0.819405, -0.552483, -0.152767,
		-0.562123, 0.722315, 0.402838,
		31.381542, 34.374317, 44.118999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304012, 33.976273, 43.320911>,  <31.775028, 33.868698, 43.837013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304012, 33.976273, 43.320911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278284, 34.295414, 43.560677>,  <31.262848, 34.486897, 43.704536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278284, 34.295414, 43.560677>,  <31.304012, 33.976273, 43.320911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278284, 34.295414, 43.560677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236353, 0.571390, -0.785907,
		-0.969536, -0.192224, 0.151822,
		-0.064321, 0.797849, 0.599416,
		31.258987, 34.534767, 43.740501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720333, 34.239052, 43.116089>,  <31.304012, 33.976273, 43.320911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720333, 34.239052, 43.116089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.911430, 34.543289, 43.291931>,  <31.026089, 34.725834, 43.397438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.911430, 34.543289, 43.291931>,  <30.720333, 34.239052, 43.116089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911430, 34.543289, 43.291931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156292, 0.566011, -0.809447,
		-0.864484, 0.318002, 0.389284,
		0.477745, 0.760596, 0.439606,
		31.054754, 34.771469, 43.423813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281872, 34.777855, 42.966198>,  <30.720333, 34.239052, 43.116089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281872, 34.777855, 42.966198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619164, 34.961449, 43.078125>,  <30.821539, 35.071606, 43.145283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619164, 34.961449, 43.078125>,  <30.281872, 34.777855, 42.966198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619164, 34.961449, 43.078125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033893, 0.564901, -0.824462,
		-0.536482, 0.685728, 0.491898,
		0.843231, 0.458981, 0.279818,
		30.872133, 35.099144, 43.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170490, 35.435223, 42.954739>,  <30.281872, 34.777855, 42.966198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170490, 35.435223, 42.954739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564323, 35.385540, 42.905472>,  <30.800623, 35.355732, 42.875912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564323, 35.385540, 42.905472>,  <30.170490, 35.435223, 42.954739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564323, 35.385540, 42.905472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058984, 0.427135, -0.902262,
		0.164672, 0.895617, 0.413224,
		0.984583, -0.124204, -0.123164,
		30.859699, 35.348278, 42.868523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450684, 36.126225, 42.651928>,  <30.170490, 35.435223, 42.954739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450684, 36.126225, 42.651928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.743097, 35.861835, 42.584160>,  <30.918547, 35.703201, 42.543499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.743097, 35.861835, 42.584160>,  <30.450684, 36.126225, 42.651928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743097, 35.861835, 42.584160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234058, 0.476141, -0.847648,
		0.640939, 0.580007, 0.502782,
		0.731036, -0.660971, -0.169422,
		30.962408, 35.663544, 42.533333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980453, 36.552811, 42.419682>,  <30.450684, 36.126225, 42.651928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980453, 36.552811, 42.419682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091179, 36.195328, 42.278454>,  <31.157614, 35.980839, 42.193718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091179, 36.195328, 42.278454>,  <30.980453, 36.552811, 42.419682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091179, 36.195328, 42.278454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448224, 0.445092, -0.775235,
		0.849982, 0.056343, 0.523790,
		0.276814, -0.893711, -0.353066,
		31.174223, 35.927216, 42.172535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636492, 36.632675, 42.106861>,  <30.980453, 36.552811, 42.419682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636492, 36.632675, 42.106861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.490902, 36.296700, 41.945847>,  <31.403549, 36.095116, 41.849239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.490902, 36.296700, 41.945847>,  <31.636492, 36.632675, 42.106861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490902, 36.296700, 41.945847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195119, 0.353828, -0.914732,
		0.910743, -0.411479, 0.035104,
		-0.363973, -0.839935, -0.402533,
		31.381710, 36.044720, 41.825085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183403, 36.262691, 41.705967>,  <31.636492, 36.632675, 42.106861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183403, 36.262691, 41.705967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819630, 36.177773, 41.562939>,  <31.601366, 36.126820, 41.477123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819630, 36.177773, 41.562939>,  <32.183403, 36.262691, 41.705967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819630, 36.177773, 41.562939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278043, 0.328967, -0.902481,
		0.309218, -0.920170, -0.240149,
		-0.909437, -0.212292, -0.357569,
		31.546799, 36.114082, 41.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942211, 36.023117, 41.479057>,  <32.183403, 36.262691, 41.705967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942211, 36.023117, 41.479057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153847, 36.350735, 41.567814>,  <33.280827, 36.547306, 41.621067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153847, 36.350735, 41.567814>,  <32.942211, 36.023117, 41.479057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153847, 36.350735, 41.567814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023135, -0.275313, 0.961076,
		0.848252, -0.503360, -0.164613,
		0.529087, 0.819043, 0.221890,
		33.312572, 36.596447, 41.634380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443478, 35.846611, 42.031139>,  <32.942211, 36.023117, 41.479057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443478, 35.846611, 42.031139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487793, 36.243526, 42.053402>,  <33.514381, 36.481674, 42.066761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487793, 36.243526, 42.053402>,  <33.443478, 35.846611, 42.031139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487793, 36.243526, 42.053402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283811, -0.085261, 0.955082,
		0.952458, -0.090019, -0.291067,
		0.110792, 0.992284, 0.055659,
		33.521030, 36.541210, 42.070099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110638, 35.932964, 42.349262>,  <33.443478, 35.846611, 42.031139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110638, 35.932964, 42.349262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895035, 36.258438, 42.436337>,  <33.765675, 36.453724, 42.488583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895035, 36.258438, 42.436337>,  <34.110638, 35.932964, 42.349262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895035, 36.258438, 42.436337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412750, 0.029865, 0.910355,
		0.734241, 0.580538, -0.351946,
		-0.539007, 0.813685, 0.217689,
		33.733334, 36.502544, 42.501644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403923, 36.255802, 42.863651>,  <34.110638, 35.932964, 42.349262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403923, 36.255802, 42.863651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.041191, 36.413902, 42.922218>,  <33.823551, 36.508762, 42.957359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.041191, 36.413902, 42.922218>,  <34.403923, 36.255802, 42.863651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041191, 36.413902, 42.922218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125261, -0.078959, 0.988977,
		0.402450, 0.915175, 0.022093,
		-0.906832, 0.395246, 0.146413,
		33.769142, 36.532475, 42.966141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576057, 36.604527, 43.480099>,  <34.403923, 36.255802, 42.863651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576057, 36.604527, 43.480099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179413, 36.611732, 43.428909>,  <33.941425, 36.616055, 43.398197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179413, 36.611732, 43.428909>,  <34.576057, 36.604527, 43.480099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179413, 36.611732, 43.428909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128380, -0.023561, 0.991445,
		0.014846, 0.999560, 0.025676,
		-0.991614, 0.018015, -0.127974,
		33.881927, 36.617138, 43.390518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340069, 37.128372, 43.954193>,  <34.576057, 36.604527, 43.480099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340069, 37.128372, 43.954193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015404, 36.899853, 43.905483>,  <33.820606, 36.762741, 43.876259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015404, 36.899853, 43.905483>,  <34.340069, 37.128372, 43.954193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015404, 36.899853, 43.905483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184186, 0.052468, 0.981490,
		-0.554330, 0.819066, -0.147811,
		-0.811661, -0.571294, -0.121776,
		33.771904, 36.728466, 43.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746925, 37.452305, 44.290161>,  <34.340069, 37.128372, 43.954193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746925, 37.452305, 44.290161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680222, 37.057968, 44.283066>,  <33.640202, 36.821365, 44.278809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680222, 37.057968, 44.283066>,  <33.746925, 37.452305, 44.290161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680222, 37.057968, 44.283066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048251, -0.009812, 0.998787,
		-0.984817, 0.167410, -0.045931,
		-0.166756, -0.985838, -0.017740,
		33.630196, 36.762215, 44.277744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150021, 37.331207, 44.707901>,  <33.746925, 37.452305, 44.290161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150021, 37.331207, 44.707901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300831, 36.961975, 44.677490>,  <33.391315, 36.740437, 44.659245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300831, 36.961975, 44.677490>,  <33.150021, 37.331207, 44.707901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300831, 36.961975, 44.677490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160235, -0.145855, 0.976243,
		-0.912238, -0.355884, -0.202900,
		0.377024, -0.923078, -0.076029,
		33.413937, 36.685051, 44.654682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722031, 36.963776, 45.072495>,  <33.150021, 37.331207, 44.707901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722031, 36.963776, 45.072495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030098, 36.710201, 45.044304>,  <33.214939, 36.558056, 45.027390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030098, 36.710201, 45.044304>,  <32.722031, 36.963776, 45.072495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030098, 36.710201, 45.044304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196142, -0.340523, 0.919550,
		-0.606932, -0.694386, -0.386602,
		0.770170, -0.633933, -0.070476,
		33.261150, 36.520023, 45.023163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474190, 36.295826, 45.200459>,  <32.722031, 36.963776, 45.072495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474190, 36.295826, 45.200459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863304, 36.257969, 45.285049>,  <33.096775, 36.235252, 45.335804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863304, 36.257969, 45.285049>,  <32.474190, 36.295826, 45.200459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863304, 36.257969, 45.285049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229239, -0.525575, 0.819280,
		0.033607, -0.845466, -0.532971,
		0.972790, -0.094644, 0.211476,
		33.155140, 36.229576, 45.348492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582779, 35.562130, 45.384930>,  <32.474190, 36.295826, 45.200459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582779, 35.562130, 45.384930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896023, 35.757908, 45.538391>,  <33.083969, 35.875374, 45.630466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896023, 35.757908, 45.538391>,  <32.582779, 35.562130, 45.384930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896023, 35.757908, 45.538391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156865, -0.441505, 0.883440,
		0.601778, -0.752010, -0.268969,
		0.783107, 0.489443, 0.383653,
		33.130955, 35.904739, 45.653488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035061, 35.051624, 45.548252>,  <32.582779, 35.562130, 45.384930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035061, 35.051624, 45.548252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133099, 35.361351, 45.781616>,  <33.191921, 35.547188, 45.921635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133099, 35.361351, 45.781616>,  <33.035061, 35.051624, 45.548252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133099, 35.361351, 45.781616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251648, -0.530326, 0.809585,
		0.936271, -0.345237, 0.064876,
		0.245093, 0.774316, 0.583407,
		33.206627, 35.593647, 45.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376366, 34.689175, 46.037647>,  <33.035061, 35.051624, 45.548252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376366, 34.689175, 46.037647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322556, 35.041363, 46.219490>,  <33.290268, 35.252678, 46.328598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322556, 35.041363, 46.219490>,  <33.376366, 34.689175, 46.037647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322556, 35.041363, 46.219490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038553, -0.463084, 0.885476,
		0.990159, 0.101594, 0.096242,
		-0.134528, 0.880472, 0.454610,
		33.282196, 35.305504, 46.355873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926033, 34.724480, 46.603672>,  <33.376366, 34.689175, 46.037647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926033, 34.724480, 46.603672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637035, 34.990913, 46.677803>,  <33.463638, 35.150772, 46.722282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637035, 34.990913, 46.677803>,  <33.926033, 34.724480, 46.603672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637035, 34.990913, 46.677803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048355, -0.316074, 0.947502,
		0.689688, 0.675600, 0.260569,
		-0.722490, 0.666080, 0.185324,
		33.420288, 35.190739, 46.733398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638107, 35.001930, 46.744549>,  <33.926033, 34.724480, 46.603672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638107, 35.001930, 46.744549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928638, 34.726997, 46.746582>,  <35.102955, 34.562038, 46.747803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928638, 34.726997, 46.746582>,  <34.638107, 35.001930, 46.744549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928638, 34.726997, 46.746582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253994, 0.261519, -0.931179,
		0.638700, 0.677630, 0.364526,
		0.726326, -0.687332, 0.005082,
		35.146538, 34.520798, 46.748108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169701, 35.368729, 46.511860>,  <34.638107, 35.001930, 46.744549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169701, 35.368729, 46.511860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270420, 34.985584, 46.456570>,  <35.330853, 34.755699, 46.423393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270420, 34.985584, 46.456570>,  <35.169701, 35.368729, 46.511860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270420, 34.985584, 46.456570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080784, 0.163134, -0.983291,
		0.964403, 0.236423, 0.118456,
		0.251797, -0.957858, -0.138228,
		35.345959, 34.698227, 46.415100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794842, 35.408428, 46.128193>,  <35.169701, 35.368729, 46.511860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794842, 35.408428, 46.128193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.651775, 35.037655, 46.082821>,  <35.565937, 34.815189, 46.055595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.651775, 35.037655, 46.082821>,  <35.794842, 35.408428, 46.128193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651775, 35.037655, 46.082821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138208, 0.067589, -0.988094,
		0.923565, -0.369086, 0.103935,
		-0.357667, -0.926934, -0.113433,
		35.544476, 34.759575, 46.048790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292255, 34.990852, 45.828583>,  <35.794842, 35.408428, 46.128193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292255, 34.990852, 45.828583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954369, 34.794876, 45.742416>,  <35.751637, 34.677288, 45.690716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954369, 34.794876, 45.742416>,  <36.292255, 34.990852, 45.828583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954369, 34.794876, 45.742416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272399, -0.047107, -0.961031,
		0.460705, -0.870479, 0.173252,
		-0.844719, -0.489945, -0.215415,
		35.700954, 34.647892, 45.677792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510735, 34.480751, 45.343693>,  <36.292255, 34.990852, 45.828583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510735, 34.480751, 45.343693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113342, 34.482132, 45.298119>,  <35.874905, 34.482960, 45.270775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113342, 34.482132, 45.298119>,  <36.510735, 34.480751, 45.343693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113342, 34.482132, 45.298119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113701, -0.040702, -0.992681,
		-0.008060, -0.999165, 0.040045,
		-0.993482, 0.003447, -0.113934,
		35.815296, 34.483166, 45.263939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310184, 33.885971, 44.909885>,  <36.510735, 34.480751, 45.343693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310184, 33.885971, 44.909885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023392, 34.164520, 44.897255>,  <35.851315, 34.331650, 44.889675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023392, 34.164520, 44.897255>,  <36.310184, 33.885971, 44.909885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023392, 34.164520, 44.897255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017001, -0.027813, -0.999469,
		-0.696884, -0.717138, 0.008102,
		-0.716982, 0.696376, -0.031575,
		35.808296, 34.373432, 44.887783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859409, 33.652920, 44.374390>,  <36.310184, 33.885971, 44.909885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859409, 33.652920, 44.374390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795700, 34.043968, 44.429367>,  <35.757473, 34.278599, 44.462353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795700, 34.043968, 44.429367>,  <35.859409, 33.652920, 44.374390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795700, 34.043968, 44.429367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103189, 0.154948, -0.982519,
		-0.981827, -0.142306, -0.125559,
		-0.159274, 0.977620, 0.137448,
		35.747917, 34.337254, 44.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447632, 33.817371, 43.799248>,  <35.859409, 33.652920, 44.374390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447632, 33.817371, 43.799248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548496, 34.183540, 43.924740>,  <35.609013, 34.403240, 44.000034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548496, 34.183540, 43.924740>,  <35.447632, 33.817371, 43.799248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548496, 34.183540, 43.924740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053522, 0.310514, -0.949061,
		-0.966204, 0.256106, 0.029304,
		0.252159, 0.915418, 0.313727,
		35.624146, 34.458164, 44.018860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948341, 34.210125, 43.591415>,  <35.447632, 33.817371, 43.799248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948341, 34.210125, 43.591415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284851, 34.422112, 43.634106>,  <35.486755, 34.549305, 43.659721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284851, 34.422112, 43.634106>,  <34.948341, 34.210125, 43.591415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284851, 34.422112, 43.634106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010518, 0.181333, -0.983366,
		-0.540506, 0.828403, 0.146977,
		0.841275, 0.529969, 0.106724,
		35.537235, 34.581100, 43.666122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881130, 34.855530, 43.137138>,  <34.948341, 34.210125, 43.591415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881130, 34.855530, 43.137138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273983, 34.827991, 43.207195>,  <35.509693, 34.811470, 43.249229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273983, 34.827991, 43.207195>,  <34.881130, 34.855530, 43.137138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273983, 34.827991, 43.207195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187522, 0.279780, -0.941573,
		0.015822, 0.957593, 0.287691,
		0.982133, -0.068846, 0.175143,
		35.568623, 34.807339, 43.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249638, 35.383900, 42.800930>,  <34.881130, 34.855530, 43.137138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249638, 35.383900, 42.800930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519665, 35.088943, 42.810249>,  <35.681683, 34.911972, 42.815842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519665, 35.088943, 42.810249>,  <35.249638, 35.383900, 42.800930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519665, 35.088943, 42.810249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182992, 0.136765, -0.973555,
		0.714701, 0.661479, 0.227261,
		0.675068, -0.737388, 0.023299,
		35.722183, 34.867725, 42.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809357, 35.724445, 42.414200>,  <35.249638, 35.383900, 42.800930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809357, 35.724445, 42.414200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935036, 35.346252, 42.448456>,  <36.010445, 35.119335, 42.469009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935036, 35.346252, 42.448456>,  <35.809357, 35.724445, 42.414200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935036, 35.346252, 42.448456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459326, 0.072454, -0.885308,
		0.830842, 0.317499, 0.457052,
		0.314200, -0.945486, 0.085638,
		36.029297, 35.062607, 42.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509750, 35.756966, 42.179737>,  <35.809357, 35.724445, 42.414200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509750, 35.756966, 42.179737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.428627, 35.369083, 42.125263>,  <36.379955, 35.136356, 42.092579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.428627, 35.369083, 42.125263>,  <36.509750, 35.756966, 42.179737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428627, 35.369083, 42.125263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544969, 0.003778, -0.838448,
		0.813559, -0.244261, 0.527692,
		-0.202806, -0.969702, -0.136188,
		36.367786, 35.078175, 42.084408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152889, 35.543983, 41.876682>,  <36.509750, 35.756966, 42.179737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152889, 35.543983, 41.876682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885220, 35.258842, 41.792732>,  <36.724617, 35.087757, 41.742363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885220, 35.258842, 41.792732>,  <37.152889, 35.543983, 41.876682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885220, 35.258842, 41.792732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485768, -0.205897, -0.849491,
		0.562348, -0.670409, 0.484062,
		-0.669173, -0.712852, -0.209878,
		36.684467, 35.044987, 41.729771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.113554, 29.963226, 36.419765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387508, 30.233429, 36.529034>,  <29.551880, 30.395550, 36.594597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387508, 30.233429, 36.529034>,  <29.113554, 29.963226, 36.419765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387508, 30.233429, 36.529034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604323, 0.736051, -0.304995,
		-0.407096, 0.043801, 0.912335,
		0.684884, 0.675507, 0.273173,
		29.592974, 30.436081, 36.610985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878893, 30.447058, 36.943199>,  <29.113554, 29.963226, 36.419765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878893, 30.447058, 36.943199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172899, 30.647598, 36.760597>,  <29.349304, 30.767923, 36.651035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172899, 30.647598, 36.760597>,  <28.878893, 30.447058, 36.943199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172899, 30.647598, 36.760597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619882, 0.769680, -0.152774,
		0.274767, 0.395269, 0.876507,
		0.735017, 0.501354, -0.456503,
		29.393404, 30.798004, 36.623646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897070, 31.084898, 37.272308>,  <28.878893, 30.447058, 36.943199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897070, 31.084898, 37.272308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139662, 31.158434, 36.962887>,  <29.285217, 31.202555, 36.777233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139662, 31.158434, 36.962887>,  <28.897070, 31.084898, 37.272308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139662, 31.158434, 36.962887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375566, 0.923763, -0.074911,
		0.700809, 0.335953, 0.629287,
		0.606479, 0.183840, -0.773554,
		29.321606, 31.213587, 36.730820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129641, 31.718100, 37.451511>,  <28.897070, 31.084898, 37.272308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129641, 31.718100, 37.451511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184349, 31.668879, 37.058338>,  <29.217175, 31.639347, 36.822433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184349, 31.668879, 37.058338>,  <29.129641, 31.718100, 37.451511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184349, 31.668879, 37.058338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377600, 0.910864, -0.166571,
		0.915812, 0.393937, 0.078117,
		0.136772, -0.123051, -0.982930,
		29.225380, 31.631964, 36.763458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421322, 32.370625, 37.258854>,  <29.129641, 31.718100, 37.451511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421322, 32.370625, 37.258854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281620, 32.195831, 36.927296>,  <29.197798, 32.090958, 36.728359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281620, 32.195831, 36.927296>,  <29.421322, 32.370625, 37.258854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281620, 32.195831, 36.927296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443285, 0.856406, -0.264702,
		0.825541, 0.274987, -0.492813,
		-0.349258, -0.436979, -0.828896,
		29.176844, 32.064739, 36.678627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459894, 32.952457, 36.745914>,  <29.421322, 32.370625, 37.258854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459894, 32.952457, 36.745914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217823, 32.690575, 36.564754>,  <29.072580, 32.533443, 36.456059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217823, 32.690575, 36.564754>,  <29.459894, 32.952457, 36.745914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217823, 32.690575, 36.564754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522047, 0.755878, -0.395114,
		0.601019, -0.002681, -0.799230,
		-0.605180, -0.654707, -0.452898,
		29.036270, 32.494164, 36.428886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432394, 33.174244, 36.067440>,  <29.459894, 32.952457, 36.745914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432394, 33.174244, 36.067440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110979, 32.943481, 36.126106>,  <28.918131, 32.805023, 36.161308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110979, 32.943481, 36.126106>,  <29.432394, 33.174244, 36.067440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110979, 32.943481, 36.126106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569267, 0.672747, -0.472596,
		0.173971, -0.463242, -0.868988,
		-0.803536, -0.576904, 0.146670,
		28.869919, 32.770409, 36.170109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071869, 33.152866, 35.364738>,  <29.432394, 33.174244, 36.067440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071869, 33.152866, 35.364738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809540, 33.051933, 35.649334>,  <28.652142, 32.991375, 35.820091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809540, 33.051933, 35.649334>,  <29.071869, 33.152866, 35.364738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809540, 33.051933, 35.649334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653360, 0.661859, -0.367510,
		-0.378173, -0.705883, -0.598928,
		-0.655825, -0.252334, 0.711493,
		28.612793, 32.976234, 35.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470438, 33.048885, 35.057934>,  <29.071869, 33.152866, 35.364738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470438, 33.048885, 35.057934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393147, 33.139473, 35.439796>,  <28.346771, 33.193825, 35.668915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393147, 33.139473, 35.439796>,  <28.470438, 33.048885, 35.057934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393147, 33.139473, 35.439796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566623, 0.768585, -0.297012,
		-0.801001, -0.598323, -0.020190,
		-0.193226, 0.226467, 0.954660,
		28.335178, 33.207413, 35.726196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759790, 33.248558, 35.100311>,  <28.470438, 33.048885, 35.057934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759790, 33.248558, 35.100311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909788, 33.382671, 35.446018>,  <27.999786, 33.463139, 35.653442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909788, 33.382671, 35.446018>,  <27.759790, 33.248558, 35.100311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909788, 33.382671, 35.446018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531783, 0.841456, -0.095698,
		-0.759331, -0.423718, 0.493840,
		0.374996, 0.335282, 0.864271,
		28.022287, 33.483257, 35.705299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257906, 33.491932, 35.412880>,  <27.759790, 33.248558, 35.100311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257906, 33.491932, 35.412880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536667, 33.667034, 35.640106>,  <27.703924, 33.772095, 35.776443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536667, 33.667034, 35.640106>,  <27.257906, 33.491932, 35.412880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536667, 33.667034, 35.640106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561486, 0.825822, 0.052452,
		-0.446163, -0.355516, 0.821308,
		0.696902, 0.437752, 0.568068,
		27.745737, 33.798359, 35.810528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903662, 33.774609, 36.020508>,  <27.257906, 33.491932, 35.412880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903662, 33.774609, 36.020508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246475, 33.975922, 35.976326>,  <27.452164, 34.096710, 35.949818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246475, 33.975922, 35.976326>,  <26.903662, 33.774609, 36.020508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246475, 33.975922, 35.976326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509139, 0.860111, -0.031415,
		0.079190, 0.083159, 0.993385,
		0.857033, 0.503284, -0.110452,
		27.503586, 34.126907, 35.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885397, 34.269245, 36.469746>,  <26.903662, 33.774609, 36.020508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885397, 34.269245, 36.469746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151459, 34.393154, 36.197975>,  <27.311096, 34.467499, 36.034912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151459, 34.393154, 36.197975>,  <26.885397, 34.269245, 36.469746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151459, 34.393154, 36.197975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502507, 0.858720, -0.100436,
		0.552321, 0.408219, 0.726842,
		0.665153, 0.309770, -0.679422,
		27.351006, 34.486084, 35.994148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046152, 35.069687, 36.613174>,  <26.885397, 34.269245, 36.469746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046152, 35.069687, 36.613174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185991, 35.019577, 36.241779>,  <27.269896, 34.989510, 36.018944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185991, 35.019577, 36.241779>,  <27.046152, 35.069687, 36.613174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185991, 35.019577, 36.241779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532353, 0.788934, -0.306893,
		0.770961, 0.601572, 0.209119,
		0.349600, -0.125278, -0.928486,
		27.290871, 34.981995, 35.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434473, 35.645618, 36.386482>,  <27.046152, 35.069687, 36.613174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434473, 35.645618, 36.386482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257893, 35.444927, 36.088921>,  <27.151945, 35.324512, 35.910385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257893, 35.444927, 36.088921>,  <27.434473, 35.645618, 36.386482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257893, 35.444927, 36.088921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594310, 0.784626, -0.176514,
		0.672248, 0.364187, -0.644554,
		-0.441450, -0.501726, -0.743903,
		27.125458, 35.294411, 35.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304871, 36.135372, 35.873981>,  <27.434473, 35.645618, 36.386482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304871, 36.135372, 35.873981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060068, 35.847336, 35.743187>,  <26.913187, 35.674515, 35.664711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060068, 35.847336, 35.743187>,  <27.304871, 36.135372, 35.873981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060068, 35.847336, 35.743187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695641, 0.686840, -0.210558,
		0.376208, 0.098603, -0.921274,
		-0.612006, -0.720090, -0.326987,
		26.876467, 35.631310, 35.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158976, 36.375629, 35.235195>,  <27.304871, 36.135372, 35.873981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158976, 36.375629, 35.235195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866747, 36.111954, 35.306446>,  <26.691410, 35.953747, 35.349197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866747, 36.111954, 35.306446>,  <27.158976, 36.375629, 35.235195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866747, 36.111954, 35.306446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666652, 0.632104, -0.394993,
		0.147783, -0.407319, -0.901250,
		-0.730572, -0.659193, 0.178125,
		26.647575, 35.914196, 35.359882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762636, 36.449295, 34.639694>,  <27.158976, 36.375629, 35.235195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762636, 36.449295, 34.639694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513474, 36.264744, 34.892399>,  <26.363976, 36.154015, 35.044022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513474, 36.264744, 34.892399>,  <26.762636, 36.449295, 34.639694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513474, 36.264744, 34.892399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771286, 0.497212, -0.397364,
		-0.130783, -0.734788, -0.665569,
		-0.622907, -0.461376, 0.631759,
		26.326601, 36.126331, 35.081928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978022, 36.538845, 34.054729>,  <26.762636, 36.449295, 34.639694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978022, 36.538845, 34.054729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878742, 36.262726, 33.782879>,  <26.819176, 36.097054, 33.619770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878742, 36.262726, 33.782879>,  <26.978022, 36.538845, 34.054729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878742, 36.262726, 33.782879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398370, -0.712239, 0.577943,
		-0.883006, -0.127297, 0.451769,
		-0.248197, -0.690298, -0.679623,
		26.804283, 36.055637, 33.578991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405245, 36.277969, 33.604443>,  <26.978022, 36.538845, 34.054729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405245, 36.277969, 33.604443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772863, 36.434860, 33.588882>,  <27.993435, 36.528996, 33.579544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772863, 36.434860, 33.588882>,  <27.405245, 36.277969, 33.604443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772863, 36.434860, 33.588882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364921, -0.884042, -0.292065,
		-0.148948, 0.254224, -0.955607,
		0.919047, 0.392223, -0.038905,
		28.048578, 36.552528, 33.577209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557726, 36.194901, 32.801941>,  <27.405245, 36.277969, 33.604443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557726, 36.194901, 32.801941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853043, 36.179199, 33.071278>,  <28.030231, 36.169777, 33.232880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853043, 36.179199, 33.071278>,  <27.557726, 36.194901, 32.801941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853043, 36.179199, 33.071278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343200, -0.837543, -0.425130,
		0.580639, 0.544960, -0.604878,
		0.738290, -0.039253, 0.673340,
		28.074530, 36.167423, 33.273281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175270, 35.877430, 32.438885>,  <27.557726, 36.194901, 32.801941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175270, 35.877430, 32.438885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282764, 35.821953, 32.820156>,  <28.347261, 35.788666, 33.048920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282764, 35.821953, 32.820156>,  <28.175270, 35.877430, 32.438885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282764, 35.821953, 32.820156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291465, -0.931477, -0.217713,
		0.918057, 0.336325, -0.209898,
		0.268738, -0.138695, 0.953176,
		28.363386, 35.780346, 33.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787777, 35.456333, 32.410706>,  <28.175270, 35.877430, 32.438885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787777, 35.456333, 32.410706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630457, 35.419624, 32.776634>,  <28.536066, 35.397598, 32.996189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630457, 35.419624, 32.776634>,  <28.787777, 35.456333, 32.410706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630457, 35.419624, 32.776634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300910, -0.953055, 0.033762,
		0.868775, 0.288556, 0.402450,
		-0.393299, -0.091770, 0.914819,
		28.512466, 35.392094, 33.051079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224472, 34.901878, 32.815392>,  <28.787777, 35.456333, 32.410706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224472, 34.901878, 32.815392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884565, 34.941849, 33.022430>,  <28.680620, 34.965832, 33.146656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884565, 34.941849, 33.022430>,  <29.224472, 34.901878, 32.815392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884565, 34.941849, 33.022430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032959, -0.990019, 0.137025,
		0.526126, 0.099380, 0.844580,
		-0.849768, 0.099929, 0.517599,
		28.629635, 34.971828, 33.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318663, 34.433430, 33.288445>,  <29.224472, 34.901878, 32.815392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318663, 34.433430, 33.288445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928631, 34.518028, 33.261635>,  <28.694613, 34.568787, 33.245548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928631, 34.518028, 33.261635>,  <29.318663, 34.433430, 33.288445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928631, 34.518028, 33.261635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218459, -0.967974, 0.123697,
		-0.038719, 0.135257, 0.990054,
		-0.975078, 0.211497, -0.067027,
		28.636108, 34.581478, 33.241528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033598, 34.177067, 33.876526>,  <29.318663, 34.433430, 33.288445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033598, 34.177067, 33.876526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744055, 34.192238, 33.600964>,  <28.570328, 34.201340, 33.435627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744055, 34.192238, 33.600964>,  <29.033598, 34.177067, 33.876526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744055, 34.192238, 33.600964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123678, -0.989447, 0.075484,
		-0.678772, 0.139842, 0.720911,
		-0.723859, 0.037924, -0.688905,
		28.526897, 34.203613, 33.394291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473537, 33.737324, 34.170231>,  <29.033598, 34.177067, 33.876526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473537, 33.737324, 34.170231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.411079, 33.781681, 33.777634>,  <28.373606, 33.808296, 33.542076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.411079, 33.781681, 33.777634>,  <28.473537, 33.737324, 34.170231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411079, 33.781681, 33.777634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330494, -0.942269, -0.053884,
		-0.930802, 0.315962, 0.183779,
		-0.156144, 0.110893, -0.981489,
		28.364237, 33.814949, 33.483189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811968, 33.603271, 34.071304>,  <28.473537, 33.737324, 34.170231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811968, 33.603271, 34.071304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977674, 33.521774, 33.716480>,  <28.077099, 33.472874, 33.503586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977674, 33.521774, 33.716480>,  <27.811968, 33.603271, 34.071304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977674, 33.521774, 33.716480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487046, -0.872961, -0.026948,
		-0.768875, 0.443201, -0.460874,
		0.414269, -0.203747, -0.887056,
		28.101955, 33.460651, 33.450363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259401, 33.172604, 33.724659>,  <27.811968, 33.603271, 34.071304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259401, 33.172604, 33.724659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597752, 33.124092, 33.516895>,  <27.800762, 33.094986, 33.392239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597752, 33.124092, 33.516895>,  <27.259401, 33.172604, 33.724659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597752, 33.124092, 33.516895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288202, -0.923334, -0.253759,
		-0.448810, 0.364343, -0.815980,
		0.845878, -0.121278, -0.519406,
		27.851515, 33.087708, 33.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019524, 32.880032, 33.130699>,  <27.259401, 33.172604, 33.724659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019524, 32.880032, 33.130699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406733, 32.779839, 33.136295>,  <27.639057, 32.719723, 33.139652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406733, 32.779839, 33.136295>,  <27.019524, 32.880032, 33.130699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406733, 32.779839, 33.136295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241178, -0.944524, -0.222951,
		0.069057, 0.212448, -0.974729,
		0.968021, -0.250479, 0.013989,
		27.697140, 32.704693, 33.140491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196404, 32.463509, 32.486862>,  <27.019524, 32.880032, 33.130699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196404, 32.463509, 32.486862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476616, 32.388992, 32.762413>,  <27.644743, 32.344284, 32.927742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476616, 32.388992, 32.762413>,  <27.196404, 32.463509, 32.486862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476616, 32.388992, 32.762413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209745, -0.976438, -0.050758,
		0.682102, -0.108932, -0.723099,
		0.700532, -0.186288, 0.688878,
		27.686775, 32.333107, 32.969078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686623, 31.986626, 32.243092>,  <27.196404, 32.463509, 32.486862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686623, 31.986626, 32.243092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761543, 31.961926, 32.635235>,  <27.806496, 31.947105, 32.870522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761543, 31.961926, 32.635235>,  <27.686623, 31.986626, 32.243092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761543, 31.961926, 32.635235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134394, -0.990248, -0.036698,
		0.973065, -0.124881, -0.193775,
		0.187303, -0.061752, 0.980359,
		27.817734, 31.943399, 32.929344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914440, 31.335325, 32.329716>,  <27.686623, 31.986626, 32.243092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914440, 31.335325, 32.329716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826431, 31.422241, 32.710110>,  <27.773626, 31.474390, 32.938347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826431, 31.422241, 32.710110>,  <27.914440, 31.335325, 32.329716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826431, 31.422241, 32.710110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036042, -0.972400, 0.230522,
		0.974829, 0.084995, 0.206117,
		-0.220021, 0.217290, 0.950987,
		27.760426, 31.487429, 32.995407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193798, 30.890385, 32.737595>,  <27.914440, 31.335325, 32.329716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193798, 30.890385, 32.737595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946339, 31.032177, 33.018059>,  <27.797863, 31.117252, 33.186337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946339, 31.032177, 33.018059>,  <28.193798, 30.890385, 32.737595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946339, 31.032177, 33.018059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085739, -0.856641, 0.508739,
		0.780977, 0.374846, 0.499565,
		-0.618647, 0.354481, 0.701156,
		27.760744, 31.138521, 33.228405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476910, 30.705759, 33.402107>,  <28.193798, 30.890385, 32.737595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476910, 30.705759, 33.402107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088709, 30.756184, 33.484310>,  <27.855787, 30.786438, 33.533630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088709, 30.756184, 33.484310>,  <28.476910, 30.705759, 33.402107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088709, 30.756184, 33.484310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027254, -0.789576, 0.613048,
		0.239542, 0.600566, 0.762850,
		-0.970503, 0.126060, 0.205505,
		27.797558, 30.794003, 33.545963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399109, 30.755093, 34.139816>,  <28.476910, 30.705759, 33.402107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399109, 30.755093, 34.139816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038122, 30.665815, 33.992443>,  <27.821529, 30.612249, 33.904018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038122, 30.665815, 33.992443>,  <28.399109, 30.755093, 34.139816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038122, 30.665815, 33.992443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135872, -0.664145, 0.735153,
		-0.408771, 0.713510, 0.569043,
		-0.902466, -0.223192, -0.368430,
		27.767382, 30.598858, 33.881916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007847, 30.728724, 34.762226>,  <28.399109, 30.755093, 34.139816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007847, 30.728724, 34.762226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824615, 30.522173, 34.472805>,  <27.714678, 30.398243, 34.299152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824615, 30.522173, 34.472805>,  <28.007847, 30.728724, 34.762226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824615, 30.522173, 34.472805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193872, -0.736339, 0.648243,
		-0.867513, 0.437221, 0.237189,
		-0.458077, -0.516375, -0.723549,
		27.687193, 30.367260, 34.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425655, 30.495373, 35.131939>,  <28.007847, 30.728724, 34.762226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425655, 30.495373, 35.131939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457325, 30.250113, 34.817543>,  <27.476326, 30.102957, 34.628906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457325, 30.250113, 34.817543>,  <27.425655, 30.495373, 35.131939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457325, 30.250113, 34.817543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015479, -0.787612, 0.615978,
		-0.996741, -0.060935, -0.052868,
		0.079174, -0.613152, -0.785988,
		27.481077, 30.066168, 34.581745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884436, 30.007496, 35.274513>,  <27.425655, 30.495373, 35.131939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884436, 30.007496, 35.274513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.137077, 29.866823, 34.998138>,  <27.288662, 29.782419, 34.832314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.137077, 29.866823, 34.998138>,  <26.884436, 30.007496, 35.274513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137077, 29.866823, 34.998138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097379, -0.920126, 0.379322,
		-0.769150, -0.172300, -0.615404,
		0.631607, -0.351683, -0.690936,
		27.326559, 29.761318, 34.790859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587063, 29.438185, 34.997532>,  <26.884436, 30.007496, 35.274513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587063, 29.438185, 34.997532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976395, 29.398745, 34.914673>,  <27.209993, 29.375080, 34.864960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976395, 29.398745, 34.914673>,  <26.587063, 29.438185, 34.997532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976395, 29.398745, 34.914673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040501, -0.962596, 0.267896,
		-0.225812, -0.252361, -0.940916,
		0.973329, -0.098602, -0.207145,
		27.268393, 29.369164, 34.852528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675913, 28.777266, 34.544712>,  <26.587063, 29.438185, 34.997532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675913, 28.777266, 34.544712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029236, 28.868753, 34.708397>,  <27.241230, 28.923647, 34.806610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029236, 28.868753, 34.708397>,  <26.675913, 28.777266, 34.544712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029236, 28.868753, 34.708397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175370, -0.970741, 0.164032,
		0.434759, -0.073127, -0.897573,
		0.883306, 0.228722, 0.409214,
		27.294228, 28.937370, 34.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176750, 28.190645, 34.391552>,  <26.675913, 28.777266, 34.544712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176750, 28.190645, 34.391552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363415, 28.381929, 34.689152>,  <27.475412, 28.496700, 34.867714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363415, 28.381929, 34.689152>,  <27.176750, 28.190645, 34.391552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363415, 28.381929, 34.689152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357274, -0.871454, 0.336040,
		0.809064, 0.108997, -0.577525,
		0.466659, 0.478212, 0.744004,
		27.503412, 28.525393, 34.912354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.990276, 31.414000, 46.378521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660133, 31.631447, 46.317505>,  <37.462048, 31.761915, 46.280895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660133, 31.631447, 46.317505>,  <37.990276, 31.414000, 46.378521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660133, 31.631447, 46.317505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146366, 0.054926, 0.987704,
		0.545311, 0.837535, 0.034233,
		-0.825356, 0.543616, -0.152539,
		37.412525, 31.794531, 46.271744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018269, 32.024494, 46.760765>,  <37.990276, 31.414000, 46.378521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018269, 32.024494, 46.760765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627720, 31.975344, 46.689663>,  <37.393391, 31.945852, 46.646999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627720, 31.975344, 46.689663>,  <38.018269, 32.024494, 46.760765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627720, 31.975344, 46.689663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192042, 0.116228, 0.974480,
		-0.099081, 0.985592, -0.137079,
		-0.976372, -0.122877, -0.177760,
		37.334808, 31.938480, 46.636333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713047, 32.471333, 47.227276>,  <38.018269, 32.024494, 46.760765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713047, 32.471333, 47.227276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406090, 32.231270, 47.137009>,  <37.221916, 32.087234, 47.082848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406090, 32.231270, 47.137009>,  <37.713047, 32.471333, 47.227276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406090, 32.231270, 47.137009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329155, 0.066701, 0.941917,
		-0.550243, 0.797099, -0.248730,
		-0.767392, -0.600154, -0.225667,
		37.175873, 32.051224, 47.069309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104446, 32.720474, 47.589531>,  <37.713047, 32.471333, 47.227276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104446, 32.720474, 47.589531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988937, 32.347885, 47.501011>,  <36.919632, 32.124332, 47.447899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988937, 32.347885, 47.501011>,  <37.104446, 32.720474, 47.589531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988937, 32.347885, 47.501011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550247, -0.027688, 0.834543,
		-0.783478, 0.362767, -0.504542,
		-0.288775, -0.931468, -0.221305,
		36.902306, 32.068443, 47.434620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419044, 32.776989, 47.756771>,  <37.104446, 32.720474, 47.589531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419044, 32.776989, 47.756771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504520, 32.386322, 47.748264>,  <36.555805, 32.151920, 47.743160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504520, 32.386322, 47.748264>,  <36.419044, 32.776989, 47.756771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504520, 32.386322, 47.748264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443014, -0.116288, 0.888940,
		-0.870674, -0.180540, -0.457529,
		0.213694, -0.976669, -0.021267,
		36.568630, 32.093323, 47.741882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768669, 32.374920, 47.831432>,  <36.419044, 32.776989, 47.756771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768669, 32.374920, 47.831432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054882, 32.123245, 47.952843>,  <36.226612, 31.972240, 48.025688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054882, 32.123245, 47.952843>,  <35.768669, 32.374920, 47.831432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054882, 32.123245, 47.952843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487405, -0.138386, 0.862140,
		-0.500446, -0.764832, -0.405690,
		0.715535, -0.629190, 0.303528,
		36.269543, 31.934488, 48.043900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317219, 31.878714, 48.044411>,  <35.768669, 32.374920, 47.831432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317219, 31.878714, 48.044411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668957, 31.767982, 48.199394>,  <35.880001, 31.701544, 48.292385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668957, 31.767982, 48.199394>,  <35.317219, 31.878714, 48.044411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668957, 31.767982, 48.199394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464629, -0.320598, 0.825431,
		-0.104283, -0.905861, -0.410537,
		0.879344, -0.276826, 0.387456,
		35.932758, 31.684935, 48.315632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273937, 31.156664, 48.274418>,  <35.317219, 31.878714, 48.044411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273937, 31.156664, 48.274418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583832, 31.292191, 48.487957>,  <35.769768, 31.373507, 48.616081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583832, 31.292191, 48.487957>,  <35.273937, 31.156664, 48.274418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583832, 31.292191, 48.487957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284094, -0.567752, 0.772624,
		0.564870, -0.750241, -0.343601,
		0.774734, 0.338817, 0.533845,
		35.816254, 31.393835, 48.648109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756615, 30.650133, 48.617844>,  <35.273937, 31.156664, 48.274418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756615, 30.650133, 48.617844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790562, 30.975233, 48.848404>,  <35.810928, 31.170294, 48.986740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790562, 30.975233, 48.848404>,  <35.756615, 30.650133, 48.617844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790562, 30.975233, 48.848404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140939, -0.562875, 0.814437,
		0.986374, -0.150354, 0.066780,
		0.084865, 0.812751, 0.576396,
		35.816021, 31.219059, 49.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119911, 30.475946, 49.285603>,  <35.756615, 30.650133, 48.617844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119911, 30.475946, 49.285603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951088, 30.820604, 49.398338>,  <35.849792, 31.027399, 49.465981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951088, 30.820604, 49.398338>,  <36.119911, 30.475946, 49.285603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951088, 30.820604, 49.398338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032750, -0.325174, 0.945087,
		0.905976, 0.389653, 0.165462,
		-0.422060, 0.861645, 0.281839,
		35.824471, 31.079098, 49.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355625, 30.517046, 50.007160>,  <36.119911, 30.475946, 49.285603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355625, 30.517046, 50.007160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091656, 30.817507, 50.000610>,  <35.933273, 30.997784, 49.996681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091656, 30.817507, 50.000610>,  <36.355625, 30.517046, 50.007160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091656, 30.817507, 50.000610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110433, -0.075421, 0.991018,
		0.743169, 0.655808, 0.132724,
		-0.659927, 0.751151, -0.016372,
		35.893677, 31.042852, 49.995697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541595, 31.095409, 50.432228>,  <36.355625, 30.517046, 50.007160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541595, 31.095409, 50.432228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142872, 31.073692, 50.408848>,  <35.903637, 31.060661, 50.394821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142872, 31.073692, 50.408848>,  <36.541595, 31.095409, 50.432228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142872, 31.073692, 50.408848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066316, 0.156689, 0.985419,
		-0.044345, 0.986155, -0.159790,
		-0.996813, -0.054295, -0.058450,
		35.843826, 31.057404, 50.391312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355980, 31.612871, 50.808041>,  <36.541595, 31.095409, 50.432228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355980, 31.612871, 50.808041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057632, 31.346464, 50.803928>,  <35.878624, 31.186621, 50.801460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057632, 31.346464, 50.803928>,  <36.355980, 31.612871, 50.808041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057632, 31.346464, 50.803928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001040, -0.016592, 0.999862,
		-0.666097, 0.745751, 0.013068,
		-0.745865, -0.666018, -0.010276,
		35.833874, 31.146658, 50.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758404, 31.813793, 51.154499>,  <36.355980, 31.612871, 50.808041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758404, 31.813793, 51.154499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768772, 31.415026, 51.184109>,  <35.774994, 31.175764, 51.201874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768772, 31.415026, 51.184109>,  <35.758404, 31.813793, 51.154499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768772, 31.415026, 51.184109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195985, 0.077675, 0.977525,
		-0.980264, -0.010827, 0.197395,
		0.025917, -0.996920, 0.074020,
		35.776546, 31.115950, 51.206314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381569, 32.184692, 51.681862>,  <35.758404, 31.813793, 51.154499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381569, 32.184692, 51.681862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348289, 32.561550, 51.811749>,  <35.328320, 32.787666, 51.889679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348289, 32.561550, 51.811749>,  <35.381569, 32.184692, 51.681862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348289, 32.561550, 51.811749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065349, 0.330301, -0.941611,
		-0.994388, -0.057125, -0.089050,
		-0.083203, 0.942146, 0.324714,
		35.323330, 32.844193, 51.909164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969315, 32.580963, 51.243114>,  <35.381569, 32.184692, 51.681862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969315, 32.580963, 51.243114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172379, 32.865681, 51.437279>,  <35.294216, 33.036510, 51.553780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172379, 32.865681, 51.437279>,  <34.969315, 32.580963, 51.243114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172379, 32.865681, 51.437279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197229, 0.452439, -0.869712,
		-0.838677, 0.537258, 0.089300,
		0.507662, 0.711795, 0.485413,
		35.324677, 33.079220, 51.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722588, 33.147583, 50.868603>,  <34.969315, 32.580963, 51.243114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722588, 33.147583, 50.868603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046570, 33.285702, 51.058231>,  <35.240959, 33.368572, 51.172009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046570, 33.285702, 51.058231>,  <34.722588, 33.147583, 50.868603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046570, 33.285702, 51.058231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250919, 0.526588, -0.812247,
		-0.530105, 0.776837, 0.339872,
		0.809956, 0.345296, 0.474070,
		35.289558, 33.389290, 51.200451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694286, 33.913448, 50.784306>,  <34.722588, 33.147583, 50.868603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694286, 33.913448, 50.784306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067509, 33.797501, 50.869522>,  <35.291443, 33.727932, 50.920650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067509, 33.797501, 50.869522>,  <34.694286, 33.913448, 50.784306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067509, 33.797501, 50.869522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341851, 0.530045, -0.776009,
		0.112019, 0.796887, 0.593653,
		0.933054, -0.289869, 0.213042,
		35.347424, 33.710541, 50.933434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969841, 34.542717, 50.810387>,  <34.694286, 33.913448, 50.784306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969841, 34.542717, 50.810387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231689, 34.249859, 50.735092>,  <35.388798, 34.074142, 50.689915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231689, 34.249859, 50.735092>,  <34.969841, 34.542717, 50.810387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231689, 34.249859, 50.735092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366392, 0.525093, -0.768137,
		0.661230, 0.433870, 0.611989,
		0.654623, -0.732144, -0.188241,
		35.428078, 34.030216, 50.678619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562275, 34.893589, 50.588627>,  <34.969841, 34.542717, 50.810387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562275, 34.893589, 50.588627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611217, 34.522221, 50.448307>,  <35.640583, 34.299400, 50.364117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611217, 34.522221, 50.448307>,  <35.562275, 34.893589, 50.588627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611217, 34.522221, 50.448307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324169, 0.371452, -0.870022,
		0.938052, -0.007261, 0.346417,
		0.122360, -0.928424, -0.350795,
		35.647926, 34.243694, 50.343067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071575, 34.978241, 50.012455>,  <35.562275, 34.893589, 50.588627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071575, 34.978241, 50.012455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895790, 34.625248, 49.945404>,  <35.790321, 34.413452, 49.905174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895790, 34.625248, 49.945404>,  <36.071575, 34.978241, 50.012455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895790, 34.625248, 49.945404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210001, 0.282375, -0.936036,
		0.873370, -0.376147, -0.309415,
		-0.439458, -0.882484, -0.167626,
		35.763954, 34.360504, 49.895115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353539, 34.705887, 49.383263>,  <36.071575, 34.978241, 50.012455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353539, 34.705887, 49.383263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004120, 34.512386, 49.404781>,  <35.794468, 34.396286, 49.417694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004120, 34.512386, 49.404781>,  <36.353539, 34.705887, 49.383263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004120, 34.512386, 49.404781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126913, 0.119673, -0.984668,
		0.469896, -0.866985, -0.165935,
		-0.873551, -0.483751, 0.053798,
		35.742054, 34.367260, 49.420921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438519, 34.154045, 48.913239>,  <36.353539, 34.705887, 49.383263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438519, 34.154045, 48.913239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051338, 34.241154, 48.963261>,  <35.819031, 34.293419, 48.993275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051338, 34.241154, 48.963261>,  <36.438519, 34.154045, 48.913239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051338, 34.241154, 48.963261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134435, -0.028724, -0.990506,
		-0.212116, -0.975576, 0.057080,
		-0.967954, 0.217776, 0.125059,
		35.760952, 34.306488, 49.000778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193645, 33.638618, 48.553150>,  <36.438519, 34.154045, 48.913239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193645, 33.638618, 48.553150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899940, 33.904842, 48.606655>,  <35.723717, 34.064575, 48.638756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899940, 33.904842, 48.606655>,  <36.193645, 33.638618, 48.553150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899940, 33.904842, 48.606655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308447, -0.151556, -0.939091,
		-0.604746, -0.730797, 0.316571,
		-0.734263, 0.665557, 0.133760,
		35.679661, 34.104511, 48.646782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613674, 33.308861, 48.330528>,  <36.193645, 33.638618, 48.553150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613674, 33.308861, 48.330528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537884, 33.701550, 48.323418>,  <35.492409, 33.937164, 48.319153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537884, 33.701550, 48.323418>,  <35.613674, 33.308861, 48.330528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537884, 33.701550, 48.323418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217786, -0.059672, -0.974171,
		-0.957428, -0.180710, 0.225112,
		-0.189475, 0.981724, -0.017775,
		35.481041, 33.996067, 48.318085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958721, 33.442673, 48.007401>,  <35.613674, 33.308861, 48.330528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958721, 33.442673, 48.007401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154736, 33.788525, 47.963058>,  <35.272343, 33.996037, 47.936451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154736, 33.788525, 47.963058>,  <34.958721, 33.442673, 48.007401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154736, 33.788525, 47.963058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321764, 0.061219, -0.944839,
		-0.810145, 0.498673, 0.308205,
		0.490034, 0.864626, -0.110859,
		35.301746, 34.047913, 47.929802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499794, 33.877747, 47.552681>,  <34.958721, 33.442673, 48.007401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499794, 33.877747, 47.552681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857582, 34.056564, 47.549301>,  <35.072254, 34.163857, 47.547272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857582, 34.056564, 47.549301>,  <34.499794, 33.877747, 47.552681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857582, 34.056564, 47.549301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131773, 0.245511, -0.960396,
		-0.427265, 0.860161, 0.278511,
		0.894472, 0.447044, -0.008448,
		35.125923, 34.190678, 47.546768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389694, 34.473732, 47.192993>,  <34.499794, 33.877747, 47.552681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389694, 34.473732, 47.192993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783737, 34.407764, 47.173534>,  <35.020164, 34.368183, 47.161861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783737, 34.407764, 47.173534>,  <34.389694, 34.473732, 47.192993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783737, 34.407764, 47.173534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000201, 0.281808, -0.959471,
		0.171940, 0.945191, 0.277578,
		0.985107, -0.164916, -0.048644,
		35.079269, 34.358288, 47.158939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081333, 35.040897, 47.271851>,  <34.389694, 34.473732, 47.192993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081333, 35.040897, 47.271851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689713, 35.085384, 47.203629>,  <33.454739, 35.112076, 47.162693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689713, 35.085384, 47.203629>,  <34.081333, 35.040897, 47.271851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689713, 35.085384, 47.203629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197191, -0.309131, 0.930351,
		0.050742, 0.944494, 0.324586,
		-0.979051, 0.111213, -0.170560,
		33.395996, 35.118748, 47.152462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815872, 35.431278, 47.852890>,  <34.081333, 35.040897, 47.271851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815872, 35.431278, 47.852890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517933, 35.223373, 47.685532>,  <33.339169, 35.098633, 47.585117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517933, 35.223373, 47.685532>,  <33.815872, 35.431278, 47.852890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517933, 35.223373, 47.685532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226563, -0.392791, 0.891283,
		-0.627594, 0.758662, 0.174811,
		-0.744846, -0.519758, -0.418398,
		33.294479, 35.067448, 47.560013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273716, 35.433739, 48.332912>,  <33.815872, 35.431278, 47.852890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273716, 35.433739, 48.332912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146362, 35.141445, 48.091366>,  <33.069950, 34.966068, 47.946438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146362, 35.141445, 48.091366>,  <33.273716, 35.433739, 48.332912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146362, 35.141445, 48.091366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357099, -0.497641, 0.790464,
		-0.878129, 0.467315, -0.102501,
		-0.318387, -0.730732, -0.603871,
		33.050846, 34.922226, 47.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661076, 35.230415, 48.626205>,  <33.273716, 35.433739, 48.332912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661076, 35.230415, 48.626205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781223, 34.915962, 48.410145>,  <32.853313, 34.727291, 48.280506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781223, 34.915962, 48.410145>,  <32.661076, 35.230415, 48.626205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781223, 34.915962, 48.410145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196538, -0.605164, 0.771459,
		-0.933355, -0.125561, -0.336278,
		0.300369, -0.786136, -0.540155,
		32.871334, 34.680122, 48.248096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142246, 34.827557, 48.669174>,  <32.661076, 35.230415, 48.626205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142246, 34.827557, 48.669174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446819, 34.590443, 48.564240>,  <32.629562, 34.448174, 48.501278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446819, 34.590443, 48.564240>,  <32.142246, 34.827557, 48.669174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446819, 34.590443, 48.564240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217760, -0.615072, 0.757804,
		-0.610540, -0.519917, -0.597433,
		0.761460, -0.592767, -0.262309,
		32.675251, 34.412605, 48.485538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844730, 34.097202, 48.834949>,  <32.142246, 34.827557, 48.669174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844730, 34.097202, 48.834949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238770, 34.038849, 48.798500>,  <32.475193, 34.003838, 48.776630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238770, 34.038849, 48.798500>,  <31.844730, 34.097202, 48.834949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238770, 34.038849, 48.798500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008819, -0.571935, 0.820251,
		-0.171779, -0.807223, -0.564698,
		0.985096, -0.145882, -0.091127,
		32.534298, 33.995083, 48.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889791, 33.357418, 48.810928>,  <31.844730, 34.097202, 48.834949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889791, 33.357418, 48.810928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213921, 33.547283, 48.948376>,  <32.408398, 33.661201, 49.030842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213921, 33.547283, 48.948376>,  <31.889791, 33.357418, 48.810928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213921, 33.547283, 48.948376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002132, -0.588778, 0.808292,
		0.585978, -0.654246, -0.478113,
		0.810324, 0.474661, 0.343616,
		32.457020, 33.689682, 49.051460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949282, 32.620995, 48.490555>,  <31.889791, 33.357418, 48.810928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949282, 32.620995, 48.490555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567129, 32.513203, 48.442177>,  <31.337837, 32.448528, 48.413151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567129, 32.513203, 48.442177>,  <31.949282, 32.620995, 48.490555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567129, 32.513203, 48.442177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069061, 0.601898, -0.795581,
		0.287187, -0.751731, -0.593653,
		-0.955382, -0.269479, -0.120942,
		31.280514, 32.432358, 48.405895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873344, 32.340466, 47.750694>,  <31.949282, 32.620995, 48.490555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873344, 32.340466, 47.750694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516739, 32.465237, 47.882088>,  <31.302776, 32.540100, 47.960926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516739, 32.465237, 47.882088>,  <31.873344, 32.340466, 47.750694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516739, 32.465237, 47.882088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085846, 0.595668, -0.798630,
		-0.444787, -0.740189, -0.504267,
		-0.891513, 0.311931, 0.328488,
		31.249285, 32.558815, 47.980633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362656, 32.117523, 47.288071>,  <31.873344, 32.340466, 47.750694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362656, 32.117523, 47.288071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190483, 32.414417, 47.493526>,  <31.087179, 32.592552, 47.616798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190483, 32.414417, 47.493526>,  <31.362656, 32.117523, 47.288071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190483, 32.414417, 47.493526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289784, 0.425292, -0.857410,
		-0.854843, -0.517898, 0.032028,
		-0.430430, 0.742232, 0.513636,
		31.061354, 32.637085, 47.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672770, 32.244774, 47.036335>,  <31.362656, 32.117523, 47.288071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672770, 32.244774, 47.036335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.775957, 32.589451, 47.211124>,  <30.837870, 32.796257, 47.315998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.775957, 32.589451, 47.211124>,  <30.672770, 32.244774, 47.036335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775957, 32.589451, 47.211124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330674, 0.503710, -0.798079,
		-0.907803, 0.061386, 0.414880,
		0.257970, 0.861689, 0.436971,
		30.853348, 32.847958, 47.342216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192574, 32.619633, 46.731441>,  <30.672770, 32.244774, 47.036335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192574, 32.619633, 46.731441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428373, 32.869656, 46.936104>,  <30.569853, 33.019669, 47.058903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428373, 32.869656, 46.936104>,  <30.192574, 32.619633, 46.731441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428373, 32.869656, 46.936104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091151, 0.680851, -0.726728,
		-0.802609, 0.381768, 0.458336,
		0.589499, 0.625056, 0.511659,
		30.605223, 33.057171, 47.089603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000248, 33.338852, 46.489281>,  <30.192574, 32.619633, 46.731441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000248, 33.338852, 46.489281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375505, 33.381039, 46.621197>,  <30.600660, 33.406349, 46.700348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375505, 33.381039, 46.621197>,  <30.000248, 33.338852, 46.489281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375505, 33.381039, 46.621197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223077, 0.544354, -0.808650,
		-0.264810, 0.832199, 0.487155,
		0.938143, 0.105465, 0.329795,
		30.656948, 33.412678, 46.720135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142536, 34.027626, 46.434109>,  <30.000248, 33.338852, 46.489281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142536, 34.027626, 46.434109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488594, 33.828457, 46.410107>,  <30.696228, 33.708958, 46.395706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488594, 33.828457, 46.410107>,  <30.142536, 34.027626, 46.434109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488594, 33.828457, 46.410107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152341, 0.374906, -0.914460,
		0.477824, 0.781999, 0.400201,
		0.865145, -0.497918, -0.060009,
		30.748138, 33.679081, 46.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.098217, 29.743406, 50.414497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.351421, 30.048405, 50.468006>,  <33.503345, 30.231403, 50.500111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.351421, 30.048405, 50.468006>,  <33.098217, 29.743406, 50.414497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351421, 30.048405, 50.468006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290090, -0.073424, -0.954179,
		-0.717735, 0.642814, -0.267670,
		0.633013, 0.762495, 0.133775,
		33.541325, 30.277153, 50.508137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046921, 30.486696, 50.059017>,  <33.098217, 29.743406, 50.414497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046921, 30.486696, 50.059017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405243, 30.324823, 50.132511>,  <33.620235, 30.227699, 50.176605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405243, 30.324823, 50.132511>,  <33.046921, 30.486696, 50.059017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405243, 30.324823, 50.132511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127848, -0.161291, -0.978591,
		0.425655, 0.900120, -0.092748,
		0.895809, -0.404684, 0.183733,
		33.673985, 30.203419, 50.187630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426174, 30.875959, 49.698776>,  <33.046921, 30.486696, 50.059017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426174, 30.875959, 49.698776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.607830, 30.522802, 49.746532>,  <33.716824, 30.310907, 49.775185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.607830, 30.522802, 49.746532>,  <33.426174, 30.875959, 49.698776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607830, 30.522802, 49.746532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057601, -0.104626, -0.992842,
		0.889064, 0.457770, 0.003340,
		0.454144, -0.882893, 0.119387,
		33.744072, 30.257935, 49.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886787, 30.804987, 49.203800>,  <33.426174, 30.875959, 49.698776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886787, 30.804987, 49.203800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.871201, 30.414898, 49.290905>,  <33.861851, 30.180843, 49.343166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.871201, 30.414898, 49.290905>,  <33.886787, 30.804987, 49.203800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871201, 30.414898, 49.290905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138821, -0.221096, -0.965321,
		0.989551, -0.007382, 0.143996,
		-0.038963, -0.975224, 0.217761,
		33.859512, 30.122330, 49.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550644, 30.540747, 48.882320>,  <33.886787, 30.804987, 49.203800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550644, 30.540747, 48.882320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.301411, 30.234402, 48.945847>,  <34.151871, 30.050594, 48.983963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.301411, 30.234402, 48.945847>,  <34.550644, 30.540747, 48.882320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301411, 30.234402, 48.945847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187145, -0.343126, -0.920457,
		0.759437, -0.543800, 0.357123,
		-0.623082, -0.765864, 0.158813,
		34.114487, 30.004642, 48.993492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936863, 29.946980, 48.545452>,  <34.550644, 30.540747, 48.882320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936863, 29.946980, 48.545452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556839, 29.830463, 48.590225>,  <34.328823, 29.760553, 48.617088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556839, 29.830463, 48.590225>,  <34.936863, 29.946980, 48.545452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556839, 29.830463, 48.590225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057206, -0.515195, -0.855161,
		0.306767, -0.806055, 0.506132,
		-0.950064, -0.291289, 0.111933,
		34.271820, 29.743076, 48.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935497, 29.142614, 48.331219>,  <34.936863, 29.946980, 48.545452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935497, 29.142614, 48.331219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573151, 29.310545, 48.308750>,  <34.355743, 29.411303, 48.295269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573151, 29.310545, 48.308750>,  <34.935497, 29.142614, 48.331219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573151, 29.310545, 48.308750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056258, -0.250701, -0.966429,
		-0.419817, -0.872292, 0.250719,
		-0.905864, 0.419828, -0.056175,
		34.301392, 29.436493, 48.291897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704979, 28.753401, 47.797482>,  <34.935497, 29.142614, 48.331219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704979, 28.753401, 47.797482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515720, 29.105743, 47.791553>,  <34.402164, 29.317148, 47.787994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515720, 29.105743, 47.791553>,  <34.704979, 28.753401, 47.797482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515720, 29.105743, 47.791553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083330, 0.027998, -0.996129,
		-0.877032, -0.472554, -0.086649,
		-0.473151, 0.880857, -0.014822,
		34.373775, 29.370001, 47.787106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590164, 28.795017, 47.051796>,  <34.704979, 28.753401, 47.797482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590164, 28.795017, 47.051796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466927, 29.157171, 47.168655>,  <34.392982, 29.374464, 47.238773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466927, 29.157171, 47.168655>,  <34.590164, 28.795017, 47.051796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466927, 29.157171, 47.168655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003366, 0.308126, -0.951340,
		-0.951349, -0.292122, -0.097980,
		-0.308097, 0.905386, 0.292152,
		34.374496, 29.428787, 47.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121563, 28.937643, 46.580818>,  <34.590164, 28.795017, 47.051796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121563, 28.937643, 46.580818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.210636, 29.296980, 46.732288>,  <34.264080, 29.512583, 46.823170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.210636, 29.296980, 46.732288>,  <34.121563, 28.937643, 46.580818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210636, 29.296980, 46.732288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118437, 0.410480, -0.904146,
		-0.967670, 0.156487, 0.197802,
		0.222680, 0.898342, 0.378675,
		34.277439, 29.566483, 46.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561714, 29.383633, 46.420609>,  <34.121563, 28.937643, 46.580818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561714, 29.383633, 46.420609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898106, 29.594786, 46.468102>,  <34.099941, 29.721478, 46.496597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898106, 29.594786, 46.468102>,  <33.561714, 29.383633, 46.420609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898106, 29.594786, 46.468102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069671, 0.323254, -0.943744,
		-0.536566, 0.785395, 0.308628,
		0.840977, 0.527883, 0.118728,
		34.150398, 29.753151, 46.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379230, 30.041912, 46.251888>,  <33.561714, 29.383633, 46.420609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379230, 30.041912, 46.251888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774757, 30.024105, 46.194950>,  <34.012074, 30.013422, 46.160786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774757, 30.024105, 46.194950>,  <33.379230, 30.041912, 46.251888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774757, 30.024105, 46.194950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110338, 0.423816, -0.899003,
		0.100348, 0.904654, 0.414164,
		0.988815, -0.044516, -0.142347,
		34.071404, 30.010750, 46.152245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326405, 30.829632, 46.365082>,  <33.379230, 30.041912, 46.251888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326405, 30.829632, 46.365082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954731, 30.931038, 46.257488>,  <32.731728, 30.991882, 46.192932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954731, 30.931038, 46.257488>,  <33.326405, 30.829632, 46.365082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954731, 30.931038, 46.257488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355471, -0.413428, 0.838283,
		0.101313, 0.874532, 0.474268,
		-0.929180, 0.253517, -0.268985,
		32.675976, 31.007093, 46.176792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979614, 31.016907, 47.057491>,  <33.326405, 30.829632, 46.365082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979614, 31.016907, 47.057491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716007, 30.947931, 46.764652>,  <32.557842, 30.906546, 46.588951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716007, 30.947931, 46.764652>,  <32.979614, 31.016907, 47.057491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716007, 30.947931, 46.764652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580550, -0.502214, 0.640892,
		-0.478184, 0.847376, 0.230856,
		-0.659016, -0.172441, -0.732095,
		32.518303, 30.896198, 46.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344994, 31.085754, 47.386105>,  <32.979614, 31.016907, 47.057491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344994, 31.085754, 47.386105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250118, 30.875822, 47.059109>,  <32.193192, 30.749863, 46.862911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250118, 30.875822, 47.059109>,  <32.344994, 31.085754, 47.386105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250118, 30.875822, 47.059109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600088, -0.582606, 0.548147,
		-0.763960, 0.620582, -0.176755,
		-0.237192, -0.524831, -0.817492,
		32.178959, 30.718372, 46.813862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612015, 31.085873, 47.297508>,  <32.344994, 31.085754, 47.386105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612015, 31.085873, 47.297508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735659, 30.766722, 47.090492>,  <31.809845, 30.575232, 46.966282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735659, 30.766722, 47.090492>,  <31.612015, 31.085873, 47.297508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735659, 30.766722, 47.090492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713086, -0.554513, 0.428980,
		-0.629254, 0.236446, -0.740360,
		0.309108, -0.797878, -0.517536,
		31.828390, 30.527359, 46.935230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965605, 30.813538, 47.006187>,  <31.612015, 31.085873, 47.297508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965605, 30.813538, 47.006187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.235655, 30.518507, 47.011635>,  <31.397684, 30.341488, 47.014904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.235655, 30.518507, 47.011635>,  <30.965605, 30.813538, 47.006187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235655, 30.518507, 47.011635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644706, -0.580942, 0.496850,
		-0.358551, -0.344220, -0.867729,
		0.675126, -0.737577, 0.013623,
		31.438192, 30.297234, 47.015720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615189, 30.307116, 46.971962>,  <30.965605, 30.813538, 47.006187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615189, 30.307116, 46.971962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.946043, 30.119978, 47.096523>,  <31.144556, 30.007696, 47.171261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.946043, 30.119978, 47.096523>,  <30.615189, 30.307116, 46.971962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946043, 30.119978, 47.096523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559240, -0.630274, 0.538521,
		-0.055675, -0.619578, -0.782958,
		0.827134, -0.467844, 0.311403,
		31.194183, 29.979626, 47.189945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403824, 29.623026, 47.113892>,  <30.615189, 30.307116, 46.971962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403824, 29.623026, 47.113892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.745996, 29.670137, 47.315632>,  <30.951300, 29.698404, 47.436676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.745996, 29.670137, 47.315632>,  <30.403824, 29.623026, 47.113892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745996, 29.670137, 47.315632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411856, -0.435750, 0.800310,
		0.314029, -0.892329, -0.324247,
		0.855430, 0.117778, 0.504349,
		31.002626, 29.705471, 47.466938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800865, 28.942747, 47.098553>,  <30.403824, 29.623026, 47.113892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800865, 28.942747, 47.098553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.951906, 29.169558, 47.391373>,  <31.042532, 29.305643, 47.567066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.951906, 29.169558, 47.391373>,  <30.800865, 28.942747, 47.098553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951906, 29.169558, 47.391373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221422, -0.712352, 0.665979,
		0.899104, -0.413568, -0.143435,
		0.377604, 0.567024, 0.732051,
		31.065187, 29.339664, 47.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125179, 28.438742, 47.522518>,  <30.800865, 28.942747, 47.098553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125179, 28.438742, 47.522518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.106636, 28.762184, 47.757126>,  <31.095510, 28.956249, 47.897892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.106636, 28.762184, 47.757126>,  <31.125179, 28.438742, 47.522518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106636, 28.762184, 47.757126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210332, -0.581890, 0.785598,
		0.976530, -0.086946, 0.197051,
		-0.046358, 0.808606, 0.586521,
		31.092730, 29.004766, 47.933083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531170, 28.337406, 48.112045>,  <31.125179, 28.438742, 47.522518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531170, 28.337406, 48.112045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270645, 28.615580, 48.233479>,  <31.114330, 28.782484, 48.306339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270645, 28.615580, 48.233479>,  <31.531170, 28.337406, 48.112045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270645, 28.615580, 48.233479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307249, -0.607514, 0.732479,
		0.693823, 0.383796, 0.609352,
		-0.651312, 0.695434, 0.303587,
		31.075251, 28.824209, 48.324554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738728, 28.546598, 48.837219>,  <31.531170, 28.337406, 48.112045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738728, 28.546598, 48.837219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.357349, 28.663103, 48.805943>,  <31.128523, 28.733006, 48.787178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.357349, 28.663103, 48.805943>,  <31.738728, 28.546598, 48.837219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357349, 28.663103, 48.805943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221346, -0.499783, 0.837390,
		0.204822, 0.815711, 0.540984,
		-0.953443, 0.291260, -0.078188,
		31.071316, 28.750481, 48.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616398, 28.807709, 49.413666>,  <31.738728, 28.546598, 48.837219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616398, 28.807709, 49.413666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246933, 28.742371, 49.275005>,  <31.025255, 28.703167, 49.191807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246933, 28.742371, 49.275005>,  <31.616398, 28.807709, 49.413666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246933, 28.742371, 49.275005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245436, -0.442555, 0.862500,
		-0.294300, 0.881739, 0.368679,
		-0.923660, -0.163347, -0.346655,
		30.969835, 28.693367, 49.171009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049194, 29.038912, 49.950222>,  <31.616398, 28.807709, 49.413666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049194, 29.038912, 49.950222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.869743, 28.761871, 49.724289>,  <30.762074, 28.595646, 49.588730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.869743, 28.761871, 49.724289>,  <31.049194, 29.038912, 49.950222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869743, 28.761871, 49.724289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316354, -0.468016, 0.825155,
		-0.835856, 0.548873, -0.009143,
		-0.448626, -0.692603, -0.564832,
		30.735155, 28.554090, 49.554840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301685, 28.964720, 50.182156>,  <31.049194, 29.038912, 49.950222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301685, 28.964720, 50.182156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455732, 28.638412, 50.009548>,  <30.548161, 28.442627, 49.905983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455732, 28.638412, 50.009548>,  <30.301685, 28.964720, 50.182156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455732, 28.638412, 50.009548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228710, -0.537359, 0.811749,
		-0.894079, -0.213925, -0.393520,
		0.385115, -0.815770, -0.431515,
		30.571266, 28.393681, 49.880093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343887, 29.503260, 49.582153>,  <30.301685, 28.964720, 50.182156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343887, 29.503260, 49.582153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520231, 29.750246, 49.842731>,  <30.626038, 29.898438, 49.999077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520231, 29.750246, 49.842731>,  <30.343887, 29.503260, 49.582153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520231, 29.750246, 49.842731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096408, 0.754156, -0.649580,
		-0.892384, 0.223568, 0.392005,
		0.440858, 0.617467, 0.651444,
		30.652489, 29.935486, 50.038166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044708, 30.100193, 49.518368>,  <30.343887, 29.503260, 49.582153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044708, 30.100193, 49.518368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.359138, 30.253494, 49.712360>,  <30.547796, 30.345474, 49.828754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.359138, 30.253494, 49.712360>,  <30.044708, 30.100193, 49.518368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359138, 30.253494, 49.712360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064141, 0.830927, -0.552672,
		-0.614795, 0.403334, 0.677752,
		0.786074, 0.383251, 0.484980,
		30.594961, 30.368469, 49.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823654, 30.750860, 49.564423>,  <30.044708, 30.100193, 49.518368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823654, 30.750860, 49.564423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.219664, 30.741167, 49.619946>,  <30.457270, 30.735352, 49.653259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.219664, 30.741167, 49.619946>,  <29.823654, 30.750860, 49.564423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219664, 30.741167, 49.619946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090582, 0.864026, -0.495231,
		-0.107930, 0.502864, 0.857601,
		0.990023, -0.024233, 0.138804,
		30.516670, 30.733896, 49.661587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973293, 31.449976, 49.684151>,  <29.823654, 30.750860, 49.564423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973293, 31.449976, 49.684151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326084, 31.300428, 49.569370>,  <30.537758, 31.210699, 49.500504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326084, 31.300428, 49.569370>,  <29.973293, 31.449976, 49.684151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326084, 31.300428, 49.569370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218895, 0.864158, -0.453119,
		0.417378, 0.336827, 0.844004,
		0.881975, -0.373870, -0.286951,
		30.590677, 31.188267, 49.483284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367435, 32.073318, 49.612698>,  <29.973293, 31.449976, 49.684151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367435, 32.073318, 49.612698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.605019, 31.820295, 49.413868>,  <30.747568, 31.668482, 49.294571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.605019, 31.820295, 49.413868>,  <30.367435, 32.073318, 49.612698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605019, 31.820295, 49.413868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464426, 0.774122, -0.430167,
		0.656903, 0.024645, 0.753572,
		0.593958, -0.632557, -0.497077,
		30.783207, 31.630527, 49.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139296, 32.355400, 49.643124>,  <30.367435, 32.073318, 49.612698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139296, 32.355400, 49.643124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073877, 32.119373, 49.326878>,  <31.034626, 31.977757, 49.137131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073877, 32.119373, 49.326878>,  <31.139296, 32.355400, 49.643124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073877, 32.119373, 49.326878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318958, 0.726736, -0.608375,
		0.933552, -0.351670, 0.069353,
		-0.163545, -0.590070, -0.790614,
		31.024815, 31.942352, 49.089695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799515, 32.325794, 49.113976>,  <31.139296, 32.355400, 49.643124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799515, 32.325794, 49.113976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467724, 32.227638, 48.913277>,  <31.268648, 32.168743, 48.792858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467724, 32.227638, 48.913277>,  <31.799515, 32.325794, 49.113976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467724, 32.227638, 48.913277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208157, 0.697782, -0.685399,
		0.518300, -0.672965, -0.527715,
		-0.829479, -0.245395, -0.501743,
		31.218880, 32.154018, 48.762753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524174, 32.546200, 49.279129>,  <31.799515, 32.325794, 49.113976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524174, 32.546200, 49.279129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664883, 32.910259, 49.366665>,  <32.749310, 33.128693, 49.419186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664883, 32.910259, 49.366665>,  <32.524174, 32.546200, 49.279129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664883, 32.910259, 49.366665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190273, -0.298424, 0.935275,
		0.916543, -0.287367, -0.278154,
		0.351775, 0.910145, 0.218840,
		32.770416, 33.183304, 49.432316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160656, 32.444767, 49.708302>,  <32.524174, 32.546200, 49.279129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160656, 32.444767, 49.708302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019978, 32.808174, 49.798553>,  <32.935570, 33.026218, 49.852703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019978, 32.808174, 49.798553>,  <33.160656, 32.444767, 49.708302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019978, 32.808174, 49.798553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340328, -0.100445, 0.934926,
		0.872058, 0.405599, -0.273867,
		-0.351697, 0.908515, 0.225631,
		32.914467, 33.080730, 49.866241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670696, 32.864059, 50.129059>,  <33.160656, 32.444767, 49.708302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670696, 32.864059, 50.129059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309708, 33.021507, 50.199047>,  <33.093117, 33.115974, 50.241039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309708, 33.021507, 50.199047>,  <33.670696, 32.864059, 50.129059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309708, 33.021507, 50.199047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225326, 0.085197, 0.970551,
		0.367122, 0.915317, -0.165581,
		-0.902469, 0.393620, 0.174966,
		33.038967, 33.139595, 50.251537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718246, 33.426662, 50.553242>,  <33.670696, 32.864059, 50.129059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718246, 33.426662, 50.553242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.332478, 33.335735, 50.607216>,  <33.101017, 33.281178, 50.639599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.332478, 33.335735, 50.607216>,  <33.718246, 33.426662, 50.553242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332478, 33.335735, 50.607216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071815, 0.265945, 0.961309,
		-0.254411, 0.936802, -0.240160,
		-0.964426, -0.227321, 0.134936,
		33.043148, 33.267540, 50.647697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369442, 33.976692, 50.992626>,  <33.718246, 33.426662, 50.553242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369442, 33.976692, 50.992626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157066, 33.640324, 51.034492>,  <33.029640, 33.438503, 51.059612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157066, 33.640324, 51.034492>,  <33.369442, 33.976692, 50.992626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157066, 33.640324, 51.034492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023023, 0.137778, 0.990195,
		-0.847096, 0.523325, -0.092512,
		-0.530940, -0.840921, 0.104663,
		32.997784, 33.388046, 51.065891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938927, 34.125984, 51.667637>,  <33.369442, 33.976692, 50.992626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938927, 34.125984, 51.667637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850033, 33.739853, 51.612865>,  <32.796696, 33.508175, 51.580002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850033, 33.739853, 51.612865>,  <32.938927, 34.125984, 51.667637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850033, 33.739853, 51.612865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021345, -0.145225, 0.989168,
		-0.974759, 0.216907, 0.052879,
		-0.222237, -0.965329, -0.136929,
		32.783363, 33.450253, 51.571785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417244, 33.932365, 52.155842>,  <32.938927, 34.125984, 51.667637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417244, 33.932365, 52.155842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593578, 33.589581, 52.049049>,  <32.699379, 33.383911, 51.984974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593578, 33.589581, 52.049049>,  <32.417244, 33.932365, 52.155842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593578, 33.589581, 52.049049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110352, -0.243440, 0.963618,
		-0.890779, -0.454258, -0.012749,
		0.440834, -0.856964, -0.266980,
		32.725830, 33.332493, 51.968956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041615, 33.389786, 52.527107>,  <32.417244, 33.932365, 52.155842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041615, 33.389786, 52.527107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403488, 33.244232, 52.438446>,  <32.620613, 33.156898, 52.385250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403488, 33.244232, 52.438446>,  <32.041615, 33.389786, 52.527107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403488, 33.244232, 52.438446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181113, -0.142467, 0.973089,
		-0.385674, -0.920483, -0.062983,
		0.904685, -0.363887, -0.221657,
		32.674892, 33.135067, 52.371948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111946, 32.716770, 52.945110>,  <32.041615, 33.389786, 52.527107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111946, 32.716770, 52.945110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.484413, 32.821064, 52.843178>,  <32.707893, 32.883640, 52.782017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.484413, 32.821064, 52.843178>,  <32.111946, 32.716770, 52.945110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484413, 32.821064, 52.843178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302975, -0.164594, 0.938677,
		0.202799, -0.951277, -0.232260,
		0.931171, 0.260732, -0.254833,
		32.763763, 32.899284, 52.766727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.905350, 36.697365, 36.838226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264374, 36.551464, 36.937298>,  <34.479786, 36.463924, 36.996742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264374, 36.551464, 36.937298>,  <33.905350, 36.697365, 36.838226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264374, 36.551464, 36.937298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281788, -0.042521, 0.958534,
		-0.339097, -0.930133, -0.140949,
		0.897557, -0.364754, 0.247682,
		34.533642, 36.442039, 37.011600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759785, 36.098034, 37.311272>,  <33.905350, 36.697365, 36.838226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759785, 36.098034, 37.311272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136982, 36.220467, 37.363548>,  <34.363300, 36.293926, 37.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136982, 36.220467, 37.363548>,  <33.759785, 36.098034, 37.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136982, 36.220467, 37.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178609, 0.134061, 0.974744,
		0.280833, -0.942518, 0.181088,
		0.942990, 0.306084, 0.130694,
		34.419880, 36.312290, 37.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927006, 35.747833, 37.922878>,  <33.759785, 36.098034, 37.311272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927006, 35.747833, 37.922878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197765, 36.040028, 37.886658>,  <34.360222, 36.215343, 37.864925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197765, 36.040028, 37.886658>,  <33.927006, 35.747833, 37.922878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197765, 36.040028, 37.886658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116496, 0.227780, 0.966719,
		0.726802, -0.643819, 0.239282,
		0.676895, 0.730488, -0.090549,
		34.400833, 36.259174, 37.859493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150326, 35.693325, 38.585083>,  <33.927006, 35.747833, 37.922878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150326, 35.693325, 38.585083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302876, 36.037994, 38.451172>,  <34.394405, 36.244797, 38.370827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302876, 36.037994, 38.451172>,  <34.150326, 35.693325, 38.585083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302876, 36.037994, 38.451172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191501, 0.427932, 0.883290,
		0.904369, -0.272751, 0.328212,
		0.381371, 0.861673, -0.334776,
		34.417286, 36.296497, 38.350739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729675, 35.756466, 39.002205>,  <34.150326, 35.693325, 38.585083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729675, 35.756466, 39.002205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589123, 36.104454, 38.863823>,  <34.504791, 36.313248, 38.780796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589123, 36.104454, 38.863823>,  <34.729675, 35.756466, 39.002205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589123, 36.104454, 38.863823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199302, 0.291538, 0.935566,
		0.914772, 0.397692, 0.070945,
		-0.351384, 0.869969, -0.345951,
		34.483707, 36.365444, 38.760036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094719, 36.478954, 39.326355>,  <34.729675, 35.756466, 39.002205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094719, 36.478954, 39.326355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741581, 36.611332, 39.193050>,  <34.529697, 36.690758, 39.113068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741581, 36.611332, 39.193050>,  <35.094719, 36.478954, 39.326355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741581, 36.611332, 39.193050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231633, 0.310480, 0.921927,
		0.408576, 0.891112, -0.197448,
		-0.882843, 0.330942, -0.333265,
		34.476727, 36.710613, 39.093071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051437, 37.092960, 39.588036>,  <35.094719, 36.478954, 39.326355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051437, 37.092960, 39.588036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677200, 36.997410, 39.484028>,  <34.452660, 36.940079, 39.421623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677200, 36.997410, 39.484028>,  <35.051437, 37.092960, 39.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677200, 36.997410, 39.484028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326073, 0.302019, 0.895802,
		-0.135458, 0.922887, -0.360458,
		-0.935589, -0.238879, -0.260018,
		34.396523, 36.925747, 39.406021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634777, 37.650227, 39.977325>,  <35.051437, 37.092960, 39.588036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634777, 37.650227, 39.977325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418156, 37.319386, 39.917164>,  <34.288185, 37.120880, 39.881065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418156, 37.319386, 39.917164>,  <34.634777, 37.650227, 39.977325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418156, 37.319386, 39.917164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522613, 0.191093, 0.830878,
		-0.658481, 0.528567, -0.535742,
		-0.541551, -0.827104, -0.150405,
		34.255692, 37.071255, 39.872044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914181, 37.890308, 40.218666>,  <34.634777, 37.650227, 39.977325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914181, 37.890308, 40.218666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905521, 37.491676, 40.186790>,  <33.900326, 37.252495, 40.167664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905521, 37.491676, 40.186790>,  <33.914181, 37.890308, 40.218666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905521, 37.491676, 40.186790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473467, -0.059986, 0.878766,
		-0.880545, 0.056754, -0.470552,
		-0.021647, -0.996585, -0.079692,
		33.899029, 37.192699, 40.162884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224277, 37.704983, 40.225376>,  <33.914181, 37.890308, 40.218666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224277, 37.704983, 40.225376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431538, 37.378952, 40.329044>,  <33.555893, 37.183334, 40.391243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431538, 37.378952, 40.329044>,  <33.224277, 37.704983, 40.225376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431538, 37.378952, 40.329044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498807, -0.041833, 0.865703,
		-0.694773, -0.577840, -0.428243,
		0.518152, -0.815077, 0.259166,
		33.586983, 37.134430, 40.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713669, 37.335289, 40.708080>,  <33.224277, 37.704983, 40.225376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713669, 37.335289, 40.708080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065762, 37.150387, 40.750988>,  <33.277020, 37.039444, 40.776733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065762, 37.150387, 40.750988>,  <32.713669, 37.335289, 40.708080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065762, 37.150387, 40.750988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240148, -0.238960, 0.940865,
		-0.409291, -0.853941, -0.321351,
		0.880233, -0.462259, 0.107268,
		33.329830, 37.011711, 40.783169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592514, 36.661530, 40.990181>,  <32.713669, 37.335289, 40.708080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592514, 36.661530, 40.990181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962044, 36.776333, 41.091515>,  <33.183762, 36.845215, 41.152313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962044, 36.776333, 41.091515>,  <32.592514, 36.661530, 40.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962044, 36.776333, 41.091515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221504, -0.138967, 0.965207,
		0.312227, -0.947795, -0.064807,
		0.923824, 0.287008, 0.253330,
		33.239189, 36.862434, 41.167515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393425, 35.937767, 40.958843>,  <32.592514, 36.661530, 40.990181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393425, 35.937767, 40.958843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996593, 35.987991, 40.957668>,  <31.758493, 36.018127, 40.956963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996593, 35.987991, 40.957668>,  <32.393425, 35.937767, 40.958843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996593, 35.987991, 40.957668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020139, 0.135962, -0.990509,
		-0.123970, -0.982725, -0.137414,
		-0.992082, 0.125561, -0.002936,
		31.698969, 36.025661, 40.956787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132057, 35.484295, 40.481400>,  <32.393425, 35.937767, 40.958843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132057, 35.484295, 40.481400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860315, 35.777283, 40.499123>,  <31.697269, 35.953075, 40.509758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860315, 35.777283, 40.499123>,  <32.132057, 35.484295, 40.481400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860315, 35.777283, 40.499123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104423, 0.156267, -0.982179,
		-0.726341, -0.662623, -0.182648,
		-0.679356, 0.732470, 0.044310,
		31.656507, 35.997025, 40.512417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745111, 35.283459, 39.966690>,  <32.132057, 35.484295, 40.481400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745111, 35.283459, 39.966690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656183, 35.668663, 40.027584>,  <31.602827, 35.899788, 40.064121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656183, 35.668663, 40.027584>,  <31.745111, 35.283459, 39.966690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656183, 35.668663, 40.027584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224709, 0.101329, -0.969143,
		-0.948725, -0.249668, 0.193871,
		-0.222319, 0.963015, 0.152236,
		31.589487, 35.957569, 40.073254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174351, 35.393974, 39.503014>,  <31.745111, 35.283459, 39.966690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174351, 35.393974, 39.503014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297136, 35.753674, 39.627674>,  <31.370808, 35.969494, 39.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297136, 35.753674, 39.627674>,  <31.174351, 35.393974, 39.503014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297136, 35.753674, 39.627674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195212, 0.379995, -0.904155,
		-0.931485, 0.216706, 0.292189,
		0.306966, 0.899246, 0.311656,
		31.389227, 36.023449, 39.721172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670794, 35.812935, 39.329384>,  <31.174351, 35.393974, 39.503014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670794, 35.812935, 39.329384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968010, 36.078739, 39.361179>,  <31.146339, 36.238220, 39.380257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968010, 36.078739, 39.361179>,  <30.670794, 35.812935, 39.329384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968010, 36.078739, 39.361179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210493, 0.344795, -0.914773,
		-0.635282, 0.662982, 0.396071,
		0.743041, 0.664509, 0.079489,
		31.190922, 36.278091, 39.385025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367941, 36.423531, 39.093784>,  <30.670794, 35.812935, 39.329384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367941, 36.423531, 39.093784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765087, 36.446102, 39.051762>,  <31.003374, 36.459644, 39.026546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765087, 36.446102, 39.051762>,  <30.367941, 36.423531, 39.093784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765087, 36.446102, 39.051762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118587, 0.373963, -0.919831,
		-0.012621, 0.925725, 0.377987,
		0.992863, 0.056433, -0.105059,
		31.062946, 36.463032, 39.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412104, 37.097168, 38.810966>,  <30.367941, 36.423531, 39.093784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412104, 37.097168, 38.810966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737705, 36.877155, 38.736279>,  <30.933065, 36.745148, 38.691463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737705, 36.877155, 38.736279>,  <30.412104, 37.097168, 38.810966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737705, 36.877155, 38.736279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152761, 0.107433, -0.982406,
		0.560411, 0.828207, 0.003428,
		0.814004, -0.550028, -0.186724,
		30.981907, 36.712147, 38.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717695, 37.543011, 38.344135>,  <30.412104, 37.097168, 38.810966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717695, 37.543011, 38.344135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861216, 37.174774, 38.282467>,  <30.947329, 36.953831, 38.245464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861216, 37.174774, 38.282467>,  <30.717695, 37.543011, 38.344135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861216, 37.174774, 38.282467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133972, 0.112669, -0.984560,
		0.923749, 0.373918, -0.082908,
		0.358803, -0.920593, -0.154172,
		30.968857, 36.898598, 38.236214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260942, 37.608906, 37.825809>,  <30.717695, 37.543011, 38.344135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260942, 37.608906, 37.825809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119667, 37.234688, 37.824093>,  <31.034903, 37.010159, 37.823063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119667, 37.234688, 37.824093>,  <31.260942, 37.608906, 37.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119667, 37.234688, 37.824093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205409, 0.082016, -0.975233,
		0.912724, -0.343560, -0.221136,
		-0.353188, -0.935543, -0.004287,
		31.013710, 36.954025, 37.822807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558235, 37.342800, 37.274567>,  <31.260942, 37.608906, 37.825809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558235, 37.342800, 37.274567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244024, 37.108299, 37.353817>,  <31.055496, 36.967598, 37.401367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244024, 37.108299, 37.353817>,  <31.558235, 37.342800, 37.274567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244024, 37.108299, 37.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167386, -0.106937, -0.980075,
		0.595756, -0.803041, -0.014128,
		-0.785529, -0.586250, 0.198127,
		31.008366, 36.932423, 37.413254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721357, 36.781952, 36.849899>,  <31.558235, 37.342800, 37.274567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721357, 36.781952, 36.849899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330540, 36.770950, 36.934399>,  <31.096048, 36.764351, 36.985100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330540, 36.770950, 36.934399>,  <31.721357, 36.781952, 36.849899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330540, 36.770950, 36.934399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212305, 0.043808, -0.976221,
		0.017580, -0.998662, -0.048638,
		-0.977045, -0.027489, 0.211251,
		31.037426, 36.762699, 36.997772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428061, 36.150143, 36.524708>,  <31.721357, 36.781952, 36.849899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428061, 36.150143, 36.524708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146864, 36.425949, 36.594421>,  <30.978146, 36.591431, 36.636250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146864, 36.425949, 36.594421>,  <31.428061, 36.150143, 36.524708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146864, 36.425949, 36.594421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092847, 0.153979, -0.983702,
		-0.705112, -0.707715, -0.044226,
		-0.702991, 0.689514, 0.174282,
		30.935966, 36.632805, 36.646706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424454, 35.968647, 35.838223>,  <31.428061, 36.150143, 36.524708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424454, 35.968647, 35.838223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345911, 35.685513, 35.566807>,  <31.298786, 35.515633, 35.403957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345911, 35.685513, 35.566807>,  <31.424454, 35.968647, 35.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345911, 35.685513, 35.566807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961637, -0.003815, -0.274298,
		0.191568, -0.706371, 0.681426,
		-0.196356, -0.707832, -0.678542,
		31.287004, 35.473164, 35.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652477, 35.182522, 36.128746>,  <31.424454, 35.968647, 35.838223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652477, 35.182522, 36.128746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691219, 35.349239, 35.767216>,  <31.714464, 35.449268, 35.550297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691219, 35.349239, 35.767216>,  <31.652477, 35.182522, 36.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691219, 35.349239, 35.767216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978032, 0.128559, 0.164091,
		0.184587, -0.899865, -0.395184,
		0.096855, 0.416791, -0.903828,
		31.720276, 35.474277, 35.496067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172348, 34.794231, 35.695511>,  <31.652477, 35.182522, 36.128746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172348, 34.794231, 35.695511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120026, 35.181053, 35.608150>,  <32.088634, 35.413147, 35.555733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120026, 35.181053, 35.608150>,  <32.172348, 34.794231, 35.695511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120026, 35.181053, 35.608150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979158, 0.160538, 0.124405,
		0.155368, -0.197579, -0.967896,
		-0.130804, 0.967052, -0.218403,
		32.080784, 35.471169, 35.542629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174419, 34.061111, 35.458874>,  <32.172348, 34.794231, 35.695511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174419, 34.061111, 35.458874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104694, 33.667259, 35.454494>,  <32.062859, 33.430946, 35.451866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104694, 33.667259, 35.454494>,  <32.174419, 34.061111, 35.458874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104694, 33.667259, 35.454494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242141, 0.032089, 0.969711,
		-0.954454, 0.171681, -0.244013,
		-0.174311, -0.984630, -0.010944,
		32.052402, 33.371872, 35.451210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501780, 33.965904, 35.641144>,  <32.174419, 34.061111, 35.458874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501780, 33.965904, 35.641144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732185, 33.651741, 35.731781>,  <31.870428, 33.463245, 35.786163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732185, 33.651741, 35.731781>,  <31.501780, 33.965904, 35.641144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732185, 33.651741, 35.731781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235460, 0.106030, 0.966083,
		-0.782793, -0.609832, -0.123857,
		0.576015, -0.785406, 0.226591,
		31.904989, 33.416119, 35.799759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080315, 33.518372, 36.068211>,  <31.501780, 33.965904, 35.641144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080315, 33.518372, 36.068211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455101, 33.425102, 36.172306>,  <31.679974, 33.369141, 36.234764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455101, 33.425102, 36.172306>,  <31.080315, 33.518372, 36.068211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455101, 33.425102, 36.172306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266337, 0.005521, 0.963864,
		-0.226187, -0.972419, -0.056931,
		0.936965, -0.233176, 0.260240,
		31.736191, 33.355148, 36.250378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029701, 33.035275, 36.635235>,  <31.080315, 33.518372, 36.068211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029701, 33.035275, 36.635235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411728, 33.150372, 36.663673>,  <31.640944, 33.219429, 36.680737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411728, 33.150372, 36.663673>,  <31.029701, 33.035275, 36.635235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411728, 33.150372, 36.663673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040952, -0.109463, 0.993147,
		0.293551, -0.951432, -0.092760,
		0.955066, 0.287740, 0.071096,
		31.698248, 33.236694, 36.685001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383495, 32.406052, 36.986805>,  <31.029701, 33.035275, 36.635235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383495, 32.406052, 36.986805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621090, 32.726131, 37.019936>,  <31.763647, 32.918179, 37.039814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621090, 32.726131, 37.019936>,  <31.383495, 32.406052, 36.986805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621090, 32.726131, 37.019936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098195, -0.174300, 0.979784,
		0.798460, -0.573845, -0.182108,
		0.593986, 0.800201, 0.082823,
		31.799286, 32.966190, 37.044781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155670, 32.193108, 37.285027>,  <31.383495, 32.406052, 36.986805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155670, 32.193108, 37.285027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088737, 32.581329, 37.354328>,  <32.048576, 32.814262, 37.395908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088737, 32.581329, 37.354328>,  <32.155670, 32.193108, 37.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088737, 32.581329, 37.354328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097686, -0.158544, 0.982508,
		0.981049, 0.181329, -0.068281,
		-0.167331, 0.970559, 0.173253,
		32.038540, 32.872498, 37.406303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523853, 32.345345, 37.972973>,  <32.155670, 32.193108, 37.285027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523853, 32.345345, 37.972973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286266, 32.662731, 37.919895>,  <32.143715, 32.853165, 37.888046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286266, 32.662731, 37.919895>,  <32.523853, 32.345345, 37.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286266, 32.662731, 37.919895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179597, 0.030000, 0.983283,
		0.784187, 0.607869, 0.124686,
		-0.593967, 0.793470, -0.132697,
		32.108078, 32.900772, 37.880085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707859, 32.835476, 38.455276>,  <32.523853, 32.345345, 37.972973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707859, 32.835476, 38.455276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338875, 32.958866, 38.362400>,  <32.117485, 33.032902, 38.306675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338875, 32.958866, 38.362400>,  <32.707859, 32.835476, 38.455276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338875, 32.958866, 38.362400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220321, 0.073304, 0.972669,
		0.317068, 0.948403, 0.000345,
		-0.922457, 0.308478, -0.232195,
		32.062138, 33.051411, 38.292740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577820, 33.528862, 38.904507>,  <32.707859, 32.835476, 38.455276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577820, 33.528862, 38.904507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236290, 33.358784, 38.784374>,  <32.031372, 33.256737, 38.712296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236290, 33.358784, 38.784374>,  <32.577820, 33.528862, 38.904507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236290, 33.358784, 38.784374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328638, -0.007151, 0.944429,
		-0.403711, 0.905075, -0.133628,
		-0.853823, -0.425192, -0.300329,
		31.980143, 33.231228, 38.694275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168533, 34.017185, 39.152878>,  <32.577820, 33.528862, 38.904507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168533, 34.017185, 39.152878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970713, 33.673615, 39.099724>,  <31.852020, 33.467472, 39.067833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970713, 33.673615, 39.099724>,  <32.168533, 34.017185, 39.152878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970713, 33.673615, 39.099724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119111, -0.084466, 0.989281,
		-0.860946, 0.505082, -0.060535,
		-0.494555, -0.858928, -0.132881,
		31.822346, 33.415936, 39.059860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626692, 33.985016, 39.668644>,  <32.168533, 34.017185, 39.152878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626692, 33.985016, 39.668644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668745, 33.594975, 39.590538>,  <31.693977, 33.360950, 39.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668745, 33.594975, 39.590538>,  <31.626692, 33.985016, 39.668644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668745, 33.594975, 39.590538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343836, -0.219883, 0.912923,
		-0.933126, -0.028840, -0.358392,
		0.105133, -0.975100, -0.195263,
		31.700285, 33.302444, 39.531960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021511, 33.555660, 40.008858>,  <31.626692, 33.985016, 39.668644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021511, 33.555660, 40.008858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312492, 33.289940, 39.940136>,  <31.487082, 33.130508, 39.898903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312492, 33.289940, 39.940136>,  <31.021511, 33.555660, 40.008858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312492, 33.289940, 39.940136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197704, -0.442689, 0.874608,
		-0.657058, -0.602270, -0.453370,
		0.727453, -0.664302, -0.171801,
		31.530727, 33.090649, 39.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761396, 33.004711, 40.317318>,  <31.021511, 33.555660, 40.008858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761396, 33.004711, 40.317318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153063, 32.935249, 40.275208>,  <31.388062, 32.893574, 40.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153063, 32.935249, 40.275208>,  <30.761396, 33.004711, 40.317318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153063, 32.935249, 40.275208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019791, -0.434339, 0.900532,
		-0.202103, -0.883852, -0.421853,
		0.979164, -0.173651, -0.105273,
		31.446812, 32.883152, 40.243626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764864, 32.289215, 40.548092>,  <30.761396, 33.004711, 40.317318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764864, 32.289215, 40.548092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124372, 32.462883, 40.572468>,  <31.340076, 32.567081, 40.587093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124372, 32.462883, 40.572468>,  <30.764864, 32.289215, 40.548092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124372, 32.462883, 40.572468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114455, -0.366528, 0.923340,
		0.423218, -0.822896, -0.379117,
		0.898770, 0.434166, 0.060937,
		31.394003, 32.593132, 40.590748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236237, 31.728991, 40.712563>,  <30.764864, 32.289215, 40.548092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236237, 31.728991, 40.712563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420403, 32.064171, 40.829769>,  <31.530903, 32.265278, 40.900093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420403, 32.064171, 40.829769>,  <31.236237, 31.728991, 40.712563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420403, 32.064171, 40.829769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110673, -0.381689, 0.917641,
		0.880777, -0.390068, -0.268474,
		0.460416, 0.837950, 0.293013,
		31.558527, 32.315556, 40.917671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851030, 31.487391, 41.193508>,  <31.236237, 31.728991, 40.712563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851030, 31.487391, 41.193508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807997, 31.876657, 41.274872>,  <31.782177, 32.110218, 41.323689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807997, 31.876657, 41.274872>,  <31.851030, 31.487391, 41.193508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807997, 31.876657, 41.274872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255889, -0.170596, 0.951534,
		0.960701, 0.154418, -0.230670,
		-0.107583, 0.973166, 0.203406,
		31.775723, 32.168606, 41.335896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436184, 31.677353, 41.684052>,  <31.851030, 31.487391, 41.193508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436184, 31.677353, 41.684052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184063, 31.979216, 41.756950>,  <32.032791, 32.160332, 41.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184063, 31.979216, 41.756950>,  <32.436184, 31.677353, 41.684052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184063, 31.979216, 41.756950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212038, -0.058488, 0.975510,
		0.746835, 0.653507, -0.123152,
		-0.630299, 0.754657, 0.182249,
		31.994972, 32.205612, 41.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806347, 32.253918, 42.032932>,  <32.436184, 31.677353, 41.684052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806347, 32.253918, 42.032932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417179, 32.298626, 42.113869>,  <32.183678, 32.325451, 42.162430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417179, 32.298626, 42.113869>,  <32.806347, 32.253918, 42.032932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417179, 32.298626, 42.113869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187063, -0.133556, 0.973227,
		0.135799, 0.984719, 0.109031,
		-0.972916, 0.111768, 0.202341,
		32.125305, 32.332157, 42.174572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754532, 32.755959, 42.567406>,  <32.806347, 32.253918, 42.032932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754532, 32.755959, 42.567406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389011, 32.595409, 42.592270>,  <32.169701, 32.499077, 42.607189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389011, 32.595409, 42.592270>,  <32.754532, 32.755959, 42.567406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389011, 32.595409, 42.592270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102788, -0.080475, 0.991443,
		-0.392941, 0.912370, 0.114795,
		-0.913801, -0.401378, 0.062159,
		32.114872, 32.474995, 42.610916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555511, 33.050079, 43.160252>,  <32.754532, 32.755959, 42.567406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555511, 33.050079, 43.160252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309784, 32.741371, 43.094540>,  <32.162350, 32.556145, 43.055115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309784, 32.741371, 43.094540>,  <32.555511, 33.050079, 43.160252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309784, 32.741371, 43.094540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012841, -0.217943, 0.975877,
		-0.788957, 0.597386, 0.143796,
		-0.614315, -0.771771, -0.164277,
		32.125488, 32.509838, 43.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972363, 33.087826, 43.702072>,  <32.555511, 33.050079, 43.160252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972363, 33.087826, 43.702072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021164, 32.710430, 43.578815>,  <32.050446, 32.483994, 43.504860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021164, 32.710430, 43.578815>,  <31.972363, 33.087826, 43.702072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021164, 32.710430, 43.578815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171305, -0.285785, 0.942859,
		-0.977635, -0.167816, 0.126758,
		0.122001, -0.943486, -0.308141,
		32.057766, 32.427383, 43.486374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624638, 32.686436, 44.269585>,  <31.972363, 33.087826, 43.702072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624638, 32.686436, 44.269585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825689, 32.408890, 44.063316>,  <31.946320, 32.242363, 43.939556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825689, 32.408890, 44.063316>,  <31.624638, 32.686436, 44.269585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825689, 32.408890, 44.063316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104095, -0.543579, 0.832878,
		-0.858213, -0.472306, -0.200989,
		0.502627, -0.693865, -0.515672,
		31.976477, 32.200729, 43.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413326, 31.969166, 44.470798>,  <31.624638, 32.686436, 44.269585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413326, 31.969166, 44.470798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768129, 31.891832, 44.303066>,  <31.981010, 31.845432, 44.202427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768129, 31.891832, 44.303066>,  <31.413326, 31.969166, 44.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768129, 31.891832, 44.303066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168668, -0.709718, 0.683996,
		-0.429849, -0.677438, -0.596916,
		0.887007, -0.193334, -0.419334,
		32.034233, 31.833832, 44.177265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420040, 31.249243, 44.527813>,  <31.413326, 31.969166, 44.470798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420040, 31.249243, 44.527813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798340, 31.369457, 44.478439>,  <32.025318, 31.441586, 44.448814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798340, 31.369457, 44.478439>,  <31.420040, 31.249243, 44.527813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798340, 31.369457, 44.478439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307111, -0.702974, 0.641491,
		0.106023, -0.644597, -0.757136,
		0.945749, 0.300537, -0.123432,
		32.082066, 31.459618, 44.441410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843145, 30.666641, 44.497292>,  <31.420040, 31.249243, 44.527813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843145, 30.666641, 44.497292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094505, 30.957893, 44.606792>,  <32.245323, 31.132645, 44.672493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094505, 30.957893, 44.606792>,  <31.843145, 30.666641, 44.497292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094505, 30.957893, 44.606792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179098, -0.477890, 0.859968,
		0.756992, -0.491375, -0.430713,
		0.628400, 0.728129, 0.273755,
		32.283024, 31.176332, 44.688919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361324, 30.271027, 44.837982>,  <31.843145, 30.666641, 44.497292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361324, 30.271027, 44.837982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397778, 30.646000, 44.972397>,  <32.419647, 30.870983, 45.053043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397778, 30.646000, 44.972397>,  <32.361324, 30.271027, 44.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397778, 30.646000, 44.972397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232628, -0.348140, 0.908120,
		0.968287, -0.004587, -0.249799,
		0.091130, 0.937431, 0.336033,
		32.425117, 30.927229, 45.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100025, 30.339188, 45.074242>,  <32.361324, 30.271027, 44.837982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100025, 30.339188, 45.074242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831982, 30.572676, 45.257645>,  <32.671158, 30.712769, 45.367687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831982, 30.572676, 45.257645>,  <33.100025, 30.339188, 45.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831982, 30.572676, 45.257645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224030, -0.429858, 0.874661,
		0.707651, 0.688835, 0.157279,
		-0.670105, 0.583719, 0.458509,
		32.630951, 30.747791, 45.395199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552895, 30.534760, 45.733574>,  <33.100025, 30.339188, 45.074242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552895, 30.534760, 45.733574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904732, 30.347019, 45.764637>,  <34.115833, 30.234375, 45.783276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904732, 30.347019, 45.764637>,  <33.552895, 30.534760, 45.733574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904732, 30.347019, 45.764637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203198, 0.223064, -0.953390,
		0.430150, 0.854374, 0.291576,
		0.879592, -0.469348, 0.077656,
		34.168610, 30.206215, 45.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042820, 30.974283, 45.634319>,  <33.552895, 30.534760, 45.733574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042820, 30.974283, 45.634319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180599, 30.625345, 45.495544>,  <34.263268, 30.415981, 45.412277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180599, 30.625345, 45.495544>,  <34.042820, 30.974283, 45.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180599, 30.625345, 45.495544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132291, 0.410970, -0.901999,
		0.929439, 0.264793, 0.256961,
		0.344446, -0.872347, -0.346941,
		34.283932, 30.363642, 45.391460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677578, 31.197390, 45.301655>,  <34.042820, 30.974283, 45.634319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677578, 31.197390, 45.301655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639771, 30.829176, 45.150032>,  <34.617085, 30.608248, 45.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639771, 30.829176, 45.150032>,  <34.677578, 31.197390, 45.301655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639771, 30.829176, 45.150032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281274, 0.340552, -0.897167,
		0.954961, -0.191420, 0.226733,
		-0.094522, -0.920534, -0.379056,
		34.611412, 30.553017, 45.036316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279190, 31.089226, 44.862362>,  <34.677578, 31.197390, 45.301655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279190, 31.089226, 44.862362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022202, 30.813942, 44.727543>,  <34.868008, 30.648771, 44.646652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022202, 30.813942, 44.727543>,  <35.279190, 31.089226, 44.862362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022202, 30.813942, 44.727543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330445, 0.148031, -0.932144,
		0.691404, -0.710250, 0.132310,
		-0.642469, -0.688209, -0.337048,
		34.829460, 30.607479, 44.626427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652496, 30.647514, 44.259636>,  <35.279190, 31.089226, 44.862362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652496, 30.647514, 44.259636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261562, 30.576118, 44.214111>,  <35.027000, 30.533281, 44.186794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261562, 30.576118, 44.214111>,  <35.652496, 30.647514, 44.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261562, 30.576118, 44.214111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092424, 0.123913, -0.987979,
		0.190451, -0.976107, -0.104608,
		-0.977336, -0.178493, -0.113815,
		34.968361, 30.522572, 44.179966>
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
