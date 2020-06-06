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
	<24.492546, 35.550076, 34.677467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246651, 35.263657, 34.809753>,  <24.099113, 35.091805, 34.889126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246651, 35.263657, 34.809753>,  <24.492546, 35.550076, 34.677467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246651, 35.263657, 34.809753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400266, -0.078074, -0.913067,
		0.679620, -0.693672, -0.238614,
		-0.614740, -0.716047, 0.330714,
		24.062229, 35.048843, 34.908966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746176, 34.931625, 34.229782>,  <24.492546, 35.550076, 34.677467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746176, 34.931625, 34.229782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392427, 35.099617, 34.311268>,  <24.180178, 35.200413, 34.360161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392427, 35.099617, 34.311268>,  <24.746176, 34.931625, 34.229782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392427, 35.099617, 34.311268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047995, 0.352294, -0.934658,
		-0.464307, -0.836363, -0.291403,
		-0.884373, 0.419982, 0.203714,
		24.127115, 35.225613, 34.372383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463930, 35.162533, 34.384087>,  <24.746176, 34.931625, 34.229782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463930, 35.162533, 34.384087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234573, 35.196289, 34.710056>,  <25.096958, 35.216545, 34.905636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234573, 35.196289, 34.710056>,  <25.463930, 35.162533, 34.384087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234573, 35.196289, 34.710056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502824, 0.749058, -0.431370,
		-0.646828, -0.657107, -0.387070,
		-0.573394, 0.084394, 0.814921,
		25.062555, 35.221607, 34.954533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467024, 35.879986, 34.747364>,  <25.463930, 35.162533, 34.384087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467024, 35.879986, 34.747364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821674, 36.028828, 34.637505>,  <26.034464, 36.118134, 34.571590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821674, 36.028828, 34.637505>,  <25.467024, 35.879986, 34.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821674, 36.028828, 34.637505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190391, 0.247534, 0.949989,
		0.421483, -0.894575, 0.148624,
		0.886625, 0.372107, -0.274650,
		26.087662, 36.140461, 34.555111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070463, 35.670696, 35.122314>,  <25.467024, 35.879986, 34.747364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070463, 35.670696, 35.122314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176962, 36.024864, 34.969925>,  <26.240860, 36.237366, 34.878490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176962, 36.024864, 34.969925>,  <26.070463, 35.670696, 35.122314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176962, 36.024864, 34.969925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342934, 0.282366, 0.895916,
		0.900838, -0.369181, -0.228463,
		0.266245, 0.885424, -0.380971,
		26.256836, 36.290493, 34.855633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753294, 35.741272, 35.282776>,  <26.070463, 35.670696, 35.122314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753294, 35.741272, 35.282776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584387, 36.102356, 35.249802>,  <26.483042, 36.319008, 35.230019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584387, 36.102356, 35.249802>,  <26.753294, 35.741272, 35.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584387, 36.102356, 35.249802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412757, 0.272447, 0.869140,
		0.807044, 0.332986, -0.487648,
		-0.422270, 0.902714, -0.082435,
		26.457706, 36.373169, 35.225071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257908, 36.307594, 35.256172>,  <26.753294, 35.741272, 35.282776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257908, 36.307594, 35.256172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920324, 36.453735, 35.413273>,  <26.717773, 36.541420, 35.507534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920324, 36.453735, 35.413273>,  <27.257908, 36.307594, 35.256172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920324, 36.453735, 35.413273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521348, 0.386412, 0.760843,
		0.126211, 0.846880, -0.516590,
		-0.843960, 0.365350, 0.392750,
		26.667137, 36.563339, 35.531097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537107, 36.810753, 35.606293>,  <27.257908, 36.307594, 35.256172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537107, 36.810753, 35.606293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163988, 36.786755, 35.748444>,  <26.940117, 36.772358, 35.833733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163988, 36.786755, 35.748444>,  <27.537107, 36.810753, 35.606293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163988, 36.786755, 35.748444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300377, 0.415478, 0.858576,
		-0.199160, 0.907623, -0.369535,
		-0.932796, -0.059994, 0.355375,
		26.884150, 36.768757, 35.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524782, 37.343731, 36.066113>,  <27.537107, 36.810753, 35.606293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524782, 37.343731, 36.066113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182180, 37.158611, 36.157520>,  <26.976620, 37.047539, 36.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182180, 37.158611, 36.157520>,  <27.524782, 37.343731, 36.066113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182180, 37.158611, 36.157520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192958, 0.123539, 0.973399,
		-0.478717, 0.877814, -0.016512,
		-0.856503, -0.462796, 0.228521,
		26.925230, 37.019772, 36.226078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150297, 37.791779, 36.556431>,  <27.524782, 37.343731, 36.066113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150297, 37.791779, 36.556431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987568, 37.430115, 36.608562>,  <26.889931, 37.213116, 36.639843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987568, 37.430115, 36.608562>,  <27.150297, 37.791779, 36.556431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987568, 37.430115, 36.608562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069820, 0.111477, 0.991311,
		-0.910835, 0.412387, 0.017777,
		-0.406822, -0.904162, 0.130331,
		26.865520, 37.158867, 36.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607750, 37.872334, 37.144283>,  <27.150297, 37.791779, 36.556431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607750, 37.872334, 37.144283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736780, 37.494843, 37.115124>,  <26.814198, 37.268349, 37.097626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736780, 37.494843, 37.115124>,  <26.607750, 37.872334, 37.144283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736780, 37.494843, 37.115124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358503, 0.050531, 0.932160,
		-0.876025, -0.326828, 0.354631,
		0.322576, -0.943732, -0.072902,
		26.833553, 37.211723, 37.093254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435440, 37.592400, 37.727886>,  <26.607750, 37.872334, 37.144283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435440, 37.592400, 37.727886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738747, 37.365192, 37.599892>,  <26.920731, 37.228870, 37.523094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738747, 37.365192, 37.599892>,  <26.435440, 37.592400, 37.727886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738747, 37.365192, 37.599892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384324, -0.007015, 0.923171,
		-0.526619, -0.822989, 0.212982,
		0.758266, -0.568014, -0.319989,
		26.966227, 37.194790, 37.503895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933304, 37.762703, 38.287060>,  <26.435440, 37.592400, 37.727886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933304, 37.762703, 38.287060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098726, 37.409946, 38.377602>,  <27.197979, 37.198292, 38.431927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098726, 37.409946, 38.377602>,  <26.933304, 37.762703, 38.287060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098726, 37.409946, 38.377602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234088, -0.343244, -0.909608,
		0.879871, 0.323187, -0.348391,
		0.413557, -0.881892, 0.226356,
		27.222794, 37.145378, 38.445507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569407, 37.571259, 37.883659>,  <26.933304, 37.762703, 38.287060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569407, 37.571259, 37.883659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358065, 37.250484, 37.995186>,  <27.231260, 37.058018, 38.062099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358065, 37.250484, 37.995186>,  <27.569407, 37.571259, 37.883659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358065, 37.250484, 37.995186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021535, -0.315629, -0.948638,
		0.848751, -0.507221, 0.149494,
		-0.528354, -0.801938, 0.278814,
		27.199558, 37.009903, 38.078831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937010, 37.066273, 37.566498>,  <27.569407, 37.571259, 37.883659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937010, 37.066273, 37.566498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566301, 36.962395, 37.675060>,  <27.343876, 36.900070, 37.740196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566301, 36.962395, 37.675060>,  <27.937010, 37.066273, 37.566498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566301, 36.962395, 37.675060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270233, -0.040915, -0.961925,
		0.260909, -0.964824, -0.032259,
		-0.926769, -0.259693, 0.271402,
		27.288271, 36.884487, 37.756481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768543, 36.339916, 37.496540>,  <27.937010, 37.066273, 37.566498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768543, 36.339916, 37.496540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429129, 36.549248, 37.465256>,  <27.225479, 36.674847, 37.446484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429129, 36.549248, 37.465256>,  <27.768543, 36.339916, 37.496540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429129, 36.549248, 37.465256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130530, -0.350264, -0.927511,
		-0.512785, -0.776817, 0.365521,
		-0.848536, 0.523326, -0.078212,
		27.174568, 36.706245, 37.441792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253954, 35.953846, 37.164391>,  <27.768543, 36.339916, 37.496540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253954, 35.953846, 37.164391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114773, 36.327633, 37.134171>,  <27.031263, 36.551903, 37.116039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114773, 36.327633, 37.134171>,  <27.253954, 35.953846, 37.164391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114773, 36.327633, 37.134171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305989, -0.189365, -0.933012,
		-0.886171, -0.301529, 0.351826,
		-0.347954, 0.934463, -0.075546,
		27.010387, 36.607971, 37.111507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500185, 35.952824, 36.943062>,  <27.253954, 35.953846, 37.164391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500185, 35.952824, 36.943062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611298, 36.323559, 36.842026>,  <26.677965, 36.546001, 36.781406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611298, 36.323559, 36.842026>,  <26.500185, 35.952824, 36.943062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611298, 36.323559, 36.842026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362744, -0.142268, -0.920965,
		-0.889524, 0.347454, 0.296687,
		0.277783, 0.926842, -0.252588,
		26.694633, 36.601612, 36.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881481, 36.309803, 36.647186>,  <26.500185, 35.952824, 36.943062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881481, 36.309803, 36.647186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170824, 36.554821, 36.519722>,  <26.344429, 36.701832, 36.443245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170824, 36.554821, 36.519722>,  <25.881481, 36.309803, 36.647186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170824, 36.554821, 36.519722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434727, 0.045475, -0.899413,
		-0.536441, 0.789126, 0.299185,
		0.723356, 0.612546, -0.318660,
		26.387831, 36.738586, 36.424126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676815, 36.925980, 36.300079>,  <25.881481, 36.309803, 36.647186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676815, 36.925980, 36.300079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049679, 36.897160, 36.158157>,  <26.273397, 36.879868, 36.073006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049679, 36.897160, 36.158157>,  <25.676815, 36.925980, 36.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049679, 36.897160, 36.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359370, -0.065259, -0.930910,
		0.043921, 0.995264, -0.086725,
		0.932161, -0.072052, -0.354802,
		26.329327, 36.875546, 36.051716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719494, 37.403122, 35.782501>,  <25.676815, 36.925980, 36.300079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719494, 37.403122, 35.782501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987627, 37.113449, 35.717731>,  <26.148506, 36.939648, 35.678871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987627, 37.113449, 35.717731>,  <25.719494, 37.403122, 35.782501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987627, 37.113449, 35.717731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197546, 0.036180, -0.979626,
		0.715284, 0.688661, -0.118806,
		0.670331, -0.724180, -0.161921,
		26.188726, 36.896194, 35.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075861, 37.670506, 35.053154>,  <25.719494, 37.403122, 35.782501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075861, 37.670506, 35.053154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209019, 37.293694, 35.069923>,  <26.288914, 37.067604, 35.079987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209019, 37.293694, 35.069923>,  <26.075861, 37.670506, 35.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209019, 37.293694, 35.069923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085795, -0.074536, -0.993521,
		0.939053, 0.327141, -0.105634,
		0.332894, -0.942032, 0.041926,
		26.308887, 37.011086, 35.082500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617018, 37.533886, 34.491516>,  <26.075861, 37.670506, 35.053154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617018, 37.533886, 34.491516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471146, 37.179501, 34.606113>,  <26.383623, 36.966869, 34.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471146, 37.179501, 34.606113>,  <26.617018, 37.533886, 34.491516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471146, 37.179501, 34.606113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161654, -0.242767, -0.956521,
		0.916993, -0.395136, -0.054687,
		-0.364680, -0.885964, 0.286491,
		26.361742, 36.913712, 34.692062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861080, 37.003292, 34.141174>,  <26.617018, 37.533886, 34.491516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861080, 37.003292, 34.141174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517099, 36.846172, 34.271523>,  <26.310711, 36.751900, 34.349731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517099, 36.846172, 34.271523>,  <26.861080, 37.003292, 34.141174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517099, 36.846172, 34.271523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173105, -0.376165, -0.910239,
		0.480126, -0.839169, 0.255486,
		-0.859949, -0.392803, 0.325871,
		26.259115, 36.728333, 34.369286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785500, 36.199024, 34.300194>,  <26.861080, 37.003292, 34.141174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785500, 36.199024, 34.300194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455645, 36.374130, 34.156902>,  <26.257730, 36.479195, 34.070927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455645, 36.374130, 34.156902>,  <26.785500, 36.199024, 34.300194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455645, 36.374130, 34.156902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141823, -0.453066, -0.880124,
		-0.547593, -0.776589, 0.311530,
		-0.824638, 0.437768, -0.358234,
		26.208254, 36.505459, 34.049431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973822, 36.272556, 33.523293>,  <26.785500, 36.199024, 34.300194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973822, 36.272556, 33.523293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340519, 36.429794, 33.494839>,  <27.560537, 36.524139, 33.477768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340519, 36.429794, 33.494839>,  <26.973822, 36.272556, 33.523293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340519, 36.429794, 33.494839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398008, -0.914040, 0.078232,
		-0.034263, -0.100029, -0.994394,
		0.916741, 0.393097, -0.071130,
		27.615541, 36.547722, 33.473499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273067, 35.747643, 33.205460>,  <26.973822, 36.272556, 33.523293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273067, 35.747643, 33.205460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568623, 35.976597, 33.347683>,  <27.745956, 36.113968, 33.433018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568623, 35.976597, 33.347683>,  <27.273067, 35.747643, 33.205460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568623, 35.976597, 33.347683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592469, -0.803218, 0.061817,
		0.320971, 0.164979, -0.932609,
		0.738890, 0.572384, 0.355554,
		27.790289, 36.148312, 33.454350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745651, 35.446381, 32.879276>,  <27.273067, 35.747643, 33.205460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745651, 35.446381, 32.879276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979095, 35.640602, 33.139629>,  <28.119162, 35.757133, 33.295841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979095, 35.640602, 33.139629>,  <27.745651, 35.446381, 32.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979095, 35.640602, 33.139629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571068, -0.815255, 0.096125,
		0.577305, 0.315596, -0.753072,
		0.583609, 0.485549, 0.650878,
		28.154179, 35.786266, 33.334892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523596, 35.324398, 32.817577>,  <27.745651, 35.446381, 32.879276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523596, 35.324398, 32.817577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439987, 35.422264, 33.196301>,  <28.389822, 35.480984, 33.423534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439987, 35.422264, 33.196301>,  <28.523596, 35.324398, 32.817577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439987, 35.422264, 33.196301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448268, -0.836511, 0.315128,
		0.869118, 0.490293, 0.065174,
		-0.209024, 0.244668, 0.946809,
		28.377279, 35.495663, 33.480343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118742, 35.286510, 33.235970>,  <28.523596, 35.324398, 32.817577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118742, 35.286510, 33.235970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798012, 35.195633, 33.457043>,  <28.605574, 35.141106, 33.589687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798012, 35.195633, 33.457043>,  <29.118742, 35.286510, 33.235970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798012, 35.195633, 33.457043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377741, -0.909377, 0.174198,
		0.463016, 0.348446, 0.814985,
		-0.801827, -0.227197, 0.552679,
		28.557463, 35.127472, 33.622845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351959, 34.986668, 33.878712>,  <29.118742, 35.286510, 33.235970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351959, 34.986668, 33.878712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976622, 34.853809, 33.840370>,  <28.751419, 34.774094, 33.817368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976622, 34.853809, 33.840370>,  <29.351959, 34.986668, 33.878712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976622, 34.853809, 33.840370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269567, -0.876591, 0.398651,
		-0.216431, 0.348234, 0.912080,
		-0.938345, -0.332147, -0.095849,
		28.695118, 34.754166, 33.811615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089510, 34.733006, 34.512909>,  <29.351959, 34.986668, 33.878712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089510, 34.733006, 34.512909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962828, 34.524170, 34.196144>,  <28.886818, 34.398869, 34.006084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962828, 34.524170, 34.196144>,  <29.089510, 34.733006, 34.512909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962828, 34.524170, 34.196144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427615, -0.823819, 0.372112,
		-0.846665, -0.220782, 0.484163,
		-0.316707, -0.522089, -0.791909,
		28.867815, 34.367542, 33.958572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634050, 34.179955, 34.711178>,  <29.089510, 34.733006, 34.512909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634050, 34.179955, 34.711178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789824, 34.068962, 34.359875>,  <28.883287, 34.002365, 34.149094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789824, 34.068962, 34.359875>,  <28.634050, 34.179955, 34.711178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789824, 34.068962, 34.359875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295173, -0.865649, 0.404383,
		-0.872478, -0.416718, -0.255202,
		0.389428, -0.277487, -0.878263,
		28.906652, 33.985718, 34.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470161, 33.481312, 34.687271>,  <28.634050, 34.179955, 34.711178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470161, 33.481312, 34.687271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765087, 33.540813, 34.423683>,  <28.942043, 33.576515, 34.265530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765087, 33.540813, 34.423683>,  <28.470161, 33.481312, 34.687271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765087, 33.540813, 34.423683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414817, -0.869593, 0.267834,
		-0.533191, -0.470829, -0.702871,
		0.737316, 0.148756, -0.658967,
		28.986282, 33.585442, 34.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652905, 32.843403, 34.480881>,  <28.470161, 33.481312, 34.687271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652905, 32.843403, 34.480881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956875, 33.017899, 34.288132>,  <29.139257, 33.122597, 34.172482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956875, 33.017899, 34.288132>,  <28.652905, 32.843403, 34.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956875, 33.017899, 34.288132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501324, -0.865229, 0.007310,
		-0.413743, -0.247130, -0.876210,
		0.759928, 0.436241, -0.481875,
		29.184853, 33.148769, 34.143570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843380, 32.392017, 33.961372>,  <28.652905, 32.843403, 34.480881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843380, 32.392017, 33.961372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170477, 32.610882, 34.032825>,  <29.366735, 32.742199, 34.075699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170477, 32.610882, 34.032825>,  <28.843380, 32.392017, 33.961372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170477, 32.610882, 34.032825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541456, -0.836550, 0.083724,
		0.195249, 0.028260, -0.980346,
		0.817742, 0.547162, 0.178637,
		29.415800, 32.775032, 34.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442978, 32.112045, 33.548531>,  <28.843380, 32.392017, 33.961372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442978, 32.112045, 33.548531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575838, 32.306042, 33.872128>,  <29.655554, 32.422440, 34.066284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575838, 32.306042, 33.872128>,  <29.442978, 32.112045, 33.548531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575838, 32.306042, 33.872128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549783, -0.796466, 0.251755,
		0.766431, 0.361148, -0.531184,
		0.332149, 0.484988, 0.808989,
		29.675484, 32.451538, 34.114822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083212, 31.934683, 33.435074>,  <29.442978, 32.112045, 33.548531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083212, 31.934683, 33.435074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035225, 32.056252, 33.813118>,  <30.006432, 32.129192, 34.039944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035225, 32.056252, 33.813118>,  <30.083212, 31.934683, 33.435074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035225, 32.056252, 33.813118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597005, -0.738542, 0.313275,
		0.793217, 0.601820, -0.092841,
		-0.119969, 0.303922, 0.945113,
		29.999235, 32.147427, 34.096653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924234, 31.307354, 33.949409>,  <30.083212, 31.934683, 33.435074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924234, 31.307354, 33.949409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117508, 30.966576, 33.868687>,  <30.233473, 30.762110, 33.820255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117508, 30.966576, 33.868687>,  <29.924234, 31.307354, 33.949409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117508, 30.966576, 33.868687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089228, -0.181379, 0.979357,
		-0.870960, -0.491216, -0.011622,
		0.483183, -0.851944, -0.201804,
		30.262463, 30.710993, 33.808144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574402, 30.719404, 34.272678>,  <29.924234, 31.307354, 33.949409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574402, 30.719404, 34.272678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972147, 30.691154, 34.241043>,  <30.210794, 30.674206, 34.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972147, 30.691154, 34.241043>,  <29.574402, 30.719404, 34.272678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972147, 30.691154, 34.241043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080122, 0.011964, 0.996713,
		-0.069448, -0.997431, 0.017556,
		0.994363, -0.070627, -0.079085,
		30.270456, 30.669968, 34.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309469, 31.303978, 34.445408>,  <29.574402, 30.719404, 34.272678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309469, 31.303978, 34.445408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689852, 31.323362, 34.567612>,  <29.918081, 31.334993, 34.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689852, 31.323362, 34.567612>,  <29.309469, 31.303978, 34.445408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689852, 31.323362, 34.567612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037638, 0.962187, -0.269777,
		-0.307030, 0.268045, 0.913173,
		0.950955, 0.048460, 0.305509,
		29.975138, 31.337900, 34.659264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449816, 31.719389, 35.050694>,  <29.309469, 31.303978, 34.445408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449816, 31.719389, 35.050694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767218, 31.734877, 34.807762>,  <29.957659, 31.744169, 34.662003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767218, 31.734877, 34.807762>,  <29.449816, 31.719389, 35.050694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767218, 31.734877, 34.807762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152691, 0.978718, -0.137100,
		0.589096, 0.201523, 0.782531,
		0.793506, 0.038721, -0.607329,
		30.005270, 31.746492, 34.625565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839087, 32.327015, 35.383320>,  <29.449816, 31.719389, 35.050694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839087, 32.327015, 35.383320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928337, 32.307423, 34.993896>,  <29.981888, 32.295666, 34.760242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928337, 32.307423, 34.993896>,  <29.839087, 32.327015, 35.383320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928337, 32.307423, 34.993896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204220, 0.974224, -0.095823,
		0.953158, 0.220201, 0.207370,
		0.223125, -0.048985, -0.973558,
		29.995275, 32.292728, 34.701828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094828, 32.972904, 35.217434>,  <29.839087, 32.327015, 35.383320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094828, 32.972904, 35.217434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959742, 32.811256, 34.877403>,  <29.878691, 32.714268, 34.673386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959742, 32.811256, 34.877403>,  <30.094828, 32.972904, 35.217434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959742, 32.811256, 34.877403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354110, 0.891338, -0.283059,
		0.872097, 0.205427, -0.444124,
		-0.337717, -0.404124, -0.850077,
		29.858427, 32.690018, 34.622379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384975, 33.439320, 34.543186>,  <30.094828, 32.972904, 35.217434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384975, 33.439320, 34.543186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042679, 33.239780, 34.488255>,  <29.837301, 33.120056, 34.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042679, 33.239780, 34.488255>,  <30.384975, 33.439320, 34.543186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042679, 33.239780, 34.488255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381650, 0.787791, -0.483455,
		0.349355, -0.361301, -0.864530,
		-0.855742, -0.498845, -0.137328,
		29.785955, 33.090126, 34.447056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178328, 33.884529, 34.067451>,  <30.384975, 33.439320, 34.543186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178328, 33.884529, 34.067451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880865, 33.617142, 34.062927>,  <29.702389, 33.456711, 34.060211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880865, 33.617142, 34.062927>,  <30.178328, 33.884529, 34.067451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880865, 33.617142, 34.062927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605041, 0.680101, -0.413991,
		0.284435, -0.301020, -0.910211,
		-0.743654, -0.668468, -0.011315,
		29.657768, 33.416603, 34.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900089, 33.832886, 33.312508>,  <30.178328, 33.884529, 34.067451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900089, 33.832886, 33.312508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624683, 33.747391, 33.589710>,  <29.459440, 33.696095, 33.756035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624683, 33.747391, 33.589710>,  <29.900089, 33.832886, 33.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624683, 33.747391, 33.589710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629013, 0.651612, -0.423963,
		-0.360958, -0.727817, -0.583088,
		-0.688514, -0.213737, 0.693011,
		29.418129, 33.683270, 33.797615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362118, 33.653973, 32.926777>,  <29.900089, 33.832886, 33.312508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362118, 33.653973, 32.926777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227442, 33.748104, 33.291470>,  <29.146637, 33.804585, 33.510284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227442, 33.748104, 33.291470>,  <29.362118, 33.653973, 32.926777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227442, 33.748104, 33.291470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596477, 0.695917, -0.399894,
		-0.728598, -0.678469, -0.093939,
		-0.336689, 0.235329, 0.911735,
		29.126434, 33.818703, 33.564991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667824, 33.662861, 32.852142>,  <29.362118, 33.653973, 32.926777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667824, 33.662861, 32.852142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728601, 33.890926, 33.175083>,  <28.765068, 34.027767, 33.368847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728601, 33.890926, 33.175083>,  <28.667824, 33.662861, 32.852142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728601, 33.890926, 33.175083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516238, 0.742349, -0.427102,
		-0.842859, -0.351891, 0.407139,
		0.151946, 0.570167, 0.807355,
		28.774185, 34.061977, 33.417290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075222, 33.947655, 33.202740>,  <28.667824, 33.662861, 32.852142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075222, 33.947655, 33.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379286, 34.196228, 33.278606>,  <28.561724, 34.345371, 33.324127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379286, 34.196228, 33.278606>,  <28.075222, 33.947655, 33.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379286, 34.196228, 33.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601224, 0.783445, -0.157299,
		-0.246345, 0.005540, 0.969166,
		0.760160, 0.621436, 0.189667,
		28.607334, 34.382660, 33.335506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487232, 34.328583, 33.538078>,  <28.075222, 33.947655, 33.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487232, 34.328583, 33.538078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867069, 34.438072, 33.599190>,  <28.094973, 34.503765, 33.635857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867069, 34.438072, 33.599190>,  <27.487232, 34.328583, 33.538078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867069, 34.438072, 33.599190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230528, 0.940036, -0.251375,
		-0.212429, 0.203483, 0.955756,
		0.949595, 0.273728, 0.152782,
		28.151947, 34.520191, 33.645023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626835, 34.738190, 34.182735>,  <27.487232, 34.328583, 33.538078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626835, 34.738190, 34.182735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837387, 34.805828, 33.849430>,  <27.963718, 34.846413, 33.649448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837387, 34.805828, 33.849430>,  <27.626835, 34.738190, 34.182735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837387, 34.805828, 33.849430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528977, 0.832394, -0.165238,
		0.665662, 0.527755, 0.527607,
		0.526382, 0.169100, -0.833263,
		27.995302, 34.856560, 33.599453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758984, 35.239731, 34.587276>,  <27.626835, 34.738190, 34.182735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758984, 35.239731, 34.587276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081797, 35.271893, 34.353271>,  <28.275484, 35.291187, 34.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081797, 35.271893, 34.353271>,  <27.758984, 35.239731, 34.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081797, 35.271893, 34.353271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361914, 0.850158, -0.382426,
		0.466602, 0.520353, 0.715203,
		0.807032, 0.080401, -0.585008,
		28.323906, 35.296013, 34.177769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166805, 35.846962, 34.721386>,  <27.758984, 35.239731, 34.587276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166805, 35.846962, 34.721386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203022, 35.729980, 34.340591>,  <28.224752, 35.659790, 34.112114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203022, 35.729980, 34.340591>,  <28.166805, 35.846962, 34.721386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203022, 35.729980, 34.340591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188014, 0.933700, -0.304722,
		0.977984, 0.206575, 0.029551,
		0.090540, -0.292458, -0.951983,
		28.230185, 35.642242, 34.054996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698721, 36.206196, 34.440220>,  <28.166805, 35.846962, 34.721386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698721, 36.206196, 34.440220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460236, 36.108463, 34.134323>,  <28.317144, 36.049824, 33.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460236, 36.108463, 34.134323>,  <28.698721, 36.206196, 34.440220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460236, 36.108463, 34.134323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061675, 0.963688, -0.259811,
		0.800454, -0.107737, -0.589632,
		-0.596213, -0.244332, -0.764743,
		28.281372, 36.035164, 33.904900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830042, 36.766972, 33.989277>,  <28.698721, 36.206196, 34.440220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830042, 36.766972, 33.989277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509489, 36.577599, 33.843044>,  <28.317158, 36.463974, 33.755306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509489, 36.577599, 33.843044>,  <28.830042, 36.766972, 33.989277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509489, 36.577599, 33.843044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375440, 0.873914, -0.308740,
		0.465651, -0.110166, -0.878085,
		-0.801383, -0.473433, -0.365577,
		28.269073, 36.435570, 33.733372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707159, 36.949413, 33.282291>,  <28.830042, 36.766972, 33.989277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707159, 36.949413, 33.282291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349497, 36.871815, 33.443710>,  <28.134899, 36.825256, 33.540562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349497, 36.871815, 33.443710>,  <28.707159, 36.949413, 33.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349497, 36.871815, 33.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310548, 0.917955, -0.246816,
		-0.322558, -0.346013, -0.881040,
		-0.894157, -0.193993, 0.403548,
		28.081249, 36.813618, 33.564774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156519, 37.367390, 32.946602>,  <28.707159, 36.949413, 33.282291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156519, 37.367390, 32.946602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002958, 37.266582, 33.301929>,  <27.910822, 37.206097, 33.515125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002958, 37.266582, 33.301929>,  <28.156519, 37.367390, 32.946602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002958, 37.266582, 33.301929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413614, 0.907054, 0.078588,
		-0.825557, -0.337250, -0.452459,
		-0.383901, -0.252022, 0.888316,
		27.887789, 37.190975, 33.568424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814909, 37.730576, 33.145638>,  <28.156519, 37.367390, 32.946602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814909, 37.730576, 33.145638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842346, 37.551834, 32.788849>,  <28.858809, 37.444588, 32.574776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842346, 37.551834, 32.788849>,  <28.814909, 37.730576, 33.145638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842346, 37.551834, 32.788849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019646, 0.893301, -0.449029,
		0.997451, 0.048325, 0.052496,
		0.068594, -0.446853, -0.891974,
		28.862925, 37.417778, 32.521255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468075, 37.806988, 32.768578>,  <28.814909, 37.730576, 33.145638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468075, 37.806988, 32.768578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138447, 37.793602, 32.542377>,  <28.940670, 37.785572, 32.406658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138447, 37.793602, 32.542377>,  <29.468075, 37.806988, 32.768578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138447, 37.793602, 32.542377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223083, 0.898423, -0.378247,
		0.520713, -0.437855, -0.732899,
		-0.824071, -0.033461, -0.565498,
		28.891226, 37.783566, 32.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638590, 38.022472, 32.123795>,  <29.468075, 37.806988, 32.768578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638590, 38.022472, 32.123795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251949, 38.115978, 32.165810>,  <29.019964, 38.172081, 32.191017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251949, 38.115978, 32.165810>,  <29.638590, 38.022472, 32.123795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251949, 38.115978, 32.165810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178645, 0.908463, -0.377864,
		-0.183757, -0.346479, -0.919883,
		-0.966602, 0.233768, 0.105039,
		28.961969, 38.186108, 32.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135647, 38.074471, 31.537495>,  <29.638590, 38.022472, 32.123795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135647, 38.074471, 31.537495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086294, 38.306576, 31.859507>,  <29.056683, 38.445839, 32.052711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086294, 38.306576, 31.859507>,  <29.135647, 38.074471, 31.537495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086294, 38.306576, 31.859507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269677, 0.800304, -0.535526,
		-0.955014, 0.151022, -0.255228,
		-0.123384, 0.580264, 0.805028,
		29.049278, 38.480656, 32.101013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499924, 38.256744, 31.251623>,  <29.135647, 38.074471, 31.537495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499924, 38.256744, 31.251623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647049, 38.593643, 31.409271>,  <28.735323, 38.795784, 31.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647049, 38.593643, 31.409271>,  <28.499924, 38.256744, 31.251623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647049, 38.593643, 31.409271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277275, 0.305213, -0.911023,
		-0.887599, 0.444365, -0.121274,
		0.367812, 0.842250, 0.394118,
		28.757393, 38.846317, 31.527506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184423, 38.867413, 30.820087>,  <28.499924, 38.256744, 31.251623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184423, 38.867413, 30.820087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531803, 38.950634, 31.000092>,  <28.740231, 39.000565, 31.108095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531803, 38.950634, 31.000092>,  <28.184423, 38.867413, 30.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531803, 38.950634, 31.000092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363093, 0.351146, -0.863053,
		-0.337580, 0.912913, 0.229411,
		0.868449, 0.208052, 0.450012,
		28.792337, 39.013050, 31.135096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429718, 39.566769, 30.632496>,  <28.184423, 38.867413, 30.820087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429718, 39.566769, 30.632496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721651, 39.301723, 30.699772>,  <28.896811, 39.142696, 30.740137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721651, 39.301723, 30.699772>,  <28.429718, 39.566769, 30.632496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721651, 39.301723, 30.699772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297822, 0.086724, -0.950674,
		0.615343, 0.743923, 0.260635,
		0.729832, -0.662614, 0.168192,
		28.940601, 39.102940, 30.750229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126303, 39.846519, 30.590397>,  <28.429718, 39.566769, 30.632496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126303, 39.846519, 30.590397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153803, 39.460125, 30.490675>,  <29.170303, 39.228291, 30.430841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153803, 39.460125, 30.490675>,  <29.126303, 39.846519, 30.590397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153803, 39.460125, 30.490675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156544, 0.257246, -0.953582,
		0.985275, 0.026532, 0.168904,
		0.068750, -0.965982, -0.249305,
		29.174427, 39.170330, 30.415884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788591, 40.508564, 30.558752>,  <29.126303, 39.846519, 30.590397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788591, 40.508564, 30.558752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664616, 40.882904, 30.491671>,  <28.590231, 41.107510, 30.451422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664616, 40.882904, 30.491671>,  <28.788591, 40.508564, 30.558752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664616, 40.882904, 30.491671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297139, -0.262899, -0.917928,
		-0.903131, -0.234672, 0.359560,
		-0.309940, 0.935849, -0.167702,
		28.571634, 41.163658, 30.441360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100410, 40.510777, 30.353340>,  <28.788591, 40.508564, 30.558752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100410, 40.510777, 30.353340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309559, 40.806458, 30.183546>,  <28.435047, 40.983868, 30.081669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309559, 40.806458, 30.183546>,  <28.100410, 40.510777, 30.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309559, 40.806458, 30.183546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315814, -0.294550, -0.901943,
		-0.791750, 0.605658, 0.079438,
		0.522871, 0.739201, -0.424485,
		28.466419, 41.028217, 30.056200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678877, 40.809330, 29.747276>,  <28.100410, 40.510777, 30.353340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678877, 40.809330, 29.747276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052589, 40.922657, 29.660700>,  <28.276817, 40.990654, 29.608755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052589, 40.922657, 29.660700>,  <27.678877, 40.809330, 29.747276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052589, 40.922657, 29.660700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193767, -0.106095, -0.975294,
		-0.299281, 0.953140, -0.044225,
		0.934283, 0.283317, -0.216440,
		28.332874, 41.007652, 29.595768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603773, 41.229881, 29.141317>,  <27.678877, 40.809330, 29.747276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603773, 41.229881, 29.141317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998152, 41.163113, 29.138538>,  <28.234779, 41.123051, 29.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998152, 41.163113, 29.138538>,  <27.603773, 41.229881, 29.141317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998152, 41.163113, 29.138538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001830, 0.052385, -0.998625,
		0.167053, 0.984578, 0.051954,
		0.985946, -0.166919, -0.006950,
		28.293936, 41.113037, 29.136454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897425, 41.806870, 28.708933>,  <27.603773, 41.229881, 29.141317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897425, 41.806870, 28.708933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166906, 41.515533, 28.758953>,  <28.328596, 41.340733, 28.788965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166906, 41.515533, 28.758953>,  <27.897425, 41.806870, 28.708933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166906, 41.515533, 28.758953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172205, -0.009833, -0.985012,
		0.718657, 0.685141, 0.118800,
		0.673704, -0.728343, 0.125052,
		28.369019, 41.297031, 28.796469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481094, 42.011093, 28.303732>,  <27.897425, 41.806870, 28.708933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481094, 42.011093, 28.303732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473143, 41.614162, 28.352558>,  <28.468370, 41.376003, 28.381855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473143, 41.614162, 28.352558>,  <28.481094, 42.011093, 28.303732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473143, 41.614162, 28.352558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064139, -0.120574, -0.990630,
		0.997743, -0.027523, -0.061250,
		-0.019880, -0.992323, 0.122067,
		28.467178, 41.316467, 28.389177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777855, 41.972462, 27.779381>,  <28.481094, 42.011093, 28.303732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777855, 41.972462, 27.779381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643167, 41.609650, 27.880505>,  <28.562355, 41.391960, 27.941179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643167, 41.609650, 27.880505>,  <28.777855, 41.972462, 27.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643167, 41.609650, 27.880505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020112, -0.275354, -0.961133,
		0.941391, -0.318546, 0.110959,
		-0.336717, -0.907033, 0.252809,
		28.542152, 41.337540, 27.956347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201601, 41.552048, 27.368721>,  <28.777855, 41.972462, 27.779381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201601, 41.552048, 27.368721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876181, 41.334679, 27.451496>,  <28.680929, 41.204258, 27.501162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876181, 41.334679, 27.451496>,  <29.201601, 41.552048, 27.368721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876181, 41.334679, 27.451496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008932, -0.344150, -0.938872,
		0.581426, -0.765668, 0.275129,
		-0.813551, -0.543427, 0.206937,
		28.632116, 41.171650, 27.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338552, 40.904797, 27.062027>,  <29.201601, 41.552048, 27.368721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338552, 40.904797, 27.062027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939959, 40.900284, 27.095234>,  <28.700802, 40.897575, 27.115158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939959, 40.900284, 27.095234>,  <29.338552, 40.904797, 27.062027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939959, 40.900284, 27.095234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076953, -0.268524, -0.960194,
		0.033121, -0.963207, 0.266712,
		-0.996484, -0.011278, 0.083015,
		28.641014, 40.896900, 27.120138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242907, 40.316364, 26.796015>,  <29.338552, 40.904797, 27.062027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242907, 40.316364, 26.796015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865599, 40.446114, 26.767649>,  <28.639214, 40.523964, 26.750629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865599, 40.446114, 26.767649>,  <29.242907, 40.316364, 26.796015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865599, 40.446114, 26.767649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067240, -0.395763, -0.915888,
		-0.325151, -0.859160, 0.395122,
		-0.943269, 0.324370, -0.070913,
		28.582619, 40.543427, 26.746374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813162, 39.781422, 26.526260>,  <29.242907, 40.316364, 26.796015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813162, 39.781422, 26.526260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659630, 40.141548, 26.444181>,  <28.567511, 40.357624, 26.394934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659630, 40.141548, 26.444181>,  <28.813162, 39.781422, 26.526260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659630, 40.141548, 26.444181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066189, -0.194823, -0.978603,
		-0.921029, -0.389198, 0.015188,
		-0.383829, 0.900316, -0.205199,
		28.544481, 40.411644, 26.382622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548889, 39.617577, 25.896015>,  <28.813162, 39.781422, 26.526260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548889, 39.617577, 25.896015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507748, 40.015015, 25.914768>,  <28.483063, 40.253475, 25.926020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507748, 40.015015, 25.914768>,  <28.548889, 39.617577, 25.896015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507748, 40.015015, 25.914768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080558, 0.038657, -0.996000,
		-0.991429, -0.106218, 0.076065,
		-0.102852, 0.993591, 0.046882,
		28.476892, 40.313091, 25.928833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995535, 39.688133, 25.499674>,  <28.548889, 39.617577, 25.896015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995535, 39.688133, 25.499674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160830, 40.050957, 25.531889>,  <28.260006, 40.268650, 25.551218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160830, 40.050957, 25.531889>,  <27.995535, 39.688133, 25.499674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160830, 40.050957, 25.531889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043012, 0.068903, -0.996696,
		-0.909606, 0.415337, -0.010541,
		0.413239, 0.907054, 0.080539,
		28.284801, 40.323074, 25.556051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624937, 40.234501, 25.036325>,  <27.995535, 39.688133, 25.499674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624937, 40.234501, 25.036325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991621, 40.384380, 25.091814>,  <28.211632, 40.474308, 25.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991621, 40.384380, 25.091814>,  <27.624937, 40.234501, 25.036325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991621, 40.384380, 25.091814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057653, 0.219508, -0.973906,
		-0.395374, 0.900786, 0.179622,
		0.916709, 0.374701, 0.138721,
		28.266634, 40.496792, 25.133430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611946, 40.904915, 24.729670>,  <27.624937, 40.234501, 25.036325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611946, 40.904915, 24.729670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982389, 40.756157, 24.755009>,  <28.204655, 40.666901, 24.770212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982389, 40.756157, 24.755009>,  <27.611946, 40.904915, 24.729670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982389, 40.756157, 24.755009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111437, 0.109248, -0.987748,
		0.360422, 0.921822, 0.142618,
		0.926109, -0.371899, 0.063349,
		28.260221, 40.644588, 24.774014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091553, 41.463154, 24.492239>,  <27.611946, 40.904915, 24.729670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091553, 41.463154, 24.492239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266518, 41.107674, 24.437279>,  <28.371496, 40.894386, 24.404303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266518, 41.107674, 24.437279>,  <28.091553, 41.463154, 24.492239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266518, 41.107674, 24.437279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166963, 0.230397, -0.958666,
		0.883625, 0.396392, 0.249159,
		0.437413, -0.888702, -0.137402,
		28.397741, 40.841064, 24.396059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719284, 41.524384, 24.096907>,  <28.091553, 41.463154, 24.492239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719284, 41.524384, 24.096907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680309, 41.128136, 24.058596>,  <28.656925, 40.890385, 24.035608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680309, 41.128136, 24.058596>,  <28.719284, 41.524384, 24.096907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680309, 41.128136, 24.058596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014988, 0.094766, -0.995387,
		0.995129, -0.098421, 0.005614,
		-0.097435, -0.990622, -0.095780,
		28.651079, 40.830948, 24.029861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067493, 41.356396, 23.472219>,  <28.719284, 41.524384, 24.096907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067493, 41.356396, 23.472219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864159, 41.016899, 23.530500>,  <28.742157, 40.813202, 23.565470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864159, 41.016899, 23.530500>,  <29.067493, 41.356396, 23.472219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864159, 41.016899, 23.530500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117966, -0.098970, -0.988073,
		0.853040, -0.519463, -0.049812,
		-0.508338, -0.848742, 0.145704,
		28.711657, 40.762276, 23.574211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447474, 40.913380, 23.063374>,  <29.067493, 41.356396, 23.472219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447474, 40.913380, 23.063374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078146, 40.767338, 23.111015>,  <28.856550, 40.679714, 23.139601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078146, 40.767338, 23.111015>,  <29.447474, 40.913380, 23.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078146, 40.767338, 23.111015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062861, -0.162274, -0.984741,
		0.378860, -0.916715, 0.126879,
		-0.923317, -0.365103, 0.119105,
		28.801151, 40.657806, 23.146748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418745, 40.293766, 22.766142>,  <29.447474, 40.913380, 23.063374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418745, 40.293766, 22.766142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030857, 40.390495, 22.779768>,  <28.798124, 40.448532, 22.787945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030857, 40.390495, 22.779768>,  <29.418745, 40.293766, 22.766142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030857, 40.390495, 22.779768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044932, -0.039554, -0.998207,
		-0.240047, -0.969512, 0.049223,
		-0.969721, 0.241828, 0.034067,
		28.739941, 40.463043, 22.789988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069859, 39.718426, 22.414810>,  <29.418745, 40.293766, 22.766142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069859, 39.718426, 22.414810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801004, 40.014023, 22.396397>,  <28.639692, 40.191383, 22.385347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801004, 40.014023, 22.396397>,  <29.069859, 39.718426, 22.414810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801004, 40.014023, 22.396397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068149, -0.123654, -0.989982,
		-0.737285, -0.662265, 0.133474,
		-0.672136, 0.738996, -0.046035,
		28.599363, 40.235722, 22.382586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479366, 39.332039, 22.116076>,  <29.069859, 39.718426, 22.414810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479366, 39.332039, 22.116076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433571, 39.726898, 22.071495>,  <28.406094, 39.963814, 22.044746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433571, 39.726898, 22.071495>,  <28.479366, 39.332039, 22.116076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433571, 39.726898, 22.071495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209114, -0.133623, -0.968719,
		-0.971166, -0.087602, 0.221725,
		-0.114489, 0.987153, -0.111451,
		28.399223, 40.023045, 22.038059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900232, 39.351261, 21.839109>,  <28.479366, 39.332039, 22.116076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900232, 39.351261, 21.839109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068787, 39.703033, 21.750530>,  <28.169920, 39.914097, 21.697382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068787, 39.703033, 21.750530>,  <27.900232, 39.351261, 21.839109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068787, 39.703033, 21.750530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439096, -0.015804, -0.898301,
		-0.793491, 0.475770, 0.379494,
		0.421387, 0.879428, -0.221449,
		28.195202, 39.966862, 21.684095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481310, 39.674698, 21.397831>,  <27.900232, 39.351261, 21.839109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481310, 39.674698, 21.397831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809626, 39.899021, 21.354376>,  <28.006615, 40.033615, 21.328302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809626, 39.899021, 21.354376>,  <27.481310, 39.674698, 21.397831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809626, 39.899021, 21.354376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210850, 0.120686, -0.970040,
		-0.530891, 0.819105, 0.217303,
		0.820790, 0.560804, -0.108637,
		28.055862, 40.067261, 21.321785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264738, 40.301365, 21.216597>,  <27.481310, 39.674698, 21.397831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264738, 40.301365, 21.216597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640507, 40.257523, 21.086691>,  <27.865969, 40.231216, 21.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640507, 40.257523, 21.086691>,  <27.264738, 40.301365, 21.216597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640507, 40.257523, 21.086691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291675, 0.242029, -0.925390,
		0.180031, 0.964058, 0.195398,
		0.939422, -0.109607, -0.324764,
		27.922333, 40.224640, 20.989262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440033, 40.816437, 20.771708>,  <27.264738, 40.301365, 21.216597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440033, 40.816437, 20.771708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737600, 40.559982, 20.696302>,  <27.916140, 40.406109, 20.651060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737600, 40.559982, 20.696302>,  <27.440033, 40.816437, 20.771708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737600, 40.559982, 20.696302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035983, 0.243247, -0.969297,
		0.667303, 0.727859, 0.157886,
		0.743916, -0.641134, -0.188511,
		27.960775, 40.367641, 20.639750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874523, 41.184483, 20.222528>,  <27.440033, 40.816437, 20.771708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874523, 41.184483, 20.222528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994137, 40.802971, 20.210588>,  <28.065905, 40.574066, 20.203424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994137, 40.802971, 20.210588>,  <27.874523, 41.184483, 20.222528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994137, 40.802971, 20.210588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121114, 0.068963, -0.990240,
		0.946526, 0.292499, 0.136138,
		0.299032, -0.953776, -0.029850,
		28.083847, 40.516838, 20.201633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268276, 41.158718, 19.624929>,  <27.874523, 41.184483, 20.222528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268276, 41.158718, 19.624929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210018, 40.764595, 19.660620>,  <28.175062, 40.528122, 19.682034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210018, 40.764595, 19.660620>,  <28.268276, 41.158718, 19.624929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210018, 40.764595, 19.660620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044462, -0.083577, -0.995509,
		0.988337, -0.148960, -0.031636,
		-0.145647, -0.985305, 0.089225,
		28.166325, 40.469002, 19.687387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701971, 40.848804, 19.130430>,  <28.268276, 41.158718, 19.624929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701971, 40.848804, 19.130430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421848, 40.581608, 19.231115>,  <28.253775, 40.421291, 19.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421848, 40.581608, 19.231115>,  <28.701971, 40.848804, 19.130430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421848, 40.581608, 19.231115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208062, -0.146302, -0.967112,
		0.682847, -0.729648, -0.036527,
		-0.700307, -0.667990, 0.251714,
		28.211756, 40.381210, 19.306629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792599, 40.253796, 18.605412>,  <28.701971, 40.848804, 19.130430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792599, 40.253796, 18.605412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413940, 40.236744, 18.733191>,  <28.186745, 40.226513, 18.809858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413940, 40.236744, 18.733191>,  <28.792599, 40.253796, 18.605412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413940, 40.236744, 18.733191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319210, -0.012430, -0.947603,
		0.044361, -0.999014, -0.001839,
		-0.946645, -0.042623, 0.319447,
		28.129948, 40.223957, 18.829025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525806, 39.731110, 18.258244>,  <28.792599, 40.253796, 18.605412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525806, 39.731110, 18.258244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198084, 39.932877, 18.367275>,  <28.001450, 40.053936, 18.432695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198084, 39.932877, 18.367275>,  <28.525806, 39.731110, 18.258244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198084, 39.932877, 18.367275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389580, -0.140950, -0.910143,
		-0.420672, -0.851878, 0.311992,
		-0.819306, 0.504418, 0.272581,
		27.952291, 40.084202, 18.449049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989256, 39.253399, 18.088413>,  <28.525806, 39.731110, 18.258244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989256, 39.253399, 18.088413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866856, 39.634171, 18.093884>,  <27.793415, 39.862633, 18.097166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866856, 39.634171, 18.093884>,  <27.989256, 39.253399, 18.088413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866856, 39.634171, 18.093884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327593, -0.091798, -0.940349,
		-0.893894, -0.292226, 0.339937,
		-0.305999, 0.951933, 0.013674,
		27.775055, 39.919750, 18.097986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430424, 39.238018, 17.644581>,  <27.989256, 39.253399, 18.088413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430424, 39.238018, 17.644581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539127, 39.622402, 17.665386>,  <27.604349, 39.853031, 17.677870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539127, 39.622402, 17.665386>,  <27.430424, 39.238018, 17.644581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539127, 39.622402, 17.665386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148741, 0.095337, -0.984270,
		-0.950802, 0.259746, 0.168842,
		0.271757, 0.960959, 0.052012,
		27.620655, 39.910690, 17.680990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221334, 39.514744, 17.006435>,  <27.430424, 39.238018, 17.644581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221334, 39.514744, 17.006435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367304, 39.868843, 17.121786>,  <27.454885, 40.081303, 17.190996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367304, 39.868843, 17.121786>,  <27.221334, 39.514744, 17.006435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367304, 39.868843, 17.121786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008358, 0.312840, -0.949769,
		-0.931000, 0.344184, 0.121562,
		0.364924, 0.885251, 0.288377,
		27.476782, 40.134418, 17.208300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811737, 39.933140, 16.676205>,  <27.221334, 39.514744, 17.006435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811737, 39.933140, 16.676205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141644, 40.147717, 16.747744>,  <27.339588, 40.276463, 16.790667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141644, 40.147717, 16.747744>,  <26.811737, 39.933140, 16.676205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141644, 40.147717, 16.747744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106137, 0.457520, -0.882842,
		-0.555422, 0.709157, 0.434284,
		0.824768, 0.536443, 0.178849,
		27.389074, 40.308651, 16.801399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579100, 40.639847, 16.556833>,  <26.811737, 39.933140, 16.676205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579100, 40.639847, 16.556833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976986, 40.625458, 16.518375>,  <27.215717, 40.616825, 16.495300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976986, 40.625458, 16.518375>,  <26.579100, 40.639847, 16.556833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976986, 40.625458, 16.518375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078286, 0.339996, -0.937163,
		0.066400, 0.939739, 0.335384,
		0.994717, -0.035972, -0.096144,
		27.275400, 40.614666, 16.489532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874754, 41.310131, 16.327765>,  <26.579100, 40.639847, 16.556833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874754, 41.310131, 16.327765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150040, 41.036190, 16.231979>,  <27.315210, 40.871826, 16.174509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150040, 41.036190, 16.231979>,  <26.874754, 41.310131, 16.327765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150040, 41.036190, 16.231979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012395, 0.341114, -0.939940,
		0.725401, 0.643912, 0.243249,
		0.688215, -0.684849, -0.239463,
		27.356504, 40.830734, 16.160141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436106, 41.724392, 16.025665>,  <26.874754, 41.310131, 16.327765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436106, 41.724392, 16.025665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529263, 41.355408, 15.902485>,  <27.585157, 41.134018, 15.828576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529263, 41.355408, 15.902485>,  <27.436106, 41.724392, 16.025665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529263, 41.355408, 15.902485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118306, 0.341180, -0.932523,
		0.965280, 0.180745, 0.188590,
		0.232892, -0.922457, -0.307951,
		27.599131, 41.078671, 15.810100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122349, 41.729523, 15.735835>,  <27.436106, 41.724392, 16.025665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122349, 41.729523, 15.735835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950150, 41.410702, 15.566423>,  <27.846830, 41.219410, 15.464776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950150, 41.410702, 15.566423>,  <28.122349, 41.729523, 15.735835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950150, 41.410702, 15.566423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264317, 0.337339, -0.903515,
		0.863023, -0.500908, 0.065451,
		-0.430498, -0.797053, -0.423529,
		27.820999, 41.171585, 15.439364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727980, 41.430595, 15.391007>,  <28.122349, 41.729523, 15.735835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727980, 41.430595, 15.391007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376259, 41.324707, 15.232640>,  <28.165226, 41.261173, 15.137620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376259, 41.324707, 15.232640>,  <28.727980, 41.430595, 15.391007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376259, 41.324707, 15.232640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376605, 0.122405, -0.918252,
		0.291544, -0.956525, -0.007935,
		-0.879301, -0.264722, -0.395918,
		28.112469, 41.245289, 15.113865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912249, 41.402336, 14.689697>,  <28.727980, 41.430595, 15.391007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912249, 41.402336, 14.689697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525608, 41.326061, 14.621202>,  <28.293625, 41.280296, 14.580106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525608, 41.326061, 14.621202>,  <28.912249, 41.402336, 14.689697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525608, 41.326061, 14.621202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095219, 0.353119, -0.930720,
		0.237944, -0.915940, -0.323168,
		-0.966600, -0.190688, -0.171237,
		28.235628, 41.268856, 14.569831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948301, 40.950245, 14.128852>,  <28.912249, 41.402336, 14.689697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948301, 40.950245, 14.128852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584120, 41.114639, 14.147447>,  <28.365610, 41.213276, 14.158604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584120, 41.114639, 14.147447>,  <28.948301, 40.950245, 14.128852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584120, 41.114639, 14.147447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000918, 0.114400, -0.993434,
		-0.413608, -0.904434, -0.104533,
		-0.910454, 0.410989, 0.046487,
		28.310984, 41.237934, 14.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494158, 40.655430, 13.567360>,  <28.948301, 40.950245, 14.128852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494158, 40.655430, 13.567360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312393, 41.003094, 13.645414>,  <28.203335, 41.211693, 13.692247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312393, 41.003094, 13.645414>,  <28.494158, 40.655430, 13.567360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312393, 41.003094, 13.645414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062684, 0.187318, -0.980297,
		-0.888584, -0.457689, -0.030637,
		-0.454410, 0.869156, 0.195137,
		28.176069, 41.263840, 13.703956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888582, 40.677254, 13.100668>,  <28.494158, 40.655430, 13.567360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888582, 40.677254, 13.100668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997240, 41.049603, 13.198395>,  <28.062435, 41.273010, 13.257030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997240, 41.049603, 13.198395>,  <27.888582, 40.677254, 13.100668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997240, 41.049603, 13.198395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079171, 0.231387, -0.969635,
		-0.959136, 0.282738, -0.010843,
		0.271644, 0.930870, 0.244316,
		28.078733, 41.328865, 13.271689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575285, 41.091862, 12.610649>,  <27.888582, 40.677254, 13.100668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575285, 41.091862, 12.610649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891239, 41.292389, 12.751939>,  <28.080811, 41.412704, 12.836713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891239, 41.292389, 12.751939>,  <27.575285, 41.091862, 12.610649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891239, 41.292389, 12.751939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188975, 0.348979, -0.917879,
		-0.583413, 0.791769, 0.180918,
		0.789885, 0.501314, 0.353224,
		28.128204, 41.442783, 12.857906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444750, 41.816132, 12.459250>,  <27.575285, 41.091862, 12.610649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444750, 41.816132, 12.459250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833355, 41.738491, 12.513642>,  <28.066517, 41.691906, 12.546278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833355, 41.738491, 12.513642>,  <27.444750, 41.816132, 12.459250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833355, 41.738491, 12.513642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205280, 0.402468, -0.892121,
		0.118437, 0.894619, 0.430847,
		0.971511, -0.194104, 0.135981,
		28.124807, 41.680260, 12.554437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661171, 42.484280, 12.260891>,  <27.444750, 41.816132, 12.459250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661171, 42.484280, 12.260891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958065, 42.216599, 12.246715>,  <28.136202, 42.055988, 12.238209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958065, 42.216599, 12.246715>,  <27.661171, 42.484280, 12.260891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958065, 42.216599, 12.246715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370120, 0.453450, -0.810798,
		0.558660, 0.588684, 0.584252,
		0.742233, -0.669204, -0.035441,
		28.180735, 42.015839, 12.236082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225863, 42.841015, 12.194146>,  <27.661171, 42.484280, 12.260891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225863, 42.841015, 12.194146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330460, 42.475060, 12.071118>,  <28.393217, 42.255486, 11.997301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330460, 42.475060, 12.071118>,  <28.225863, 42.841015, 12.194146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330460, 42.475060, 12.071118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400033, 0.392727, -0.828093,
		0.878405, 0.093501, 0.468681,
		0.261491, -0.914890, -0.307570,
		28.408907, 42.200592, 11.978848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764284, 42.871243, 11.720461>,  <28.225863, 42.841015, 12.194146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764284, 42.871243, 11.720461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690199, 42.479649, 11.686340>,  <28.645748, 42.244690, 11.665868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690199, 42.479649, 11.686340>,  <28.764284, 42.871243, 11.720461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690199, 42.479649, 11.686340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475573, -0.013335, -0.879575,
		0.859957, -0.203477, 0.468051,
		-0.185215, -0.978989, -0.085301,
		28.634634, 42.185951, 11.660750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410336, 42.484570, 11.730862>,  <28.764284, 42.871243, 11.720461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410336, 42.484570, 11.730862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113775, 42.334087, 11.508583>,  <28.935839, 42.243797, 11.375216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113775, 42.334087, 11.508583>,  <29.410336, 42.484570, 11.730862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113775, 42.334087, 11.508583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601075, -0.004076, -0.799182,
		0.298390, -0.926528, 0.229149,
		-0.741398, -0.376204, -0.555697,
		28.891356, 42.221226, 11.341874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639221, 43.061985, 12.092114>,  <29.410336, 42.484570, 11.730862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639221, 43.061985, 12.092114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710611, 43.000324, 12.480832>,  <29.753447, 42.963329, 12.714063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710611, 43.000324, 12.480832>,  <29.639221, 43.061985, 12.092114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710611, 43.000324, 12.480832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261973, -0.959446, -0.104080,
		0.948428, -0.236008, -0.211622,
		0.178477, -0.154151, 0.971794,
		29.764154, 42.954079, 12.772370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998335, 43.424591, 12.270942>,  <29.639221, 43.061985, 12.092114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998335, 43.424591, 12.270942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673378, 43.282459, 12.455877>,  <28.478403, 43.197182, 12.566838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673378, 43.282459, 12.455877>,  <28.998335, 43.424591, 12.270942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673378, 43.282459, 12.455877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100084, 0.696152, 0.710884,
		-0.574455, 0.623791, -0.529987,
		-0.812394, -0.355328, 0.462339,
		28.429659, 43.175861, 12.594579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904432, 43.844578, 12.806227>,  <28.998335, 43.424591, 12.270942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904432, 43.844578, 12.806227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596107, 43.608276, 12.901607>,  <28.411112, 43.466496, 12.958835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596107, 43.608276, 12.901607>,  <28.904432, 43.844578, 12.806227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596107, 43.608276, 12.901607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044654, 0.423474, 0.904807,
		-0.635496, 0.686788, -0.352798,
		-0.770811, -0.590756, 0.238448,
		28.364864, 43.431049, 12.973141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428596, 44.255013, 13.111466>,  <28.904432, 43.844578, 12.806227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428596, 44.255013, 13.111466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387428, 43.879639, 13.243372>,  <28.362728, 43.654415, 13.322515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387428, 43.879639, 13.243372>,  <28.428596, 44.255013, 13.111466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387428, 43.879639, 13.243372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164399, 0.343014, 0.924832,
		-0.981010, 0.040970, -0.189580,
		-0.102919, -0.938437, 0.329764,
		28.356552, 43.598106, 13.342301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036472, 44.296055, 13.624487>,  <28.428596, 44.255013, 13.111466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036472, 44.296055, 13.624487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182177, 43.929710, 13.692036>,  <28.269600, 43.709904, 13.732565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182177, 43.929710, 13.692036>,  <28.036472, 44.296055, 13.624487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182177, 43.929710, 13.692036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020571, 0.189198, 0.981723,
		-0.931069, -0.354131, 0.087758,
		0.364262, -0.915858, 0.168872,
		28.291454, 43.654953, 13.742697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600538, 43.954449, 14.241551>,  <28.036472, 44.296055, 13.624487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600538, 43.954449, 14.241551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936298, 43.737438, 14.228476>,  <28.137754, 43.607231, 14.220631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936298, 43.737438, 14.228476>,  <27.600538, 43.954449, 14.241551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936298, 43.737438, 14.228476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025537, -0.020709, 0.999459,
		-0.542915, -0.839780, -0.003528,
		0.839399, -0.542531, -0.032689,
		28.188118, 43.574680, 14.218669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490353, 43.478611, 14.718511>,  <27.600538, 43.954449, 14.241551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490353, 43.478611, 14.718511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886864, 43.506042, 14.673498>,  <28.124771, 43.522499, 14.646490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886864, 43.506042, 14.673498>,  <27.490353, 43.478611, 14.718511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886864, 43.506042, 14.673498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115778, -0.045335, 0.992240,
		0.062941, -0.996616, -0.052880,
		0.991279, 0.068575, -0.112532,
		28.184248, 43.526615, 14.639738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834530, 43.052586, 15.190451>,  <27.490353, 43.478611, 14.718511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834530, 43.052586, 15.190451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133675, 43.305355, 15.109088>,  <28.313162, 43.457016, 15.060270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133675, 43.305355, 15.109088>,  <27.834530, 43.052586, 15.190451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133675, 43.305355, 15.109088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239271, 0.029226, 0.970513,
		0.619236, -0.774478, -0.129345,
		0.747861, 0.631925, -0.203408,
		28.358032, 43.494934, 15.048065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369305, 42.852146, 15.565194>,  <27.834530, 43.052586, 15.190451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369305, 42.852146, 15.565194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483093, 43.224190, 15.472268>,  <28.551367, 43.447418, 15.416512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483093, 43.224190, 15.472268>,  <28.369305, 42.852146, 15.565194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483093, 43.224190, 15.472268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395675, 0.106815, 0.912158,
		0.873222, -0.351404, -0.337635,
		0.284471, 0.930111, -0.232315,
		28.568434, 43.503223, 15.402574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068100, 42.962864, 15.844563>,  <28.369305, 42.852146, 15.565194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068100, 42.962864, 15.844563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894806, 43.320301, 15.797580>,  <28.790831, 43.534763, 15.769389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894806, 43.320301, 15.797580>,  <29.068100, 42.962864, 15.844563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894806, 43.320301, 15.797580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249286, 0.244048, 0.937175,
		0.866121, 0.376735, -0.328491,
		-0.433234, 0.893595, -0.117460,
		28.764835, 43.588379, 15.762341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612732, 43.419811, 16.057823>,  <29.068100, 42.962864, 15.844563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612732, 43.419811, 16.057823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286051, 43.649990, 16.075045>,  <29.090042, 43.788097, 16.085379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286051, 43.649990, 16.075045>,  <29.612732, 43.419811, 16.057823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286051, 43.649990, 16.075045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329650, 0.404010, 0.853292,
		0.473632, 0.711079, -0.519653,
		-0.816703, 0.575450, 0.043055,
		29.041040, 43.822624, 16.087961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775667, 44.100525, 16.308170>,  <29.612732, 43.419811, 16.057823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775667, 44.100525, 16.308170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386379, 44.047466, 16.383265>,  <29.152805, 44.015633, 16.428322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386379, 44.047466, 16.383265>,  <29.775667, 44.100525, 16.308170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386379, 44.047466, 16.383265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152985, 0.235808, 0.959682,
		-0.171568, 0.962704, -0.209200,
		-0.973222, -0.132646, 0.187736,
		29.094412, 44.007671, 16.439585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702785, 44.571018, 16.771959>,  <29.775667, 44.100525, 16.308170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702785, 44.571018, 16.771959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352547, 44.379116, 16.794476>,  <29.142403, 44.263977, 16.807985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352547, 44.379116, 16.794476>,  <29.702785, 44.571018, 16.771959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352547, 44.379116, 16.794476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011999, 0.138096, 0.990346,
		-0.482895, 0.866468, -0.126673,
		-0.875596, -0.479753, 0.056289,
		29.089869, 44.235191, 16.811361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337599, 45.037258, 17.215538>,  <29.702785, 44.571018, 16.771959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337599, 45.037258, 17.215538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177061, 44.670895, 17.218151>,  <29.080738, 44.451077, 17.219719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177061, 44.670895, 17.218151>,  <29.337599, 45.037258, 17.215538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177061, 44.670895, 17.218151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097471, 0.049798, 0.993992,
		-0.910727, 0.398294, -0.109260,
		-0.401342, -0.915905, 0.006531,
		29.056658, 44.396122, 17.220110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820494, 45.085835, 17.672974>,  <29.337599, 45.037258, 17.215538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820494, 45.085835, 17.672974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919905, 44.698544, 17.661858>,  <28.979551, 44.466171, 17.655188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919905, 44.698544, 17.661858>,  <28.820494, 45.085835, 17.672974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919905, 44.698544, 17.661858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056940, -0.014035, 0.998279,
		-0.966949, -0.249684, 0.051643,
		0.248530, -0.968226, -0.027788,
		28.994463, 44.408077, 17.653521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571064, 44.829010, 18.294529>,  <28.820494, 45.085835, 17.672974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571064, 44.829010, 18.294529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773731, 44.502335, 18.184038>,  <28.895330, 44.306328, 18.117744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773731, 44.502335, 18.184038>,  <28.571064, 44.829010, 18.294529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773731, 44.502335, 18.184038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145430, -0.234845, 0.961092,
		-0.849788, -0.527124, -0.000216,
		0.506666, -0.816693, -0.276228,
		28.925732, 44.257328, 18.101170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238302, 44.144234, 18.576469>,  <28.571064, 44.829010, 18.294529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238302, 44.144234, 18.576469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626270, 44.064091, 18.521166>,  <28.859051, 44.016006, 18.487984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626270, 44.064091, 18.521166>,  <28.238302, 44.144234, 18.576469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626270, 44.064091, 18.521166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027272, -0.474960, 0.879585,
		-0.241897, -0.856896, -0.455209,
		0.969918, -0.200354, -0.138260,
		28.917246, 44.003983, 18.479687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345320, 43.424229, 18.768847>,  <28.238302, 44.144234, 18.576469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345320, 43.424229, 18.768847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694010, 43.615067, 18.813520>,  <28.903223, 43.729568, 18.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694010, 43.615067, 18.813520>,  <28.345320, 43.424229, 18.768847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694010, 43.615067, 18.813520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074580, -0.354464, 0.932091,
		0.484287, -0.804197, -0.344577,
		0.871725, 0.477098, 0.111685,
		28.955528, 43.758194, 18.847027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664970, 43.013206, 19.262926>,  <28.345320, 43.424229, 18.768847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664970, 43.013206, 19.262926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889780, 43.343735, 19.248362>,  <29.024666, 43.542049, 19.239622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889780, 43.343735, 19.248362>,  <28.664970, 43.013206, 19.262926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889780, 43.343735, 19.248362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155770, -0.062506, 0.985814,
		0.812320, -0.559724, -0.163845,
		0.562025, 0.826319, -0.036413,
		29.058388, 43.591629, 19.237438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383286, 42.849842, 19.524466>,  <28.664970, 43.013206, 19.262926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383286, 42.849842, 19.524466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294458, 43.237129, 19.570505>,  <29.241161, 43.469501, 19.598129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294458, 43.237129, 19.570505>,  <29.383286, 42.849842, 19.524466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294458, 43.237129, 19.570505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273445, -0.051467, 0.960510,
		0.935902, 0.244773, -0.253324,
		-0.222069, 0.968213, 0.115100,
		29.227839, 43.527592, 19.605036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900675, 43.071846, 19.941563>,  <29.383286, 42.849842, 19.524466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900675, 43.071846, 19.941563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621891, 43.353020, 19.998318>,  <29.454620, 43.521725, 20.032370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621891, 43.353020, 19.998318>,  <29.900675, 43.071846, 19.941563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621891, 43.353020, 19.998318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189854, -0.009928, 0.981762,
		0.691524, 0.711185, -0.126535,
		-0.696958, 0.702935, 0.141887,
		29.412804, 43.563900, 20.040884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202642, 43.459278, 20.406796>,  <29.900675, 43.071846, 19.941563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202642, 43.459278, 20.406796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829691, 43.600010, 20.439985>,  <29.605921, 43.684448, 20.459900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829691, 43.600010, 20.439985>,  <30.202642, 43.459278, 20.406796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829691, 43.600010, 20.439985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101858, 0.035471, 0.994166,
		0.346837, 0.935391, -0.068910,
		-0.932378, 0.351833, 0.082974,
		29.549978, 43.705559, 20.464878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210808, 44.059357, 20.943275>,  <30.202642, 43.459278, 20.406796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210808, 44.059357, 20.943275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835121, 43.922028, 20.943172>,  <29.609709, 43.839630, 20.943110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835121, 43.922028, 20.943172>,  <30.210808, 44.059357, 20.943275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835121, 43.922028, 20.943172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029314, -0.080946, 0.996287,
		-0.342068, 0.935723, 0.086090,
		-0.939218, -0.343321, -0.000259,
		29.553356, 43.819031, 20.943094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762930, 44.426125, 21.432598>,  <30.210808, 44.059357, 20.943275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762930, 44.426125, 21.432598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613646, 44.059437, 21.375542>,  <29.524075, 43.839424, 21.341309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613646, 44.059437, 21.375542>,  <29.762930, 44.426125, 21.432598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613646, 44.059437, 21.375542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161581, -0.215628, 0.963014,
		-0.913567, 0.336359, 0.228598,
		-0.373210, -0.916716, -0.142641,
		29.501682, 43.784424, 21.332748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203745, 44.343296, 21.925915>,  <29.762930, 44.426125, 21.432598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203745, 44.343296, 21.925915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314663, 43.975941, 21.813009>,  <29.381214, 43.755527, 21.745266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314663, 43.975941, 21.813009>,  <29.203745, 44.343296, 21.925915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314663, 43.975941, 21.813009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067236, -0.274518, 0.959228,
		-0.958429, -0.284969, -0.014374,
		0.277296, -0.918386, -0.282266,
		29.397852, 43.700424, 21.728329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826317, 43.887199, 22.334066>,  <29.203745, 44.343296, 21.925915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826317, 43.887199, 22.334066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086603, 43.617619, 22.194149>,  <29.242775, 43.455868, 22.110199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086603, 43.617619, 22.194149>,  <28.826317, 43.887199, 22.334066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086603, 43.617619, 22.194149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049783, -0.497539, 0.866012,
		-0.757688, -0.546114, -0.357308,
		0.650716, -0.673954, -0.349792,
		29.281818, 43.415432, 22.089212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465828, 43.229252, 22.349525>,  <28.826317, 43.887199, 22.334066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465828, 43.229252, 22.349525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862473, 43.178230, 22.341209>,  <29.100460, 43.147617, 22.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862473, 43.178230, 22.341209>,  <28.465828, 43.229252, 22.349525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862473, 43.178230, 22.341209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016176, -0.282091, 0.959251,
		-0.128224, -0.950870, -0.281789,
		0.991614, -0.127557, -0.020789,
		29.159956, 43.139961, 22.334972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541363, 42.702187, 22.735874>,  <28.465828, 43.229252, 22.349525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541363, 42.702187, 22.735874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912277, 42.851810, 22.741835>,  <29.134825, 42.941586, 22.745411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912277, 42.851810, 22.741835>,  <28.541363, 42.702187, 22.735874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912277, 42.851810, 22.741835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088938, -0.258785, 0.961832,
		0.363639, -0.890567, -0.273236,
		0.927285, 0.374060, 0.014899,
		29.190462, 42.964027, 22.746304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001987, 42.253712, 23.101978>,  <28.541363, 42.702187, 22.735874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001987, 42.253712, 23.101978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188425, 42.607014, 23.122444>,  <29.300287, 42.818996, 23.134724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188425, 42.607014, 23.122444>,  <29.001987, 42.253712, 23.101978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188425, 42.607014, 23.122444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283367, -0.203815, 0.937103,
		0.838130, -0.422278, -0.345282,
		0.466092, 0.883255, 0.051164,
		29.328253, 42.871990, 23.137793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484287, 42.068848, 23.625290>,  <29.001987, 42.253712, 23.101978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484287, 42.068848, 23.625290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486616, 42.467991, 23.599207>,  <29.488014, 42.707478, 23.583557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486616, 42.467991, 23.599207>,  <29.484287, 42.068848, 23.625290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486616, 42.467991, 23.599207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415781, 0.056889, 0.907684,
		0.909446, -0.032399, -0.414558,
		0.005824, 0.997855, -0.065208,
		29.488363, 42.767345, 23.579645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221495, 42.256371, 23.806900>,  <29.484287, 42.068848, 23.625290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221495, 42.256371, 23.806900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978388, 42.570511, 23.853970>,  <29.832523, 42.758995, 23.882212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978388, 42.570511, 23.853970>,  <30.221495, 42.256371, 23.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978388, 42.570511, 23.853970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342123, 0.125223, 0.931274,
		0.716637, 0.606259, -0.344792,
		-0.607769, 0.785347, 0.117676,
		29.796057, 42.806114, 23.889273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636845, 42.789856, 24.060022>,  <30.221495, 42.256371, 23.806900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636845, 42.789856, 24.060022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269480, 42.901646, 24.172029>,  <30.049061, 42.968719, 24.239233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269480, 42.901646, 24.172029>,  <30.636845, 42.789856, 24.060022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269480, 42.901646, 24.172029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327897, 0.141701, 0.934026,
		0.221360, 0.949639, -0.221779,
		-0.918414, 0.279476, 0.280017,
		29.993956, 42.985489, 24.256035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746096, 43.308792, 24.543045>,  <30.636845, 42.789856, 24.060022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746096, 43.308792, 24.543045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362700, 43.218529, 24.612755>,  <30.132662, 43.164368, 24.654581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362700, 43.218529, 24.612755>,  <30.746096, 43.308792, 24.543045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362700, 43.218529, 24.612755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144395, 0.142865, 0.979152,
		-0.245856, 0.963673, -0.104350,
		-0.958491, -0.225663, 0.174274,
		30.075151, 43.150829, 24.665037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501812, 43.825657, 24.921051>,  <30.746096, 43.308792, 24.543045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501812, 43.825657, 24.921051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256514, 43.520134, 25.001581>,  <30.109335, 43.336823, 25.049900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256514, 43.520134, 25.001581>,  <30.501812, 43.825657, 24.921051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256514, 43.520134, 25.001581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024792, 0.273364, 0.961591,
		-0.789503, 0.584701, -0.186575,
		-0.613246, -0.763804, 0.201325,
		30.072540, 43.290993, 25.061979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041264, 44.153023, 25.420294>,  <30.501812, 43.825657, 24.921051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041264, 44.153023, 25.420294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030897, 43.754765, 25.456099>,  <30.024677, 43.515808, 25.477581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030897, 43.754765, 25.456099>,  <30.041264, 44.153023, 25.420294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030897, 43.754765, 25.456099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078835, 0.091300, 0.992698,
		-0.996551, 0.018672, -0.080858,
		-0.025918, -0.995649, 0.089513,
		30.023121, 43.456070, 25.482952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438538, 44.000099, 25.780008>,  <30.041264, 44.153023, 25.420294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438538, 44.000099, 25.780008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685808, 43.694374, 25.853424>,  <29.834169, 43.510941, 25.897474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685808, 43.694374, 25.853424>,  <29.438538, 44.000099, 25.780008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685808, 43.694374, 25.853424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079209, 0.171741, 0.981953,
		-0.782040, -0.621556, 0.045626,
		0.618174, -0.764313, 0.183541,
		29.871260, 43.465080, 25.908487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088295, 43.639854, 26.264429>,  <29.438538, 44.000099, 25.780008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088295, 43.639854, 26.264429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477383, 43.555119, 26.302258>,  <29.710835, 43.504276, 26.324955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477383, 43.555119, 26.302258>,  <29.088295, 43.639854, 26.264429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477383, 43.555119, 26.302258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053383, 0.192316, 0.979880,
		-0.225762, -0.958196, 0.175761,
		0.972719, -0.211837, 0.094569,
		29.769197, 43.491570, 26.330627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023060, 43.390633, 26.839893>,  <29.088295, 43.639854, 26.264429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023060, 43.390633, 26.839893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421724, 43.417530, 26.821350>,  <29.660923, 43.433666, 26.810225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421724, 43.417530, 26.821350>,  <29.023060, 43.390633, 26.839893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421724, 43.417530, 26.821350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035578, 0.153453, 0.987515,
		0.073512, -0.985866, 0.150548,
		0.996660, 0.067238, -0.046356,
		29.720722, 43.437702, 26.807444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166918, 43.016312, 27.437037>,  <29.023060, 43.390633, 26.839893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166918, 43.016312, 27.437037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508488, 43.193867, 27.328388>,  <29.713430, 43.300400, 27.263199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508488, 43.193867, 27.328388>,  <29.166918, 43.016312, 27.437037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508488, 43.193867, 27.328388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201915, 0.198445, 0.959088,
		0.479626, -0.873835, 0.079831,
		0.853926, 0.443884, -0.271619,
		29.764666, 43.327030, 27.246902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792721, 42.733555, 27.818853>,  <29.166918, 43.016312, 27.437037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792721, 42.733555, 27.818853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910192, 43.093178, 27.688963>,  <29.980675, 43.308952, 27.611029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910192, 43.093178, 27.688963>,  <29.792721, 42.733555, 27.818853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910192, 43.093178, 27.688963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066931, 0.319530, 0.945209,
		0.953558, -0.299323, 0.033664,
		0.293679, 0.899058, -0.324725,
		29.998297, 43.362896, 27.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464697, 42.966652, 28.271358>,  <29.792721, 42.733555, 27.818853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464697, 42.966652, 28.271358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290461, 43.284096, 28.101446>,  <30.185919, 43.474564, 27.999498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290461, 43.284096, 28.101446>,  <30.464697, 42.966652, 28.271358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290461, 43.284096, 28.101446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151282, 0.400647, 0.903657,
		0.887341, 0.457887, -0.054460,
		-0.435592, 0.793613, -0.424780,
		30.159782, 43.522179, 27.974012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860498, 43.538460, 28.481991>,  <30.464697, 42.966652, 28.271358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860498, 43.538460, 28.481991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492220, 43.654358, 28.377403>,  <30.271254, 43.723896, 28.314651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492220, 43.654358, 28.377403>,  <30.860498, 43.538460, 28.481991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492220, 43.654358, 28.377403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080348, 0.514875, 0.853491,
		0.381922, 0.806814, -0.450763,
		-0.920695, 0.289749, -0.261468,
		30.216011, 43.741283, 28.298964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877544, 44.227200, 28.681021>,  <30.860498, 43.538460, 28.481991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877544, 44.227200, 28.681021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495893, 44.119156, 28.629356>,  <30.266903, 44.054329, 28.598358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495893, 44.119156, 28.629356>,  <30.877544, 44.227200, 28.681021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495893, 44.119156, 28.629356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222263, 0.349962, 0.910014,
		-0.200599, 0.896978, -0.393943,
		-0.954128, -0.270107, -0.129163,
		30.209656, 44.038124, 28.590607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464947, 44.713779, 28.862925>,  <30.877544, 44.227200, 28.681021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464947, 44.713779, 28.862925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854385, 44.622990, 28.853224>,  <32.088047, 44.568516, 28.847403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854385, 44.622990, 28.853224>,  <31.464947, 44.713779, 28.862925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854385, 44.622990, 28.853224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049178, 0.312314, -0.948705,
		0.222911, 0.922464, 0.315230,
		0.973598, -0.226979, -0.024253,
		32.146465, 44.554897, 28.845947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804525, 45.176506, 28.453003>,  <31.464947, 44.713779, 28.862925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804525, 45.176506, 28.453003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066135, 44.874512, 28.471994>,  <32.223103, 44.693317, 28.483389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066135, 44.874512, 28.471994>,  <31.804525, 45.176506, 28.453003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066135, 44.874512, 28.471994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170791, 0.086224, -0.981527,
		0.736943, 0.650051, 0.185337,
		0.654023, -0.754983, 0.047480,
		32.262341, 44.648018, 28.486238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465908, 45.475639, 28.262381>,  <31.804525, 45.176506, 28.453003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465908, 45.475639, 28.262381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467922, 45.086929, 28.168032>,  <32.469131, 44.853703, 28.111422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467922, 45.086929, 28.168032>,  <32.465908, 45.475639, 28.262381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467922, 45.086929, 28.168032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412275, 0.216915, -0.884860,
		0.911045, -0.092788, 0.401730,
		0.005037, -0.971771, -0.235874,
		32.469433, 44.795399, 28.097269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938103, 45.455318, 27.732601>,  <32.465908, 45.475639, 28.262381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938103, 45.455318, 27.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771881, 45.092876, 27.700907>,  <32.672146, 44.875412, 27.681890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771881, 45.092876, 27.700907>,  <32.938103, 45.455318, 27.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771881, 45.092876, 27.700907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391595, -0.099604, -0.914730,
		0.820954, -0.411151, 0.396219,
		-0.415558, -0.906109, -0.079235,
		32.647213, 44.821045, 27.677135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405537, 44.987103, 27.460922>,  <32.938103, 45.455318, 27.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405537, 44.987103, 27.460922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056168, 44.808895, 27.382286>,  <32.846546, 44.701969, 27.335104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056168, 44.808895, 27.382286>,  <33.405537, 44.987103, 27.460922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056168, 44.808895, 27.382286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242027, -0.046841, -0.969138,
		0.422565, -0.894044, 0.148740,
		-0.873420, -0.445523, -0.196589,
		32.794140, 44.675240, 27.323309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586380, 44.433071, 27.045870>,  <33.405537, 44.987103, 27.460922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586380, 44.433071, 27.045870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197609, 44.490273, 26.971128>,  <32.964348, 44.524593, 26.926285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197609, 44.490273, 26.971128>,  <33.586380, 44.433071, 27.045870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197609, 44.490273, 26.971128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177980, -0.072614, -0.981351,
		-0.153908, -0.987054, 0.045123,
		-0.971924, 0.143007, -0.186852,
		32.906033, 44.533173, 26.915073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415318, 43.936409, 26.600071>,  <33.586380, 44.433071, 27.045870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415318, 43.936409, 26.600071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119869, 44.200813, 26.547144>,  <32.942600, 44.359455, 26.515388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119869, 44.200813, 26.547144>,  <33.415318, 43.936409, 26.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119869, 44.200813, 26.547144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027244, -0.166851, -0.985606,
		-0.673572, -0.731592, 0.105230,
		-0.738619, 0.661010, -0.132318,
		32.898285, 44.399117, 26.507448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844933, 43.580406, 26.326017>,  <33.415318, 43.936409, 26.600071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844933, 43.580406, 26.326017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756702, 43.961426, 26.242115>,  <32.703766, 44.190037, 26.191772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756702, 43.961426, 26.242115>,  <32.844933, 43.580406, 26.326017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756702, 43.961426, 26.242115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225102, -0.258963, -0.939291,
		-0.949040, -0.159966, 0.271541,
		-0.220574, 0.952549, -0.209757,
		32.690529, 44.247189, 26.179188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326057, 43.602200, 25.909550>,  <32.844933, 43.580406, 26.326017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326057, 43.602200, 25.909550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429684, 43.981529, 25.836269>,  <32.491859, 44.209126, 25.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429684, 43.981529, 25.836269>,  <32.326057, 43.602200, 25.909550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429684, 43.981529, 25.836269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261112, -0.113847, -0.958572,
		-0.929894, 0.296173, 0.218124,
		0.259070, 0.948325, -0.183200,
		32.507404, 44.266026, 25.781309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797459, 43.769878, 25.504057>,  <32.326057, 43.602200, 25.909550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797459, 43.769878, 25.504057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097553, 44.030014, 25.456379>,  <32.277611, 44.186096, 25.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097553, 44.030014, 25.456379>,  <31.797459, 43.769878, 25.504057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097553, 44.030014, 25.456379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155336, -0.001858, -0.987860,
		-0.642664, 0.759643, 0.099627,
		0.750236, 0.650337, -0.119194,
		32.322624, 44.225117, 25.420620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566278, 44.214634, 24.901491>,  <31.797459, 43.769878, 25.504057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566278, 44.214634, 24.901491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959755, 44.278927, 24.933784>,  <32.195839, 44.317501, 24.953159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959755, 44.278927, 24.933784>,  <31.566278, 44.214634, 24.901491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959755, 44.278927, 24.933784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055598, 0.155149, -0.986325,
		-0.171060, 0.974728, 0.143682,
		0.983691, 0.160732, 0.080732,
		32.254864, 44.327148, 24.958004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638371, 44.829411, 24.601980>,  <31.566278, 44.214634, 24.901491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638371, 44.829411, 24.601980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990414, 44.640213, 24.585567>,  <32.201641, 44.526695, 24.575720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990414, 44.640213, 24.585567>,  <31.638371, 44.829411, 24.601980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990414, 44.640213, 24.585567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027195, 0.136510, -0.990265,
		0.473992, 0.870426, 0.133007,
		0.880109, -0.472995, -0.041034,
		32.254448, 44.498314, 24.573257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010281, 45.301186, 24.153460>,  <31.638371, 44.829411, 24.601980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010281, 45.301186, 24.153460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148014, 44.925888, 24.166929>,  <32.230656, 44.700710, 24.175011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148014, 44.925888, 24.166929>,  <32.010281, 45.301186, 24.153460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148014, 44.925888, 24.166929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009899, -0.032238, -0.999431,
		0.938794, 0.344474, -0.001813,
		0.344336, -0.938242, 0.033675,
		32.251316, 44.644417, 24.177032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407059, 45.320889, 23.580965>,  <32.010281, 45.301186, 24.153460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407059, 45.320889, 23.580965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379890, 44.928490, 23.653669>,  <32.363590, 44.693050, 23.697292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379890, 44.928490, 23.653669>,  <32.407059, 45.320889, 23.580965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379890, 44.928490, 23.653669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045786, -0.178923, -0.982797,
		0.996640, -0.075072, -0.032764,
		-0.067919, -0.980995, 0.181760,
		32.359516, 44.634190, 23.708197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897163, 45.035164, 23.202848>,  <32.407059, 45.320889, 23.580965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897163, 45.035164, 23.202848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644981, 44.729706, 23.258530>,  <32.493671, 44.546432, 23.291939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644981, 44.729706, 23.258530>,  <32.897163, 45.035164, 23.202848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644981, 44.729706, 23.258530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068455, -0.233333, -0.969984,
		0.773202, -0.602002, 0.199381,
		-0.630455, -0.763642, 0.139204,
		32.455845, 44.500614, 23.300291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170551, 44.487152, 22.807854>,  <32.897163, 45.035164, 23.202848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170551, 44.487152, 22.807854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785408, 44.383484, 22.838133>,  <32.554321, 44.321281, 22.856300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785408, 44.383484, 22.838133>,  <33.170551, 44.487152, 22.807854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785408, 44.383484, 22.838133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012889, -0.235929, -0.971685,
		0.269691, -0.936573, 0.223827,
		-0.962861, -0.259169, 0.075700,
		32.496552, 44.305733, 22.860844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135777, 43.923080, 22.359339>,  <33.170551, 44.487152, 22.807854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135777, 43.923080, 22.359339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773674, 44.085773, 22.408451>,  <32.556412, 44.183388, 22.437918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773674, 44.085773, 22.408451>,  <33.135777, 43.923080, 22.359339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773674, 44.085773, 22.408451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182793, -0.111991, -0.976752,
		-0.383525, -0.906657, 0.175728,
		-0.905260, 0.406731, 0.122779,
		32.502094, 44.207794, 22.445284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744026, 43.512840, 21.872463>,  <33.135777, 43.923080, 22.359339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744026, 43.512840, 21.872463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466057, 43.786831, 21.959997>,  <32.299274, 43.951225, 22.012518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466057, 43.786831, 21.959997>,  <32.744026, 43.512840, 21.872463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466057, 43.786831, 21.959997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223727, 0.083264, -0.971089,
		-0.683393, -0.723793, 0.095385,
		-0.694925, 0.684976, 0.218834,
		32.257580, 43.992325, 22.025648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044670, 43.350029, 21.458487>,  <32.744026, 43.512840, 21.872463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044670, 43.350029, 21.458487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041458, 43.736416, 21.561897>,  <32.039532, 43.968250, 21.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041458, 43.736416, 21.561897>,  <32.044670, 43.350029, 21.458487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041458, 43.736416, 21.561897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479292, 0.223183, -0.848804,
		-0.877619, -0.130729, 0.461189,
		-0.008034, 0.965971, 0.258527,
		32.039047, 44.026207, 21.639456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464361, 43.638256, 21.113283>,  <32.044670, 43.350029, 21.458487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464361, 43.638256, 21.113283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669611, 43.959717, 21.233845>,  <31.792761, 44.152596, 21.306183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669611, 43.959717, 21.233845>,  <31.464361, 43.638256, 21.113283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669611, 43.959717, 21.233845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318941, 0.504545, -0.802316,
		-0.796857, 0.315556, 0.515212,
		0.513123, 0.803653, 0.301406,
		31.823547, 44.200813, 21.324266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050911, 44.288906, 21.234964>,  <31.464361, 43.638256, 21.113283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050911, 44.288906, 21.234964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426979, 44.386478, 21.139818>,  <31.652620, 44.445023, 21.082731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426979, 44.386478, 21.139818>,  <31.050911, 44.288906, 21.234964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426979, 44.386478, 21.139818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307274, 0.305468, -0.901261,
		-0.147184, 0.920428, 0.362145,
		0.940170, 0.243929, -0.237864,
		31.709030, 44.459656, 21.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084967, 44.980759, 20.860897>,  <31.050911, 44.288906, 21.234964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084967, 44.980759, 20.860897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402859, 44.763775, 20.751986>,  <31.593594, 44.633583, 20.686640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402859, 44.763775, 20.751986>,  <31.084967, 44.980759, 20.860897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402859, 44.763775, 20.751986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200769, 0.188393, -0.961353,
		0.572794, 0.818683, 0.040812,
		0.794732, -0.542463, -0.272277,
		31.641279, 44.601036, 20.670303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178682, 45.348015, 20.314459>,  <31.084967, 44.980759, 20.860897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178682, 45.348015, 20.314459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402645, 45.016701, 20.306042>,  <31.537024, 44.817913, 20.300991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402645, 45.016701, 20.306042>,  <31.178682, 45.348015, 20.314459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402645, 45.016701, 20.306042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062328, -0.016780, -0.997915,
		0.826207, 0.560053, -0.061021,
		0.559909, -0.828287, -0.021043,
		31.570618, 44.768215, 20.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831366, 45.357502, 19.778240>,  <31.178682, 45.348015, 20.314459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831366, 45.357502, 19.778240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734755, 44.977310, 19.856466>,  <31.676788, 44.749195, 19.903402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734755, 44.977310, 19.856466>,  <31.831366, 45.357502, 19.778240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734755, 44.977310, 19.856466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129920, -0.231391, -0.964147,
		0.961657, -0.207461, 0.179374,
		-0.241529, -0.950483, 0.195565,
		31.662296, 44.692165, 19.915136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308151, 44.980576, 19.322508>,  <31.831366, 45.357502, 19.778240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308151, 44.980576, 19.322508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999229, 44.744411, 19.416286>,  <31.813877, 44.602715, 19.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999229, 44.744411, 19.416286>,  <32.308151, 44.980576, 19.322508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999229, 44.744411, 19.416286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010419, -0.380784, -0.924605,
		0.635169, -0.711633, 0.300232,
		-0.772303, -0.590409, 0.234448,
		31.767538, 44.567287, 19.486620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572407, 44.465336, 19.055840>,  <32.308151, 44.980576, 19.322508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572407, 44.465336, 19.055840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182880, 44.385269, 19.098944>,  <31.949165, 44.337227, 19.124807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182880, 44.385269, 19.098944>,  <32.572407, 44.465336, 19.055840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182880, 44.385269, 19.098944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016980, -0.408654, -0.912532,
		0.226700, -0.890468, 0.394555,
		-0.973817, -0.200172, 0.107762,
		31.890736, 44.325218, 19.131271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574585, 43.749985, 19.012121>,  <32.572407, 44.465336, 19.055840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574585, 43.749985, 19.012121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218277, 43.898693, 18.907568>,  <32.004494, 43.987919, 18.844835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218277, 43.898693, 18.907568>,  <32.574585, 43.749985, 19.012121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218277, 43.898693, 18.907568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010332, -0.558433, -0.829485,
		-0.454344, -0.741579, 0.493592,
		-0.890767, 0.371771, -0.261382,
		31.951048, 44.010223, 18.829153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307201, 43.116055, 18.661142>,  <32.574585, 43.749985, 19.012121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307201, 43.116055, 18.661142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113918, 43.448692, 18.551620>,  <31.997950, 43.648273, 18.485909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113918, 43.448692, 18.551620>,  <32.307201, 43.116055, 18.661142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113918, 43.448692, 18.551620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086171, -0.356392, -0.930354,
		-0.871256, -0.425958, 0.243869,
		-0.483205, 0.831592, -0.273803,
		31.968956, 43.698170, 18.469479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582016, 42.919891, 18.336948>,  <32.307201, 43.116055, 18.661142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582016, 42.919891, 18.336948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716568, 43.271313, 18.201302>,  <31.797298, 43.482166, 18.119913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716568, 43.271313, 18.201302>,  <31.582016, 42.919891, 18.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716568, 43.271313, 18.201302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137914, -0.310262, -0.940594,
		-0.931573, 0.363166, 0.016798,
		0.336380, 0.878549, -0.339118,
		31.817482, 43.534878, 18.099566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075115, 43.226624, 17.854555>,  <31.582016, 42.919891, 18.336948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075115, 43.226624, 17.854555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428574, 43.396374, 17.775480>,  <31.640648, 43.498222, 17.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428574, 43.396374, 17.775480>,  <31.075115, 43.226624, 17.854555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428574, 43.396374, 17.775480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124145, -0.194744, -0.972966,
		-0.451400, 0.884297, -0.119400,
		0.883644, 0.424374, -0.197688,
		31.693666, 43.523685, 17.716173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989750, 43.362179, 17.241974>,  <31.075115, 43.226624, 17.854555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989750, 43.362179, 17.241974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378571, 43.455212, 17.229170>,  <31.611862, 43.511032, 17.221487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378571, 43.455212, 17.229170>,  <30.989750, 43.362179, 17.241974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378571, 43.455212, 17.229170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051071, 0.076395, -0.995769,
		-0.229153, 0.969571, 0.086138,
		0.972050, 0.232583, -0.032011,
		31.670185, 43.524986, 17.219566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075130, 43.974304, 16.832514>,  <30.989750, 43.362179, 17.241974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075130, 43.974304, 16.832514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430452, 43.791084, 16.819195>,  <31.643646, 43.681152, 16.811203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430452, 43.791084, 16.819195>,  <31.075130, 43.974304, 16.832514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430452, 43.791084, 16.819195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027404, 0.019511, -0.999434,
		0.458438, 0.888714, 0.004779,
		0.888304, -0.458047, -0.033299,
		31.696943, 43.653671, 16.809206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395247, 44.304874, 16.305035>,  <31.075130, 43.974304, 16.832514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395247, 44.304874, 16.305035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638510, 43.988331, 16.329988>,  <31.784468, 43.798405, 16.344961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638510, 43.988331, 16.329988>,  <31.395247, 44.304874, 16.305035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638510, 43.988331, 16.329988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009071, -0.085513, -0.996296,
		0.793764, 0.605339, -0.059184,
		0.608158, -0.791361, 0.062386,
		31.820957, 43.750923, 16.348703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968975, 44.346149, 15.902871>,  <31.395247, 44.304874, 16.305035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968975, 44.346149, 15.902871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958878, 43.949558, 15.953998>,  <31.952820, 43.711605, 15.984674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958878, 43.949558, 15.953998>,  <31.968975, 44.346149, 15.902871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958878, 43.949558, 15.953998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187591, -0.130284, -0.973568,
		0.981923, -0.000598, 0.189281,
		-0.025243, -0.991477, 0.127817,
		31.951305, 43.652115, 15.992343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684864, 44.066837, 15.677893>,  <31.968975, 44.346149, 15.902871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684864, 44.066837, 15.677893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383446, 43.805408, 15.649562>,  <32.202595, 43.648552, 15.632564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383446, 43.805408, 15.649562>,  <32.684864, 44.066837, 15.677893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383446, 43.805408, 15.649562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113331, -0.023024, -0.993291,
		0.647555, -0.756515, 0.091419,
		-0.753544, -0.653571, -0.070827,
		32.157383, 43.609337, 15.628314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930782, 43.406593, 15.313055>,  <32.684864, 44.066837, 15.677893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930782, 43.406593, 15.313055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531673, 43.385162, 15.297143>,  <32.292210, 43.372303, 15.287596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531673, 43.385162, 15.297143>,  <32.930782, 43.406593, 15.313055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531673, 43.385162, 15.297143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045842, -0.117109, -0.992061,
		0.048495, -0.991673, 0.119304,
		-0.997771, -0.053579, -0.039781,
		32.232342, 43.369087, 15.285209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779800, 42.792019, 14.922574>,  <32.930782, 43.406593, 15.313055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779800, 42.792019, 14.922574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423927, 42.974079, 14.908167>,  <32.210403, 43.083313, 14.899523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423927, 42.974079, 14.908167>,  <32.779800, 42.792019, 14.922574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423927, 42.974079, 14.908167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051255, -0.177954, -0.982703,
		-0.453685, -0.872452, 0.181652,
		-0.889687, 0.455148, -0.036017,
		32.157021, 43.110622, 14.897362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305603, 42.335075, 14.549212>,  <32.779800, 42.792019, 14.922574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305603, 42.335075, 14.549212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160336, 42.707142, 14.527651>,  <32.073174, 42.930382, 14.514714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160336, 42.707142, 14.527651>,  <32.305603, 42.335075, 14.549212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160336, 42.707142, 14.527651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034455, -0.071221, -0.996865,
		-0.931087, -0.360171, 0.057914,
		-0.363167, 0.930163, -0.053903,
		32.051384, 42.986191, 14.511480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737938, 41.706932, 14.264734>,  <32.305603, 42.335075, 14.549212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737938, 41.706932, 14.264734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816845, 41.314800, 14.267243>,  <32.864189, 41.079521, 14.268748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816845, 41.314800, 14.267243>,  <32.737938, 41.706932, 14.264734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816845, 41.314800, 14.267243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361147, 0.078618, 0.929189,
		-0.911404, -0.181035, 0.369552,
		0.197269, -0.980329, 0.006272,
		32.876026, 41.020702, 14.269125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456455, 41.460377, 14.856428>,  <32.737938, 41.706932, 14.264734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456455, 41.460377, 14.856428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751827, 41.215626, 14.743062>,  <32.929050, 41.068775, 14.675042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751827, 41.215626, 14.743062>,  <32.456455, 41.460377, 14.856428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751827, 41.215626, 14.743062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389394, 0.043784, 0.920030,
		-0.550538, -0.789739, 0.270593,
		0.738431, -0.611879, -0.283414,
		32.973358, 41.032063, 14.658038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473911, 41.002522, 15.470325>,  <32.456455, 41.460377, 14.856428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473911, 41.002522, 15.470325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827892, 40.991817, 15.284361>,  <33.040283, 40.985394, 15.172783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827892, 40.991817, 15.284361>,  <32.473911, 41.002522, 15.470325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827892, 40.991817, 15.284361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459924, 0.206678, 0.863570,
		0.072977, -0.978043, 0.195208,
		0.884954, -0.026760, -0.464909,
		33.093380, 40.983791, 15.144888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960918, 40.594315, 15.999790>,  <32.473911, 41.002522, 15.470325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960918, 40.594315, 15.999790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187153, 40.781311, 15.728037>,  <33.322895, 40.893509, 15.564985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187153, 40.781311, 15.728037>,  <32.960918, 40.594315, 15.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187153, 40.781311, 15.728037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701531, 0.160351, 0.694364,
		0.433553, -0.869330, -0.237270,
		0.565585, 0.467496, -0.679383,
		33.356827, 40.921558, 15.524222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669476, 40.316208, 16.156174>,  <32.960918, 40.594315, 15.999790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669476, 40.316208, 16.156174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672581, 40.664604, 15.959682>,  <33.674442, 40.873642, 15.841786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672581, 40.664604, 15.959682>,  <33.669476, 40.316208, 16.156174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672581, 40.664604, 15.959682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581635, 0.395665, 0.710739,
		0.813413, -0.291235, -0.503529,
		0.007763, 0.870994, -0.491232,
		33.674911, 40.925903, 15.812312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327713, 40.594028, 16.248272>,  <33.669476, 40.316208, 16.156174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327713, 40.594028, 16.248272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101452, 40.914768, 16.171257>,  <33.965694, 41.107212, 16.125048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101452, 40.914768, 16.171257>,  <34.327713, 40.594028, 16.248272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101452, 40.914768, 16.171257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382775, 0.462108, 0.799962,
		0.730422, 0.378805, -0.568323,
		-0.565656, 0.801850, -0.192536,
		33.931755, 41.155323, 16.113497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763424, 41.208527, 16.391083>,  <34.327713, 40.594028, 16.248272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763424, 41.208527, 16.391083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383965, 41.334137, 16.406359>,  <34.156288, 41.409504, 16.415525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383965, 41.334137, 16.406359>,  <34.763424, 41.208527, 16.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383965, 41.334137, 16.406359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213019, 0.544885, 0.811001,
		0.233863, 0.777489, -0.583797,
		-0.948647, 0.314023, 0.038192,
		34.099369, 41.428345, 16.417816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871235, 41.837814, 16.661407>,  <34.763424, 41.208527, 16.391083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871235, 41.837814, 16.661407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478252, 41.774261, 16.700470>,  <34.242462, 41.736130, 16.723907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478252, 41.774261, 16.700470>,  <34.871235, 41.837814, 16.661407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478252, 41.774261, 16.700470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037231, 0.346002, 0.937495,
		-0.182737, 0.924684, -0.334017,
		-0.982457, -0.158879, 0.097654,
		34.183514, 41.726597, 16.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625423, 42.457775, 16.920336>,  <34.871235, 41.837814, 16.661407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625423, 42.457775, 16.920336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331795, 42.207783, 17.026567>,  <34.155617, 42.057789, 17.090307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331795, 42.207783, 17.026567>,  <34.625423, 42.457775, 16.920336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331795, 42.207783, 17.026567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204086, 0.169969, 0.964085,
		-0.647674, 0.761912, 0.002780,
		-0.734075, -0.624980, 0.265580,
		34.111572, 42.020290, 17.106241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195408, 42.761532, 17.490763>,  <34.625423, 42.457775, 16.920336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195408, 42.761532, 17.490763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117157, 42.369308, 17.496784>,  <34.070206, 42.133972, 17.500397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117157, 42.369308, 17.496784>,  <34.195408, 42.761532, 17.490763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117157, 42.369308, 17.496784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241839, -0.033360, 0.969743,
		-0.950391, 0.193353, 0.243664,
		-0.195631, -0.980562, 0.015055,
		34.058468, 42.075138, 17.501301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612309, 42.760242, 17.917973>,  <34.195408, 42.761532, 17.490763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612309, 42.760242, 17.917973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786140, 42.400040, 17.923914>,  <33.890438, 42.183918, 17.927479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786140, 42.400040, 17.923914>,  <33.612309, 42.760242, 17.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786140, 42.400040, 17.923914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091148, -0.027569, 0.995456,
		-0.896010, -0.433957, -0.094061,
		0.434578, -0.900512, 0.014853,
		33.916515, 42.129887, 17.928370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172729, 42.329327, 18.335182>,  <33.612309, 42.760242, 17.917973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172729, 42.329327, 18.335182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539658, 42.170174, 18.329493>,  <33.759815, 42.074680, 18.326078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539658, 42.170174, 18.329493>,  <33.172729, 42.329327, 18.335182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539658, 42.170174, 18.329493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005582, -0.022868, 0.999723,
		-0.398101, -0.917150, -0.018756,
		0.917325, -0.397886, -0.014223,
		33.814854, 42.050808, 18.325226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114201, 41.764202, 18.740385>,  <33.172729, 42.329327, 18.335182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114201, 41.764202, 18.740385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511456, 41.808918, 18.726606>,  <33.749809, 41.835747, 18.718340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511456, 41.808918, 18.726606>,  <33.114201, 41.764202, 18.740385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511456, 41.808918, 18.726606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032604, 0.018255, 0.999302,
		0.112340, -0.993564, 0.014485,
		0.993135, 0.111789, -0.034445,
		33.809395, 41.842453, 18.716272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556007, 41.191151, 19.220961>,  <33.114201, 41.764202, 18.740385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556007, 41.191151, 19.220961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785919, 41.514858, 19.172449>,  <33.923866, 41.709084, 19.143343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785919, 41.514858, 19.172449>,  <33.556007, 41.191151, 19.220961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785919, 41.514858, 19.172449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103278, 0.075280, 0.991800,
		0.811767, -0.582588, -0.040311,
		0.574776, 0.809273, -0.121278,
		33.958351, 41.757641, 19.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203491, 40.981022, 19.545460>,  <33.556007, 41.191151, 19.220961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203491, 40.981022, 19.545460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159622, 41.377647, 19.517841>,  <34.133301, 41.615623, 19.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159622, 41.377647, 19.517841>,  <34.203491, 40.981022, 19.545460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159622, 41.377647, 19.517841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259523, 0.095620, 0.960992,
		0.959489, 0.087476, -0.267821,
		-0.109673, 0.991567, -0.069044,
		34.126720, 41.675117, 19.497128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750244, 41.169724, 19.918575>,  <34.203491, 40.981022, 19.545460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750244, 41.169724, 19.918575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487968, 41.471157, 19.899906>,  <34.330605, 41.652020, 19.888704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487968, 41.471157, 19.899906>,  <34.750244, 41.169724, 19.918575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487968, 41.471157, 19.899906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315768, 0.329846, 0.889658,
		0.685830, 0.568601, -0.454235,
		-0.655688, 0.753588, -0.046673,
		34.291264, 41.697235, 19.885904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040318, 41.681389, 20.297892>,  <34.750244, 41.169724, 19.918575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040318, 41.681389, 20.297892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672756, 41.838829, 20.287371>,  <34.452217, 41.933292, 20.281057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672756, 41.838829, 20.287371>,  <35.040318, 41.681389, 20.297892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672756, 41.838829, 20.287371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155677, 0.423092, 0.892613,
		0.362462, 0.816132, -0.450056,
		-0.918905, 0.393601, -0.026302,
		34.397083, 41.956909, 20.279480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125122, 42.355740, 20.670074>,  <35.040318, 41.681389, 20.297892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125122, 42.355740, 20.670074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742985, 42.238186, 20.682419>,  <34.513702, 42.167656, 20.689825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742985, 42.238186, 20.682419>,  <35.125122, 42.355740, 20.670074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742985, 42.238186, 20.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056324, 0.283624, 0.957280,
		-0.290078, 0.912793, -0.287511,
		-0.955344, -0.293880, 0.030861,
		34.456383, 42.150021, 20.691677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750774, 42.838776, 21.074879>,  <35.125122, 42.355740, 20.670074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750774, 42.838776, 21.074879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488960, 42.536449, 21.067669>,  <34.331871, 42.355053, 21.063343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488960, 42.536449, 21.067669>,  <34.750774, 42.838776, 21.074879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488960, 42.536449, 21.067669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128155, 0.087423, 0.987893,
		-0.745094, 0.648917, -0.154084,
		-0.654532, -0.755820, -0.018024,
		34.292603, 42.309704, 21.062262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142353, 43.012688, 21.383814>,  <34.750774, 42.838776, 21.074879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142353, 43.012688, 21.383814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123474, 42.614517, 21.417048>,  <34.112144, 42.375614, 21.436989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123474, 42.614517, 21.417048>,  <34.142353, 43.012688, 21.383814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123474, 42.614517, 21.417048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058812, 0.085804, 0.994575,
		-0.997153, 0.042060, -0.062593,
		-0.047202, -0.995424, 0.083086,
		34.109314, 42.315891, 21.441973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584988, 42.887684, 21.850679>,  <34.142353, 43.012688, 21.383814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584988, 42.887684, 21.850679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755669, 42.527790, 21.887339>,  <33.858078, 42.311855, 21.909334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755669, 42.527790, 21.887339>,  <33.584988, 42.887684, 21.850679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755669, 42.527790, 21.887339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162595, 0.023368, 0.986416,
		-0.889655, -0.435810, -0.136321,
		0.426704, -0.899735, 0.091650,
		33.883678, 42.257870, 21.914833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124760, 42.480122, 22.213894>,  <33.584988, 42.887684, 21.850679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124760, 42.480122, 22.213894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474304, 42.291126, 22.259726>,  <33.684029, 42.177731, 22.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474304, 42.291126, 22.259726>,  <33.124760, 42.480122, 22.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474304, 42.291126, 22.259726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142075, -0.022791, 0.989594,
		-0.464959, -0.881043, -0.087045,
		0.873858, -0.472487, 0.114577,
		33.736462, 42.149380, 22.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994659, 41.928009, 22.629658>,  <33.124760, 42.480122, 22.213894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994659, 41.928009, 22.629658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382843, 42.006687, 22.685551>,  <33.615753, 42.053894, 22.719086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382843, 42.006687, 22.685551>,  <32.994659, 41.928009, 22.629658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382843, 42.006687, 22.685551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170727, 0.150600, 0.973741,
		0.170499, -0.968827, 0.179734,
		0.970454, 0.196708, 0.139728,
		33.673981, 42.065697, 22.727470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192123, 41.573414, 23.300722>,  <32.994659, 41.928009, 22.629658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192123, 41.573414, 23.300722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465824, 41.853649, 23.219749>,  <33.630043, 42.021790, 23.171165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465824, 41.853649, 23.219749>,  <33.192123, 41.573414, 23.300722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465824, 41.853649, 23.219749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029844, 0.250452, 0.967669,
		0.728638, -0.668168, 0.150463,
		0.684249, 0.700590, -0.202430,
		33.671101, 42.063828, 23.159021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725361, 41.448814, 23.855715>,  <33.192123, 41.573414, 23.300722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725361, 41.448814, 23.855715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815247, 41.812576, 23.715725>,  <33.869179, 42.030834, 23.631731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815247, 41.812576, 23.715725>,  <33.725361, 41.448814, 23.855715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815247, 41.812576, 23.715725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226148, 0.300679, 0.926525,
		0.947819, -0.287351, -0.138093,
		0.224716, 0.909407, -0.349973,
		33.882660, 42.085400, 23.610733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357296, 41.600006, 24.146463>,  <33.725361, 41.448814, 23.855715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357296, 41.600006, 24.146463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212166, 41.959122, 24.046597>,  <34.125088, 42.174591, 23.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212166, 41.959122, 24.046597>,  <34.357296, 41.600006, 24.146463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212166, 41.959122, 24.046597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387019, 0.388904, 0.836044,
		0.847689, 0.206709, -0.488565,
		-0.362822, 0.897789, -0.249669,
		34.103317, 42.228458, 23.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887432, 42.041821, 24.137474>,  <34.357296, 41.600006, 24.146463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887432, 42.041821, 24.137474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535065, 42.208344, 24.227522>,  <34.323647, 42.308258, 24.281549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535065, 42.208344, 24.227522>,  <34.887432, 42.041821, 24.137474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535065, 42.208344, 24.227522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358832, 0.277360, 0.891241,
		0.308588, 0.865888, -0.393714,
		-0.880916, 0.416303, 0.225119,
		34.270790, 42.333233, 24.295057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122566, 42.732109, 24.359377>,  <34.887432, 42.041821, 24.137474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122566, 42.732109, 24.359377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750671, 42.692631, 24.501282>,  <34.527534, 42.668945, 24.586424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750671, 42.692631, 24.501282>,  <35.122566, 42.732109, 24.359377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750671, 42.692631, 24.501282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325175, 0.232027, 0.916747,
		-0.172789, 0.967690, -0.183632,
		-0.929734, -0.098691, 0.354761,
		34.471752, 42.663025, 24.607710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956432, 43.226170, 24.839966>,  <35.122566, 42.732109, 24.359377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956432, 43.226170, 24.839966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701927, 42.936390, 24.946047>,  <34.549225, 42.762520, 25.009695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701927, 42.936390, 24.946047>,  <34.956432, 43.226170, 24.839966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701927, 42.936390, 24.946047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189534, 0.186435, 0.964012,
		-0.747824, 0.663634, 0.018687,
		-0.636267, -0.724453, 0.265202,
		34.511047, 42.719055, 25.025608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571228, 43.449760, 25.555450>,  <34.956432, 43.226170, 24.839966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571228, 43.449760, 25.555450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474972, 43.061775, 25.569681>,  <34.417217, 42.828983, 25.578220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474972, 43.061775, 25.569681>,  <34.571228, 43.449760, 25.555450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474972, 43.061775, 25.569681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049384, 0.024370, 0.998482,
		-0.969356, 0.242035, 0.042036,
		-0.240644, -0.969961, 0.035576,
		34.402779, 42.770786, 25.580355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968567, 43.339272, 26.098156>,  <34.571228, 43.449760, 25.555450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968567, 43.339272, 26.098156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152470, 42.986725, 26.054688>,  <34.262814, 42.775196, 26.028606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152470, 42.986725, 26.054688>,  <33.968567, 43.339272, 26.098156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152470, 42.986725, 26.054688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023424, -0.134366, 0.990655,
		-0.887734, -0.452918, -0.082421,
		0.459760, -0.881369, -0.108673,
		34.290398, 42.722313, 26.022085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662872, 42.918526, 26.573662>,  <33.968567, 43.339272, 26.098156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662872, 42.918526, 26.573662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005821, 42.730400, 26.490025>,  <34.211590, 42.617523, 26.439842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005821, 42.730400, 26.490025>,  <33.662872, 42.918526, 26.573662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005821, 42.730400, 26.490025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078847, -0.281427, 0.956338,
		-0.508628, -0.836420, -0.204203,
		0.857369, -0.470319, -0.209091,
		34.263031, 42.589306, 26.427298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664932, 42.354507, 26.953928>,  <33.662872, 42.918526, 26.573662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664932, 42.354507, 26.953928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053642, 42.391022, 26.866917>,  <34.286869, 42.412930, 26.814711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053642, 42.391022, 26.866917>,  <33.664932, 42.354507, 26.953928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053642, 42.391022, 26.866917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235840, -0.354341, 0.904888,
		0.005525, -0.930650, -0.365869,
		0.971776, 0.091286, -0.217527,
		34.345177, 42.418407, 26.801659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902279, 41.794941, 27.083958>,  <33.664932, 42.354507, 26.953928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902279, 41.794941, 27.083958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241764, 42.006344, 27.091536>,  <34.445457, 42.133186, 27.096083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241764, 42.006344, 27.091536>,  <33.902279, 41.794941, 27.083958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241764, 42.006344, 27.091536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176817, -0.317335, 0.931684,
		0.498417, -0.787384, -0.362777,
		0.848715, 0.528512, 0.018943,
		34.496380, 42.164898, 27.097218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284763, 41.261871, 27.198853>,  <33.902279, 41.794941, 27.083958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284763, 41.261871, 27.198853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480034, 41.593395, 27.308222>,  <34.597195, 41.792309, 27.373842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480034, 41.593395, 27.308222>,  <34.284763, 41.261871, 27.198853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480034, 41.593395, 27.308222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099642, -0.364170, 0.925987,
		0.867040, -0.424798, -0.260362,
		0.488173, 0.828811, 0.273422,
		34.626488, 41.842037, 27.390249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974991, 41.088787, 27.374249>,  <34.284763, 41.261871, 27.198853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974991, 41.088787, 27.374249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902466, 41.439400, 27.552607>,  <34.858952, 41.649765, 27.659622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902466, 41.439400, 27.552607>,  <34.974991, 41.088787, 27.374249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902466, 41.439400, 27.552607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435107, -0.335117, 0.835690,
		0.881933, 0.345538, -0.320621,
		-0.181317, 0.876527, 0.445897,
		34.848072, 41.702358, 27.686377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531185, 41.288197, 27.694937>,  <34.974991, 41.088787, 27.374249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531185, 41.288197, 27.694937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296131, 41.531322, 27.908569>,  <35.155098, 41.677197, 28.036749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296131, 41.531322, 27.908569>,  <35.531185, 41.288197, 27.694937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296131, 41.531322, 27.908569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512697, -0.230938, 0.826928,
		0.625959, 0.759756, -0.175917,
		-0.587637, 0.607815, 0.534082,
		35.119839, 41.713669, 28.068794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946945, 41.397022, 28.263876>,  <35.531185, 41.288197, 27.694937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946945, 41.397022, 28.263876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599857, 41.544308, 28.397432>,  <35.391605, 41.632679, 28.477566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599857, 41.544308, 28.397432>,  <35.946945, 41.397022, 28.263876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599857, 41.544308, 28.397432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249732, -0.257839, 0.933356,
		0.429765, 0.893273, 0.131776,
		-0.867719, 0.368215, 0.333889,
		35.339542, 41.654774, 28.497599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061867, 41.985546, 28.691061>,  <35.946945, 41.397022, 28.263876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061867, 41.985546, 28.691061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705112, 41.855457, 28.816772>,  <35.491058, 41.777405, 28.892199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705112, 41.855457, 28.816772>,  <36.061867, 41.985546, 28.691061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705112, 41.855457, 28.816772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396289, -0.227124, 0.889589,
		-0.217936, 0.917956, 0.331452,
		-0.891885, -0.325224, 0.314277,
		35.437546, 41.757889, 28.911057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027523, 42.316334, 29.362984>,  <36.061867, 41.985546, 28.691061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027523, 42.316334, 29.362984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757889, 42.021755, 29.340162>,  <35.596107, 41.845009, 29.326469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757889, 42.021755, 29.340162>,  <36.027523, 42.316334, 29.362984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757889, 42.021755, 29.340162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214184, -0.268801, 0.939080,
		-0.706915, 0.620804, 0.338930,
		-0.674090, -0.736443, -0.057053,
		35.555660, 41.800823, 29.323046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495262, 42.412876, 29.927732>,  <36.027523, 42.316334, 29.362984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495262, 42.412876, 29.927732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517891, 42.023438, 29.839272>,  <35.531467, 41.789776, 29.786196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517891, 42.023438, 29.839272>,  <35.495262, 42.412876, 29.927732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517891, 42.023438, 29.839272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042349, -0.218966, 0.974813,
		-0.997500, -0.064514, 0.028844,
		0.056573, -0.973597, -0.221150,
		35.534863, 41.731358, 29.772926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316261, 42.146118, 30.524658>,  <35.495262, 42.412876, 29.927732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316261, 42.146118, 30.524658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482944, 41.830822, 30.343534>,  <35.582954, 41.641644, 30.234861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482944, 41.830822, 30.343534>,  <35.316261, 42.146118, 30.524658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482944, 41.830822, 30.343534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172058, -0.420722, 0.890724,
		-0.892608, -0.449082, -0.039696,
		0.416709, -0.788238, -0.452808,
		35.607956, 41.594349, 30.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985264, 41.451744, 30.642324>,  <35.316261, 42.146118, 30.524658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985264, 41.451744, 30.642324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378468, 41.425041, 30.573923>,  <35.614388, 41.409019, 30.532883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378468, 41.425041, 30.573923>,  <34.985264, 41.451744, 30.642324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378468, 41.425041, 30.573923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140897, -0.322764, 0.935933,
		-0.117674, -0.944122, -0.307873,
		0.983006, -0.066757, -0.171005,
		35.673370, 41.405014, 30.522621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294727, 40.799637, 30.969448>,  <34.985264, 41.451744, 30.642324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294727, 40.799637, 30.969448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609219, 41.032520, 30.886618>,  <35.797913, 41.172249, 30.836920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609219, 41.032520, 30.886618>,  <35.294727, 40.799637, 30.969448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609219, 41.032520, 30.886618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470926, -0.347567, 0.810818,
		0.400091, -0.735006, -0.547443,
		0.786229, 0.582206, -0.207075,
		35.845089, 41.207184, 30.824495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770432, 40.336773, 31.198071>,  <35.294727, 40.799637, 30.969448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770432, 40.336773, 31.198071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912674, 40.710613, 31.201368>,  <35.998020, 40.934917, 31.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912674, 40.710613, 31.201368>,  <35.770432, 40.336773, 31.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912674, 40.710613, 31.201368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481815, -0.190871, 0.855232,
		0.800873, -0.300153, -0.518179,
		0.355606, 0.934600, 0.008245,
		36.019356, 40.990993, 31.203842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387726, 40.114330, 31.201073>,  <35.770432, 40.336773, 31.198071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387726, 40.114330, 31.201073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300148, 40.473240, 31.354420>,  <36.247601, 40.688583, 31.446428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300148, 40.473240, 31.354420>,  <36.387726, 40.114330, 31.201073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300148, 40.473240, 31.354420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533560, -0.218860, 0.816954,
		0.816932, 0.383415, -0.430830,
		-0.218941, 0.897270, 0.383369,
		36.234467, 40.742420, 31.469431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795422, 39.599648, 30.750109>,  <36.387726, 40.114330, 31.201073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795422, 39.599648, 30.750109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003998, 39.263165, 30.692873>,  <37.129143, 39.061275, 30.658531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003998, 39.263165, 30.692873>,  <36.795422, 39.599648, 30.750109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003998, 39.263165, 30.692873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843054, 0.481999, 0.238615,
		-0.131754, -0.245056, 0.960515,
		0.521441, -0.841204, -0.143090,
		37.160431, 39.010803, 30.649946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225922, 39.456154, 31.353725>,  <36.795422, 39.599648, 30.750109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225922, 39.456154, 31.353725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391911, 39.385796, 30.996658>,  <37.491505, 39.343582, 30.782417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391911, 39.385796, 30.996658>,  <37.225922, 39.456154, 31.353725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391911, 39.385796, 30.996658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773488, 0.584822, 0.244337,
		0.479074, -0.791861, 0.378740,
		0.414976, -0.175896, -0.892668,
		37.516403, 39.333027, 30.728859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931499, 39.234406, 31.424545>,  <37.225922, 39.456154, 31.353725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931499, 39.234406, 31.424545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923763, 39.407883, 31.064205>,  <37.919121, 39.511971, 30.848001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923763, 39.407883, 31.064205>,  <37.931499, 39.234406, 31.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923763, 39.407883, 31.064205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770920, 0.580199, 0.262776,
		0.636638, -0.689403, -0.345564,
		-0.019337, 0.433696, -0.900852,
		37.917961, 39.537991, 30.793949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642914, 39.443531, 31.281532>,  <37.931499, 39.234406, 31.424545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642914, 39.443531, 31.281532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422733, 39.668262, 31.034517>,  <38.290627, 39.803101, 30.886309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422733, 39.668262, 31.034517>,  <38.642914, 39.443531, 31.281532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422733, 39.668262, 31.034517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641330, 0.758124, 0.118083,
		0.534513, -0.331047, -0.777627,
		-0.550447, 0.561832, -0.617538,
		38.257599, 39.836811, 30.849257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083073, 39.862637, 30.897141>,  <38.642914, 39.443531, 31.281532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083073, 39.862637, 30.897141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724190, 40.039280, 30.896971>,  <38.508862, 40.145264, 30.896868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724190, 40.039280, 30.896971>,  <39.083073, 39.862637, 30.897141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724190, 40.039280, 30.896971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433254, 0.880424, 0.192730,
		0.085485, 0.172735, -0.981252,
		-0.897209, 0.441607, -0.000425,
		38.455029, 40.171761, 30.896843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105217, 39.650875, 30.176088>,  <39.083073, 39.862637, 30.897141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105217, 39.650875, 30.176088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821571, 39.914021, 30.277571>,  <38.651382, 40.071907, 30.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821571, 39.914021, 30.277571>,  <39.105217, 39.650875, 30.176088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821571, 39.914021, 30.277571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664674, 0.743768, -0.070828,
		-0.235292, 0.118406, -0.964685,
		-0.709116, 0.657867, 0.253704,
		38.608837, 40.111382, 30.353682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933022, 40.180767, 29.570700>,  <39.105217, 39.650875, 30.176088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933022, 40.180767, 29.570700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635666, 40.304153, 29.808092>,  <38.457253, 40.378185, 29.950527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635666, 40.304153, 29.808092>,  <38.933022, 40.180767, 29.570700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635666, 40.304153, 29.808092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423577, 0.903817, 0.060809,
		-0.517643, 0.296590, -0.802546,
		-0.743390, 0.308463, 0.593483,
		38.412647, 40.396694, 29.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920109, 40.787472, 29.401802>,  <38.933022, 40.180767, 29.570700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920109, 40.787472, 29.401802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719158, 40.782303, 29.747623>,  <38.598587, 40.779202, 29.955116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719158, 40.782303, 29.747623>,  <38.920109, 40.787472, 29.401802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719158, 40.782303, 29.747623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415690, 0.873143, 0.254605,
		-0.758168, 0.487293, -0.433275,
		-0.502378, -0.012925, 0.864552,
		38.568443, 40.778427, 30.006989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676319, 41.567528, 29.532423>,  <38.920109, 40.787472, 29.401802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676319, 41.567528, 29.532423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702160, 41.342125, 29.861855>,  <38.717663, 41.206882, 30.059513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702160, 41.342125, 29.861855>,  <38.676319, 41.567528, 29.532423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702160, 41.342125, 29.861855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320943, 0.793187, 0.517542,
		-0.944893, 0.230887, 0.232097,
		0.064602, -0.563511, 0.823579,
		38.721542, 41.173073, 30.108929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186615, 41.866642, 29.981413>,  <38.676319, 41.567528, 29.532423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186615, 41.866642, 29.981413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409496, 41.703960, 30.270996>,  <38.543224, 41.606350, 30.444746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409496, 41.703960, 30.270996>,  <38.186615, 41.866642, 29.981413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409496, 41.703960, 30.270996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094927, 0.897327, 0.431038,
		-0.824932, -0.171453, 0.538601,
		0.557204, -0.406705, 0.723958,
		38.576656, 41.581947, 30.488184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894936, 42.216957, 30.547928>,  <38.186615, 41.866642, 29.981413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894936, 42.216957, 30.547928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260574, 42.081627, 30.637335>,  <38.479958, 42.000431, 30.690979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260574, 42.081627, 30.637335>,  <37.894936, 42.216957, 30.547928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260574, 42.081627, 30.637335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175221, 0.826676, 0.534701,
		-0.365678, -0.449605, 0.814945,
		0.914099, -0.338324, 0.223517,
		38.534805, 41.980129, 30.704390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041439, 42.175602, 31.352770>,  <37.894936, 42.216957, 30.547928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041439, 42.175602, 31.352770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403042, 42.209873, 31.185234>,  <38.620003, 42.230438, 31.084713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403042, 42.209873, 31.185234>,  <38.041439, 42.175602, 31.352770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403042, 42.209873, 31.185234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162983, 0.836648, 0.522931,
		0.395227, -0.540998, 0.742373,
		0.904009, 0.085682, -0.418839,
		38.674244, 42.235577, 31.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597279, 42.444481, 31.893236>,  <38.041439, 42.175602, 31.352770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597279, 42.444481, 31.893236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686855, 42.526276, 31.512074>,  <38.740601, 42.575352, 31.283375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686855, 42.526276, 31.512074>,  <38.597279, 42.444481, 31.893236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686855, 42.526276, 31.512074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080175, 0.970561, 0.227118,
		0.971302, -0.127258, 0.200943,
		0.223930, 0.204490, -0.952911,
		38.754040, 42.587624, 31.226202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161682, 43.001530, 31.834938>,  <38.597279, 42.444481, 31.893236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161682, 43.001530, 31.834938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926300, 43.019974, 31.512051>,  <38.785072, 43.031040, 31.318319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926300, 43.019974, 31.512051>,  <39.161682, 43.001530, 31.834938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926300, 43.019974, 31.512051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069918, 0.997535, 0.006011,
		0.805504, -0.052902, -0.590225,
		-0.588451, 0.046109, -0.807217,
		38.749763, 43.033806, 31.269886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789108, 43.358631, 32.156357>,  <39.161682, 43.001530, 31.834938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789108, 43.358631, 32.156357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834030, 43.129242, 31.831758>,  <39.860985, 42.991608, 31.637001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834030, 43.129242, 31.831758>,  <39.789108, 43.358631, 32.156357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834030, 43.129242, 31.831758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541936, 0.649160, -0.533757,
		0.832882, 0.499722, -0.237878,
		0.112309, -0.573471, -0.811491,
		39.867722, 42.957199, 31.588310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100281, 44.062748, 32.199570>,  <39.789108, 43.358631, 32.156357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100281, 44.062748, 32.199570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854919, 44.317604, 32.012897>,  <39.707703, 44.470516, 31.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854919, 44.317604, 32.012897>,  <40.100281, 44.062748, 32.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854919, 44.317604, 32.012897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381206, -0.756370, -0.531588,
		-0.691680, -0.148174, 0.706840,
		-0.613400, 0.637141, -0.466682,
		39.670898, 44.508747, 31.872892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330429, 44.069927, 32.257240>,  <40.100281, 44.062748, 32.199570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330429, 44.069927, 32.257240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441380, 44.138771, 31.879152>,  <39.507950, 44.180077, 31.652300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441380, 44.138771, 31.879152>,  <39.330429, 44.069927, 32.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441380, 44.138771, 31.879152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448843, -0.846648, -0.285882,
		-0.849470, 0.503552, -0.157592,
		0.277381, 0.172114, -0.945218,
		39.524593, 44.190407, 31.595587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802589, 43.865761, 31.651552>,  <39.330429, 44.069927, 32.257240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802589, 43.865761, 31.651552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182888, 43.791714, 31.552109>,  <39.411068, 43.747288, 31.492443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182888, 43.791714, 31.552109>,  <38.802589, 43.865761, 31.651552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182888, 43.791714, 31.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284555, -0.839277, -0.463294,
		-0.122888, 0.511220, -0.850619,
		0.950751, -0.185115, -0.248608,
		39.468113, 43.736179, 31.477526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916103, 43.692951, 30.932735>,  <38.802589, 43.865761, 31.651552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916103, 43.692951, 30.932735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179581, 43.483601, 31.148954>,  <39.337666, 43.357990, 31.278687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179581, 43.483601, 31.148954>,  <38.916103, 43.692951, 30.932735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179581, 43.483601, 31.148954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208865, -0.817380, -0.536904,
		0.722840, 0.240754, -0.647719,
		0.658695, -0.523381, 0.540550,
		39.377190, 43.326588, 31.311119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330032, 43.345016, 30.450520>,  <38.916103, 43.692951, 30.932735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330032, 43.345016, 30.450520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332726, 43.135960, 30.791529>,  <39.334339, 43.010525, 30.996134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332726, 43.135960, 30.791529>,  <39.330032, 43.345016, 30.450520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332726, 43.135960, 30.791529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242530, -0.827940, -0.505662,
		0.970121, -0.203360, -0.132329,
		0.006729, -0.522647, 0.852523,
		39.334743, 42.979164, 31.047285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387138, 42.718029, 30.296600>,  <39.330032, 43.345016, 30.450520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387138, 42.718029, 30.296600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259209, 42.676723, 30.673332>,  <39.182449, 42.651939, 30.899372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259209, 42.676723, 30.673332>,  <39.387138, 42.718029, 30.296600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259209, 42.676723, 30.673332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515766, -0.814881, -0.264489,
		0.794793, -0.570356, 0.207359,
		-0.319826, -0.103265, 0.941832,
		39.163261, 42.645744, 30.955881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743366, 42.213520, 30.420523>,  <39.387138, 42.718029, 30.296600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743366, 42.213520, 30.420523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422928, 42.227947, 30.659504>,  <39.230667, 42.236603, 30.802893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422928, 42.227947, 30.659504>,  <39.743366, 42.213520, 30.420523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422928, 42.227947, 30.659504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192245, -0.960798, -0.199771,
		0.566827, -0.274892, 0.776621,
		-0.801092, 0.036066, 0.597453,
		39.182602, 42.238766, 30.838739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770206, 41.724300, 30.971647>,  <39.743366, 42.213520, 30.420523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770206, 41.724300, 30.971647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378624, 41.782486, 30.914400>,  <39.143673, 41.817398, 30.880051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378624, 41.782486, 30.914400>,  <39.770206, 41.724300, 30.971647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378624, 41.782486, 30.914400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097174, -0.949019, -0.299867,
		-0.179442, -0.279650, 0.943184,
		-0.978958, 0.145462, -0.143120,
		39.084938, 41.826126, 30.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428169, 41.113876, 31.348860>,  <39.770206, 41.724300, 30.971647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428169, 41.113876, 31.348860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194370, 41.271889, 31.065365>,  <39.054089, 41.366695, 30.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194370, 41.271889, 31.065365>,  <39.428169, 41.113876, 31.348860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194370, 41.271889, 31.065365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318341, -0.915095, -0.247506,
		-0.746336, 0.080953, 0.660628,
		-0.584501, 0.395028, -0.708740,
		39.019020, 41.390396, 30.852743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812866, 40.748508, 31.354145>,  <39.428169, 41.113876, 31.348860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812866, 40.748508, 31.354145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757122, 40.877121, 30.979509>,  <38.723675, 40.954288, 30.754728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757122, 40.877121, 30.979509>,  <38.812866, 40.748508, 31.354145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757122, 40.877121, 30.979509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632854, -0.756378, -0.165495,
		-0.761627, 0.569660, 0.308888,
		-0.139360, 0.321527, -0.936589,
		38.715313, 40.973579, 30.698532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080242, 40.932556, 31.207657>,  <38.812866, 40.748508, 31.354145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080242, 40.932556, 31.207657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258732, 40.835857, 30.862997>,  <38.365826, 40.777840, 30.656200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258732, 40.835857, 30.862997>,  <38.080242, 40.932556, 31.207657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258732, 40.835857, 30.862997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730455, -0.654644, -0.194617,
		-0.517027, 0.716240, -0.468703,
		0.446227, -0.241745, -0.861650,
		38.392601, 40.763332, 30.604502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527122, 40.848251, 30.710018>,  <38.080242, 40.932556, 31.207657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527122, 40.848251, 30.710018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849529, 40.633350, 30.610657>,  <38.042973, 40.504410, 30.551041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849529, 40.633350, 30.610657>,  <37.527122, 40.848251, 30.710018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849529, 40.633350, 30.610657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589219, -0.768160, -0.250502,
		-0.056230, 0.348271, -0.935706,
		0.806014, -0.537250, -0.248402,
		38.091335, 40.472176, 30.536137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371399, 40.451267, 30.070833>,  <37.527122, 40.848251, 30.710018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371399, 40.451267, 30.070833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680798, 40.257698, 30.234556>,  <37.866436, 40.141556, 30.332790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680798, 40.257698, 30.234556>,  <37.371399, 40.451267, 30.070833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680798, 40.257698, 30.234556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366411, -0.868355, -0.334219,
		0.517158, 0.108542, -0.848979,
		0.773492, -0.483920, 0.409306,
		37.912846, 40.112522, 30.357347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750565, 39.926586, 29.599661>,  <37.371399, 40.451267, 30.070833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750565, 39.926586, 29.599661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826916, 39.805679, 29.973228>,  <37.872726, 39.733135, 30.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826916, 39.805679, 29.973228>,  <37.750565, 39.926586, 29.599661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826916, 39.805679, 29.973228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460997, -0.867568, -0.186570,
		0.866631, -0.394922, -0.304938,
		0.190874, -0.302263, 0.933919,
		37.884178, 39.715000, 30.253405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893318, 39.226498, 29.501036>,  <37.750565, 39.926586, 29.599661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893318, 39.226498, 29.501036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804634, 39.266582, 29.889015>,  <37.751423, 39.290634, 30.121803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804634, 39.266582, 29.889015>,  <37.893318, 39.226498, 29.501036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804634, 39.266582, 29.889015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512616, -0.858144, -0.028517,
		0.829498, -0.503534, 0.241632,
		-0.221714, 0.100210, 0.969949,
		37.738121, 39.296646, 30.180000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251244, 38.574123, 29.899775>,  <37.893318, 39.226498, 29.501036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251244, 38.574123, 29.899775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917755, 38.757473, 30.022934>,  <37.717663, 38.867481, 30.096830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917755, 38.757473, 30.022934>,  <38.251244, 38.574123, 29.899775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917755, 38.757473, 30.022934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437835, -0.888525, 0.137203,
		0.336466, -0.020419, 0.941474,
		-0.833722, 0.458374, 0.307899,
		37.667637, 38.894985, 30.115303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835079, 38.125824, 29.831844>,  <38.251244, 38.574123, 29.899775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835079, 38.125824, 29.831844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969662, 37.994583, 30.184921>,  <39.050411, 37.915836, 30.396767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969662, 37.994583, 30.184921>,  <38.835079, 38.125824, 29.831844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969662, 37.994583, 30.184921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938034, 0.199378, -0.283444,
		-0.082990, 0.923361, 0.374857,
		0.336459, -0.328105, 0.882690,
		39.070599, 37.896152, 30.449728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431950, 38.482265, 29.973036>,  <38.835079, 38.125824, 29.831844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431950, 38.482265, 29.973036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454021, 38.151340, 30.196648>,  <39.467266, 37.952785, 30.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454021, 38.151340, 30.196648>,  <39.431950, 38.482265, 29.973036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454021, 38.151340, 30.196648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998464, 0.042915, -0.035043,
		0.005001, 0.560105, 0.828406,
		0.055179, -0.827309, 0.559030,
		39.470573, 37.903149, 30.364357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894077, 38.552212, 30.695450>,  <39.431950, 38.482265, 29.973036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894077, 38.552212, 30.695450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877224, 38.186729, 30.533779>,  <39.867111, 37.967438, 30.436777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877224, 38.186729, 30.533779>,  <39.894077, 38.552212, 30.695450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877224, 38.186729, 30.533779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996103, -0.007045, -0.087911,
		0.077478, -0.406305, 0.910447,
		-0.042133, -0.913710, -0.404176,
		39.864586, 37.912617, 30.412527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668633, 38.179821, 30.605192>,  <39.894077, 38.552212, 30.695450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668633, 38.179821, 30.605192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812897, 37.987614, 30.285435>,  <40.899456, 37.872292, 30.093580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812897, 37.987614, 30.285435>,  <40.668633, 38.179821, 30.605192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812897, 37.987614, 30.285435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662229, -0.471612, 0.582267,
		-0.656791, -0.739383, 0.148119,
		0.360663, -0.480516, -0.799391,
		40.921097, 37.843460, 30.045618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732353, 37.487968, 30.746754>,  <40.668633, 38.179821, 30.605192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732353, 37.487968, 30.746754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988491, 37.554092, 30.446720>,  <41.142174, 37.593765, 30.266699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988491, 37.554092, 30.446720>,  <40.732353, 37.487968, 30.746754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988491, 37.554092, 30.446720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694377, -0.542031, 0.473332,
		-0.328322, -0.823939, -0.461876,
		0.640348, 0.165311, -0.750085,
		41.180595, 37.603687, 30.221695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079067, 36.931618, 30.381413>,  <40.732353, 37.487968, 30.746754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079067, 36.931618, 30.381413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351681, 37.223339, 30.357323>,  <41.515251, 37.398373, 30.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351681, 37.223339, 30.357323>,  <41.079067, 36.931618, 30.381413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351681, 37.223339, 30.357323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673219, -0.592609, 0.442256,
		0.286849, -0.341958, -0.894865,
		0.681538, 0.729301, -0.060223,
		41.556141, 37.442131, 30.339256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665989, 36.664116, 30.080645>,  <41.079067, 36.931618, 30.381413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665989, 36.664116, 30.080645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751751, 36.974205, 30.318321>,  <41.803207, 37.160259, 30.460928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751751, 36.974205, 30.318321>,  <41.665989, 36.664116, 30.080645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751751, 36.974205, 30.318321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657528, -0.564406, 0.499103,
		0.722280, 0.283689, -0.630739,
		0.214403, 0.775221, 0.594193,
		41.816071, 37.206772, 30.496578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316109, 36.855068, 29.901583>,  <41.665989, 36.664116, 30.080645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316109, 36.855068, 29.901583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225677, 36.947857, 30.280016>,  <42.171421, 37.003532, 30.507076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225677, 36.947857, 30.280016>,  <42.316109, 36.855068, 29.901583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225677, 36.947857, 30.280016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680029, -0.657814, 0.323792,
		0.697460, 0.716567, -0.009034,
		-0.226076, 0.231975, 0.946085,
		42.157856, 37.017448, 30.563841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904995, 37.185650, 30.312269>,  <42.316109, 36.855068, 29.901583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904995, 37.185650, 30.312269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654182, 36.959999, 30.527155>,  <42.503696, 36.824608, 30.656086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654182, 36.959999, 30.527155>,  <42.904995, 37.185650, 30.312269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654182, 36.959999, 30.527155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765980, -0.572027, 0.293359,
		0.141809, 0.595438, 0.790787,
		-0.627029, -0.564126, 0.537212,
		42.466072, 36.790760, 30.688318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021553, 37.333927, 31.047346>,  <42.904995, 37.185650, 30.312269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021553, 37.333927, 31.047346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927563, 36.965961, 30.921782>,  <42.871166, 36.745182, 30.846443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927563, 36.965961, 30.921782>,  <43.021553, 37.333927, 31.047346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927563, 36.965961, 30.921782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902789, -0.326238, 0.280252,
		-0.360218, -0.217541, 0.907149,
		-0.234980, -0.919915, -0.313911,
		42.857067, 36.689987, 30.827608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997925, 36.765385, 31.511999>,  <43.021553, 37.333927, 31.047346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997925, 36.765385, 31.511999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116840, 36.606030, 31.164919>,  <43.188190, 36.510418, 30.956671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116840, 36.606030, 31.164919>,  <42.997925, 36.765385, 31.511999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116840, 36.606030, 31.164919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904586, -0.173285, 0.389482,
		-0.305525, -0.900699, 0.308862,
		0.297285, -0.398389, -0.867702,
		43.206024, 36.486511, 30.904608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421989, 36.122849, 31.666555>,  <42.997925, 36.765385, 31.511999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421989, 36.122849, 31.666555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523754, 36.236771, 31.296873>,  <43.584812, 36.305122, 31.075064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523754, 36.236771, 31.296873>,  <43.421989, 36.122849, 31.666555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523754, 36.236771, 31.296873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963765, 0.004565, 0.266712,
		0.080180, -0.958574, -0.273325,
		0.254416, 0.284806, -0.924207,
		43.600079, 36.322212, 31.019611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958542, 35.658943, 31.353386>,  <43.421989, 36.122849, 31.666555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958542, 35.658943, 31.353386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978786, 36.033020, 31.213182>,  <43.990932, 36.257465, 31.129061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978786, 36.033020, 31.213182>,  <43.958542, 35.658943, 31.353386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978786, 36.033020, 31.213182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906230, 0.104494, 0.409668,
		0.419744, -0.338376, -0.842209,
		0.050616, 0.935191, -0.350508,
		43.993973, 36.313576, 31.108030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582909, 35.762020, 30.955360>,  <43.958542, 35.658943, 31.353386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582909, 35.762020, 30.955360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468067, 36.127167, 31.071465>,  <44.399162, 36.346252, 31.141127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468067, 36.127167, 31.071465>,  <44.582909, 35.762020, 30.955360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468067, 36.127167, 31.071465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912094, 0.167937, 0.374008,
		0.292672, 0.372125, -0.880832,
		-0.287102, 0.912864, 0.290262,
		44.381935, 36.401028, 31.158543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974468, 36.276909, 30.690296>,  <44.582909, 35.762020, 30.955360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974468, 36.276909, 30.690296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827000, 36.434540, 31.027052>,  <44.738518, 36.529118, 31.229105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827000, 36.434540, 31.027052>,  <44.974468, 36.276909, 30.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827000, 36.434540, 31.027052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923095, 0.261826, 0.281677,
		-0.109425, 0.880992, -0.460303,
		-0.368675, 0.394081, 0.841890,
		44.716396, 36.552765, 31.279619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310600, 36.888519, 30.783295>,  <44.974468, 36.276909, 30.690296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310600, 36.888519, 30.783295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195309, 36.738018, 31.135513>,  <45.126133, 36.647717, 31.346844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195309, 36.738018, 31.135513>,  <45.310600, 36.888519, 30.783295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195309, 36.738018, 31.135513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901959, 0.202118, 0.381600,
		-0.321551, 0.904203, 0.281107,
		-0.288227, -0.376251, 0.880545,
		45.108841, 36.625141, 31.399677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341251, 37.379452, 31.315145>,  <45.310600, 36.888519, 30.783295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341251, 37.379452, 31.315145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393452, 37.005096, 31.446037>,  <45.424770, 36.780483, 31.524572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393452, 37.005096, 31.446037>,  <45.341251, 37.379452, 31.315145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393452, 37.005096, 31.446037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929327, 0.230460, 0.288512,
		-0.345429, 0.266454, 0.899823,
		0.130498, -0.935890, 0.327230,
		45.432602, 36.724331, 31.544207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492840, 37.208916, 32.014648>,  <45.341251, 37.379452, 31.315145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492840, 37.208916, 32.014648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708260, 36.941128, 31.809994>,  <45.837509, 36.780453, 31.687201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708260, 36.941128, 31.809994>,  <45.492840, 37.208916, 32.014648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708260, 36.941128, 31.809994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839325, 0.372789, 0.395679,
		-0.074163, -0.642523, 0.762669,
		0.538547, -0.669472, -0.511639,
		45.869823, 36.740288, 31.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050240, 36.914753, 32.312340>,  <45.492840, 37.208916, 32.014648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050240, 36.914753, 32.312340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681549, 36.784206, 32.228523>,  <45.460335, 36.705879, 32.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681549, 36.784206, 32.228523>,  <46.050240, 36.914753, 32.312340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681549, 36.784206, 32.228523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124914, -0.761289, 0.636266,
		-0.367184, 0.560286, 0.742466,
		-0.921723, -0.326371, -0.209545,
		45.405033, 36.686295, 32.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541119, 36.873055, 32.953766>,  <46.050240, 36.914753, 32.312340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541119, 36.873055, 32.953766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497097, 36.584560, 32.680206>,  <45.470684, 36.411465, 32.516071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497097, 36.584560, 32.680206>,  <45.541119, 36.873055, 32.953766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497097, 36.584560, 32.680206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228901, -0.687972, 0.688693,
		-0.967208, -0.080750, 0.240806,
		-0.110056, -0.721231, -0.683896,
		45.464081, 36.368191, 32.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067249, 36.350151, 33.192932>,  <45.541119, 36.873055, 32.953766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067249, 36.350151, 33.192932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271095, 36.170486, 32.899387>,  <45.393402, 36.062687, 32.723263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271095, 36.170486, 32.899387>,  <45.067249, 36.350151, 33.192932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271095, 36.170486, 32.899387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241923, -0.743713, 0.623189,
		-0.825693, -0.495122, -0.270343,
		0.509612, -0.449160, -0.733860,
		45.423981, 36.035740, 32.679230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823528, 35.707787, 33.089088>,  <45.067249, 36.350151, 33.192932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823528, 35.707787, 33.089088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208496, 35.708088, 32.980465>,  <45.439476, 35.708271, 32.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208496, 35.708088, 32.980465>,  <44.823528, 35.707787, 33.089088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208496, 35.708088, 32.980465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184222, -0.736521, 0.650845,
		-0.199515, -0.676415, -0.708983,
		0.962422, 0.000756, -0.271557,
		45.497223, 35.708313, 32.898998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941277, 34.928177, 32.988068>,  <44.823528, 35.707787, 33.089088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941277, 34.928177, 32.988068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308529, 35.085693, 33.005764>,  <45.528881, 35.180202, 33.016380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308529, 35.085693, 33.005764>,  <44.941277, 34.928177, 32.988068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308529, 35.085693, 33.005764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314696, -0.792418, 0.522533,
		0.240827, -0.465832, -0.851471,
		0.918133, 0.393795, 0.044240,
		45.583969, 35.203831, 33.019035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434555, 34.410034, 33.088177>,  <44.941277, 34.928177, 32.988068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434555, 34.410034, 33.088177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660141, 34.717308, 33.209400>,  <45.795490, 34.901672, 33.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660141, 34.717308, 33.209400>,  <45.434555, 34.410034, 33.088177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660141, 34.717308, 33.209400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465949, -0.598994, 0.651228,
		0.681790, -0.226060, -0.695744,
		0.563963, 0.768182, 0.303055,
		45.829330, 34.947762, 33.300316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156281, 34.174824, 33.004009>,  <45.434555, 34.410034, 33.088177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156281, 34.174824, 33.004009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134380, 34.482166, 33.259079>,  <46.121239, 34.666573, 33.412121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134380, 34.482166, 33.259079>,  <46.156281, 34.174824, 33.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134380, 34.482166, 33.259079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664169, -0.448838, 0.597850,
		0.745575, 0.456257, -0.485745,
		-0.054753, 0.768358, 0.637673,
		46.117954, 34.712673, 33.450382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805912, 34.480186, 33.202732>,  <46.156281, 34.174824, 33.004009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805912, 34.480186, 33.202732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595306, 34.544323, 33.536697>,  <46.468945, 34.582806, 33.737076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595306, 34.544323, 33.536697>,  <46.805912, 34.480186, 33.202732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595306, 34.544323, 33.536697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804436, -0.223786, 0.550275,
		0.275076, 0.961358, -0.011162,
		-0.526513, 0.160346, 0.834909,
		46.437351, 34.592426, 33.787170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153751, 35.073956, 33.421528>,  <46.805912, 34.480186, 33.202732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153751, 35.073956, 33.421528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034012, 34.831982, 33.716675>,  <46.962170, 34.686798, 33.893764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034012, 34.831982, 33.716675>,  <47.153751, 35.073956, 33.421528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034012, 34.831982, 33.716675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890436, 0.100728, 0.443822,
		-0.342806, 0.789879, 0.508502,
		-0.299346, -0.604933, 0.737867,
		46.944206, 34.650501, 33.938034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276894, 35.319164, 34.076244>,  <47.153751, 35.073956, 33.421528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276894, 35.319164, 34.076244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278759, 34.923378, 34.134109>,  <47.279881, 34.685905, 34.168831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278759, 34.923378, 34.134109>,  <47.276894, 35.319164, 34.076244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278759, 34.923378, 34.134109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764009, 0.096866, 0.637893,
		-0.645189, 0.107549, 0.756415,
		0.004666, -0.989470, 0.144666,
		47.280159, 34.626537, 34.177509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.577553, 35.259823, 34.597126>,  <47.276894, 35.319164, 34.076244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.577553, 35.259823, 34.597126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571098, 34.863266, 34.545166>,  <47.567226, 34.625332, 34.513988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571098, 34.863266, 34.545166>,  <47.577553, 35.259823, 34.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571098, 34.863266, 34.545166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548522, -0.117401, 0.827853,
		-0.835980, -0.057892, 0.545697,
		-0.016140, -0.991396, -0.129900,
		47.566257, 34.565845, 34.506195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380215, 34.809387, 35.223309>,  <47.577553, 35.259823, 34.597126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380215, 34.809387, 35.223309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623726, 34.558826, 35.028572>,  <47.769833, 34.408489, 34.911732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623726, 34.558826, 35.028572>,  <47.380215, 34.809387, 35.223309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.623726, 34.558826, 35.028572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427828, -0.257570, 0.866384,
		-0.668098, -0.735719, 0.111189,
		0.608776, -0.626399, -0.486843,
		47.806358, 34.370907, 34.882519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.541376, 38.338650, 20.770760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154465, 38.437702, 20.792875>,  <30.922318, 38.497131, 20.806145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154465, 38.437702, 20.792875>,  <31.541376, 38.338650, 20.770760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154465, 38.437702, 20.792875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079017, 0.086929, 0.993076,
		0.241108, 0.964947, -0.103652,
		-0.967276, 0.247629, 0.055288,
		30.864283, 38.511990, 20.809462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485403, 38.894543, 21.181320>,  <31.541376, 38.338650, 20.770760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485403, 38.894543, 21.181320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.114588, 38.747173, 21.209221>,  <30.892099, 38.658752, 21.225962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.114588, 38.747173, 21.209221>,  <31.485403, 38.894543, 21.181320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114588, 38.747173, 21.209221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022112, 0.131979, 0.991006,
		-0.374318, 0.920241, -0.114202,
		-0.927037, -0.368426, 0.069750,
		30.836477, 38.636646, 21.230146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202293, 39.361183, 21.571976>,  <31.485403, 38.894543, 21.181320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202293, 39.361183, 21.571976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950161, 39.053352, 21.612852>,  <30.798882, 38.868656, 21.637377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950161, 39.053352, 21.612852>,  <31.202293, 39.361183, 21.571976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950161, 39.053352, 21.612852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032537, 0.157704, 0.986950,
		-0.775646, 0.618778, -0.124445,
		-0.630329, -0.769573, 0.102189,
		30.761063, 38.822479, 21.643509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506634, 39.701412, 21.943729>,  <31.202293, 39.361183, 21.571976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506634, 39.701412, 21.943729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.503780, 39.303299, 21.982420>,  <30.502068, 39.064430, 22.005634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.503780, 39.303299, 21.982420>,  <30.506634, 39.701412, 21.943729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503780, 39.303299, 21.982420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098132, 0.096961, 0.990439,
		-0.995148, -0.002425, -0.098361,
		-0.007135, -0.995285, 0.096728,
		30.501640, 39.004715, 22.011438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033009, 39.661209, 22.401278>,  <30.506634, 39.701412, 21.943729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033009, 39.661209, 22.401278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208475, 39.302856, 22.429485>,  <30.313755, 39.087845, 22.446409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208475, 39.302856, 22.429485>,  <30.033009, 39.661209, 22.401278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208475, 39.302856, 22.429485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135885, 0.011445, 0.990658,
		-0.888318, -0.444150, -0.116716,
		0.438665, -0.895879, 0.070520,
		30.340075, 39.034092, 22.450642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617447, 39.260487, 22.758591>,  <30.033009, 39.661209, 22.401278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617447, 39.260487, 22.758591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.975668, 39.082962, 22.771351>,  <30.190599, 38.976448, 22.779007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.975668, 39.082962, 22.771351>,  <29.617447, 39.260487, 22.758591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975668, 39.082962, 22.771351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064554, -0.058657, 0.996189,
		-0.440251, -0.894197, -0.081181,
		0.895551, -0.443814, 0.031900,
		30.244333, 38.949818, 22.780920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607174, 38.707397, 23.168262>,  <29.617447, 39.260487, 22.758591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607174, 38.707397, 23.168262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.995735, 38.802250, 23.173105>,  <30.228872, 38.859161, 23.176010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.995735, 38.802250, 23.173105>,  <29.607174, 38.707397, 23.168262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995735, 38.802250, 23.173105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004958, -0.071236, 0.997447,
		0.237388, -0.968863, -0.070374,
		0.971402, 0.237131, 0.012107,
		30.287155, 38.873390, 23.176737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936842, 38.173866, 23.627672>,  <29.607174, 38.707397, 23.168262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936842, 38.173866, 23.627672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.178495, 38.491959, 23.607132>,  <30.323486, 38.682812, 23.594809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.178495, 38.491959, 23.607132>,  <29.936842, 38.173866, 23.627672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178495, 38.491959, 23.607132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057553, 0.020728, 0.998127,
		0.794804, -0.605955, -0.033245,
		0.604131, 0.795229, -0.051350,
		30.359735, 38.730526, 23.591726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627522, 37.971951, 24.048779>,  <29.936842, 38.173866, 23.627672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627522, 37.971951, 24.048779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558233, 38.363697, 24.007147>,  <30.516661, 38.598747, 23.982168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558233, 38.363697, 24.007147>,  <30.627522, 37.971951, 24.048779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558233, 38.363697, 24.007147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148391, 0.130423, 0.980291,
		0.973640, 0.154364, -0.167922,
		-0.173222, 0.979368, -0.104078,
		30.506268, 38.657509, 23.975924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029816, 38.285461, 24.571861>,  <30.627522, 37.971951, 24.048779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029816, 38.285461, 24.571861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.802557, 38.604481, 24.490738>,  <30.666201, 38.795891, 24.442064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.802557, 38.604481, 24.490738>,  <31.029816, 38.285461, 24.571861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802557, 38.604481, 24.490738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142749, 0.338223, 0.930176,
		0.810451, 0.499528, -0.306009,
		-0.568148, 0.797544, -0.202806,
		30.632113, 38.843742, 24.429895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470682, 38.790962, 24.789682>,  <31.029816, 38.285461, 24.571861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470682, 38.790962, 24.789682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.107351, 38.958103, 24.797037>,  <30.889353, 39.058388, 24.801451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.107351, 38.958103, 24.797037>,  <31.470682, 38.790962, 24.789682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107351, 38.958103, 24.797037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272961, 0.558907, 0.783017,
		0.316909, 0.716256, -0.621728,
		-0.908329, 0.417853, 0.018387,
		30.834852, 39.083458, 24.802553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538242, 39.544533, 24.861258>,  <31.470682, 38.790962, 24.789682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538242, 39.544533, 24.861258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.177433, 39.461498, 25.012657>,  <30.960947, 39.411678, 25.103497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.177433, 39.461498, 25.012657>,  <31.538242, 39.544533, 24.861258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177433, 39.461498, 25.012657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254673, 0.452064, 0.854857,
		-0.348567, 0.867493, -0.354904,
		-0.902022, -0.207590, 0.378501,
		30.906826, 39.399220, 25.126207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368734, 40.174435, 25.105837>,  <31.538242, 39.544533, 24.861258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368734, 40.174435, 25.105837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.111122, 39.925865, 25.284298>,  <30.956554, 39.776722, 25.391375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.111122, 39.925865, 25.284298>,  <31.368734, 40.174435, 25.105837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111122, 39.925865, 25.284298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099693, 0.510058, 0.854343,
		-0.758477, 0.594700, -0.266540,
		-0.644029, -0.621428, 0.446155,
		30.917913, 39.739437, 25.418144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929667, 40.596684, 25.502277>,  <31.368734, 40.174435, 25.105837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929667, 40.596684, 25.502277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885160, 40.239178, 25.676083>,  <30.858456, 40.024673, 25.780367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885160, 40.239178, 25.676083>,  <30.929667, 40.596684, 25.502277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885160, 40.239178, 25.676083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150448, 0.417042, 0.896349,
		-0.982337, 0.165105, 0.088063,
		-0.111266, -0.893765, 0.434515,
		30.851780, 39.971046, 25.806437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671684, 40.795975, 26.077879>,  <30.929667, 40.596684, 25.502277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671684, 40.795975, 26.077879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.797165, 40.422478, 26.146837>,  <30.872454, 40.198380, 26.188211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.797165, 40.422478, 26.146837>,  <30.671684, 40.795975, 26.077879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797165, 40.422478, 26.146837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323280, 0.275741, 0.905239,
		-0.892794, -0.228244, 0.388360,
		0.313702, -0.933741, 0.172394,
		30.891275, 40.142357, 26.198555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505852, 40.639832, 26.765091>,  <30.671684, 40.795975, 26.077879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505852, 40.639832, 26.765091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.785374, 40.363075, 26.692467>,  <30.953087, 40.197021, 26.648891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.785374, 40.363075, 26.692467>,  <30.505852, 40.639832, 26.765091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785374, 40.363075, 26.692467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380268, 0.144343, 0.913543,
		-0.605864, -0.707428, 0.363971,
		0.698803, -0.691889, -0.181561,
		30.995014, 40.155510, 26.637999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459869, 40.229038, 27.303259>,  <30.505852, 40.639832, 26.765091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459869, 40.229038, 27.303259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827126, 40.174145, 27.154568>,  <31.047480, 40.141209, 27.065353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827126, 40.174145, 27.154568>,  <30.459869, 40.229038, 27.303259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827126, 40.174145, 27.154568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366274, -0.064018, 0.928302,
		-0.151190, -0.988468, -0.008513,
		0.918142, -0.137232, -0.371729,
		31.102568, 40.132977, 27.043049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689926, 39.735573, 27.715721>,  <30.459869, 40.229038, 27.303259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689926, 39.735573, 27.715721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020462, 39.887062, 27.548996>,  <31.218782, 39.977955, 27.448961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020462, 39.887062, 27.548996>,  <30.689926, 39.735573, 27.715721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020462, 39.887062, 27.548996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447826, 0.006903, 0.894094,
		0.341495, -0.925483, -0.163899,
		0.826337, 0.378727, -0.416813,
		31.268364, 40.000679, 27.423952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249832, 39.296112, 27.891645>,  <30.689926, 39.735573, 27.715721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249832, 39.296112, 27.891645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.401283, 39.656319, 27.806126>,  <31.492155, 39.872444, 27.754814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.401283, 39.656319, 27.806126>,  <31.249832, 39.296112, 27.891645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401283, 39.656319, 27.806126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585643, -0.054223, 0.808754,
		0.716703, -0.431429, -0.547911,
		0.378629, 0.900516, -0.213801,
		31.514872, 39.926472, 27.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923914, 39.224754, 28.023933>,  <31.249832, 39.296112, 27.891645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923914, 39.224754, 28.023933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.871452, 39.621151, 28.034779>,  <31.839975, 39.858990, 28.041285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.871452, 39.621151, 28.034779>,  <31.923914, 39.224754, 28.023933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871452, 39.621151, 28.034779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587914, 0.055731, 0.807001,
		0.798220, 0.121781, -0.589927,
		-0.131155, 0.990991, 0.027111,
		31.832106, 39.918449, 28.042912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519455, 39.461555, 28.333662>,  <31.923914, 39.224754, 28.023933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519455, 39.461555, 28.333662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288551, 39.786247, 28.369127>,  <32.150009, 39.981064, 28.390408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288551, 39.786247, 28.369127>,  <32.519455, 39.461555, 28.333662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288551, 39.786247, 28.369127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528580, 0.288702, 0.798282,
		0.622393, 0.507684, -0.595721,
		-0.577261, 0.811732, 0.088665,
		32.115372, 40.029766, 28.395727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158794, 39.119518, 28.577530>,  <32.519455, 39.461555, 28.333662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158794, 39.119518, 28.577530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519070, 39.285946, 28.627575>,  <33.735233, 39.385803, 28.657602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519070, 39.285946, 28.627575>,  <33.158794, 39.119518, 28.577530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519070, 39.285946, 28.627575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151639, -0.031180, -0.987944,
		-0.407150, 0.908799, -0.091176,
		0.900685, 0.416067, 0.125115,
		33.789276, 39.410767, 28.665110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245785, 39.464943, 27.932785>,  <33.158794, 39.119518, 28.577530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245785, 39.464943, 27.932785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605480, 39.470718, 28.107676>,  <33.821297, 39.474186, 28.212610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605480, 39.470718, 28.107676>,  <33.245785, 39.464943, 27.932785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605480, 39.470718, 28.107676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434989, 0.076611, -0.897171,
		-0.046454, 0.996957, 0.062609,
		0.899237, 0.014443, 0.437224,
		33.875252, 39.475052, 28.238842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509190, 40.027779, 27.631042>,  <33.245785, 39.464943, 27.932785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509190, 40.027779, 27.631042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835091, 39.847092, 27.776445>,  <34.030632, 39.738682, 27.863688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835091, 39.847092, 27.776445>,  <33.509190, 40.027779, 27.631042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835091, 39.847092, 27.776445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422053, 0.032161, -0.906001,
		0.397562, 0.891583, 0.216850,
		0.814749, -0.451714, 0.363509,
		34.079514, 39.711578, 27.885498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187088, 40.410244, 27.449116>,  <33.509190, 40.027779, 27.631042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187088, 40.410244, 27.449116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248425, 40.016991, 27.488991>,  <34.285229, 39.781040, 27.512915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248425, 40.016991, 27.488991>,  <34.187088, 40.410244, 27.449116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248425, 40.016991, 27.488991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576097, 0.006981, -0.817352,
		0.802868, 0.182767, 0.567449,
		0.153346, -0.983131, 0.099686,
		34.294430, 39.722050, 27.518896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648472, 40.386791, 27.000629>,  <34.187088, 40.410244, 27.449116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648472, 40.386791, 27.000629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569054, 40.003880, 27.084721>,  <34.521400, 39.774132, 27.135176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569054, 40.003880, 27.084721>,  <34.648472, 40.386791, 27.000629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569054, 40.003880, 27.084721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326736, -0.266879, -0.906653,
		0.924025, -0.111326, 0.365766,
		-0.198550, -0.957278, 0.210229,
		34.509487, 39.716698, 27.147789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175209, 40.076996, 26.758404>,  <34.648472, 40.386791, 27.000629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175209, 40.076996, 26.758404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.889484, 39.797741, 26.738995>,  <34.718048, 39.630188, 26.727350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.889484, 39.797741, 26.738995>,  <35.175209, 40.076996, 26.758404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889484, 39.797741, 26.738995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318901, -0.263004, -0.910566,
		0.622940, -0.665906, 0.410506,
		-0.714316, -0.698139, -0.048522,
		34.675190, 39.588299, 26.724438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540661, 39.509384, 26.443607>,  <35.175209, 40.076996, 26.758404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540661, 39.509384, 26.443607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.152611, 39.431328, 26.385958>,  <34.919781, 39.384495, 26.351368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.152611, 39.431328, 26.385958>,  <35.540661, 39.509384, 26.443607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152611, 39.431328, 26.385958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189657, -0.239625, -0.952161,
		0.151268, -0.951052, 0.269477,
		-0.970128, -0.195140, -0.144126,
		34.861572, 39.372787, 26.342720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471298, 38.884628, 26.113192>,  <35.540661, 39.509384, 26.443607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471298, 38.884628, 26.113192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121052, 39.066185, 26.047129>,  <34.910904, 39.175117, 26.007490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121052, 39.066185, 26.047129>,  <35.471298, 38.884628, 26.113192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121052, 39.066185, 26.047129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080934, -0.199225, -0.976606,
		-0.476175, -0.868501, 0.137710,
		-0.875618, 0.453889, -0.165158,
		34.858368, 39.202351, 25.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144848, 38.483418, 25.573364>,  <35.471298, 38.884628, 26.113192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144848, 38.483418, 25.573364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921997, 38.815269, 25.587950>,  <34.788288, 39.014381, 25.596701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921997, 38.815269, 25.587950>,  <35.144848, 38.483418, 25.573364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921997, 38.815269, 25.587950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219124, -0.104514, -0.970083,
		-0.800998, -0.548446, 0.240019,
		-0.557123, 0.829629, 0.036462,
		34.754860, 39.064159, 25.598888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433876, 38.380749, 25.206911>,  <35.144848, 38.483418, 25.573364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433876, 38.380749, 25.206911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487732, 38.777107, 25.207802>,  <34.520046, 39.014923, 25.208336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487732, 38.777107, 25.207802>,  <34.433876, 38.380749, 25.206911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487732, 38.777107, 25.207802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320914, 0.045733, -0.946004,
		-0.937489, 0.126656, 0.324149,
		0.134642, 0.990892, 0.002228,
		34.528126, 39.074375, 25.208469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900612, 38.625782, 24.764391>,  <34.433876, 38.380749, 25.206911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900612, 38.625782, 24.764391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158802, 38.931210, 24.771589>,  <34.313717, 39.114468, 24.775908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158802, 38.931210, 24.771589>,  <33.900612, 38.625782, 24.764391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158802, 38.931210, 24.771589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088333, 0.098030, -0.991256,
		-0.758659, 0.638239, 0.130724,
		0.645472, 0.763572, 0.017994,
		34.352444, 39.160282, 24.776987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578159, 39.084454, 24.280504>,  <33.900612, 38.625782, 24.764391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578159, 39.084454, 24.280504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948196, 39.232414, 24.314846>,  <34.170219, 39.321190, 24.335451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948196, 39.232414, 24.314846>,  <33.578159, 39.084454, 24.280504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948196, 39.232414, 24.314846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033777, 0.305346, -0.951642,
		-0.378227, 0.877461, 0.294969,
		0.925096, 0.369900, 0.085853,
		34.225727, 39.343384, 24.340601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504791, 39.752129, 24.021717>,  <33.578159, 39.084454, 24.280504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504791, 39.752129, 24.021717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893948, 39.661125, 24.005096>,  <34.127441, 39.606522, 23.995123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893948, 39.661125, 24.005096>,  <33.504791, 39.752129, 24.021717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893948, 39.661125, 24.005096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014345, 0.119964, -0.992675,
		0.230826, 0.966359, 0.113448,
		0.972889, -0.227507, -0.041553,
		34.185814, 39.592873, 23.992630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846344, 40.223141, 23.543175>,  <33.504791, 39.752129, 24.021717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846344, 40.223141, 23.543175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056801, 39.883545, 23.562771>,  <34.183075, 39.679787, 23.574528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056801, 39.883545, 23.562771>,  <33.846344, 40.223141, 23.543175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056801, 39.883545, 23.562771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024894, -0.072960, -0.997024,
		0.850033, 0.523355, -0.059521,
		0.526141, -0.848985, 0.048990,
		34.214642, 39.628849, 23.577467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264248, 40.319790, 23.004421>,  <33.846344, 40.223141, 23.543175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264248, 40.319790, 23.004421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280640, 39.928673, 23.086624>,  <34.290474, 39.694000, 23.135946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280640, 39.928673, 23.086624>,  <34.264248, 40.319790, 23.004421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280640, 39.928673, 23.086624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085594, -0.201489, -0.975744,
		0.995487, 0.057572, 0.075438,
		0.040976, -0.977798, 0.205507,
		34.292931, 39.635334, 23.148275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642380, 40.164303, 22.460262>,  <34.264248, 40.319790, 23.004421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642380, 40.164303, 22.460262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447876, 39.840679, 22.592312>,  <34.331173, 39.646507, 22.671541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447876, 39.840679, 22.592312>,  <34.642380, 40.164303, 22.460262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447876, 39.840679, 22.592312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119415, -0.312723, -0.942308,
		0.865616, -0.497628, 0.055451,
		-0.486260, -0.809055, 0.330122,
		34.301998, 39.597961, 22.691349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894409, 39.705223, 22.013733>,  <34.642380, 40.164303, 22.460262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894409, 39.705223, 22.013733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549763, 39.568066, 22.163422>,  <34.342976, 39.485771, 22.253235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549763, 39.568066, 22.163422>,  <34.894409, 39.705223, 22.013733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549763, 39.568066, 22.163422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279091, -0.295752, -0.913586,
		0.423941, -0.891602, 0.159125,
		-0.861616, -0.342896, 0.374220,
		34.291279, 39.465199, 22.275688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843132, 39.052238, 21.602177>,  <34.894409, 39.705223, 22.013733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843132, 39.052238, 21.602177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476509, 39.131435, 21.741158>,  <34.256535, 39.178955, 21.824547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476509, 39.131435, 21.741158>,  <34.843132, 39.052238, 21.602177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476509, 39.131435, 21.741158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369847, -0.089186, -0.924802,
		-0.152124, -0.976136, 0.154974,
		-0.916554, 0.198002, 0.347453,
		34.201542, 39.190834, 21.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382122, 38.607380, 21.332378>,  <34.843132, 39.052238, 21.602177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382122, 38.607380, 21.332378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139874, 38.911827, 21.425270>,  <33.994526, 39.094494, 21.481005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139874, 38.911827, 21.425270>,  <34.382122, 38.607380, 21.332378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139874, 38.911827, 21.425270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458049, -0.094786, -0.883859,
		-0.650706, -0.641654, 0.406032,
		-0.605618, 0.761115, 0.232231,
		33.958187, 39.140163, 21.494940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.704247, 38.301712, 21.260391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689922, 38.696800, 21.199575>,  <33.681328, 38.933853, 21.163086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689922, 38.696800, 21.199575>,  <33.704247, 38.301712, 21.260391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689922, 38.696800, 21.199575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328887, -0.155312, -0.931511,
		-0.943690, 0.016647, 0.330411,
		-0.035810, 0.987725, -0.152041,
		33.679180, 38.993118, 21.153963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050335, 38.527561, 20.922022>,  <33.704247, 38.301712, 21.260391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050335, 38.527561, 20.922022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295666, 38.831253, 20.834938>,  <33.442863, 39.013470, 20.782688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295666, 38.831253, 20.834938>,  <33.050335, 38.527561, 20.922022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295666, 38.831253, 20.834938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330444, -0.003698, -0.943818,
		-0.717383, 0.650809, 0.248616,
		0.613326, 0.759233, -0.217708,
		33.479664, 39.059025, 20.769625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637138, 39.063038, 20.660973>,  <33.050335, 38.527561, 20.922022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637138, 39.063038, 20.660973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996632, 39.156433, 20.512503>,  <33.212326, 39.212471, 20.423422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996632, 39.156433, 20.512503>,  <32.637138, 39.063038, 20.660973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996632, 39.156433, 20.512503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407894, 0.134436, -0.903078,
		-0.160957, 0.963022, 0.216059,
		0.898730, 0.233486, -0.371173,
		33.266251, 39.226479, 20.401152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457932, 39.626385, 20.253090>,  <32.637138, 39.063038, 20.660973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457932, 39.626385, 20.253090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802471, 39.462818, 20.132517>,  <33.009193, 39.364677, 20.060173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802471, 39.462818, 20.132517>,  <32.457932, 39.626385, 20.253090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802471, 39.462818, 20.132517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260419, 0.154044, -0.953128,
		0.436185, 0.899476, 0.026195,
		0.861350, -0.408919, -0.301433,
		33.060875, 39.340141, 20.042088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689587, 40.129658, 19.738894>,  <32.457932, 39.626385, 20.253090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689587, 40.129658, 19.738894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877602, 39.785553, 19.659887>,  <32.990410, 39.579090, 19.612484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877602, 39.785553, 19.659887>,  <32.689587, 40.129658, 19.738894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877602, 39.785553, 19.659887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330231, 0.036129, -0.943209,
		0.818545, 0.508567, -0.267104,
		0.470034, -0.860264, -0.197518,
		33.018612, 39.527473, 19.600632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951408, 40.210560, 19.154974>,  <32.689587, 40.129658, 19.738894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951408, 40.210560, 19.154974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972286, 39.811123, 19.158678>,  <32.984814, 39.571461, 19.160900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972286, 39.811123, 19.158678>,  <32.951408, 40.210560, 19.154974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972286, 39.811123, 19.158678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269103, -0.022995, -0.962837,
		0.961696, 0.047759, -0.269924,
		0.052191, -0.998594, 0.009262,
		32.987942, 39.511543, 19.161457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349907, 40.050709, 18.619406>,  <32.951408, 40.210560, 19.154974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349907, 40.050709, 18.619406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157955, 39.707188, 18.691153>,  <33.042786, 39.501076, 18.734201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157955, 39.707188, 18.691153>,  <33.349907, 40.050709, 18.619406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157955, 39.707188, 18.691153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245286, -0.064963, -0.967272,
		0.842348, -0.508171, -0.179478,
		-0.479880, -0.858803, 0.179369,
		33.013992, 39.449547, 18.744963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572598, 39.568409, 18.062496>,  <33.349907, 40.050709, 18.619406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572598, 39.568409, 18.062496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228481, 39.423271, 18.205738>,  <33.022011, 39.336189, 18.291683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228481, 39.423271, 18.205738>,  <33.572598, 39.568409, 18.062496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228481, 39.423271, 18.205738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241059, -0.329426, -0.912890,
		0.449209, -0.871677, 0.195935,
		-0.860291, -0.362847, 0.358107,
		32.970394, 39.314419, 18.313169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567146, 38.835327, 17.860022>,  <33.572598, 39.568409, 18.062496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567146, 38.835327, 17.860022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.185776, 38.933441, 17.930235>,  <32.956955, 38.992310, 17.972363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.185776, 38.933441, 17.930235>,  <33.567146, 38.835327, 17.860022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185776, 38.933441, 17.930235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253937, -0.338693, -0.905982,
		-0.162774, -0.908362, 0.385206,
		-0.953426, 0.245288, 0.175536,
		32.899750, 39.007027, 17.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152748, 38.224415, 17.785091>,  <33.567146, 38.835327, 17.860022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152748, 38.224415, 17.785091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891106, 38.517395, 17.709545>,  <32.734119, 38.693184, 17.664217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891106, 38.517395, 17.709545>,  <33.152748, 38.224415, 17.785091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891106, 38.517395, 17.709545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161512, -0.379177, -0.911119,
		-0.738960, -0.565462, 0.366320,
		-0.654103, 0.732446, -0.188868,
		32.694874, 38.737129, 17.652885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476498, 37.913620, 17.663651>,  <33.152748, 38.224415, 17.785091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476498, 37.913620, 17.663651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456230, 38.274452, 17.492220>,  <32.444069, 38.490952, 17.389362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456230, 38.274452, 17.492220>,  <32.476498, 37.913620, 17.663651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456230, 38.274452, 17.492220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434511, -0.406295, -0.803819,
		-0.899240, 0.145494, 0.412551,
		-0.050666, 0.902084, -0.428576,
		32.441029, 38.545078, 17.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875326, 37.890755, 17.306911>,  <32.476498, 37.913620, 17.663651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875326, 37.890755, 17.306911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063755, 38.201984, 17.140686>,  <32.176811, 38.388721, 17.040951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063755, 38.201984, 17.140686>,  <31.875326, 37.890755, 17.306911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063755, 38.201984, 17.140686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351859, -0.266260, -0.897386,
		-0.808881, 0.568952, 0.148345,
		0.471071, 0.778074, -0.415563,
		32.205078, 38.435406, 17.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294226, 38.139832, 16.875809>,  <31.875326, 37.890755, 17.306911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294226, 38.139832, 16.875809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648701, 38.260925, 16.735510>,  <31.861385, 38.333580, 16.651331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648701, 38.260925, 16.735510>,  <31.294226, 38.139832, 16.875809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648701, 38.260925, 16.735510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297691, -0.208051, -0.931716,
		-0.355035, 0.930089, -0.094251,
		0.886188, 0.302735, -0.350745,
		31.914557, 38.351746, 16.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124926, 38.511135, 16.354479>,  <31.294226, 38.139832, 16.875809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124926, 38.511135, 16.354479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514036, 38.487289, 16.264904>,  <31.747503, 38.472980, 16.211159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514036, 38.487289, 16.264904>,  <31.124926, 38.511135, 16.354479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514036, 38.487289, 16.264904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224137, 0.003408, -0.974552,
		0.058864, 0.998215, -0.010048,
		0.972778, -0.059618, -0.223937,
		31.805870, 38.469402, 16.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369709, 39.171021, 15.908949>,  <31.124926, 38.511135, 16.354479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369709, 39.171021, 15.908949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605745, 38.859344, 15.824415>,  <31.747368, 38.672340, 15.773695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605745, 38.859344, 15.824415>,  <31.369709, 39.171021, 15.908949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605745, 38.859344, 15.824415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253621, 0.069606, -0.964796,
		0.766465, 0.622916, -0.156544,
		0.590091, -0.779186, -0.211335,
		31.782772, 38.625587, 15.761015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799749, 39.272236, 15.228121>,  <31.369709, 39.171021, 15.908949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799749, 39.272236, 15.228121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847551, 38.878166, 15.277365>,  <31.876232, 38.641724, 15.306911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847551, 38.878166, 15.277365>,  <31.799749, 39.272236, 15.228121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847551, 38.878166, 15.277365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159008, -0.141389, -0.977101,
		0.980018, 0.097191, -0.173547,
		0.119503, -0.985172, 0.123110,
		31.883402, 38.582615, 15.314298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258099, 39.137550, 14.782464>,  <31.799749, 39.272236, 15.228121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258099, 39.137550, 14.782464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096817, 38.775570, 14.836859>,  <32.000050, 38.558384, 14.869495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096817, 38.775570, 14.836859>,  <32.258099, 39.137550, 14.782464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096817, 38.775570, 14.836859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088991, -0.186671, -0.978384,
		0.910772, -0.382388, 0.155799,
		-0.403205, -0.904949, 0.135986,
		31.975855, 38.504086, 14.877654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707428, 38.745697, 14.461285>,  <32.258099, 39.137550, 14.782464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707428, 38.745697, 14.461285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355629, 38.558632, 14.496550>,  <32.144550, 38.446392, 14.517709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355629, 38.558632, 14.496550>,  <32.707428, 38.745697, 14.461285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355629, 38.558632, 14.496550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155384, 0.107090, -0.982032,
		0.449823, -0.877393, -0.166854,
		-0.879497, -0.467667, 0.088161,
		32.091782, 38.418331, 14.522998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673386, 38.342602, 13.825612>,  <32.707428, 38.745697, 14.461285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673386, 38.342602, 13.825612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292370, 38.399738, 13.933143>,  <32.063763, 38.434021, 13.997661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292370, 38.399738, 13.933143>,  <32.673386, 38.342602, 13.825612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292370, 38.399738, 13.933143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245746, 0.160377, -0.955975,
		-0.179670, -0.976665, -0.117661,
		-0.952537, 0.142845, 0.268827,
		32.006607, 38.442593, 14.013791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272343, 38.020782, 13.241680>,  <32.673386, 38.342602, 13.825612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272343, 38.020782, 13.241680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.012604, 38.249317, 13.442446>,  <31.856760, 38.386436, 13.562905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.012604, 38.249317, 13.442446>,  <32.272343, 38.020782, 13.241680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012604, 38.249317, 13.442446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452460, 0.240225, -0.858820,
		-0.611247, -0.784772, 0.102517,
		-0.649351, 0.571336, 0.501915,
		31.817799, 38.420719, 13.593020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606066, 37.787403, 12.969503>,  <32.272343, 38.020782, 13.241680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606066, 37.787403, 12.969503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582382, 38.166698, 13.094296>,  <31.568172, 38.394276, 13.169172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582382, 38.166698, 13.094296>,  <31.606066, 37.787403, 12.969503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582382, 38.166698, 13.094296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402813, 0.263260, -0.876605,
		-0.913365, -0.177573, 0.366376,
		-0.059209, 0.948241, 0.311982,
		31.564619, 38.451172, 13.187891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955370, 37.985027, 12.809471>,  <31.606066, 37.787403, 12.969503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955370, 37.985027, 12.809471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160732, 38.324738, 12.858708>,  <31.283949, 38.528564, 12.888250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160732, 38.324738, 12.858708>,  <30.955370, 37.985027, 12.809471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160732, 38.324738, 12.858708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412242, 0.369888, -0.832610,
		-0.752643, 0.376723, 0.540008,
		0.513406, 0.849272, 0.123092,
		31.314754, 38.579517, 12.895637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533295, 38.569248, 12.991164>,  <30.955370, 37.985027, 12.809471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533295, 38.569248, 12.991164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847548, 38.656326, 12.759512>,  <31.036098, 38.708572, 12.620521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847548, 38.656326, 12.759512>,  <30.533295, 38.569248, 12.991164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847548, 38.656326, 12.759512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618674, 0.268359, -0.738394,
		-0.005332, 0.938398, 0.345515,
		0.785630, 0.217698, -0.579131,
		31.083237, 38.721634, 12.585773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435162, 39.252773, 12.575684>,  <30.533295, 38.569248, 12.991164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435162, 39.252773, 12.575684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641819, 38.946526, 12.422367>,  <30.765814, 38.762779, 12.330378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641819, 38.946526, 12.422367>,  <30.435162, 39.252773, 12.575684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641819, 38.946526, 12.422367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591018, 0.005008, -0.806643,
		0.619499, 0.643278, -0.449905,
		0.516643, -0.765616, -0.383291,
		30.796812, 38.716839, 12.307380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814083, 38.696716, 12.548008>,  <30.435162, 39.252773, 12.575684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814083, 38.696716, 12.548008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428915, 38.639732, 12.639652>,  <29.197815, 38.605541, 12.694638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428915, 38.639732, 12.639652>,  <29.814083, 38.696716, 12.548008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428915, 38.639732, 12.639652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190988, 0.239855, 0.951837,
		-0.190548, 0.960300, -0.203753,
		-0.962920, -0.142456, 0.229110,
		29.140039, 38.596996, 12.708385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563276, 39.205280, 12.936098>,  <29.814083, 38.696716, 12.548008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563276, 39.205280, 12.936098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333471, 38.902996, 13.061848>,  <29.195589, 38.721626, 13.137298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333471, 38.902996, 13.061848>,  <29.563276, 39.205280, 12.936098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333471, 38.902996, 13.061848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019513, 0.371332, 0.928295,
		-0.818264, 0.539450, -0.198588,
		-0.574511, -0.755715, 0.314374,
		29.161118, 38.676281, 13.156160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061558, 39.445187, 13.365141>,  <29.563276, 39.205280, 12.936098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061558, 39.445187, 13.365141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083559, 39.063168, 13.481663>,  <29.096760, 38.833958, 13.551576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083559, 39.063168, 13.481663>,  <29.061558, 39.445187, 13.365141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083559, 39.063168, 13.481663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090795, 0.295322, 0.951074,
		-0.994349, -0.025865, 0.102958,
		0.055005, -0.955047, 0.291305,
		29.100061, 38.776653, 13.569055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492186, 39.364918, 13.868911>,  <29.061558, 39.445187, 13.365141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492186, 39.364918, 13.868911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766565, 39.083942, 13.944866>,  <28.931192, 38.915356, 13.990439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766565, 39.083942, 13.944866>,  <28.492186, 39.364918, 13.868911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766565, 39.083942, 13.944866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022537, 0.240326, 0.970431,
		-0.727302, -0.669944, 0.149021,
		0.685948, -0.702437, 0.189888,
		28.972349, 38.873211, 14.001832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399590, 39.296734, 14.515846>,  <28.492186, 39.364918, 13.868911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399590, 39.296734, 14.515846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730009, 39.073425, 14.484937>,  <28.928261, 38.939442, 14.466391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730009, 39.073425, 14.484937>,  <28.399590, 39.296734, 14.515846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730009, 39.073425, 14.484937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156668, 0.095750, 0.982999,
		-0.541383, -0.824113, 0.166558,
		0.826051, -0.558273, -0.077275,
		28.977825, 38.905945, 14.461754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227638, 38.716885, 14.976110>,  <28.399590, 39.296734, 14.515846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227638, 38.716885, 14.976110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623327, 38.740074, 14.922325>,  <28.860741, 38.753986, 14.890055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623327, 38.740074, 14.922325>,  <28.227638, 38.716885, 14.976110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623327, 38.740074, 14.922325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132537, 0.035866, 0.990529,
		0.062249, -0.997674, 0.027795,
		0.989222, 0.057975, -0.134461,
		28.920094, 38.757465, 14.881987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492994, 38.329693, 15.394884>,  <28.227638, 38.716885, 14.976110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492994, 38.329693, 15.394884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.820604, 38.550789, 15.333343>,  <29.017170, 38.683449, 15.296418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.820604, 38.550789, 15.333343>,  <28.492994, 38.329693, 15.394884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820604, 38.550789, 15.333343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155176, 0.044759, 0.986872,
		0.552372, -0.832150, -0.049113,
		0.819027, 0.552742, -0.153853,
		29.066313, 38.716610, 15.287187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974995, 38.123943, 15.835015>,  <28.492994, 38.329693, 15.394884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974995, 38.123943, 15.835015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107798, 38.495056, 15.766901>,  <29.187479, 38.717724, 15.726032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107798, 38.495056, 15.766901>,  <28.974995, 38.123943, 15.835015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107798, 38.495056, 15.766901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220597, 0.099152, 0.970312,
		0.917119, -0.359717, -0.171746,
		0.332009, 0.927778, -0.170287,
		29.207401, 38.773388, 15.715815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671530, 38.138672, 16.122555>,  <28.974995, 38.123943, 15.835015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671530, 38.138672, 16.122555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543690, 38.517441, 16.108690>,  <29.466986, 38.744701, 16.100372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543690, 38.517441, 16.108690>,  <29.671530, 38.138672, 16.122555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543690, 38.517441, 16.108690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388859, 0.164428, 0.906506,
		0.864086, 0.276242, -0.420769,
		-0.319601, 0.946918, -0.034660,
		29.447809, 38.801517, 16.098291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257336, 38.481262, 16.310907>,  <29.671530, 38.138672, 16.122555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257336, 38.481262, 16.310907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.953255, 38.727959, 16.392614>,  <29.770805, 38.875977, 16.441639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.953255, 38.727959, 16.392614>,  <30.257336, 38.481262, 16.310907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953255, 38.727959, 16.392614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510682, 0.372894, 0.774696,
		0.401615, 0.693242, -0.598432,
		-0.760204, 0.616738, 0.204267,
		29.725193, 38.912979, 16.453894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541208, 39.026222, 16.667194>,  <30.257336, 38.481262, 16.310907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541208, 39.026222, 16.667194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159710, 39.084911, 16.772148>,  <29.930811, 39.120125, 16.835119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159710, 39.084911, 16.772148>,  <30.541208, 39.026222, 16.667194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159710, 39.084911, 16.772148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286621, 0.180563, 0.940875,
		0.090675, 0.972558, -0.214266,
		-0.953744, 0.146726, 0.262383,
		29.873587, 39.128929, 16.850863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503437, 39.678349, 17.028904>,  <30.541208, 39.026222, 16.667194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503437, 39.678349, 17.028904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164442, 39.496426, 17.138384>,  <29.961044, 39.387272, 17.204071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164442, 39.496426, 17.138384>,  <30.503437, 39.678349, 17.028904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164442, 39.496426, 17.138384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192393, 0.217369, 0.956941,
		-0.494719, 0.863655, -0.096716,
		-0.847490, -0.454809, 0.273697,
		29.910194, 39.359982, 17.220493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223011, 40.094654, 17.568562>,  <30.503437, 39.678349, 17.028904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223011, 40.094654, 17.568562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052731, 39.733181, 17.587021>,  <29.950563, 39.516296, 17.598097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052731, 39.733181, 17.587021>,  <30.223011, 40.094654, 17.568562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052731, 39.733181, 17.587021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186040, -0.037497, 0.981826,
		-0.885533, 0.426550, 0.184084,
		-0.425700, -0.903687, 0.046150,
		29.925020, 39.462074, 17.600866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787975, 40.079132, 18.138559>,  <30.223011, 40.094654, 17.568562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787975, 40.079132, 18.138559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858007, 39.689743, 18.079651>,  <29.900026, 39.456108, 18.044306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858007, 39.689743, 18.079651>,  <29.787975, 40.079132, 18.138559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858007, 39.689743, 18.079651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247871, -0.101184, 0.963495,
		-0.952842, -0.205194, 0.223581,
		0.175080, -0.973477, -0.147274,
		29.910532, 39.397701, 18.035469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512360, 39.849102, 18.746014>,  <29.787975, 40.079132, 18.138559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512360, 39.849102, 18.746014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745966, 39.553780, 18.611061>,  <29.886129, 39.376587, 18.530090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745966, 39.553780, 18.611061>,  <29.512360, 39.849102, 18.746014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745966, 39.553780, 18.611061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261203, -0.222596, 0.939268,
		-0.768568, -0.636674, 0.062848,
		0.584018, -0.738307, -0.337381,
		29.921171, 39.332287, 18.509848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202568, 39.257019, 19.186987>,  <29.512360, 39.849102, 18.746014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202568, 39.257019, 19.186987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564796, 39.172512, 19.039850>,  <29.782133, 39.121807, 18.951569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564796, 39.172512, 19.039850>,  <29.202568, 39.257019, 19.186987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564796, 39.172512, 19.039850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292651, -0.316587, 0.902290,
		-0.307072, -0.924739, -0.224867,
		0.905573, -0.211261, -0.367841,
		29.836468, 39.109131, 18.929497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421614, 38.526394, 19.431372>,  <29.202568, 39.257019, 19.186987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421614, 38.526394, 19.431372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774303, 38.685371, 19.329704>,  <29.985916, 38.780758, 19.268703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774303, 38.685371, 19.329704>,  <29.421614, 38.526394, 19.431372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774303, 38.685371, 19.329704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415081, -0.397506, 0.818350,
		0.224219, -0.827057, -0.515463,
		0.881722, 0.397448, -0.254168,
		30.038820, 38.804607, 19.253454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960922, 37.922695, 19.533304>,  <29.421614, 38.526394, 19.431372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960922, 37.922695, 19.533304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173122, 38.259563, 19.571901>,  <30.300444, 38.461685, 19.595060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173122, 38.259563, 19.571901>,  <29.960922, 37.922695, 19.533304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173122, 38.259563, 19.571901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385123, -0.340858, 0.857610,
		0.755148, -0.417802, -0.505167,
		0.530501, 0.842174, 0.096493,
		30.332273, 38.512215, 19.600849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734114, 37.698380, 19.676611>,  <29.960922, 37.922695, 19.533304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734114, 37.698380, 19.676611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689692, 38.076927, 19.797970>,  <30.663038, 38.304054, 19.870785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689692, 38.076927, 19.797970>,  <30.734114, 37.698380, 19.676611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689692, 38.076927, 19.797970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330451, -0.252750, 0.909351,
		0.937267, 0.201246, -0.284660,
		-0.111056, 0.946370, 0.303396,
		30.656374, 38.360840, 19.888988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197330, 37.820923, 20.414818>,  <30.734114, 37.698380, 19.676611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197330, 37.820923, 20.414818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926672, 38.115402, 20.419960>,  <30.764277, 38.292088, 20.423046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926672, 38.115402, 20.419960>,  <31.197330, 37.820923, 20.414818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926672, 38.115402, 20.419960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033617, 0.013448, 0.999344,
		0.735538, 0.676637, -0.033848,
		-0.676649, 0.736194, 0.012855,
		30.723677, 38.336262, 20.423817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.399693, 39.126801, 23.926006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.042458, 39.306736, 23.928457>,  <34.828117, 39.414700, 23.929928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.042458, 39.306736, 23.928457>,  <35.399693, 39.126801, 23.926006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042458, 39.306736, 23.928457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010132, 0.006493, 0.999928,
		0.449768, 0.893085, -0.010356,
		-0.893088, 0.449840, 0.006128,
		34.774532, 39.441689, 23.930296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435928, 39.771870, 24.298199>,  <35.399693, 39.126801, 23.926006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435928, 39.771870, 24.298199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.055775, 39.655205, 24.341454>,  <34.827682, 39.585205, 24.367407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.055775, 39.655205, 24.341454>,  <35.435928, 39.771870, 24.298199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055775, 39.655205, 24.341454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094179, 0.061522, 0.993652,
		-0.296466, 0.954540, -0.031001,
		-0.950388, -0.291665, 0.108137,
		34.770657, 39.567707, 24.373894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096348, 40.197258, 24.764050>,  <35.435928, 39.771870, 24.298199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096348, 40.197258, 24.764050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.886414, 39.856869, 24.771944>,  <34.760452, 39.652634, 24.776682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.886414, 39.856869, 24.771944>,  <35.096348, 40.197258, 24.764050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886414, 39.856869, 24.771944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015279, 0.013766, 0.999788,
		-0.851068, 0.525024, 0.005778,
		-0.524833, -0.850976, 0.019737,
		34.728962, 39.601574, 24.777864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597870, 40.377594, 25.244680>,  <35.096348, 40.197258, 24.764050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597870, 40.377594, 25.244680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606010, 39.977852, 25.232872>,  <34.610893, 39.738007, 25.225786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606010, 39.977852, 25.232872>,  <34.597870, 40.377594, 25.244680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606010, 39.977852, 25.232872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103575, -0.031475, 0.994124,
		-0.994414, -0.017171, -0.104148,
		0.020348, -0.999357, -0.029521,
		34.612114, 39.678043, 25.224016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008713, 40.120022, 25.574469>,  <34.597870, 40.377594, 25.244680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008713, 40.120022, 25.574469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.246937, 39.798790, 25.582197>,  <34.389870, 39.606049, 25.586834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.246937, 39.798790, 25.582197>,  <34.008713, 40.120022, 25.574469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246937, 39.798790, 25.582197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238620, -0.153890, 0.958842,
		-0.767055, -0.575654, -0.283282,
		0.595556, -0.803082, 0.019320,
		34.425602, 39.557865, 25.587994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669960, 39.690609, 25.801264>,  <34.008713, 40.120022, 25.574469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669960, 39.690609, 25.801264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.042717, 39.570335, 25.882427>,  <34.266369, 39.498173, 25.931126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.042717, 39.570335, 25.882427>,  <33.669960, 39.690609, 25.801264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042717, 39.570335, 25.882427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250352, -0.128335, 0.959611,
		-0.262497, -0.945051, -0.194870,
		0.931890, -0.300682, 0.202908,
		34.322285, 39.480129, 25.943300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554878, 39.143112, 26.184855>,  <33.669960, 39.690609, 25.801264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554878, 39.143112, 26.184855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928677, 39.266407, 26.256069>,  <34.152958, 39.340385, 26.298798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928677, 39.266407, 26.256069>,  <33.554878, 39.143112, 26.184855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928677, 39.266407, 26.256069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101902, -0.247565, 0.963498,
		0.341065, -0.918531, -0.199939,
		0.934500, 0.308241, 0.178036,
		34.209026, 39.358879, 26.309481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730370, 38.648327, 26.691269>,  <33.554878, 39.143112, 26.184855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730370, 38.648327, 26.691269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988953, 38.953503, 26.693047>,  <34.144104, 39.136608, 26.694113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988953, 38.953503, 26.693047>,  <33.730370, 38.648327, 26.691269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988953, 38.953503, 26.693047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157718, -0.139337, 0.977604,
		0.746468, -0.631281, -0.210404,
		0.646460, 0.762935, 0.004446,
		34.182892, 39.182384, 26.694380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077572, 38.517124, 27.293968>,  <33.730370, 38.648327, 26.691269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077572, 38.517124, 27.293968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.248207, 38.877743, 27.265005>,  <34.350590, 39.094112, 27.247627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.248207, 38.877743, 27.265005>,  <34.077572, 38.517124, 27.293968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248207, 38.877743, 27.265005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037862, 0.097785, 0.994487,
		0.903653, -0.421495, 0.075848,
		0.426589, 0.901543, -0.072405,
		34.376183, 39.148205, 27.243284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609406, 38.508968, 27.741179>,  <34.077572, 38.517124, 27.293968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609406, 38.508968, 27.741179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505840, 38.892899, 27.697926>,  <34.443703, 39.123257, 27.671974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505840, 38.892899, 27.697926>,  <34.609406, 38.508968, 27.741179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505840, 38.892899, 27.697926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014100, 0.108184, 0.994031,
		0.965797, 0.258893, -0.014476,
		-0.258914, 0.959828, -0.108135,
		34.428165, 39.180847, 27.665485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935055, 38.795216, 28.301453>,  <34.609406, 38.508968, 27.741179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935055, 38.795216, 28.301453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.678471, 39.073738, 28.172655>,  <34.524521, 39.240852, 28.095377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.678471, 39.073738, 28.172655>,  <34.935055, 38.795216, 28.301453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678471, 39.073738, 28.172655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224721, 0.230764, 0.946704,
		0.733503, 0.679634, 0.008448,
		-0.641463, 0.696308, -0.321994,
		34.486031, 39.282631, 28.076057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095348, 39.429459, 28.643311>,  <34.935055, 38.795216, 28.301453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095348, 39.429459, 28.643311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718315, 39.499119, 28.529320>,  <34.492096, 39.540916, 28.460926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718315, 39.499119, 28.529320>,  <35.095348, 39.429459, 28.643311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718315, 39.499119, 28.529320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267716, 0.116141, 0.956472,
		0.199668, 0.977846, -0.062850,
		-0.942582, 0.174151, -0.284975,
		34.435539, 39.551365, 28.443827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880821, 40.019676, 28.988998>,  <35.095348, 39.429459, 28.643311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880821, 40.019676, 28.988998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558514, 39.802391, 28.894636>,  <34.365128, 39.672020, 28.838018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558514, 39.802391, 28.894636>,  <34.880821, 40.019676, 28.988998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558514, 39.802391, 28.894636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267418, -0.021682, 0.963337,
		-0.528410, 0.839316, -0.127794,
		-0.805773, -0.543211, -0.235905,
		34.316780, 39.639427, 28.823864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292374, 40.271748, 29.328949>,  <34.880821, 40.019676, 28.988998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292374, 40.271748, 29.328949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.193680, 39.886288, 29.287952>,  <34.134464, 39.655014, 29.263353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.193680, 39.886288, 29.287952>,  <34.292374, 40.271748, 29.328949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193680, 39.886288, 29.287952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219671, -0.047392, 0.974422,
		-0.943856, 0.262941, -0.199992,
		-0.246738, -0.963647, -0.102492,
		34.119659, 39.597195, 29.257204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702396, 40.819355, 29.292721>,  <34.292374, 40.271748, 29.328949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702396, 40.819355, 29.292721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973171, 41.113613, 29.302383>,  <35.135635, 41.290169, 29.308180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.973171, 41.113613, 29.302383>,  <34.702396, 40.819355, 29.292721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973171, 41.113613, 29.302383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213676, 0.227817, -0.949969,
		-0.704340, 0.637911, 0.311408,
		0.676940, 0.735642, 0.024154,
		35.176254, 41.334305, 29.309629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211830, 41.391144, 29.153387>,  <34.702396, 40.819355, 29.292721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211830, 41.391144, 29.153387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.597870, 41.452454, 29.068457>,  <34.829494, 41.489239, 29.017498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.597870, 41.452454, 29.068457>,  <34.211830, 41.391144, 29.153387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597870, 41.452454, 29.068457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248684, 0.282424, -0.926495,
		-0.082040, 0.946966, 0.310684,
		0.965104, 0.153272, -0.212326,
		34.887402, 41.498436, 29.004759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144440, 42.016972, 28.904667>,  <34.211830, 41.391144, 29.153387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144440, 42.016972, 28.904667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.495113, 41.878063, 28.771507>,  <34.705517, 41.794716, 28.691612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.495113, 41.878063, 28.771507>,  <34.144440, 42.016972, 28.904667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495113, 41.878063, 28.771507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188197, 0.389267, -0.901695,
		0.442720, 0.853155, 0.275909,
		0.876687, -0.347273, -0.332897,
		34.758118, 41.773880, 28.671638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335754, 42.596031, 28.570808>,  <34.144440, 42.016972, 28.904667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335754, 42.596031, 28.570808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562950, 42.304092, 28.418640>,  <34.699268, 42.128929, 28.327339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562950, 42.304092, 28.418640>,  <34.335754, 42.596031, 28.570808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562950, 42.304092, 28.418640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007675, 0.466891, -0.884282,
		0.823002, 0.499340, 0.270789,
		0.567986, -0.729844, -0.380419,
		34.733345, 42.085140, 28.304514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871105, 42.925270, 28.254480>,  <34.335754, 42.596031, 28.570808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871105, 42.925270, 28.254480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 42.566399, 28.080112>,  <34.825661, 42.351074, 27.975492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 42.566399, 28.080112>,  <34.871105, 42.925270, 28.254480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842701, 42.566399, 28.080112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032732, 0.434691, -0.899985,
		0.996939, -0.078173, -0.001500,
		-0.071007, -0.897181, -0.435918,
		34.821400, 42.297245, 27.949337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242157, 42.982407, 27.670031>,  <34.871105, 42.925270, 28.254480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242157, 42.982407, 27.670031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079006, 42.627514, 27.583813>,  <34.981117, 42.414577, 27.532082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079006, 42.627514, 27.583813>,  <35.242157, 42.982407, 27.670031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079006, 42.627514, 27.583813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030776, 0.222582, -0.974428,
		0.912519, -0.404078, -0.063480,
		-0.407874, -0.887231, -0.215546,
		34.956642, 42.361343, 27.519148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645554, 42.792351, 27.148491>,  <35.242157, 42.982407, 27.670031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645554, 42.792351, 27.148491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303776, 42.585194, 27.131964>,  <35.098709, 42.460899, 27.122047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303776, 42.585194, 27.131964>,  <35.645554, 42.792351, 27.148491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303776, 42.585194, 27.131964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110960, 0.259600, -0.959321,
		0.507557, -0.815101, -0.279279,
		-0.854444, -0.517898, -0.041318,
		35.047443, 42.429825, 27.119568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622234, 42.555309, 26.462475>,  <35.645554, 42.792351, 27.148491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622234, 42.555309, 26.462475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240437, 42.513588, 26.574228>,  <35.011356, 42.488556, 26.641281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240437, 42.513588, 26.574228>,  <35.622234, 42.555309, 26.462475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240437, 42.513588, 26.574228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278234, -0.025706, -0.960169,
		0.107328, -0.994214, -0.004484,
		-0.954498, -0.104301, 0.279383,
		34.954086, 42.482300, 26.658043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367222, 41.993259, 26.113810>,  <35.622234, 42.555309, 26.462475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367222, 41.993259, 26.113810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027264, 42.179852, 26.211843>,  <34.823288, 42.291809, 26.270664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027264, 42.179852, 26.211843>,  <35.367222, 41.993259, 26.113810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027264, 42.179852, 26.211843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269617, 0.014649, -0.962856,
		-0.452748, -0.884408, 0.113322,
		-0.849897, 0.466485, 0.245083,
		34.772293, 42.319798, 26.285368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827621, 41.604580, 25.720425>,  <35.367222, 41.993259, 26.113810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827621, 41.604580, 25.720425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657284, 41.953354, 25.817087>,  <34.555080, 42.162617, 25.875084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657284, 41.953354, 25.817087>,  <34.827621, 41.604580, 25.720425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657284, 41.953354, 25.817087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469723, 0.015228, -0.882683,
		-0.773318, -0.489393, 0.403081,
		-0.425840, 0.871930, 0.241655,
		34.529533, 42.214931, 25.889584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071777, 41.556698, 25.476805>,  <34.827621, 41.604580, 25.720425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071777, 41.556698, 25.476805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194344, 41.935432, 25.516016>,  <34.267883, 42.162674, 25.539543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194344, 41.935432, 25.516016>,  <34.071777, 41.556698, 25.476805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194344, 41.935432, 25.516016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424586, 0.228117, -0.876179,
		-0.851961, 0.226851, 0.471912,
		0.306413, 0.946837, 0.098029,
		34.286266, 42.219482, 25.545425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496681, 41.934277, 25.253868>,  <34.071777, 41.556698, 25.476805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496681, 41.934277, 25.253868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806866, 42.183125, 25.210726>,  <33.992977, 42.332432, 25.184841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806866, 42.183125, 25.210726>,  <33.496681, 41.934277, 25.253868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806866, 42.183125, 25.210726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293579, 0.204029, -0.933907,
		-0.558996, 0.755870, 0.340857,
		0.775458, 0.622119, -0.107857,
		34.039501, 42.369759, 25.178370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207268, 42.608604, 25.049690>,  <33.496681, 41.934277, 25.253868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207268, 42.608604, 25.049690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583424, 42.587067, 24.915361>,  <33.809116, 42.574142, 24.834764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583424, 42.587067, 24.915361>,  <33.207268, 42.608604, 25.049690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583424, 42.587067, 24.915361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328859, 0.107928, -0.938192,
		0.086761, 0.992700, 0.083786,
		0.940385, -0.053844, -0.335822,
		33.865540, 42.570915, 24.814615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223701, 43.134491, 24.523809>,  <33.207268, 42.608604, 25.049690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223701, 43.134491, 24.523809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532791, 42.892544, 24.446836>,  <33.718246, 42.747375, 24.400654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532791, 42.892544, 24.446836>,  <33.223701, 43.134491, 24.523809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532791, 42.892544, 24.446836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250472, -0.012008, -0.968049,
		0.583233, 0.796234, -0.160782,
		0.772724, -0.604870, -0.192431,
		33.764606, 42.711082, 24.389107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351280, 43.879112, 24.549618>,  <33.223701, 43.134491, 24.523809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351280, 43.879112, 24.549618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.002609, 44.075127, 24.552254>,  <32.793407, 44.192738, 24.553835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.002609, 44.075127, 24.552254>,  <33.351280, 43.879112, 24.549618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002609, 44.075127, 24.552254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174918, 0.298530, 0.938234,
		0.457803, 0.818989, -0.345938,
		-0.871676, 0.490038, 0.006588,
		32.741108, 44.222137, 24.554230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531609, 44.370960, 24.896622>,  <33.351280, 43.879112, 24.549618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531609, 44.370960, 24.896622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.131905, 44.366009, 24.911224>,  <32.892082, 44.363037, 24.919987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.131905, 44.366009, 24.911224>,  <33.531609, 44.370960, 24.896622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131905, 44.366009, 24.911224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030647, 0.319383, 0.947130,
		-0.023388, 0.947545, -0.318766,
		-0.999257, -0.012382, 0.036509,
		32.832127, 44.362293, 24.922176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359421, 44.994545, 25.163187>,  <33.531609, 44.370960, 24.896622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359421, 44.994545, 25.163187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.036716, 44.767906, 25.230236>,  <32.843094, 44.631924, 25.270466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.036716, 44.767906, 25.230236>,  <33.359421, 44.994545, 25.163187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036716, 44.767906, 25.230236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015886, 0.262785, 0.964724,
		-0.590662, 0.780966, -0.203004,
		-0.806763, -0.566600, 0.167623,
		32.794689, 44.597927, 25.280523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951897, 45.457458, 25.575197>,  <33.359421, 44.994545, 25.163187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951897, 45.457458, 25.575197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.782528, 45.099155, 25.629364>,  <32.680908, 44.884174, 25.661863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.782528, 45.099155, 25.629364>,  <32.951897, 45.457458, 25.575197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782528, 45.099155, 25.629364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284052, 0.273209, 0.919060,
		-0.860249, 0.350686, -0.370124,
		-0.423423, -0.895754, 0.135415,
		32.655502, 44.830429, 25.669989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363911, 45.481705, 25.931351>,  <32.951897, 45.457458, 25.575197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363911, 45.481705, 25.931351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.444183, 45.097069, 26.006262>,  <32.492348, 44.866287, 26.051208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.444183, 45.097069, 26.006262>,  <32.363911, 45.481705, 25.931351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444183, 45.097069, 26.006262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189171, 0.149529, 0.970492,
		-0.961218, -0.230191, -0.151896,
		0.200686, -0.961589, 0.187276,
		32.504391, 44.808594, 26.062445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828629, 45.068218, 26.206142>,  <32.363911, 45.481705, 25.931351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828629, 45.068218, 26.206142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.163769, 44.885815, 26.326181>,  <32.364853, 44.776371, 26.398205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.163769, 44.885815, 26.326181>,  <31.828629, 45.068218, 26.206142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163769, 44.885815, 26.326181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351751, -0.030583, 0.935594,
		-0.417465, -0.889448, -0.186027,
		0.837851, -0.456012, 0.300097,
		32.415123, 44.749012, 26.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616356, 44.675446, 26.774019>,  <31.828629, 45.068218, 26.206142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616356, 44.675446, 26.774019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.014305, 44.650715, 26.806021>,  <32.253075, 44.635876, 26.825222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.014305, 44.650715, 26.806021>,  <31.616356, 44.675446, 26.774019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014305, 44.650715, 26.806021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084005, -0.065102, 0.994336,
		-0.056258, -0.995962, -0.069962,
		0.994876, -0.061816, 0.080003,
		32.312767, 44.632168, 26.830021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601480, 44.119724, 27.142096>,  <31.616356, 44.675446, 26.774019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601480, 44.119724, 27.142096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.961250, 44.287815, 27.190159>,  <32.177113, 44.388672, 27.218996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.961250, 44.287815, 27.190159>,  <31.601480, 44.119724, 27.142096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961250, 44.287815, 27.190159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067242, -0.138599, 0.988063,
		0.431869, -0.896769, -0.096403,
		0.899426, 0.420232, 0.120157,
		32.231079, 44.413883, 27.226206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976671, 43.768059, 27.577435>,  <31.601480, 44.119724, 27.142096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976671, 43.768059, 27.577435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.209141, 44.093288, 27.590929>,  <32.348621, 44.288425, 27.599026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.209141, 44.093288, 27.590929>,  <31.976671, 43.768059, 27.577435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209141, 44.093288, 27.590929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265370, -0.228545, 0.936667,
		0.769294, -0.535416, -0.348592,
		0.581176, 0.813078, 0.033735,
		32.383495, 44.337212, 27.601049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544746, 43.490959, 28.008257>,  <31.976671, 43.768059, 27.577435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544746, 43.490959, 28.008257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537933, 43.890884, 28.012066>,  <32.533844, 44.130840, 28.014351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537933, 43.890884, 28.012066>,  <32.544746, 43.490959, 28.008257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537933, 43.890884, 28.012066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167959, -0.006525, 0.985772,
		0.985647, 0.018388, -0.167816,
		-0.017032, 0.999810, 0.009520,
		32.532825, 44.190826, 28.014921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181080, 43.751644, 28.361502>,  <32.544746, 43.490959, 28.008257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181080, 43.751644, 28.361502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889587, 44.018139, 28.424845>,  <32.714691, 44.178036, 28.462851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889587, 44.018139, 28.424845>,  <33.181080, 43.751644, 28.361502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889587, 44.018139, 28.424845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149101, -0.071335, 0.986245,
		0.668368, 0.742322, -0.047353,
		-0.728733, 0.666236, 0.158359,
		32.670967, 44.218010, 28.472353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462688, 44.349957, 28.650562>,  <33.181080, 43.751644, 28.361502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462688, 44.349957, 28.650562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075745, 44.329391, 28.749821>,  <32.843578, 44.317051, 28.809376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075745, 44.329391, 28.749821>,  <33.462688, 44.349957, 28.650562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075745, 44.329391, 28.749821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250264, -0.039846, 0.967357,
		-0.039846, 0.997882, 0.051412,
		-0.967357, -0.051412, 0.248147,
		32.785538, 44.313969, 28.824265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.878883, 44.914963, 20.867044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503269, 44.789265, 20.922836>,  <32.277901, 44.713848, 20.956312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503269, 44.789265, 20.922836>,  <32.878883, 44.914963, 20.867044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503269, 44.789265, 20.922836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110836, 0.107340, 0.988025,
		-0.325452, 0.943255, -0.065967,
		-0.939040, -0.314244, 0.139480,
		32.221558, 44.694992, 20.964680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680862, 45.173531, 21.445356>,  <32.878883, 44.914963, 20.867044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680862, 45.173531, 21.445356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401962, 44.887764, 21.421825>,  <32.234623, 44.716305, 21.407707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401962, 44.887764, 21.421825>,  <32.680862, 45.173531, 21.445356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401962, 44.887764, 21.421825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076116, -0.155387, 0.984917,
		-0.712778, 0.682253, 0.162721,
		-0.697247, -0.714413, -0.058826,
		32.192787, 44.673439, 21.404177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135307, 45.284676, 21.948652>,  <32.680862, 45.173531, 21.445356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135307, 45.284676, 21.948652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106018, 44.895885, 21.859297>,  <32.088444, 44.662613, 21.805683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106018, 44.895885, 21.859297>,  <32.135307, 45.284676, 21.948652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106018, 44.895885, 21.859297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135109, -0.231595, 0.963385,
		-0.988121, 0.040362, 0.148281,
		-0.073225, -0.971975, -0.223391,
		32.084049, 44.604294, 21.792280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650862, 45.064545, 22.412888>,  <32.135307, 45.284676, 21.948652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650862, 45.064545, 22.412888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844463, 44.744995, 22.270039>,  <31.960625, 44.553265, 22.184330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844463, 44.744995, 22.270039>,  <31.650862, 45.064545, 22.412888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844463, 44.744995, 22.270039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113885, -0.347133, 0.930875,
		-0.867622, -0.491220, -0.077035,
		0.484006, -0.798875, -0.357123,
		31.989664, 44.505333, 22.162901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213243, 44.497505, 22.544346>,  <31.650862, 45.064545, 22.412888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213243, 44.497505, 22.544346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603384, 44.411934, 22.522715>,  <31.837469, 44.360592, 22.509737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603384, 44.411934, 22.522715>,  <31.213243, 44.497505, 22.544346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603384, 44.411934, 22.522715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014286, -0.305776, 0.951996,
		-0.220196, -0.927758, -0.301296,
		0.975351, -0.213930, -0.054077,
		31.895988, 44.347755, 22.506491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279423, 43.922016, 22.993690>,  <31.213243, 44.497505, 22.544346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279423, 43.922016, 22.993690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658638, 44.044704, 22.959877>,  <31.886168, 44.118317, 22.939589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658638, 44.044704, 22.959877>,  <31.279423, 43.922016, 22.993690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658638, 44.044704, 22.959877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103582, -0.046331, 0.993541,
		0.300827, -0.950670, -0.075695,
		0.948037, 0.306725, -0.084535,
		31.943048, 44.136723, 22.934517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560345, 43.639988, 23.547388>,  <31.279423, 43.922016, 22.993690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560345, 43.639988, 23.547388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841131, 43.909065, 23.453810>,  <32.009602, 44.070511, 23.397663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841131, 43.909065, 23.453810>,  <31.560345, 43.639988, 23.547388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841131, 43.909065, 23.453810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285589, 0.035052, 0.957711,
		0.652444, -0.739093, -0.167507,
		0.701966, 0.672691, -0.233946,
		32.051720, 44.110874, 23.383625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120621, 43.403061, 23.909466>,  <31.560345, 43.639988, 23.547388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120621, 43.403061, 23.909466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179184, 43.794933, 23.854647>,  <32.214321, 44.030056, 23.821756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179184, 43.794933, 23.854647>,  <32.120621, 43.403061, 23.909466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179184, 43.794933, 23.854647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415167, 0.064895, 0.907428,
		0.897887, -0.189750, -0.397232,
		0.146406, 0.979685, -0.137046,
		32.223106, 44.088840, 23.813532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906372, 43.527702, 23.930143>,  <32.120621, 43.403061, 23.909466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906372, 43.527702, 23.930143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690647, 43.843964, 24.046083>,  <32.561214, 44.033722, 24.115648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690647, 43.843964, 24.046083>,  <32.906372, 43.527702, 23.930143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690647, 43.843964, 24.046083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449054, -0.021162, 0.893254,
		0.712388, 0.611899, -0.343632,
		-0.539309, 0.790653, 0.289851,
		32.528854, 44.081158, 24.133039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698994, 43.398476, 23.697601>,  <32.906372, 43.527702, 23.930143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698994, 43.398476, 23.697601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816647, 43.025414, 23.781164>,  <33.887238, 42.801575, 23.831301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816647, 43.025414, 23.781164>,  <33.698994, 43.398476, 23.697601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816647, 43.025414, 23.781164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109628, -0.184210, -0.976754,
		0.949456, 0.310200, 0.048062,
		0.294135, -0.932654, 0.208906,
		33.904888, 42.745617, 23.843836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084122, 43.280628, 23.168295>,  <33.698994, 43.398476, 23.697601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084122, 43.280628, 23.168295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026035, 42.913536, 23.316181>,  <33.991184, 42.693283, 23.404913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026035, 42.913536, 23.316181>,  <34.084122, 43.280628, 23.168295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026035, 42.913536, 23.316181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142262, -0.389160, -0.910119,
		0.979119, -0.079569, 0.187071,
		-0.145217, -0.917727, 0.369714,
		33.982471, 42.638218, 23.427095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669441, 42.920387, 23.050859>,  <34.084122, 43.280628, 23.168295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669441, 42.920387, 23.050859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364548, 42.664509, 23.090433>,  <34.181610, 42.510983, 23.114178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364548, 42.664509, 23.090433>,  <34.669441, 42.920387, 23.050859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364548, 42.664509, 23.090433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201682, -0.379933, -0.902760,
		0.615083, -0.668159, 0.418613,
		-0.762232, -0.639699, 0.098935,
		34.135880, 42.472599, 23.120113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977753, 42.331718, 22.783861>,  <34.669441, 42.920387, 23.050859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977753, 42.331718, 22.783861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587116, 42.247517, 22.766146>,  <34.352734, 42.196995, 22.755516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587116, 42.247517, 22.766146>,  <34.977753, 42.331718, 22.783861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587116, 42.247517, 22.766146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122963, -0.377339, -0.917875,
		0.176509, -0.901832, 0.394390,
		-0.976588, -0.210509, -0.044288,
		34.294140, 42.184364, 22.752859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959118, 41.708233, 22.394381>,  <34.977753, 42.331718, 22.783861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959118, 41.708233, 22.394381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580830, 41.837406, 22.379774>,  <34.353859, 41.914909, 22.371010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580830, 41.837406, 22.379774>,  <34.959118, 41.708233, 22.394381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580830, 41.837406, 22.379774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040537, -0.228689, -0.972655,
		-0.322458, -0.918375, 0.229365,
		-0.945716, 0.322938, -0.036515,
		34.297115, 41.934288, 22.368820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481632, 41.155994, 22.140160>,  <34.959118, 41.708233, 22.394381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481632, 41.155994, 22.140160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342442, 41.518612, 22.044590>,  <34.258926, 41.736183, 21.987247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342442, 41.518612, 22.044590>,  <34.481632, 41.155994, 22.140160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342442, 41.518612, 22.044590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059179, -0.275586, -0.959453,
		-0.935632, -0.319731, 0.149546,
		-0.347980, 0.906545, -0.238926,
		34.238049, 41.790577, 21.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139359, 40.998802, 21.527266>,  <34.481632, 41.155994, 22.140160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139359, 40.998802, 21.527266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101070, 41.396378, 21.505650>,  <34.078098, 41.634922, 21.492680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101070, 41.396378, 21.505650>,  <34.139359, 40.998802, 21.527266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101070, 41.396378, 21.505650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003842, -0.054657, -0.998498,
		-0.995401, -0.095370, 0.009050,
		-0.095721, 0.993940, -0.054040,
		34.072353, 41.694561, 21.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586323, 41.226704, 21.145269>,  <34.139359, 40.998802, 21.527266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586323, 41.226704, 21.145269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819839, 41.550148, 21.116058>,  <33.959949, 41.744217, 21.098532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819839, 41.550148, 21.116058>,  <33.586323, 41.226704, 21.145269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819839, 41.550148, 21.116058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190650, 0.049100, -0.980429,
		-0.789203, 0.586288, 0.182826,
		0.583791, 0.808613, -0.073026,
		33.994976, 41.792732, 21.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171490, 41.680618, 20.716894>,  <33.586323, 41.226704, 21.145269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171490, 41.680618, 20.716894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542603, 41.827705, 20.691586>,  <33.765270, 41.915958, 20.676401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542603, 41.827705, 20.691586>,  <33.171490, 41.680618, 20.716894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542603, 41.827705, 20.691586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120844, 0.135705, -0.983352,
		-0.353010, 0.919983, 0.170341,
		0.927783, 0.367718, -0.063269,
		33.820938, 41.938019, 20.672606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127182, 42.328606, 20.214888>,  <33.171490, 41.680618, 20.716894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127182, 42.328606, 20.214888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513588, 42.227753, 20.237654>,  <33.745434, 42.167240, 20.251314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513588, 42.227753, 20.237654>,  <33.127182, 42.328606, 20.214888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513588, 42.227753, 20.237654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073338, 0.056218, -0.995721,
		0.247855, 0.966058, 0.072799,
		0.966017, -0.252133, 0.056915,
		33.803394, 42.152111, 20.254728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473629, 42.771145, 19.741083>,  <33.127182, 42.328606, 20.214888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473629, 42.771145, 19.741083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713459, 42.453011, 19.776737>,  <33.857357, 42.262131, 19.798130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713459, 42.453011, 19.776737>,  <33.473629, 42.771145, 19.741083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713459, 42.453011, 19.776737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167885, 0.016097, -0.985675,
		0.782510, 0.605952, 0.143177,
		0.599577, -0.795338, 0.089134,
		33.893333, 42.214409, 19.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186729, 42.998085, 19.436291>,  <33.473629, 42.771145, 19.741083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186729, 42.998085, 19.436291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127911, 42.603149, 19.460056>,  <34.092617, 42.366188, 19.474316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127911, 42.603149, 19.460056>,  <34.186729, 42.998085, 19.436291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127911, 42.603149, 19.460056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227630, -0.092235, -0.969370,
		0.962580, -0.129023, 0.238312,
		-0.147052, -0.987343, 0.059414,
		34.083794, 42.306946, 19.477880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786621, 42.722820, 19.056314>,  <34.186729, 42.998085, 19.436291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786621, 42.722820, 19.056314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515903, 42.428619, 19.068867>,  <34.353474, 42.252098, 19.076399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515903, 42.428619, 19.068867>,  <34.786621, 42.722820, 19.056314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515903, 42.428619, 19.068867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189525, -0.215269, -0.957987,
		0.711359, -0.642412, 0.285089,
		-0.676793, -0.735505, 0.031381,
		34.312866, 42.207970, 19.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998257, 42.379189, 18.497772>,  <34.786621, 42.722820, 19.056314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998257, 42.379189, 18.497772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653847, 42.203495, 18.600306>,  <34.447201, 42.098080, 18.661825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653847, 42.203495, 18.600306>,  <34.998257, 42.379189, 18.497772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653847, 42.203495, 18.600306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090310, -0.363971, -0.927022,
		0.500476, -0.821341, 0.273722,
		-0.861027, -0.439232, 0.256333,
		34.395538, 42.071724, 18.677206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.308477, 39.459415, 19.483103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.577620, 39.753357, 19.449030>,  <27.739105, 39.929722, 19.428587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.577620, 39.753357, 19.449030>,  <27.308477, 39.459415, 19.483103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577620, 39.753357, 19.449030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377980, -0.242521, 0.893485,
		0.635920, -0.633385, -0.440941,
		0.672857, 0.734852, -0.085183,
		27.779476, 39.973812, 19.423475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669836, 39.322102, 20.011179>,  <27.308477, 39.459415, 19.483103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669836, 39.322102, 20.011179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.858912, 39.658337, 19.905373>,  <27.972357, 39.860077, 19.841888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.858912, 39.658337, 19.905373>,  <27.669836, 39.322102, 20.011179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858912, 39.658337, 19.905373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412263, 0.054354, 0.909442,
		0.778847, -0.538935, -0.320852,
		0.472691, 0.840591, -0.264517,
		28.000719, 39.910515, 19.826017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445459, 39.269260, 20.205765>,  <27.669836, 39.322102, 20.011179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445459, 39.269260, 20.205765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.314251, 39.646526, 20.184429>,  <28.235527, 39.872887, 20.171627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.314251, 39.646526, 20.184429>,  <28.445459, 39.269260, 20.205765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314251, 39.646526, 20.184429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398891, 0.189469, 0.897211,
		0.856323, 0.273026, -0.438369,
		-0.328019, 0.943164, -0.053339,
		28.215845, 39.929474, 20.168428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038948, 39.649593, 20.343731>,  <28.445459, 39.269260, 20.205765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038948, 39.649593, 20.343731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708841, 39.855747, 20.436087>,  <28.510777, 39.979439, 20.491501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708841, 39.855747, 20.436087>,  <29.038948, 39.649593, 20.343731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708841, 39.855747, 20.436087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325962, 0.100837, 0.939990,
		0.461176, 0.851004, -0.251214,
		-0.825267, 0.515387, 0.230891,
		28.461262, 40.010365, 20.505354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239012, 40.253567, 20.623133>,  <29.038948, 39.649593, 20.343731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239012, 40.253567, 20.623133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.861376, 40.203419, 20.745102>,  <28.634794, 40.173328, 20.818283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.861376, 40.203419, 20.745102>,  <29.239012, 40.253567, 20.623133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861376, 40.203419, 20.745102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277360, 0.197964, 0.940150,
		-0.178234, 0.972158, -0.152122,
		-0.944089, -0.125374, 0.304922,
		28.578150, 40.165806, 20.836578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164135, 40.673832, 21.198385>,  <29.239012, 40.253567, 20.623133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164135, 40.673832, 21.198385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.812824, 40.485126, 21.229540>,  <28.602037, 40.371902, 21.248232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.812824, 40.485126, 21.229540>,  <29.164135, 40.673832, 21.198385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812824, 40.485126, 21.229540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082009, 0.309097, 0.947488,
		-0.471067, 0.825770, -0.310162,
		-0.878277, -0.471766, 0.077884,
		28.549341, 40.343597, 21.252905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741997, 41.091412, 21.517052>,  <29.164135, 40.673832, 21.198385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741997, 41.091412, 21.517052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.548376, 40.744450, 21.563185>,  <28.432203, 40.536274, 21.590864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.548376, 40.744450, 21.563185>,  <28.741997, 41.091412, 21.517052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548376, 40.744450, 21.563185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143560, 0.208738, 0.967378,
		-0.863182, 0.451706, -0.225565,
		-0.484054, -0.867404, 0.115332,
		28.403160, 40.484230, 21.597784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127209, 41.320171, 21.840181>,  <28.741997, 41.091412, 21.517052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127209, 41.320171, 21.840181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.191242, 40.931530, 21.909878>,  <28.229662, 40.698345, 21.951696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.191242, 40.931530, 21.909878>,  <28.127209, 41.320171, 21.840181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191242, 40.931530, 21.909878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103198, 0.192026, 0.975949,
		-0.981694, -0.138252, 0.131008,
		0.160084, -0.971603, 0.174243,
		28.239267, 40.640049, 21.962151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765865, 41.212700, 22.419384>,  <28.127209, 41.320171, 21.840181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765865, 41.212700, 22.419384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.035738, 40.917805, 22.405010>,  <28.197660, 40.740868, 22.396385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.035738, 40.917805, 22.405010>,  <27.765865, 41.212700, 22.419384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035738, 40.917805, 22.405010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085279, 0.029500, 0.995920,
		-0.733167, -0.674993, 0.082773,
		0.674681, -0.737234, -0.035934,
		28.238142, 40.696636, 22.394230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469692, 40.712925, 22.824120>,  <27.765865, 41.212700, 22.419384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469692, 40.712925, 22.824120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.864662, 40.650307, 22.815279>,  <28.101645, 40.612736, 22.809975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.864662, 40.650307, 22.815279>,  <27.469692, 40.712925, 22.824120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864662, 40.650307, 22.815279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011638, -0.211383, 0.977334,
		-0.157663, -0.964786, -0.210547,
		0.987424, -0.156540, -0.022099,
		28.160889, 40.603344, 22.808649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525932, 40.419594, 23.456091>,  <27.469692, 40.712925, 22.824120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525932, 40.419594, 23.456091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.906990, 40.445976, 23.337351>,  <28.135624, 40.461807, 23.266108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.906990, 40.445976, 23.337351>,  <27.525932, 40.419594, 23.456091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906990, 40.445976, 23.337351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303880, -0.170219, 0.937381,
		0.011297, -0.983196, -0.182201,
		0.952643, 0.065957, -0.296851,
		28.192783, 40.465763, 23.248295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906429, 39.773205, 23.684357>,  <27.525932, 40.419594, 23.456091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906429, 39.773205, 23.684357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.168333, 40.073673, 23.650820>,  <28.325476, 40.253956, 23.630697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.168333, 40.073673, 23.650820>,  <27.906429, 39.773205, 23.684357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168333, 40.073673, 23.650820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302386, -0.158670, 0.939887,
		0.692712, -0.640755, -0.331034,
		0.654762, 0.751171, -0.083843,
		28.364761, 40.299023, 23.625668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626978, 39.569988, 23.855978>,  <27.906429, 39.773205, 23.684357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626978, 39.569988, 23.855978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.608561, 39.963387, 23.925957>,  <28.597509, 40.199425, 23.967945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.608561, 39.963387, 23.925957>,  <28.626978, 39.569988, 23.855978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608561, 39.963387, 23.925957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266135, -0.156727, 0.951109,
		0.962835, 0.090353, -0.254527,
		-0.046044, 0.983500, 0.174948,
		28.594748, 40.258438, 23.978441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133799, 39.698677, 24.312761>,  <28.626978, 39.569988, 23.855978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133799, 39.698677, 24.312761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.920687, 40.036236, 24.338007>,  <28.792820, 40.238770, 24.353155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.920687, 40.036236, 24.338007>,  <29.133799, 39.698677, 24.312761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920687, 40.036236, 24.338007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096287, -0.013645, 0.995260,
		0.840758, 0.536332, -0.073986,
		-0.532781, 0.843897, 0.063114,
		28.760853, 40.289406, 24.356941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933052, 39.854141, 24.153414>,  <29.133799, 39.698677, 24.312761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933052, 39.854141, 24.153414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.169054, 39.545265, 24.247740>,  <30.310656, 39.359940, 24.304335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.169054, 39.545265, 24.247740>,  <29.933052, 39.854141, 24.153414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169054, 39.545265, 24.247740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055853, -0.252334, -0.966027,
		0.805464, 0.583134, -0.105749,
		0.590007, -0.772193, 0.235815,
		30.346056, 39.313606, 24.318485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537367, 40.009418, 23.850489>,  <29.933052, 39.854141, 24.153414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537367, 40.009418, 23.850489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.521162, 39.611790, 23.890854>,  <30.511440, 39.373215, 23.915073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.521162, 39.611790, 23.890854>,  <30.537367, 40.009418, 23.850489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521162, 39.611790, 23.890854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202677, -0.107071, -0.973375,
		0.978407, -0.018980, 0.205812,
		-0.040511, -0.994070, 0.100913,
		30.509008, 39.313568, 23.921127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168274, 39.739464, 23.528145>,  <30.537367, 40.009418, 23.850489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168274, 39.739464, 23.528145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928816, 39.420410, 23.557558>,  <30.785141, 39.228977, 23.575207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928816, 39.420410, 23.557558>,  <31.168274, 39.739464, 23.528145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928816, 39.420410, 23.557558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239699, -0.265979, -0.933702,
		0.764310, -0.541329, 0.350418,
		-0.598644, -0.797633, 0.073535,
		30.749222, 39.181122, 23.579618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535561, 39.142433, 23.183464>,  <31.168274, 39.739464, 23.528145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535561, 39.142433, 23.183464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147497, 39.045586, 23.178310>,  <30.914658, 38.987476, 23.175219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147497, 39.045586, 23.178310>,  <31.535561, 39.142433, 23.183464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147497, 39.045586, 23.178310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107534, -0.382034, -0.917871,
		0.217311, -0.891868, 0.396670,
		-0.970161, -0.242119, -0.012886,
		30.856449, 38.972950, 23.174444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518005, 38.535694, 22.810297>,  <31.535561, 39.142433, 23.183464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518005, 38.535694, 22.810297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.138521, 38.661850, 22.819054>,  <30.910831, 38.737545, 22.824306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.138521, 38.661850, 22.819054>,  <31.518005, 38.535694, 22.810297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138521, 38.661850, 22.819054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111274, -0.268304, -0.956886,
		-0.295929, -0.910239, 0.289638,
		-0.948706, 0.315399, 0.021887,
		30.853909, 38.756470, 22.825621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192806, 37.966209, 22.391087>,  <31.518005, 38.535694, 22.810297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192806, 37.966209, 22.391087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.929861, 38.264915, 22.431522>,  <30.772095, 38.444138, 22.455784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.929861, 38.264915, 22.431522>,  <31.192806, 37.966209, 22.391087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929861, 38.264915, 22.431522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369522, -0.202515, -0.906885,
		-0.656757, -0.633507, 0.409071,
		-0.657361, 0.746764, 0.101092,
		30.732653, 38.488945, 22.461849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571520, 37.765865, 22.313131>,  <31.192806, 37.966209, 22.391087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571520, 37.765865, 22.313131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.565063, 38.146778, 22.191214>,  <30.561190, 38.375324, 22.118063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.565063, 38.146778, 22.191214>,  <30.571520, 37.765865, 22.313131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565063, 38.146778, 22.191214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330310, -0.292797, -0.897310,
		-0.943734, 0.086193, 0.319275,
		-0.016141, 0.952282, -0.304793,
		30.560221, 38.432461, 22.099775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032333, 37.762169, 21.761930>,  <30.571520, 37.765865, 22.313131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032333, 37.762169, 21.761930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.249269, 38.094238, 21.710279>,  <30.379431, 38.293480, 21.679289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.249269, 38.094238, 21.710279>,  <30.032333, 37.762169, 21.761930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249269, 38.094238, 21.710279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102221, -0.087349, -0.990919,
		-0.833918, 0.550613, 0.037489,
		0.542339, 0.830178, -0.129126,
		30.411972, 38.343292, 21.671541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587004, 38.188206, 21.382471>,  <30.032333, 37.762169, 21.761930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587004, 38.188206, 21.382471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.959421, 38.320324, 21.320423>,  <30.182871, 38.399597, 21.283194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.959421, 38.320324, 21.320423>,  <29.587004, 38.188206, 21.382471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959421, 38.320324, 21.320423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222610, 0.177272, -0.958655,
		-0.289145, 0.927080, 0.238576,
		0.931042, 0.330299, -0.155120,
		30.238733, 38.419415, 21.273888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591839, 38.596874, 20.831051>,  <29.587004, 38.188206, 21.382471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591839, 38.596874, 20.831051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.991753, 38.590099, 20.826294>,  <30.231701, 38.586037, 20.823439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.991753, 38.590099, 20.826294>,  <29.591839, 38.596874, 20.831051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991753, 38.590099, 20.826294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008333, 0.196643, -0.980440,
		0.018942, 0.980329, 0.196460,
		0.999786, -0.016935, -0.011894,
		30.291689, 38.585018, 20.822725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771984, 39.183636, 20.481083>,  <29.591839, 38.596874, 20.831051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771984, 39.183636, 20.481083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.076715, 38.925777, 20.455610>,  <30.259554, 38.771065, 20.440327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.076715, 38.925777, 20.455610>,  <29.771984, 39.183636, 20.481083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076715, 38.925777, 20.455610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121241, 0.238466, -0.963553,
		0.636334, 0.726340, 0.259827,
		0.761827, -0.644643, -0.063682,
		30.305264, 38.732384, 20.436506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363852, 39.581394, 20.211718>,  <29.771984, 39.183636, 20.481083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363852, 39.581394, 20.211718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452223, 39.201218, 20.124210>,  <30.505245, 38.973114, 20.071707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452223, 39.201218, 20.124210>,  <30.363852, 39.581394, 20.211718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452223, 39.201218, 20.124210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044077, 0.233811, -0.971283,
		0.974294, 0.204941, 0.093548,
		0.220928, -0.950438, -0.218768,
		30.518501, 38.916088, 20.058580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984823, 39.628368, 19.696604>,  <30.363852, 39.581394, 20.211718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984823, 39.628368, 19.696604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.780546, 39.287048, 19.654509>,  <30.657980, 39.082256, 19.629251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.780546, 39.287048, 19.654509>,  <30.984823, 39.628368, 19.696604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780546, 39.287048, 19.654509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175624, 0.223358, -0.958785,
		0.841635, -0.471161, -0.263926,
		-0.510692, -0.853299, -0.105238,
		30.627338, 39.031059, 19.622936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272718, 39.239273, 19.064054>,  <30.984823, 39.628368, 19.696604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272718, 39.239273, 19.064054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.906364, 39.088638, 19.119680>,  <30.686552, 38.998257, 19.153057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.906364, 39.088638, 19.119680>,  <31.272718, 39.239273, 19.064054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906364, 39.088638, 19.119680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132653, -0.043052, -0.990227,
		0.378895, -0.925380, -0.010525,
		-0.915883, -0.376588, 0.139066,
		30.631599, 38.975662, 19.161400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883430, 38.815052, 18.825340>,  <31.272718, 39.239273, 19.064054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883430, 38.815052, 18.825340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223408, 38.956364, 18.668983>,  <32.427395, 39.041149, 18.575171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223408, 38.956364, 18.668983>,  <31.883430, 38.815052, 18.825340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223408, 38.956364, 18.668983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388521, 0.080877, 0.917884,
		0.355882, -0.932016, -0.068515,
		0.849941, 0.353277, -0.390890,
		32.478390, 39.062347, 18.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414654, 38.339161, 19.045206>,  <31.883430, 38.815052, 18.825340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414654, 38.339161, 19.045206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579002, 38.693367, 18.958450>,  <32.677612, 38.905891, 18.906397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579002, 38.693367, 18.958450>,  <32.414654, 38.339161, 19.045206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579002, 38.693367, 18.958450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448127, 0.011017, 0.893902,
		0.793957, -0.464473, -0.392298,
		0.410871, 0.885519, -0.216890,
		32.702263, 38.959023, 18.893383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137920, 38.227814, 19.199675>,  <32.414654, 38.339161, 19.045206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137920, 38.227814, 19.199675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.081371, 38.623772, 19.195129>,  <33.047440, 38.861347, 19.192402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.081371, 38.623772, 19.195129>,  <33.137920, 38.227814, 19.199675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081371, 38.623772, 19.195129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645024, 0.100818, 0.757482,
		0.750971, 0.099758, -0.652757,
		-0.141375, 0.989891, -0.011365,
		33.038960, 38.920738, 19.191719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792168, 38.532551, 19.464273>,  <33.137920, 38.227814, 19.199675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792168, 38.532551, 19.464273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.540226, 38.841602, 19.496099>,  <33.389061, 39.027031, 19.515194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.540226, 38.841602, 19.496099>,  <33.792168, 38.532551, 19.464273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540226, 38.841602, 19.496099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476058, 0.303076, 0.825539,
		0.613720, 0.557846, -0.558709,
		-0.629855, 0.772627, 0.079563,
		33.351269, 39.073391, 19.519968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260220, 39.090767, 19.543152>,  <33.792168, 38.532551, 19.464273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260220, 39.090767, 19.543152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901184, 39.158741, 19.705856>,  <33.685760, 39.199524, 19.803478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901184, 39.158741, 19.705856>,  <34.260220, 39.090767, 19.543152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901184, 39.158741, 19.705856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437327, 0.227164, 0.870139,
		0.055463, 0.958916, -0.278216,
		-0.897590, 0.169932, 0.406761,
		33.631908, 39.209721, 19.827885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302795, 39.728256, 19.898563>,  <34.260220, 39.090767, 19.543152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302795, 39.728256, 19.898563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.984779, 39.549885, 20.063030>,  <33.793968, 39.442863, 20.161711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.984779, 39.549885, 20.063030>,  <34.302795, 39.728256, 19.898563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984779, 39.549885, 20.063030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206625, 0.438220, 0.874797,
		-0.570278, 0.780456, -0.256262,
		-0.795040, -0.445927, 0.411169,
		33.746269, 39.416107, 20.186380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269234, 40.051399, 20.670233>,  <34.302795, 39.728256, 19.898563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269234, 40.051399, 20.670233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005463, 39.750690, 20.670029>,  <33.847202, 39.570267, 20.669907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005463, 39.750690, 20.670029>,  <34.269234, 40.051399, 20.670233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005463, 39.750690, 20.670029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099382, -0.087844, 0.991164,
		-0.745171, 0.653549, 0.132639,
		-0.659426, -0.751769, -0.000508,
		33.807636, 39.525158, 20.669876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716522, 40.315090, 21.074127>,  <34.269234, 40.051399, 20.670233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716522, 40.315090, 21.074127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728573, 39.915600, 21.090305>,  <33.735802, 39.675903, 21.100012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728573, 39.915600, 21.090305>,  <33.716522, 40.315090, 21.074127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728573, 39.915600, 21.090305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053536, 0.038792, 0.997812,
		-0.998111, -0.032223, -0.052299,
		0.030124, -0.998728, 0.040444,
		33.737610, 39.615982, 21.102438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252777, 40.155338, 21.751961>,  <33.716522, 40.315090, 21.074127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252777, 40.155338, 21.751961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462528, 39.825420, 21.667347>,  <33.588379, 39.627472, 21.616579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462528, 39.825420, 21.667347>,  <33.252777, 40.155338, 21.751961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462528, 39.825420, 21.667347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170156, -0.141916, 0.975145,
		-0.834310, -0.547340, 0.065925,
		0.524379, -0.824790, -0.211535,
		33.619843, 39.577984, 21.603886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973419, 39.594120, 22.063410>,  <33.252777, 40.155338, 21.751961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973419, 39.594120, 22.063410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.357407, 39.491032, 22.019520>,  <33.587799, 39.429180, 21.993187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.357407, 39.491032, 22.019520>,  <32.973419, 39.594120, 22.063410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357407, 39.491032, 22.019520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061083, -0.189681, 0.979944,
		-0.273363, -0.947418, -0.166345,
		0.959969, -0.257720, -0.109723,
		33.645397, 39.413715, 21.986603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159569, 39.043423, 22.634905>,  <32.973419, 39.594120, 22.063410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159569, 39.043423, 22.634905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521862, 39.171089, 22.523344>,  <33.739239, 39.247688, 22.456408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521862, 39.171089, 22.523344>,  <33.159569, 39.043423, 22.634905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521862, 39.171089, 22.523344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325852, -0.103525, 0.939736,
		0.271061, -0.942027, -0.197767,
		0.905730, 0.319168, -0.278900,
		33.793579, 39.266838, 22.439674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601051, 38.596760, 23.086487>,  <33.159569, 39.043423, 22.634905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601051, 38.596760, 23.086487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841053, 38.885796, 22.949165>,  <33.985054, 39.059216, 22.866772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841053, 38.885796, 22.949165>,  <33.601051, 38.596760, 23.086487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841053, 38.885796, 22.949165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484558, 0.013196, 0.874660,
		0.636548, -0.691154, -0.342218,
		0.600008, 0.722587, -0.343304,
		34.021057, 39.102573, 22.846174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194729, 38.403786, 23.368168>,  <33.601051, 38.596760, 23.086487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194729, 38.403786, 23.368168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247303, 38.792160, 23.288151>,  <34.278847, 39.025185, 23.240141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247303, 38.792160, 23.288151>,  <34.194729, 38.403786, 23.368168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247303, 38.792160, 23.288151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311284, 0.151163, 0.938217,
		0.941184, -0.185583, -0.282368,
		0.131434, 0.970932, -0.200041,
		34.286732, 39.083439, 23.228138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873863, 38.481903, 23.517405>,  <34.194729, 38.403786, 23.368168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873863, 38.481903, 23.517405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686729, 38.833916, 23.550089>,  <34.574448, 39.045124, 23.569700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686729, 38.833916, 23.550089>,  <34.873863, 38.481903, 23.517405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686729, 38.833916, 23.550089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409303, 0.133788, 0.902537,
		0.783329, 0.455682, -0.422789,
		-0.467833, 0.880031, 0.081712,
		34.546379, 39.097923, 23.574602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.960941, 41.523762, 18.259007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590885, 41.673801, 18.282391>,  <34.368851, 41.763824, 18.296421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590885, 41.673801, 18.282391>,  <34.960941, 41.523762, 18.259007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590885, 41.673801, 18.282391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174051, -0.282241, -0.943422,
		-0.337381, -0.882971, 0.326400,
		-0.925138, 0.375103, 0.058459,
		34.313343, 41.786331, 18.299929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517555, 41.001289, 17.977388>,  <34.960941, 41.523762, 18.259007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517555, 41.001289, 17.977388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307095, 41.341362, 17.969782>,  <34.180817, 41.545406, 17.965218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307095, 41.341362, 17.969782>,  <34.517555, 41.001289, 17.977388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307095, 41.341362, 17.969782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304381, -0.209157, -0.929304,
		-0.794051, -0.483166, 0.368826,
		-0.526151, 0.850179, -0.019015,
		34.149250, 41.596416, 17.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845474, 40.832413, 17.633209>,  <34.517555, 41.001289, 17.977388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845474, 40.832413, 17.633209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886013, 41.229618, 17.609015>,  <33.910336, 41.467941, 17.594498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886013, 41.229618, 17.609015>,  <33.845474, 40.832413, 17.633209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886013, 41.229618, 17.609015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364116, -0.019557, -0.931148,
		-0.925823, 0.116395, 0.359589,
		0.101348, 0.993010, -0.060487,
		33.916416, 41.527523, 17.590868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216217, 41.093246, 17.353710>,  <33.845474, 40.832413, 17.633209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216217, 41.093246, 17.353710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467155, 41.396580, 17.282871>,  <33.617718, 41.578579, 17.240368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467155, 41.396580, 17.282871>,  <33.216217, 41.093246, 17.353710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467155, 41.396580, 17.282871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346615, 0.068269, -0.935520,
		-0.697349, 0.648279, 0.305679,
		0.627346, 0.758336, -0.177096,
		33.655361, 41.624081, 17.229742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901661, 41.483223, 16.945898>,  <33.216217, 41.093246, 17.353710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901661, 41.483223, 16.945898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285183, 41.570278, 16.872873>,  <33.515297, 41.622513, 16.829058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285183, 41.570278, 16.872873>,  <32.901661, 41.483223, 16.945898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285183, 41.570278, 16.872873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131272, -0.230471, -0.964184,
		-0.251918, 0.948429, -0.192407,
		0.958804, 0.217637, -0.182562,
		33.572823, 41.635571, 16.818104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893620, 41.848759, 16.293592>,  <32.901661, 41.483223, 16.945898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893620, 41.848759, 16.293592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272453, 41.731140, 16.345089>,  <33.499752, 41.660568, 16.375986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272453, 41.731140, 16.345089>,  <32.893620, 41.848759, 16.293592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272453, 41.731140, 16.345089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024664, -0.333217, -0.942527,
		0.320046, 0.895825, -0.308331,
		0.947081, -0.294048, 0.128740,
		33.556576, 41.642925, 16.383711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227486, 42.159081, 15.728899>,  <32.893620, 41.848759, 16.293592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227486, 42.159081, 15.728899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451080, 41.859512, 15.871249>,  <33.585236, 41.679771, 15.956659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451080, 41.859512, 15.871249>,  <33.227486, 42.159081, 15.728899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451080, 41.859512, 15.871249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079180, -0.379018, -0.921996,
		0.825387, 0.543563, -0.152567,
		0.558988, -0.748922, 0.355876,
		33.618778, 41.634834, 15.978012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666794, 42.082951, 15.172006>,  <33.227486, 42.159081, 15.728899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666794, 42.082951, 15.172006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683167, 41.739731, 15.376778>,  <33.692989, 41.533798, 15.499641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683167, 41.739731, 15.376778>,  <33.666794, 42.082951, 15.172006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683167, 41.739731, 15.376778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046679, -0.513443, -0.856853,
		0.998071, 0.011179, -0.061071,
		0.040935, -0.858051, 0.511931,
		33.695446, 41.482315, 15.530357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151794, 41.604336, 14.807947>,  <33.666794, 42.082951, 15.172006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151794, 41.604336, 14.807947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910156, 41.378937, 15.033349>,  <33.765171, 41.243698, 15.168591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910156, 41.378937, 15.033349>,  <34.151794, 41.604336, 14.807947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910156, 41.378937, 15.033349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223094, -0.559256, -0.798412,
		0.765046, -0.608033, 0.212132,
		-0.604097, -0.563496, 0.563506,
		33.728928, 41.209888, 15.202401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245396, 40.964027, 14.539590>,  <34.151794, 41.604336, 14.807947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245396, 40.964027, 14.539590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886032, 40.943527, 14.714052>,  <33.670414, 40.931229, 14.818729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886032, 40.943527, 14.714052>,  <34.245396, 40.964027, 14.539590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886032, 40.943527, 14.714052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358848, -0.486848, -0.796371,
		0.253155, -0.871982, 0.418999,
		-0.898410, -0.051248, 0.436157,
		33.616508, 40.928154, 14.844899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023727, 40.299213, 14.415808>,  <34.245396, 40.964027, 14.539590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023727, 40.299213, 14.415808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687939, 40.505932, 14.482996>,  <33.486465, 40.629963, 14.523309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687939, 40.505932, 14.482996>,  <34.023727, 40.299213, 14.415808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687939, 40.505932, 14.482996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445035, -0.476453, -0.758245,
		-0.311828, -0.711276, 0.629960,
		-0.839468, 0.516796, 0.167971,
		33.436100, 40.660973, 14.533387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348423, 39.857376, 14.474031>,  <34.023727, 40.299213, 14.415808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348423, 39.857376, 14.474031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216270, 40.215996, 14.356018>,  <33.136978, 40.431168, 14.285211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216270, 40.215996, 14.356018>,  <33.348423, 39.857376, 14.474031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216270, 40.215996, 14.356018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431541, -0.421485, -0.797573,
		-0.839417, -0.136183, 0.526150,
		-0.330380, 0.896552, -0.295033,
		33.117157, 40.484962, 14.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646938, 39.871826, 14.361603>,  <33.348423, 39.857376, 14.474031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646938, 39.871826, 14.361603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779411, 40.165501, 14.124522>,  <32.858894, 40.341705, 13.982274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779411, 40.165501, 14.124522>,  <32.646938, 39.871826, 14.361603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779411, 40.165501, 14.124522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461656, -0.421751, -0.780384,
		-0.822917, 0.532072, 0.199264,
		0.331181, 0.734183, -0.592701,
		32.878765, 40.385757, 13.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165531, 39.916698, 13.738717>,  <32.646938, 39.871826, 14.361603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165531, 39.916698, 13.738717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544216, 39.806286, 13.672332>,  <32.771427, 39.740040, 13.632501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544216, 39.806286, 13.672332>,  <32.165531, 39.916698, 13.738717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544216, 39.806286, 13.672332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320827, -0.762745, -0.561507,
		0.028407, 0.584830, -0.810658,
		0.946712, -0.276031, -0.165962,
		32.828228, 39.723476, 13.622543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957321, 39.716763, 12.960645>,  <32.165531, 39.916698, 13.738717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957321, 39.716763, 12.960645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730131, 39.387581, 12.955732>,  <31.593817, 39.190071, 12.952785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730131, 39.387581, 12.955732>,  <31.957321, 39.716763, 12.960645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730131, 39.387581, 12.955732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233425, -0.175373, 0.956429,
		-0.789252, 0.540361, 0.291706,
		-0.567974, -0.822955, -0.012280,
		31.559738, 39.140694, 12.952048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442905, 39.686077, 13.540067>,  <31.957321, 39.716763, 12.960645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442905, 39.686077, 13.540067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470087, 39.303688, 13.425874>,  <31.486397, 39.074253, 13.357358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470087, 39.303688, 13.425874>,  <31.442905, 39.686077, 13.540067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470087, 39.303688, 13.425874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090716, -0.279037, 0.955986,
		-0.993555, -0.090863, 0.067760,
		0.067956, -0.955972, -0.285481,
		31.490475, 39.016895, 13.340229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004410, 39.278816, 14.122105>,  <31.442905, 39.686077, 13.540067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004410, 39.278816, 14.122105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254967, 39.019413, 13.949097>,  <31.405300, 38.863770, 13.845292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254967, 39.019413, 13.949097>,  <31.004410, 39.278816, 14.122105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254967, 39.019413, 13.949097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211279, -0.392848, 0.895004,
		-0.750330, -0.652005, -0.109061,
		0.626391, -0.648506, -0.432520,
		31.442884, 38.824860, 13.819341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758020, 38.551754, 14.274432>,  <31.004410, 39.278816, 14.122105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758020, 38.551754, 14.274432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148891, 38.511555, 14.199577>,  <31.383415, 38.487434, 14.154665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148891, 38.511555, 14.199577>,  <30.758020, 38.551754, 14.274432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148891, 38.511555, 14.199577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127076, -0.429374, 0.894142,
		-0.170208, -0.897518, -0.406805,
		0.977180, -0.100495, -0.187136,
		31.442045, 38.481407, 14.143436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898561, 37.875610, 14.611528>,  <30.758020, 38.551754, 14.274432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898561, 37.875610, 14.611528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265860, 38.029236, 14.572919>,  <31.486238, 38.121410, 14.549753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265860, 38.029236, 14.572919>,  <30.898561, 37.875610, 14.611528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265860, 38.029236, 14.572919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166656, -0.153669, 0.973967,
		0.359236, -0.910428, -0.205113,
		0.918246, 0.384067, -0.096525,
		31.541334, 38.144455, 14.543962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322926, 37.375118, 15.018824>,  <30.898561, 37.875610, 14.611528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322926, 37.375118, 15.018824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530285, 37.713364, 14.967911>,  <31.654699, 37.916309, 14.937363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530285, 37.713364, 14.967911>,  <31.322926, 37.375118, 15.018824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530285, 37.713364, 14.967911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298646, -0.039554, 0.953544,
		0.801296, -0.532326, -0.273045,
		0.518397, 0.845615, -0.127283,
		31.685804, 37.967049, 14.929726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032288, 37.328037, 15.384219>,  <31.322926, 37.375118, 15.018824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032288, 37.328037, 15.384219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989996, 37.725700, 15.375476>,  <31.964621, 37.964298, 15.370230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989996, 37.725700, 15.375476>,  <32.032288, 37.328037, 15.384219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989996, 37.725700, 15.375476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544687, 0.076292, 0.835162,
		0.831948, 0.076397, -0.549569,
		-0.105732, 0.994154, -0.021859,
		31.958277, 38.023945, 15.368918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572453, 37.510708, 15.764683>,  <32.032288, 37.328037, 15.384219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572453, 37.510708, 15.764683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348904, 37.841698, 15.742968>,  <32.214775, 38.040291, 15.729939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348904, 37.841698, 15.742968>,  <32.572453, 37.510708, 15.764683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348904, 37.841698, 15.742968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294014, 0.258935, 0.920059,
		0.775384, 0.498231, -0.388000,
		-0.558869, 0.827477, -0.054287,
		32.181244, 38.089939, 15.726682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050774, 38.119961, 15.884236>,  <32.572453, 37.510708, 15.764683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050774, 38.119961, 15.884236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678463, 38.236214, 15.972949>,  <32.455078, 38.305965, 16.026176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678463, 38.236214, 15.972949>,  <33.050774, 38.119961, 15.884236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678463, 38.236214, 15.972949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305762, 0.286306, 0.908041,
		0.200408, 0.912996, -0.355352,
		-0.930777, 0.290631, 0.221782,
		32.399231, 38.323402, 16.039484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028355, 38.787209, 16.164064>,  <33.050774, 38.119961, 15.884236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028355, 38.787209, 16.164064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677731, 38.661022, 16.309462>,  <32.467358, 38.585312, 16.396700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677731, 38.661022, 16.309462>,  <33.028355, 38.787209, 16.164064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677731, 38.661022, 16.309462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190974, 0.465273, 0.864321,
		-0.441785, 0.827045, -0.347594,
		-0.876559, -0.315463, 0.363495,
		32.414764, 38.566383, 16.418510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720779, 39.427734, 16.403328>,  <33.028355, 38.787209, 16.164064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720779, 39.427734, 16.403328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559196, 39.117329, 16.597080>,  <32.462246, 38.931087, 16.713331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559196, 39.117329, 16.597080>,  <32.720779, 39.427734, 16.403328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559196, 39.117329, 16.597080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021817, 0.521182, 0.853166,
		-0.914517, 0.355213, -0.193606,
		-0.403960, -0.776011, 0.484380,
		32.438007, 38.884525, 16.742393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269066, 39.772408, 16.963737>,  <32.720779, 39.427734, 16.403328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269066, 39.772408, 16.963737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307041, 39.390148, 17.075254>,  <32.329826, 39.160793, 17.142164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307041, 39.390148, 17.075254>,  <32.269066, 39.772408, 16.963737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307041, 39.390148, 17.075254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082718, 0.286662, 0.954454,
		-0.992040, -0.067554, 0.106265,
		0.094939, -0.955647, 0.278793,
		32.335522, 39.103455, 17.158892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847042, 39.661121, 17.546097>,  <32.269066, 39.772408, 16.963737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847042, 39.661121, 17.546097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115559, 39.366844, 17.582144>,  <32.276669, 39.190277, 17.603771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115559, 39.366844, 17.582144>,  <31.847042, 39.661121, 17.546097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115559, 39.366844, 17.582144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010695, 0.131187, 0.991300,
		-0.741116, -0.664488, 0.095933,
		0.671292, -0.735694, 0.090118,
		32.316948, 39.146137, 17.609179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605257, 39.282146, 18.123207>,  <31.847042, 39.661121, 17.546097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605257, 39.282146, 18.123207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988714, 39.177681, 18.077965>,  <32.218788, 39.115002, 18.050819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988714, 39.177681, 18.077965>,  <31.605257, 39.282146, 18.123207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988714, 39.177681, 18.077965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102008, -0.055704, 0.993223,
		-0.265696, -0.963685, -0.026760,
		0.958645, -0.261165, -0.113104,
		32.276306, 39.099331, 18.044033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028000, 38.915585, 18.466286>,  <31.605257, 39.282146, 18.123207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028000, 38.915585, 18.466286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658789, 38.951073, 18.616030>,  <30.437262, 38.972366, 18.705875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658789, 38.951073, 18.616030>,  <31.028000, 38.915585, 18.466286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658789, 38.951073, 18.616030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369693, 0.064823, -0.926890,
		-0.106505, -0.993945, -0.027033,
		-0.923030, 0.088725, 0.374358,
		30.381880, 38.977692, 18.728336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629316, 38.301987, 18.247877>,  <31.028000, 38.915585, 18.466286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629316, 38.301987, 18.247877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405935, 38.625389, 18.322128>,  <30.271908, 38.819431, 18.366678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405935, 38.625389, 18.322128>,  <30.629316, 38.301987, 18.247877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405935, 38.625389, 18.322128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433642, -0.093767, -0.896193,
		-0.707169, -0.580974, 0.402965,
		-0.558450, 0.808502, 0.185626,
		30.238400, 38.867939, 18.377817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060543, 38.124229, 17.962929>,  <30.629316, 38.301987, 18.247877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060543, 38.124229, 17.962929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005960, 38.518711, 18.000391>,  <29.973211, 38.755402, 18.022869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005960, 38.518711, 18.000391>,  <30.060543, 38.124229, 17.962929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005960, 38.518711, 18.000391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444347, 0.023563, -0.895545,
		-0.885401, -0.163821, 0.435004,
		-0.136459, 0.986209, 0.093656,
		29.965023, 38.814575, 18.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369984, 38.255833, 17.737291>,  <30.060543, 38.124229, 17.962929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369984, 38.255833, 17.737291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560129, 38.604885, 17.692493>,  <29.674215, 38.814316, 17.665615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560129, 38.604885, 17.692493>,  <29.369984, 38.255833, 17.737291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560129, 38.604885, 17.692493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485472, 0.154009, -0.860580,
		-0.733722, 0.463458, 0.496849,
		0.475362, 0.872633, -0.111996,
		29.702738, 38.866676, 17.658895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821251, 38.703560, 17.591669>,  <29.369984, 38.255833, 17.737291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821251, 38.703560, 17.591669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.146122, 38.906479, 17.476421>,  <29.341045, 39.028233, 17.407272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.146122, 38.906479, 17.476421>,  <28.821251, 38.703560, 17.591669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146122, 38.906479, 17.476421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426553, 0.179422, -0.886488,
		-0.398020, 0.842884, 0.362113,
		0.812178, 0.507300, -0.288121,
		29.389776, 39.058670, 17.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619133, 39.229889, 17.243809>,  <28.821251, 38.703560, 17.591669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619133, 39.229889, 17.243809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.993612, 39.195881, 17.107397>,  <29.218300, 39.175476, 17.025551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.993612, 39.195881, 17.107397>,  <28.619133, 39.229889, 17.243809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993612, 39.195881, 17.107397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320347, 0.192746, -0.927484,
		0.144590, 0.977558, 0.153212,
		0.936201, -0.085024, -0.341027,
		29.274473, 39.170372, 17.005089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672007, 39.699986, 16.724018>,  <28.619133, 39.229889, 17.243809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672007, 39.699986, 16.724018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992027, 39.479961, 16.628227>,  <29.184040, 39.347946, 16.570753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992027, 39.479961, 16.628227>,  <28.672007, 39.699986, 16.724018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992027, 39.479961, 16.628227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191285, 0.144455, -0.970846,
		0.568621, 0.822534, 0.010352,
		0.800050, -0.550064, -0.239479,
		29.232042, 39.314941, 16.556383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568808, 40.404469, 16.466953>,  <28.672007, 39.699986, 16.724018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568808, 40.404469, 16.466953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.173193, 40.463509, 16.468754>,  <27.935823, 40.498932, 16.469835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.173193, 40.463509, 16.468754>,  <28.568808, 40.404469, 16.466953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173193, 40.463509, 16.468754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004555, -0.060978, 0.998129,
		0.147594, 0.987166, 0.060982,
		-0.989037, 0.147596, 0.004504,
		27.876482, 40.507786, 16.470104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548351, 40.873104, 17.013861>,  <28.568808, 40.404469, 16.466953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548351, 40.873104, 17.013861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.185417, 40.714909, 16.956825>,  <27.967657, 40.619991, 16.922604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.185417, 40.714909, 16.956825>,  <28.548351, 40.873104, 17.013861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185417, 40.714909, 16.956825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077305, -0.176437, 0.981271,
		-0.413238, 0.901365, 0.129515,
		-0.907336, -0.395487, -0.142591,
		27.913216, 40.596264, 16.914047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095493, 41.232536, 17.517548>,  <28.548351, 40.873104, 17.013861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095493, 41.232536, 17.517548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.908007, 40.898285, 17.402987>,  <27.795515, 40.697735, 17.334249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.908007, 40.898285, 17.402987>,  <28.095493, 41.232536, 17.517548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908007, 40.898285, 17.402987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202769, -0.213787, 0.955604,
		-0.859761, 0.505981, -0.069235,
		-0.468716, -0.835630, -0.286403,
		27.767391, 40.647594, 17.317066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591192, 41.262344, 17.882694>,  <28.095493, 41.232536, 17.517548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591192, 41.262344, 17.882694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.618649, 40.868843, 17.816334>,  <27.635122, 40.632744, 17.776518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.618649, 40.868843, 17.816334>,  <27.591192, 41.262344, 17.882694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618649, 40.868843, 17.816334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159576, -0.174979, 0.971554,
		-0.984796, -0.040216, -0.168994,
		0.068643, -0.983751, -0.165901,
		27.639242, 40.573719, 17.766563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130989, 41.018677, 18.272345>,  <27.591192, 41.262344, 17.882694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130989, 41.018677, 18.272345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.343382, 40.684216, 18.217340>,  <27.470818, 40.483540, 18.184338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.343382, 40.684216, 18.217340>,  <27.130989, 41.018677, 18.272345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343382, 40.684216, 18.217340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058729, -0.125573, 0.990345,
		-0.845345, -0.533932, -0.017570,
		0.530983, -0.836151, -0.137510,
		27.502676, 40.433369, 18.176088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834721, 40.633442, 18.829840>,  <27.130989, 41.018677, 18.272345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834721, 40.633442, 18.829840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.167692, 40.444035, 18.714710>,  <27.367476, 40.330391, 18.645634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.167692, 40.444035, 18.714710>,  <26.834721, 40.633442, 18.829840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167692, 40.444035, 18.714710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252239, -0.138683, 0.957675,
		-0.493396, -0.869796, 0.003997,
		0.832428, -0.473522, -0.287823,
		27.417421, 40.301979, 18.628363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914120, 39.995899, 19.176924>,  <26.834721, 40.633442, 18.829840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914120, 39.995899, 19.176924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291613, 40.095303, 19.089642>,  <27.518108, 40.154945, 19.037271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291613, 40.095303, 19.089642>,  <26.914120, 39.995899, 19.176924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291613, 40.095303, 19.089642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240767, -0.063953, 0.968474,
		0.226714, -0.966517, -0.120186,
		0.943733, 0.248504, -0.218207,
		27.574732, 40.169853, 19.024179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.466650, 44.108822, 14.384577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.653189, 43.757420, 14.426059>,  <31.765112, 43.546577, 14.450948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.653189, 43.757420, 14.426059>,  <31.466650, 44.108822, 14.384577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653189, 43.757420, 14.426059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138129, 0.043479, 0.989459,
		-0.873750, -0.475757, -0.101070,
		0.466348, -0.878501, 0.103706,
		31.793093, 43.493870, 14.457170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018631, 43.724979, 14.774661>,  <31.466650, 44.108822, 14.384577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018631, 43.724979, 14.774661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.393110, 43.596088, 14.830809>,  <31.617798, 43.518753, 14.864497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.393110, 43.596088, 14.830809>,  <31.018631, 43.724979, 14.774661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393110, 43.596088, 14.830809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222093, -0.232809, 0.946823,
		-0.272421, -0.917586, -0.289520,
		0.936195, -0.322235, 0.140367,
		31.673969, 43.499420, 14.872919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972469, 43.482536, 15.471103>,  <31.018631, 43.724979, 14.774661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972469, 43.482536, 15.471103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.350491, 43.385990, 15.382902>,  <31.577303, 43.328064, 15.329982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.350491, 43.385990, 15.382902>,  <30.972469, 43.482536, 15.471103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350491, 43.385990, 15.382902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202578, -0.097031, 0.974447,
		-0.256591, -0.965572, -0.042804,
		0.945052, -0.241363, -0.220501,
		31.634007, 43.313580, 15.316752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221521, 42.768559, 15.780354>,  <30.972469, 43.482536, 15.471103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221521, 42.768559, 15.780354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537180, 43.011234, 15.742037>,  <31.726574, 43.156841, 15.719047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537180, 43.011234, 15.742037>,  <31.221521, 42.768559, 15.780354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537180, 43.011234, 15.742037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278782, -0.214833, 0.936017,
		0.547294, -0.765358, -0.338669,
		0.789145, 0.606691, -0.095791,
		31.773924, 43.193241, 15.713300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761827, 42.392143, 16.062468>,  <31.221521, 42.768559, 15.780354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761827, 42.392143, 16.062468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861841, 42.779305, 16.052240>,  <31.921850, 43.011600, 16.046104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861841, 42.779305, 16.052240>,  <31.761827, 42.392143, 16.062468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861841, 42.779305, 16.052240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375894, -0.072699, 0.923807,
		0.892293, -0.240595, -0.382005,
		0.250035, 0.967899, -0.025569,
		31.936852, 43.069675, 16.044569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434269, 42.568825, 16.483204>,  <31.761827, 42.392143, 16.062468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434269, 42.568825, 16.483204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277313, 42.936325, 16.465643>,  <32.183140, 43.156826, 16.455107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277313, 42.936325, 16.465643>,  <32.434269, 42.568825, 16.483204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277313, 42.936325, 16.465643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116912, 0.097162, 0.988378,
		0.912338, 0.382699, -0.145539,
		-0.392392, 0.918750, -0.043903,
		32.159595, 43.211948, 16.452473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845512, 43.042736, 16.915318>,  <32.434269, 42.568825, 16.483204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845512, 43.042736, 16.915318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508480, 43.249851, 16.856045>,  <32.306259, 43.374119, 16.820482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508480, 43.249851, 16.856045>,  <32.845512, 43.042736, 16.915318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508480, 43.249851, 16.856045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007834, 0.286889, 0.957932,
		0.538513, 0.805974, -0.245783,
		-0.842581, 0.517785, -0.148180,
		32.255707, 43.405186, 16.811590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957016, 43.666985, 17.247519>,  <32.845512, 43.042736, 16.915318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957016, 43.666985, 17.247519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.558262, 43.635563, 17.244553>,  <32.319012, 43.616711, 17.242773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.558262, 43.635563, 17.244553>,  <32.957016, 43.666985, 17.247519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558262, 43.635563, 17.244553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045682, 0.497991, 0.865978,
		-0.064335, 0.863617, -0.500027,
		-0.996882, -0.078555, -0.007414,
		32.259197, 43.611996, 17.242329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667850, 44.358021, 17.567324>,  <32.957016, 43.666985, 17.247519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667850, 44.358021, 17.567324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362984, 44.100086, 17.590254>,  <32.180065, 43.945324, 17.604012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362984, 44.100086, 17.590254>,  <32.667850, 44.358021, 17.567324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362984, 44.100086, 17.590254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294392, 0.424093, 0.856434,
		-0.576571, 0.635870, -0.513065,
		-0.762167, -0.644837, 0.057325,
		32.134335, 43.906635, 17.607450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110550, 44.793873, 17.787823>,  <32.667850, 44.358021, 17.567324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110550, 44.793873, 17.787823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.009880, 44.418007, 17.880512>,  <31.949478, 44.192490, 17.936125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.009880, 44.418007, 17.880512>,  <32.110550, 44.793873, 17.787823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009880, 44.418007, 17.880512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329473, 0.308314, 0.892407,
		-0.910004, 0.148249, -0.387188,
		-0.251674, -0.939662, 0.231723,
		31.934378, 44.136108, 17.950029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341484, 44.742451, 18.029053>,  <32.110550, 44.793873, 17.787823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341484, 44.742451, 18.029053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563011, 44.437061, 18.161955>,  <31.695929, 44.253826, 18.241695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563011, 44.437061, 18.161955>,  <31.341484, 44.742451, 18.029053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563011, 44.437061, 18.161955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264943, 0.216711, 0.939596,
		-0.789360, -0.608395, -0.082258,
		0.553819, -0.763473, 0.332254,
		31.729156, 44.208019, 18.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816525, 44.325279, 18.370207>,  <31.341484, 44.742451, 18.029053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816525, 44.325279, 18.370207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173269, 44.255749, 18.537237>,  <31.387316, 44.214031, 18.637455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173269, 44.255749, 18.537237>,  <30.816525, 44.325279, 18.370207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173269, 44.255749, 18.537237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381583, 0.206541, 0.900963,
		-0.242856, -0.962874, 0.117877,
		0.891860, -0.173824, 0.417576,
		31.440828, 44.203602, 18.662510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163563, 43.890499, 18.339725>,  <30.816525, 44.325279, 18.370207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163563, 43.890499, 18.339725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769859, 43.908081, 18.408197>,  <29.533638, 43.918629, 18.449280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769859, 43.908081, 18.408197>,  <30.163563, 43.890499, 18.339725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769859, 43.908081, 18.408197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167766, 0.072201, -0.983179,
		-0.055575, -0.996421, -0.063691,
		-0.984259, 0.043955, 0.171178,
		29.474581, 43.921268, 18.459551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827135, 43.422020, 17.871864>,  <30.163563, 43.890499, 18.339725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827135, 43.422020, 17.871864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503654, 43.641033, 17.957848>,  <29.309566, 43.772442, 18.009438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503654, 43.641033, 17.957848>,  <29.827135, 43.422020, 17.871864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503654, 43.641033, 17.957848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310551, -0.087064, -0.946561,
		-0.499557, -0.832243, 0.240446,
		-0.808703, 0.547531, 0.214960,
		29.261044, 43.805294, 18.022335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220396, 43.103828, 17.570869>,  <29.827135, 43.422020, 17.871864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220396, 43.103828, 17.570869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136030, 43.493866, 17.598297>,  <29.085411, 43.727890, 17.614754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136030, 43.493866, 17.598297>,  <29.220396, 43.103828, 17.570869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136030, 43.493866, 17.598297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261649, 0.011270, -0.965097,
		-0.941836, -0.221495, 0.252756,
		-0.210916, 0.975096, 0.068568,
		29.072756, 43.786396, 17.618868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554699, 43.187355, 17.258898>,  <29.220396, 43.103828, 17.570869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554699, 43.187355, 17.258898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716831, 43.552773, 17.245323>,  <28.814110, 43.772022, 17.237179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716831, 43.552773, 17.245323>,  <28.554699, 43.187355, 17.258898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716831, 43.552773, 17.245323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432384, 0.158874, -0.887583,
		-0.805451, 0.374437, 0.459396,
		0.405330, 0.913540, -0.033935,
		28.838430, 43.826836, 17.235142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995930, 43.667309, 17.099401>,  <28.554699, 43.187355, 17.258898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995930, 43.667309, 17.099401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345871, 43.834209, 17.000990>,  <28.555836, 43.934349, 16.941944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345871, 43.834209, 17.000990>,  <27.995930, 43.667309, 17.099401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345871, 43.834209, 17.000990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338662, 0.163744, -0.926551,
		-0.346320, 0.893917, 0.284560,
		0.874854, 0.417253, -0.246028,
		28.608328, 43.959385, 16.927181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832489, 44.005245, 16.504879>,  <27.995930, 43.667309, 17.099401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832489, 44.005245, 16.504879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230610, 44.041740, 16.491901>,  <28.469482, 44.063637, 16.484114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230610, 44.041740, 16.491901>,  <27.832489, 44.005245, 16.504879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230610, 44.041740, 16.491901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022934, -0.103441, -0.994371,
		-0.094081, 0.990442, -0.100862,
		0.995300, 0.091238, -0.032446,
		28.529200, 44.069111, 16.482168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980965, 44.563183, 16.084543>,  <27.832489, 44.005245, 16.504879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980965, 44.563183, 16.084543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316950, 44.346127, 16.084101>,  <28.518541, 44.215893, 16.083836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316950, 44.346127, 16.084101>,  <27.980965, 44.563183, 16.084543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316950, 44.346127, 16.084101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079314, -0.120753, -0.989509,
		0.536813, 0.831240, -0.144467,
		0.839965, -0.542640, -0.001108,
		28.568939, 44.183334, 16.083769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405062, 44.812881, 15.532184>,  <27.980965, 44.563183, 16.084543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405062, 44.812881, 15.532184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521729, 44.434113, 15.586239>,  <28.591728, 44.206852, 15.618672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521729, 44.434113, 15.586239>,  <28.405062, 44.812881, 15.532184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521729, 44.434113, 15.586239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124172, -0.102602, -0.986942,
		0.948426, 0.304640, 0.087656,
		0.291668, -0.946925, 0.135139,
		28.609228, 44.150036, 15.626781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871735, 44.666592, 14.967278>,  <28.405062, 44.812881, 15.532184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871735, 44.666592, 14.967278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772430, 44.308823, 15.116069>,  <28.712849, 44.094162, 15.205343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772430, 44.308823, 15.116069>,  <28.871735, 44.666592, 14.967278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772430, 44.308823, 15.116069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079813, -0.401581, -0.912339,
		0.965400, -0.196808, 0.171082,
		-0.248259, -0.894427, 0.371978,
		28.697952, 44.040493, 15.227662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326427, 44.257206, 14.705977>,  <28.871735, 44.666592, 14.967278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326427, 44.257206, 14.705977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010300, 44.035488, 14.810399>,  <28.820623, 43.902458, 14.873053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010300, 44.035488, 14.810399>,  <29.326427, 44.257206, 14.705977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010300, 44.035488, 14.810399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052818, -0.486128, -0.872290,
		0.610414, -0.675600, 0.413473,
		-0.790320, -0.554297, 0.261055,
		28.773203, 43.869198, 14.888716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506790, 43.669048, 14.504292>,  <29.326427, 44.257206, 14.705977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506790, 43.669048, 14.504292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112478, 43.617947, 14.547951>,  <28.875891, 43.587284, 14.574146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112478, 43.617947, 14.547951>,  <29.506790, 43.669048, 14.504292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112478, 43.617947, 14.547951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046949, -0.414285, -0.908936,
		0.161341, -0.901136, 0.402396,
		-0.985781, -0.127756, 0.109149,
		28.816744, 43.579620, 14.580695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333735, 43.089561, 14.084013>,  <29.506790, 43.669048, 14.504292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333735, 43.089561, 14.084013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959858, 43.221306, 14.137500>,  <28.735533, 43.300350, 14.169592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959858, 43.221306, 14.137500>,  <29.333735, 43.089561, 14.084013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959858, 43.221306, 14.137500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220503, -0.242172, -0.944844,
		-0.278816, -0.912618, 0.298981,
		-0.934687, 0.329364, 0.133714,
		28.679451, 43.320114, 14.177614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906025, 42.524708, 13.937379>,  <29.333735, 43.089561, 14.084013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906025, 42.524708, 13.937379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696472, 42.861515, 13.885905>,  <28.570742, 43.063599, 13.855021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696472, 42.861515, 13.885905>,  <28.906025, 42.524708, 13.937379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696472, 42.861515, 13.885905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245414, -0.293874, -0.923802,
		-0.815673, -0.452381, 0.360597,
		-0.523880, 0.842015, -0.128684,
		28.539309, 43.114120, 13.847300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196836, 42.569435, 13.634757>,  <28.906025, 42.524708, 13.937379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196836, 42.569435, 13.634757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150700, 42.191540, 13.512008>,  <28.123018, 41.964802, 13.438358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150700, 42.191540, 13.512008>,  <28.196836, 42.569435, 13.634757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150700, 42.191540, 13.512008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282222, -0.265035, 0.922013,
		-0.952390, 0.192951, -0.236056,
		-0.115340, -0.944736, -0.306872,
		28.116098, 41.908119, 13.419946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529215, 42.341034, 13.943172>,  <28.196836, 42.569435, 13.634757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529215, 42.341034, 13.943172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723339, 41.999435, 13.868170>,  <27.839813, 41.794476, 13.823169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723339, 41.999435, 13.868170>,  <27.529215, 42.341034, 13.943172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723339, 41.999435, 13.868170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277398, -0.353762, 0.893254,
		-0.829172, -0.381491, -0.408581,
		0.485309, -0.854001, -0.187505,
		27.868931, 41.743237, 13.811918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129801, 41.886112, 14.094076>,  <27.529215, 42.341034, 13.943172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129801, 41.886112, 14.094076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468990, 41.674595, 14.108600>,  <27.672504, 41.547684, 14.117313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468990, 41.674595, 14.108600>,  <27.129801, 41.886112, 14.094076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468990, 41.674595, 14.108600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301176, -0.424326, 0.853956,
		-0.436159, -0.735068, -0.519077,
		0.847973, -0.528794, 0.036311,
		27.723383, 41.515957, 14.119492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969038, 41.258133, 14.401549>,  <27.129801, 41.886112, 14.094076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969038, 41.258133, 14.401549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365032, 41.230549, 14.450829>,  <27.602629, 41.213997, 14.480396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365032, 41.230549, 14.450829>,  <26.969038, 41.258133, 14.401549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365032, 41.230549, 14.450829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140596, -0.401912, 0.904820,
		-0.012883, -0.913078, -0.407582,
		0.989983, -0.068961, 0.123197,
		27.662027, 41.209862, 14.487788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092865, 40.582630, 14.525186>,  <26.969038, 41.258133, 14.401549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092865, 40.582630, 14.525186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403494, 40.770329, 14.693348>,  <27.589870, 40.882950, 14.794245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403494, 40.770329, 14.693348>,  <27.092865, 40.582630, 14.525186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403494, 40.770329, 14.693348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094764, -0.572691, 0.814276,
		0.622861, -0.672183, -0.400268,
		0.776572, 0.469249, 0.420405,
		27.636465, 40.911102, 14.819469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318375, 40.047264, 14.951213>,  <27.092865, 40.582630, 14.525186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318375, 40.047264, 14.951213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482214, 40.379108, 15.102989>,  <27.580517, 40.578217, 15.194055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482214, 40.379108, 15.102989>,  <27.318375, 40.047264, 14.951213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482214, 40.379108, 15.102989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022480, -0.406627, 0.913318,
		0.911989, -0.382624, -0.147904,
		0.409599, 0.829611, 0.379441,
		27.605093, 40.627991, 15.216822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813169, 39.841969, 15.361084>,  <27.318375, 40.047264, 14.951213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813169, 39.841969, 15.361084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753593, 40.213638, 15.496402>,  <27.717848, 40.436642, 15.577593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753593, 40.213638, 15.496402>,  <27.813169, 39.841969, 15.361084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753593, 40.213638, 15.496402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091394, -0.353582, 0.930928,
		0.984614, 0.107733, 0.137583,
		-0.148938, 0.929179, 0.338295,
		27.708912, 40.492393, 15.597891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328268, 39.951225, 15.873374>,  <27.813169, 39.841969, 15.361084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328268, 39.951225, 15.873374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017408, 40.190815, 15.950597>,  <27.830893, 40.334568, 15.996931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017408, 40.190815, 15.950597>,  <28.328268, 39.951225, 15.873374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017408, 40.190815, 15.950597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009882, -0.318352, 0.947921,
		0.629237, 0.734770, 0.253326,
		-0.777151, 0.598970, 0.193058,
		27.784264, 40.370506, 16.008514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030720, 40.017006, 16.070719>,  <28.328268, 39.951225, 15.873374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030720, 40.017006, 16.070719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171974, 39.642803, 16.066422>,  <29.256727, 39.418282, 16.063843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171974, 39.642803, 16.066422>,  <29.030720, 40.017006, 16.070719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171974, 39.642803, 16.066422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124347, -0.035553, -0.991602,
		0.927272, 0.351506, -0.128883,
		0.353136, -0.935511, -0.010742,
		29.277914, 39.362148, 16.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535721, 39.979050, 15.515655>,  <29.030720, 40.017006, 16.070719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535721, 39.979050, 15.515655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428577, 39.598324, 15.575377>,  <29.364292, 39.369888, 15.611211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428577, 39.598324, 15.575377>,  <29.535721, 39.979050, 15.515655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428577, 39.598324, 15.575377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019406, -0.160268, -0.986883,
		0.963263, -0.261447, 0.061400,
		-0.267858, -0.951819, 0.149307,
		29.348221, 39.312778, 15.620170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997999, 39.604801, 15.068014>,  <29.535721, 39.979050, 15.515655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997999, 39.604801, 15.068014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725586, 39.317707, 15.126040>,  <29.562138, 39.145451, 15.160854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725586, 39.317707, 15.126040>,  <29.997999, 39.604801, 15.068014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725586, 39.317707, 15.126040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126328, -0.310300, -0.942208,
		0.721271, -0.623351, 0.301996,
		-0.681035, -0.717738, 0.145064,
		29.521275, 39.102386, 15.169559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159237, 38.964565, 14.681434>,  <29.997999, 39.604801, 15.068014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159237, 38.964565, 14.681434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777245, 38.879570, 14.764248>,  <29.548050, 38.828571, 14.813936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777245, 38.879570, 14.764248>,  <30.159237, 38.964565, 14.681434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777245, 38.879570, 14.764248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117610, -0.369517, -0.921751,
		0.272368, -0.904602, 0.327889,
		-0.954979, -0.212492, 0.207035,
		29.490751, 38.815823, 14.826359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076328, 38.303463, 14.429520>,  <30.159237, 38.964565, 14.681434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076328, 38.303463, 14.429520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707668, 38.456337, 14.456354>,  <29.486473, 38.548061, 14.472455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707668, 38.456337, 14.456354>,  <30.076328, 38.303463, 14.429520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707668, 38.456337, 14.456354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247986, -0.447171, -0.859384,
		-0.298442, -0.808687, 0.506911,
		-0.921649, 0.382183, 0.067089,
		29.431173, 38.570992, 14.476480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729788, 37.801704, 14.212208>,  <30.076328, 38.303463, 14.429520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729788, 37.801704, 14.212208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473537, 38.103909, 14.157365>,  <29.319788, 38.285233, 14.124459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473537, 38.103909, 14.157365>,  <29.729788, 37.801704, 14.212208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473537, 38.103909, 14.157365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248971, -0.373293, -0.893681,
		-0.726370, -0.538378, 0.427242,
		-0.640625, 0.755513, -0.137109,
		29.281349, 38.330563, 14.116232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186668, 37.457355, 13.876502>,  <29.729788, 37.801704, 14.212208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186668, 37.457355, 13.876502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163876, 37.846481, 13.786719>,  <29.150200, 38.079956, 13.732850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163876, 37.846481, 13.786719>,  <29.186668, 37.457355, 13.876502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163876, 37.846481, 13.786719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153887, -0.230694, -0.960781,
		-0.986444, -0.020206, 0.162850,
		-0.056982, 0.972817, -0.224457,
		29.146782, 38.138325, 13.719382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576355, 37.612701, 13.479677>,  <29.186668, 37.457355, 13.876502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576355, 37.612701, 13.479677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823837, 37.914791, 13.393107>,  <28.972326, 38.096046, 13.341166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823837, 37.914791, 13.393107>,  <28.576355, 37.612701, 13.479677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823837, 37.914791, 13.393107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053405, -0.234411, -0.970669,
		-0.783806, 0.612116, -0.104698,
		0.618705, 0.755225, -0.216423,
		29.009449, 38.141357, 13.328180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153103, 38.157436, 13.126123>,  <28.576355, 37.612701, 13.479677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153103, 38.157436, 13.126123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539181, 38.125313, 13.026562>,  <28.770826, 38.106037, 12.966825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539181, 38.125313, 13.026562>,  <28.153103, 38.157436, 13.126123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539181, 38.125313, 13.026562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259228, -0.167483, -0.951184,
		0.034703, 0.982598, -0.182472,
		0.965193, -0.080311, -0.248904,
		28.828739, 38.101219, 12.951890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.120077, 40.372868, 29.014715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507605, 40.436234, 28.938509>,  <31.740122, 40.474255, 28.892786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507605, 40.436234, 28.938509>,  <31.120077, 40.372868, 29.014715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507605, 40.436234, 28.938509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206288, 0.089788, -0.974363,
		-0.137248, 0.983282, 0.119667,
		0.968818, 0.158415, -0.190516,
		31.798250, 40.483757, 28.881353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227486, 40.983501, 28.592743>,  <31.120077, 40.372868, 29.014715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227486, 40.983501, 28.592743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533180, 40.732410, 28.533546>,  <31.716597, 40.581757, 28.498028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533180, 40.732410, 28.533546>,  <31.227486, 40.983501, 28.592743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533180, 40.732410, 28.533546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203867, -0.017432, -0.978844,
		0.611867, 0.778238, -0.141295,
		0.764237, -0.627727, -0.147991,
		31.762451, 40.544094, 28.489149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700483, 41.202454, 28.051342>,  <31.227486, 40.983501, 28.592743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700483, 41.202454, 28.051342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730005, 40.803558, 28.054882>,  <31.747719, 40.564220, 28.057005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730005, 40.803558, 28.054882>,  <31.700483, 41.202454, 28.051342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730005, 40.803558, 28.054882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132540, -0.018602, -0.991003,
		0.988426, 0.071969, -0.133546,
		0.073805, -0.997233, 0.008848,
		31.752148, 40.504387, 28.057537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167107, 41.031288, 27.480162>,  <31.700483, 41.202454, 28.051342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167107, 41.031288, 27.480162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958891, 40.699604, 27.561592>,  <31.833961, 40.500591, 27.610451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958891, 40.699604, 27.561592>,  <32.167107, 41.031288, 27.480162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958891, 40.699604, 27.561592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111601, -0.170305, -0.979052,
		0.846512, -0.532355, -0.003890,
		-0.520541, -0.829213, 0.203576,
		31.802729, 40.450840, 27.622665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306160, 40.572021, 26.875940>,  <32.167107, 41.031288, 27.480162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306160, 40.572021, 26.875940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996370, 40.383156, 27.044344>,  <31.810495, 40.269836, 27.145386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996370, 40.383156, 27.044344>,  <32.306160, 40.572021, 26.875940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996370, 40.383156, 27.044344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342007, -0.247352, -0.906558,
		0.532183, -0.846094, 0.030084,
		-0.774475, -0.472166, 0.421007,
		31.764029, 40.241505, 27.170647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224018, 39.981812, 26.522682>,  <32.306160, 40.572021, 26.875940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224018, 39.981812, 26.522682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867592, 40.016525, 26.700882>,  <31.653736, 40.037354, 26.807802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867592, 40.016525, 26.700882>,  <32.224018, 39.981812, 26.522682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867592, 40.016525, 26.700882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425984, -0.498683, -0.754886,
		0.156652, -0.862429, 0.481328,
		-0.891066, 0.086784, 0.445501,
		31.600273, 40.042561, 26.834532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983412, 39.396053, 26.325563>,  <32.224018, 39.981812, 26.522682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983412, 39.396053, 26.325563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682711, 39.637001, 26.432909>,  <31.502291, 39.781570, 26.497316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682711, 39.637001, 26.432909>,  <31.983412, 39.396053, 26.325563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682711, 39.637001, 26.432909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579404, -0.409015, -0.704981,
		-0.314894, -0.685463, 0.656493,
		-0.751754, 0.602368, 0.268364,
		31.457184, 39.817711, 26.513418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405252, 38.988346, 26.501764>,  <31.983412, 39.396053, 26.325563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405252, 38.988346, 26.501764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232285, 39.332039, 26.392412>,  <31.128504, 39.538254, 26.326801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232285, 39.332039, 26.392412>,  <31.405252, 38.988346, 26.501764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232285, 39.332039, 26.392412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509434, -0.482975, -0.712189,
		-0.743971, -0.168693, 0.646568,
		-0.432418, 0.859231, -0.273381,
		31.102560, 39.589809, 26.310398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745010, 38.820015, 26.378784>,  <31.405252, 38.988346, 26.501764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745010, 38.820015, 26.378784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774975, 39.172222, 26.191559>,  <30.792953, 39.383545, 26.079224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774975, 39.172222, 26.191559>,  <30.745010, 38.820015, 26.378784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774975, 39.172222, 26.191559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448521, -0.389471, -0.804451,
		-0.890627, 0.270197, 0.365755,
		0.074910, 0.880515, -0.468063,
		30.797447, 39.436375, 26.051140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043785, 39.008419, 26.084917>,  <30.745010, 38.820015, 26.378784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043785, 39.008419, 26.084917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.314850, 39.215508, 25.876020>,  <30.477489, 39.339760, 25.750683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.314850, 39.215508, 25.876020>,  <30.043785, 39.008419, 26.084917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314850, 39.215508, 25.876020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398452, -0.338380, -0.852488,
		-0.618068, 0.785788, -0.023021,
		0.677664, 0.517722, -0.522240,
		30.518148, 39.370823, 25.719349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692347, 39.139214, 25.548120>,  <30.043785, 39.008419, 26.084917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692347, 39.139214, 25.548120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.055698, 39.243954, 25.417719>,  <30.273710, 39.306797, 25.339478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.055698, 39.243954, 25.417719>,  <29.692347, 39.139214, 25.548120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055698, 39.243954, 25.417719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259791, -0.257494, -0.930702,
		-0.327648, 0.930125, -0.165876,
		0.908381, 0.261849, -0.326005,
		30.328213, 39.322510, 25.319918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610964, 39.475483, 24.899900>,  <29.692347, 39.139214, 25.548120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610964, 39.475483, 24.899900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995224, 39.368340, 24.870506>,  <30.225780, 39.304054, 24.852869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995224, 39.368340, 24.870506>,  <29.610964, 39.475483, 24.899900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995224, 39.368340, 24.870506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137737, -0.229654, -0.963477,
		0.241199, 0.935687, -0.257511,
		0.960652, -0.267858, -0.073487,
		30.283419, 39.287983, 24.848461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519840, 40.259521, 24.799635>,  <29.610964, 39.475483, 24.899900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519840, 40.259521, 24.799635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.130144, 40.346813, 24.776911>,  <28.896326, 40.399189, 24.763277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.130144, 40.346813, 24.776911>,  <29.519840, 40.259521, 24.799635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130144, 40.346813, 24.776911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024578, 0.147667, 0.988732,
		0.224159, 0.964661, -0.138500,
		-0.974243, 0.218229, -0.056810,
		28.837872, 40.412281, 24.759869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476740, 40.801304, 25.155657>,  <29.519840, 40.259521, 24.799635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476740, 40.801304, 25.155657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101748, 40.662689, 25.168602>,  <28.876753, 40.579521, 25.176369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101748, 40.662689, 25.168602>,  <29.476740, 40.801304, 25.155657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101748, 40.662689, 25.168602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098399, 0.353090, 0.930400,
		-0.333843, 0.869046, -0.365113,
		-0.937479, -0.346534, 0.032363,
		28.820503, 40.558727, 25.178310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116461, 41.353653, 25.539511>,  <29.476740, 40.801304, 25.155657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116461, 41.353653, 25.539511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835546, 41.068897, 25.540075>,  <28.666998, 40.898045, 25.540415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835546, 41.068897, 25.540075>,  <29.116461, 41.353653, 25.539511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835546, 41.068897, 25.540075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389785, 0.386185, 0.836019,
		-0.595701, 0.586575, -0.548698,
		-0.702288, -0.711892, 0.001413,
		28.624861, 40.855331, 25.540499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490692, 41.627617, 25.847143>,  <29.116461, 41.353653, 25.539511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490692, 41.627617, 25.847143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.490963, 41.228382, 25.871887>,  <28.491125, 40.988842, 25.886734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.490963, 41.228382, 25.871887>,  <28.490692, 41.627617, 25.847143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490963, 41.228382, 25.871887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154698, 0.061009, 0.986076,
		-0.987961, -0.010239, -0.154361,
		0.000679, -0.998085, 0.061859,
		28.491167, 40.928955, 25.890446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920546, 41.540348, 26.197548>,  <28.490692, 41.627617, 25.847143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920546, 41.540348, 26.197548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145008, 41.211449, 26.235523>,  <28.279686, 41.014111, 26.258308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145008, 41.211449, 26.235523>,  <27.920546, 41.540348, 26.197548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145008, 41.211449, 26.235523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171836, -0.003525, 0.985119,
		-0.809678, -0.569118, -0.143270,
		0.561155, -0.822248, 0.094940,
		28.313354, 40.964775, 26.264006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468821, 41.136501, 26.542744>,  <27.920546, 41.540348, 26.197548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468821, 41.136501, 26.542744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.836966, 40.991512, 26.601465>,  <28.057852, 40.904518, 26.636698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.836966, 40.991512, 26.601465>,  <27.468821, 41.136501, 26.542744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836966, 40.991512, 26.601465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094503, 0.158128, 0.982886,
		-0.379479, -0.918484, 0.111281,
		0.920361, -0.362468, 0.146806,
		28.113073, 40.882771, 26.645508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355301, 40.737469, 27.129448>,  <27.468821, 41.136501, 26.542744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355301, 40.737469, 27.129448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.749422, 40.804226, 27.144012>,  <27.985895, 40.844280, 27.152750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.749422, 40.804226, 27.144012>,  <27.355301, 40.737469, 27.129448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749422, 40.804226, 27.144012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050926, 0.083542, 0.995202,
		0.163052, -0.982429, 0.090813,
		0.985302, 0.166895, 0.036409,
		28.045013, 40.854294, 27.154936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696487, 40.333694, 27.688036>,  <27.355301, 40.737469, 27.129448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696487, 40.333694, 27.688036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.996922, 40.595749, 27.655369>,  <28.177183, 40.752979, 27.635769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.996922, 40.595749, 27.655369>,  <27.696487, 40.333694, 27.688036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996922, 40.595749, 27.655369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104017, 0.004729, 0.994564,
		0.651959, -0.755498, -0.064594,
		0.751086, 0.655134, -0.081668,
		28.222248, 40.792290, 27.630869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979795, 40.173061, 28.216822>,  <27.696487, 40.333694, 27.688036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979795, 40.173061, 28.216822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.151678, 40.522434, 28.125198>,  <28.254808, 40.732059, 28.070225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.151678, 40.522434, 28.125198>,  <27.979795, 40.173061, 28.216822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151678, 40.522434, 28.125198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101496, 0.205347, 0.973412,
		0.897246, -0.441531, -0.000411,
		0.429707, 0.873432, -0.229060,
		28.280590, 40.784462, 28.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597126, 40.055447, 28.636835>,  <27.979795, 40.173061, 28.216822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597126, 40.055447, 28.636835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.550148, 40.441696, 28.544069>,  <28.521961, 40.673447, 28.488409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.550148, 40.441696, 28.544069>,  <28.597126, 40.055447, 28.636835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550148, 40.441696, 28.544069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286980, 0.256570, 0.922938,
		0.950709, 0.041841, -0.307247,
		-0.117447, 0.965619, -0.231917,
		28.514914, 40.731380, 28.474495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193674, 40.356911, 28.795872>,  <28.597126, 40.055447, 28.636835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193674, 40.356911, 28.795872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.916201, 40.643196, 28.828245>,  <28.749716, 40.814968, 28.847670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.916201, 40.643196, 28.828245>,  <29.193674, 40.356911, 28.795872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916201, 40.643196, 28.828245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364770, 0.252190, 0.896294,
		0.621083, 0.651268, -0.436012,
		-0.693685, 0.715717, 0.080932,
		28.708096, 40.857910, 28.852526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543793, 40.841259, 29.202646>,  <29.193674, 40.356911, 28.795872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543793, 40.841259, 29.202646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159956, 40.951775, 29.181299>,  <28.929653, 41.018085, 29.168491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159956, 40.951775, 29.181299>,  <29.543793, 40.841259, 29.202646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159956, 40.951775, 29.181299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029380, 0.286983, 0.957485,
		0.279859, 0.917227, -0.283504,
		-0.959591, 0.276291, -0.053366,
		28.872078, 41.034660, 29.165289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492016, 41.564651, 29.394236>,  <29.543793, 40.841259, 29.202646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492016, 41.564651, 29.394236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134787, 41.396534, 29.458456>,  <28.920450, 41.295662, 29.496988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134787, 41.396534, 29.458456>,  <29.492016, 41.564651, 29.394236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134787, 41.396534, 29.458456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036663, 0.423642, 0.905088,
		-0.448417, 0.802422, -0.393752,
		-0.893072, -0.420293, 0.160549,
		28.866865, 41.270447, 29.506620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998238, 42.074398, 29.446856>,  <29.492016, 41.564651, 29.394236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998238, 42.074398, 29.446856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.864426, 41.759159, 29.653540>,  <28.784138, 41.570015, 29.777550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.864426, 41.759159, 29.653540>,  <28.998238, 42.074398, 29.446856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864426, 41.759159, 29.653540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025670, 0.540478, 0.840966,
		-0.942036, 0.294592, -0.160575,
		-0.334530, -0.788098, 0.516712,
		28.764067, 41.522728, 29.808554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091377, 42.707851, 29.190063>,  <28.998238, 42.074398, 29.446856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091377, 42.707851, 29.190063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.079916, 43.074303, 29.350008>,  <29.073040, 43.294174, 29.445974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.079916, 43.074303, 29.350008>,  <29.091377, 42.707851, 29.190063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079916, 43.074303, 29.350008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773457, -0.273721, 0.571701,
		0.633201, -0.292896, 0.716427,
		-0.028652, 0.916127, 0.399863,
		29.071320, 43.349140, 29.469967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560398, 43.055424, 28.870203>,  <29.091377, 42.707851, 29.190063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560398, 43.055424, 28.870203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605093, 43.452824, 28.878918>,  <29.631910, 43.691265, 28.884146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605093, 43.452824, 28.878918>,  <29.560398, 43.055424, 28.870203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605093, 43.452824, 28.878918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059932, 0.015147, -0.998087,
		-0.991929, 0.112828, -0.057850,
		0.111736, 0.993499, 0.021787,
		29.638615, 43.750874, 28.885454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067986, 43.546509, 28.419868>,  <29.560398, 43.055424, 28.870203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067986, 43.546509, 28.419868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419083, 43.730843, 28.472330>,  <29.629742, 43.841442, 28.503807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419083, 43.730843, 28.472330>,  <29.067986, 43.546509, 28.419868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419083, 43.730843, 28.472330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106111, 0.079968, -0.991134,
		-0.467233, 0.883878, 0.021292,
		0.877744, 0.460831, 0.131153,
		29.682405, 43.869091, 28.511677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049446, 44.148796, 27.874544>,  <29.067986, 43.546509, 28.419868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049446, 44.148796, 27.874544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409161, 44.025517, 27.998671>,  <29.624989, 43.951550, 28.073147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409161, 44.025517, 27.998671>,  <29.049446, 44.148796, 27.874544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409161, 44.025517, 27.998671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306841, -0.061002, -0.949804,
		0.311660, 0.949364, 0.039710,
		0.899287, -0.308201, 0.310316,
		29.678947, 43.933056, 28.091764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488495, 44.491741, 27.465317>,  <29.049446, 44.148796, 27.874544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488495, 44.491741, 27.465317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.693096, 44.183933, 27.618263>,  <29.815857, 43.999249, 27.710032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.693096, 44.183933, 27.618263>,  <29.488495, 44.491741, 27.465317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693096, 44.183933, 27.618263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307676, -0.251464, -0.917661,
		0.802308, 0.587033, 0.108137,
		0.511505, -0.769518, 0.382368,
		29.846548, 43.953079, 27.732973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298981, 44.545429, 27.201485>,  <29.488495, 44.491741, 27.465317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298981, 44.545429, 27.201485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212992, 44.170414, 27.310884>,  <30.161398, 43.945404, 27.376524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212992, 44.170414, 27.310884>,  <30.298981, 44.545429, 27.201485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212992, 44.170414, 27.310884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216943, -0.318894, -0.922628,
		0.952220, -0.139004, 0.271946,
		-0.214971, -0.937542, 0.273501,
		30.148500, 43.889153, 27.392935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787737, 44.143238, 26.839323>,  <30.298981, 44.545429, 27.201485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787737, 44.143238, 26.839323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.486652, 43.904217, 26.949852>,  <30.306002, 43.760803, 27.016169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.486652, 43.904217, 26.949852>,  <30.787737, 44.143238, 26.839323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486652, 43.904217, 26.949852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091123, -0.510238, -0.855192,
		0.652017, -0.618532, 0.438512,
		-0.752709, -0.597558, 0.276322,
		30.260839, 43.724949, 27.032749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010153, 43.521503, 26.622887>,  <30.787737, 44.143238, 26.839323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010153, 43.521503, 26.622887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613468, 43.508823, 26.672697>,  <30.375458, 43.501217, 26.702583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613468, 43.508823, 26.672697>,  <31.010153, 43.521503, 26.622887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613468, 43.508823, 26.672697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090290, -0.517605, -0.850842,
		0.091427, -0.855032, 0.510452,
		-0.991710, -0.031701, 0.124524,
		30.315954, 43.499313, 26.710054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890198, 42.871216, 26.520212>,  <31.010153, 43.521503, 26.622887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890198, 42.871216, 26.520212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550760, 43.073032, 26.456545>,  <30.347097, 43.194122, 26.418344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550760, 43.073032, 26.456545>,  <30.890198, 42.871216, 26.520212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550760, 43.073032, 26.456545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143576, -0.509193, -0.848592,
		-0.509193, -0.697255, 0.504537,
		0.848592, -0.504537, 0.159169,
		30.296183, 43.224392, 26.408794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656418, 42.462471, 26.075016>,  <30.890198, 42.871216, 26.520212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656418, 42.462471, 26.075016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397936, 42.764412, 26.030092>,  <30.242847, 42.945576, 26.003138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397936, 42.764412, 26.030092>,  <30.656418, 42.462471, 26.075016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397936, 42.764412, 26.030092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141014, -0.262732, -0.954509,
		-0.750023, -0.600971, 0.276224,
		-0.646205, 0.754855, -0.112309,
		30.204075, 42.990868, 25.996399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978760, 42.166817, 25.705433>,  <30.656418, 42.462471, 26.075016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978760, 42.166817, 25.705433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973730, 42.559418, 25.629017>,  <29.970713, 42.794979, 25.583166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973730, 42.559418, 25.629017>,  <29.978760, 42.166817, 25.705433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973730, 42.559418, 25.629017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240648, -0.188413, -0.952150,
		-0.970531, 0.034000, 0.238566,
		-0.012576, 0.981501, -0.191042,
		29.969957, 42.853867, 25.571705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293846, 42.267818, 25.300159>,  <29.978760, 42.166817, 25.705433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293846, 42.267818, 25.300159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539148, 42.577694, 25.238493>,  <29.686331, 42.763618, 25.201494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539148, 42.577694, 25.238493>,  <29.293846, 42.267818, 25.300159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539148, 42.577694, 25.238493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281982, 0.032403, -0.958872,
		-0.737836, 0.631507, 0.238321,
		0.613257, 0.774692, -0.154165,
		29.723125, 42.810101, 25.192244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914104, 42.620754, 24.850531>,  <29.293846, 42.267818, 25.300159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914104, 42.620754, 24.850531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272900, 42.792316, 24.807718>,  <29.488176, 42.895252, 24.782030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272900, 42.792316, 24.807718>,  <28.914104, 42.620754, 24.850531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272900, 42.792316, 24.807718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169775, 0.110694, -0.979246,
		-0.408155, 0.896542, 0.172108,
		0.896987, 0.428904, -0.107030,
		29.541996, 42.920986, 24.775610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773924, 43.285019, 24.480013>,  <28.914104, 42.620754, 24.850531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773924, 43.285019, 24.480013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160080, 43.188789, 24.439720>,  <29.391773, 43.131050, 24.415545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160080, 43.188789, 24.439720>,  <28.773924, 43.285019, 24.480013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160080, 43.188789, 24.439720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043559, 0.232069, -0.971723,
		0.257147, 0.942480, 0.213558,
		0.965390, -0.240574, -0.100730,
		29.449697, 43.116619, 24.409502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994171, 43.812996, 24.080990>,  <28.773924, 43.285019, 24.480013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994171, 43.812996, 24.080990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250227, 43.510574, 24.026442>,  <29.403860, 43.329121, 23.993713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250227, 43.510574, 24.026442>,  <28.994171, 43.812996, 24.080990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250227, 43.510574, 24.026442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208325, 0.000027, -0.978060,
		0.739473, 0.654505, -0.157488,
		0.640141, -0.756058, -0.136370,
		29.442268, 43.283756, 23.985531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483795, 44.034267, 23.624834>,  <28.994171, 43.812996, 24.080990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483795, 44.034267, 23.624834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.473738, 43.634598, 23.612032>,  <29.467703, 43.394798, 23.604351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.473738, 43.634598, 23.612032>,  <29.483795, 44.034267, 23.624834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473738, 43.634598, 23.612032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136520, 0.035148, -0.990014,
		0.990318, -0.020523, -0.137291,
		-0.025143, -0.999172, -0.032006,
		29.466194, 43.334846, 23.602430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127592, 43.807392, 23.269699>,  <29.483795, 44.034267, 23.624834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127592, 43.807392, 23.269699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837425, 43.535686, 23.225214>,  <29.663324, 43.372662, 23.198523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837425, 43.535686, 23.225214>,  <30.127592, 43.807392, 23.269699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837425, 43.535686, 23.225214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124573, 0.029341, -0.991776,
		0.676941, -0.733308, 0.063334,
		-0.725419, -0.679264, -0.111212,
		29.619799, 43.331909, 23.191851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359043, 43.499981, 22.615078>,  <30.127592, 43.807392, 23.269699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359043, 43.499981, 22.615078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996572, 43.336781, 22.659582>,  <29.779089, 43.238861, 22.686285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996572, 43.336781, 22.659582>,  <30.359043, 43.499981, 22.615078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996572, 43.336781, 22.659582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075386, -0.103034, -0.991817,
		0.416122, -0.907151, 0.062610,
		-0.906178, -0.407997, 0.111261,
		29.724718, 43.214382, 22.692961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380177, 42.859619, 22.166136>,  <30.359043, 43.499981, 22.615078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380177, 42.859619, 22.166136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.005981, 42.989948, 22.220840>,  <29.781464, 43.068146, 22.253662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.005981, 42.989948, 22.220840>,  <30.380177, 42.859619, 22.166136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005981, 42.989948, 22.220840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132767, 0.034574, -0.990544,
		-0.327466, -0.944800, 0.010915,
		-0.935488, 0.325818, 0.136760,
		29.725334, 43.087692, 22.261869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090874, 42.523552, 21.615692>,  <30.380177, 42.859619, 22.166136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090874, 42.523552, 21.615692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844053, 42.803337, 21.759916>,  <29.695961, 42.971207, 21.846451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844053, 42.803337, 21.759916>,  <30.090874, 42.523552, 21.615692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844053, 42.803337, 21.759916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319936, 0.195621, -0.927024,
		-0.718951, -0.687376, 0.103075,
		-0.617050, 0.699462, 0.360558,
		29.658937, 43.013176, 21.868084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409161, 42.404137, 21.381187>,  <30.090874, 42.523552, 21.615692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409161, 42.404137, 21.381187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.426029, 42.792023, 21.477415>,  <29.436150, 43.024754, 21.535152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.426029, 42.792023, 21.477415>,  <29.409161, 42.404137, 21.381187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426029, 42.792023, 21.477415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484946, 0.230384, -0.843653,
		-0.873527, -0.081086, 0.479975,
		0.042170, 0.969715, 0.240569,
		29.438681, 43.082939, 21.549585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911350, 42.657951, 21.153862>,  <29.409161, 42.404137, 21.381187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911350, 42.657951, 21.153862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.085857, 43.014050, 21.206209>,  <29.190561, 43.227711, 21.237617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.085857, 43.014050, 21.206209>,  <28.911350, 42.657951, 21.153862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085857, 43.014050, 21.206209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393599, 0.319591, -0.861941,
		-0.809166, 0.324528, 0.489828,
		0.436269, 0.890249, 0.130868,
		29.216738, 43.281124, 21.245470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446150, 43.126057, 20.822523>,  <28.911350, 42.657951, 21.153862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446150, 43.126057, 20.822523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788527, 43.330513, 20.853756>,  <28.993954, 43.453186, 20.872496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788527, 43.330513, 20.853756>,  <28.446150, 43.126057, 20.822523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788527, 43.330513, 20.853756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132854, 0.363341, -0.922135,
		-0.499712, 0.778921, 0.378906,
		0.855943, 0.511141, 0.078083,
		29.045309, 43.483856, 20.877180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312010, 43.852840, 20.474741>,  <28.446150, 43.126057, 20.822523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312010, 43.852840, 20.474741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708685, 43.803047, 20.487785>,  <28.946690, 43.773170, 20.495611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708685, 43.803047, 20.487785>,  <28.312010, 43.852840, 20.474741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708685, 43.803047, 20.487785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073089, 0.336297, -0.938916,
		0.105911, 0.933493, 0.342599,
		0.991686, -0.124481, 0.032611,
		29.006191, 43.765701, 20.497568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586674, 44.480080, 20.298191>,  <28.312010, 43.852840, 20.474741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586674, 44.480080, 20.298191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.832626, 44.182076, 20.194750>,  <28.980198, 44.003273, 20.132685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.832626, 44.182076, 20.194750>,  <28.586674, 44.480080, 20.298191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832626, 44.182076, 20.194750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004459, 0.324629, -0.945831,
		0.788606, 0.582728, 0.196287,
		0.614883, -0.745013, -0.258602,
		29.017092, 43.958572, 20.117168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166517, 44.770695, 19.767612>,  <28.586674, 44.480080, 20.298191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166517, 44.770695, 19.767612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.147997, 44.373783, 19.721577>,  <29.136885, 44.135635, 19.693954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.147997, 44.373783, 19.721577>,  <29.166517, 44.770695, 19.767612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147997, 44.373783, 19.721577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142415, 0.107479, -0.983954,
		0.988724, -0.061947, 0.136339,
		-0.046300, -0.992276, -0.115089,
		29.134108, 44.076099, 19.687050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743395, 44.733391, 19.361477>,  <29.166517, 44.770695, 19.767612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743395, 44.733391, 19.361477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531437, 44.395916, 19.327045>,  <29.404263, 44.193432, 19.306387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531437, 44.395916, 19.327045>,  <29.743395, 44.733391, 19.361477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531437, 44.395916, 19.327045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221763, -0.039879, -0.974285,
		0.818554, -0.535360, 0.208229,
		-0.529896, -0.843682, -0.086080,
		29.372467, 44.142811, 19.301222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120499, 44.295994, 18.915876>,  <29.743395, 44.733391, 19.361477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120499, 44.295994, 18.915876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.760990, 44.121231, 18.901306>,  <29.545286, 44.016373, 18.892565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.760990, 44.121231, 18.901306>,  <30.120499, 44.295994, 18.915876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760990, 44.121231, 18.901306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030105, 0.021379, -0.999318,
		0.437386, -0.899253, -0.006062,
		-0.898769, -0.436905, -0.036423,
		29.491360, 43.990158, 18.890379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646227, 44.033783, 19.264364>,  <30.120499, 44.295994, 18.915876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646227, 44.033783, 19.264364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040192, 44.097267, 19.236778>,  <31.276571, 44.135357, 19.220226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040192, 44.097267, 19.236778>,  <30.646227, 44.033783, 19.264364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040192, 44.097267, 19.236778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061876, 0.049192, 0.996871,
		0.161607, -0.986099, 0.038629,
		0.984914, 0.158711, -0.068966,
		31.335667, 44.144878, 19.216089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885868, 43.674038, 19.823090>,  <30.646227, 44.033783, 19.264364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885868, 43.674038, 19.823090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139812, 43.964771, 19.718269>,  <31.292179, 44.139210, 19.655376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139812, 43.964771, 19.718269>,  <30.885868, 43.674038, 19.823090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139812, 43.964771, 19.718269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144801, 0.221229, 0.964412,
		0.758936, -0.650213, 0.035204,
		0.634861, 0.726830, -0.262050,
		31.330271, 44.182819, 19.639654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429953, 43.470432, 20.148783>,  <30.885868, 43.674038, 19.823090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429953, 43.470432, 20.148783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484489, 43.858604, 20.069107>,  <31.517212, 44.091507, 20.021301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484489, 43.858604, 20.069107>,  <31.429953, 43.470432, 20.148783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484489, 43.858604, 20.069107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264612, 0.158087, 0.951309,
		0.954668, -0.182411, -0.235233,
		0.136342, 0.970430, -0.199189,
		31.525393, 44.149734, 20.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236736, 43.692425, 20.155863>,  <31.429953, 43.470432, 20.148783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236736, 43.692425, 20.155863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011841, 44.018955, 20.208775>,  <31.876904, 44.214874, 20.240522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011841, 44.018955, 20.208775>,  <32.236736, 43.692425, 20.155863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011841, 44.018955, 20.208775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385240, 0.117002, 0.915369,
		0.731763, 0.565615, -0.380265,
		-0.562239, 0.816327, 0.132280,
		31.843170, 44.263855, 20.248459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800251, 44.016716, 20.547764>,  <32.236736, 43.692425, 20.155863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800251, 44.016716, 20.547764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442795, 44.193932, 20.576368>,  <32.228321, 44.300262, 20.593531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442795, 44.193932, 20.576368>,  <32.800251, 44.016716, 20.547764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442795, 44.193932, 20.576368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131288, 0.105712, 0.985692,
		0.429144, 0.890246, -0.152635,
		-0.893644, 0.443043, 0.071513,
		32.174702, 44.326843, 20.597822>
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
