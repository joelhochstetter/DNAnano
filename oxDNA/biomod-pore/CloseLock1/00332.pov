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
	<24.141626, 35.354046, 35.013687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332207, 35.058979, 34.822338>,  <24.446556, 34.881939, 34.707527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332207, 35.058979, 34.822338>,  <24.141626, 35.354046, 35.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332207, 35.058979, 34.822338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068209, 0.573473, -0.816380,
		0.876550, 0.356337, 0.323549,
		0.476453, -0.737667, -0.478372,
		24.475143, 34.837681, 34.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766369, 35.652664, 35.358017>,  <24.141626, 35.354046, 35.013687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766369, 35.652664, 35.358017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770918, 35.264957, 35.456314>,  <24.773647, 35.032333, 35.515293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770918, 35.264957, 35.456314>,  <24.766369, 35.652664, 35.358017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770918, 35.264957, 35.456314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944391, 0.091178, 0.315930,
		-0.328627, 0.228487, 0.916405,
		0.011370, -0.969268, 0.245745,
		24.774328, 34.974178, 35.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098751, 35.563564, 36.141533>,  <24.766369, 35.652664, 35.358017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098751, 35.563564, 36.141533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134758, 35.293812, 35.848385>,  <25.156363, 35.131958, 35.672497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134758, 35.293812, 35.848385>,  <25.098751, 35.563564, 36.141533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134758, 35.293812, 35.848385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989140, -0.025312, 0.144783,
		-0.116190, -0.737945, 0.664783,
		0.090015, -0.674386, -0.732872,
		25.161762, 35.091496, 35.628525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582464, 35.029480, 36.375046>,  <25.098751, 35.563564, 36.141533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582464, 35.029480, 36.375046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581028, 35.005882, 35.975746>,  <25.580166, 34.991722, 35.736164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581028, 35.005882, 35.975746>,  <25.582464, 35.029480, 36.375046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581028, 35.005882, 35.975746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998345, 0.057083, -0.006963,
		0.057394, -0.996625, 0.058695,
		-0.003589, -0.058998, -0.998252,
		25.579950, 34.988182, 35.676270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344633, 34.269367, 36.362232>,  <25.582464, 35.029480, 36.375046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344633, 34.269367, 36.362232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651930, 34.055458, 36.502983>,  <25.836308, 33.927113, 36.587433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651930, 34.055458, 36.502983>,  <25.344633, 34.269367, 36.362232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651930, 34.055458, 36.502983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148145, -0.386231, -0.910428,
		0.622779, 0.751559, -0.217495,
		0.768244, -0.534775, 0.351876,
		25.882402, 33.895027, 36.608547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721682, 34.386917, 35.831810>,  <25.344633, 34.269367, 36.362232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721682, 34.386917, 35.831810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880636, 34.070625, 36.018070>,  <25.976009, 33.880848, 36.129826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880636, 34.070625, 36.018070>,  <25.721682, 34.386917, 35.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880636, 34.070625, 36.018070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327028, -0.352086, -0.876977,
		0.857402, 0.500776, 0.118678,
		0.397384, -0.790733, 0.465647,
		25.999851, 33.833405, 36.157764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369783, 34.374245, 35.590420>,  <25.721682, 34.386917, 35.831810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369783, 34.374245, 35.590420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299913, 34.006618, 35.731731>,  <26.257992, 33.786041, 35.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299913, 34.006618, 35.731731>,  <26.369783, 34.374245, 35.590420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299913, 34.006618, 35.731731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298617, -0.391343, -0.870448,
		0.938252, -0.046549, 0.342806,
		-0.174673, -0.919067, 0.353278,
		26.247511, 33.730900, 35.837715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716152, 33.966942, 35.103867>,  <26.369783, 34.374245, 35.590420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716152, 33.966942, 35.103867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471695, 33.700653, 35.275131>,  <26.325020, 33.540882, 35.377892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471695, 33.700653, 35.275131>,  <26.716152, 33.966942, 35.103867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471695, 33.700653, 35.275131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057633, -0.576928, -0.814759,
		0.789419, -0.473258, 0.390953,
		-0.611143, -0.665718, 0.428163,
		26.288353, 33.500938, 35.403580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999599, 33.294395, 35.000557>,  <26.716152, 33.966942, 35.103867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999599, 33.294395, 35.000557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608896, 33.251621, 35.074867>,  <26.374475, 33.225956, 35.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608896, 33.251621, 35.074867>,  <26.999599, 33.294395, 35.000557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608896, 33.251621, 35.074867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040542, -0.758859, -0.649991,
		0.210487, -0.642414, 0.736884,
		-0.976756, -0.106940, 0.185775,
		26.315870, 33.219540, 35.130600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010317, 32.593864, 35.019646>,  <26.999599, 33.294395, 35.000557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010317, 32.593864, 35.019646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641441, 32.717846, 34.927132>,  <26.420116, 32.792236, 34.871624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641441, 32.717846, 34.927132>,  <27.010317, 32.593864, 35.019646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641441, 32.717846, 34.927132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103145, -0.773501, -0.625345,
		-0.372727, -0.552832, 0.745286,
		-0.922191, 0.309955, -0.231283,
		26.364784, 32.810833, 34.857746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570406, 31.982225, 34.825989>,  <27.010317, 32.593864, 35.019646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570406, 31.982225, 34.825989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333557, 32.256931, 34.657352>,  <26.191448, 32.421757, 34.556168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333557, 32.256931, 34.657352>,  <26.570406, 31.982225, 34.825989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333557, 32.256931, 34.657352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123648, -0.594404, -0.794604,
		-0.796306, -0.418373, 0.436876,
		-0.592122, 0.686767, -0.421596,
		26.155920, 32.462959, 34.530872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879894, 31.677757, 34.701973>,  <26.570406, 31.982225, 34.825989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879894, 31.677757, 34.701973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925989, 31.970390, 34.433193>,  <25.953646, 32.145969, 34.271927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925989, 31.970390, 34.433193>,  <25.879894, 31.677757, 34.701973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925989, 31.970390, 34.433193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392065, -0.588034, -0.707461,
		-0.912691, 0.344972, 0.219064,
		0.115237, 0.731581, -0.671945,
		25.960560, 32.189865, 34.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311205, 31.743437, 34.235134>,  <25.879894, 31.677757, 34.701973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311205, 31.743437, 34.235134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599051, 31.911285, 34.013840>,  <25.771757, 32.011993, 33.881062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599051, 31.911285, 34.013840>,  <25.311205, 31.743437, 34.235134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599051, 31.911285, 34.013840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183719, -0.653290, -0.734479,
		-0.669629, 0.630181, -0.393024,
		0.719614, 0.419623, -0.553239,
		25.814934, 32.037170, 33.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101019, 31.661314, 33.641201>,  <25.311205, 31.743437, 34.235134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101019, 31.661314, 33.641201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471664, 31.767366, 33.534546>,  <25.694052, 31.830997, 33.470554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471664, 31.767366, 33.534546>,  <25.101019, 31.661314, 33.641201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471664, 31.767366, 33.534546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031273, -0.652311, -0.757306,
		-0.374716, 0.710068, -0.596147,
		0.926612, 0.265131, -0.266637,
		25.749647, 31.846907, 33.454556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087263, 31.708397, 32.900455>,  <25.101019, 31.661314, 33.641201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087263, 31.708397, 32.900455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477541, 31.660223, 32.973686>,  <25.711708, 31.631319, 33.017624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477541, 31.660223, 32.973686>,  <25.087263, 31.708397, 32.900455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477541, 31.660223, 32.973686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030769, -0.751877, -0.658585,
		0.216971, 0.648210, -0.729896,
		0.975693, -0.120435, 0.183080,
		25.770248, 31.624092, 33.028610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256695, 31.524069, 32.133972>,  <25.087263, 31.708397, 32.900455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256695, 31.524069, 32.133972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556095, 31.434048, 32.383484>,  <25.735735, 31.380035, 32.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556095, 31.434048, 32.383484>,  <25.256695, 31.524069, 32.133972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556095, 31.434048, 32.383484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431432, -0.549081, -0.715805,
		0.503598, 0.804898, -0.313893,
		0.748502, -0.225055, 0.623775,
		25.780645, 31.366531, 32.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867134, 31.615511, 31.784866>,  <25.256695, 31.524069, 32.133972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867134, 31.615511, 31.784866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951239, 31.345037, 32.067303>,  <26.001701, 31.182755, 32.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951239, 31.345037, 32.067303>,  <25.867134, 31.615511, 31.784866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951239, 31.345037, 32.067303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431572, -0.583859, -0.687643,
		0.877231, 0.449316, 0.169057,
		0.210264, -0.676183, 0.706092,
		26.014318, 31.142183, 32.279129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412848, 31.297327, 31.468359>,  <25.867134, 31.615511, 31.784866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412848, 31.297327, 31.468359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313143, 31.036890, 31.755119>,  <26.253319, 30.880629, 31.927176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313143, 31.036890, 31.755119>,  <26.412848, 31.297327, 31.468359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313143, 31.036890, 31.755119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002082, -0.740625, -0.671916,
		0.968434, -0.165992, 0.185966,
		-0.249264, -0.651093, 0.716900,
		26.238363, 30.841562, 31.970190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884609, 30.685667, 31.430611>,  <26.412848, 31.297327, 31.468359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884609, 30.685667, 31.430611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557945, 30.553467, 31.619856>,  <26.361946, 30.474148, 31.733404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557945, 30.553467, 31.619856>,  <26.884609, 30.685667, 31.430611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557945, 30.553467, 31.619856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029897, -0.794457, -0.606583,
		0.576345, -0.509517, 0.638921,
		-0.816660, -0.330500, 0.473114,
		26.312948, 30.454317, 31.761789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949575, 29.953087, 31.519985>,  <26.884609, 30.685667, 31.430611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949575, 29.953087, 31.519985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553215, 30.005365, 31.532846>,  <26.315399, 30.036732, 31.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553215, 30.005365, 31.532846>,  <26.949575, 29.953087, 31.519985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553215, 30.005365, 31.532846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124958, -0.804563, -0.580572,
		-0.050008, -0.579307, 0.813574,
		-0.990901, 0.130696, 0.032155,
		26.255945, 30.044575, 31.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642071, 29.247393, 31.514088>,  <26.949575, 29.953087, 31.519985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642071, 29.247393, 31.514088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312426, 29.464796, 31.450291>,  <26.114639, 29.595238, 31.412012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312426, 29.464796, 31.450291>,  <26.642071, 29.247393, 31.514088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312426, 29.464796, 31.450291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431976, -0.785199, -0.443687,
		-0.366379, -0.296752, 0.881875,
		-0.824113, 0.543507, -0.159491,
		26.065191, 29.627848, 31.402443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051098, 28.926392, 31.796329>,  <26.642071, 29.247393, 31.514088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051098, 28.926392, 31.796329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945587, 29.157406, 31.487299>,  <25.882280, 29.296015, 31.301882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945587, 29.157406, 31.487299>,  <26.051098, 28.926392, 31.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945587, 29.157406, 31.487299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409522, -0.792226, -0.452405,
		-0.873335, 0.197053, 0.445484,
		-0.263776, 0.577537, -0.772576,
		25.866453, 29.330667, 31.255526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355164, 28.700237, 31.556036>,  <26.051098, 28.926392, 31.796329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355164, 28.700237, 31.556036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500122, 28.896921, 31.239330>,  <25.587097, 29.014931, 31.049307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500122, 28.896921, 31.239330>,  <25.355164, 28.700237, 31.556036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500122, 28.896921, 31.239330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293155, -0.746258, -0.597627,
		-0.884719, 0.448689, -0.126296,
		0.362398, 0.491708, -0.791764,
		25.608841, 29.044434, 31.001801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716015, 28.764763, 31.105400>,  <25.355164, 28.700237, 31.556036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716015, 28.764763, 31.105400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049595, 28.831718, 30.895063>,  <25.249743, 28.871891, 30.768862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049595, 28.831718, 30.895063>,  <24.716015, 28.764763, 31.105400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049595, 28.831718, 30.895063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271952, -0.704485, -0.655548,
		-0.480180, 0.689698, -0.541982,
		0.833948, 0.167388, -0.525843,
		25.299780, 28.881935, 30.737310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659960, 28.602871, 30.479477>,  <24.716015, 28.764763, 31.105400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659960, 28.602871, 30.479477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059719, 28.607706, 30.466444>,  <25.299574, 28.610607, 30.458624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059719, 28.607706, 30.466444>,  <24.659960, 28.602871, 30.479477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059719, 28.607706, 30.466444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008865, -0.817827, -0.575396,
		-0.033602, 0.575337, -0.817226,
		0.999396, 0.012089, -0.032581,
		25.359537, 28.611332, 30.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863750, 28.671831, 29.812466>,  <24.659960, 28.602871, 30.479477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863750, 28.671831, 29.812466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152153, 28.483850, 30.016150>,  <25.325195, 28.371061, 30.138359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152153, 28.483850, 30.016150>,  <24.863750, 28.671831, 29.812466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152153, 28.483850, 30.016150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048254, -0.767134, -0.639670,
		0.691246, 0.436635, -0.575786,
		0.721007, -0.469953, 0.509209,
		25.368456, 28.342865, 30.168913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335457, 28.308475, 29.415388>,  <24.863750, 28.671831, 29.812466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335457, 28.308475, 29.415388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663830, 28.118469, 29.542152>,  <24.860853, 28.004465, 29.618210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663830, 28.118469, 29.542152>,  <24.335457, 28.308475, 29.415388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663830, 28.118469, 29.542152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549136, -0.808917, 0.210009,
		0.156596, -0.346430, -0.924913,
		0.820931, -0.475016, 0.316910,
		24.910109, 27.975964, 29.637226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.502928, 27.706247, 29.036352>,  <24.335457, 28.308475, 29.415388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.502928, 27.706247, 29.036352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621956, 27.682699, 29.417505>,  <24.693373, 27.668571, 29.646196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621956, 27.682699, 29.417505>,  <24.502928, 27.706247, 29.036352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621956, 27.682699, 29.417505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608390, -0.780877, 0.141749,
		0.735740, -0.621904, -0.268180,
		0.297570, -0.058868, 0.952883,
		24.711227, 27.665039, 29.703371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753839, 26.977224, 29.159462>,  <24.502928, 27.706247, 29.036352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753839, 26.977224, 29.159462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615122, 27.193758, 29.465845>,  <24.531891, 27.323679, 29.649675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615122, 27.193758, 29.465845>,  <24.753839, 26.977224, 29.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615122, 27.193758, 29.465845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639351, -0.733948, 0.229240,
		0.686268, -0.410216, 0.600633,
		-0.346795, 0.541335, 0.765956,
		24.511084, 27.356159, 29.695633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749384, 26.533176, 29.770538>,  <24.753839, 26.977224, 29.159462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749384, 26.533176, 29.770538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480156, 26.829008, 29.771233>,  <24.318619, 27.006508, 29.771648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480156, 26.829008, 29.771233>,  <24.749384, 26.533176, 29.770538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480156, 26.829008, 29.771233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698546, -0.636491, 0.326975,
		0.242927, 0.218865, 0.945032,
		-0.673068, 0.739579, 0.001734,
		24.278236, 27.050882, 29.771753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516117, 26.482815, 30.537382>,  <24.749384, 26.533176, 29.770538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516117, 26.482815, 30.537382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834143, 26.264189, 30.642559>,  <25.024958, 26.133013, 30.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834143, 26.264189, 30.642559>,  <24.516117, 26.482815, 30.537382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834143, 26.264189, 30.642559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107832, 0.299237, 0.948066,
		-0.596861, -0.782128, 0.178976,
		0.795066, -0.546564, 0.262941,
		25.072662, 26.100220, 30.721441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329206, 26.098579, 31.105528>,  <24.516117, 26.482815, 30.537382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329206, 26.098579, 31.105528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716175, 26.197451, 31.083641>,  <24.948357, 26.256773, 31.070509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716175, 26.197451, 31.083641>,  <24.329206, 26.098579, 31.105528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716175, 26.197451, 31.083641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052181, 0.406189, 0.912298,
		0.247726, -0.879724, 0.405854,
		0.967424, 0.247178, -0.054719,
		25.006403, 26.271605, 31.067225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579576, 25.864092, 31.679399>,  <24.329206, 26.098579, 31.105528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579576, 25.864092, 31.679399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806868, 26.172218, 31.563656>,  <24.943241, 26.357094, 31.494209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806868, 26.172218, 31.563656>,  <24.579576, 25.864092, 31.679399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806868, 26.172218, 31.563656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097773, 0.285951, 0.953243,
		0.817044, -0.569949, 0.087168,
		0.568225, 0.770318, -0.289360,
		24.977335, 26.403315, 31.476849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375166, 25.886404, 31.881952>,  <24.579576, 25.864092, 31.679399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375166, 25.886404, 31.881952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210735, 26.247988, 31.834831>,  <25.112078, 26.464937, 31.806559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210735, 26.247988, 31.834831>,  <25.375166, 25.886404, 31.881952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210735, 26.247988, 31.834831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126985, 0.184749, 0.974548,
		0.902714, 0.385653, -0.190735,
		-0.411076, 0.903958, -0.117803,
		25.087412, 26.519175, 31.799490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861692, 26.384655, 32.149773>,  <25.375166, 25.886404, 31.881952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861692, 26.384655, 32.149773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484407, 26.512346, 32.186527>,  <25.258036, 26.588961, 32.208580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484407, 26.512346, 32.186527>,  <25.861692, 26.384655, 32.149773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484407, 26.512346, 32.186527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222165, 0.400546, 0.888935,
		0.246965, 0.858870, -0.448721,
		-0.943213, 0.319227, 0.091890,
		25.201443, 26.608114, 32.214096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873070, 27.058134, 32.323902>,  <25.861692, 26.384655, 32.149773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873070, 27.058134, 32.323902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519728, 26.957762, 32.482254>,  <25.307722, 26.897537, 32.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519728, 26.957762, 32.482254>,  <25.873070, 27.058134, 32.323902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519728, 26.957762, 32.482254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280775, 0.393004, 0.875622,
		-0.375304, 0.884636, -0.276706,
		-0.883353, -0.250932, 0.395880,
		25.254723, 26.882483, 32.601017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520784, 27.716530, 32.566502>,  <25.873070, 27.058134, 32.323902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520784, 27.716530, 32.566502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399734, 27.391045, 32.765011>,  <25.327105, 27.195753, 32.884117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399734, 27.391045, 32.765011>,  <25.520784, 27.716530, 32.566502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399734, 27.391045, 32.765011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214757, 0.449088, 0.867294,
		-0.928600, 0.369045, 0.038845,
		-0.302626, -0.813711, 0.496278,
		25.308947, 27.146931, 32.913895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039242, 27.953220, 33.013073>,  <25.520784, 27.716530, 32.566502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039242, 27.953220, 33.013073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189049, 27.608818, 33.150715>,  <25.278933, 27.402176, 33.233299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189049, 27.608818, 33.150715>,  <25.039242, 27.953220, 33.013073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189049, 27.608818, 33.150715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214236, 0.441423, 0.871349,
		-0.902131, -0.252615, 0.349778,
		0.374516, -0.861006, 0.344102,
		25.301403, 27.350515, 33.253944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757370, 27.933979, 33.784157>,  <25.039242, 27.953220, 33.013073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757370, 27.933979, 33.784157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067947, 27.684381, 33.748898>,  <25.254293, 27.534622, 33.727741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067947, 27.684381, 33.748898>,  <24.757370, 27.933979, 33.784157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067947, 27.684381, 33.748898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344517, 0.303176, 0.888477,
		-0.527680, -0.720220, 0.450375,
		0.776442, -0.623993, -0.088148,
		25.300880, 27.497183, 33.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757444, 27.620661, 34.458694>,  <24.757370, 27.933979, 33.784157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757444, 27.620661, 34.458694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116262, 27.594215, 34.283909>,  <25.331554, 27.578348, 34.179039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116262, 27.594215, 34.283909>,  <24.757444, 27.620661, 34.458694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116262, 27.594215, 34.283909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428863, 0.368945, 0.824595,
		0.106701, -0.927097, 0.359313,
		0.897046, -0.066111, -0.436964,
		25.385376, 27.574383, 34.152821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062115, 27.514641, 35.068916>,  <24.757444, 27.620661, 34.458694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062115, 27.514641, 35.068916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343857, 27.576372, 34.791767>,  <25.512901, 27.613411, 34.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343857, 27.576372, 34.791767>,  <25.062115, 27.514641, 35.068916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.343857, 27.576372, 34.791767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535568, 0.525087, 0.661401,
		0.465887, -0.836939, 0.287196,
		0.704355, 0.154325, -0.692869,
		25.555162, 27.622671, 34.583908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707872, 27.426950, 35.414642>,  <25.062115, 27.514641, 35.068916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707872, 27.426950, 35.414642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788954, 27.660099, 35.099892>,  <25.837603, 27.799988, 34.911041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788954, 27.660099, 35.099892>,  <25.707872, 27.426950, 35.414642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788954, 27.660099, 35.099892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673595, 0.500248, 0.544079,
		0.710760, -0.640322, -0.291217,
		0.202705, 0.582872, -0.786874,
		25.849766, 27.834961, 34.863831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451712, 27.625116, 35.418648>,  <25.707872, 27.426950, 35.414642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451712, 27.625116, 35.418648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311886, 27.907442, 35.172192>,  <26.227991, 28.076838, 35.024315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311886, 27.907442, 35.172192>,  <26.451712, 27.625116, 35.418648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311886, 27.907442, 35.172192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561013, 0.684388, 0.465701,
		0.750380, -0.182874, -0.635207,
		-0.349563, 0.705812, -0.616145,
		26.207018, 28.119186, 34.987347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054844, 28.075865, 35.286747>,  <26.451712, 27.625116, 35.418648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054844, 28.075865, 35.286747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737970, 28.303183, 35.197762>,  <26.547846, 28.439573, 35.144371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737970, 28.303183, 35.197762>,  <27.054844, 28.075865, 35.286747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737970, 28.303183, 35.197762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480220, 0.805408, 0.347428,
		0.376613, 0.168397, -0.910937,
		-0.792182, 0.568296, -0.222460,
		26.500317, 28.473671, 35.131023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271141, 28.557346, 34.810246>,  <27.054844, 28.075865, 35.286747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271141, 28.557346, 34.810246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958641, 28.725834, 34.994514>,  <26.771141, 28.826927, 35.105076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958641, 28.725834, 34.994514>,  <27.271141, 28.557346, 34.810246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958641, 28.725834, 34.994514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524962, 0.842654, 0.119786,
		-0.337735, 0.335421, -0.879448,
		-0.781249, 0.421221, 0.460677,
		26.724266, 28.852200, 35.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426966, 29.187252, 34.739723>,  <27.271141, 28.557346, 34.810246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426966, 29.187252, 34.739723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104887, 29.244137, 34.970005>,  <26.911640, 29.278267, 35.108173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104887, 29.244137, 34.970005>,  <27.426966, 29.187252, 34.739723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104887, 29.244137, 34.970005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405151, 0.840836, 0.358953,
		-0.433024, 0.522274, -0.734657,
		-0.805198, 0.142212, 0.575702,
		26.863327, 29.286800, 35.142715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083532, 29.757065, 34.613903>,  <27.426966, 29.187252, 34.739723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083532, 29.757065, 34.613903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011839, 29.671837, 34.998085>,  <26.968822, 29.620701, 35.228596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011839, 29.671837, 34.998085>,  <27.083532, 29.757065, 34.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011839, 29.671837, 34.998085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350238, 0.898487, 0.264680,
		-0.919353, 0.383827, -0.086413,
		-0.179233, -0.213069, 0.960457,
		26.958069, 29.607916, 35.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759356, 30.286499, 34.851082>,  <27.083532, 29.757065, 34.613903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759356, 30.286499, 34.851082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894234, 30.098927, 35.177616>,  <26.975161, 29.986383, 35.373535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894234, 30.098927, 35.177616>,  <26.759356, 30.286499, 34.851082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894234, 30.098927, 35.177616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275092, 0.878352, 0.390925,
		-0.900347, 0.092750, 0.425173,
		0.337193, -0.468930, 0.816337,
		26.995392, 29.958248, 35.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544685, 30.719124, 35.356014>,  <26.759356, 30.286499, 34.851082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544685, 30.719124, 35.356014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813633, 30.493246, 35.547447>,  <26.975002, 30.357719, 35.662308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813633, 30.493246, 35.547447>,  <26.544685, 30.719124, 35.356014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813633, 30.493246, 35.547447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334946, 0.808668, 0.483599,
		-0.660100, -0.164857, 0.732865,
		0.672369, -0.564693, 0.478583,
		27.015343, 30.323837, 35.691021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460289, 30.822132, 36.015713>,  <26.544685, 30.719124, 35.356014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460289, 30.822132, 36.015713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838667, 30.694111, 35.994724>,  <27.065695, 30.617298, 35.982132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838667, 30.694111, 35.994724>,  <26.460289, 30.822132, 36.015713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838667, 30.694111, 35.994724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319933, 0.894302, 0.312836,
		-0.053194, -0.312714, 0.948357,
		0.945946, -0.320052, -0.052476,
		27.122450, 30.598095, 35.978981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863518, 31.179461, 36.623608>,  <26.460289, 30.822132, 36.015713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863518, 31.179461, 36.623608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152153, 31.049803, 36.378906>,  <27.325335, 30.972008, 36.232086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152153, 31.049803, 36.378906>,  <26.863518, 31.179461, 36.623608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152153, 31.049803, 36.378906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496281, 0.858280, 0.130616,
		0.482716, -0.397852, 0.780191,
		0.721589, -0.324143, -0.611752,
		27.368629, 30.952560, 36.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495789, 31.214256, 37.019745>,  <26.863518, 31.179461, 36.623608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495789, 31.214256, 37.019745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603258, 31.227854, 36.634693>,  <27.667740, 31.236012, 36.403660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603258, 31.227854, 36.634693>,  <27.495789, 31.214256, 37.019745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603258, 31.227854, 36.634693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447469, 0.880591, 0.155984,
		0.852987, -0.472656, 0.221380,
		0.268672, 0.033992, -0.962632,
		27.683859, 31.238050, 36.345905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199116, 31.328035, 37.048775>,  <27.495789, 31.214256, 37.019745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199116, 31.328035, 37.048775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090639, 31.431490, 36.677925>,  <28.025553, 31.493563, 36.455414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090639, 31.431490, 36.677925>,  <28.199116, 31.328035, 37.048775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090639, 31.431490, 36.677925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272530, 0.944438, 0.183748,
		0.923136, -0.202839, -0.326612,
		-0.271193, 0.258637, -0.927125,
		28.009281, 31.509081, 36.399788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807428, 31.598486, 36.718426>,  <28.199116, 31.328035, 37.048775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807428, 31.598486, 36.718426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497770, 31.756111, 36.520267>,  <28.311975, 31.850687, 36.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497770, 31.756111, 36.520267>,  <28.807428, 31.598486, 36.718426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497770, 31.756111, 36.520267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356611, 0.918090, 0.173031,
		0.523000, -0.042711, -0.851262,
		-0.774144, 0.394065, -0.495393,
		28.265528, 31.874331, 36.371651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109327, 32.071022, 36.284557>,  <28.807428, 31.598486, 36.718426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109327, 32.071022, 36.284557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721075, 32.159901, 36.321453>,  <28.488125, 32.213226, 36.343590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721075, 32.159901, 36.321453>,  <29.109327, 32.071022, 36.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721075, 32.159901, 36.321453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234030, 0.960910, 0.147922,
		-0.055768, 0.165164, -0.984688,
		-0.970628, 0.222197, 0.092241,
		28.429886, 32.226559, 36.349125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030491, 32.642799, 35.815651>,  <29.109327, 32.071022, 36.284557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030491, 32.642799, 35.815651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731335, 32.678200, 36.078808>,  <28.551840, 32.699440, 36.236702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731335, 32.678200, 36.078808>,  <29.030491, 32.642799, 35.815651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731335, 32.678200, 36.078808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106874, 0.994197, -0.012242,
		-0.655161, 0.061157, -0.753010,
		-0.747892, 0.088497, 0.657895,
		28.506968, 32.704750, 36.276176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750484, 32.880199, 35.919270>,  <29.030491, 32.642799, 35.815651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750484, 32.880199, 35.919270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763382, 32.481327, 35.946373>,  <29.771120, 32.242004, 35.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763382, 32.481327, 35.946373>,  <29.750484, 32.880199, 35.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763382, 32.481327, 35.946373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363365, -0.074853, -0.928635,
		0.931089, 0.005318, -0.364754,
		0.032242, -0.997180, 0.067762,
		29.773054, 32.182175, 35.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232731, 32.566891, 35.428280>,  <29.750484, 32.880199, 35.919270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232731, 32.566891, 35.428280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901340, 32.357620, 35.508194>,  <29.702507, 32.232059, 35.556141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901340, 32.357620, 35.508194>,  <30.232731, 32.566891, 35.428280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901340, 32.357620, 35.508194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302503, 0.117848, -0.945835,
		0.471295, -0.844037, -0.255896,
		-0.828476, -0.523177, 0.199783,
		29.652798, 32.200668, 35.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978985, 32.055981, 34.871346>,  <30.232731, 32.566891, 35.428280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978985, 32.055981, 34.871346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638092, 32.111431, 35.073132>,  <29.433558, 32.144699, 35.194202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638092, 32.111431, 35.073132>,  <29.978985, 32.055981, 34.871346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638092, 32.111431, 35.073132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519709, -0.113648, -0.846750,
		-0.060047, -0.983803, 0.168898,
		-0.852230, 0.138623, 0.504467,
		29.382423, 32.153019, 35.224472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530182, 32.455688, 34.732227>,  <29.978985, 32.055981, 34.871346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530182, 32.455688, 34.732227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338022, 32.691265, 34.472267>,  <30.222727, 32.832611, 34.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338022, 32.691265, 34.472267>,  <30.530182, 32.455688, 34.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338022, 32.691265, 34.472267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143325, 0.678325, 0.720647,
		0.865261, 0.439343, -0.241455,
		-0.480397, 0.588942, -0.649897,
		30.193903, 32.867947, 34.277298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954159, 33.051834, 34.857494>,  <30.530182, 32.455688, 34.732227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954159, 33.051834, 34.857494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580027, 33.081619, 34.719154>,  <30.355547, 33.099491, 34.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580027, 33.081619, 34.719154>,  <30.954159, 33.051834, 34.857494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580027, 33.081619, 34.719154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238696, 0.588728, 0.772285,
		0.261117, 0.804895, -0.532882,
		-0.935330, 0.074460, -0.345851,
		30.299427, 33.103958, 34.615398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738665, 33.745590, 34.798935>,  <30.954159, 33.051834, 34.857494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738665, 33.745590, 34.798935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405676, 33.539730, 34.881035>,  <30.205883, 33.416214, 34.930294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405676, 33.539730, 34.881035>,  <30.738665, 33.745590, 34.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405676, 33.539730, 34.881035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212668, 0.638861, 0.739344,
		-0.511625, 0.571835, -0.641284,
		-0.832474, -0.514647, 0.205246,
		30.155933, 33.385338, 34.942608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215170, 34.100487, 34.189350>,  <30.738665, 33.745590, 34.798935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215170, 34.100487, 34.189350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347321, 34.402157, 33.962345>,  <31.426611, 34.583160, 33.826141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347321, 34.402157, 33.962345>,  <31.215170, 34.100487, 34.189350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347321, 34.402157, 33.962345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308372, 0.482028, 0.820095,
		0.892053, -0.445943, -0.073317,
		0.330375, 0.754177, -0.567511,
		31.446434, 34.628410, 33.792091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385513, 34.759636, 34.674141>,  <31.215170, 34.100487, 34.189350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385513, 34.759636, 34.674141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730400, 34.557636, 34.689926>,  <31.937332, 34.436436, 34.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730400, 34.557636, 34.689926>,  <31.385513, 34.759636, 34.674141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730400, 34.557636, 34.689926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099124, 0.244621, 0.964539,
		-0.496749, -0.827728, 0.260973,
		0.862215, -0.505002, 0.039468,
		31.989065, 34.406136, 34.701767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407412, 34.229900, 35.261196>,  <31.385513, 34.759636, 34.674141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407412, 34.229900, 35.261196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801060, 34.281414, 35.212337>,  <32.037251, 34.312321, 35.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801060, 34.281414, 35.212337>,  <31.407412, 34.229900, 35.261196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801060, 34.281414, 35.212337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103250, 0.144375, 0.984122,
		0.144375, -0.981107, 0.128785,
		-0.984122, -0.128785, 0.122143,
		32.096294, 34.320049, 35.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747599, 33.711060, 35.692966>,  <31.407412, 34.229900, 35.261196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747599, 33.711060, 35.692966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004635, 34.008602, 35.619484>,  <32.158855, 34.187130, 35.575394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004635, 34.008602, 35.619484>,  <31.747599, 33.711060, 35.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004635, 34.008602, 35.619484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098883, 0.157246, 0.982597,
		0.759802, -0.649573, 0.027489,
		0.642591, 0.743861, -0.183707,
		32.197411, 34.231762, 35.564373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261608, 33.642559, 36.224457>,  <31.747599, 33.711060, 35.692966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261608, 33.642559, 36.224457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309048, 34.013214, 36.081757>,  <32.337513, 34.235607, 35.996136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309048, 34.013214, 36.081757>,  <32.261608, 33.642559, 36.224457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309048, 34.013214, 36.081757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236942, 0.322498, 0.916435,
		0.964258, -0.193216, -0.181313,
		0.118597, 0.926640, -0.356753,
		32.344627, 34.291206, 35.974731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897934, 33.801132, 36.463978>,  <32.261608, 33.642559, 36.224457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897934, 33.801132, 36.463978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700245, 34.140877, 36.389858>,  <32.581631, 34.344723, 36.345387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700245, 34.140877, 36.389858>,  <32.897934, 33.801132, 36.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700245, 34.140877, 36.389858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230225, 0.333412, 0.914239,
		0.838298, 0.409175, -0.360323,
		-0.494219, 0.849360, -0.185296,
		32.551979, 34.395683, 36.334270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483475, 34.285038, 36.470116>,  <32.897934, 33.801132, 36.463978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483475, 34.285038, 36.470116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132378, 34.463238, 36.540649>,  <32.921719, 34.570156, 36.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132378, 34.463238, 36.540649>,  <33.483475, 34.285038, 36.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132378, 34.463238, 36.540649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357687, 0.364420, 0.859801,
		0.318784, 0.817758, -0.479218,
		-0.877745, 0.445501, 0.176330,
		32.869053, 34.596889, 36.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721424, 34.677692, 37.033962>,  <33.483475, 34.285038, 36.470116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721424, 34.677692, 37.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324581, 34.727726, 37.030602>,  <33.086475, 34.757744, 37.028587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324581, 34.727726, 37.030602>,  <33.721424, 34.677692, 37.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324581, 34.727726, 37.030602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042781, 0.400776, 0.915177,
		0.117837, 0.907598, -0.402965,
		-0.992111, 0.125081, -0.008398,
		33.026947, 34.765251, 37.028084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629108, 35.361439, 37.342926>,  <33.721424, 34.677692, 37.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629108, 35.361439, 37.342926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303169, 35.132927, 37.382236>,  <33.107605, 34.995819, 37.405823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303169, 35.132927, 37.382236>,  <33.629108, 35.361439, 37.342926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303169, 35.132927, 37.382236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051080, 0.239642, 0.969517,
		-0.577420, 0.784989, -0.224453,
		-0.814848, -0.571283, 0.098277,
		33.058716, 34.961540, 37.411720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262497, 35.832054, 37.746181>,  <33.629108, 35.361439, 37.342926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262497, 35.832054, 37.746181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128319, 35.459408, 37.802139>,  <33.047813, 35.235821, 37.835712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128319, 35.459408, 37.802139>,  <33.262497, 35.832054, 37.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128319, 35.459408, 37.802139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098865, 0.112866, 0.988679,
		-0.936859, 0.345474, 0.054245,
		-0.335441, -0.931616, 0.139895,
		33.027687, 35.179924, 37.844109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666199, 35.863098, 38.268196>,  <33.262497, 35.832054, 37.746181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666199, 35.863098, 38.268196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809155, 35.490158, 38.290089>,  <32.894928, 35.266396, 38.303223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809155, 35.490158, 38.290089>,  <32.666199, 35.863098, 38.268196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809155, 35.490158, 38.290089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051941, 0.078354, 0.995571,
		-0.932511, -0.352961, 0.076429,
		0.357386, -0.932351, 0.054733,
		32.916370, 35.210453, 38.306507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333553, 35.605701, 38.902790>,  <32.666199, 35.863098, 38.268196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333553, 35.605701, 38.902790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638401, 35.356766, 38.831390>,  <32.821312, 35.207405, 38.788551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638401, 35.356766, 38.831390>,  <32.333553, 35.605701, 38.902790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638401, 35.356766, 38.831390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107130, -0.150684, 0.982760,
		-0.638508, -0.768107, -0.048168,
		0.762123, -0.622340, -0.178500,
		32.867039, 35.170063, 38.777840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286175, 35.113941, 39.430779>,  <32.333553, 35.605701, 38.902790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286175, 35.113941, 39.430779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661301, 35.071144, 39.298687>,  <32.886375, 35.045467, 39.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661301, 35.071144, 39.298687>,  <32.286175, 35.113941, 39.430779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661301, 35.071144, 39.298687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320907, -0.095506, 0.942283,
		-0.132360, -0.989662, -0.055231,
		0.937816, -0.106997, -0.330230,
		32.942646, 35.039047, 39.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492527, 34.561916, 39.822620>,  <32.286175, 35.113941, 39.430779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492527, 34.561916, 39.822620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832085, 34.734283, 39.700184>,  <33.035820, 34.837704, 39.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832085, 34.734283, 39.700184>,  <32.492527, 34.561916, 39.822620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832085, 34.734283, 39.700184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410401, -0.172398, 0.895461,
		0.333100, -0.885770, -0.323196,
		0.848891, 0.430918, -0.306095,
		33.086754, 34.863560, 39.608356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087761, 34.066551, 40.037106>,  <32.492527, 34.561916, 39.822620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087761, 34.066551, 40.037106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224613, 34.439846, 39.993263>,  <33.306725, 34.663822, 39.966957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224613, 34.439846, 39.993263>,  <33.087761, 34.066551, 40.037106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224613, 34.439846, 39.993263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349368, -0.018059, 0.936812,
		0.872288, -0.358806, -0.332222,
		0.342133, 0.933238, -0.109603,
		33.327251, 34.719818, 39.960381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756508, 33.931900, 40.171185>,  <33.087761, 34.066551, 40.037106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756508, 33.931900, 40.171185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691395, 34.325123, 40.204887>,  <33.652328, 34.561058, 40.225109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691395, 34.325123, 40.204887>,  <33.756508, 33.931900, 40.171185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691395, 34.325123, 40.204887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501814, 0.008961, 0.864929,
		0.849520, 0.183078, -0.494771,
		-0.162783, 0.983058, 0.084258,
		33.642559, 34.620041, 40.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358803, 34.092262, 40.451626>,  <33.756508, 33.931900, 40.171185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358803, 34.092262, 40.451626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094315, 34.379951, 40.536949>,  <33.935623, 34.552567, 40.588142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094315, 34.379951, 40.536949>,  <34.358803, 34.092262, 40.451626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094315, 34.379951, 40.536949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325978, 0.019368, 0.945179,
		0.675666, 0.694506, -0.247259,
		-0.661221, 0.719227, 0.213307,
		33.895947, 34.595718, 40.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726753, 34.603519, 40.766090>,  <34.358803, 34.092262, 40.451626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726753, 34.603519, 40.766090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347176, 34.678284, 40.867733>,  <34.119431, 34.723145, 40.928719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347176, 34.678284, 40.867733>,  <34.726753, 34.603519, 40.766090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347176, 34.678284, 40.867733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251346, -0.038749, 0.967121,
		0.190616, 0.981612, -0.010210,
		-0.948942, 0.186915, 0.254111,
		34.062492, 34.734360, 40.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745808, 35.128113, 41.288773>,  <34.726753, 34.603519, 40.766090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745808, 35.128113, 41.288773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396095, 34.937939, 41.327953>,  <34.186268, 34.823833, 41.351460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396095, 34.937939, 41.327953>,  <34.745808, 35.128113, 41.288773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396095, 34.937939, 41.327953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143494, -0.060365, 0.987808,
		-0.463724, 0.877678, 0.120998,
		-0.874282, -0.475433, 0.097949,
		34.133812, 34.795307, 41.357338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519131, 35.323627, 41.906216>,  <34.745808, 35.128113, 41.288773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519131, 35.323627, 41.906216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260086, 35.030396, 41.823093>,  <34.104660, 34.854454, 41.773220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260086, 35.030396, 41.823093>,  <34.519131, 35.323627, 41.906216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260086, 35.030396, 41.823093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055899, -0.226284, 0.972456,
		-0.759916, 0.641392, 0.105566,
		-0.647614, -0.733084, -0.207810,
		34.065804, 34.810471, 41.760750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933994, 35.322617, 42.280197>,  <34.519131, 35.323627, 41.906216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933994, 35.322617, 42.280197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925953, 34.937172, 42.173573>,  <33.921127, 34.705906, 42.109596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925953, 34.937172, 42.173573>,  <33.933994, 35.322617, 42.280197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925953, 34.937172, 42.173573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237965, -0.254340, 0.937381,
		-0.971065, 0.082279, -0.224192,
		-0.020106, -0.963608, -0.266560,
		33.919922, 34.648090, 42.093605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344242, 35.080505, 42.628761>,  <33.933994, 35.322617, 42.280197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344242, 35.080505, 42.628761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588753, 34.771149, 42.561588>,  <33.735458, 34.585533, 42.521282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588753, 34.771149, 42.561588>,  <33.344242, 35.080505, 42.628761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588753, 34.771149, 42.561588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137666, -0.312871, 0.939766,
		-0.779352, -0.551338, -0.297720,
		0.611276, -0.773394, -0.167936,
		33.772137, 34.539131, 42.511208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177612, 34.598686, 43.025696>,  <33.344242, 35.080505, 42.628761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177612, 34.598686, 43.025696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538639, 34.442455, 42.953220>,  <33.755253, 34.348717, 42.909737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538639, 34.442455, 42.953220>,  <33.177612, 34.598686, 43.025696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538639, 34.442455, 42.953220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024791, -0.372977, 0.927509,
		-0.429843, -0.841628, -0.326953,
		0.902563, -0.390578, -0.181186,
		33.809406, 34.325283, 42.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159729, 34.057442, 43.423832>,  <33.177612, 34.598686, 43.025696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159729, 34.057442, 43.423832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550716, 34.084026, 43.343700>,  <33.785309, 34.099976, 43.295620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550716, 34.084026, 43.343700>,  <33.159729, 34.057442, 43.423832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550716, 34.084026, 43.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209824, -0.408873, 0.888142,
		-0.022881, -0.910168, -0.413607,
		0.977471, 0.066463, -0.200331,
		33.843956, 34.103966, 43.283600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508812, 33.396748, 43.575874>,  <33.159729, 34.057442, 43.423832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508812, 33.396748, 43.575874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775997, 33.689205, 43.631378>,  <33.936310, 33.864677, 43.664680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775997, 33.689205, 43.631378>,  <33.508812, 33.396748, 43.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775997, 33.689205, 43.631378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346896, -0.470862, 0.811142,
		0.658394, -0.493682, -0.568151,
		0.667967, 0.731141, 0.138756,
		33.976387, 33.908546, 43.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133377, 33.082321, 43.864262>,  <33.508812, 33.396748, 43.575874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133377, 33.082321, 43.864262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186813, 33.473404, 43.929066>,  <34.218876, 33.708054, 43.967949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186813, 33.473404, 43.929066>,  <34.133377, 33.082321, 43.864262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186813, 33.473404, 43.929066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301677, -0.195835, 0.933081,
		0.944005, -0.075773, -0.321112,
		0.133587, 0.977705, 0.162010,
		34.226891, 33.766716, 43.977669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828331, 33.198837, 44.190323>,  <34.133377, 33.082321, 43.864262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828331, 33.198837, 44.190323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558102, 33.478344, 44.284409>,  <34.395966, 33.646049, 44.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558102, 33.478344, 44.284409>,  <34.828331, 33.198837, 44.190323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558102, 33.478344, 44.284409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090891, -0.237660, 0.967086,
		0.731670, 0.674716, 0.097045,
		-0.675573, 0.698767, 0.235215,
		34.355431, 33.687973, 44.354973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131168, 33.348125, 44.764099>,  <34.828331, 33.198837, 44.190323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131168, 33.348125, 44.764099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773678, 33.526150, 44.786621>,  <34.559185, 33.632965, 44.800133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773678, 33.526150, 44.786621>,  <35.131168, 33.348125, 44.764099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773678, 33.526150, 44.786621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064063, 0.002393, 0.997943,
		0.444013, 0.895496, -0.030651,
		-0.893727, 0.445063, 0.056306,
		34.505558, 33.659668, 44.803513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212784, 33.912430, 45.252636>,  <35.131168, 33.348125, 44.764099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212784, 33.912430, 45.252636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834259, 33.786526, 45.223194>,  <34.607143, 33.710983, 45.205528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834259, 33.786526, 45.223194>,  <35.212784, 33.912430, 45.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834259, 33.786526, 45.223194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072216, -0.016083, 0.997259,
		-0.315082, 0.949035, -0.007511,
		-0.946313, -0.314761, -0.073602,
		34.550365, 33.692097, 45.201115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798775, 34.351154, 45.551979>,  <35.212784, 33.912430, 45.252636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798775, 34.351154, 45.551979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590092, 34.010468, 45.571602>,  <34.464882, 33.806057, 45.583374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590092, 34.010468, 45.571602>,  <34.798775, 34.351154, 45.551979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590092, 34.010468, 45.571602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132831, -0.024297, 0.990841,
		-0.842720, 0.523445, 0.125810,
		-0.521707, -0.851713, 0.049054,
		34.433578, 33.754955, 45.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110069, 34.369633, 46.028179>,  <34.798775, 34.351154, 45.551979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110069, 34.369633, 46.028179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204643, 33.981201, 46.014942>,  <34.261387, 33.748142, 46.007000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204643, 33.981201, 46.014942>,  <34.110069, 34.369633, 46.028179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204643, 33.981201, 46.014942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109416, -0.007234, 0.993970,
		-0.965466, -0.238633, 0.104542,
		0.236437, -0.971083, -0.033094,
		34.275574, 33.689877, 46.005013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733345, 34.125069, 46.478886>,  <34.110069, 34.369633, 46.028179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733345, 34.125069, 46.478886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019104, 33.853039, 46.413006>,  <34.190559, 33.689819, 46.373478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019104, 33.853039, 46.413006>,  <33.733345, 34.125069, 46.478886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019104, 33.853039, 46.413006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055686, -0.179372, 0.982204,
		-0.697517, -0.710859, -0.090273,
		0.714401, -0.680077, -0.164700,
		34.233425, 33.649017, 46.363594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488239, 33.609993, 46.977295>,  <33.733345, 34.125069, 46.478886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488239, 33.609993, 46.977295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869667, 33.512245, 46.906887>,  <34.098526, 33.453594, 46.864643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869667, 33.512245, 46.906887>,  <33.488239, 33.609993, 46.977295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869667, 33.512245, 46.906887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119251, -0.230312, 0.965782,
		-0.276553, -0.941932, -0.190476,
		0.953571, -0.244376, -0.176020,
		34.155739, 33.438934, 46.854080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607952, 33.006851, 47.362930>,  <33.488239, 33.609993, 46.977295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607952, 33.006851, 47.362930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966293, 33.170414, 47.293369>,  <34.181297, 33.268551, 47.251633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966293, 33.170414, 47.293369>,  <33.607952, 33.006851, 47.362930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966293, 33.170414, 47.293369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244091, -0.125820, 0.961555,
		0.371306, -0.903861, -0.212527,
		0.895852, 0.408907, -0.173907,
		34.235050, 33.293087, 47.241196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115547, 32.506992, 47.656086>,  <33.607952, 33.006851, 47.362930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115547, 32.506992, 47.656086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279907, 32.870838, 47.631527>,  <34.378525, 33.089146, 47.616791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279907, 32.870838, 47.631527>,  <34.115547, 32.506992, 47.656086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279907, 32.870838, 47.631527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360643, -0.100328, 0.927292,
		0.837315, -0.403168, -0.369269,
		0.410902, 0.909610, -0.061394,
		34.403179, 33.143723, 47.613110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570847, 32.458008, 48.176716>,  <34.115547, 32.506992, 47.656086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570847, 32.458008, 48.176716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592888, 32.850128, 48.100857>,  <34.606113, 33.085400, 48.055344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592888, 32.850128, 48.100857>,  <34.570847, 32.458008, 48.176716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592888, 32.850128, 48.100857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339988, 0.160161, 0.926691,
		0.938814, -0.115544, -0.324466,
		0.055107, 0.980305, -0.189645,
		34.609421, 33.144218, 48.043964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170547, 32.700600, 48.417709>,  <34.570847, 32.458008, 48.176716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170547, 32.700600, 48.417709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950077, 33.034187, 48.407135>,  <34.817795, 33.234341, 48.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950077, 33.034187, 48.407135>,  <35.170547, 32.700600, 48.417709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950077, 33.034187, 48.407135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297385, 0.225945, 0.927637,
		0.779594, 0.503431, -0.372546,
		-0.551176, 0.833970, -0.026433,
		34.784725, 33.284378, 48.399204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616306, 33.189926, 48.801872>,  <35.170547, 32.700600, 48.417709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616306, 33.189926, 48.801872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248898, 33.347939, 48.795273>,  <35.028454, 33.442745, 48.791313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248898, 33.347939, 48.795273>,  <35.616306, 33.189926, 48.801872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248898, 33.347939, 48.795273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019094, 0.086003, 0.996112,
		0.394914, 0.914633, -0.086538,
		-0.918520, 0.395031, -0.016500,
		34.973343, 33.466450, 48.790321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651928, 33.850807, 49.260670>,  <35.616306, 33.189926, 48.801872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651928, 33.850807, 49.260670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272591, 33.724262, 49.251251>,  <35.044987, 33.648335, 49.245602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272591, 33.724262, 49.251251>,  <35.651928, 33.850807, 49.260670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272591, 33.724262, 49.251251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043988, 0.057642, 0.997368,
		-0.314169, 0.946887, -0.068580,
		-0.948348, -0.316358, -0.023543,
		34.988087, 33.629356, 49.244190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386898, 34.115028, 49.867477>,  <35.651928, 33.850807, 49.260670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386898, 34.115028, 49.867477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090130, 33.864819, 49.770916>,  <34.912071, 33.714691, 49.712978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090130, 33.864819, 49.770916>,  <35.386898, 34.115028, 49.867477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090130, 33.864819, 49.770916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217618, -0.115903, 0.969128,
		-0.634193, 0.771547, -0.050135,
		-0.741917, -0.625524, -0.241408,
		34.867554, 33.677162, 49.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789261, 34.310768, 50.242039>,  <35.386898, 34.115028, 49.867477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789261, 34.310768, 50.242039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724308, 33.927860, 50.146317>,  <34.685337, 33.698116, 50.088882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724308, 33.927860, 50.146317>,  <34.789261, 34.310768, 50.242039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724308, 33.927860, 50.146317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287524, -0.186098, 0.939520,
		-0.943908, 0.221370, -0.245018,
		-0.162384, -0.957269, -0.239308,
		34.675594, 33.640678, 50.074524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233822, 34.118031, 50.518372>,  <34.789261, 34.310768, 50.242039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233822, 34.118031, 50.518372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355156, 33.740131, 50.468666>,  <34.427956, 33.513393, 50.438843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355156, 33.740131, 50.468666>,  <34.233822, 34.118031, 50.518372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355156, 33.740131, 50.468666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449951, -0.256962, 0.855286,
		-0.839960, -0.203526, -0.503035,
		0.303334, -0.944747, -0.124261,
		34.446156, 33.456707, 50.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684841, 33.680370, 50.829838>,  <34.233822, 34.118031, 50.518372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684841, 33.680370, 50.829838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032982, 33.485649, 50.800159>,  <34.241867, 33.368816, 50.782352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032982, 33.485649, 50.800159>,  <33.684841, 33.680370, 50.829838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032982, 33.485649, 50.800159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076779, -0.282985, 0.956046,
		-0.486401, -0.826404, -0.283674,
		0.870356, -0.486802, -0.074194,
		34.294090, 33.339607, 50.777901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782608, 33.484615, 51.471893>,  <33.684841, 33.680370, 50.829838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782608, 33.484615, 51.471893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110367, 33.305000, 51.329369>,  <34.307022, 33.197231, 51.243855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110367, 33.305000, 51.329369>,  <33.782608, 33.484615, 51.471893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110367, 33.305000, 51.329369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314720, -0.167120, 0.934356,
		-0.479107, -0.877746, 0.004383,
		0.819395, -0.449036, -0.356313,
		34.356186, 33.170288, 51.222473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861370, 32.779190, 51.780327>,  <33.782608, 33.484615, 51.471893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861370, 32.779190, 51.780327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172905, 33.004887, 51.670753>,  <34.359825, 33.140305, 51.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172905, 33.004887, 51.670753>,  <33.861370, 32.779190, 51.780327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172905, 33.004887, 51.670753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346244, -0.022600, 0.937872,
		0.522999, -0.825298, -0.212968,
		0.778837, 0.564245, -0.273935,
		34.406555, 33.174160, 51.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438564, 32.454605, 51.966053>,  <33.861370, 32.779190, 51.780327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438564, 32.454605, 51.966053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563515, 32.832870, 51.929974>,  <34.638485, 33.059830, 51.908325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563515, 32.832870, 51.929974>,  <34.438564, 32.454605, 51.966053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563515, 32.832870, 51.929974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516240, -0.089280, 0.851778,
		0.797445, -0.312640, -0.516080,
		0.312376, 0.945666, -0.090201,
		34.657227, 33.116570, 51.902912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154560, 32.514610, 52.060879>,  <34.438564, 32.454605, 51.966053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154560, 32.514610, 52.060879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957073, 32.834782, 52.196850>,  <34.838581, 33.026886, 52.278431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957073, 32.834782, 52.196850>,  <35.154560, 32.514610, 52.060879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957073, 32.834782, 52.196850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525366, -0.036953, 0.850073,
		0.692987, 0.598284, -0.402276,
		-0.493720, 0.800432, 0.339926,
		34.808956, 33.074913, 52.298828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595455, 32.940342, 52.412354>,  <35.154560, 32.514610, 52.060879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595455, 32.940342, 52.412354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251110, 33.070797, 52.568588>,  <35.044502, 33.149071, 52.662327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251110, 33.070797, 52.568588>,  <35.595455, 32.940342, 52.412354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251110, 33.070797, 52.568588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398300, -0.045800, 0.916111,
		0.316665, 0.944213, -0.090472,
		-0.860860, 0.326136, 0.390583,
		34.992851, 33.168636, 52.685764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261395, 33.272434, 52.669525>,  <35.595455, 32.940342, 52.412354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261395, 33.272434, 52.669525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637093, 33.144688, 52.619198>,  <36.862511, 33.068039, 52.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637093, 33.144688, 52.619198>,  <36.261395, 33.272434, 52.669525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637093, 33.144688, 52.619198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176945, -0.136390, -0.974725,
		0.294137, 0.937764, -0.184614,
		0.939241, -0.319369, -0.125816,
		36.918865, 33.048878, 52.581451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583092, 33.700867, 52.138412>,  <36.261395, 33.272434, 52.669525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583092, 33.700867, 52.138412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739269, 33.333004, 52.155308>,  <36.832977, 33.112286, 52.165447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739269, 33.333004, 52.155308>,  <36.583092, 33.700867, 52.138412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739269, 33.333004, 52.155308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016580, -0.052902, -0.998462,
		0.920477, 0.389145, -0.035903,
		0.390446, -0.919656, 0.042243,
		36.856403, 33.057106, 52.167980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210392, 33.545200, 51.716316>,  <36.583092, 33.700867, 52.138412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210392, 33.545200, 51.716316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041992, 33.183701, 51.747307>,  <36.940952, 32.966801, 51.765900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041992, 33.183701, 51.747307>,  <37.210392, 33.545200, 51.716316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041992, 33.183701, 51.747307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190278, -0.171506, -0.966633,
		0.886880, -0.392207, 0.244167,
		-0.420996, -0.903748, 0.077477,
		36.915695, 32.912575, 51.770550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344013, 33.254284, 51.131836>,  <37.210392, 33.545200, 51.716316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344013, 33.254284, 51.131836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191284, 32.913181, 51.274391>,  <37.099648, 32.708519, 51.359924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191284, 32.913181, 51.274391>,  <37.344013, 33.254284, 51.131836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191284, 32.913181, 51.274391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065279, -0.409522, -0.909962,
		0.921926, -0.324182, 0.212033,
		-0.381826, -0.852759, 0.356386,
		37.076736, 32.657352, 51.381306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815144, 32.572426, 51.060394>,  <37.344013, 33.254284, 51.131836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815144, 32.572426, 51.060394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420807, 32.505360, 51.061481>,  <37.184204, 32.465118, 51.062134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420807, 32.505360, 51.061481>,  <37.815144, 32.572426, 51.060394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420807, 32.505360, 51.061481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070540, -0.429369, -0.900370,
		0.152131, -0.887429, 0.435116,
		-0.985840, -0.167668, 0.002721,
		37.125053, 32.455059, 51.062298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657124, 31.902540, 50.764484>,  <37.815144, 32.572426, 51.060394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657124, 31.902540, 50.764484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343727, 32.141464, 50.695942>,  <37.155689, 32.284821, 50.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343727, 32.141464, 50.695942>,  <37.657124, 31.902540, 50.764484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343727, 32.141464, 50.695942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003146, -0.279572, -0.960120,
		-0.621399, -0.751704, 0.220920,
		-0.783488, 0.597312, -0.171361,
		37.108681, 32.320656, 50.644535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234993, 31.424116, 50.304321>,  <37.657124, 31.902540, 50.764484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234993, 31.424116, 50.304321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110760, 31.799866, 50.246204>,  <37.036221, 32.025314, 50.211334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110760, 31.799866, 50.246204>,  <37.234993, 31.424116, 50.304321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110760, 31.799866, 50.246204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220184, -0.219793, -0.950374,
		-0.924692, -0.263181, 0.275100,
		-0.310585, 0.939376, -0.145292,
		37.017586, 32.081680, 50.202618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824310, 31.263739, 49.816357>,  <37.234993, 31.424116, 50.304321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824310, 31.263739, 49.816357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820312, 31.662392, 49.783802>,  <36.817913, 31.901583, 49.764267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820312, 31.662392, 49.783802>,  <36.824310, 31.263739, 49.816357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820312, 31.662392, 49.783802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035963, -0.081698, -0.996008,
		-0.999303, -0.007026, 0.036658,
		-0.009993, 0.996632, -0.081389,
		36.817314, 31.961382, 49.759384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258724, 31.488552, 49.409622>,  <36.824310, 31.263739, 49.816357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258724, 31.488552, 49.409622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500805, 31.805805, 49.382286>,  <36.646053, 31.996157, 49.365883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500805, 31.805805, 49.382286>,  <36.258724, 31.488552, 49.409622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500805, 31.805805, 49.382286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148310, 0.027990, -0.988544,
		-0.782134, 0.608406, 0.134569,
		0.605202, 0.793132, -0.068341,
		36.682365, 32.043743, 49.361782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932171, 31.956160, 49.022400>,  <36.258724, 31.488552, 49.409622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932171, 31.956160, 49.022400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318108, 32.050529, 48.976048>,  <36.549667, 32.107151, 48.948235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318108, 32.050529, 48.976048>,  <35.932171, 31.956160, 49.022400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318108, 32.050529, 48.976048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114027, -0.021537, -0.993244,
		-0.236826, 0.971533, 0.006122,
		0.964837, 0.235924, -0.115882,
		36.607559, 32.121307, 48.941284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948975, 32.507580, 48.573902>,  <35.932171, 31.956160, 49.022400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948975, 32.507580, 48.573902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324329, 32.371876, 48.547543>,  <36.549541, 32.290455, 48.531727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324329, 32.371876, 48.547543>,  <35.948975, 32.507580, 48.573902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324329, 32.371876, 48.547543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062446, 0.021090, -0.997825,
		0.339909, 0.940457, -0.001395,
		0.938383, -0.339257, -0.065896,
		36.605843, 32.270100, 48.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265671, 32.943581, 48.065773>,  <35.948975, 32.507580, 48.573902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265671, 32.943581, 48.065773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491829, 32.613750, 48.073792>,  <36.627522, 32.415852, 48.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491829, 32.613750, 48.073792>,  <36.265671, 32.943581, 48.065773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491829, 32.613750, 48.073792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125080, -0.109736, -0.986059,
		0.815284, 0.555001, -0.165182,
		0.565391, -0.824579, 0.020047,
		36.661446, 32.366375, 48.079807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841415, 33.139095, 47.560234>,  <36.265671, 32.943581, 48.065773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841415, 33.139095, 47.560234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859810, 32.744102, 47.620590>,  <36.870846, 32.507107, 47.656803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859810, 32.744102, 47.620590>,  <36.841415, 33.139095, 47.560234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859810, 32.744102, 47.620590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169577, -0.141142, -0.975357,
		0.984444, 0.070437, 0.160964,
		0.045983, -0.987480, 0.150891,
		36.873604, 32.447857, 47.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491558, 33.003624, 47.351067>,  <36.841415, 33.139095, 47.560234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491558, 33.003624, 47.351067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250900, 32.684765, 47.330761>,  <37.106506, 32.493450, 47.318577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250900, 32.684765, 47.330761>,  <37.491558, 33.003624, 47.351067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250900, 32.684765, 47.330761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108851, -0.018862, -0.993879,
		0.791315, -0.603485, 0.098119,
		-0.601641, -0.797152, -0.050765,
		37.070408, 32.445618, 47.315533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828365, 32.559265, 46.819996>,  <37.491558, 33.003624, 47.351067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828365, 32.559265, 46.819996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458424, 32.407139, 46.820381>,  <37.236458, 32.315865, 46.820614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458424, 32.407139, 46.820381>,  <37.828365, 32.559265, 46.819996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458424, 32.407139, 46.820381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031571, -0.079297, -0.996351,
		0.379005, -0.921451, 0.085345,
		-0.924856, -0.380316, 0.000963,
		37.180965, 32.293045, 46.820671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851295, 31.929628, 46.332092>,  <37.828365, 32.559265, 46.819996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851295, 31.929628, 46.332092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460903, 32.004887, 46.376026>,  <37.226669, 32.050041, 46.402386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460903, 32.004887, 46.376026>,  <37.851295, 31.929628, 46.332092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460903, 32.004887, 46.376026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166131, -0.316586, -0.933902,
		-0.140934, -0.929718, 0.340239,
		-0.975981, 0.188143, 0.109837,
		37.168110, 32.061329, 46.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555622, 31.401619, 45.986359>,  <37.851295, 31.929628, 46.332092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555622, 31.401619, 45.986359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271011, 31.680937, 46.017632>,  <37.100243, 31.848528, 46.036396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271011, 31.680937, 46.017632>,  <37.555622, 31.401619, 45.986359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271011, 31.680937, 46.017632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236692, -0.133435, -0.962378,
		-0.661592, -0.703264, 0.260224,
		-0.711528, 0.698295, 0.078178,
		37.057552, 31.890425, 46.041084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045876, 31.128832, 45.603531>,  <37.555622, 31.401619, 45.986359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045876, 31.128832, 45.603531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975647, 31.522057, 45.624573>,  <36.933510, 31.757992, 45.637199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975647, 31.522057, 45.624573>,  <37.045876, 31.128832, 45.603531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975647, 31.522057, 45.624573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280111, 0.001346, -0.959967,
		-0.943775, -0.183281, 0.275129,
		-0.175574, 0.983060, 0.052609,
		36.922974, 31.816975, 45.640354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423557, 31.194054, 45.322453>,  <37.045876, 31.128832, 45.603531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423557, 31.194054, 45.322453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583061, 31.560352, 45.302853>,  <36.678764, 31.780132, 45.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583061, 31.560352, 45.302853>,  <36.423557, 31.194054, 45.322453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583061, 31.560352, 45.302853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255038, 0.059412, -0.965104,
		-0.880880, 0.397338, 0.257241,
		0.398756, 0.915747, -0.049002,
		36.702686, 31.835077, 45.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933216, 31.591085, 44.986053>,  <36.423557, 31.194054, 45.322453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933216, 31.591085, 44.986053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270023, 31.805052, 44.958118>,  <36.472107, 31.933432, 44.941357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270023, 31.805052, 44.958118>,  <35.933216, 31.591085, 44.986053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270023, 31.805052, 44.958118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245384, 0.264492, -0.932647,
		-0.480416, 0.802439, 0.353965,
		0.842014, 0.534916, -0.069840,
		36.522629, 31.965527, 44.937168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686909, 32.232452, 44.718140>,  <35.933216, 31.591085, 44.986053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686909, 32.232452, 44.718140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076138, 32.204414, 44.630299>,  <36.309673, 32.187592, 44.577595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076138, 32.204414, 44.630299>,  <35.686909, 32.232452, 44.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076138, 32.204414, 44.630299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191856, 0.281845, -0.940082,
		0.127784, 0.956896, 0.260807,
		0.973069, -0.070090, -0.219601,
		36.368057, 32.183388, 44.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768879, 32.691967, 44.148518>,  <35.686909, 32.232452, 44.718140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768879, 32.691967, 44.148518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095409, 32.462482, 44.121754>,  <36.291328, 32.324791, 44.105694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095409, 32.462482, 44.121754>,  <35.768879, 32.691967, 44.148518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095409, 32.462482, 44.121754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144301, -0.090401, -0.985396,
		0.559281, 0.814056, -0.156583,
		0.816322, -0.573708, -0.066910,
		36.340305, 32.290371, 44.101681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264252, 32.973820, 43.640987>,  <35.768879, 32.691967, 44.148518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264252, 32.973820, 43.640987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374077, 32.589642, 43.659569>,  <36.439972, 32.359135, 43.670719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374077, 32.589642, 43.659569>,  <36.264252, 32.973820, 43.640987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374077, 32.589642, 43.659569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007338, -0.046216, -0.998905,
		0.961542, 0.274601, -0.005642,
		0.274561, -0.960447, 0.046454,
		36.456444, 32.301506, 43.673504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721214, 32.939518, 43.130703>,  <36.264252, 32.973820, 43.640987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721214, 32.939518, 43.130703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625580, 32.555637, 43.189770>,  <36.568199, 32.325310, 43.225208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625580, 32.555637, 43.189770>,  <36.721214, 32.939518, 43.130703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625580, 32.555637, 43.189770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041492, -0.141837, -0.989020,
		0.970111, -0.242588, -0.005908,
		-0.239086, -0.959705, 0.147663,
		36.553852, 32.267727, 43.234070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104904, 32.492332, 42.586433>,  <36.721214, 32.939518, 43.130703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104904, 32.492332, 42.586433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791492, 32.279156, 42.714218>,  <36.603443, 32.151249, 42.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791492, 32.279156, 42.714218>,  <37.104904, 32.492332, 42.586433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791492, 32.279156, 42.714218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149879, -0.336850, -0.929553,
		0.603004, -0.776215, 0.184057,
		-0.783532, -0.532938, 0.319460,
		36.556435, 32.119274, 42.810055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165779, 31.843988, 42.210613>,  <37.104904, 32.492332, 42.586433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165779, 31.843988, 42.210613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786850, 31.859560, 42.337772>,  <36.559490, 31.868904, 42.414066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786850, 31.859560, 42.337772>,  <37.165779, 31.843988, 42.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786850, 31.859560, 42.337772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319045, -0.201563, -0.926058,
		0.028025, -0.978702, 0.203366,
		-0.947325, 0.038930, 0.317898,
		36.502651, 31.871239, 42.433144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840996, 31.312309, 41.899975>,  <37.165779, 31.843988, 42.210613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840996, 31.312309, 41.899975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522564, 31.534420, 41.996246>,  <36.331505, 31.667686, 42.054008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522564, 31.534420, 41.996246>,  <36.840996, 31.312309, 41.899975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522564, 31.534420, 41.996246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383799, -0.155718, -0.910192,
		-0.467930, -0.816957, 0.337079,
		-0.796078, 0.555277, 0.240682,
		36.283741, 31.701002, 42.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399529, 30.809149, 41.715469>,  <36.840996, 31.312309, 41.899975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399529, 30.809149, 41.715469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239864, 31.175892, 41.718090>,  <36.144066, 31.395937, 41.719662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239864, 31.175892, 41.718090>,  <36.399529, 30.809149, 41.715469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239864, 31.175892, 41.718090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374175, -0.156369, -0.914080,
		-0.837056, -0.367317, 0.405481,
		-0.399162, 0.916857, 0.006551,
		36.120117, 31.450949, 41.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754936, 30.698109, 41.358345>,  <36.399529, 30.809149, 41.715469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754936, 30.698109, 41.358345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773891, 31.097609, 41.364712>,  <35.785267, 31.337309, 41.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773891, 31.097609, 41.364712>,  <35.754936, 30.698109, 41.358345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773891, 31.097609, 41.364712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516768, 0.038154, -0.855275,
		-0.854813, 0.032305, 0.517929,
		0.047391, 0.998750, 0.015920,
		35.788109, 31.397234, 41.369488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056011, 31.036625, 41.377155>,  <35.754936, 30.698109, 41.358345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056011, 31.036625, 41.377155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320599, 31.294275, 41.223499>,  <35.479351, 31.448866, 41.131306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320599, 31.294275, 41.223499>,  <35.056011, 31.036625, 41.377155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320599, 31.294275, 41.223499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576807, 0.109574, -0.809498,
		-0.479328, 0.757030, 0.444017,
		0.661467, 0.644127, -0.384138,
		35.519039, 31.487513, 41.108257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655540, 31.522694, 41.104839>,  <35.056011, 31.036625, 41.377155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655540, 31.522694, 41.104839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998386, 31.574055, 40.905296>,  <35.204094, 31.604872, 40.785568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998386, 31.574055, 40.905296>,  <34.655540, 31.522694, 41.104839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998386, 31.574055, 40.905296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512332, 0.313123, -0.799669,
		0.053526, 0.940993, 0.334167,
		0.857118, 0.128401, -0.498861,
		35.255524, 31.612576, 40.755638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533703, 32.115158, 40.717495>,  <34.655540, 31.522694, 41.104839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533703, 32.115158, 40.717495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839554, 31.935844, 40.532288>,  <35.023064, 31.828257, 40.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839554, 31.935844, 40.532288>,  <34.533703, 32.115158, 40.717495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839554, 31.935844, 40.532288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353256, 0.309379, -0.882890,
		0.539032, 0.838647, 0.078202,
		0.764627, -0.448281, -0.463022,
		35.068943, 31.801361, 40.393379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548141, 32.492058, 40.172081>,  <34.533703, 32.115158, 40.717495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548141, 32.492058, 40.172081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771030, 32.169975, 40.090935>,  <34.904762, 31.976727, 40.042248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771030, 32.169975, 40.090935>,  <34.548141, 32.492058, 40.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771030, 32.169975, 40.090935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241599, 0.076522, -0.967355,
		0.794442, 0.588039, -0.151897,
		0.557218, -0.805205, -0.202862,
		34.938194, 31.928413, 40.030075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044334, 32.642227, 39.606480>,  <34.548141, 32.492058, 40.172081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044334, 32.642227, 39.606480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992565, 32.245590, 39.607216>,  <34.961506, 32.007610, 39.607658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992565, 32.245590, 39.607216>,  <35.044334, 32.642227, 39.606480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992565, 32.245590, 39.607216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142953, 0.016819, -0.989587,
		0.981232, -0.128335, -0.143927,
		-0.129419, -0.991588, 0.001843,
		34.953739, 31.948114, 39.607769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488895, 32.452137, 39.042465>,  <35.044334, 32.642227, 39.606480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488895, 32.452137, 39.042465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245617, 32.143753, 39.118057>,  <35.099648, 31.958723, 39.163414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245617, 32.143753, 39.118057>,  <35.488895, 32.452137, 39.042465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245617, 32.143753, 39.118057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126404, -0.140976, -0.981910,
		0.783657, -0.621084, -0.011711,
		-0.608198, -0.770961, 0.188984,
		35.063156, 31.912464, 39.174751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645138, 31.957884, 38.436432>,  <35.488895, 32.452137, 39.042465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645138, 31.957884, 38.436432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292320, 31.833706, 38.578205>,  <35.080631, 31.759199, 38.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292320, 31.833706, 38.578205>,  <35.645138, 31.957884, 38.436432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292320, 31.833706, 38.578205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359396, -0.043143, -0.932187,
		0.304684, -0.949612, -0.073519,
		-0.882045, -0.310445, 0.354431,
		35.027706, 31.740572, 38.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523422, 31.380892, 38.072731>,  <35.645138, 31.957884, 38.436432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523422, 31.380892, 38.072731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185070, 31.546057, 38.207779>,  <34.982059, 31.645155, 38.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185070, 31.546057, 38.207779>,  <35.523422, 31.380892, 38.072731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185070, 31.546057, 38.207779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364680, 0.014176, -0.931025,
		-0.389219, -0.910660, 0.138590,
		-0.845882, 0.412913, 0.337617,
		34.931305, 31.669931, 38.309063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047215, 31.017286, 37.759590>,  <35.523422, 31.380892, 38.072731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047215, 31.017286, 37.759590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843998, 31.339169, 37.882450>,  <34.722069, 31.532297, 37.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843998, 31.339169, 37.882450>,  <35.047215, 31.017286, 37.759590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843998, 31.339169, 37.882450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394517, 0.099591, -0.913476,
		-0.765668, -0.585263, 0.266873,
		-0.508045, 0.804705, 0.307149,
		34.691586, 31.580580, 37.974594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375530, 30.946642, 37.395737>,  <35.047215, 31.017286, 37.759590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375530, 30.946642, 37.395737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387947, 31.329126, 37.512150>,  <34.395397, 31.558617, 37.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387947, 31.329126, 37.512150>,  <34.375530, 30.946642, 37.395737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387947, 31.329126, 37.512150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468393, 0.271135, -0.840889,
		-0.882975, -0.110214, 0.456298,
		0.031041, 0.956211, 0.291029,
		34.397259, 31.615990, 37.599457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665241, 31.174950, 37.163803>,  <34.375530, 30.946642, 37.395737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665241, 31.174950, 37.163803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903378, 31.489822, 37.228199>,  <34.046257, 31.678745, 37.266838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903378, 31.489822, 37.228199>,  <33.665241, 31.174950, 37.163803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903378, 31.489822, 37.228199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341434, 0.429232, -0.836172,
		-0.727321, 0.442837, 0.524309,
		0.595338, 0.787182, 0.160990,
		34.081978, 31.725977, 37.276497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222874, 31.761938, 37.120293>,  <33.665241, 31.174950, 37.163803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222874, 31.761938, 37.120293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600834, 31.876635, 37.057129>,  <33.827610, 31.945452, 37.019230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600834, 31.876635, 37.057129>,  <33.222874, 31.761938, 37.120293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600834, 31.876635, 37.057129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302656, 0.581461, -0.755183,
		-0.124723, 0.761369, 0.636209,
		0.944904, 0.286741, -0.157912,
		33.884304, 31.962656, 37.009754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153965, 32.372551, 36.916523>,  <33.222874, 31.761938, 37.120293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153965, 32.372551, 36.916523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524605, 32.314236, 36.777870>,  <33.746990, 32.279247, 36.694679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524605, 32.314236, 36.777870>,  <33.153965, 32.372551, 36.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524605, 32.314236, 36.777870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170924, 0.657782, -0.733559,
		0.334954, 0.738964, 0.584583,
		0.926602, -0.145790, -0.346633,
		33.802586, 32.270500, 36.673882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394581, 33.060219, 36.730946>,  <33.153965, 32.372551, 36.916523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394581, 33.060219, 36.730946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619816, 32.800583, 36.526352>,  <33.754955, 32.644802, 36.403595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619816, 32.800583, 36.526352>,  <33.394581, 33.060219, 36.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619816, 32.800583, 36.526352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047517, 0.592481, -0.804182,
		0.825030, 0.477129, 0.302777,
		0.563088, -0.649087, -0.511486,
		33.788742, 32.605858, 36.372906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050426, 33.469082, 36.441139>,  <33.394581, 33.060219, 36.730946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050426, 33.469082, 36.441139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985596, 33.133446, 36.233425>,  <33.946697, 32.932064, 36.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985596, 33.133446, 36.233425>,  <34.050426, 33.469082, 36.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985596, 33.133446, 36.233425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118116, 0.505961, -0.854431,
		0.979684, -0.199817, 0.017108,
		-0.162074, -0.839093, -0.519283,
		33.936974, 32.881718, 36.077641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625061, 33.416004, 36.050201>,  <34.050426, 33.469082, 36.441139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625061, 33.416004, 36.050201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331337, 33.201321, 35.883953>,  <34.155102, 33.072510, 35.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331337, 33.201321, 35.883953>,  <34.625061, 33.416004, 36.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331337, 33.201321, 35.883953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016668, 0.597827, -0.801452,
		0.678613, -0.595439, -0.430043,
		-0.734307, -0.536708, -0.415618,
		34.111046, 33.040310, 35.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603577, 34.037418, 36.428020>,  <34.625061, 33.416004, 36.050201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603577, 34.037418, 36.428020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860176, 33.847389, 36.187092>,  <35.014137, 33.733372, 36.042534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860176, 33.847389, 36.187092>,  <34.603577, 34.037418, 36.428020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860176, 33.847389, 36.187092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730416, 0.138288, 0.668856,
		-0.234459, -0.869014, 0.435710,
		0.641499, -0.475069, -0.602319,
		35.052628, 33.704868, 36.006397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968422, 33.559021, 36.798370>,  <34.603577, 34.037418, 36.428020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968422, 33.559021, 36.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230446, 33.572960, 36.496464>,  <35.387661, 33.581326, 36.315319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230446, 33.572960, 36.496464>,  <34.968422, 33.559021, 36.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230446, 33.572960, 36.496464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729146, 0.232729, 0.643571,
		0.198087, -0.971917, 0.127040,
		0.655064, 0.034852, -0.754770,
		35.426964, 33.583416, 36.270031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444309, 33.073433, 36.930470>,  <34.968422, 33.559021, 36.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444309, 33.073433, 36.930470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616356, 33.321354, 36.667915>,  <35.719585, 33.470104, 36.510384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616356, 33.321354, 36.667915>,  <35.444309, 33.073433, 36.930470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616356, 33.321354, 36.667915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777801, 0.114677, 0.617961,
		0.458284, -0.776337, -0.432755,
		0.430119, 0.619798, -0.656390,
		35.745392, 33.507294, 36.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131935, 32.832142, 36.805790>,  <35.444309, 33.073433, 36.930470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131935, 32.832142, 36.805790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110798, 33.224762, 36.732277>,  <36.098114, 33.460335, 36.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110798, 33.224762, 36.732277>,  <36.131935, 32.832142, 36.805790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110798, 33.224762, 36.732277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790585, 0.153555, 0.592787,
		0.610068, -0.113964, -0.784110,
		-0.052848, 0.981546, -0.183778,
		36.094944, 33.519226, 36.677143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770985, 33.035408, 36.582413>,  <36.131935, 32.832142, 36.805790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770985, 33.035408, 36.582413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620331, 33.390434, 36.688519>,  <36.529938, 33.603451, 36.752182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620331, 33.390434, 36.688519>,  <36.770985, 33.035408, 36.582413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620331, 33.390434, 36.688519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677752, 0.068814, 0.732063,
		0.631503, 0.455505, -0.627470,
		-0.376637, 0.887570, 0.265263,
		36.507339, 33.656704, 36.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330151, 33.582401, 36.537498>,  <36.770985, 33.035408, 36.582413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330151, 33.582401, 36.537498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051392, 33.687229, 36.804527>,  <36.884136, 33.750126, 36.964745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051392, 33.687229, 36.804527>,  <37.330151, 33.582401, 36.537498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051392, 33.687229, 36.804527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659062, -0.133008, 0.740234,
		0.282785, 0.955839, -0.080027,
		-0.696900, 0.262070, 0.667570,
		36.842323, 33.765850, 37.004799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755909, 34.088051, 36.997547>,  <37.330151, 33.582401, 36.537498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755909, 34.088051, 36.997547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419899, 34.007057, 37.198883>,  <37.218292, 33.958462, 37.319687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419899, 34.007057, 37.198883>,  <37.755909, 34.088051, 36.997547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419899, 34.007057, 37.198883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504441, 0.050048, 0.861994,
		-0.199731, 0.978006, 0.060099,
		-0.840027, -0.202484, 0.503343,
		37.167892, 33.946312, 37.349884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660992, 34.621021, 37.472267>,  <37.755909, 34.088051, 36.997547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660992, 34.621021, 37.472267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477367, 34.293777, 37.610809>,  <37.367195, 34.097431, 37.693935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477367, 34.293777, 37.610809>,  <37.660992, 34.621021, 37.472267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477367, 34.293777, 37.610809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518218, 0.070077, 0.852373,
		-0.721607, 0.570775, 0.391790,
		-0.459057, -0.818111, 0.346354,
		37.339649, 34.048344, 37.714714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246937, 34.855846, 38.123028>,  <37.660992, 34.621021, 37.472267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246937, 34.855846, 38.123028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293617, 34.461014, 38.166939>,  <37.321625, 34.224113, 38.193283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293617, 34.461014, 38.166939>,  <37.246937, 34.855846, 38.123028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293617, 34.461014, 38.166939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175474, 0.129282, 0.975959,
		-0.977543, -0.094632, 0.188294,
		0.116700, -0.987082, 0.109773,
		37.328629, 34.164890, 38.199871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990211, 34.733753, 38.764427>,  <37.246937, 34.855846, 38.123028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990211, 34.733753, 38.764427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197590, 34.393166, 38.732883>,  <37.322018, 34.188812, 38.713955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197590, 34.393166, 38.732883>,  <36.990211, 34.733753, 38.764427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197590, 34.393166, 38.732883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197163, 0.029289, 0.979933,
		-0.832072, -0.523588, 0.183063,
		0.518443, -0.851468, -0.078862,
		37.353123, 34.137726, 38.709225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035297, 34.417065, 39.498444>,  <36.990211, 34.733753, 38.764427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035297, 34.417065, 39.498444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308590, 34.203938, 39.298729>,  <37.472565, 34.076061, 39.178898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308590, 34.203938, 39.298729>,  <37.035297, 34.417065, 39.498444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308590, 34.203938, 39.298729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406382, -0.290634, 0.866248,
		-0.606668, -0.794753, 0.017959,
		0.683234, -0.532823, -0.499291,
		37.513561, 34.044090, 39.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178890, 33.796043, 39.895405>,  <37.035297, 34.417065, 39.498444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178890, 33.796043, 39.895405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502563, 33.836208, 39.663837>,  <37.696766, 33.860306, 39.524899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502563, 33.836208, 39.663837>,  <37.178890, 33.796043, 39.895405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502563, 33.836208, 39.663837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577356, -0.318707, 0.751722,
		-0.109026, -0.942520, -0.315863,
		0.809180, 0.100408, -0.578917,
		37.745319, 33.866329, 39.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570435, 33.124699, 39.730595>,  <37.178890, 33.796043, 39.895405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570435, 33.124699, 39.730595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795322, 33.453117, 39.770187>,  <37.930256, 33.650169, 39.793941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795322, 33.453117, 39.770187>,  <37.570435, 33.124699, 39.730595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795322, 33.453117, 39.770187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539210, -0.454688, 0.708880,
		0.627028, -0.345173, -0.698349,
		0.562218, 0.821045, 0.098981,
		37.963989, 33.699432, 39.799881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311481, 32.891556, 39.846741>,  <37.570435, 33.124699, 39.730595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311481, 32.891556, 39.846741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309708, 33.257095, 40.009155>,  <38.308643, 33.476418, 40.106606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309708, 33.257095, 40.009155>,  <38.311481, 32.891556, 39.846741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309708, 33.257095, 40.009155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377981, -0.374385, 0.846739,
		0.925803, 0.157230, -0.343756,
		-0.004436, 0.913846, 0.406037,
		38.308376, 33.531250, 40.130966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973770, 32.912003, 40.256981>,  <38.311481, 32.891556, 39.846741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973770, 32.912003, 40.256981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741272, 33.209278, 40.389534>,  <38.601772, 33.387646, 40.469067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741272, 33.209278, 40.389534>,  <38.973770, 32.912003, 40.256981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741272, 33.209278, 40.389534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429171, -0.066011, 0.900808,
		0.691348, 0.665814, -0.280588,
		-0.581249, 0.743192, 0.331385,
		38.566898, 33.432236, 40.488949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500095, 33.353127, 40.725418>,  <38.973770, 32.912003, 40.256981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500095, 33.353127, 40.725418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124489, 33.436749, 40.834629>,  <38.899124, 33.486923, 40.900154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124489, 33.436749, 40.834629>,  <39.500095, 33.353127, 40.725418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124489, 33.436749, 40.834629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244935, -0.150655, 0.957763,
		0.241357, 0.966229, 0.090263,
		-0.939017, 0.209054, 0.273025,
		38.842785, 33.499466, 40.916538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466476, 33.871696, 41.279690>,  <39.500095, 33.353127, 40.725418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466476, 33.871696, 41.279690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108845, 33.698017, 41.323677>,  <38.894264, 33.593811, 41.350071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108845, 33.698017, 41.323677>,  <39.466476, 33.871696, 41.279690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108845, 33.698017, 41.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118193, 0.008114, 0.992958,
		-0.432031, 0.900782, 0.044064,
		-0.894080, -0.434196, 0.109972,
		38.840622, 33.567757, 41.356670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260094, 34.210590, 41.844337>,  <39.466476, 33.871696, 41.279690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260094, 34.210590, 41.844337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991295, 33.914581, 41.833096>,  <38.830017, 33.736977, 41.826351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991295, 33.914581, 41.833096>,  <39.260094, 34.210590, 41.844337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991295, 33.914581, 41.833096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033811, -0.068571, 0.997073,
		-0.739784, 0.669077, 0.071100,
		-0.671994, -0.740023, -0.028106,
		38.789696, 33.692574, 41.824665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859085, 34.303051, 42.372845>,  <39.260094, 34.210590, 41.844337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859085, 34.303051, 42.372845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804752, 33.912544, 42.305374>,  <38.772152, 33.678242, 42.264893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804752, 33.912544, 42.305374>,  <38.859085, 34.303051, 42.372845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804752, 33.912544, 42.305374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037821, -0.165019, 0.985565,
		-0.990010, 0.140252, -0.014509,
		-0.135833, -0.976268, -0.168675,
		38.764004, 33.619663, 42.254772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221233, 34.028522, 42.739166>,  <38.859085, 34.303051, 42.372845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221233, 34.028522, 42.739166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454994, 33.709049, 42.681793>,  <38.595249, 33.517365, 42.647369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454994, 33.709049, 42.681793>,  <38.221233, 34.028522, 42.739166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454994, 33.709049, 42.681793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140112, -0.273423, 0.951635,
		-0.799276, -0.536041, -0.271694,
		0.584403, -0.798686, -0.143435,
		38.630314, 33.469444, 42.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854424, 33.486027, 42.995415>,  <38.221233, 34.028522, 42.739166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854424, 33.486027, 42.995415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231911, 33.357449, 42.964233>,  <38.458401, 33.280304, 42.945526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231911, 33.357449, 42.964233>,  <37.854424, 33.486027, 42.995415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231911, 33.357449, 42.964233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066571, -0.415438, 0.907182,
		-0.323990, -0.850933, -0.413454,
		0.943716, -0.321442, -0.077950,
		38.515026, 33.261017, 42.940849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941948, 32.881958, 43.348869>,  <37.854424, 33.486027, 42.995415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941948, 32.881958, 43.348869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324772, 32.994164, 43.319603>,  <38.554466, 33.061489, 43.302044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324772, 32.994164, 43.319603>,  <37.941948, 32.881958, 43.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324772, 32.994164, 43.319603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185659, -0.399255, 0.897845,
		0.222649, -0.872872, -0.434190,
		0.957057, 0.280516, -0.073163,
		38.611889, 33.078320, 43.297653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295898, 32.392891, 43.686028>,  <37.941948, 32.881958, 43.348869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295898, 32.392891, 43.686028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565723, 32.687828, 43.700405>,  <38.727619, 32.864792, 43.709030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565723, 32.687828, 43.700405>,  <38.295898, 32.392891, 43.686028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565723, 32.687828, 43.700405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081699, -0.122958, 0.989043,
		0.733684, -0.664234, -0.143183,
		0.674561, 0.737344, 0.035945,
		38.768093, 32.909031, 43.711189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778397, 32.070240, 44.129704>,  <38.295898, 32.392891, 43.686028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778397, 32.070240, 44.129704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855881, 32.462540, 44.139576>,  <38.902370, 32.697918, 44.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855881, 32.462540, 44.139576>,  <38.778397, 32.070240, 44.129704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855881, 32.462540, 44.139576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182082, -0.060657, 0.981411,
		0.964013, -0.185618, -0.190327,
		0.193712, 0.980748, 0.024677,
		38.913994, 32.756763, 44.146980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415607, 32.188484, 44.542683>,  <38.778397, 32.070240, 44.129704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415607, 32.188484, 44.542683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216026, 32.535088, 44.536892>,  <39.096279, 32.743050, 44.533417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216026, 32.535088, 44.536892>,  <39.415607, 32.188484, 44.542683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216026, 32.535088, 44.536892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115775, 0.083201, 0.989785,
		0.858862, 0.492178, -0.141833,
		-0.498951, 0.866509, -0.014476,
		39.066341, 32.795040, 44.532551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815178, 32.751259, 44.950077>,  <39.415607, 32.188484, 44.542683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815178, 32.751259, 44.950077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449993, 32.914242, 44.941338>,  <39.230881, 33.012032, 44.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449993, 32.914242, 44.941338>,  <39.815178, 32.751259, 44.950077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449993, 32.914242, 44.941338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104888, 0.286083, 0.952447,
		0.394329, 0.867258, -0.303921,
		-0.912964, 0.407455, -0.021846,
		39.176105, 33.036480, 44.934784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897186, 33.381786, 45.241768>,  <39.815178, 32.751259, 44.950077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897186, 33.381786, 45.241768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502544, 33.327297, 45.277683>,  <39.265759, 33.294605, 45.299232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502544, 33.327297, 45.277683>,  <39.897186, 33.381786, 45.241768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502544, 33.327297, 45.277683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018363, 0.454119, 0.890752,
		-0.162112, 0.880466, -0.445533,
		-0.986601, -0.136220, 0.089786,
		39.206566, 33.286430, 45.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586433, 34.026436, 45.473652>,  <39.897186, 33.381786, 45.241768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586433, 34.026436, 45.473652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337154, 33.735085, 45.587547>,  <39.187588, 33.560272, 45.655884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337154, 33.735085, 45.587547>,  <39.586433, 34.026436, 45.473652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337154, 33.735085, 45.587547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085443, 0.298500, 0.950577,
		-0.777380, 0.616731, -0.123790,
		-0.623202, -0.728382, 0.284743,
		39.150192, 33.516571, 45.672970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226681, 34.310532, 45.880333>,  <39.586433, 34.026436, 45.473652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226681, 34.310532, 45.880333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097401, 33.946133, 45.982803>,  <39.019833, 33.727493, 46.044285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097401, 33.946133, 45.982803>,  <39.226681, 34.310532, 45.880333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097401, 33.946133, 45.982803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081013, 0.296344, 0.951639,
		-0.942856, 0.286817, -0.169581,
		-0.323201, -0.910997, 0.256174,
		39.000439, 33.672832, 46.059654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592514, 34.349174, 46.407005>,  <39.226681, 34.310532, 45.880333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592514, 34.349174, 46.407005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736073, 33.979675, 46.460506>,  <38.822208, 33.757977, 46.492607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736073, 33.979675, 46.460506>,  <38.592514, 34.349174, 46.407005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736073, 33.979675, 46.460506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068971, 0.169151, 0.983174,
		-0.930826, -0.343631, 0.124419,
		0.358895, -0.923746, 0.133749,
		38.843742, 33.702553, 46.500629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180710, 34.073002, 46.941284>,  <38.592514, 34.349174, 46.407005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180710, 34.073002, 46.941284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532562, 33.882778, 46.944958>,  <38.743675, 33.768642, 46.947163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532562, 33.882778, 46.944958>,  <38.180710, 34.073002, 46.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532562, 33.882778, 46.944958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021836, -0.021096, 0.999539,
		-0.475148, -0.879430, -0.028941,
		0.879635, -0.475560, 0.009179,
		38.796452, 33.740108, 46.947712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158504, 33.584049, 47.452213>,  <38.180710, 34.073002, 46.941284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158504, 33.584049, 47.452213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550259, 33.610676, 47.375935>,  <38.785313, 33.626652, 47.330166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550259, 33.610676, 47.375935>,  <38.158504, 33.584049, 47.452213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550259, 33.610676, 47.375935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193632, -0.040774, 0.980227,
		0.057472, -0.996949, -0.052822,
		0.979389, 0.066564, -0.190698,
		38.844074, 33.630646, 47.318726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512085, 33.100819, 47.876579>,  <38.158504, 33.584049, 47.452213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512085, 33.100819, 47.876579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812931, 33.338711, 47.763008>,  <38.993439, 33.481445, 47.694866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812931, 33.338711, 47.763008>,  <38.512085, 33.100819, 47.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812931, 33.338711, 47.763008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353419, -0.000356, 0.935465,
		0.556251, -0.803923, -0.210457,
		0.752117, 0.594733, -0.283924,
		39.038567, 33.517132, 47.677830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196114, 32.751728, 48.047867>,  <38.512085, 33.100819, 47.876579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196114, 32.751728, 48.047867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226540, 33.150253, 48.032005>,  <39.244793, 33.389370, 48.022488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226540, 33.150253, 48.032005>,  <39.196114, 32.751728, 48.047867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226540, 33.150253, 48.032005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464593, -0.000222, 0.885524,
		0.882252, -0.085779, -0.462897,
		0.076062, 0.996314, -0.039657,
		39.249359, 33.449146, 48.020107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882080, 32.953239, 48.254143>,  <39.196114, 32.751728, 48.047867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882080, 32.953239, 48.254143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701962, 33.306694, 48.305412>,  <39.593891, 33.518764, 48.336174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701962, 33.306694, 48.305412>,  <39.882080, 32.953239, 48.254143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701962, 33.306694, 48.305412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417208, 0.081314, 0.905166,
		0.789413, 0.461064, -0.405274,
		-0.450294, 0.883633, 0.128170,
		39.566872, 33.571785, 48.343864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350609, 33.523712, 48.453381>,  <39.882080, 32.953239, 48.254143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350609, 33.523712, 48.453381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984978, 33.623486, 48.581284>,  <39.765598, 33.683350, 48.658024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984978, 33.623486, 48.581284>,  <40.350609, 33.523712, 48.453381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984978, 33.623486, 48.581284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373870, 0.212858, 0.902725,
		0.157109, 0.944708, -0.287826,
		-0.914078, 0.249436, 0.319756,
		39.710754, 33.698315, 48.677212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537052, 34.085999, 48.809837>,  <40.350609, 33.523712, 48.453381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537052, 34.085999, 48.809837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174366, 33.960583, 48.922661>,  <39.956753, 33.885334, 48.990356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174366, 33.960583, 48.922661>,  <40.537052, 34.085999, 48.809837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174366, 33.960583, 48.922661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305570, -0.027453, 0.951774,
		-0.290671, 0.949180, 0.120699,
		-0.906718, -0.313535, 0.282061,
		39.902351, 33.866524, 49.007278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055527, 34.543514, 49.264214>,  <40.537052, 34.085999, 48.809837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055527, 34.543514, 49.264214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949120, 34.165169, 49.338600>,  <39.885277, 33.938164, 49.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949120, 34.165169, 49.338600>,  <40.055527, 34.543514, 49.264214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949120, 34.165169, 49.338600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051083, 0.206483, 0.977116,
		-0.962614, 0.250430, -0.103245,
		-0.266017, -0.945859, 0.185970,
		39.869316, 33.881413, 49.394390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620487, 35.071762, 49.635571>,  <40.055527, 34.543514, 49.264214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620487, 35.071762, 49.635571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634712, 35.466263, 49.700127>,  <39.643250, 35.702961, 49.738861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634712, 35.466263, 49.700127>,  <39.620487, 35.071762, 49.635571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634712, 35.466263, 49.700127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085467, 0.157902, -0.983749,
		-0.995706, 0.048781, -0.078676,
		0.035565, 0.986249, 0.161393,
		39.645382, 35.762138, 49.748543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188122, 35.340008, 49.188122>,  <39.620487, 35.071762, 49.635571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188122, 35.340008, 49.188122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394005, 35.675064, 49.261261>,  <39.517536, 35.876099, 49.305145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394005, 35.675064, 49.261261>,  <39.188122, 35.340008, 49.188122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394005, 35.675064, 49.261261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015946, 0.222588, -0.974782,
		-0.857216, 0.498814, 0.127925,
		0.514710, 0.837639, 0.182852,
		39.548416, 35.926357, 49.316116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854813, 35.930229, 49.011547>,  <39.188122, 35.340008, 49.188122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854813, 35.930229, 49.011547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237717, 36.044857, 48.995869>,  <39.467461, 36.113632, 48.986462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237717, 36.044857, 48.995869>,  <38.854813, 35.930229, 49.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237717, 36.044857, 48.995869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140283, 0.341506, -0.929351,
		-0.252935, 0.895128, 0.367110,
		0.957259, 0.286565, -0.039192,
		39.524895, 36.130825, 48.984112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860924, 36.583267, 48.568481>,  <38.854813, 35.930229, 49.011547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860924, 36.583267, 48.568481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242046, 36.461906, 48.572479>,  <39.470722, 36.389088, 48.574879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242046, 36.461906, 48.572479>,  <38.860924, 36.583267, 48.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242046, 36.461906, 48.572479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119123, 0.343404, -0.931602,
		0.279220, 0.888830, 0.363341,
		0.952810, -0.303404, 0.009995,
		39.527889, 36.370884, 48.575478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222252, 37.136333, 48.261276>,  <38.860924, 36.583267, 48.568481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222252, 37.136333, 48.261276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447655, 36.810162, 48.208309>,  <39.582897, 36.614460, 48.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447655, 36.810162, 48.208309>,  <39.222252, 37.136333, 48.261276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447655, 36.810162, 48.208309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115409, 0.236424, -0.964772,
		0.818010, 0.528374, 0.227334,
		0.563508, -0.815429, -0.132419,
		39.616707, 36.565533, 48.168583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733242, 37.410141, 47.851868>,  <39.222252, 37.136333, 48.261276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733242, 37.410141, 47.851868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788254, 37.015057, 47.822182>,  <39.821259, 36.778004, 47.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788254, 37.015057, 47.822182>,  <39.733242, 37.410141, 47.851868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788254, 37.015057, 47.822182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208976, 0.102171, -0.972569,
		0.968202, 0.118244, 0.220459,
		0.137525, -0.987714, -0.074212,
		39.829510, 36.718742, 47.799919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331821, 37.388645, 47.520287>,  <39.733242, 37.410141, 47.851868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331821, 37.388645, 47.520287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166504, 37.031929, 47.446644>,  <40.067314, 36.817898, 47.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166504, 37.031929, 47.446644>,  <40.331821, 37.388645, 47.520287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166504, 37.031929, 47.446644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114878, 0.149507, -0.982064,
		0.903322, -0.427032, 0.040657,
		-0.413294, -0.891791, -0.184109,
		40.042515, 36.764393, 47.391411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689259, 37.191471, 46.933735>,  <40.331821, 37.388645, 47.520287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689259, 37.191471, 46.933735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350742, 36.978386, 46.933071>,  <40.147633, 36.850533, 46.932674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350742, 36.978386, 46.933071>,  <40.689259, 37.191471, 46.933735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350742, 36.978386, 46.933071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041644, -0.063050, -0.997141,
		0.531087, -0.843943, 0.075543,
		-0.846293, -0.532715, -0.001660,
		40.096855, 36.818573, 46.932571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769699, 36.587254, 46.405388>,  <40.689259, 37.191471, 46.933735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769699, 36.587254, 46.405388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378578, 36.650101, 46.460823>,  <40.143906, 36.687809, 46.494083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378578, 36.650101, 46.460823>,  <40.769699, 36.587254, 46.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378578, 36.650101, 46.460823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166352, -0.180103, -0.969479,
		-0.127360, -0.971019, 0.202243,
		-0.977807, 0.157116, 0.138593,
		40.085236, 36.697235, 46.502399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554222, 36.230877, 45.888332>,  <40.769699, 36.587254, 46.405388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554222, 36.230877, 45.888332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223953, 36.442577, 45.966469>,  <40.025791, 36.569599, 46.013351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223953, 36.442577, 45.966469>,  <40.554222, 36.230877, 45.888332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223953, 36.442577, 45.966469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334497, -0.180448, -0.924959,
		-0.454292, -0.829052, 0.326025,
		-0.825670, 0.529256, 0.195340,
		39.976254, 36.601353, 46.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979618, 35.771790, 45.731003>,  <40.554222, 36.230877, 45.888332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979618, 35.771790, 45.731003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828289, 36.141636, 45.748684>,  <39.737492, 36.363544, 45.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828289, 36.141636, 45.748684>,  <39.979618, 35.771790, 45.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828289, 36.141636, 45.748684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331889, -0.090909, -0.938928,
		-0.864129, -0.369893, 0.341263,
		-0.378327, 0.924616, 0.044206,
		39.714790, 36.419022, 45.761948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318810, 35.674984, 45.530041>,  <39.979618, 35.771790, 45.731003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318810, 35.674984, 45.530041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375748, 36.067688, 45.479610>,  <39.409908, 36.303310, 45.449352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375748, 36.067688, 45.479610>,  <39.318810, 35.674984, 45.530041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375748, 36.067688, 45.479610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456960, -0.047808, -0.888202,
		-0.878024, 0.184040, 0.441818,
		0.142343, 0.981755, -0.126075,
		39.418449, 36.362213, 45.441788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660233, 35.982506, 45.290031>,  <39.318810, 35.674984, 45.530041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660233, 35.982506, 45.290031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976166, 36.188629, 45.156990>,  <39.165726, 36.312302, 45.077164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976166, 36.188629, 45.156990>,  <38.660233, 35.982506, 45.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976166, 36.188629, 45.156990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350287, -0.066152, -0.934303,
		-0.503453, 0.854451, 0.128255,
		0.789832, 0.515304, -0.332607,
		39.213116, 36.343220, 45.057209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452484, 36.436691, 44.794193>,  <38.660233, 35.982506, 45.290031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452484, 36.436691, 44.794193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838104, 36.472847, 44.694248>,  <39.069477, 36.494541, 44.634281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838104, 36.472847, 44.694248>,  <38.452484, 36.436691, 44.794193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838104, 36.472847, 44.694248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255043, 0.051071, -0.965580,
		-0.074515, 0.994596, 0.072288,
		0.964054, 0.090387, -0.249860,
		39.127319, 36.499962, 44.619289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617802, 37.047466, 44.295738>,  <38.452484, 36.436691, 44.794193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617802, 37.047466, 44.295738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917866, 36.785336, 44.260403>,  <39.097904, 36.628056, 44.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917866, 36.785336, 44.260403>,  <38.617802, 37.047466, 44.295738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917866, 36.785336, 44.260403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110363, 0.007642, -0.993862,
		0.651984, 0.755303, -0.066592,
		0.750158, -0.655331, -0.088340,
		39.142914, 36.588737, 44.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968479, 37.351368, 43.808819>,  <38.617802, 37.047466, 44.295738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968479, 37.351368, 43.808819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104652, 36.975266, 43.810539>,  <39.186356, 36.749603, 43.811569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104652, 36.975266, 43.810539>,  <38.968479, 37.351368, 43.808819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104652, 36.975266, 43.810539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008232, -0.001590, -0.999965,
		0.940231, 0.340460, 0.007199,
		0.340437, -0.940258, 0.004298,
		39.206783, 36.693188, 43.811829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434303, 37.283009, 43.256512>,  <38.968479, 37.351368, 43.808819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434303, 37.283009, 43.256512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338978, 36.900364, 43.323570>,  <39.281784, 36.670776, 43.363804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338978, 36.900364, 43.323570>,  <39.434303, 37.283009, 43.256512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338978, 36.900364, 43.323570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084583, -0.151517, -0.984829,
		0.967499, -0.248875, -0.044805,
		-0.238311, -0.956611, 0.167643,
		39.267483, 36.613380, 43.373863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679588, 36.945217, 42.708202>,  <39.434303, 37.283009, 43.256512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679588, 36.945217, 42.708202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437435, 36.657879, 42.845310>,  <39.292145, 36.485477, 42.927574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437435, 36.657879, 42.845310>,  <39.679588, 36.945217, 42.708202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437435, 36.657879, 42.845310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189330, -0.288326, -0.938628,
		0.773089, -0.633125, 0.038543,
		-0.605382, -0.718345, 0.342772,
		39.255821, 36.442375, 42.948143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911079, 36.346569, 42.405041>,  <39.679588, 36.945217, 42.708202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911079, 36.346569, 42.405041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534290, 36.280437, 42.521900>,  <39.308216, 36.240757, 42.592014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534290, 36.280437, 42.521900>,  <39.911079, 36.346569, 42.405041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534290, 36.280437, 42.521900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245930, -0.252453, -0.935834,
		0.228476, -0.953380, 0.197144,
		-0.941975, -0.165332, 0.292144,
		39.251698, 36.230839, 42.609543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675621, 35.619396, 42.177410>,  <39.911079, 36.346569, 42.405041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675621, 35.619396, 42.177410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340733, 35.832756, 42.225639>,  <39.139797, 35.960773, 42.254578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340733, 35.832756, 42.225639>,  <39.675621, 35.619396, 42.177410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340733, 35.832756, 42.225639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271424, -0.213903, -0.938389,
		-0.474750, -0.818367, 0.323863,
		-0.837222, 0.533405, 0.120574,
		39.089565, 35.992779, 42.261810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223850, 35.207912, 41.909519>,  <39.675621, 35.619396, 42.177410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223850, 35.207912, 41.909519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072193, 35.577347, 41.886734>,  <38.981197, 35.799007, 41.873062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072193, 35.577347, 41.886734>,  <39.223850, 35.207912, 41.909519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072193, 35.577347, 41.886734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175422, -0.132186, -0.975579,
		-0.908558, -0.359891, 0.212134,
		-0.379144, 0.923583, -0.056966,
		38.958450, 35.854424, 41.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712414, 35.026501, 41.330048>,  <39.223850, 35.207912, 41.909519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712414, 35.026501, 41.330048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693993, 35.422195, 41.385605>,  <38.682941, 35.659611, 41.418938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693993, 35.422195, 41.385605>,  <38.712414, 35.026501, 41.330048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693993, 35.422195, 41.385605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296961, 0.119197, -0.947421,
		-0.953779, -0.084876, 0.288275,
		-0.046052, 0.989236, 0.138893,
		38.680176, 35.718967, 41.427273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056522, 35.266834, 41.106522>,  <38.712414, 35.026501, 41.330048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056522, 35.266834, 41.106522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329514, 35.559113, 41.099419>,  <38.493309, 35.734478, 41.095158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329514, 35.559113, 41.099419>,  <38.056522, 35.266834, 41.106522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329514, 35.559113, 41.099419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140943, 0.107723, -0.984140,
		-0.717192, 0.674152, 0.176504,
		0.682474, 0.730694, -0.017759,
		38.534256, 35.778320, 41.094090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799358, 35.734173, 40.655766>,  <38.056522, 35.266834, 41.106522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799358, 35.734173, 40.655766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190948, 35.815689, 40.652233>,  <38.425903, 35.864601, 40.650112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190948, 35.815689, 40.652233>,  <37.799358, 35.734173, 40.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190948, 35.815689, 40.652233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004569, -0.065181, -0.997863,
		-0.203933, 0.976842, -0.064742,
		0.978974, 0.203793, -0.008829,
		38.484642, 35.876827, 40.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030834, 36.291233, 40.167309>,  <37.799358, 35.734173, 40.655766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030834, 36.291233, 40.167309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372173, 36.087555, 40.212063>,  <38.576977, 35.965347, 40.238914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372173, 36.087555, 40.212063>,  <38.030834, 36.291233, 40.167309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372173, 36.087555, 40.212063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064144, -0.110434, -0.991812,
		0.517380, 0.853538, -0.061577,
		0.853349, -0.509193, 0.111885,
		38.628178, 35.934795, 40.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366264, 36.480263, 39.598473>,  <38.030834, 36.291233, 40.167309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366264, 36.480263, 39.598473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595287, 36.172150, 39.710789>,  <38.732700, 35.987282, 39.778179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595287, 36.172150, 39.710789>,  <38.366264, 36.480263, 39.598473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595287, 36.172150, 39.710789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238787, -0.170962, -0.955904,
		0.784322, 0.614357, 0.086049,
		0.572555, -0.770284, 0.280790,
		38.767056, 35.941063, 39.795025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017124, 36.600197, 39.393730>,  <38.366264, 36.480263, 39.598473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017124, 36.600197, 39.393730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976891, 36.202255, 39.398758>,  <38.952751, 35.963490, 39.401775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976891, 36.202255, 39.398758>,  <39.017124, 36.600197, 39.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976891, 36.202255, 39.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334319, -0.045696, -0.941351,
		0.937077, -0.090480, 0.337194,
		-0.100582, -0.994849, 0.012571,
		38.946716, 35.903801, 39.402531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664932, 36.383728, 39.143085>,  <39.017124, 36.600197, 39.393730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664932, 36.383728, 39.143085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409454, 36.080593, 39.089790>,  <39.256168, 35.898712, 39.057812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409454, 36.080593, 39.089790>,  <39.664932, 36.383728, 39.143085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409454, 36.080593, 39.089790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276583, -0.064526, -0.958821,
		0.718036, -0.649241, 0.250818,
		-0.638691, -0.757840, -0.133237,
		39.217846, 35.853241, 39.049820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949944, 35.969990, 38.783844>,  <39.664932, 36.383728, 39.143085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949944, 35.969990, 38.783844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578552, 35.848541, 38.698288>,  <39.355717, 35.775673, 38.646954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578552, 35.848541, 38.698288>,  <39.949944, 35.969990, 38.783844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578552, 35.848541, 38.698288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268830, -0.152074, -0.951107,
		0.256246, -0.940579, 0.222818,
		-0.928476, -0.303618, -0.213887,
		39.300011, 35.757458, 38.634121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014923, 35.451992, 38.145012>,  <39.949944, 35.969990, 38.783844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014923, 35.451992, 38.145012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634449, 35.575001, 38.155434>,  <39.406166, 35.648808, 38.161686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634449, 35.575001, 38.155434>,  <40.014923, 35.451992, 38.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634449, 35.575001, 38.155434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047099, 0.228087, -0.972501,
		-0.305009, -0.923800, -0.231437,
		-0.951184, 0.307522, 0.026059,
		39.349094, 35.667259, 38.163250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706707, 35.201366, 37.497608>,  <40.014923, 35.451992, 38.145012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706707, 35.201366, 37.497608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484253, 35.510345, 37.620266>,  <39.350780, 35.695732, 37.693863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484253, 35.510345, 37.620266>,  <39.706707, 35.201366, 37.497608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484253, 35.510345, 37.620266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064098, 0.328004, -0.942499,
		-0.828615, -0.543815, -0.132903,
		-0.556138, 0.772450, 0.306647,
		39.317413, 35.742081, 37.712261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237530, 35.255978, 36.942799>,  <39.706707, 35.201366, 37.497608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237530, 35.255978, 36.942799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202652, 35.610374, 37.124969>,  <39.181725, 35.823013, 37.234272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202652, 35.610374, 37.124969>,  <39.237530, 35.255978, 36.942799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202652, 35.610374, 37.124969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137739, 0.442053, -0.886350,
		-0.986623, -0.140019, 0.083489,
		-0.087199, 0.885993, 0.455426,
		39.176491, 35.876171, 37.261597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598869, 35.517811, 36.616356>,  <39.237530, 35.255978, 36.942799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598869, 35.517811, 36.616356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777611, 35.821770, 36.805199>,  <38.884853, 36.004147, 36.918503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777611, 35.821770, 36.805199>,  <38.598869, 35.517811, 36.616356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777611, 35.821770, 36.805199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091981, 0.563950, -0.820670,
		-0.889867, 0.323293, 0.321898,
		0.446851, 0.759896, 0.472104,
		38.911667, 36.049740, 36.946831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108727, 36.129543, 36.475235>,  <38.598869, 35.517811, 36.616356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108727, 36.129543, 36.475235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484501, 36.227776, 36.570862>,  <38.709965, 36.286713, 36.628239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484501, 36.227776, 36.570862>,  <38.108727, 36.129543, 36.475235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484501, 36.227776, 36.570862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076466, 0.529774, -0.844685,
		-0.334088, 0.811807, 0.478910,
		0.939435, 0.245579, 0.239067,
		38.766331, 36.301449, 36.642582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104610, 36.792122, 36.562073>,  <38.108727, 36.129543, 36.475235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104610, 36.792122, 36.562073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482998, 36.701447, 36.469326>,  <38.710030, 36.647041, 36.413677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482998, 36.701447, 36.469326>,  <38.104610, 36.792122, 36.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482998, 36.701447, 36.469326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021099, 0.670505, -0.741605,
		0.323576, 0.706426, 0.629493,
		0.945967, -0.226684, -0.231864,
		38.766788, 36.633442, 36.399765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361851, 37.430386, 36.318741>,  <38.104610, 36.792122, 36.562073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361851, 37.430386, 36.318741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653755, 37.192410, 36.183983>,  <38.828899, 37.049625, 36.103130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653755, 37.192410, 36.183983>,  <38.361851, 37.430386, 36.318741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653755, 37.192410, 36.183983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183701, 0.645249, -0.741558,
		0.658559, 0.479274, 0.580170,
		0.729763, -0.594937, -0.336891,
		38.872684, 37.013927, 36.082916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930252, 37.925053, 36.275101>,  <38.361851, 37.430386, 36.318741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930252, 37.925053, 36.275101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012302, 37.603252, 36.052135>,  <39.061535, 37.410172, 35.918358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012302, 37.603252, 36.052135>,  <38.930252, 37.925053, 36.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012302, 37.603252, 36.052135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003065, 0.570046, -0.821607,
		0.978730, 0.166828, 0.119399,
		0.205130, -0.804497, -0.557410,
		39.073841, 37.361904, 35.884911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599422, 37.926369, 36.010502>,  <38.930252, 37.925053, 36.275101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599422, 37.926369, 36.010502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409908, 37.702160, 35.738815>,  <39.296200, 37.567635, 35.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409908, 37.702160, 35.738815>,  <39.599422, 37.926369, 36.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409908, 37.702160, 35.738815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012933, 0.775624, -0.631063,
		0.880544, -0.290206, -0.374730,
		-0.473787, -0.560525, -0.679218,
		39.267773, 37.534004, 35.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871250, 38.056213, 35.341301>,  <39.599422, 37.926369, 36.010502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871250, 38.056213, 35.341301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529541, 37.873825, 35.241451>,  <39.324516, 37.764393, 35.181541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529541, 37.873825, 35.241451>,  <39.871250, 38.056213, 35.341301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529541, 37.873825, 35.241451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106338, 0.623328, -0.774696,
		0.508839, -0.635255, -0.580977,
		-0.854269, -0.455975, -0.249622,
		39.273262, 37.737034, 35.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909515, 38.015705, 34.637489>,  <39.871250, 38.056213, 35.341301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909515, 38.015705, 34.637489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523869, 37.965202, 34.730904>,  <39.292480, 37.934902, 34.786953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523869, 37.965202, 34.730904>,  <39.909515, 38.015705, 34.637489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523869, 37.965202, 34.730904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262383, 0.587141, -0.765781,
		-0.040438, -0.799579, -0.599199,
		-0.964116, -0.126253, 0.233539,
		39.234634, 37.927326, 34.800964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440002, 38.171707, 34.209316>,  <39.909515, 38.015705, 34.637489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440002, 38.171707, 34.209316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811329, 38.077263, 34.324196>,  <41.034122, 38.020596, 34.393124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811329, 38.077263, 34.324196>,  <40.440002, 38.171707, 34.209316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811329, 38.077263, 34.324196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249945, -0.968187, 0.011935,
		0.275249, -0.082864, -0.957795,
		0.928313, -0.236111, 0.287204,
		41.089825, 38.006428, 34.410358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850517, 37.688747, 33.820126>,  <40.440002, 38.171707, 34.209316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850517, 37.688747, 33.820126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959530, 37.652466, 34.203270>,  <41.024937, 37.630695, 34.433155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959530, 37.652466, 34.203270>,  <40.850517, 37.688747, 33.820126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959530, 37.652466, 34.203270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166481, -0.984976, -0.045905,
		0.947634, -0.146955, -0.283540,
		0.272534, -0.090705, 0.957861,
		41.041290, 37.625256, 34.490627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493717, 37.174103, 33.935642>,  <40.850517, 37.688747, 33.820126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493717, 37.174103, 33.935642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215576, 37.210999, 34.220730>,  <41.048691, 37.233135, 34.391785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215576, 37.210999, 34.220730>,  <41.493717, 37.174103, 33.935642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215576, 37.210999, 34.220730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207727, -0.975194, -0.076460,
		0.687989, -0.201219, 0.697268,
		-0.695356, 0.092238, 0.712721,
		41.006969, 37.238670, 34.434547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547398, 36.751171, 34.371925>,  <41.493717, 37.174103, 33.935642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547398, 36.751171, 34.371925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152328, 36.790741, 34.420437>,  <40.915287, 36.814484, 34.449543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152328, 36.790741, 34.420437>,  <41.547398, 36.751171, 34.371925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152328, 36.790741, 34.420437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085311, -0.989961, 0.112693,
		0.131210, 0.100958, 0.986200,
		-0.987677, 0.098920, 0.121280,
		40.856026, 36.820415, 34.456821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425423, 36.102543, 34.624344>,  <41.547398, 36.751171, 34.371925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425423, 36.102543, 34.624344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064865, 36.262539, 34.558022>,  <40.848530, 36.358536, 34.518227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064865, 36.262539, 34.558022>,  <41.425423, 36.102543, 34.624344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064865, 36.262539, 34.558022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408074, -0.912801, 0.016424,
		-0.144783, 0.082467, 0.986021,
		-0.901396, 0.399991, -0.165810,
		40.794445, 36.382538, 34.508278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042160, 36.382370, 34.842457>,  <41.425423, 36.102543, 34.624344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042160, 36.382370, 34.842457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377419, 36.214985, 34.982403>,  <42.578575, 36.114555, 35.066368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377419, 36.214985, 34.982403>,  <42.042160, 36.382370, 34.842457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377419, 36.214985, 34.982403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207019, -0.349378, -0.913826,
		0.504632, 0.838348, -0.206201,
		0.838146, -0.418459, 0.349861,
		42.628864, 36.089447, 35.087360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168240, 35.884670, 34.280090>,  <42.042160, 36.382370, 34.842457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168240, 35.884670, 34.280090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516731, 35.880249, 34.476391>,  <42.725826, 35.877598, 34.594170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516731, 35.880249, 34.476391>,  <42.168240, 35.884670, 34.280090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516731, 35.880249, 34.476391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400743, -0.561347, -0.724082,
		0.283484, 0.827506, -0.484634,
		0.871230, -0.011052, 0.490750,
		42.778099, 35.876934, 34.623615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759136, 36.069092, 33.862370>,  <42.168240, 35.884670, 34.280090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759136, 36.069092, 33.862370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929855, 35.871128, 34.165134>,  <43.032288, 35.752350, 34.346794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929855, 35.871128, 34.165134>,  <42.759136, 36.069092, 33.862370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929855, 35.871128, 34.165134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499574, -0.568648, -0.653502,
		0.753839, 0.657043, 0.004547,
		0.426794, -0.494907, 0.756911,
		43.057892, 35.722656, 34.392208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566128, 36.126045, 33.839947>,  <42.759136, 36.069092, 33.862370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566128, 36.126045, 33.839947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455479, 35.800529, 34.044388>,  <43.389091, 35.605221, 34.167053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455479, 35.800529, 34.044388>,  <43.566128, 36.126045, 33.839947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455479, 35.800529, 34.044388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540905, -0.571459, -0.617136,
		0.794295, 0.105749, 0.598258,
		-0.276619, -0.813788, 0.511107,
		43.372494, 35.556393, 34.197720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158905, 35.761246, 33.918686>,  <43.566128, 36.126045, 33.839947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158905, 35.761246, 33.918686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848949, 35.510532, 33.951405>,  <43.662975, 35.360104, 33.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848949, 35.510532, 33.951405>,  <44.158905, 35.761246, 33.918686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848949, 35.510532, 33.951405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368822, -0.553431, -0.746783,
		0.513342, -0.548503, 0.660018,
		-0.774887, -0.626785, 0.081800,
		43.616482, 35.322498, 33.975945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385052, 35.054375, 34.185802>,  <44.158905, 35.761246, 33.918686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385052, 35.054375, 34.185802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044582, 35.008862, 33.980843>,  <43.840302, 34.981552, 33.857868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044582, 35.008862, 33.980843>,  <44.385052, 35.054375, 34.185802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044582, 35.008862, 33.980843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454078, -0.649277, -0.610125,
		-0.263265, -0.751993, 0.604316,
		-0.851178, -0.113782, -0.512396,
		43.789230, 34.974728, 33.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413486, 34.311443, 33.851303>,  <44.385052, 35.054375, 34.185802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413486, 34.311443, 33.851303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083984, 34.435726, 33.661613>,  <43.886284, 34.510296, 33.547802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083984, 34.435726, 33.661613>,  <44.413486, 34.311443, 33.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083984, 34.435726, 33.661613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229366, -0.582304, -0.779944,
		-0.518471, -0.751256, 0.408414,
		-0.823759, 0.310702, -0.474220,
		43.836857, 34.528938, 33.519348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220078, 33.751160, 33.576855>,  <44.413486, 34.311443, 33.851303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220078, 33.751160, 33.576855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049057, 34.037380, 33.355881>,  <43.946445, 34.209114, 33.223297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049057, 34.037380, 33.355881>,  <44.220078, 33.751160, 33.576855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049057, 34.037380, 33.355881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225296, -0.507474, -0.831692,
		-0.875466, -0.480052, 0.055759,
		-0.427551, 0.715556, -0.552430,
		43.920792, 34.252048, 33.190151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672115, 33.428364, 33.262589>,  <44.220078, 33.751160, 33.576855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672115, 33.428364, 33.262589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744041, 33.761654, 33.053436>,  <43.787197, 33.961628, 32.927944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744041, 33.761654, 33.053436>,  <43.672115, 33.428364, 33.262589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744041, 33.761654, 33.053436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140808, -0.547870, -0.824628,
		-0.973570, 0.074656, -0.215841,
		0.179816, 0.833226, -0.522878,
		43.797985, 34.011623, 32.896572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257763, 33.390781, 32.715618>,  <43.672115, 33.428364, 33.262589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257763, 33.390781, 32.715618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537540, 33.649509, 32.594025>,  <43.705406, 33.804745, 32.521069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537540, 33.649509, 32.594025>,  <43.257763, 33.390781, 32.715618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537540, 33.649509, 32.594025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194677, -0.581688, -0.789772,
		-0.687662, 0.493223, -0.532778,
		0.699444, 0.646816, -0.303985,
		43.747375, 33.843555, 32.502831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067791, 33.516754, 31.995447>,  <43.257763, 33.390781, 32.715618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067791, 33.516754, 31.995447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456364, 33.609066, 32.017567>,  <43.689507, 33.664452, 32.030838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456364, 33.609066, 32.017567>,  <43.067791, 33.516754, 31.995447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456364, 33.609066, 32.017567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170048, -0.514382, -0.840532,
		-0.165530, 0.825925, -0.538932,
		0.971434, 0.230777, 0.055301,
		43.747795, 33.678299, 32.034157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329506, 33.800644, 31.378216>,  <43.067791, 33.516754, 31.995447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329506, 33.800644, 31.378216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671280, 33.682613, 31.549271>,  <43.876343, 33.611794, 31.651903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671280, 33.682613, 31.549271>,  <43.329506, 33.800644, 31.378216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671280, 33.682613, 31.549271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286107, -0.419819, -0.861333,
		0.433689, 0.858302, -0.274284,
		0.854433, -0.295077, 0.427637,
		43.927608, 33.594090, 31.677561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726234, 33.898819, 30.930542>,  <43.329506, 33.800644, 31.378216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726234, 33.898819, 30.930542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958572, 33.662125, 31.154139>,  <44.097977, 33.520107, 31.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958572, 33.662125, 31.154139>,  <43.726234, 33.898819, 30.930542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958572, 33.662125, 31.154139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487683, -0.296861, -0.820998,
		0.651756, 0.749482, 0.116149,
		0.580844, -0.591734, 0.558991,
		44.132824, 33.484604, 31.321836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392963, 33.935688, 30.612486>,  <43.726234, 33.898819, 30.930542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392963, 33.935688, 30.612486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411533, 33.586979, 30.807571>,  <44.422676, 33.377754, 30.924622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411533, 33.586979, 30.807571>,  <44.392963, 33.935688, 30.612486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411533, 33.586979, 30.807571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307255, -0.452107, -0.837373,
		0.950494, 0.188729, 0.246865,
		0.046427, -0.871769, 0.487713,
		44.425461, 33.325447, 30.953886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138805, 33.593529, 30.525826>,  <44.392963, 33.935688, 30.612486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138805, 33.593529, 30.525826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865894, 33.319595, 30.628195>,  <44.702148, 33.155235, 30.689615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865894, 33.319595, 30.628195>,  <45.138805, 33.593529, 30.525826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865894, 33.319595, 30.628195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304598, -0.584501, -0.752050,
		0.664618, -0.435153, 0.607392,
		-0.682278, -0.684836, 0.255922,
		44.661209, 33.114143, 30.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484962, 33.050808, 30.621859>,  <45.138805, 33.593529, 30.525826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484962, 33.050808, 30.621859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120865, 32.890781, 30.579140>,  <44.902409, 32.794765, 30.553509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120865, 32.890781, 30.579140>,  <45.484962, 33.050808, 30.621859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120865, 32.890781, 30.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365373, -0.654636, -0.661781,
		0.194845, -0.641401, 0.742051,
		-0.910240, -0.400071, -0.106798,
		44.847794, 32.770760, 30.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521755, 32.287792, 30.740257>,  <45.484962, 33.050808, 30.621859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521755, 32.287792, 30.740257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173473, 32.329536, 30.548012>,  <44.964504, 32.354584, 30.432665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173473, 32.329536, 30.548012>,  <45.521755, 32.287792, 30.740257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173473, 32.329536, 30.548012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199648, -0.818090, -0.539323,
		-0.449467, -0.565542, 0.691478,
		-0.870701, 0.104356, -0.480614,
		44.912262, 32.360844, 30.403828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206398, 31.670839, 30.782591>,  <45.521755, 32.287792, 30.740257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206398, 31.670839, 30.782591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038456, 31.863338, 30.474794>,  <44.937691, 31.978838, 30.290115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038456, 31.863338, 30.474794>,  <45.206398, 31.670839, 30.782591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038456, 31.863338, 30.474794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067717, -0.828868, -0.555330,
		-0.905061, -0.285266, 0.315418,
		-0.419857, 0.481248, -0.769494,
		44.912498, 32.007713, 30.243946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629944, 31.262579, 30.545534>,  <45.206398, 31.670839, 30.782591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629944, 31.262579, 30.545534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751568, 31.498924, 30.246622>,  <44.824543, 31.640732, 30.067274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751568, 31.498924, 30.246622>,  <44.629944, 31.262579, 30.545534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751568, 31.498924, 30.246622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229769, -0.806749, -0.544392,
		-0.924528, -0.006173, -0.381064,
		0.304063, 0.590862, -0.747280,
		44.842785, 31.676184, 30.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366814, 30.960438, 29.957691>,  <44.629944, 31.262579, 30.545534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366814, 30.960438, 29.957691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637707, 31.207569, 29.797869>,  <44.800243, 31.355848, 29.701975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637707, 31.207569, 29.797869>,  <44.366814, 30.960438, 29.957691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637707, 31.207569, 29.797869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236162, -0.696839, -0.677232,
		-0.696839, 0.364283, -0.617829,
		0.677232, 0.617829, -0.399555,
		44.840878, 31.392918, 29.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317699, 30.759325, 29.160282>,  <44.366814, 30.960438, 29.957691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317699, 30.759325, 29.160282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663147, 30.953594, 29.214363>,  <44.870415, 31.070156, 29.246811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663147, 30.953594, 29.214363>,  <44.317699, 30.759325, 29.160282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663147, 30.953594, 29.214363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352863, -0.390790, -0.850159,
		-0.360066, 0.781922, -0.508871,
		0.863620, 0.485675, 0.135202,
		44.922234, 31.099297, 29.254923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440746, 30.993519, 28.548983>,  <44.317699, 30.759325, 29.160282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440746, 30.993519, 28.548983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795486, 30.996071, 28.733788>,  <45.008331, 30.997602, 28.844669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795486, 30.996071, 28.733788>,  <44.440746, 30.993519, 28.548983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795486, 30.996071, 28.733788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431226, -0.370551, -0.822640,
		0.165950, 0.928790, -0.331375,
		0.886851, 0.006380, 0.462011,
		45.061543, 30.997986, 28.872391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867912, 31.301874, 28.080866>,  <44.440746, 30.993519, 28.548983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867912, 31.301874, 28.080866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087627, 31.081465, 28.332151>,  <45.219456, 30.949219, 28.482924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087627, 31.081465, 28.332151>,  <44.867912, 31.301874, 28.080866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087627, 31.081465, 28.332151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332902, -0.545254, -0.769334,
		0.766457, 0.631721, -0.116066,
		0.549290, -0.551023, 0.628215,
		45.252415, 30.916159, 28.520617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474270, 31.361809, 27.938679>,  <44.867912, 31.301874, 28.080866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474270, 31.361809, 27.938679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477684, 30.999237, 28.107588>,  <45.479733, 30.781694, 28.208933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477684, 30.999237, 28.107588>,  <45.474270, 31.361809, 27.938679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477684, 30.999237, 28.107588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501419, -0.361484, -0.786072,
		0.865163, 0.218443, 0.451416,
		0.008533, -0.906428, 0.422274,
		45.480244, 30.727308, 28.234270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917774, 31.893673, 27.583511>,  <45.474270, 31.361809, 27.938679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917774, 31.893673, 27.583511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775375, 32.034405, 27.929802>,  <45.689938, 32.118843, 28.137577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775375, 32.034405, 27.929802>,  <45.917774, 31.893673, 27.583511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775375, 32.034405, 27.929802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075726, 0.912511, -0.401983,
		-0.931413, -0.208663, -0.298209,
		-0.355998, 0.351830, 0.865726,
		45.668575, 32.139954, 28.189520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335209, 32.209305, 27.370131>,  <45.917774, 31.893673, 27.583511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335209, 32.209305, 27.370131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489838, 32.366211, 27.704002>,  <45.582615, 32.460354, 27.904325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489838, 32.366211, 27.704002>,  <45.335209, 32.209305, 27.370131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489838, 32.366211, 27.704002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073125, 0.889153, -0.451730,
		-0.919356, 0.235661, 0.315036,
		0.386570, 0.392264, 0.834681,
		45.605808, 32.483891, 27.954407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725399, 32.022774, 27.236517>,  <45.335209, 32.209305, 27.370131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725399, 32.022774, 27.236517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489883, 31.700731, 27.207850>,  <44.348576, 31.507505, 27.190649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489883, 31.700731, 27.207850>,  <44.725399, 32.022774, 27.236517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489883, 31.700731, 27.207850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036080, -0.062399, 0.997399,
		-0.807483, 0.589840, 0.007692,
		-0.588786, -0.805105, -0.071668,
		44.313248, 31.459200, 27.186350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406902, 31.970734, 26.535738>,  <44.725399, 32.022774, 27.236517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406902, 31.970734, 26.535738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512428, 32.272076, 26.294788>,  <44.575745, 32.452881, 26.150219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512428, 32.272076, 26.294788>,  <44.406902, 31.970734, 26.535738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512428, 32.272076, 26.294788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963533, 0.234820, -0.128308,
		0.044788, 0.614257, 0.787834,
		0.263814, 0.753357, -0.602375,
		44.591572, 32.498081, 26.114077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981503, 32.682476, 26.697712>,  <44.406902, 31.970734, 26.535738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981503, 32.682476, 26.697712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130188, 32.691296, 26.326477>,  <44.219398, 32.696587, 26.103737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130188, 32.691296, 26.326477>,  <43.981503, 32.682476, 26.697712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130188, 32.691296, 26.326477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907176, 0.220917, -0.358088,
		0.197136, 0.975044, 0.102116,
		0.371711, 0.022045, -0.928087,
		44.241703, 32.697910, 26.048052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031223, 33.318771, 26.336939>,  <43.981503, 32.682476, 26.697712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031223, 33.318771, 26.336939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943043, 33.025688, 26.079399>,  <43.890137, 32.849838, 25.924875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943043, 33.025688, 26.079399>,  <44.031223, 33.318771, 26.336939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943043, 33.025688, 26.079399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804016, 0.510219, -0.305346,
		0.552234, 0.450356, -0.701582,
		-0.220446, -0.732705, -0.643853,
		43.876907, 32.805878, 25.886244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759289, 34.020916, 26.607462>,  <44.031223, 33.318771, 26.336939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759289, 34.020916, 26.607462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602531, 33.847580, 26.282837>,  <43.508476, 33.743576, 26.088062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602531, 33.847580, 26.282837>,  <43.759289, 34.020916, 26.607462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602531, 33.847580, 26.282837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068611, 0.893433, -0.443925,
		0.917451, -0.118286, -0.379858,
		-0.391888, -0.433342, -0.811565,
		43.484962, 33.717579, 26.039368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473801, 34.317177, 26.782101>,  <43.759289, 34.020916, 26.607462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473801, 34.317177, 26.782101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146820, 34.529667, 26.693047>,  <43.950630, 34.657162, 26.639614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146820, 34.529667, 26.693047>,  <44.473801, 34.317177, 26.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146820, 34.529667, 26.693047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072957, 0.287919, 0.954872,
		0.571355, 0.796807, -0.196603,
		-0.817454, 0.531227, -0.222637,
		43.901585, 34.689034, 26.626255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627289, 34.992496, 27.000204>,  <44.473801, 34.317177, 26.782101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627289, 34.992496, 27.000204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251320, 34.856106, 27.006878>,  <44.025738, 34.774273, 27.010881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251320, 34.856106, 27.006878>,  <44.627289, 34.992496, 27.000204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251320, 34.856106, 27.006878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127131, 0.394960, 0.909860,
		-0.316829, 0.853078, -0.414581,
		-0.939924, -0.340976, 0.016683,
		43.969341, 34.753815, 27.011883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957890, 35.525490, 27.058945>,  <44.627289, 34.992496, 27.000204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957890, 35.525490, 27.058945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943645, 35.165142, 27.231993>,  <43.935101, 34.948933, 27.335821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943645, 35.165142, 27.231993>,  <43.957890, 35.525490, 27.058945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943645, 35.165142, 27.231993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003340, 0.432787, 0.901490,
		-0.999360, 0.033545, -0.012401,
		-0.035607, -0.900872, 0.432622,
		43.932964, 34.894882, 27.361780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292416, 35.509563, 27.418633>,  <43.957890, 35.525490, 27.058945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292416, 35.509563, 27.418633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528946, 35.240128, 27.595997>,  <43.670864, 35.078468, 27.702415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528946, 35.240128, 27.595997>,  <43.292416, 35.509563, 27.418633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528946, 35.240128, 27.595997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132914, 0.460916, 0.877434,
		-0.795403, -0.577786, 0.183023,
		0.591327, -0.673587, 0.443410,
		43.706345, 35.038052, 27.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932278, 35.188103, 28.109936>,  <43.292416, 35.509563, 27.418633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932278, 35.188103, 28.109936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329575, 35.148056, 28.133404>,  <43.567955, 35.124027, 28.147486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329575, 35.148056, 28.133404>,  <42.932278, 35.188103, 28.109936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329575, 35.148056, 28.133404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029743, 0.269071, 0.962661,
		-0.112162, -0.957903, 0.264276,
		0.993245, -0.100113, 0.058671,
		43.627548, 35.118023, 28.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983406, 35.156506, 28.817654>,  <42.932278, 35.188103, 28.109936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983406, 35.156506, 28.817654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364933, 35.188873, 28.701944>,  <43.593849, 35.208294, 28.632519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364933, 35.188873, 28.701944>,  <42.983406, 35.156506, 28.817654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364933, 35.188873, 28.701944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274940, 0.152655, 0.949265,
		0.120966, -0.984962, 0.123359,
		0.953821, 0.080913, -0.289272,
		43.651081, 35.213146, 28.615162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425968, 34.739613, 29.312862>,  <42.983406, 35.156506, 28.817654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425968, 34.739613, 29.312862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656631, 35.021732, 29.147930>,  <43.795029, 35.191006, 29.048971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656631, 35.021732, 29.147930>,  <43.425968, 34.739613, 29.312862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656631, 35.021732, 29.147930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413729, 0.183091, 0.891800,
		0.704479, -0.684858, -0.186221,
		0.576661, 0.705299, -0.412329,
		43.829628, 35.233322, 29.024231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149117, 34.641418, 29.581041>,  <43.425968, 34.739613, 29.312862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149117, 34.641418, 29.581041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092422, 35.019421, 29.463139>,  <44.058407, 35.246220, 29.392397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092422, 35.019421, 29.463139>,  <44.149117, 34.641418, 29.581041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092422, 35.019421, 29.463139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434251, 0.326936, 0.839368,
		0.889572, -0.009034, -0.456705,
		-0.141731, 0.945003, -0.294756,
		44.049904, 35.302921, 29.374712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683147, 34.933624, 29.855089>,  <44.149117, 34.641418, 29.581041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683147, 34.933624, 29.855089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543041, 35.290398, 29.740709>,  <44.458977, 35.504463, 29.672081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543041, 35.290398, 29.740709>,  <44.683147, 34.933624, 29.855089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543041, 35.290398, 29.740709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345575, 0.406811, 0.845626,
		0.870570, 0.197377, -0.450723,
		-0.350266, 0.891935, -0.285948,
		44.437962, 35.557980, 29.654924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195141, 35.443447, 30.002367>,  <44.683147, 34.933624, 29.855089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195141, 35.443447, 30.002367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842621, 35.631931, 30.016644>,  <44.631107, 35.745022, 30.025209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842621, 35.631931, 30.016644>,  <45.195141, 35.443447, 30.002367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842621, 35.631931, 30.016644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236453, 0.374322, 0.896646,
		0.409145, 0.798654, -0.441308,
		-0.881301, 0.471206, 0.035692,
		44.578232, 35.773293, 30.027351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382408, 36.083370, 30.210976>,  <45.195141, 35.443447, 30.002367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382408, 36.083370, 30.210976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993298, 36.039642, 30.292721>,  <44.759830, 36.013405, 30.341768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993298, 36.039642, 30.292721>,  <45.382408, 36.083370, 30.210976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993298, 36.039642, 30.292721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172787, 0.245599, 0.953848,
		-0.154467, 0.963187, -0.220023,
		-0.972772, -0.109321, 0.204363,
		44.701466, 36.006847, 30.354029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217964, 36.612747, 30.691164>,  <45.382408, 36.083370, 30.210976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217964, 36.612747, 30.691164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912594, 36.363670, 30.759785>,  <44.729370, 36.214222, 30.800957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912594, 36.363670, 30.759785>,  <45.217964, 36.612747, 30.691164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912594, 36.363670, 30.759785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063220, 0.192292, 0.979299,
		-0.642793, 0.758469, -0.107434,
		-0.763427, -0.622695, 0.171554,
		44.683567, 36.176861, 30.811251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901421, 36.853088, 31.333921>,  <45.217964, 36.612747, 30.691164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901421, 36.853088, 31.333921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752937, 36.483421, 31.297859>,  <44.663849, 36.261623, 31.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752937, 36.483421, 31.297859>,  <44.901421, 36.853088, 31.333921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752937, 36.483421, 31.297859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029768, -0.108885, 0.993609,
		-0.928073, 0.366150, 0.067929,
		-0.371206, -0.924164, -0.090154,
		44.641575, 36.206173, 31.270813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494587, 36.880074, 31.933054>,  <44.901421, 36.853088, 31.333921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494587, 36.880074, 31.933054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512314, 36.493160, 31.833139>,  <44.522949, 36.261013, 31.773191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512314, 36.493160, 31.833139>,  <44.494587, 36.880074, 31.933054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512314, 36.493160, 31.833139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006604, -0.250308, 0.968144,
		-0.998996, -0.041252, -0.017480,
		0.044313, -0.967287, -0.249785,
		44.525608, 36.202972, 31.758204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879646, 36.405102, 32.261292>,  <44.494587, 36.880074, 31.933054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879646, 36.405102, 32.261292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216385, 36.193291, 32.219528>,  <44.418427, 36.066204, 32.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216385, 36.193291, 32.219528>,  <43.879646, 36.405102, 32.261292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216385, 36.193291, 32.219528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032333, -0.242573, 0.969594,
		-0.538754, -0.812870, -0.221330,
		0.841842, -0.529529, -0.104405,
		44.468937, 36.034431, 32.188206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869492, 36.017971, 32.928856>,  <43.879646, 36.405102, 32.261292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869492, 36.017971, 32.928856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238216, 35.961590, 32.784412>,  <44.459450, 35.927761, 32.697746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238216, 35.961590, 32.784412>,  <43.869492, 36.017971, 32.928856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238216, 35.961590, 32.784412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322583, -0.237660, 0.916219,
		-0.214958, -0.961068, -0.173611,
		0.921809, -0.140945, -0.361111,
		44.514759, 35.919304, 32.676079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060055, 35.362190, 33.070129>,  <43.869492, 36.017971, 32.928856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060055, 35.362190, 33.070129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402351, 35.563332, 33.021408>,  <44.607731, 35.684017, 32.992176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402351, 35.563332, 33.021408>,  <44.060055, 35.362190, 33.070129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402351, 35.563332, 33.021408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310532, -0.310861, 0.898296,
		0.413849, -0.806536, -0.422171,
		0.855745, 0.502857, -0.121805,
		44.659073, 35.714188, 32.984867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482098, 34.919201, 33.408550>,  <44.060055, 35.362190, 33.070129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482098, 34.919201, 33.408550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723473, 35.234829, 33.362534>,  <44.868298, 35.424206, 33.334923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723473, 35.234829, 33.362534>,  <44.482098, 34.919201, 33.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723473, 35.234829, 33.362534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406660, -0.180427, 0.895586,
		0.685920, -0.587214, -0.429759,
		0.603441, 0.789066, -0.115038,
		44.904507, 35.471550, 33.328022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176018, 34.723297, 33.569023>,  <44.482098, 34.919201, 33.408550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176018, 34.723297, 33.569023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183567, 35.120331, 33.617046>,  <45.188099, 35.358551, 33.645859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183567, 35.120331, 33.617046>,  <45.176018, 34.723297, 33.569023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183567, 35.120331, 33.617046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506389, -0.113027, 0.854865,
		0.862098, 0.044659, -0.504770,
		0.018876, 0.992588, 0.120055,
		45.189228, 35.418106, 33.653065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831211, 34.894230, 33.879044>,  <45.176018, 34.723297, 33.569023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831211, 34.894230, 33.879044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578064, 35.187595, 33.978302>,  <45.426174, 35.363617, 34.037857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578064, 35.187595, 33.978302>,  <45.831211, 34.894230, 33.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578064, 35.187595, 33.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378430, 0.013406, 0.925533,
		0.675475, 0.679647, -0.286031,
		-0.632870, 0.733417, 0.248144,
		45.388203, 35.407619, 34.052746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259312, 35.315063, 34.344017>,  <45.831211, 34.894230, 33.879044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259312, 35.315063, 34.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872288, 35.394791, 34.406116>,  <45.640076, 35.442627, 34.443378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872288, 35.394791, 34.406116>,  <46.259312, 35.315063, 34.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872288, 35.394791, 34.406116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159343, 0.004544, 0.987213,
		0.196064, 0.979924, -0.036156,
		-0.967558, 0.199318, 0.155253,
		45.582020, 35.454586, 34.452694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181263, 35.783127, 34.765369>,  <46.259312, 35.315063, 34.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181263, 35.783127, 34.765369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838345, 35.584209, 34.818634>,  <45.632591, 35.464859, 34.850594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838345, 35.584209, 34.818634>,  <46.181263, 35.783127, 34.765369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838345, 35.584209, 34.818634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114558, 0.067892, 0.991094,
		-0.501909, 0.864920, -0.001235,
		-0.857300, -0.497297, 0.133159,
		45.581154, 35.435020, 34.858582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975445, 36.030563, 35.312241>,  <46.181263, 35.783127, 34.765369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975445, 36.030563, 35.312241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759087, 35.694233, 35.303768>,  <45.629272, 35.492435, 35.298687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759087, 35.694233, 35.303768>,  <45.975445, 36.030563, 35.312241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759087, 35.694233, 35.303768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080438, -0.076777, 0.993798,
		-0.837233, 0.535840, 0.109163,
		-0.540898, -0.840821, -0.021179,
		45.596817, 35.441986, 35.297413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724125, 35.911606, 35.508957>,  <45.975445, 36.030563, 35.312241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724125, 35.911606, 35.508957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990009, 35.693970, 35.713749>,  <47.149540, 35.563389, 35.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990009, 35.693970, 35.713749>,  <46.724125, 35.911606, 35.508957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.990009, 35.693970, 35.713749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333497, -0.397128, -0.855025,
		0.668533, 0.739090, -0.082523,
		0.664713, -0.544092, 0.511978,
		47.189423, 35.530743, 35.867344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351261, 36.151196, 35.347343>,  <46.724125, 35.911606, 35.508957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351261, 36.151196, 35.347343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376404, 35.774597, 35.479786>,  <47.391491, 35.548637, 35.559250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376404, 35.774597, 35.479786>,  <47.351261, 36.151196, 35.347343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376404, 35.774597, 35.479786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237458, -0.308123, -0.921235,
		0.969362, 0.136529, 0.204199,
		0.062857, -0.941499, 0.331102,
		47.395260, 35.492149, 35.579117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.010422, 35.869904, 35.176590>,  <47.351261, 36.151196, 35.347343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.010422, 35.869904, 35.176590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738686, 35.577374, 35.200771>,  <47.575642, 35.401855, 35.215279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738686, 35.577374, 35.200771>,  <48.010422, 35.869904, 35.176590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738686, 35.577374, 35.200771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372779, -0.414895, -0.829999,
		0.632081, -0.541319, 0.554479,
		-0.679345, -0.731324, 0.060455,
		47.534882, 35.357975, 35.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.258465, 35.167038, 35.112831>,  <48.010422, 35.869904, 35.176590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.258465, 35.167038, 35.112831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881229, 35.084415, 35.008587>,  <47.654888, 35.034843, 34.946041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881229, 35.084415, 35.008587>,  <48.258465, 35.167038, 35.112831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.881229, 35.084415, 35.008587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329067, -0.466756, -0.820886,
		0.047918, -0.859927, 0.508163,
		-0.943090, -0.206555, -0.260608,
		47.598301, 35.022449, 34.930405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.939007, 37.573536, 43.579029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652180, 37.324493, 43.704365>,  <34.480083, 37.175068, 43.779564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652180, 37.324493, 43.704365>,  <34.939007, 37.573536, 43.579029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652180, 37.324493, 43.704365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316976, -0.109082, -0.942140,
		0.620762, -0.774895, -0.119133,
		-0.717064, -0.622607, 0.313337,
		34.437061, 37.137711, 43.798367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013435, 36.889755, 43.264904>,  <34.939007, 37.573536, 43.579029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013435, 36.889755, 43.264904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622704, 36.891415, 43.350498>,  <34.388264, 36.892410, 43.401855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622704, 36.891415, 43.350498>,  <35.013435, 36.889755, 43.264904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622704, 36.891415, 43.350498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211173, -0.181273, -0.960493,
		0.034802, -0.983424, 0.177950,
		-0.976829, 0.004151, 0.213981,
		34.329655, 36.892658, 43.414692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641426, 36.300343, 42.947334>,  <35.013435, 36.889755, 43.264904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641426, 36.300343, 42.947334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329945, 36.544353, 43.005978>,  <34.143055, 36.690758, 43.041164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329945, 36.544353, 43.005978>,  <34.641426, 36.300343, 42.947334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329945, 36.544353, 43.005978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261343, -0.102947, -0.959740,
		-0.570373, -0.785666, 0.239591,
		-0.778701, 0.610025, 0.146610,
		34.096333, 36.727360, 43.049961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053062, 35.984650, 42.636665>,  <34.641426, 36.300343, 42.947334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053062, 35.984650, 42.636665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992531, 36.378666, 42.669628>,  <33.956211, 36.615078, 42.689404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992531, 36.378666, 42.669628>,  <34.053062, 35.984650, 42.636665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992531, 36.378666, 42.669628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219204, 0.047848, -0.974505,
		-0.963872, -0.165535, 0.208685,
		-0.151330, 0.985043, 0.082405,
		33.947132, 36.674179, 42.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474964, 36.068661, 42.184284>,  <34.053062, 35.984650, 42.636665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474964, 36.068661, 42.184284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.635414, 36.432110, 42.230759>,  <33.731686, 36.650181, 42.258644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.635414, 36.432110, 42.230759>,  <33.474964, 36.068661, 42.184284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635414, 36.432110, 42.230759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305842, 0.252402, -0.918016,
		-0.863457, 0.332707, 0.379141,
		0.401126, 0.908625, 0.116183,
		33.755753, 36.704697, 42.265614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018097, 36.441505, 41.809029>,  <33.474964, 36.068661, 42.184284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018097, 36.441505, 41.809029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328888, 36.690052, 41.849449>,  <33.515362, 36.839180, 41.873703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328888, 36.690052, 41.849449>,  <33.018097, 36.441505, 41.809029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328888, 36.690052, 41.849449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205218, 0.401753, -0.892457,
		-0.595142, 0.672680, 0.439668,
		0.776976, 0.621367, 0.101054,
		33.561981, 36.876461, 41.879765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827629, 37.055237, 41.474068>,  <33.018097, 36.441505, 41.809029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827629, 37.055237, 41.474068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226265, 37.070679, 41.503227>,  <33.465446, 37.079945, 41.520721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226265, 37.070679, 41.503227>,  <32.827629, 37.055237, 41.474068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226265, 37.070679, 41.503227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057909, 0.301930, -0.951570,
		-0.058740, 0.952548, 0.298665,
		0.996592, 0.038600, 0.072896,
		33.525242, 37.082260, 41.525097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021561, 37.637264, 41.030998>,  <32.827629, 37.055237, 41.474068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021561, 37.637264, 41.030998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373295, 37.451466, 41.072968>,  <33.584335, 37.339985, 41.098148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373295, 37.451466, 41.072968>,  <33.021561, 37.637264, 41.030998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373295, 37.451466, 41.072968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229794, 0.220912, -0.947836,
		0.417089, 0.857577, 0.300995,
		0.879336, -0.464498, 0.104926,
		33.637096, 37.312115, 41.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 38.039494, 40.639309>,  <33.021561, 37.637264, 41.030998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373112, 38.039494, 40.639309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619720, 37.728058, 40.686134>,  <33.767685, 37.541195, 40.714230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619720, 37.728058, 40.686134>,  <33.373112, 38.039494, 40.639309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619720, 37.728058, 40.686134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465964, 0.240962, -0.851361,
		0.634651, 0.579429, 0.511352,
		0.616519, -0.778588, 0.117067,
		33.804676, 37.494480, 40.721252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030071, 38.297813, 40.611423>,  <33.373112, 38.039494, 40.639309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030071, 38.297813, 40.611423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066105, 37.911022, 40.516056>,  <34.087727, 37.678947, 40.458836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066105, 37.911022, 40.516056>,  <34.030071, 38.297813, 40.611423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066105, 37.911022, 40.516056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600725, 0.243699, -0.761407,
		0.794364, -0.074631, 0.602840,
		0.090086, -0.966975, -0.238418,
		34.093132, 37.620930, 40.444530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613773, 38.264683, 40.345367>,  <34.030071, 38.297813, 40.611423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613773, 38.264683, 40.345367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453342, 37.930241, 40.195667>,  <34.357082, 37.729576, 40.105846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453342, 37.930241, 40.195667>,  <34.613773, 38.264683, 40.345367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453342, 37.930241, 40.195667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392112, 0.212527, -0.895031,
		0.827878, -0.505727, 0.242606,
		-0.401081, -0.836106, -0.374248,
		34.333019, 37.679409, 40.083393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156742, 37.834621, 39.997391>,  <34.613773, 38.264683, 40.345367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156742, 37.834621, 39.997391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817253, 37.711384, 39.825459>,  <34.613560, 37.637440, 39.722301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817253, 37.711384, 39.825459>,  <35.156742, 37.834621, 39.997391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817253, 37.711384, 39.825459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435637, 0.053488, -0.898532,
		0.299823, -0.949851, 0.088821,
		-0.848720, -0.308094, -0.429827,
		34.562637, 37.618954, 39.696510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410732, 37.389442, 39.415653>,  <35.156742, 37.834621, 39.997391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410732, 37.389442, 39.415653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026985, 37.475441, 39.342564>,  <34.796738, 37.527039, 39.298710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026985, 37.475441, 39.342564>,  <35.410732, 37.389442, 39.415653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026985, 37.475441, 39.342564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214558, 0.135298, -0.967295,
		-0.183240, -0.967198, -0.175929,
		-0.959369, 0.214994, -0.182728,
		34.739174, 37.539940, 39.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139912, 36.867493, 38.952263>,  <35.410732, 37.389442, 39.415653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139912, 36.867493, 38.952263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939869, 37.212292, 38.919147>,  <34.819843, 37.419170, 38.899277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939869, 37.212292, 38.919147>,  <35.139912, 36.867493, 38.952263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939869, 37.212292, 38.919147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194431, 0.018608, -0.980740,
		-0.843854, -0.506572, -0.176905,
		-0.500107, 0.861997, -0.082791,
		34.789837, 37.470890, 38.894310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777622, 36.812576, 38.279804>,  <35.139912, 36.867493, 38.952263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777622, 36.812576, 38.279804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770523, 37.203346, 38.364937>,  <34.766262, 37.437809, 38.416016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770523, 37.203346, 38.364937>,  <34.777622, 36.812576, 38.279804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770523, 37.203346, 38.364937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369563, 0.204202, -0.906490,
		-0.929036, 0.062564, -0.364661,
		-0.017751, 0.976928, 0.212833,
		34.765198, 37.496426, 38.428787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430222, 37.121834, 37.675751>,  <34.777622, 36.812576, 38.279804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430222, 37.121834, 37.675751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598866, 37.434696, 37.859268>,  <34.700050, 37.622414, 37.969379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598866, 37.434696, 37.859268>,  <34.430222, 37.121834, 37.675751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598866, 37.434696, 37.859268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407862, 0.288314, -0.866328,
		-0.809875, 0.552371, -0.197455,
		0.421605, 0.782152, 0.458790,
		34.725346, 37.669342, 37.996906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381447, 37.617260, 37.163483>,  <34.430222, 37.121834, 37.675751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381447, 37.617260, 37.163483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638557, 37.785412, 37.419643>,  <34.792824, 37.886303, 37.573341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638557, 37.785412, 37.419643>,  <34.381447, 37.617260, 37.163483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638557, 37.785412, 37.419643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614009, 0.217164, -0.758837,
		-0.458069, 0.880979, -0.118526,
		0.642780, 0.420375, 0.640405,
		34.831390, 37.911526, 37.611767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456966, 38.359039, 36.951157>,  <34.381447, 37.617260, 37.163483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456966, 38.359039, 36.951157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770710, 38.237183, 37.167294>,  <34.958958, 38.164070, 37.296974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770710, 38.237183, 37.167294>,  <34.456966, 38.359039, 36.951157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770710, 38.237183, 37.167294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612690, 0.244442, -0.751571,
		0.096877, 0.920566, 0.378382,
		0.784363, -0.304641, 0.540341,
		35.006020, 38.145790, 37.329395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979370, 38.785378, 36.726490>,  <34.456966, 38.359039, 36.951157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979370, 38.785378, 36.726490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161541, 38.467339, 36.886692>,  <35.270844, 38.276516, 36.982815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161541, 38.467339, 36.886692>,  <34.979370, 38.785378, 36.726490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161541, 38.467339, 36.886692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721092, 0.065611, -0.689726,
		0.522120, 0.602924, 0.603219,
		0.455430, -0.795096, 0.400507,
		35.298168, 38.228809, 37.006844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651745, 39.006283, 36.722687>,  <34.979370, 38.785378, 36.726490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651745, 39.006283, 36.722687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660934, 38.606941, 36.743698>,  <35.666451, 38.367336, 36.756306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660934, 38.606941, 36.743698>,  <35.651745, 39.006283, 36.722687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660934, 38.606941, 36.743698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618656, -0.027072, -0.785196,
		0.785326, 0.050538, 0.617016,
		0.022978, -0.998355, 0.052526,
		35.667828, 38.307434, 36.759457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411938, 38.761234, 36.709923>,  <35.651745, 39.006283, 36.722687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411938, 38.761234, 36.709923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197094, 38.445610, 36.590664>,  <36.068188, 38.256237, 36.519108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197094, 38.445610, 36.590664>,  <36.411938, 38.761234, 36.709923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197094, 38.445610, 36.590664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596787, -0.105681, -0.795410,
		0.596119, -0.605155, 0.527664,
		-0.537110, -0.789062, -0.298151,
		36.035961, 38.208893, 36.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937916, 38.189369, 36.483345>,  <36.411938, 38.761234, 36.709923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937916, 38.189369, 36.483345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581089, 38.125511, 36.314236>,  <36.366993, 38.087196, 36.212769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581089, 38.125511, 36.314236>,  <36.937916, 38.189369, 36.483345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581089, 38.125511, 36.314236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450623, -0.243643, -0.858823,
		0.034101, -0.956635, 0.289284,
		-0.892063, -0.159645, -0.422773,
		36.313469, 38.077618, 36.187405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726387, 38.250553, 36.359364>,  <36.937916, 38.189369, 36.483345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726387, 38.250553, 36.359364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786816, 38.513008, 36.063618>,  <37.823074, 38.670483, 35.886169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786816, 38.513008, 36.063618>,  <37.726387, 38.250553, 36.359364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786816, 38.513008, 36.063618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210563, 0.709424, 0.672592,
		0.965836, -0.257295, -0.030981,
		0.151076, 0.656138, -0.739364,
		37.832138, 38.709850, 35.841808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449047, 38.476700, 36.421120>,  <37.726387, 38.250553, 36.359364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449047, 38.476700, 36.421120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217617, 38.753654, 36.248676>,  <38.078758, 38.919827, 36.145210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217617, 38.753654, 36.248676>,  <38.449047, 38.476700, 36.421120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217617, 38.753654, 36.248676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169399, 0.619044, 0.766869,
		0.797843, 0.370662, -0.475453,
		-0.578576, 0.692383, -0.431110,
		38.044044, 38.961369, 36.119343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679829, 39.083916, 36.672897>,  <38.449047, 38.476700, 36.421120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679829, 39.083916, 36.672897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331146, 39.220860, 36.532654>,  <38.121937, 39.303024, 36.448509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331146, 39.220860, 36.532654>,  <38.679829, 39.083916, 36.672897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331146, 39.220860, 36.532654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064341, 0.629314, 0.774483,
		0.485793, 0.697677, -0.526547,
		-0.871703, 0.342360, -0.350606,
		38.069637, 39.323566, 36.427471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726048, 39.842537, 36.695133>,  <38.679829, 39.083916, 36.672897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726048, 39.842537, 36.695133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335663, 39.756966, 36.711742>,  <38.101433, 39.705624, 36.721706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335663, 39.756966, 36.711742>,  <38.726048, 39.842537, 36.695133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335663, 39.756966, 36.711742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051468, 0.411431, 0.909986,
		-0.211758, 0.885979, -0.412554,
		-0.975966, -0.213930, 0.041525,
		38.042873, 39.692787, 36.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333324, 40.528736, 36.972923>,  <38.726048, 39.842537, 36.695133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333324, 40.528736, 36.972923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113308, 40.198765, 37.025002>,  <37.981300, 40.000782, 37.056248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113308, 40.198765, 37.025002>,  <38.333324, 40.528736, 36.972923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113308, 40.198765, 37.025002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066755, 0.198821, 0.977760,
		-0.832468, 0.529113, -0.164427,
		-0.550037, -0.824930, 0.130191,
		37.948296, 39.951286, 37.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749916, 40.708736, 37.362427>,  <38.333324, 40.528736, 36.972923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749916, 40.708736, 37.362427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814331, 40.317516, 37.415321>,  <37.852982, 40.082783, 37.447056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814331, 40.317516, 37.415321>,  <37.749916, 40.708736, 37.362427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814331, 40.317516, 37.415321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113937, 0.114662, 0.986849,
		-0.980349, -0.173988, -0.092971,
		0.161040, -0.978049, 0.132233,
		37.862644, 40.024101, 37.454990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643875, 40.655533, 38.118202>,  <37.749916, 40.708736, 37.362427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643875, 40.655533, 38.118202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734844, 40.274815, 38.035877>,  <37.789425, 40.046383, 37.986481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734844, 40.274815, 38.035877>,  <37.643875, 40.655533, 38.118202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734844, 40.274815, 38.035877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015036, -0.207892, 0.978036,
		-0.973679, -0.225524, -0.032969,
		0.227425, -0.951798, -0.205811,
		37.803070, 39.989277, 37.974133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184246, 40.191544, 38.477791>,  <37.643875, 40.655533, 38.118202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184246, 40.191544, 38.477791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510014, 39.964550, 38.429321>,  <37.705475, 39.828354, 38.400242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510014, 39.964550, 38.429321>,  <37.184246, 40.191544, 38.477791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510014, 39.964550, 38.429321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003908, -0.203450, 0.979078,
		-0.580262, -0.797854, -0.163476,
		0.814420, -0.567483, -0.121172,
		37.754341, 39.794304, 38.392971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974720, 39.515194, 38.799767>,  <37.184246, 40.191544, 38.477791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974720, 39.515194, 38.799767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371563, 39.561443, 38.780319>,  <37.609669, 39.589191, 38.768650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371563, 39.561443, 38.780319>,  <36.974720, 39.515194, 38.799767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371563, 39.561443, 38.780319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082663, -0.311188, 0.946746,
		0.094332, -0.943289, -0.318288,
		0.992103, 0.115619, -0.048620,
		37.669193, 39.596130, 38.765732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269054, 38.893353, 38.885201>,  <36.974720, 39.515194, 38.799767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269054, 38.893353, 38.885201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571095, 39.129402, 38.999447>,  <37.752319, 39.271034, 39.067997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571095, 39.129402, 38.999447>,  <37.269054, 38.893353, 38.885201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571095, 39.129402, 38.999447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079729, -0.349762, 0.933440,
		0.650748, -0.727609, -0.217054,
		0.755096, 0.590129, 0.285618,
		37.797623, 39.306442, 39.085133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540165, 38.568630, 39.432526>,  <37.269054, 38.893353, 38.885201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540165, 38.568630, 39.432526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694977, 38.934219, 39.481277>,  <37.787865, 39.153572, 39.510529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694977, 38.934219, 39.481277>,  <37.540165, 38.568630, 39.432526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694977, 38.934219, 39.481277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050719, -0.110883, 0.992538,
		0.920670, -0.390326, 0.003440,
		0.387032, 0.913975, 0.121883,
		37.811085, 39.208412, 39.517841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175781, 38.477745, 39.941422>,  <37.540165, 38.568630, 39.432526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175781, 38.477745, 39.941422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075966, 38.862190, 39.988754>,  <38.016079, 39.092857, 40.017155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075966, 38.862190, 39.988754>,  <38.175781, 38.477745, 39.941422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075966, 38.862190, 39.988754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019418, -0.117202, 0.992918,
		0.968171, 0.250065, 0.010583,
		-0.249535, 0.961109, 0.118328,
		38.001106, 39.150524, 40.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604675, 38.797268, 40.537941>,  <38.175781, 38.477745, 39.941422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604675, 38.797268, 40.537941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298271, 39.048058, 40.481190>,  <38.114429, 39.198532, 40.447140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298271, 39.048058, 40.481190>,  <38.604675, 38.797268, 40.537941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298271, 39.048058, 40.481190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093697, 0.109447, 0.989567,
		0.635958, 0.771316, -0.025092,
		-0.766015, 0.626971, -0.141874,
		38.068466, 39.236149, 40.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719486, 39.185486, 41.073292>,  <38.604675, 38.797268, 40.537941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719486, 39.185486, 41.073292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337021, 39.258003, 40.981300>,  <38.107544, 39.301514, 40.926105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337021, 39.258003, 40.981300>,  <38.719486, 39.185486, 41.073292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337021, 39.258003, 40.981300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196395, 0.185561, 0.962806,
		0.217226, 0.965764, -0.141821,
		-0.956160, 0.181293, -0.229980,
		38.050175, 39.312389, 40.912308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380352, 39.728027, 41.567696>,  <38.719486, 39.185486, 41.073292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380352, 39.728027, 41.567696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063877, 39.544228, 41.406261>,  <37.873993, 39.433949, 41.309402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063877, 39.544228, 41.406261>,  <38.380352, 39.728027, 41.567696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063877, 39.544228, 41.406261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451993, -0.005196, 0.892006,
		-0.411974, 0.888162, -0.203580,
		-0.791188, -0.459500, -0.403584,
		37.826519, 39.406376, 41.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866379, 40.116756, 41.691261>,  <38.380352, 39.728027, 41.567696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866379, 40.116756, 41.691261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722324, 39.748196, 41.632862>,  <37.635891, 39.527058, 41.597824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722324, 39.748196, 41.632862>,  <37.866379, 40.116756, 41.691261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722324, 39.748196, 41.632862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423114, 0.021853, 0.905813,
		-0.831431, 0.387988, -0.397729,
		-0.360136, -0.921405, -0.145994,
		37.614285, 39.471775, 41.589066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139000, 40.069500, 41.974915>,  <37.866379, 40.116756, 41.691261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139000, 40.069500, 41.974915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222679, 39.678528, 41.963131>,  <37.272884, 39.443943, 41.956062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222679, 39.678528, 41.963131>,  <37.139000, 40.069500, 41.974915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222679, 39.678528, 41.963131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590999, -0.150373, 0.792533,
		-0.779075, -0.148386, -0.609117,
		0.209196, -0.977430, -0.029455,
		37.285439, 39.385300, 41.954296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446625, 39.790840, 42.164928>,  <37.139000, 40.069500, 41.974915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446625, 39.790840, 42.164928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711384, 39.498489, 42.231518>,  <36.870239, 39.323078, 42.271473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711384, 39.498489, 42.231518>,  <36.446625, 39.790840, 42.164928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711384, 39.498489, 42.231518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435749, -0.194448, 0.878813,
		-0.609935, -0.654222, -0.447183,
		0.661893, -0.730879, 0.166476,
		36.909950, 39.279224, 42.281460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.008762, 39.102222, 42.414726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366856, 39.007183, 42.565517>,  <36.581711, 38.950161, 42.655991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366856, 39.007183, 42.565517>,  <36.008762, 39.102222, 42.414726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366856, 39.007183, 42.565517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439262, -0.328305, 0.836221,
		-0.074920, -0.914201, -0.398276,
		0.895230, -0.237597, 0.376977,
		36.635426, 38.935905, 42.678612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863266, 38.503372, 42.664307>,  <36.008762, 39.102222, 42.414726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863266, 38.503372, 42.664307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191525, 38.635201, 42.851036>,  <36.388481, 38.714298, 42.963074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191525, 38.635201, 42.851036>,  <35.863266, 38.503372, 42.664307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191525, 38.635201, 42.851036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366312, -0.323596, 0.872411,
		0.438586, -0.886942, -0.144830,
		0.820645, 0.329574, 0.466822,
		36.437717, 38.734074, 42.991081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999226, 37.963181, 43.149193>,  <35.863266, 38.503372, 42.664307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999226, 37.963181, 43.149193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197807, 38.290386, 43.265392>,  <36.316956, 38.486710, 43.335110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197807, 38.290386, 43.265392>,  <35.999226, 37.963181, 43.149193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197807, 38.290386, 43.265392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260523, -0.178816, 0.948764,
		0.828045, -0.546700, 0.124337,
		0.496456, 0.818012, 0.290496,
		36.346745, 38.535789, 43.352543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399689, 37.852741, 43.775593>,  <35.999226, 37.963181, 43.149193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399689, 37.852741, 43.775593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404720, 38.249683, 43.824692>,  <36.407738, 38.487850, 43.854149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404720, 38.249683, 43.824692>,  <36.399689, 37.852741, 43.775593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404720, 38.249683, 43.824692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217239, -0.117110, 0.969068,
		0.976037, -0.038853, 0.214106,
		0.012577, 0.992359, 0.122744,
		36.408493, 38.547390, 43.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883564, 38.007153, 44.217442>,  <36.399689, 37.852741, 43.775593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883564, 38.007153, 44.217442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681038, 38.346775, 44.277779>,  <36.559521, 38.550549, 44.313980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681038, 38.346775, 44.277779>,  <36.883564, 38.007153, 44.217442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681038, 38.346775, 44.277779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185360, -0.063680, 0.980605,
		0.842191, 0.524456, -0.125138,
		-0.506316, 0.849053, 0.150844,
		36.529144, 38.601490, 44.323032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215096, 38.391365, 44.710751>,  <36.883564, 38.007153, 44.217442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215096, 38.391365, 44.710751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841961, 38.534954, 44.698364>,  <36.618080, 38.621109, 44.690933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841961, 38.534954, 44.698364>,  <37.215096, 38.391365, 44.710751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841961, 38.534954, 44.698364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010086, 0.059904, 0.998153,
		0.360167, 0.931423, -0.052260,
		-0.932833, 0.358975, -0.030970,
		36.562111, 38.642647, 44.689072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182899, 38.826275, 45.256081>,  <37.215096, 38.391365, 44.710751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182899, 38.826275, 45.256081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797272, 38.757690, 45.174915>,  <36.565895, 38.716537, 45.126217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797272, 38.757690, 45.174915>,  <37.182899, 38.826275, 45.256081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797272, 38.757690, 45.174915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219669, 0.084985, 0.971866,
		-0.149395, 0.981518, -0.119597,
		-0.964068, -0.171463, -0.202913,
		36.508053, 38.706253, 45.114040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737129, 39.195557, 45.741764>,  <37.182899, 38.826275, 45.256081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737129, 39.195557, 45.741764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513012, 38.889282, 45.615406>,  <36.378540, 38.705517, 45.539593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513012, 38.889282, 45.615406>,  <36.737129, 39.195557, 45.741764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513012, 38.889282, 45.615406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074486, -0.333260, 0.939888,
		-0.824938, 0.550144, 0.129691,
		-0.560294, -0.765689, -0.315896,
		36.344925, 38.659576, 45.520638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193825, 39.211491, 46.164322>,  <36.737129, 39.195557, 45.741764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193825, 39.211491, 46.164322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217884, 38.836575, 46.026997>,  <36.232319, 38.611626, 45.944603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217884, 38.836575, 46.026997>,  <36.193825, 39.211491, 46.164322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217884, 38.836575, 46.026997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053874, -0.346483, 0.936508,
		-0.996735, -0.037833, -0.071336,
		0.060148, -0.937293, -0.343314,
		36.235928, 38.555386, 45.924004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933762, 38.942039, 46.684166>,  <36.193825, 39.211491, 46.164322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933762, 38.942039, 46.684166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062347, 38.621525, 46.482334>,  <36.139500, 38.429214, 46.361237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062347, 38.621525, 46.482334>,  <35.933762, 38.942039, 46.684166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062347, 38.621525, 46.482334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105487, -0.499241, 0.860018,
		-0.941027, -0.329694, -0.075965,
		0.321467, -0.801286, -0.504578,
		36.158787, 38.381138, 46.330959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564720, 38.414627, 46.949615>,  <35.933762, 38.942039, 46.684166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564720, 38.414627, 46.949615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911022, 38.275463, 46.805706>,  <36.118801, 38.191967, 46.719360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911022, 38.275463, 46.805706>,  <35.564720, 38.414627, 46.949615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911022, 38.275463, 46.805706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242855, -0.336521, 0.909822,
		-0.437606, -0.875051, -0.206851,
		0.865750, -0.347908, -0.359774,
		36.170746, 38.171089, 46.697773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594910, 37.628136, 47.285450>,  <35.564720, 38.414627, 46.949615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594910, 37.628136, 47.285450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965073, 37.688114, 47.146233>,  <36.187172, 37.724102, 47.062702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965073, 37.688114, 47.146233>,  <35.594910, 37.628136, 47.285450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965073, 37.688114, 47.146233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377601, -0.442910, 0.813172,
		-0.032217, -0.883938, -0.466494,
		0.925408, 0.149951, -0.348045,
		36.242695, 37.733101, 47.041821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978119, 37.007095, 47.313538>,  <35.594910, 37.628136, 47.285450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978119, 37.007095, 47.313538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243050, 37.305222, 47.344070>,  <36.402008, 37.484097, 47.362389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243050, 37.305222, 47.344070>,  <35.978119, 37.007095, 47.313538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243050, 37.305222, 47.344070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326596, -0.378906, 0.865890,
		0.674283, -0.548574, -0.494377,
		0.662328, 0.745316, 0.076328,
		36.441750, 37.528816, 47.366970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679680, 36.641533, 47.497658>,  <35.978119, 37.007095, 47.313538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679680, 36.641533, 47.497658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658642, 37.022804, 47.616783>,  <36.646019, 37.251568, 47.688259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658642, 37.022804, 47.616783>,  <36.679680, 36.641533, 47.497658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658642, 37.022804, 47.616783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250222, -0.276131, 0.927977,
		0.966759, 0.123330, -0.223981,
		-0.052599, 0.953175, 0.297811,
		36.642860, 37.308758, 47.706127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116848, 36.545967, 48.055660>,  <36.679680, 36.641533, 47.497658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116848, 36.545967, 48.055660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006447, 36.926434, 48.110939>,  <36.940205, 37.154713, 48.144108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006447, 36.926434, 48.110939>,  <37.116848, 36.545967, 48.055660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006447, 36.926434, 48.110939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322744, -0.043718, 0.945476,
		0.905349, 0.305559, -0.294917,
		-0.276006, 0.951169, 0.138197,
		36.923645, 37.211784, 48.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653336, 36.825466, 48.232018>,  <37.116848, 36.545967, 48.055660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653336, 36.825466, 48.232018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397247, 37.102009, 48.365971>,  <37.243595, 37.267933, 48.446342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397247, 37.102009, 48.365971>,  <37.653336, 36.825466, 48.232018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397247, 37.102009, 48.365971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351078, -0.124415, 0.928044,
		0.683273, 0.711721, -0.163067,
		-0.640220, 0.691356, 0.334880,
		37.205181, 37.309414, 48.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014980, 37.283535, 48.712471>,  <37.653336, 36.825466, 48.232018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014980, 37.283535, 48.712471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636837, 37.336056, 48.831841>,  <37.409950, 37.367569, 48.903461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636837, 37.336056, 48.831841>,  <38.014980, 37.283535, 48.712471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636837, 37.336056, 48.831841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292812, -0.060581, 0.954249,
		0.143375, 0.989489, 0.018823,
		-0.945360, 0.131304, 0.298420,
		37.353230, 37.375446, 48.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057037, 37.465885, 49.416546>,  <38.014980, 37.283535, 48.712471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057037, 37.465885, 49.416546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664188, 37.404144, 49.373447>,  <37.428478, 37.367100, 49.347588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664188, 37.404144, 49.373447>,  <38.057037, 37.465885, 49.416546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664188, 37.404144, 49.373447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068811, -0.238413, 0.968723,
		-0.175210, 0.958820, 0.223530,
		-0.982124, -0.154348, -0.107750,
		37.369553, 37.357841, 49.341122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790531, 37.777313, 50.014801>,  <38.057037, 37.465885, 49.416546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790531, 37.777313, 50.014801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561424, 37.481892, 49.872547>,  <37.423962, 37.304638, 49.787197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561424, 37.481892, 49.872547>,  <37.790531, 37.777313, 50.014801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561424, 37.481892, 49.872547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099620, -0.367915, 0.924508,
		-0.813642, 0.564956, 0.137155,
		-0.572767, -0.738555, -0.355632,
		37.389595, 37.260326, 49.765858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292610, 37.837448, 50.500622>,  <37.790531, 37.777313, 50.014801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292610, 37.837448, 50.500622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272339, 37.472614, 50.337879>,  <37.260174, 37.253716, 50.240234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272339, 37.472614, 50.337879>,  <37.292610, 37.837448, 50.500622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272339, 37.472614, 50.337879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151364, -0.395663, 0.905837,
		-0.987178, 0.107494, -0.118003,
		-0.050683, -0.912083, -0.406861,
		37.257133, 37.198990, 50.215820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843204, 37.489037, 50.957390>,  <37.292610, 37.837448, 50.500622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843204, 37.489037, 50.957390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024719, 37.189465, 50.764233>,  <37.133629, 37.009724, 50.648338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024719, 37.189465, 50.764233>,  <36.843204, 37.489037, 50.957390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024719, 37.189465, 50.764233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001204, -0.542415, 0.840110,
		-0.891111, -0.380647, -0.247041,
		0.453784, -0.748928, -0.482894,
		37.160854, 36.964787, 50.619366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518780, 36.769699, 51.174709>,  <36.843204, 37.489037, 50.957390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518780, 36.769699, 51.174709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893394, 36.732140, 51.039600>,  <37.118164, 36.709602, 50.958534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893394, 36.732140, 51.039600>,  <36.518780, 36.769699, 51.174709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893394, 36.732140, 51.039600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302559, -0.270232, 0.914020,
		-0.177099, -0.958206, -0.224673,
		0.936533, -0.093895, -0.337771,
		37.174355, 36.703972, 50.938271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016968, 36.894554, 51.693420>,  <36.518780, 36.769699, 51.174709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016968, 36.894554, 51.693420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968678, 36.896641, 52.090488>,  <35.939705, 36.897892, 52.328732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968678, 36.896641, 52.090488>,  <36.016968, 36.894554, 51.693420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968678, 36.896641, 52.090488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320752, -0.946551, -0.034036,
		0.939438, -0.322511, 0.115942,
		-0.120722, 0.005214, 0.992673,
		35.932461, 36.898205, 52.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323784, 36.966629, 51.676018>,  <36.016968, 36.894554, 51.693420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323784, 36.966629, 51.676018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139664, 36.639748, 51.814754>,  <35.029190, 36.443619, 51.897999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139664, 36.639748, 51.814754>,  <35.323784, 36.966629, 51.676018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139664, 36.639748, 51.814754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053187, -0.415381, -0.908091,
		0.886167, -0.399550, 0.234666,
		-0.460304, -0.817202, 0.346846,
		35.001572, 36.394588, 51.918808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663189, 36.300049, 51.484367>,  <35.323784, 36.966629, 51.676018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663189, 36.300049, 51.484367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272354, 36.232521, 51.536201>,  <35.037853, 36.192005, 51.567303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272354, 36.232521, 51.536201>,  <35.663189, 36.300049, 51.484367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272354, 36.232521, 51.536201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030559, -0.491290, -0.870460,
		0.210615, -0.854479, 0.474876,
		-0.977091, -0.168820, 0.129585,
		34.979225, 36.181873, 51.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587948, 35.655727, 51.213886>,  <35.663189, 36.300049, 51.484367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587948, 35.655727, 51.213886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219929, 35.811794, 51.228214>,  <34.999119, 35.905434, 51.236813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219929, 35.811794, 51.228214>,  <35.587948, 35.655727, 51.213886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219929, 35.811794, 51.228214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193331, -0.372565, -0.907644,
		-0.340778, -0.842005, 0.418209,
		-0.920051, 0.390158, 0.035824,
		34.943913, 35.928844, 51.238960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203602, 35.128483, 51.063187>,  <35.587948, 35.655727, 51.213886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203602, 35.128483, 51.063187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017803, 35.471378, 50.974297>,  <34.906322, 35.677116, 50.920963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017803, 35.471378, 50.974297>,  <35.203602, 35.128483, 51.063187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017803, 35.471378, 50.974297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121582, -0.310297, -0.942833,
		-0.877187, -0.410927, 0.248358,
		-0.464501, 0.857237, -0.222227,
		34.878452, 35.728550, 50.907627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522213, 34.964458, 50.631775>,  <35.203602, 35.128483, 51.063187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522213, 34.964458, 50.631775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610874, 35.350086, 50.573212>,  <34.664070, 35.581463, 50.538074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610874, 35.350086, 50.573212>,  <34.522213, 34.964458, 50.631775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610874, 35.350086, 50.573212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141345, -0.116792, -0.983047,
		-0.964828, 0.238586, 0.110380,
		0.221650, 0.964073, -0.146407,
		34.677368, 35.639309, 50.529289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020351, 35.311172, 50.243652>,  <34.522213, 34.964458, 50.631775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020351, 35.311172, 50.243652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332108, 35.552349, 50.175510>,  <34.519161, 35.697056, 50.134624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332108, 35.552349, 50.175510>,  <34.020351, 35.311172, 50.243652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332108, 35.552349, 50.175510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077711, -0.176768, -0.981180,
		-0.621704, 0.777958, -0.090916,
		0.779388, 0.602938, -0.170353,
		34.565926, 35.733231, 50.124405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877445, 35.594688, 49.655640>,  <34.020351, 35.311172, 50.243652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877445, 35.594688, 49.655640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249924, 35.736858, 49.688004>,  <34.473412, 35.822159, 49.707420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249924, 35.736858, 49.688004>,  <33.877445, 35.594688, 49.655640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249924, 35.736858, 49.688004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016903, 0.179615, -0.983592,
		-0.364120, 0.917287, 0.161250,
		0.931199, 0.355420, 0.080906,
		34.529282, 35.843483, 49.712276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855816, 36.178978, 49.318314>,  <33.877445, 35.594688, 49.655640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855816, 36.178978, 49.318314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237907, 36.060818, 49.311726>,  <34.467163, 35.989922, 49.307774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237907, 36.060818, 49.311726>,  <33.855816, 36.178978, 49.318314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237907, 36.060818, 49.311726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087482, 0.335188, -0.938081,
		0.282629, 0.894644, 0.346024,
		0.955232, -0.295400, -0.016469,
		34.524475, 35.972198, 49.306786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267292, 36.668388, 49.034416>,  <33.855816, 36.178978, 49.318314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267292, 36.668388, 49.034416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473583, 36.332684, 48.965527>,  <34.597359, 36.131260, 48.924194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473583, 36.332684, 48.965527>,  <34.267292, 36.668388, 49.034416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473583, 36.332684, 48.965527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157645, 0.290545, -0.943786,
		0.842125, 0.459585, 0.282148,
		0.515727, -0.839265, -0.172223,
		34.628300, 36.080906, 48.913860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849758, 36.976002, 48.620594>,  <34.267292, 36.668388, 49.034416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849758, 36.976002, 48.620594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.834118, 36.582130, 48.552616>,  <34.824734, 36.345806, 48.511829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.834118, 36.582130, 48.552616>,  <34.849758, 36.976002, 48.620594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834118, 36.582130, 48.552616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186240, 0.159910, -0.969404,
		0.981726, -0.069556, 0.177133,
		-0.039103, -0.984678, -0.169942,
		34.822388, 36.286728, 48.501633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441265, 36.841290, 48.186394>,  <34.849758, 36.976002, 48.620594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441265, 36.841290, 48.186394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219730, 36.512554, 48.132946>,  <35.086811, 36.315315, 48.100876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219730, 36.512554, 48.132946>,  <35.441265, 36.841290, 48.186394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219730, 36.512554, 48.132946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179064, 0.039166, -0.983058,
		0.813145, -0.568377, 0.125470,
		-0.553833, -0.821836, -0.133623,
		35.053581, 36.266003, 48.092857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808727, 36.448517, 47.812233>,  <35.441265, 36.841290, 48.186394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808727, 36.448517, 47.812233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438473, 36.303905, 47.767506>,  <35.216320, 36.217140, 47.740669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438473, 36.303905, 47.767506>,  <35.808727, 36.448517, 47.812233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438473, 36.303905, 47.767506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142056, -0.058079, -0.988153,
		0.350748, -0.930552, 0.105117,
		-0.925633, -0.361525, -0.111819,
		35.160782, 36.195450, 47.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837269, 35.925735, 47.239147>,  <35.808727, 36.448517, 47.812233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837269, 35.925735, 47.239147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457165, 36.047142, 47.267078>,  <35.229103, 36.119987, 47.283836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457165, 36.047142, 47.267078>,  <35.837269, 35.925735, 47.239147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457165, 36.047142, 47.267078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005072, 0.239246, -0.970946,
		-0.311406, -0.922300, -0.228886,
		-0.950263, 0.303519, 0.069824,
		35.172085, 36.138199, 47.288025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549362, 35.671257, 46.608265>,  <35.837269, 35.925735, 47.239147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549362, 35.671257, 46.608265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297558, 35.956795, 46.730995>,  <35.146477, 36.128117, 46.804634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297558, 35.956795, 46.730995>,  <35.549362, 35.671257, 46.608265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297558, 35.956795, 46.730995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255159, 0.183062, -0.949411,
		-0.733900, -0.675955, 0.066904,
		-0.629512, 0.713844, 0.306825,
		35.108704, 36.170948, 46.823044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014721, 35.590054, 46.173698>,  <35.549362, 35.671257, 46.608265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014721, 35.590054, 46.173698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964462, 35.956417, 46.326187>,  <34.934307, 36.176235, 46.417683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964462, 35.956417, 46.326187>,  <35.014721, 35.590054, 46.173698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964462, 35.956417, 46.326187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306728, 0.329577, -0.892915,
		-0.943467, -0.229125, 0.239523,
		-0.125648, 0.915904, 0.381224,
		34.926769, 36.231190, 46.440556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405716, 35.717148, 45.940830>,  <35.014721, 35.590054, 46.173698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405716, 35.717148, 45.940830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556091, 36.077740, 46.026630>,  <34.646317, 36.294094, 46.078110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556091, 36.077740, 46.026630>,  <34.405716, 35.717148, 45.940830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556091, 36.077740, 46.026630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272298, 0.328735, -0.904316,
		-0.885733, 0.281560, 0.369055,
		0.375940, 0.901475, 0.214503,
		34.668873, 36.348183, 46.090981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928204, 36.137257, 45.683903>,  <34.405716, 35.717148, 45.940830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928204, 36.137257, 45.683903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264999, 36.352665, 45.696850>,  <34.467075, 36.481911, 45.704617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264999, 36.352665, 45.696850>,  <33.928204, 36.137257, 45.683903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264999, 36.352665, 45.696850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245974, 0.436595, -0.865379,
		-0.480156, 0.720680, 0.500071,
		0.841990, 0.538522, 0.032365,
		34.517597, 36.514221, 45.706558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769115, 36.803268, 45.664619>,  <33.928204, 36.137257, 45.683903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769115, 36.803268, 45.664619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140282, 36.787064, 45.516384>,  <34.362980, 36.777340, 45.427441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140282, 36.787064, 45.516384>,  <33.769115, 36.803268, 45.664619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140282, 36.787064, 45.516384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309541, 0.470275, -0.826454,
		0.207759, 0.881590, 0.423835,
		0.927912, -0.040509, -0.370592,
		34.418655, 36.774910, 45.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852486, 37.507675, 45.334435>,  <33.769115, 36.803268, 45.664619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852486, 37.507675, 45.334435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146687, 37.289864, 45.173180>,  <34.323208, 37.159176, 45.076427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146687, 37.289864, 45.173180>,  <33.852486, 37.507675, 45.334435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146687, 37.289864, 45.173180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203759, 0.389688, -0.898123,
		0.646154, 0.742716, 0.175664,
		0.735505, -0.544532, -0.403134,
		34.367336, 37.126503, 45.052238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291073, 37.939125, 44.841537>,  <33.852486, 37.507675, 45.334435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291073, 37.939125, 44.841537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316273, 37.550919, 44.748474>,  <34.331390, 37.317993, 44.692635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316273, 37.550919, 44.748474>,  <34.291073, 37.939125, 44.841537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316273, 37.550919, 44.748474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153023, 0.220976, -0.963200,
		0.986213, 0.096281, -0.134590,
		0.062997, -0.970515, -0.232662,
		34.335171, 37.259766, 44.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608398, 37.895950, 44.222092>,  <34.291073, 37.939125, 44.841537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608398, 37.895950, 44.222092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465042, 37.523438, 44.248245>,  <34.379028, 37.299931, 44.263939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465042, 37.523438, 44.248245>,  <34.608398, 37.895950, 44.222092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465042, 37.523438, 44.248245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168889, -0.004207, -0.985626,
		0.918170, -0.364278, -0.155776,
		-0.358387, -0.931281, 0.065385,
		34.357525, 37.244053, 44.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.079639, 30.253963, 29.345579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.866173, 30.487886, 29.101219>,  <45.738091, 30.628241, 28.954603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.866173, 30.487886, 29.101219>,  <46.079639, 30.253963, 29.345579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866173, 30.487886, 29.101219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284532, 0.556092, 0.780899,
		0.796391, 0.590562, -0.130373,
		-0.533669, 0.584806, -0.610900,
		45.706074, 30.663328, 28.917950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256897, 30.937483, 29.476246>,  <46.079639, 30.253963, 29.345579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256897, 30.937483, 29.476246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900097, 30.954432, 29.296230>,  <45.686016, 30.964602, 29.188221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900097, 30.954432, 29.296230>,  <46.256897, 30.937483, 29.476246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900097, 30.954432, 29.296230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322339, 0.638360, 0.698995,
		0.316905, 0.768571, -0.555761,
		-0.892003, 0.042371, -0.450040,
		45.632496, 30.967142, 29.161219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032749, 31.686031, 29.485306>,  <46.256897, 30.937483, 29.476246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032749, 31.686031, 29.485306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686317, 31.502167, 29.406710>,  <45.478458, 31.391848, 29.359552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686317, 31.502167, 29.406710>,  <46.032749, 31.686031, 29.485306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686317, 31.502167, 29.406710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490131, 0.703489, 0.514660,
		-0.098340, 0.542046, -0.834575,
		-0.866084, -0.459662, -0.196492,
		45.426491, 31.364267, 29.347761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696125, 32.210194, 29.086956>,  <46.032749, 31.686031, 29.485306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696125, 32.210194, 29.086956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440258, 31.971066, 29.280216>,  <45.286739, 31.827589, 29.396173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440258, 31.971066, 29.280216>,  <45.696125, 32.210194, 29.086956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440258, 31.971066, 29.280216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489899, 0.801443, 0.343056,
		-0.592305, -0.017254, -0.805529,
		-0.639667, -0.597822, 0.483151,
		45.248360, 31.791719, 29.425161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077370, 32.568043, 29.075687>,  <45.696125, 32.210194, 29.086956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077370, 32.568043, 29.075687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013393, 32.291553, 29.357574>,  <44.975010, 32.125660, 29.526707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013393, 32.291553, 29.357574>,  <45.077370, 32.568043, 29.075687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013393, 32.291553, 29.357574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557613, 0.652358, 0.513319,
		-0.814548, -0.310861, -0.489773,
		-0.159937, -0.691227, 0.704717,
		44.965412, 32.084187, 29.568989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325497, 32.639427, 29.232784>,  <45.077370, 32.568043, 29.075687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325497, 32.639427, 29.232784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503548, 32.466736, 29.546593>,  <44.610378, 32.363121, 29.734879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503548, 32.466736, 29.546593>,  <44.325497, 32.639427, 29.232784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503548, 32.466736, 29.546593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482267, 0.622613, 0.616257,
		-0.754509, -0.652660, 0.068932,
		0.445124, -0.431728, 0.784523,
		44.637085, 32.337219, 29.781950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820179, 32.613682, 29.755373>,  <44.325497, 32.639427, 29.232784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820179, 32.613682, 29.755373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165188, 32.540451, 29.944071>,  <44.372192, 32.496513, 30.057289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165188, 32.540451, 29.944071>,  <43.820179, 32.613682, 29.755373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165188, 32.540451, 29.944071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277565, 0.608329, 0.743568,
		-0.423106, -0.772282, 0.473880,
		0.862519, -0.183076, 0.471746,
		44.423943, 32.485527, 30.085594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630047, 32.215939, 30.435915>,  <43.820179, 32.613682, 29.755373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630047, 32.215939, 30.435915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985737, 32.398308, 30.450966>,  <44.199150, 32.507729, 30.459995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985737, 32.398308, 30.450966>,  <43.630047, 32.215939, 30.435915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985737, 32.398308, 30.450966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290836, 0.499925, 0.815775,
		0.353117, -0.736352, 0.577144,
		0.889226, 0.455918, 0.037626,
		44.252506, 32.535084, 30.462254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827545, 32.179272, 31.128443>,  <43.630047, 32.215939, 30.435915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827545, 32.179272, 31.128443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071396, 32.459404, 30.979908>,  <44.217705, 32.627483, 30.890787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071396, 32.459404, 30.979908>,  <43.827545, 32.179272, 31.128443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071396, 32.459404, 30.979908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058559, 0.506960, 0.859978,
		0.790525, -0.502518, 0.350066,
		0.609624, 0.700334, -0.371338,
		44.254284, 32.669502, 30.868507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376575, 32.224880, 31.616409>,  <43.827545, 32.179272, 31.128443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376575, 32.224880, 31.616409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409168, 32.578781, 31.432856>,  <44.428722, 32.791122, 31.322723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409168, 32.578781, 31.432856>,  <44.376575, 32.224880, 31.616409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409168, 32.578781, 31.432856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126201, 0.465868, 0.875808,
		0.988653, -0.013448, 0.149615,
		0.081479, 0.884752, -0.458885,
		44.433613, 32.844208, 31.295191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832916, 32.644905, 32.001514>,  <44.376575, 32.224880, 31.616409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832916, 32.644905, 32.001514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620369, 32.908886, 31.789057>,  <44.492840, 33.067276, 31.661583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620369, 32.908886, 31.789057>,  <44.832916, 32.644905, 32.001514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620369, 32.908886, 31.789057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034042, 0.609837, 0.791796,
		0.846459, 0.438813, -0.301579,
		-0.531364, 0.659956, -0.531140,
		44.460960, 33.106873, 31.629715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130344, 33.328255, 32.130169>,  <44.832916, 32.644905, 32.001514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130344, 33.328255, 32.130169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763699, 33.430202, 32.006977>,  <44.543709, 33.491371, 31.933062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763699, 33.430202, 32.006977>,  <45.130344, 33.328255, 32.130169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763699, 33.430202, 32.006977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004838, 0.763275, 0.646056,
		0.399735, 0.593676, -0.698398,
		-0.916618, 0.254872, -0.307980,
		44.488712, 33.506664, 31.914583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049923, 34.075817, 32.283825>,  <45.130344, 33.328255, 32.130169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049923, 34.075817, 32.283825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666588, 33.975849, 32.228493>,  <44.436588, 33.915867, 32.195293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666588, 33.975849, 32.228493>,  <45.049923, 34.075817, 32.283825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666588, 33.975849, 32.228493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269053, 0.627097, 0.730999,
		-0.095949, 0.737759, -0.668211,
		-0.958334, -0.249922, -0.138327,
		44.379089, 33.900871, 32.186996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720898, 34.655575, 32.274189>,  <45.049923, 34.075817, 32.283825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720898, 34.655575, 32.274189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428692, 34.389149, 32.334473>,  <44.253368, 34.229294, 32.370644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428692, 34.389149, 32.334473>,  <44.720898, 34.655575, 32.274189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428692, 34.389149, 32.334473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501345, 0.672924, 0.543899,
		-0.463688, 0.321766, -0.825506,
		-0.730512, -0.666063, 0.150711,
		44.209538, 34.189331, 32.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043900, 35.078873, 32.200958>,  <44.720898, 34.655575, 32.274189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043900, 35.078873, 32.200958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969215, 34.754066, 32.422142>,  <43.924404, 34.559181, 32.554852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969215, 34.754066, 32.422142>,  <44.043900, 35.078873, 32.200958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969215, 34.754066, 32.422142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501283, 0.562816, 0.657232,
		-0.844899, -0.154475, -0.512136,
		-0.186713, -0.812019, 0.552958,
		43.913200, 34.510460, 32.588028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454876, 35.244949, 32.509552>,  <44.043900, 35.078873, 32.200958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454876, 35.244949, 32.509552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572838, 34.922142, 32.714199>,  <43.643616, 34.728458, 32.836987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572838, 34.922142, 32.714199>,  <43.454876, 35.244949, 32.509552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572838, 34.922142, 32.714199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529635, 0.307594, 0.790489,
		-0.795311, -0.504087, -0.336715,
		0.294904, -0.807021, 0.511615,
		43.661308, 34.680035, 32.867683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860176, 35.053368, 32.941463>,  <43.454876, 35.244949, 32.509552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860176, 35.053368, 32.941463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169212, 34.870300, 33.117481>,  <43.354633, 34.760460, 33.223091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169212, 34.870300, 33.117481>,  <42.860176, 35.053368, 32.941463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169212, 34.870300, 33.117481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377268, 0.226528, 0.897972,
		-0.510653, -0.859784, 0.002353,
		0.772595, -0.457664, 0.440046,
		43.400990, 34.733002, 33.249496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589653, 34.752331, 33.469070>,  <42.860176, 35.053368, 32.941463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589653, 34.752331, 33.469070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976204, 34.774944, 33.569408>,  <43.208134, 34.788513, 33.629612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976204, 34.774944, 33.569408>,  <42.589653, 34.752331, 33.469070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976204, 34.774944, 33.569408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256184, 0.295547, 0.920338,
		-0.022110, -0.953654, 0.300091,
		0.966375, 0.056530, 0.250846,
		43.266117, 34.791904, 33.644661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681572, 34.418076, 34.074444>,  <42.589653, 34.752331, 33.469070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681572, 34.418076, 34.074444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979511, 34.684624, 34.060886>,  <43.158276, 34.844555, 34.052753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979511, 34.684624, 34.060886>,  <42.681572, 34.418076, 34.074444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979511, 34.684624, 34.060886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290842, 0.369968, 0.882346,
		0.600512, -0.647355, 0.469379,
		0.744847, 0.666375, -0.033892,
		43.202965, 34.884537, 34.050720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025658, 34.441505, 34.738029>,  <42.681572, 34.418076, 34.074444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025658, 34.441505, 34.738029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125633, 34.789257, 34.567524>,  <43.185619, 34.997910, 34.465218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125633, 34.789257, 34.567524>,  <43.025658, 34.441505, 34.738029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125633, 34.789257, 34.567524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207222, 0.478068, 0.853528,
		0.945828, -0.124996, 0.299642,
		0.249937, 0.869383, -0.426269,
		43.200615, 35.050072, 34.439644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487320, 34.839489, 35.207664>,  <43.025658, 34.441505, 34.738029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487320, 34.839489, 35.207664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349327, 35.127590, 34.966923>,  <43.266533, 35.300449, 34.822479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349327, 35.127590, 34.966923>,  <43.487320, 34.839489, 35.207664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349327, 35.127590, 34.966923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259526, 0.543021, 0.798608,
		0.902018, 0.431698, -0.000405,
		-0.344978, 0.720254, -0.601851,
		43.245834, 35.343666, 34.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804432, 35.466415, 35.404327>,  <43.487320, 34.839489, 35.207664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804432, 35.466415, 35.404327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461449, 35.553955, 35.218048>,  <43.255657, 35.606480, 35.106281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461449, 35.553955, 35.218048>,  <43.804432, 35.466415, 35.404327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461449, 35.553955, 35.218048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275864, 0.568463, 0.775080,
		0.434355, 0.793067, -0.427061,
		-0.857458, 0.218849, -0.465694,
		43.204212, 35.619610, 35.078339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430828, 35.339359, 34.978127>,  <43.804432, 35.466415, 35.404327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430828, 35.339359, 34.978127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816650, 35.439056, 34.943470>,  <45.048145, 35.498875, 34.922676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816650, 35.439056, 34.943470>,  <44.430828, 35.339359, 34.978127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816650, 35.439056, 34.943470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178889, 0.376304, -0.909062,
		-0.193971, 0.892343, 0.407553,
		0.964559, 0.249239, -0.086638,
		45.106018, 35.513828, 34.917477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455509, 36.022568, 34.660934>,  <44.430828, 35.339359, 34.978127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455509, 36.022568, 34.660934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811203, 35.853619, 34.590675>,  <45.024620, 35.752247, 34.548519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811203, 35.853619, 34.590675>,  <44.455509, 36.022568, 34.660934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811203, 35.853619, 34.590675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099130, 0.196924, -0.975394,
		0.446574, 0.884770, 0.133243,
		0.889238, -0.422377, -0.175648,
		45.077976, 35.726906, 34.537979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767597, 36.526009, 34.246483>,  <44.455509, 36.022568, 34.660934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767597, 36.526009, 34.246483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968559, 36.185856, 34.183949>,  <45.089134, 35.981766, 34.146427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968559, 36.185856, 34.183949>,  <44.767597, 36.526009, 34.246483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968559, 36.185856, 34.183949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036597, 0.201568, -0.978791,
		0.863860, 0.486024, 0.132389,
		0.502401, -0.850383, -0.156339,
		45.119278, 35.930740, 34.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302765, 36.640778, 33.970901>,  <44.767597, 36.526009, 34.246483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302765, 36.640778, 33.970901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254078, 36.260780, 33.855869>,  <45.224865, 36.032784, 33.786850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254078, 36.260780, 33.855869>,  <45.302765, 36.640778, 33.970901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254078, 36.260780, 33.855869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039105, 0.284921, -0.957753,
		0.991794, -0.127824, 0.002469,
		-0.121721, -0.949990, -0.287581,
		45.217560, 35.975784, 33.769596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612888, 36.599415, 33.333710>,  <45.302765, 36.640778, 33.970901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612888, 36.599415, 33.333710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373348, 36.280285, 33.305840>,  <45.229622, 36.088806, 33.289120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373348, 36.280285, 33.305840>,  <45.612888, 36.599415, 33.333710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373348, 36.280285, 33.305840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175364, 0.215520, -0.960624,
		0.781423, -0.563055, -0.268975,
		-0.598854, -0.797822, -0.069673,
		45.193691, 36.040939, 33.284939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809845, 36.283329, 32.751289>,  <45.612888, 36.599415, 33.333710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809845, 36.283329, 32.751289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457161, 36.108700, 32.822823>,  <45.245548, 36.003922, 32.865742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457161, 36.108700, 32.822823>,  <45.809845, 36.283329, 32.751289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457161, 36.108700, 32.822823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242239, 0.093653, -0.965686,
		0.404849, -0.894779, -0.188331,
		-0.881713, -0.436578, 0.178835,
		45.192646, 35.977726, 32.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756809, 35.837051, 32.192280>,  <45.809845, 36.283329, 32.751289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756809, 35.837051, 32.192280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381435, 35.851498, 32.329708>,  <45.156212, 35.860165, 32.412167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381435, 35.851498, 32.329708>,  <45.756809, 35.837051, 32.192280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381435, 35.851498, 32.329708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344546, -0.025223, -0.938431,
		-0.025223, -0.999029, 0.036112,
		0.938431, -0.036112, -0.343575,
		45.099907, 35.862331, 32.432781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468475, 35.282883, 31.902102>,  <45.756809, 35.837051, 32.192280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468475, 35.282883, 31.902102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.165356, 35.529339, 31.987997>,  <44.983482, 35.677212, 32.039536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.165356, 35.529339, 31.987997>,  <45.468475, 35.282883, 31.902102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165356, 35.529339, 31.987997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275613, -0.003963, -0.961261,
		-0.591417, -0.787629, 0.172818,
		-0.757802, 0.616137, 0.214737,
		44.938015, 35.714180, 32.052418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877869, 34.987503, 31.589165>,  <45.468475, 35.282883, 31.902102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877869, 34.987503, 31.589165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773067, 35.372391, 31.618813>,  <44.710186, 35.603321, 31.636600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773067, 35.372391, 31.618813>,  <44.877869, 34.987503, 31.589165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773067, 35.372391, 31.618813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543801, -0.083750, -0.835025,
		-0.797268, -0.259084, 0.545197,
		-0.262002, 0.962217, 0.074119,
		44.694466, 35.661057, 31.641048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137691, 34.993675, 31.346123>,  <44.877869, 34.987503, 31.589165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137691, 34.993675, 31.346123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274269, 35.368668, 31.319164>,  <44.356216, 35.593662, 31.302990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274269, 35.368668, 31.319164>,  <44.137691, 34.993675, 31.346123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274269, 35.368668, 31.319164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526708, 0.131456, -0.839820,
		-0.778459, 0.322246, 0.538665,
		0.341440, 0.937484, -0.067397,
		44.376701, 35.649914, 31.298944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600685, 35.463764, 31.308004>,  <44.137691, 34.993675, 31.346123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600685, 35.463764, 31.308004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903744, 35.631664, 31.108093>,  <44.085579, 35.732403, 30.988148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903744, 35.631664, 31.108093>,  <43.600685, 35.463764, 31.308004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903744, 35.631664, 31.108093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523356, -0.066792, -0.849492,
		-0.389954, 0.905180, 0.169073,
		0.757651, 0.419748, -0.499777,
		44.131039, 35.757587, 30.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427322, 35.643696, 30.506819>,  <43.600685, 35.463764, 31.308004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427322, 35.643696, 30.506819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805244, 35.769772, 30.471052>,  <44.031998, 35.845417, 30.449593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805244, 35.769772, 30.471052>,  <43.427322, 35.643696, 30.506819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805244, 35.769772, 30.471052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100909, 0.020298, -0.994689,
		-0.311697, 0.948813, 0.050982,
		0.944808, 0.315186, -0.089417,
		44.088688, 35.864326, 30.444227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420696, 36.286808, 30.048471>,  <43.427322, 35.643696, 30.506819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420696, 36.286808, 30.048471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774643, 36.100674, 30.039757>,  <43.987011, 35.988995, 30.034529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774643, 36.100674, 30.039757>,  <43.420696, 36.286808, 30.048471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774643, 36.100674, 30.039757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048071, -0.044694, -0.997843,
		0.463360, 0.884004, -0.061918,
		0.884866, -0.465337, -0.021786,
		44.040104, 35.961071, 30.033220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712868, 36.603333, 29.435158>,  <43.420696, 36.286808, 30.048471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712868, 36.603333, 29.435158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920269, 36.267891, 29.501961>,  <44.044708, 36.066624, 29.542044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920269, 36.267891, 29.501961>,  <43.712868, 36.603333, 29.435158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920269, 36.267891, 29.501961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117807, -0.123392, -0.985340,
		0.846922, 0.530576, 0.034815,
		0.518503, -0.838608, 0.167009,
		44.075821, 36.016308, 29.552063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509113, 36.465450, 29.110466>,  <43.712868, 36.603333, 29.435158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509113, 36.465450, 29.110466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308666, 36.121426, 29.148779>,  <44.188396, 35.915012, 29.171766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308666, 36.121426, 29.148779>,  <44.509113, 36.465450, 29.110466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308666, 36.121426, 29.148779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016816, -0.120337, -0.992591,
		0.865214, -0.495797, 0.074766,
		-0.501120, -0.860061, 0.095780,
		44.158329, 35.863407, 29.177513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563778, 36.221645, 28.449305>,  <44.509113, 36.465450, 29.110466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563778, 36.221645, 28.449305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360477, 35.925159, 28.624704>,  <44.238495, 35.747269, 28.729944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360477, 35.925159, 28.624704>,  <44.563778, 36.221645, 28.449305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360477, 35.925159, 28.624704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189025, -0.400740, -0.896480,
		0.840207, -0.538526, 0.063570,
		-0.508253, -0.741213, 0.438500,
		44.208000, 35.702797, 28.756254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809982, 35.626457, 28.250570>,  <44.563778, 36.221645, 28.449305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809982, 35.626457, 28.250570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453850, 35.487503, 28.368305>,  <44.240170, 35.404133, 28.438946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453850, 35.487503, 28.368305>,  <44.809982, 35.626457, 28.250570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453850, 35.487503, 28.368305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026668, -0.605561, -0.795352,
		0.454530, -0.715977, 0.529886,
		-0.890332, -0.347381, 0.294339,
		44.186749, 35.383289, 28.456608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912079, 34.950214, 28.083250>,  <44.809982, 35.626457, 28.250570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912079, 34.950214, 28.083250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515663, 34.991264, 28.117441>,  <44.277813, 35.015892, 28.137955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515663, 34.991264, 28.117441>,  <44.912079, 34.950214, 28.083250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515663, 34.991264, 28.117441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131553, -0.639637, -0.757337,
		-0.023045, -0.761796, 0.647406,
		-0.991041, 0.102621, 0.085476,
		44.218349, 35.022049, 28.143084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613091, 34.308468, 28.254343>,  <44.912079, 34.950214, 28.083250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613091, 34.308468, 28.254343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319344, 34.530922, 28.098690>,  <44.143097, 34.664394, 28.005299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319344, 34.530922, 28.098690>,  <44.613091, 34.308468, 28.254343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319344, 34.530922, 28.098690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105340, -0.659736, -0.744077,
		-0.670536, -0.505429, 0.543068,
		-0.734360, 0.556138, -0.389136,
		44.099033, 34.697762, 27.981951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965134, 33.788757, 28.095755>,  <44.613091, 34.308468, 28.254343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965134, 33.788757, 28.095755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987862, 34.115932, 27.866758>,  <44.001499, 34.312237, 27.729361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987862, 34.115932, 27.866758>,  <43.965134, 33.788757, 28.095755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987862, 34.115932, 27.866758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074970, -0.575294, -0.814504,
		-0.995566, 0.003358, -0.094007,
		0.056817, 0.817940, -0.572491,
		44.004906, 34.361313, 27.695011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.561512, 40.367306, 40.175941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689911, 39.992939, 40.117950>,  <37.766949, 39.768318, 40.083157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689911, 39.992939, 40.117950>,  <37.561512, 40.367306, 40.175941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689911, 39.992939, 40.117950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255215, 0.232896, -0.938416,
		0.912047, 0.264224, 0.313618,
		0.320993, -0.935919, -0.144979,
		37.786209, 39.712162, 40.074455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283844, 40.383411, 39.821587>,  <37.561512, 40.367306, 40.175941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283844, 40.383411, 39.821587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154060, 40.015644, 39.732693>,  <38.076191, 39.794983, 39.679356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154060, 40.015644, 39.732693>,  <38.283844, 40.383411, 39.821587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154060, 40.015644, 39.732693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096327, 0.201611, -0.974718,
		0.940981, -0.337666, 0.023150,
		-0.324461, -0.919421, -0.222239,
		38.056721, 39.739819, 39.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755207, 40.106991, 39.304375>,  <38.283844, 40.383411, 39.821587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755207, 40.106991, 39.304375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445881, 39.859314, 39.249851>,  <38.260284, 39.710709, 39.217136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445881, 39.859314, 39.249851>,  <38.755207, 40.106991, 39.304375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445881, 39.859314, 39.249851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205395, -0.041267, -0.977809,
		0.599824, -0.784156, 0.159091,
		-0.773320, -0.619190, -0.136309,
		38.213886, 39.673557, 39.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978710, 39.672482, 38.829956>,  <38.755207, 40.106991, 39.304375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978710, 39.672482, 38.829956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580711, 39.639294, 38.807720>,  <38.341911, 39.619381, 38.794376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580711, 39.639294, 38.807720>,  <38.978710, 39.672482, 38.829956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580711, 39.639294, 38.807720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057135, -0.016342, -0.998233,
		0.081912, -0.996418, 0.021001,
		-0.995001, -0.082968, -0.055591,
		38.282211, 39.614403, 38.791042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869621, 39.152611, 38.259583>,  <38.978710, 39.672482, 38.829956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869621, 39.152611, 38.259583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514637, 39.335201, 38.285027>,  <38.301647, 39.444756, 38.300293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514637, 39.335201, 38.285027>,  <38.869621, 39.152611, 38.259583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514637, 39.335201, 38.285027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105571, -0.066997, -0.992152,
		-0.448631, -0.887210, 0.107647,
		-0.887460, 0.456475, 0.063607,
		38.248398, 39.472145, 38.304108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408894, 38.906116, 37.817715>,  <38.869621, 39.152611, 38.259583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408894, 38.906116, 37.817715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 39.216122, 37.904202>,  <38.028858, 39.402122, 37.956093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 39.216122, 37.904202>,  <38.408894, 38.906116, 37.817715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171371, 39.216122, 37.904202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468079, -0.114165, -0.876281,
		-0.654441, -0.621552, 0.430558,
		-0.593809, 0.775009, 0.216221,
		37.993229, 39.448624, 37.969067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674351, 38.723618, 37.699249>,  <38.408894, 38.906116, 37.817715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674351, 38.723618, 37.699249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750210, 39.108955, 37.623352>,  <37.795723, 39.340157, 37.577816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750210, 39.108955, 37.623352>,  <37.674351, 38.723618, 37.699249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750210, 39.108955, 37.623352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198844, -0.151559, -0.968241,
		-0.961507, 0.221351, 0.162813,
		0.189646, 0.963345, -0.189740,
		37.807102, 39.397961, 37.566429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104507, 39.022865, 37.319969>,  <37.674351, 38.723618, 37.699249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104507, 39.022865, 37.319969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402500, 39.277199, 37.239254>,  <37.581295, 39.429798, 37.190826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402500, 39.277199, 37.239254>,  <37.104507, 39.022865, 37.319969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402500, 39.277199, 37.239254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165374, -0.117013, -0.979265,
		-0.646262, 0.762904, 0.017978,
		0.744981, 0.635834, -0.201786,
		37.625996, 39.467949, 37.178719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827053, 39.439342, 36.650173>,  <37.104507, 39.022865, 37.319969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827053, 39.439342, 36.650173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220982, 39.506847, 36.666412>,  <37.457340, 39.547352, 36.676155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220982, 39.506847, 36.666412>,  <36.827053, 39.439342, 36.650173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220982, 39.506847, 36.666412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040119, 0.006235, -0.999175,
		-0.168876, 0.985637, -0.000631,
		0.984820, 0.168763, 0.040596,
		37.516426, 39.557476, 36.678593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898499, 39.766327, 36.095917>,  <36.827053, 39.439342, 36.650173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898499, 39.766327, 36.095917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258064, 39.613247, 36.181232>,  <37.473804, 39.521400, 36.232422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258064, 39.613247, 36.181232>,  <36.898499, 39.766327, 36.095917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258064, 39.613247, 36.181232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068470, -0.358137, -0.931155,
		0.432740, 0.851633, -0.295731,
		0.898915, -0.382699, 0.213292,
		37.527740, 39.498436, 36.245220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346325, 39.893524, 35.512295>,  <36.898499, 39.766327, 36.095917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346325, 39.893524, 35.512295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531380, 39.594223, 35.702488>,  <37.642410, 39.414642, 35.816605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531380, 39.594223, 35.702488>,  <37.346325, 39.893524, 35.512295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531380, 39.594223, 35.702488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256338, -0.400523, -0.879700,
		0.848682, 0.528863, 0.006511,
		0.462633, -0.748255, 0.475484,
		37.670170, 39.369747, 35.845135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723434, 39.631165, 34.923267>,  <37.346325, 39.893524, 35.512295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723434, 39.631165, 34.923267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781048, 39.359539, 35.211193>,  <37.815617, 39.196564, 35.383949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781048, 39.359539, 35.211193>,  <37.723434, 39.631165, 34.923267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781048, 39.359539, 35.211193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330286, -0.652696, -0.681835,
		0.932826, 0.335954, 0.130272,
		0.144037, -0.679060, 0.719813,
		37.824261, 39.155823, 35.427135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381233, 39.346771, 34.847176>,  <37.723434, 39.631165, 34.923267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381233, 39.346771, 34.847176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067352, 39.129913, 34.967388>,  <37.879025, 38.999798, 35.039516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067352, 39.129913, 34.967388>,  <38.381233, 39.346771, 34.847176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067352, 39.129913, 34.967388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255068, -0.724287, -0.640585,
		0.564960, -0.426014, 0.706635,
		-0.784704, -0.542145, 0.300530,
		37.831940, 38.967270, 35.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203823, 38.584091, 35.138538>,  <38.381233, 39.346771, 34.847176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203823, 38.584091, 35.138538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440407, 38.427010, 34.856842>,  <38.582355, 38.332760, 34.687824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440407, 38.427010, 34.856842>,  <38.203823, 38.584091, 35.138538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440407, 38.427010, 34.856842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113206, -0.824296, 0.554726,
		-0.798348, -0.407822, -0.443081,
		0.591460, -0.392705, -0.704243,
		38.617844, 38.309196, 34.645569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982082, 37.796692, 35.011223>,  <38.203823, 38.584091, 35.138538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982082, 37.796692, 35.011223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365265, 37.843277, 34.906338>,  <38.595173, 37.871227, 34.843407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365265, 37.843277, 34.906338>,  <37.982082, 37.796692, 35.011223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365265, 37.843277, 34.906338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237769, -0.833736, 0.498349,
		-0.160580, -0.539743, -0.826373,
		0.957956, 0.116460, -0.262215,
		38.652653, 37.878216, 34.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209034, 37.137939, 34.822781>,  <37.982082, 37.796692, 35.011223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209034, 37.137939, 34.822781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545261, 37.335693, 34.911350>,  <38.746998, 37.454346, 34.964493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545261, 37.335693, 34.911350>,  <38.209034, 37.137939, 34.822781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545261, 37.335693, 34.911350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329484, -0.791055, 0.515434,
		0.429985, -0.360300, -0.827827,
		0.840567, 0.494384, 0.221428,
		38.797432, 37.484009, 34.977779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645058, 36.706013, 34.799084>,  <38.209034, 37.137939, 34.822781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645058, 36.706013, 34.799084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861156, 36.964977, 35.014114>,  <38.990818, 37.120354, 35.143135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861156, 36.964977, 35.014114>,  <38.645058, 36.706013, 34.799084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861156, 36.964977, 35.014114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294439, -0.743881, 0.599956,
		0.788312, -0.165841, -0.592504,
		0.540249, 0.647409, 0.537580,
		39.023232, 37.159199, 35.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291813, 36.328091, 35.023819>,  <38.645058, 36.706013, 34.799084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291813, 36.328091, 35.023819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217152, 36.640594, 35.262077>,  <39.172356, 36.828098, 35.405033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217152, 36.640594, 35.262077>,  <39.291813, 36.328091, 35.023819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217152, 36.640594, 35.262077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265109, -0.543756, 0.796270,
		0.945980, 0.306536, -0.105626,
		-0.186650, 0.781259, 0.595648,
		39.161156, 36.874973, 35.440773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707947, 36.216816, 35.578453>,  <39.291813, 36.328091, 35.023819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707947, 36.216816, 35.578453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472435, 36.487103, 35.755878>,  <39.331127, 36.649273, 35.862335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472435, 36.487103, 35.755878>,  <39.707947, 36.216816, 35.578453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472435, 36.487103, 35.755878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046544, -0.576200, 0.815983,
		0.806955, 0.459785, 0.370703,
		-0.588775, 0.675716, 0.443567,
		39.295803, 36.689816, 35.888950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964336, 36.278553, 36.248039>,  <39.707947, 36.216816, 35.578453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964336, 36.278553, 36.248039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592720, 36.420532, 36.289810>,  <39.369751, 36.505718, 36.314873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592720, 36.420532, 36.289810>,  <39.964336, 36.278553, 36.248039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592720, 36.420532, 36.289810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058524, -0.419658, 0.905793,
		0.365330, 0.835404, 0.410651,
		-0.929037, 0.354946, 0.104423,
		39.314011, 36.527016, 36.321136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981606, 36.831970, 36.797672>,  <39.964336, 36.278553, 36.248039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981606, 36.831970, 36.797672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612133, 36.681995, 36.766075>,  <39.390450, 36.592010, 36.747116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612133, 36.681995, 36.766075>,  <39.981606, 36.831970, 36.797672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612133, 36.681995, 36.766075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078851, -0.387735, 0.918392,
		-0.374968, 0.842070, 0.387707,
		-0.923678, -0.374939, -0.078991,
		39.335030, 36.569515, 36.742378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735577, 36.977749, 37.412907>,  <39.981606, 36.831970, 36.797672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735577, 36.977749, 37.412907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463783, 36.715649, 37.280872>,  <39.300709, 36.558388, 37.201653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463783, 36.715649, 37.280872>,  <39.735577, 36.977749, 37.412907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463783, 36.715649, 37.280872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100498, -0.362532, 0.926537,
		-0.726777, 0.662737, 0.180482,
		-0.679481, -0.655248, -0.330084,
		39.259937, 36.519073, 37.181847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057549, 37.000568, 37.894924>,  <39.735577, 36.977749, 37.412907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057549, 37.000568, 37.894924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105789, 36.654129, 37.700882>,  <39.134735, 36.446266, 37.584457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105789, 36.654129, 37.700882>,  <39.057549, 37.000568, 37.894924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105789, 36.654129, 37.700882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260091, -0.499170, 0.826548,
		-0.958023, 0.026489, -0.285465,
		0.120601, -0.866099, -0.485106,
		39.141968, 36.394299, 37.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502678, 36.719952, 38.120827>,  <39.057549, 37.000568, 37.894924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502678, 36.719952, 38.120827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743427, 36.430920, 37.984818>,  <38.887878, 36.257500, 37.903210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743427, 36.430920, 37.984818>,  <38.502678, 36.719952, 38.120827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743427, 36.430920, 37.984818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229551, -0.564357, 0.792974,
		-0.764886, -0.399219, -0.505543,
		0.601877, -0.722582, -0.340027,
		38.923992, 36.214146, 37.882809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172710, 36.125088, 38.208313>,  <38.502678, 36.719952, 38.120827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172710, 36.125088, 38.208313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539726, 35.967220, 38.188892>,  <38.759937, 35.872498, 38.177242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539726, 35.967220, 38.188892>,  <38.172710, 36.125088, 38.208313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539726, 35.967220, 38.188892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152775, -0.462595, 0.873307,
		-0.367126, -0.793877, -0.484745,
		0.917540, -0.394670, -0.048546,
		38.814987, 35.848820, 38.174328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093517, 35.343845, 38.443398>,  <38.172710, 36.125088, 38.208313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093517, 35.343845, 38.443398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467731, 35.476257, 38.492702>,  <38.692261, 35.555702, 38.522285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467731, 35.476257, 38.492702>,  <38.093517, 35.343845, 38.443398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467731, 35.476257, 38.492702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029056, -0.275661, 0.960816,
		0.352034, -0.902459, -0.248272,
		0.935536, 0.331026, 0.123264,
		38.748394, 35.575565, 38.529682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351368, 34.869446, 38.906456>,  <38.093517, 35.343845, 38.443398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351368, 34.869446, 38.906456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616661, 35.167370, 38.935810>,  <38.775837, 35.346123, 38.953423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616661, 35.167370, 38.935810>,  <38.351368, 34.869446, 38.906456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616661, 35.167370, 38.935810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001888, -0.096389, 0.995342,
		0.748413, -0.660280, -0.062522,
		0.663231, 0.744808, 0.073385,
		38.815632, 35.390812, 38.957825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913456, 34.604076, 39.287071>,  <38.351368, 34.869446, 38.906456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913456, 34.604076, 39.287071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907219, 35.002174, 39.325542>,  <38.903477, 35.241032, 39.348625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907219, 35.002174, 39.325542>,  <38.913456, 34.604076, 39.287071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907219, 35.002174, 39.325542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019912, -0.095864, 0.995195,
		0.999680, 0.017435, -0.018323,
		-0.015594, 0.995242, 0.096181,
		38.902542, 35.300747, 39.354397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801445, 34.049789, 38.800602>,  <38.913456, 34.604076, 39.287071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801445, 34.049789, 38.800602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469875, 33.960213, 39.005630>,  <38.270935, 33.906467, 39.128647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469875, 33.960213, 39.005630>,  <38.801445, 34.049789, 38.800602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469875, 33.960213, 39.005630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536088, 0.056490, -0.842270,
		0.159669, -0.972963, -0.166882,
		-0.828925, -0.223948, 0.512574,
		38.221199, 33.893028, 39.159401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538803, 33.549324, 38.496574>,  <38.801445, 34.049789, 38.800602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538803, 33.549324, 38.496574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208405, 33.662296, 38.691700>,  <38.010166, 33.730080, 38.808777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208405, 33.662296, 38.691700>,  <38.538803, 33.549324, 38.496574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208405, 33.662296, 38.691700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540610, -0.151907, -0.827445,
		-0.159619, -0.947175, 0.278174,
		-0.825992, 0.282460, 0.487805,
		37.960606, 33.747025, 38.838043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931961, 33.072960, 38.363831>,  <38.538803, 33.549324, 38.496574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931961, 33.072960, 38.363831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777645, 33.424862, 38.474972>,  <37.685055, 33.636002, 38.541656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777645, 33.424862, 38.474972>,  <37.931961, 33.072960, 38.363831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777645, 33.424862, 38.474972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658383, -0.051557, -0.750915,
		-0.646294, -0.472628, 0.599105,
		-0.385791, 0.879753, 0.277849,
		37.661907, 33.688789, 38.558327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308018, 32.865536, 38.226810>,  <37.931961, 33.072960, 38.363831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308018, 32.865536, 38.226810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317501, 33.265408, 38.230293>,  <37.323193, 33.505329, 38.232384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317501, 33.265408, 38.230293>,  <37.308018, 32.865536, 38.226810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317501, 33.265408, 38.230293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578157, 0.020812, -0.815660,
		-0.815581, 0.014307, 0.578466,
		0.023709, 0.999681, 0.008702,
		37.324615, 33.565311, 38.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577606, 33.108444, 38.251389>,  <37.308018, 32.865536, 38.226810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577606, 33.108444, 38.251389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802826, 33.393429, 38.083874>,  <36.937958, 33.564419, 37.983364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802826, 33.393429, 38.083874>,  <36.577606, 33.108444, 38.251389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802826, 33.393429, 38.083874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617151, 0.025463, -0.786433,
		-0.549636, 0.701253, 0.454031,
		0.563049, 0.712457, -0.418784,
		36.971741, 33.607166, 37.958237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154755, 33.650673, 38.013832>,  <36.577606, 33.108444, 38.251389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154755, 33.650673, 38.013832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478302, 33.710659, 37.786411>,  <36.672428, 33.746651, 37.649960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478302, 33.710659, 37.786411>,  <36.154755, 33.650673, 38.013832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478302, 33.710659, 37.786411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587888, 0.224531, -0.777158,
		0.011113, 0.962859, 0.269776,
		0.808866, 0.149962, -0.568548,
		36.720963, 33.755646, 37.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927681, 34.312057, 37.737381>,  <36.154755, 33.650673, 38.013832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927681, 34.312057, 37.737381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212490, 34.139011, 37.516159>,  <36.383377, 34.035183, 37.383427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212490, 34.139011, 37.516159>,  <35.927681, 34.312057, 37.737381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212490, 34.139011, 37.516159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575046, 0.092699, -0.812853,
		0.402921, 0.896800, -0.182771,
		0.712023, -0.432617, -0.553051,
		36.426098, 34.009228, 37.350243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994514, 34.714630, 37.170559>,  <35.927681, 34.312057, 37.737381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994514, 34.714630, 37.170559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179520, 34.387474, 37.033653>,  <36.290524, 34.191181, 36.951508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179520, 34.387474, 37.033653>,  <35.994514, 34.714630, 37.170559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179520, 34.387474, 37.033653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552765, 0.035825, -0.832567,
		0.693207, 0.574263, -0.435529,
		0.462509, -0.817886, -0.342267,
		36.318272, 34.142109, 36.930973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857883, 34.734394, 36.367092>,  <35.994514, 34.714630, 37.170559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857883, 34.734394, 36.367092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979965, 34.359108, 36.432331>,  <36.053215, 34.133938, 36.471474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979965, 34.359108, 36.432331>,  <35.857883, 34.734394, 36.367092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979965, 34.359108, 36.432331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429163, -0.288405, -0.855945,
		0.850100, 0.191242, -0.490670,
		0.305204, -0.938216, 0.163099,
		36.071526, 34.077644, 36.481262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357704, 34.461105, 35.800152>,  <35.857883, 34.734394, 36.367092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357704, 34.461105, 35.800152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165787, 34.160439, 35.981171>,  <36.050636, 33.980038, 36.089783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165787, 34.160439, 35.981171>,  <36.357704, 34.461105, 35.800152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165787, 34.160439, 35.981171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405225, -0.267637, -0.874164,
		0.778200, -0.602796, -0.176186,
		-0.479789, -0.751670, 0.452543,
		36.021851, 33.934937, 36.116932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280174, 33.868832, 35.325401>,  <36.357704, 34.461105, 35.800152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280174, 33.868832, 35.325401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992680, 33.775898, 35.587524>,  <35.820183, 33.720139, 35.744801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992680, 33.775898, 35.587524>,  <36.280174, 33.868832, 35.325401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992680, 33.775898, 35.587524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623952, -0.200297, -0.755358,
		0.306753, -0.951789, -0.001004,
		-0.718740, -0.232335, 0.655312,
		35.777058, 33.706196, 35.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911522, 33.237179, 35.151043>,  <36.280174, 33.868832, 35.325401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911522, 33.237179, 35.151043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664936, 33.448315, 35.384747>,  <35.516987, 33.574997, 35.524971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664936, 33.448315, 35.384747>,  <35.911522, 33.237179, 35.151043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664936, 33.448315, 35.384747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691689, -0.008483, -0.722145,
		-0.376220, -0.849302, 0.370330,
		-0.616461, 0.527839, 0.584262,
		35.480000, 33.606667, 35.560024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.717796, 32.768723, 42.874432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348850, 32.922604, 42.888565>,  <39.127483, 33.014931, 42.897045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348850, 32.922604, 42.888565>,  <39.717796, 32.768723, 42.874432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348850, 32.922604, 42.888565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015009, 0.055721, -0.998334,
		-0.386026, -0.921359, -0.045622,
		-0.922366, 0.384698, 0.035338,
		39.072140, 33.038013, 42.899166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399483, 32.450977, 42.365242>,  <39.717796, 32.768723, 42.874432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399483, 32.450977, 42.365242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160950, 32.764496, 42.434589>,  <39.017830, 32.952606, 42.476196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160950, 32.764496, 42.434589>,  <39.399483, 32.450977, 42.365242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160950, 32.764496, 42.434589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210695, 0.055571, -0.975971,
		-0.774593, -0.618532, 0.132002,
		-0.596334, 0.783792, 0.173366,
		38.982048, 32.999634, 42.486599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700325, 32.371891, 42.033813>,  <39.399483, 32.450977, 42.365242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700325, 32.371891, 42.033813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701275, 32.765316, 42.106037>,  <38.701843, 33.001369, 42.149372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701275, 32.765316, 42.106037>,  <38.700325, 32.371891, 42.033813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701275, 32.765316, 42.106037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355595, 0.169593, -0.919125,
		-0.934637, -0.062026, 0.350152,
		0.002374, 0.983561, 0.180564,
		38.701988, 33.060383, 42.160206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088688, 32.597515, 41.689472>,  <38.700325, 32.371891, 42.033813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088688, 32.597515, 41.689472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291084, 32.936226, 41.755123>,  <38.412521, 33.139454, 41.794514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291084, 32.936226, 41.755123>,  <38.088688, 32.597515, 41.689472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291084, 32.936226, 41.755123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420407, 0.408271, -0.810292,
		-0.753145, 0.341004, 0.562574,
		0.505995, 0.846777, 0.164127,
		38.442883, 33.190258, 41.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671185, 33.113750, 41.618382>,  <38.088688, 32.597515, 41.689472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671185, 33.113750, 41.618382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027218, 33.271732, 41.527370>,  <38.240837, 33.366520, 41.472763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027218, 33.271732, 41.527370>,  <37.671185, 33.113750, 41.618382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027218, 33.271732, 41.527370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392974, 0.412048, -0.822063,
		-0.230925, 0.821114, 0.521963,
		0.890081, 0.394953, -0.227524,
		38.294243, 33.390217, 41.459114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520493, 33.741161, 41.213360>,  <37.671185, 33.113750, 41.618382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520493, 33.741161, 41.213360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903652, 33.670963, 41.122475>,  <38.133549, 33.628845, 41.067944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903652, 33.670963, 41.122475>,  <37.520493, 33.741161, 41.213360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903652, 33.670963, 41.122475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148326, 0.375109, -0.915037,
		0.245813, 0.910217, 0.333287,
		0.957902, -0.175493, -0.227216,
		38.191021, 33.618317, 41.054310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773052, 34.322495, 40.945618>,  <37.520493, 33.741161, 41.213360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773052, 34.322495, 40.945618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029442, 34.048588, 40.806911>,  <38.183273, 33.884243, 40.723686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029442, 34.048588, 40.806911>,  <37.773052, 34.322495, 40.945618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029442, 34.048588, 40.806911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012700, 0.461177, -0.887217,
		0.767461, 0.564276, 0.304297,
		0.640970, -0.684769, -0.346769,
		38.221733, 33.843159, 40.702881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166077, 34.703850, 40.533550>,  <37.773052, 34.322495, 40.945618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166077, 34.703850, 40.533550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197880, 34.323608, 40.413532>,  <38.216961, 34.095463, 40.341522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197880, 34.323608, 40.413532>,  <38.166077, 34.703850, 40.533550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197880, 34.323608, 40.413532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032462, 0.298371, -0.953898,
		0.996305, 0.085586, -0.007135,
		0.079512, -0.950605, -0.300047,
		38.221733, 34.038425, 40.323517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688709, 34.726421, 40.148880>,  <38.166077, 34.703850, 40.533550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688709, 34.726421, 40.148880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451084, 34.424244, 40.038319>,  <38.308510, 34.242939, 39.971981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451084, 34.424244, 40.038319>,  <38.688709, 34.726421, 40.148880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451084, 34.424244, 40.038319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193274, 0.467580, -0.862562,
		0.780853, -0.458997, -0.423781,
		-0.594065, -0.755441, -0.276399,
		38.272865, 34.197613, 39.955399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377281, 34.842949, 40.130188>,  <38.688709, 34.726421, 40.148880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377281, 34.842949, 40.130188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210194, 35.192974, 40.032391>,  <39.109943, 35.402988, 39.973713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210194, 35.192974, 40.032391>,  <39.377281, 34.842949, 40.130188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210194, 35.192974, 40.032391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011247, 0.274051, 0.961649,
		0.908508, 0.398946, -0.124317,
		-0.417715, 0.875065, -0.244491,
		39.084881, 35.455494, 39.959042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785606, 35.461124, 40.405739>,  <39.377281, 34.842949, 40.130188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785606, 35.461124, 40.405739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405476, 35.575687, 40.356983>,  <39.177399, 35.644424, 40.327732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405476, 35.575687, 40.356983>,  <39.785606, 35.461124, 40.405739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405476, 35.575687, 40.356983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007127, 0.371463, 0.928420,
		0.311178, 0.883170, -0.350970,
		-0.950325, 0.286403, -0.121886,
		39.120377, 35.661610, 40.320419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760120, 36.029785, 40.774910>,  <39.785606, 35.461124, 40.405739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760120, 36.029785, 40.774910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363567, 35.987114, 40.744488>,  <39.125637, 35.961514, 40.726234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363567, 35.987114, 40.744488>,  <39.760120, 36.029785, 40.774910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363567, 35.987114, 40.744488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116452, 0.451523, 0.884627,
		-0.060026, 0.885860, -0.460054,
		-0.991381, -0.106675, -0.076056,
		39.066154, 35.955112, 40.721672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468323, 36.649612, 41.007809>,  <39.760120, 36.029785, 40.774910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468323, 36.649612, 41.007809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182812, 36.371010, 41.037189>,  <39.011505, 36.203850, 41.054817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182812, 36.371010, 41.037189>,  <39.468323, 36.649612, 41.007809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182812, 36.371010, 41.037189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173776, 0.277724, 0.944813,
		-0.678467, 0.661626, -0.319270,
		-0.713782, -0.696506, 0.073452,
		38.968678, 36.162060, 41.059223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880581, 37.028950, 41.282169>,  <39.468323, 36.649612, 41.007809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880581, 37.028950, 41.282169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795116, 36.648350, 41.370720>,  <38.743839, 36.419991, 41.423851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795116, 36.648350, 41.370720>,  <38.880581, 37.028950, 41.282169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795116, 36.648350, 41.370720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079231, 0.208980, 0.974705,
		-0.973691, 0.225792, 0.030738,
		-0.213657, -0.951496, 0.221372,
		38.731018, 36.362900, 41.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301338, 36.961819, 41.772842>,  <38.880581, 37.028950, 41.282169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301338, 36.961819, 41.772842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527668, 36.633675, 41.805973>,  <38.663464, 36.436790, 41.825851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527668, 36.633675, 41.805973>,  <38.301338, 36.961819, 41.772842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527668, 36.633675, 41.805973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040458, 0.127950, 0.990955,
		-0.823534, -0.557354, 0.105587,
		0.565823, -0.820357, 0.082822,
		38.697414, 36.387569, 41.830818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971661, 36.539997, 42.339340>,  <38.301338, 36.961819, 41.772842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971661, 36.539997, 42.339340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340073, 36.387867, 42.305752>,  <38.561119, 36.296589, 42.285599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340073, 36.387867, 42.305752>,  <37.971661, 36.539997, 42.339340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340073, 36.387867, 42.305752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008303, -0.196370, 0.980495,
		-0.389395, -0.903766, -0.177706,
		0.921034, -0.380325, -0.083970,
		38.616383, 36.273769, 42.280560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972065, 36.083733, 42.918938>,  <37.971661, 36.539997, 42.339340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972065, 36.083733, 42.918938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355278, 36.143402, 42.821026>,  <38.585205, 36.179203, 42.762280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355278, 36.143402, 42.821026>,  <37.972065, 36.083733, 42.918938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355278, 36.143402, 42.821026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247111, 0.002963, 0.968983,
		0.145274, -0.988806, -0.034024,
		0.958035, 0.149176, -0.244776,
		38.642689, 36.188156, 42.747593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298370, 35.651745, 43.403210>,  <37.972065, 36.083733, 42.918938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298370, 35.651745, 43.403210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607052, 35.870152, 43.272774>,  <38.792263, 36.001194, 43.194511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607052, 35.870152, 43.272774>,  <38.298370, 35.651745, 43.403210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607052, 35.870152, 43.272774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340796, 0.077883, 0.936906,
		0.536961, -0.834148, -0.125977,
		0.771706, 0.546015, -0.326094,
		38.838562, 36.033955, 43.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837246, 35.358070, 43.661289>,  <38.298370, 35.651745, 43.403210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837246, 35.358070, 43.661289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968834, 35.722004, 43.560116>,  <39.047787, 35.940365, 43.499413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968834, 35.722004, 43.560116>,  <38.837246, 35.358070, 43.661289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968834, 35.722004, 43.560116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391868, 0.112172, 0.913158,
		0.859197, -0.399519, -0.319634,
		0.328970, 0.909837, -0.252936,
		39.067524, 35.994953, 43.484234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565517, 35.405354, 43.724556>,  <38.837246, 35.358070, 43.661289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565517, 35.405354, 43.724556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454052, 35.788349, 43.754410>,  <39.387173, 36.018147, 43.772320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454052, 35.788349, 43.754410>,  <39.565517, 35.405354, 43.724556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454052, 35.788349, 43.754410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444125, 0.059573, 0.893982,
		0.851529, 0.282263, -0.441844,
		-0.278661, 0.957485, 0.074632,
		39.370453, 36.075596, 43.776798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132927, 35.753651, 43.973457>,  <39.565517, 35.405354, 43.724556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132927, 35.753651, 43.973457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838875, 36.010883, 44.059280>,  <39.662445, 36.165222, 44.110775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838875, 36.010883, 44.059280>,  <40.132927, 35.753651, 43.973457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838875, 36.010883, 44.059280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341126, 0.077399, 0.936826,
		0.585845, 0.761880, -0.276269,
		-0.735131, 0.643077, 0.214554,
		39.618336, 36.203808, 44.123646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426868, 36.332169, 44.450676>,  <40.132927, 35.753651, 43.973457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426868, 36.332169, 44.450676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031406, 36.383209, 44.482384>,  <39.794128, 36.413834, 44.501408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031406, 36.383209, 44.482384>,  <40.426868, 36.332169, 44.450676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031406, 36.383209, 44.482384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089409, 0.075824, 0.993105,
		0.120707, 0.988923, -0.086372,
		-0.988653, 0.127597, 0.079267,
		39.734810, 36.421490, 44.506165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278366, 37.044277, 44.710491>,  <40.426868, 36.332169, 44.450676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278366, 37.044277, 44.710491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957687, 36.825390, 44.806679>,  <39.765278, 36.694057, 44.864391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957687, 36.825390, 44.806679>,  <40.278366, 37.044277, 44.710491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957687, 36.825390, 44.806679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192421, 0.144610, 0.970599,
		-0.565907, 0.824400, -0.010637,
		-0.801701, -0.547222, 0.240467,
		39.717178, 36.661224, 44.878819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.236374, 33.673714, 45.161243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636337, 33.674644, 45.166702>,  <33.876316, 33.675201, 45.169979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636337, 33.674644, 45.166702>,  <33.236374, 33.673714, 45.161243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636337, 33.674644, 45.166702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010036, 0.557454, -0.830147,
		-0.009539, 0.830205, 0.557377,
		0.999904, 0.002325, 0.013650,
		33.936310, 33.675343, 45.170795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372379, 34.252079, 44.913685>,  <33.236374, 33.673714, 45.161243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372379, 34.252079, 44.913685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717991, 34.053856, 44.878201>,  <33.925358, 33.934921, 44.856911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717991, 34.053856, 44.878201>,  <33.372379, 34.252079, 44.913685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717991, 34.053856, 44.878201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129481, 0.389027, -0.912081,
		0.486503, 0.776581, 0.400297,
		0.864031, -0.495561, -0.088710,
		33.977200, 33.905186, 44.851589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751030, 34.820271, 44.708645>,  <33.372379, 34.252079, 44.913685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751030, 34.820271, 44.708645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904324, 34.468147, 44.596786>,  <33.996300, 34.256874, 44.529671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904324, 34.468147, 44.596786>,  <33.751030, 34.820271, 44.708645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904324, 34.468147, 44.596786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209375, 0.377669, -0.901958,
		0.899610, 0.287107, 0.329047,
		0.383229, -0.880304, -0.279642,
		34.019291, 34.204056, 44.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284355, 35.015709, 44.166664>,  <33.751030, 34.820271, 44.708645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284355, 35.015709, 44.166664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269081, 34.618839, 44.119118>,  <34.259918, 34.380718, 44.090591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269081, 34.618839, 44.119118>,  <34.284355, 35.015709, 44.166664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269081, 34.618839, 44.119118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, 0.114773, -0.988776,
		0.994682, -0.049126, 0.090518,
		-0.038186, -0.992176, -0.118862,
		34.257626, 34.321186, 44.083458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953938, 34.737785, 43.699841>,  <34.284355, 35.015709, 44.166664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953938, 34.737785, 43.699841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650173, 34.479713, 43.666260>,  <34.467915, 34.324871, 43.646111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650173, 34.479713, 43.666260>,  <34.953938, 34.737785, 43.699841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650173, 34.479713, 43.666260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071084, 0.210545, -0.974996,
		0.646722, -0.734450, -0.205751,
		-0.759406, -0.645177, -0.083957,
		34.422352, 34.286160, 43.641071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172123, 34.219757, 43.151867>,  <34.953938, 34.737785, 43.699841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172123, 34.219757, 43.151867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776283, 34.244152, 43.203972>,  <34.538780, 34.258789, 43.235233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776283, 34.244152, 43.203972>,  <35.172123, 34.219757, 43.151867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776283, 34.244152, 43.203972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123510, 0.103809, -0.986899,
		-0.073708, -0.992726, -0.095197,
		-0.989602, 0.060984, 0.130263,
		34.479404, 34.262447, 43.243050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978874, 34.009323, 42.511864>,  <35.172123, 34.219757, 43.151867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978874, 34.009323, 42.511864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613262, 34.098122, 42.647667>,  <34.393894, 34.151402, 42.729149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613262, 34.098122, 42.647667>,  <34.978874, 34.009323, 42.511864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613262, 34.098122, 42.647667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354494, -0.030281, -0.934568,
		-0.197189, -0.974577, 0.106374,
		-0.914029, 0.221996, 0.339510,
		34.339054, 34.164719, 42.749519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490025, 33.483952, 42.305710>,  <34.978874, 34.009323, 42.511864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490025, 33.483952, 42.305710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239929, 33.793358, 42.347176>,  <34.089870, 33.979000, 42.372055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239929, 33.793358, 42.347176>,  <34.490025, 33.483952, 42.305710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239929, 33.793358, 42.347176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283844, -0.101651, -0.953467,
		-0.726983, -0.625574, 0.283114,
		-0.625242, 0.773514, 0.103667,
		34.052357, 34.025414, 42.378277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915482, 33.401234, 41.806297>,  <34.490025, 33.483952, 42.305710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915482, 33.401234, 41.806297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906002, 33.788868, 41.904533>,  <33.900314, 34.021450, 41.963474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906002, 33.788868, 41.904533>,  <33.915482, 33.401234, 41.806297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906002, 33.788868, 41.904533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441644, 0.210236, -0.872211,
		-0.896877, -0.129134, 0.423008,
		-0.023701, 0.969085, 0.245587,
		33.898891, 34.079594, 41.978210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364754, 33.734669, 41.480881>,  <33.915482, 33.401234, 41.806297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364754, 33.734669, 41.480881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561874, 34.068695, 41.578709>,  <33.680149, 34.269112, 41.637405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561874, 34.068695, 41.578709>,  <33.364754, 33.734669, 41.480881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561874, 34.068695, 41.578709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384475, 0.461116, -0.799719,
		-0.780591, 0.300073, 0.548301,
		0.492804, 0.835062, 0.244573,
		33.709717, 34.319214, 41.652081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940731, 34.239246, 41.373978>,  <33.364754, 33.734669, 41.480881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940731, 34.239246, 41.373978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304634, 34.405144, 41.381199>,  <33.522976, 34.504681, 41.385532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304634, 34.405144, 41.381199>,  <32.940731, 34.239246, 41.373978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304634, 34.405144, 41.381199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207529, 0.492021, -0.845486,
		-0.359539, 0.765444, 0.533692,
		0.909760, 0.414742, 0.018049,
		33.577560, 34.529568, 41.386612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826462, 34.945065, 41.269325>,  <32.940731, 34.239246, 41.373978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826462, 34.945065, 41.269325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202183, 34.870506, 41.154110>,  <33.427616, 34.825771, 41.084980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202183, 34.870506, 41.154110>,  <32.826462, 34.945065, 41.269325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202183, 34.870506, 41.154110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162445, 0.497840, -0.851920,
		0.302193, 0.847001, 0.437343,
		0.939304, -0.186400, -0.288034,
		33.483974, 34.814587, 41.067699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050507, 35.521866, 40.848732>,  <32.826462, 34.945065, 41.269325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050507, 35.521866, 40.848732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326607, 35.243301, 40.770184>,  <33.492268, 35.076164, 40.723053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326607, 35.243301, 40.770184>,  <33.050507, 35.521866, 40.848732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326607, 35.243301, 40.770184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014731, 0.257815, -0.966082,
		0.723419, 0.669733, 0.167699,
		0.690252, -0.696412, -0.196375,
		33.533684, 35.034378, 40.711269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595444, 35.899944, 40.429916>,  <33.050507, 35.521866, 40.848732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595444, 35.899944, 40.429916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602440, 35.504822, 40.368034>,  <33.606640, 35.267750, 40.330906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602440, 35.504822, 40.368034>,  <33.595444, 35.899944, 40.429916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602440, 35.504822, 40.368034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074842, 0.153005, -0.985387,
		0.997042, 0.028815, -0.071253,
		0.017492, -0.987805, -0.154709,
		33.607689, 35.208481, 40.321621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142746, 36.387070, 40.156338>,  <33.595444, 35.899944, 40.429916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142746, 36.387070, 40.156338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098724, 36.774616, 40.245056>,  <34.072311, 37.007145, 40.298286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098724, 36.774616, 40.245056>,  <34.142746, 36.387070, 40.156338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098724, 36.774616, 40.245056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063436, -0.229547, 0.971228,
		0.991900, 0.092814, 0.086722,
		-0.110051, 0.968862, 0.221800,
		34.065708, 37.065273, 40.311596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380634, 36.346016, 40.785564>,  <34.142746, 36.387070, 40.156338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380634, 36.346016, 40.785564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215565, 36.710350, 40.788883>,  <34.116524, 36.928951, 40.790874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215565, 36.710350, 40.788883>,  <34.380634, 36.346016, 40.785564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215565, 36.710350, 40.788883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180327, -0.090620, 0.979423,
		0.892849, 0.402691, 0.201646,
		-0.412678, 0.910839, 0.008294,
		34.091763, 36.983601, 40.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797565, 36.735714, 41.273949>,  <34.380634, 36.346016, 40.785564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797565, 36.735714, 41.273949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441940, 36.914913, 41.236301>,  <34.228565, 37.022434, 41.213711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441940, 36.914913, 41.236301>,  <34.797565, 36.735714, 41.273949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441940, 36.914913, 41.236301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069993, 0.070159, 0.995077,
		0.452397, 0.891277, -0.031019,
		-0.889066, 0.447999, -0.094123,
		34.175220, 37.049313, 41.208065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831444, 37.323658, 41.630375>,  <34.797565, 36.735714, 41.273949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831444, 37.323658, 41.630375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439163, 37.250183, 41.603577>,  <34.203796, 37.206100, 41.587498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439163, 37.250183, 41.603577>,  <34.831444, 37.323658, 41.630375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439163, 37.250183, 41.603577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098774, 0.169702, 0.980533,
		-0.168739, 0.968226, -0.184570,
		-0.980699, -0.183685, -0.067000,
		34.144955, 37.195076, 41.583477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508377, 37.830971, 41.915394>,  <34.831444, 37.323658, 41.630375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508377, 37.830971, 41.915394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249065, 37.527607, 41.942368>,  <34.093479, 37.345589, 41.958553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249065, 37.527607, 41.942368>,  <34.508377, 37.830971, 41.915394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249065, 37.527607, 41.942368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038327, 0.055952, 0.997697,
		-0.760434, 0.649375, -0.007205,
		-0.648283, -0.758407, 0.067436,
		34.054581, 37.300083, 41.962597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115738, 37.945477, 42.452171>,  <34.508377, 37.830971, 41.915394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115738, 37.945477, 42.452171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.987915, 37.570415, 42.397495>,  <33.911221, 37.345379, 42.364689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.987915, 37.570415, 42.397495>,  <34.115738, 37.945477, 42.452171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987915, 37.570415, 42.397495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099562, -0.110228, 0.988907,
		-0.942322, 0.329622, -0.058130,
		-0.319558, -0.937656, -0.136688,
		33.892048, 37.289120, 42.356487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583885, 37.952332, 42.834900>,  <34.115738, 37.945477, 42.452171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583885, 37.952332, 42.834900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680523, 37.566826, 42.789650>,  <33.738506, 37.335522, 42.762501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680523, 37.566826, 42.789650>,  <33.583885, 37.952332, 42.834900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680523, 37.566826, 42.789650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146263, -0.151412, 0.977590,
		-0.959292, -0.219631, -0.177543,
		0.241591, -0.963762, -0.113125,
		33.752998, 37.277699, 42.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301456, 37.669014, 43.377750>,  <33.583885, 37.952332, 42.834900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301456, 37.669014, 43.377750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552959, 37.380299, 43.262035>,  <33.703861, 37.207069, 43.192608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552959, 37.380299, 43.262035>,  <33.301456, 37.669014, 43.377750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552959, 37.380299, 43.262035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094676, -0.298196, 0.949798,
		-0.771813, -0.624584, -0.119158,
		0.628761, -0.721785, -0.289285,
		33.741589, 37.163765, 43.175251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202778, 37.194035, 43.879803>,  <33.301456, 37.669014, 43.377750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202778, 37.194035, 43.879803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.540642, 37.066170, 43.708054>,  <33.743362, 36.989452, 43.605003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.540642, 37.066170, 43.708054>,  <33.202778, 37.194035, 43.879803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540642, 37.066170, 43.708054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340956, -0.297093, 0.891900,
		-0.412671, -0.899751, -0.141952,
		0.844661, -0.319662, -0.429377,
		33.794041, 36.970272, 43.579239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357712, 36.502586, 44.226818>,  <33.202778, 37.194035, 43.879803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357712, 36.502586, 44.226818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688675, 36.683441, 44.093575>,  <33.887253, 36.791954, 44.013630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688675, 36.683441, 44.093575>,  <33.357712, 36.502586, 44.226818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688675, 36.683441, 44.093575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470388, -0.233930, 0.850889,
		0.306795, -0.860725, -0.406237,
		0.827412, 0.452138, -0.333106,
		33.936897, 36.819084, 43.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878170, 36.011547, 44.301727>,  <33.357712, 36.502586, 44.226818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878170, 36.011547, 44.301727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029999, 36.381538, 44.309212>,  <34.121098, 36.603531, 44.313702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029999, 36.381538, 44.309212>,  <33.878170, 36.011547, 44.301727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029999, 36.381538, 44.309212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482096, -0.215013, 0.849325,
		0.789626, -0.313358, -0.527539,
		0.379571, 0.924974, 0.018711,
		34.143871, 36.659031, 44.314827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569370, 36.041981, 44.312519>,  <33.878170, 36.011547, 44.301727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569370, 36.041981, 44.312519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518780, 36.422924, 44.423523>,  <34.488426, 36.651489, 44.490128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518780, 36.422924, 44.423523>,  <34.569370, 36.041981, 44.312519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518780, 36.422924, 44.423523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536994, -0.169491, 0.826384,
		0.834051, 0.253540, -0.489976,
		-0.126475, 0.952360, 0.277513,
		34.480839, 36.708633, 44.506779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216988, 36.312767, 44.593510>,  <34.569370, 36.041981, 44.312519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216988, 36.312767, 44.593510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947872, 36.573566, 44.733368>,  <34.786404, 36.730045, 44.817284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947872, 36.573566, 44.733368>,  <35.216988, 36.312767, 44.593510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947872, 36.573566, 44.733368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400104, -0.076886, 0.913239,
		0.622317, 0.754309, -0.209141,
		-0.672784, 0.652002, 0.349650,
		34.746037, 36.769169, 44.838264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591152, 36.935921, 44.835785>,  <35.216988, 36.312767, 44.593510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591152, 36.935921, 44.835785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.243374, 36.885044, 45.026737>,  <35.034706, 36.854519, 45.141308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.243374, 36.885044, 45.026737>,  <35.591152, 36.935921, 44.835785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243374, 36.885044, 45.026737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493792, -0.193517, 0.847774,
		-0.015452, 0.972817, 0.231060,
		-0.869443, -0.127196, 0.477379,
		34.982540, 36.846886, 45.169952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607243, 37.757046, 44.978294>,  <35.591152, 36.935921, 44.835785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607243, 37.757046, 44.978294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839363, 38.035011, 45.148163>,  <35.978634, 38.201790, 45.250084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839363, 38.035011, 45.148163>,  <35.607243, 37.757046, 44.978294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839363, 38.035011, 45.148163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068269, 0.561127, -0.824910,
		-0.811536, 0.449703, 0.373063,
		0.580300, 0.694913, 0.424675,
		36.013454, 38.243484, 45.275566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282387, 38.412350, 44.857605>,  <35.607243, 37.757046, 44.978294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282387, 38.412350, 44.857605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663826, 38.493111, 44.946949>,  <35.892689, 38.541565, 45.000557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663826, 38.493111, 44.946949>,  <35.282387, 38.412350, 44.857605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663826, 38.493111, 44.946949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082530, 0.538165, -0.838789,
		-0.289557, 0.818300, 0.496529,
		0.953596, 0.201899, 0.223363,
		35.949905, 38.553680, 45.013958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355412, 39.112309, 44.496471>,  <35.282387, 38.412350, 44.857605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355412, 39.112309, 44.496471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721024, 38.969543, 44.573589>,  <35.940392, 38.883884, 44.619862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721024, 38.969543, 44.573589>,  <35.355412, 39.112309, 44.496471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721024, 38.969543, 44.573589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335300, 0.397214, -0.854281,
		0.228319, 0.845480, 0.482736,
		0.914027, -0.356910, 0.192798,
		35.995232, 38.862469, 44.631428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806866, 39.643368, 44.287930>,  <35.355412, 39.112309, 44.496471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806866, 39.643368, 44.287930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033764, 39.314724, 44.310490>,  <36.169903, 39.117538, 44.324028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033764, 39.314724, 44.310490>,  <35.806866, 39.643368, 44.287930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033764, 39.314724, 44.310490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484545, 0.277587, -0.829555,
		0.665917, 0.497893, 0.555569,
		0.567248, -0.821613, 0.056402,
		36.203938, 39.068241, 44.327412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521748, 39.872211, 44.072491>,  <35.806866, 39.643368, 44.287930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521748, 39.872211, 44.072491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491379, 39.478733, 44.007290>,  <36.473156, 39.242645, 43.968170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491379, 39.478733, 44.007290>,  <36.521748, 39.872211, 44.072491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491379, 39.478733, 44.007290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595799, 0.086325, -0.798481,
		0.799537, -0.157738, 0.579534,
		-0.075922, -0.983700, -0.163000,
		36.468601, 39.183624, 43.958389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078407, 39.658009, 43.700584>,  <36.521748, 39.872211, 44.072491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078407, 39.658009, 43.700584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861240, 39.333447, 43.613991>,  <36.730942, 39.138710, 43.562035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861240, 39.333447, 43.613991>,  <37.078407, 39.658009, 43.700584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861240, 39.333447, 43.613991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568321, -0.165216, -0.806049,
		0.618265, -0.560649, 0.550837,
		-0.542918, -0.811404, -0.216482,
		36.698364, 39.090027, 43.549046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578854, 39.142197, 43.553730>,  <37.078407, 39.658009, 43.700584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578854, 39.142197, 43.553730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243401, 39.007809, 43.382229>,  <37.042130, 38.927177, 43.279327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243401, 39.007809, 43.382229>,  <37.578854, 39.142197, 43.553730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243401, 39.007809, 43.382229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472096, -0.055672, -0.879788,
		0.271711, -0.940227, 0.205297,
		-0.838629, -0.335968, -0.428751,
		36.991814, 38.907017, 43.253605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717640, 38.500511, 43.128849>,  <37.578854, 39.142197, 43.553730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717640, 38.500511, 43.128849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400162, 38.694710, 42.982243>,  <37.209675, 38.811230, 42.894279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400162, 38.694710, 42.982243>,  <37.717640, 38.500511, 43.128849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400162, 38.694710, 42.982243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369076, -0.094614, -0.924571,
		-0.483556, -0.869102, -0.104092,
		-0.793697, 0.485500, -0.366516,
		37.162052, 38.840359, 42.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817703, 38.342392, 42.523613>,  <37.717640, 38.500511, 43.128849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817703, 38.342392, 42.523613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542336, 38.623909, 42.453476>,  <37.377113, 38.792820, 42.411392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542336, 38.623909, 42.453476>,  <37.817703, 38.342392, 42.523613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542336, 38.623909, 42.453476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195936, -0.052304, -0.979221,
		-0.698344, -0.708473, -0.101892,
		-0.688422, 0.703798, -0.175342,
		37.335808, 38.835049, 42.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509701, 38.103378, 41.920776>,  <37.817703, 38.342392, 42.523613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509701, 38.103378, 41.920776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428360, 38.494957, 41.927887>,  <37.379555, 38.729904, 41.932152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428360, 38.494957, 41.927887>,  <37.509701, 38.103378, 41.920776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428360, 38.494957, 41.927887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175981, 0.054403, -0.982889,
		-0.963160, -0.196747, -0.183339,
		-0.203354, 0.978944, 0.017775,
		37.367355, 38.788639, 41.933220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190163, 38.186638, 41.288025>,  <37.509701, 38.103378, 41.920776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190163, 38.186638, 41.288025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293724, 38.558712, 41.392124>,  <37.355862, 38.781956, 41.454582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293724, 38.558712, 41.392124>,  <37.190163, 38.186638, 41.288025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293724, 38.558712, 41.392124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098869, 0.242496, -0.965101,
		-0.960829, 0.275603, -0.029182,
		0.258908, 0.930182, 0.260246,
		37.371395, 38.837769, 41.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828194, 38.694138, 40.869205>,  <37.190163, 38.186638, 41.288025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828194, 38.694138, 40.869205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138870, 38.906887, 41.004177>,  <37.325275, 39.034538, 41.085159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138870, 38.906887, 41.004177>,  <36.828194, 38.694138, 40.869205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138870, 38.906887, 41.004177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182552, 0.322636, -0.928752,
		-0.602848, 0.782952, 0.153494,
		0.776691, 0.531876, 0.337430,
		37.371876, 39.066448, 41.105408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754028, 39.392868, 40.623295>,  <36.828194, 38.694138, 40.869205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754028, 39.392868, 40.623295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 39.334309, 40.695015>,  <37.376648, 39.299171, 40.738049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 39.334309, 40.695015>,  <36.754028, 39.392868, 40.623295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143166, 39.334309, 40.695015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224268, 0.404312, -0.886699,
		0.057317, 0.902829, 0.426163,
		0.972841, -0.146397, 0.179302,
		37.435017, 39.290390, 40.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012169, 39.922634, 40.344677>,  <36.754028, 39.392868, 40.623295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012169, 39.922634, 40.344677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349388, 39.709267, 40.372200>,  <37.551720, 39.581245, 40.388714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349388, 39.709267, 40.372200>,  <37.012169, 39.922634, 40.344677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349388, 39.709267, 40.372200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253713, 0.281610, -0.925379,
		0.474240, 0.797595, 0.372746,
		0.843046, -0.533422, 0.068810,
		37.602303, 39.549240, 40.392841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.612545, 28.439671, 30.574831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235504, 28.522844, 30.470320>,  <26.009279, 28.572748, 30.407612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235504, 28.522844, 30.470320>,  <26.612545, 28.439671, 30.574831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235504, 28.522844, 30.470320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027334, 0.731789, 0.680983,
		0.332801, 0.649037, -0.684101,
		-0.942601, 0.207933, -0.261280,
		25.952724, 28.585224, 30.391935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448248, 29.103455, 30.137545>,  <26.612545, 28.439671, 30.574831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448248, 29.103455, 30.137545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092644, 29.031332, 30.305902>,  <25.879282, 28.988058, 30.406918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092644, 29.031332, 30.305902>,  <26.448248, 29.103455, 30.137545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092644, 29.031332, 30.305902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006894, 0.924371, 0.381433,
		-0.457836, 0.336196, -0.823018,
		-0.889010, -0.180307, 0.420893,
		25.825941, 28.977240, 30.432171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065378, 29.760221, 29.995062>,  <26.448248, 29.103455, 30.137545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065378, 29.760221, 29.995062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910141, 29.549492, 30.297543>,  <25.816998, 29.423054, 30.479031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910141, 29.549492, 30.297543>,  <26.065378, 29.760221, 29.995062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910141, 29.549492, 30.297543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039096, 0.810365, 0.584620,
		-0.920790, 0.256452, -0.293901,
		-0.388094, -0.526822, 0.756202,
		25.793713, 29.391445, 30.524403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472124, 30.154528, 30.360762>,  <26.065378, 29.760221, 29.995062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472124, 30.154528, 30.360762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.623528, 29.896288, 30.626072>,  <25.714369, 29.741344, 30.785257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.623528, 29.896288, 30.626072>,  <25.472124, 30.154528, 30.360762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623528, 29.896288, 30.626072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145627, 0.749204, 0.646132,
		-0.914070, -0.147976, 0.377597,
		0.378509, -0.645598, 0.663276,
		25.737080, 29.702608, 30.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198011, 30.471977, 30.973484>,  <25.472124, 30.154528, 30.360762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198011, 30.471977, 30.973484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438711, 30.178892, 31.100624>,  <25.583132, 30.003040, 31.176908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438711, 30.178892, 31.100624>,  <25.198011, 30.471977, 30.973484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438711, 30.178892, 31.100624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118024, 0.475176, 0.871939,
		-0.789915, -0.487176, 0.372415,
		0.601751, -0.732712, 0.317850,
		25.619236, 29.959078, 31.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948488, 30.158298, 31.672417>,  <25.198011, 30.471977, 30.973484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948488, 30.158298, 31.672417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.343393, 30.126486, 31.617300>,  <25.580336, 30.107399, 31.584230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.343393, 30.126486, 31.617300>,  <24.948488, 30.158298, 31.672417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.343393, 30.126486, 31.617300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158244, 0.401448, 0.902108,
		-0.016430, -0.912422, 0.408920,
		0.987264, -0.079531, -0.137790,
		25.639572, 30.102627, 31.575964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254105, 29.981937, 32.319740>,  <24.948488, 30.158298, 31.672417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254105, 29.981937, 32.319740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579367, 30.146093, 32.154644>,  <25.774525, 30.244587, 32.055584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579367, 30.146093, 32.154644>,  <25.254105, 29.981937, 32.319740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579367, 30.146093, 32.154644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120032, 0.575646, 0.808841,
		0.569498, -0.707275, 0.418849,
		0.813182, 0.410358, -0.412725,
		25.823313, 30.269211, 32.030819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707994, 30.136293, 32.930607>,  <25.254105, 29.981937, 32.319740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707994, 30.136293, 32.930607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861809, 30.342684, 32.624432>,  <25.954098, 30.466518, 32.440727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861809, 30.342684, 32.624432>,  <25.707994, 30.136293, 32.930607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861809, 30.342684, 32.624432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116806, 0.795336, 0.594809,
		0.915690, -0.318134, 0.245566,
		0.384536, 0.515977, -0.765441,
		25.977169, 30.497477, 32.394798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393768, 30.291014, 33.219658>,  <25.707994, 30.136293, 32.930607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393768, 30.291014, 33.219658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278755, 30.555264, 32.942272>,  <26.209747, 30.713814, 32.775841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278755, 30.555264, 32.942272>,  <26.393768, 30.291014, 33.219658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278755, 30.555264, 32.942272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206614, 0.749779, 0.628603,
		0.935220, 0.037463, -0.352081,
		-0.287532, 0.660627, -0.693468,
		26.192495, 30.753452, 32.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850977, 30.915102, 33.338257>,  <26.393768, 30.291014, 33.219658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850977, 30.915102, 33.338257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548012, 31.065178, 33.124508>,  <26.366232, 31.155224, 32.996258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548012, 31.065178, 33.124508>,  <26.850977, 30.915102, 33.338257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548012, 31.065178, 33.124508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132449, 0.889691, 0.436930,
		0.639362, 0.260158, -0.723557,
		-0.757413, 0.375191, -0.534377,
		26.320787, 31.177734, 32.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058119, 31.585649, 33.248531>,  <26.850977, 30.915102, 33.338257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058119, 31.585649, 33.248531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663942, 31.581585, 33.180645>,  <26.427437, 31.579145, 33.139915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663942, 31.581585, 33.180645>,  <27.058119, 31.585649, 33.248531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663942, 31.581585, 33.180645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073310, 0.926040, 0.370238,
		0.153398, 0.377290, -0.913303,
		-0.985441, -0.010161, -0.169712,
		26.368309, 31.578537, 33.129730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938852, 32.253864, 32.995552>,  <27.058119, 31.585649, 33.248531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938852, 32.253864, 32.995552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572206, 32.136078, 33.103710>,  <26.352219, 32.065407, 33.168606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572206, 32.136078, 33.103710>,  <26.938852, 32.253864, 32.995552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572206, 32.136078, 33.103710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100361, 0.824194, 0.557343,
		-0.386973, 0.483731, -0.785020,
		-0.916613, -0.294462, 0.270393,
		26.297222, 32.047741, 33.184830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465437, 32.885269, 32.989971>,  <26.938852, 32.253864, 32.995552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465437, 32.885269, 32.989971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295786, 32.614670, 33.230793>,  <26.193995, 32.452312, 33.375286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295786, 32.614670, 33.230793>,  <26.465437, 32.885269, 32.989971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295786, 32.614670, 33.230793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066954, 0.686417, 0.724120,
		-0.903123, 0.266811, -0.336424,
		-0.424130, -0.676494, 0.602054,
		26.168547, 32.411720, 33.411407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013962, 33.254570, 33.435581>,  <26.465437, 32.885269, 32.989971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013962, 33.254570, 33.435581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048513, 32.941242, 33.681816>,  <26.069244, 32.753246, 33.829556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048513, 32.941242, 33.681816>,  <26.013962, 33.254570, 33.435581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048513, 32.941242, 33.681816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071505, 0.611426, 0.788065,
		-0.993693, -0.112091, -0.003196,
		0.086381, -0.783323, 0.615584,
		26.074429, 32.706245, 33.866493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631168, 33.493431, 33.973644>,  <26.013962, 33.254570, 33.435581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631168, 33.493431, 33.973644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755156, 33.168903, 34.171913>,  <25.829548, 32.974186, 34.290874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755156, 33.168903, 34.171913>,  <25.631168, 33.493431, 33.973644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755156, 33.168903, 34.171913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030261, 0.512664, 0.858056,
		-0.950265, -0.280970, 0.134359,
		0.309969, -0.811315, 0.495669,
		25.848146, 32.925510, 34.320614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175709, 33.244534, 34.506447>,  <25.631168, 33.493431, 33.973644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175709, 33.244534, 34.506447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.542145, 33.113777, 34.599335>,  <25.762007, 33.035324, 34.655067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.542145, 33.113777, 34.599335>,  <25.175709, 33.244534, 34.506447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542145, 33.113777, 34.599335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072845, 0.433831, 0.898045,
		-0.394305, -0.839604, 0.373615,
		0.916088, -0.326888, 0.232223,
		25.816971, 33.015713, 34.669003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111650, 32.865437, 35.196983>,  <25.175709, 33.244534, 34.506447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111650, 32.865437, 35.196983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489874, 32.985954, 35.147766>,  <25.716808, 33.058266, 35.118237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489874, 32.985954, 35.147766>,  <25.111650, 32.865437, 35.196983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489874, 32.985954, 35.147766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015608, 0.335644, 0.941859,
		0.325086, -0.892501, 0.312668,
		0.945555, 0.301305, -0.123044,
		25.773542, 33.076344, 35.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378954, 32.649143, 35.851749>,  <25.111650, 32.865437, 35.196983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378954, 32.649143, 35.851749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.647541, 32.916767, 35.724316>,  <25.808693, 33.077339, 35.647858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.647541, 32.916767, 35.724316>,  <25.378954, 32.649143, 35.851749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647541, 32.916767, 35.724316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112253, 0.333117, 0.936180,
		0.732481, -0.664377, 0.148574,
		0.671469, 0.669056, -0.318580,
		25.848982, 33.117485, 35.628742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857578, 32.530975, 36.294537>,  <25.378954, 32.649143, 35.851749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857578, 32.530975, 36.294537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977201, 32.886543, 36.155746>,  <26.048975, 33.099884, 36.072472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977201, 32.886543, 36.155746>,  <25.857578, 32.530975, 36.294537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977201, 32.886543, 36.155746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007831, 0.361319, 0.932409,
		0.954203, -0.281561, 0.101095,
		0.299057, 0.888916, -0.346977,
		26.066919, 33.153217, 36.051655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446646, 32.673309, 36.694988>,  <25.857578, 32.530975, 36.294537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446646, 32.673309, 36.694988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317760, 33.018635, 36.539623>,  <26.240429, 33.225830, 36.446404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317760, 33.018635, 36.539623>,  <26.446646, 32.673309, 36.694988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317760, 33.018635, 36.539623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016612, 0.405079, 0.914131,
		0.946522, 0.300996, -0.116180,
		-0.322212, 0.863314, -0.388417,
		26.221096, 33.277630, 36.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921719, 33.202824, 36.949142>,  <26.446646, 32.673309, 36.694988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921719, 33.202824, 36.949142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567801, 33.362801, 36.853493>,  <26.355450, 33.458786, 36.796104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567801, 33.362801, 36.853493>,  <26.921719, 33.202824, 36.949142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567801, 33.362801, 36.853493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065159, 0.401928, 0.913350,
		0.461401, 0.823709, -0.329564,
		-0.884796, 0.399946, -0.239122,
		26.302362, 33.482784, 36.781757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593637, 32.708179, 37.169933>,  <26.921719, 33.202824, 36.949142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593637, 32.708179, 37.169933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873152, 32.719048, 36.884007>,  <28.040859, 32.725567, 36.712452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873152, 32.719048, 36.884007>,  <27.593637, 32.708179, 37.169933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873152, 32.719048, 36.884007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515140, -0.674216, -0.529211,
		-0.496317, 0.738035, -0.457137,
		0.698785, 0.027166, -0.714816,
		28.082787, 32.727196, 36.669563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208624, 32.639851, 36.456230>,  <27.593637, 32.708179, 37.169933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208624, 32.639851, 36.456230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580748, 32.494423, 36.436863>,  <27.804022, 32.407166, 36.425243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580748, 32.494423, 36.436863>,  <27.208624, 32.639851, 36.456230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580748, 32.494423, 36.436863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322544, -0.748118, -0.579901,
		0.174612, 0.555103, -0.813247,
		0.930310, -0.363566, -0.048415,
		27.859840, 32.385353, 36.422337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213228, 32.321690, 35.759323>,  <27.208624, 32.639851, 36.456230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213228, 32.321690, 35.759323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546528, 32.194527, 35.940269>,  <27.746508, 32.118229, 36.048836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546528, 32.194527, 35.940269>,  <27.213228, 32.321690, 35.759323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546528, 32.194527, 35.940269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085995, -0.882725, -0.461954,
		0.546170, 0.346022, -0.762868,
		0.833249, -0.317908, 0.452361,
		27.796503, 32.099155, 36.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623356, 31.983091, 35.219528>,  <27.213228, 32.321690, 35.759323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623356, 31.983091, 35.219528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764248, 31.831268, 35.561726>,  <27.848783, 31.740175, 35.767044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764248, 31.831268, 35.561726>,  <27.623356, 31.983091, 35.219528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764248, 31.831268, 35.561726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130175, -0.925057, -0.356825,
		0.926816, 0.014321, -0.375243,
		0.352231, -0.379558, 0.855493,
		27.869917, 31.717402, 35.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030510, 31.309677, 35.084801>,  <27.623356, 31.983091, 35.219528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030510, 31.309677, 35.084801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936451, 31.297684, 35.473400>,  <27.880016, 31.290487, 35.706558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936451, 31.297684, 35.473400>,  <28.030510, 31.309677, 35.084801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936451, 31.297684, 35.473400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323180, -0.940241, -0.107244,
		0.916657, -0.339186, 0.211405,
		-0.235147, -0.029984, 0.971497,
		27.865906, 31.288689, 35.764851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291924, 30.636513, 35.400314>,  <28.030510, 31.309677, 35.084801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291924, 30.636513, 35.400314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992064, 30.732603, 35.646992>,  <27.812147, 30.790257, 35.794998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992064, 30.732603, 35.646992>,  <28.291924, 30.636513, 35.400314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992064, 30.732603, 35.646992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309717, -0.950809, -0.006115,
		0.584892, -0.195586, 0.787177,
		-0.749651, 0.240226, 0.616697,
		27.767168, 30.804670, 35.832001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307014, 30.102888, 35.886169>,  <28.291924, 30.636513, 35.400314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307014, 30.102888, 35.886169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944359, 30.268011, 35.921036>,  <27.726765, 30.367085, 35.941956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944359, 30.268011, 35.921036>,  <28.307014, 30.102888, 35.886169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944359, 30.268011, 35.921036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416801, -0.908390, -0.033249,
		0.065455, -0.066476, 0.995639,
		-0.906638, 0.412807, 0.087165,
		27.672367, 30.391853, 35.947186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959564, 29.730618, 36.342911>,  <28.307014, 30.102888, 35.886169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959564, 29.730618, 36.342911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667414, 29.893250, 36.123367>,  <27.492125, 29.990829, 35.991642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667414, 29.893250, 36.123367>,  <27.959564, 29.730618, 36.342911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667414, 29.893250, 36.123367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436304, -0.895953, -0.083104,
		-0.525539, 0.178771, 0.831775,
		-0.730375, 0.406582, -0.548857,
		27.448301, 30.015224, 35.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343470, 29.358015, 36.539268>,  <27.959564, 29.730618, 36.342911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343470, 29.358015, 36.539268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222925, 29.553745, 36.211918>,  <27.150599, 29.671183, 36.015507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222925, 29.553745, 36.211918>,  <27.343470, 29.358015, 36.539268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222925, 29.553745, 36.211918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599821, -0.764473, -0.236214,
		-0.741212, 0.419693, 0.523892,
		-0.301364, 0.489326, -0.818377,
		27.132517, 29.700542, 35.966404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602932, 29.351067, 36.511639>,  <27.343470, 29.358015, 36.539268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602932, 29.351067, 36.511639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718710, 29.424574, 36.135883>,  <26.788176, 29.468679, 35.910431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718710, 29.424574, 36.135883>,  <26.602932, 29.351067, 36.511639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718710, 29.424574, 36.135883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581124, -0.746098, -0.325012,
		-0.760603, 0.639974, -0.109160,
		0.289444, 0.183770, -0.939389,
		26.805544, 29.479704, 35.854065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025795, 29.280325, 36.133099>,  <26.602932, 29.351067, 36.511639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025795, 29.280325, 36.133099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285677, 29.269224, 35.829227>,  <26.441607, 29.262564, 35.646904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285677, 29.269224, 35.829227>,  <26.025795, 29.280325, 36.133099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285677, 29.269224, 35.829227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569575, -0.679610, -0.462293,
		-0.503458, 0.733049, -0.457351,
		0.649703, -0.027750, -0.759681,
		26.480587, 29.260899, 35.601322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710032, 29.408766, 35.527565>,  <26.025795, 29.280325, 36.133099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710032, 29.408766, 35.527565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033119, 29.197056, 35.423676>,  <26.226973, 29.070030, 35.361343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033119, 29.197056, 35.423676>,  <25.710032, 29.408766, 35.527565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033119, 29.197056, 35.423676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578084, -0.624488, -0.525199,
		0.115783, 0.574354, -0.810377,
		0.807721, -0.529275, -0.259720,
		26.275436, 29.038273, 35.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533663, 29.271091, 34.840836>,  <25.710032, 29.408766, 35.527565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533663, 29.271091, 34.840836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818129, 29.009766, 34.944702>,  <25.988808, 28.852970, 35.007023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818129, 29.009766, 34.944702>,  <25.533663, 29.271091, 34.840836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818129, 29.009766, 34.944702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387594, -0.672507, -0.630481,
		0.586528, 0.347732, -0.731483,
		0.711166, -0.653313, 0.259665,
		26.031479, 28.813772, 35.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675011, 28.981146, 34.213501>,  <25.533663, 29.271091, 34.840836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675011, 28.981146, 34.213501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.867533, 28.719448, 34.446846>,  <25.983046, 28.562429, 34.586853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.867533, 28.719448, 34.446846>,  <25.675011, 28.981146, 34.213501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867533, 28.719448, 34.446846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136752, -0.713415, -0.687269,
		0.865819, 0.251011, -0.432840,
		0.481307, -0.654242, 0.583362,
		26.011925, 28.523176, 34.621853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217381, 28.664099, 33.862221>,  <25.675011, 28.981146, 34.213501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217381, 28.664099, 33.862221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124346, 28.401869, 34.149586>,  <26.068525, 28.244530, 34.322006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124346, 28.401869, 34.149586>,  <26.217381, 28.664099, 33.862221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124346, 28.401869, 34.149586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202160, -0.689952, -0.695052,
		0.951333, -0.306897, 0.027944,
		-0.232589, -0.655576, 0.718417,
		26.054569, 28.205196, 34.365112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450916, 27.986305, 33.662895>,  <26.217381, 28.664099, 33.862221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450916, 27.986305, 33.662895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174271, 27.892307, 33.936085>,  <26.008284, 27.835909, 34.099998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174271, 27.892307, 33.936085>,  <26.450916, 27.986305, 33.662895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174271, 27.892307, 33.936085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229971, -0.824732, -0.516654,
		0.684679, -0.514388, 0.516352,
		-0.691613, -0.234996, 0.682971,
		25.966787, 27.821808, 34.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600939, 27.302082, 33.736851>,  <26.450916, 27.986305, 33.662895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600939, 27.302082, 33.736851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225416, 27.371109, 33.856091>,  <26.000103, 27.412525, 33.927635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225416, 27.371109, 33.856091>,  <26.600939, 27.302082, 33.736851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225416, 27.371109, 33.856091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322900, -0.742191, -0.587272,
		0.119902, -0.647590, 0.752496,
		-0.938807, 0.172566, 0.298097,
		25.943773, 27.422878, 33.945518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286537, 26.641609, 33.775574>,  <26.600939, 27.302082, 33.736851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286537, 26.641609, 33.775574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980991, 26.899614, 33.766930>,  <25.797663, 27.054417, 33.761742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980991, 26.899614, 33.766930>,  <26.286537, 26.641609, 33.775574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980991, 26.899614, 33.766930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421152, -0.523573, -0.740609,
		-0.489015, -0.556627, 0.671588,
		-0.763869, 0.645010, -0.021610,
		25.751831, 27.093119, 33.760445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608273, 26.192350, 33.745583>,  <26.286537, 26.641609, 33.775574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608273, 26.192350, 33.745583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.501635, 26.553816, 33.611530>,  <25.437651, 26.770695, 33.531097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.501635, 26.553816, 33.611530>,  <25.608273, 26.192350, 33.745583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501635, 26.553816, 33.611530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452766, -0.424385, -0.784156,
		-0.850841, -0.057316, 0.522288,
		-0.266596, 0.903666, -0.335133,
		25.421656, 26.824915, 33.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871895, 26.085733, 33.540459>,  <25.608273, 26.192350, 33.745583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871895, 26.085733, 33.540459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.984150, 26.422916, 33.356865>,  <25.051502, 26.625225, 33.246708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.984150, 26.422916, 33.356865>,  <24.871895, 26.085733, 33.540459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984150, 26.422916, 33.356865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504604, -0.277209, -0.817637,
		-0.816467, 0.461065, 0.347563,
		0.280637, 0.842955, -0.458987,
		25.068340, 26.675802, 33.219170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.269192, 26.311491, 33.254562>,  <24.871895, 26.085733, 33.540459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.269192, 26.311491, 33.254562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.572533, 26.469891, 33.047455>,  <24.754538, 26.564930, 32.923191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.572533, 26.469891, 33.047455>,  <24.269192, 26.311491, 33.254562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572533, 26.469891, 33.047455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574953, 0.032096, -0.817557,
		-0.307134, 0.917690, 0.252021,
		0.758352, 0.396000, -0.517770,
		24.800039, 26.588690, 32.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.744835, 37.553288, 45.086166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634693, 37.187439, 45.204586>,  <39.568607, 36.967930, 45.275639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634693, 37.187439, 45.204586>,  <39.744835, 37.553288, 45.086166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634693, 37.187439, 45.204586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056343, 0.292072, 0.954735,
		-0.959691, 0.279569, -0.028890,
		-0.275352, -0.914623, 0.296050,
		39.552086, 36.913052, 45.293400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190704, 37.639080, 45.618404>,  <39.744835, 37.553288, 45.086166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190704, 37.639080, 45.618404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340347, 37.271824, 45.670670>,  <39.430134, 37.051472, 45.702030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340347, 37.271824, 45.670670>,  <39.190704, 37.639080, 45.618404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340347, 37.271824, 45.670670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053795, 0.162144, 0.985300,
		-0.925826, -0.361574, 0.110050,
		0.374103, -0.918136, 0.130666,
		39.452579, 36.996384, 45.709869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928364, 37.319199, 46.224766>,  <39.190704, 37.639080, 45.618404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928364, 37.319199, 46.224766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252609, 37.090305, 46.175045>,  <39.447159, 36.952969, 46.145214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252609, 37.090305, 46.175045>,  <38.928364, 37.319199, 46.224766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252609, 37.090305, 46.175045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109816, -0.059953, 0.992142,
		-0.575189, -0.817896, 0.014242,
		0.810615, -0.572233, -0.124303,
		39.495792, 36.918636, 46.137753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862743, 36.966434, 46.815975>,  <38.928364, 37.319199, 46.224766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862743, 36.966434, 46.815975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223183, 36.838547, 46.698814>,  <39.439445, 36.761814, 46.628517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223183, 36.838547, 46.698814>,  <38.862743, 36.966434, 46.815975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223183, 36.838547, 46.698814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164974, -0.371913, 0.913490,
		-0.401010, -0.871465, -0.282382,
		0.901096, -0.319733, -0.292909,
		39.493515, 36.742630, 46.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985626, 36.127705, 46.888424>,  <38.862743, 36.966434, 46.815975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985626, 36.127705, 46.888424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340786, 36.311607, 46.894791>,  <39.553883, 36.421947, 46.898609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340786, 36.311607, 46.894791>,  <38.985626, 36.127705, 46.888424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340786, 36.311607, 46.894791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226285, -0.466612, 0.855025,
		0.400527, -0.755579, -0.518342,
		0.887904, 0.459753, 0.015914,
		39.607159, 36.449532, 46.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423958, 35.647800, 47.163563>,  <38.985626, 36.127705, 46.888424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423958, 35.647800, 47.163563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598999, 36.001385, 47.229431>,  <39.704025, 36.213535, 47.268951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598999, 36.001385, 47.229431>,  <39.423958, 35.647800, 47.163563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598999, 36.001385, 47.229431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051180, -0.207323, 0.976933,
		0.897711, -0.419079, -0.135967,
		0.437602, 0.883962, 0.164668,
		39.730278, 36.266575, 47.278831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039330, 35.423431, 47.572887>,  <39.423958, 35.647800, 47.163563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039330, 35.423431, 47.572887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980194, 35.812073, 47.646793>,  <39.944714, 36.045258, 47.691139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980194, 35.812073, 47.646793>,  <40.039330, 35.423431, 47.572887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980194, 35.812073, 47.646793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139898, -0.164399, 0.976423,
		0.979068, 0.170198, -0.111621,
		-0.147835, 0.971600, 0.184768,
		39.935844, 36.103554, 47.702225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573799, 35.569431, 48.048042>,  <40.039330, 35.423431, 47.572887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573799, 35.569431, 48.048042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302975, 35.860798, 48.089981>,  <40.140480, 36.035618, 48.115143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302975, 35.860798, 48.089981>,  <40.573799, 35.569431, 48.048042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302975, 35.860798, 48.089981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, 0.009574, 0.986567,
		0.717628, 0.685067, -0.125270,
		-0.677064, 0.728417, 0.104848,
		40.099857, 36.079323, 48.121437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731438, 36.000050, 48.612789>,  <40.573799, 35.569431, 48.048042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731438, 36.000050, 48.612789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353664, 36.131313, 48.605183>,  <40.127003, 36.210072, 48.600620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353664, 36.131313, 48.605183>,  <40.731438, 36.000050, 48.612789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353664, 36.131313, 48.605183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005062, 0.072351, 0.997367,
		0.328675, 0.941846, -0.069991,
		-0.944430, 0.328164, -0.019012,
		40.070335, 36.229763, 48.599480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641102, 36.700241, 48.954372>,  <40.731438, 36.000050, 48.612789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641102, 36.700241, 48.954372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295410, 36.499397, 48.966961>,  <40.087994, 36.378891, 48.974514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295410, 36.499397, 48.966961>,  <40.641102, 36.700241, 48.954372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295410, 36.499397, 48.966961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061552, -0.043450, 0.997158,
		-0.499317, 0.863710, 0.068457,
		-0.864230, -0.502112, 0.031468,
		40.036140, 36.348763, 48.976402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294918, 37.000900, 49.553528>,  <40.641102, 36.700241, 48.954372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294918, 37.000900, 49.553528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089642, 36.668232, 49.468723>,  <39.966476, 36.468632, 49.417839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089642, 36.668232, 49.468723>,  <40.294918, 37.000900, 49.553528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089642, 36.668232, 49.468723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208106, -0.119071, 0.970832,
		-0.832660, 0.542347, -0.111970,
		-0.513195, -0.831674, -0.212011,
		39.935684, 36.418728, 49.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619236, 37.075108, 49.922699>,  <40.294918, 37.000900, 49.553528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619236, 37.075108, 49.922699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661438, 36.680477, 49.872845>,  <39.686760, 36.443699, 49.842930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661438, 36.680477, 49.872845>,  <39.619236, 37.075108, 49.922699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661438, 36.680477, 49.872845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179917, -0.142208, 0.973348,
		-0.978008, -0.080267, -0.192505,
		0.105504, -0.986577, -0.124639,
		39.693089, 36.384502, 49.835453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985058, 36.706097, 50.045448>,  <39.619236, 37.075108, 49.922699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985058, 36.706097, 50.045448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323597, 36.514668, 50.138981>,  <39.526718, 36.399811, 50.195099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323597, 36.514668, 50.138981>,  <38.985058, 36.706097, 50.045448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323597, 36.514668, 50.138981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364839, -0.201027, 0.909110,
		-0.388067, -0.854727, -0.344738,
		0.846343, -0.478570, 0.233826,
		39.577499, 36.371098, 50.209129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864136, 36.359257, 50.673386>,  <38.985058, 36.706097, 50.045448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864136, 36.359257, 50.673386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258518, 36.293247, 50.683613>,  <39.495148, 36.253643, 50.689747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258518, 36.293247, 50.683613>,  <38.864136, 36.359257, 50.673386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258518, 36.293247, 50.683613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018954, 0.041520, 0.998958,
		-0.165913, -0.985415, 0.037809,
		0.985958, -0.165024, 0.025566,
		39.554306, 36.243740, 50.691284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195152, 36.378555, 50.533989>,  <38.864136, 36.359257, 50.673386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195152, 36.378555, 50.533989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806477, 36.341194, 50.620800>,  <37.573273, 36.318779, 50.672886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806477, 36.341194, 50.620800>,  <38.195152, 36.378555, 50.533989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806477, 36.341194, 50.620800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228865, 0.143832, -0.962774,
		0.058711, -0.985184, -0.161136,
		-0.971686, -0.093404, 0.217030,
		37.514973, 36.313171, 50.685909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793583, 35.935379, 50.094662>,  <38.195152, 36.378555, 50.533989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793583, 35.935379, 50.094662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583065, 36.247654, 50.229443>,  <37.456757, 36.435020, 50.310310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583065, 36.247654, 50.229443>,  <37.793583, 35.935379, 50.094662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583065, 36.247654, 50.229443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203448, 0.269150, -0.941365,
		-0.825606, -0.563985, 0.017179,
		-0.526292, 0.780692, 0.336953,
		37.425179, 36.481861, 50.330528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295265, 35.999714, 49.656647>,  <37.793583, 35.935379, 50.094662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295265, 35.999714, 49.656647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263363, 36.360516, 49.826363>,  <37.244221, 36.576996, 49.928192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263363, 36.360516, 49.826363>,  <37.295265, 35.999714, 49.656647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263363, 36.360516, 49.826363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350021, 0.373202, -0.859189,
		-0.933340, -0.217037, 0.285956,
		-0.079756, 0.902006, 0.424292,
		37.239437, 36.631119, 49.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745789, 36.243443, 49.296276>,  <37.295265, 35.999714, 49.656647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745789, 36.243443, 49.296276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921486, 36.566578, 49.453484>,  <37.026905, 36.760460, 49.547810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921486, 36.566578, 49.453484>,  <36.745789, 36.243443, 49.296276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921486, 36.566578, 49.453484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278803, 0.538460, -0.795192,
		-0.854011, 0.239708, 0.461742,
		0.439244, 0.807837, 0.393019,
		37.053261, 36.808929, 49.571388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214828, 36.824726, 49.224480>,  <36.745789, 36.243443, 49.296276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214828, 36.824726, 49.224480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563183, 37.012444, 49.282887>,  <36.772198, 37.125072, 49.317928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563183, 37.012444, 49.282887>,  <36.214828, 36.824726, 49.224480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563183, 37.012444, 49.282887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139602, 0.521053, -0.842030,
		-0.471238, 0.712931, 0.519293,
		0.870888, 0.469290, 0.146013,
		36.824448, 37.153233, 49.326691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091042, 37.523323, 49.200043>,  <36.214828, 36.824726, 49.224480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091042, 37.523323, 49.200043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480091, 37.501160, 49.109764>,  <36.713520, 37.487862, 49.055595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480091, 37.501160, 49.109764>,  <36.091042, 37.523323, 49.200043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480091, 37.501160, 49.109764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198931, 0.303595, -0.931803,
		0.120146, 0.951189, 0.284261,
		0.972621, -0.055404, -0.225696,
		36.771877, 37.484539, 49.042057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327431, 38.123569, 48.964249>,  <36.091042, 37.523323, 49.200043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327431, 38.123569, 48.964249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570969, 37.846706, 48.809212>,  <36.717091, 37.680588, 48.716190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570969, 37.846706, 48.809212>,  <36.327431, 38.123569, 48.964249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570969, 37.846706, 48.809212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316962, 0.235643, -0.918699,
		0.727216, 0.682197, -0.075917,
		0.608844, -0.692155, -0.387595,
		36.753620, 37.639061, 48.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428795, 38.382114, 48.371449>,  <36.327431, 38.123569, 48.964249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428795, 38.382114, 48.371449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596146, 38.025936, 48.299816>,  <36.696556, 37.812229, 48.256836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596146, 38.025936, 48.299816>,  <36.428795, 38.382114, 48.371449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596146, 38.025936, 48.299816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144419, 0.129440, -0.981014,
		0.896718, 0.436297, -0.074443,
		0.418377, -0.890444, -0.179080,
		36.721661, 37.758804, 48.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887478, 38.564770, 47.880630>,  <36.428795, 38.382114, 48.371449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887478, 38.564770, 47.880630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793415, 38.179699, 47.827042>,  <36.736977, 37.948654, 47.794888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793415, 38.179699, 47.827042>,  <36.887478, 38.564770, 47.880630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793415, 38.179699, 47.827042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051548, 0.149991, -0.987343,
		0.970589, -0.225275, -0.084896,
		-0.235158, -0.962680, -0.133967,
		36.722866, 37.890896, 47.786850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300343, 38.541313, 47.219173>,  <36.887478, 38.564770, 47.880630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300343, 38.541313, 47.219173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050507, 38.234001, 47.275223>,  <36.900604, 38.049614, 47.308853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050507, 38.234001, 47.275223>,  <37.300343, 38.541313, 47.219173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050507, 38.234001, 47.275223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112063, -0.089402, -0.989671,
		0.772869, -0.633844, -0.030256,
		-0.624592, -0.768277, 0.140126,
		36.863129, 38.003517, 47.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452145, 38.144783, 46.728195>,  <37.300343, 38.541313, 47.219173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452145, 38.144783, 46.728195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092159, 37.999592, 46.824783>,  <36.876167, 37.912476, 46.882736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092159, 37.999592, 46.824783>,  <37.452145, 38.144783, 46.728195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092159, 37.999592, 46.824783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231635, -0.071118, -0.970200,
		0.369338, -0.929078, -0.020076,
		-0.899964, -0.362982, 0.241474,
		36.822170, 37.890697, 46.897224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242489, 37.589176, 46.178349>,  <37.452145, 38.144783, 46.728195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242489, 37.589176, 46.178349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913891, 37.747818, 46.342228>,  <36.716732, 37.843002, 46.440556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913891, 37.747818, 46.342228>,  <37.242489, 37.589176, 46.178349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913891, 37.747818, 46.342228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366228, 0.183744, -0.912203,
		-0.437066, -0.899411, -0.005696,
		-0.821493, 0.396607, 0.409698,
		36.667442, 37.866798, 46.465137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659084, 37.323261, 45.800545>,  <37.242489, 37.589176, 46.178349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659084, 37.323261, 45.800545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521183, 37.663891, 45.958511>,  <36.438442, 37.868271, 46.053291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521183, 37.663891, 45.958511>,  <36.659084, 37.323261, 45.800545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521183, 37.663891, 45.958511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372692, 0.261950, -0.890215,
		-0.861536, -0.454090, 0.227067,
		-0.344757, 0.851578, 0.394915,
		36.417755, 37.919365, 46.076984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210861, 37.431671, 45.304440>,  <36.659084, 37.323261, 45.800545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210861, 37.431671, 45.304440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223652, 37.772919, 45.512733>,  <36.231327, 37.977669, 45.637711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223652, 37.772919, 45.512733>,  <36.210861, 37.431671, 45.304440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223652, 37.772919, 45.512733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238059, 0.512507, -0.825024,
		-0.970724, -0.097584, 0.219481,
		0.031977, 0.853120, 0.520733,
		36.233246, 38.028854, 45.668953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693283, 37.093838, 45.710999>,  <36.210861, 37.431671, 45.304440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693283, 37.093838, 45.710999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324291, 36.939617, 45.703182>,  <35.102898, 36.847084, 45.698494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324291, 36.939617, 45.703182>,  <35.693283, 37.093838, 45.710999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324291, 36.939617, 45.703182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028111, -0.117564, 0.992667,
		-0.385024, 0.915165, 0.119288,
		-0.922478, -0.385554, -0.019539,
		35.047546, 36.823952, 45.697319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277912, 37.396847, 46.344807>,  <35.693283, 37.093838, 45.710999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277912, 37.396847, 46.344807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041225, 37.085026, 46.262665>,  <34.899212, 36.897934, 46.213379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041225, 37.085026, 46.262665>,  <35.277912, 37.396847, 46.344807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041225, 37.085026, 46.262665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003128, -0.252509, 0.967589,
		-0.806137, 0.573185, 0.146976,
		-0.591720, -0.779550, -0.205350,
		34.863708, 36.851162, 46.201061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822041, 37.428116, 46.904259>,  <35.277912, 37.396847, 46.344807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822041, 37.428116, 46.904259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825096, 37.053883, 46.763050>,  <34.826927, 36.829342, 46.678326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825096, 37.053883, 46.763050>,  <34.822041, 37.428116, 46.904259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825096, 37.053883, 46.763050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031095, -0.353085, 0.935074,
		-0.999487, 0.003837, -0.031788,
		0.007636, -0.935584, -0.353023,
		34.827389, 36.773209, 46.657143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290649, 37.060711, 47.260914>,  <34.822041, 37.428116, 46.904259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290649, 37.060711, 47.260914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539322, 36.775585, 47.131046>,  <34.688526, 36.604511, 47.053127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539322, 36.775585, 47.131046>,  <34.290649, 37.060711, 47.260914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539322, 36.775585, 47.131046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003823, -0.411736, 0.911295,
		-0.783259, -0.567778, -0.253245,
		0.621684, -0.712812, -0.324667,
		34.725826, 36.561741, 47.033646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970490, 36.494339, 47.447948>,  <34.290649, 37.060711, 47.260914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970490, 36.494339, 47.447948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350719, 36.382401, 47.394138>,  <34.578857, 36.315239, 47.361855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350719, 36.382401, 47.394138>,  <33.970490, 36.494339, 47.447948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350719, 36.382401, 47.394138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002716, -0.425740, 0.904842,
		-0.310484, -0.860485, -0.403937,
		0.950575, -0.279842, -0.134523,
		34.635891, 36.298447, 47.353783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926952, 35.762226, 47.636238>,  <33.970490, 36.494339, 47.447948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926952, 35.762226, 47.636238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307598, 35.885033, 47.641476>,  <34.535984, 35.958717, 47.644619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307598, 35.885033, 47.641476>,  <33.926952, 35.762226, 47.636238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307598, 35.885033, 47.641476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105504, -0.366447, 0.924438,
		0.288613, -0.878328, -0.381107,
		0.951615, 0.307013, 0.013094,
		34.593082, 35.977135, 47.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279018, 35.235321, 47.896019>,  <33.926952, 35.762226, 47.636238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279018, 35.235321, 47.896019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517742, 35.548904, 47.964397>,  <34.660976, 35.737057, 48.005424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517742, 35.548904, 47.964397>,  <34.279018, 35.235321, 47.896019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517742, 35.548904, 47.964397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042735, -0.243806, 0.968882,
		0.801246, -0.570931, -0.179008,
		0.596808, 0.783962, 0.170950,
		34.696785, 35.784092, 48.015682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486832, 34.403023, 47.882812>,  <34.279018, 35.235321, 47.896019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486832, 34.403023, 47.882812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566887, 34.014854, 47.936821>,  <34.614922, 33.781952, 47.969227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566887, 34.014854, 47.936821>,  <34.486832, 34.403023, 47.882812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566887, 34.014854, 47.936821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125682, -0.162098, -0.978738,
		0.971673, 0.178915, -0.154406,
		0.200140, -0.970420, 0.135020,
		34.626930, 33.723728, 47.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042637, 34.233562, 47.492119>,  <34.486832, 34.403023, 47.882812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042637, 34.233562, 47.492119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836781, 33.893009, 47.532688>,  <34.713268, 33.688675, 47.557030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836781, 33.893009, 47.532688>,  <35.042637, 34.233562, 47.492119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836781, 33.893009, 47.532688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032294, -0.137456, -0.989981,
		0.856799, -0.506206, 0.098235,
		-0.514637, -0.851388, 0.101424,
		34.682388, 33.637592, 47.563114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415665, 33.817474, 47.027050>,  <35.042637, 34.233562, 47.492119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415665, 33.817474, 47.027050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070160, 33.624184, 47.084190>,  <34.862858, 33.508209, 47.118473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070160, 33.624184, 47.084190>,  <35.415665, 33.817474, 47.027050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070160, 33.624184, 47.084190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101736, -0.110409, -0.988666,
		0.493521, -0.868506, 0.046206,
		-0.863764, -0.483226, 0.142847,
		34.811031, 33.479218, 47.127045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421547, 33.234322, 46.557838>,  <35.415665, 33.817474, 47.027050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421547, 33.234322, 46.557838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036758, 33.300137, 46.645046>,  <34.805885, 33.339626, 46.697372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036758, 33.300137, 46.645046>,  <35.421547, 33.234322, 46.557838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036758, 33.300137, 46.645046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226291, -0.033074, -0.973498,
		-0.152965, -0.985816, 0.069049,
		-0.961974, 0.164537, 0.218022,
		34.748165, 33.349499, 46.710453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051804, 32.605038, 46.223415>,  <35.421547, 33.234322, 46.557838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051804, 32.605038, 46.223415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808544, 32.916740, 46.283958>,  <34.662590, 33.103764, 46.320282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808544, 32.916740, 46.283958>,  <35.051804, 32.605038, 46.223415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808544, 32.916740, 46.283958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252058, -0.008763, -0.967672,
		-0.752743, -0.626638, 0.201748,
		-0.608148, 0.779262, 0.151353,
		34.626099, 33.150520, 46.329365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412453, 32.456184, 45.825752>,  <35.051804, 32.605038, 46.223415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412453, 32.456184, 45.825752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415867, 32.853043, 45.875679>,  <34.417915, 33.091156, 45.905636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415867, 32.853043, 45.875679>,  <34.412453, 32.456184, 45.825752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415867, 32.853043, 45.875679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168680, 0.124465, -0.977781,
		-0.985634, -0.012710, 0.168417,
		0.008535, 0.992143, 0.124820,
		34.418427, 33.150684, 45.913124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849724, 32.597717, 45.557793>,  <34.412453, 32.456184, 45.825752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849724, 32.597717, 45.557793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033871, 32.952450, 45.573750>,  <34.144360, 33.165291, 45.583324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033871, 32.952450, 45.573750>,  <33.849724, 32.597717, 45.557793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033871, 32.952450, 45.573750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317395, 0.206397, -0.925560,
		-0.829049, 0.413437, 0.376494,
		0.460368, 0.886832, 0.039890,
		34.171982, 33.218498, 45.585716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.112675, 33.082214, 49.374969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.288101, 33.432594, 49.455345>,  <39.393356, 33.642822, 49.503571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.288101, 33.432594, 49.455345>,  <39.112675, 33.082214, 49.374969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288101, 33.432594, 49.455345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040398, 0.242573, -0.969292,
		-0.897791, 0.416979, 0.141771,
		0.438564, 0.875949, 0.200935,
		39.419670, 33.695377, 49.515625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657513, 33.698277, 49.230980>,  <39.112675, 33.082214, 49.374969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657513, 33.698277, 49.230980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044662, 33.792999, 49.197178>,  <39.276951, 33.849834, 49.176899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044662, 33.792999, 49.197178>,  <38.657513, 33.698277, 49.230980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044662, 33.792999, 49.197178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149242, 0.270609, -0.951051,
		-0.202347, 0.933110, 0.297257,
		0.967875, 0.236806, -0.084502,
		39.335026, 33.864040, 49.171829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640770, 34.357918, 48.977329>,  <38.657513, 33.698277, 49.230980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640770, 34.357918, 48.977329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987701, 34.188110, 48.873386>,  <39.195862, 34.086227, 48.811020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987701, 34.188110, 48.873386>,  <38.640770, 34.357918, 48.977329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987701, 34.188110, 48.873386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180382, 0.218492, -0.959022,
		0.463895, 0.878663, 0.112930,
		0.867332, -0.424515, -0.259852,
		39.247902, 34.060757, 48.795429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853523, 34.655243, 48.330784>,  <38.640770, 34.357918, 48.977329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853523, 34.655243, 48.330784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.093021, 34.335583, 48.352177>,  <39.236721, 34.143787, 48.365013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.093021, 34.335583, 48.352177>,  <38.853523, 34.655243, 48.330784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093021, 34.335583, 48.352177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051191, -0.104819, -0.993173,
		0.799303, 0.591918, -0.103669,
		0.598744, -0.799153, 0.053481,
		39.272644, 34.095837, 48.368221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565422, 34.674789, 48.017525>,  <38.853523, 34.655243, 48.330784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565422, 34.674789, 48.017525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.446693, 34.292824, 48.015026>,  <39.375454, 34.063644, 48.013527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.446693, 34.292824, 48.015026>,  <39.565422, 34.674789, 48.017525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446693, 34.292824, 48.015026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046275, 0.020919, -0.998710,
		0.953810, -0.296153, -0.050398,
		-0.296825, -0.954911, -0.006248,
		39.357647, 34.006351, 48.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009850, 34.433788, 47.501797>,  <39.565422, 34.674789, 48.017525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009850, 34.433788, 47.501797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.707870, 34.177143, 47.556034>,  <39.526684, 34.023155, 47.588577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.707870, 34.177143, 47.556034>,  <40.009850, 34.433788, 47.501797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707870, 34.177143, 47.556034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046621, -0.258757, -0.964817,
		0.654123, -0.722067, 0.225262,
		-0.754950, -0.641611, 0.135596,
		39.481384, 33.984661, 47.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190166, 33.842674, 47.118771>,  <40.009850, 34.433788, 47.501797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190166, 33.842674, 47.118771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.802155, 33.771030, 47.184448>,  <39.569347, 33.728046, 47.223854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.802155, 33.771030, 47.184448>,  <40.190166, 33.842674, 47.118771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802155, 33.771030, 47.184448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090987, -0.358837, -0.928955,
		0.225300, -0.916055, 0.331787,
		-0.970031, -0.179106, 0.164196,
		39.511147, 33.717300, 47.233707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986111, 33.160168, 46.872757>,  <40.190166, 33.842674, 47.118771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986111, 33.160168, 46.872757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619572, 33.319180, 46.891834>,  <39.399647, 33.414589, 46.903278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619572, 33.319180, 46.891834>,  <39.986111, 33.160168, 46.872757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619572, 33.319180, 46.891834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181013, -0.305089, -0.934962,
		-0.357135, -0.865381, 0.351527,
		-0.916346, 0.397538, 0.047687,
		39.344666, 33.438438, 46.906139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490406, 32.598942, 46.710468>,  <39.986111, 33.160168, 46.872757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490406, 32.598942, 46.710468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.305878, 32.945644, 46.634663>,  <39.195160, 33.153667, 46.589180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.305878, 32.945644, 46.634663>,  <39.490406, 32.598942, 46.710468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305878, 32.945644, 46.634663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179105, -0.300181, -0.936917,
		-0.868970, -0.398273, 0.293719,
		-0.461317, 0.866759, -0.189515,
		39.167484, 33.205673, 46.577808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764576, 32.412399, 46.499863>,  <39.490406, 32.598942, 46.710468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764576, 32.412399, 46.499863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.861923, 32.774021, 46.359314>,  <38.920330, 32.990993, 46.274986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.861923, 32.774021, 46.359314>,  <38.764576, 32.412399, 46.499863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861923, 32.774021, 46.359314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286477, -0.279103, -0.916533,
		-0.926663, 0.323713, 0.191066,
		0.243366, 0.904053, -0.351370,
		38.934933, 33.045238, 46.253902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254452, 32.652546, 46.029888>,  <38.764576, 32.412399, 46.499863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254452, 32.652546, 46.029888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543026, 32.908016, 45.922840>,  <38.716171, 33.061298, 45.858612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543026, 32.908016, 45.922840>,  <38.254452, 32.652546, 46.029888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543026, 32.908016, 45.922840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216016, -0.159620, -0.963254,
		-0.657928, 0.752735, 0.022809,
		0.721434, 0.638679, -0.267621,
		38.759457, 33.099621, 45.842552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946209, 33.087811, 45.524391>,  <38.254452, 32.652546, 46.029888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946209, 33.087811, 45.524391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333675, 33.155231, 45.451427>,  <38.566154, 33.195683, 45.407650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333675, 33.155231, 45.451427>,  <37.946209, 33.087811, 45.524391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333675, 33.155231, 45.451427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164492, -0.114886, -0.979665,
		-0.186078, 0.978975, -0.083561,
		0.968668, 0.168549, -0.182412,
		38.624275, 33.205795, 45.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235817, 33.039280, 45.288967>,  <37.946209, 33.087811, 45.524391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235817, 33.039280, 45.288967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089615, 32.667259, 45.273914>,  <37.001896, 32.444046, 45.264881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089615, 32.667259, 45.273914>,  <37.235817, 33.039280, 45.288967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089615, 32.667259, 45.273914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058506, -0.017396, 0.998136,
		-0.928970, 0.367024, -0.048055,
		-0.365503, -0.930049, -0.037633,
		36.979965, 32.388245, 45.262623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502384, 33.027451, 45.622604>,  <37.235817, 33.039280, 45.288967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502384, 33.027451, 45.622604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676403, 32.668194, 45.648155>,  <36.780815, 32.452641, 45.663486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676403, 32.668194, 45.648155>,  <36.502384, 33.027451, 45.622604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676403, 32.668194, 45.648155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194235, -0.024334, 0.980653,
		-0.879209, -0.439037, -0.185037,
		0.435046, -0.898140, 0.063881,
		36.806915, 32.398750, 45.667320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074581, 32.742306, 46.147354>,  <36.502384, 33.027451, 45.622604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074581, 32.742306, 46.147354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.396709, 32.508671, 46.106747>,  <36.589985, 32.368488, 46.082382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.396709, 32.508671, 46.106747>,  <36.074581, 32.742306, 46.147354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396709, 32.508671, 46.106747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094625, -0.042406, 0.994609,
		-0.585243, -0.810583, 0.021119,
		0.805318, -0.584087, -0.101519,
		36.638306, 32.333447, 46.076290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891979, 32.248558, 46.512329>,  <36.074581, 32.742306, 46.147354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891979, 32.248558, 46.512329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.288162, 32.198452, 46.489326>,  <36.525871, 32.168388, 46.475525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.288162, 32.198452, 46.489326>,  <35.891979, 32.248558, 46.512329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288162, 32.198452, 46.489326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020061, -0.281735, 0.959283,
		-0.136364, -0.951280, -0.276533,
		0.990456, -0.125264, -0.057502,
		36.585300, 32.160873, 46.472076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987526, 31.915045, 47.014256>,  <35.891979, 32.248558, 46.512329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987526, 31.915045, 47.014256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375332, 31.972527, 46.934875>,  <36.608017, 32.007015, 46.887249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375332, 31.972527, 46.934875>,  <35.987526, 31.915045, 47.014256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375332, 31.972527, 46.934875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225479, -0.206333, 0.952148,
		0.095883, -0.967871, -0.232446,
		0.969518, 0.143707, -0.198451,
		36.666187, 32.015640, 46.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403503, 31.340101, 47.141624>,  <35.987526, 31.915045, 47.014256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403503, 31.340101, 47.141624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604431, 31.681892, 47.194595>,  <36.724987, 31.886967, 47.226376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604431, 31.681892, 47.194595>,  <36.403503, 31.340101, 47.141624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604431, 31.681892, 47.194595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152194, -0.238130, 0.959235,
		0.851181, -0.461691, -0.249665,
		0.502323, 0.854480, 0.132425,
		36.755127, 31.938236, 47.234322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823738, 31.179089, 47.751900>,  <36.403503, 31.340101, 47.141624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823738, 31.179089, 47.751900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842419, 31.576469, 47.710190>,  <36.853626, 31.814898, 47.685165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842419, 31.576469, 47.710190>,  <36.823738, 31.179089, 47.751900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842419, 31.576469, 47.710190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118359, 0.098148, 0.988108,
		0.991872, -0.058486, -0.113000,
		0.046700, 0.993452, -0.104273,
		36.856430, 31.874504, 47.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431129, 31.350603, 48.146023>,  <36.823738, 31.179089, 47.751900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431129, 31.350603, 48.146023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207706, 31.682199, 48.134773>,  <37.073654, 31.881157, 48.128025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207706, 31.682199, 48.134773>,  <37.431129, 31.350603, 48.146023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207706, 31.682199, 48.134773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144277, 0.130488, 0.980896,
		0.816821, 0.543830, -0.192489,
		-0.558558, 0.828989, -0.028123,
		37.040138, 31.930897, 48.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810520, 31.801849, 48.555134>,  <37.431129, 31.350603, 48.146023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810520, 31.801849, 48.555134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444294, 31.960436, 48.528114>,  <37.224560, 32.055588, 48.511902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444294, 31.960436, 48.528114>,  <37.810520, 31.801849, 48.555134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444294, 31.960436, 48.528114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038997, 0.254672, 0.966241,
		0.400284, 0.882018, -0.248629,
		-0.915561, 0.396467, -0.067545,
		37.169624, 32.079376, 48.507851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879574, 32.457371, 48.802597>,  <37.810520, 31.801849, 48.555134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879574, 32.457371, 48.802597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.501270, 32.341381, 48.861183>,  <37.274288, 32.271790, 48.896336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.501270, 32.341381, 48.861183>,  <37.879574, 32.457371, 48.802597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501270, 32.341381, 48.861183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065000, 0.272841, 0.959861,
		-0.318294, 0.917319, -0.239194,
		-0.945761, -0.289970, 0.146470,
		37.217541, 32.254391, 48.905125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602276, 33.003040, 49.291851>,  <37.879574, 32.457371, 48.802597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602276, 33.003040, 49.291851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.316975, 32.723114, 49.307495>,  <37.145794, 32.555157, 49.316883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.316975, 32.723114, 49.307495>,  <37.602276, 33.003040, 49.291851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316975, 32.723114, 49.307495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159498, 0.216389, 0.963190,
		-0.682518, 0.680760, -0.265959,
		-0.713253, -0.699815, 0.039110,
		37.103001, 32.513168, 49.319229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096210, 33.214893, 49.712841>,  <37.602276, 33.003040, 49.291851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096210, 33.214893, 49.712841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015900, 32.823154, 49.722435>,  <36.967712, 32.588112, 49.728191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015900, 32.823154, 49.722435>,  <37.096210, 33.214893, 49.712841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015900, 32.823154, 49.722435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350383, 0.094658, 0.931811,
		-0.914833, 0.178684, -0.362151,
		-0.200780, -0.979342, 0.023989,
		36.955666, 32.529350, 49.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396393, 33.190117, 49.973518>,  <37.096210, 33.214893, 49.712841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396393, 33.190117, 49.973518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588875, 32.850784, 50.061855>,  <36.704365, 32.647182, 50.114857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588875, 32.850784, 50.061855>,  <36.396393, 33.190117, 49.973518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588875, 32.850784, 50.061855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213471, 0.130944, 0.968134,
		-0.850219, -0.513015, -0.118084,
		0.481205, -0.848333, 0.220845,
		36.733238, 32.596283, 50.128109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999329, 32.979408, 50.521046>,  <36.396393, 33.190117, 49.973518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999329, 32.979408, 50.521046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356941, 32.800816, 50.535744>,  <36.571510, 32.693661, 50.544563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356941, 32.800816, 50.535744>,  <35.999329, 32.979408, 50.521046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356941, 32.800816, 50.535744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080716, -0.079866, 0.993532,
		-0.440664, -0.891219, -0.107442,
		0.894036, -0.446486, 0.036741,
		36.625153, 32.666870, 50.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339310, 32.565582, 50.723442>,  <35.999329, 32.979408, 50.521046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339310, 32.565582, 50.723442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.017559, 32.803230, 50.724564>,  <34.824509, 32.945820, 50.725239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.017559, 32.803230, 50.724564>,  <35.339310, 32.565582, 50.723442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017559, 32.803230, 50.724564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062526, -0.079953, -0.994836,
		-0.590827, -0.800393, 0.101460,
		-0.804372, 0.594120, 0.002807,
		34.776249, 32.981464, 50.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925812, 32.282116, 50.313637>,  <35.339310, 32.565582, 50.723442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925812, 32.282116, 50.313637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.785721, 32.656281, 50.333038>,  <34.701668, 32.880779, 50.344681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.785721, 32.656281, 50.333038>,  <34.925812, 32.282116, 50.313637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785721, 32.656281, 50.333038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176824, -0.015174, -0.984125,
		-0.919824, -0.353241, 0.170717,
		-0.350224, 0.935409, 0.048504,
		34.680653, 32.936905, 50.347591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395542, 32.406666, 49.762005>,  <34.925812, 32.282116, 50.313637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395542, 32.406666, 49.762005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500633, 32.780693, 49.857193>,  <34.563686, 33.005108, 49.914307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500633, 32.780693, 49.857193>,  <34.395542, 32.406666, 49.762005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500633, 32.780693, 49.857193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184936, 0.290863, -0.938721,
		-0.946981, 0.202619, 0.249345,
		0.262728, 0.935064, 0.237970,
		34.579453, 33.061211, 49.928585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948521, 32.764519, 49.440197>,  <34.395542, 32.406666, 49.762005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948521, 32.764519, 49.440197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230125, 33.039509, 49.511478>,  <34.399086, 33.204502, 49.554245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230125, 33.039509, 49.511478>,  <33.948521, 32.764519, 49.440197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230125, 33.039509, 49.511478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117063, 0.359818, -0.925650,
		-0.700478, 0.630804, 0.333792,
		0.704008, 0.687472, 0.178201,
		34.441326, 33.245750, 49.564938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692001, 33.463654, 49.314606>,  <33.948521, 32.764519, 49.440197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692001, 33.463654, 49.314606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.088783, 33.482243, 49.267498>,  <34.326851, 33.493397, 49.239235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.088783, 33.482243, 49.267498>,  <33.692001, 33.463654, 49.314606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088783, 33.482243, 49.267498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126552, 0.392072, -0.911188,
		0.003825, 0.918760, 0.394799,
		0.991953, 0.046477, -0.117771,
		34.386368, 33.496185, 49.232166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805183, 34.033958, 48.984409>,  <33.692001, 33.463654, 49.314606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805183, 34.033958, 48.984409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.160091, 33.862339, 48.916687>,  <34.373035, 33.759365, 48.876053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.160091, 33.862339, 48.916687>,  <33.805183, 34.033958, 48.984409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160091, 33.862339, 48.916687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007650, 0.380695, -0.924669,
		0.461185, 0.819137, 0.341061,
		0.887271, -0.429053, -0.169305,
		34.426273, 33.733624, 48.865894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237820, 34.551895, 48.566631>,  <33.805183, 34.033958, 48.984409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237820, 34.551895, 48.566631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398857, 34.192810, 48.495037>,  <34.495480, 33.977360, 48.452080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398857, 34.192810, 48.495037>,  <34.237820, 34.551895, 48.566631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398857, 34.192810, 48.495037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065108, 0.166953, -0.983813,
		0.913060, 0.407732, 0.008766,
		0.402595, -0.897709, -0.178985,
		34.519634, 33.923496, 48.441341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861935, 34.968536, 48.366295>,  <34.237820, 34.551895, 48.566631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861935, 34.968536, 48.366295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862827, 35.366684, 48.404724>,  <34.863365, 35.605572, 48.427780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862827, 35.366684, 48.404724>,  <34.861935, 34.968536, 48.366295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862827, 35.366684, 48.404724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002845, -0.096064, 0.995371,
		0.999993, -0.002497, 0.002617,
		0.002234, 0.995372, 0.096070,
		34.863499, 35.665295, 48.433544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438328, 35.090809, 48.790897>,  <34.861935, 34.968536, 48.366295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438328, 35.090809, 48.790897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186035, 35.399670, 48.821777>,  <35.034660, 35.584984, 48.840305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186035, 35.399670, 48.821777>,  <35.438328, 35.090809, 48.790897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186035, 35.399670, 48.821777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010663, -0.108094, 0.994084,
		0.775926, 0.626179, 0.076412,
		-0.630734, 0.772150, 0.077196,
		34.996815, 35.631313, 48.844936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743931, 35.597240, 49.214787>,  <35.438328, 35.090809, 48.790897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743931, 35.597240, 49.214787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358307, 35.700211, 49.241089>,  <35.126934, 35.761993, 49.256870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358307, 35.700211, 49.241089>,  <35.743931, 35.597240, 49.214787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358307, 35.700211, 49.241089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104501, 0.139829, 0.984646,
		0.244281, 0.956127, -0.161705,
		-0.964057, 0.257429, 0.065758,
		35.069088, 35.777439, 49.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791409, 35.958416, 49.781960>,  <35.743931, 35.597240, 49.214787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791409, 35.958416, 49.781960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.394131, 35.927383, 49.747211>,  <35.155766, 35.908764, 49.726364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.394131, 35.927383, 49.747211>,  <35.791409, 35.958416, 49.781960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394131, 35.927383, 49.747211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099533, 0.178066, 0.978972,
		-0.060482, 0.980956, -0.184576,
		-0.993194, -0.077581, -0.086868,
		35.096172, 35.904110, 49.721149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538506, 36.586929, 50.104115>,  <35.791409, 35.958416, 49.781960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538506, 36.586929, 50.104115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.243198, 36.317513, 50.089668>,  <35.066013, 36.155865, 50.081001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.243198, 36.317513, 50.089668>,  <35.538506, 36.586929, 50.104115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243198, 36.317513, 50.089668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194157, 0.160926, 0.967681,
		-0.645959, 0.721420, -0.249579,
		-0.738268, -0.673540, -0.036117,
		35.021717, 36.115452, 50.078835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065075, 36.836243, 50.465427>,  <35.538506, 36.586929, 50.104115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065075, 36.836243, 50.465427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939373, 36.456676, 50.476772>,  <34.863953, 36.228935, 50.483578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939373, 36.456676, 50.476772>,  <35.065075, 36.836243, 50.465427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939373, 36.456676, 50.476772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409822, 0.162544, 0.897567,
		-0.856325, 0.270440, -0.439966,
		-0.314251, -0.948916, 0.028358,
		34.845097, 36.172001, 50.485279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347649, 36.945438, 50.610844>,  <35.065075, 36.836243, 50.465427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347649, 36.945438, 50.610844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.499523, 36.587280, 50.703888>,  <34.590649, 36.372387, 50.759716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.499523, 36.587280, 50.703888>,  <34.347649, 36.945438, 50.610844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499523, 36.587280, 50.703888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208786, 0.162021, 0.964447,
		-0.901249, -0.414751, -0.125430,
		0.379683, -0.895394, 0.232615,
		34.613426, 36.318661, 50.773674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888744, 36.623814, 51.172825>,  <34.347649, 36.945438, 50.610844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888744, 36.623814, 51.172825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226086, 36.409763, 51.192451>,  <34.428490, 36.281334, 51.204227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226086, 36.409763, 51.192451>,  <33.888744, 36.623814, 51.172825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226086, 36.409763, 51.192451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033866, 0.144052, 0.988990,
		-0.536298, -0.832403, 0.139609,
		0.843349, -0.535122, 0.049065,
		34.479092, 36.249226, 51.207172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713528, 36.145035, 51.663803>,  <33.888744, 36.623814, 51.172825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713528, 36.145035, 51.663803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112717, 36.167351, 51.651550>,  <34.352230, 36.180740, 51.644199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112717, 36.167351, 51.651550>,  <33.713528, 36.145035, 51.663803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112717, 36.167351, 51.651550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028637, 0.036263, 0.998932,
		0.056853, -0.997783, 0.034591,
		0.997972, 0.055802, -0.030636,
		34.412109, 36.184090, 51.642361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.147369, 37.656548, 35.729702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506786, 37.767708, 35.865578>,  <35.722435, 37.834404, 35.947105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506786, 37.767708, 35.865578>,  <35.147369, 37.656548, 35.729702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506786, 37.767708, 35.865578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314112, -0.133354, 0.939974,
		0.306521, -0.951308, -0.032531,
		0.898543, 0.277904, 0.339693,
		35.776348, 37.851078, 35.967487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323963, 37.157227, 36.241936>,  <35.147369, 37.656548, 35.729702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323963, 37.157227, 36.241936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548531, 37.481201, 36.309818>,  <35.683273, 37.675587, 36.350548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548531, 37.481201, 36.309818>,  <35.323963, 37.157227, 36.241936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548531, 37.481201, 36.309818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271235, -0.013647, 0.962416,
		0.781816, -0.586354, 0.212023,
		0.561423, 0.809940, 0.169709,
		35.716957, 37.724182, 36.360729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565861, 37.024628, 36.889744>,  <35.323963, 37.157227, 36.241936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565861, 37.024628, 36.889744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605846, 37.418545, 36.832909>,  <35.629837, 37.654896, 36.798809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605846, 37.418545, 36.832909>,  <35.565861, 37.024628, 36.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605846, 37.418545, 36.832909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229774, 0.161790, 0.959702,
		0.968096, -0.063292, 0.242454,
		0.099968, 0.984793, -0.142086,
		35.635838, 37.713982, 36.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022030, 37.257298, 37.422367>,  <35.565861, 37.024628, 36.889744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022030, 37.257298, 37.422367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772888, 37.545120, 37.299541>,  <35.623402, 37.717815, 37.225845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772888, 37.545120, 37.299541>,  <36.022030, 37.257298, 37.422367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772888, 37.545120, 37.299541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469309, -0.029623, 0.882537,
		0.625940, 0.693801, 0.356145,
		-0.622855, 0.719557, -0.307065,
		35.586033, 37.760986, 37.207420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043636, 37.702896, 37.979610>,  <36.022030, 37.257298, 37.422367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043636, 37.702896, 37.979610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721603, 37.830479, 37.779568>,  <35.528381, 37.907028, 37.659542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721603, 37.830479, 37.779568>,  <36.043636, 37.702896, 37.979610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721603, 37.830479, 37.779568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457424, 0.202912, 0.865789,
		0.377623, 0.925795, -0.017465,
		-0.805086, 0.318952, -0.500105,
		35.480076, 37.926163, 37.629536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854317, 38.210911, 38.380821>,  <36.043636, 37.702896, 37.979610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854317, 38.210911, 38.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536957, 38.120544, 38.154736>,  <35.346539, 38.066326, 38.019085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536957, 38.120544, 38.154736>,  <35.854317, 38.210911, 38.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536957, 38.120544, 38.154736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596717, 0.105366, 0.795504,
		-0.120160, 0.968432, -0.218405,
		-0.793404, -0.225914, -0.565219,
		35.298935, 38.052769, 37.985168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199402, 38.709843, 38.581863>,  <35.854317, 38.210911, 38.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199402, 38.709843, 38.581863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035961, 38.397976, 38.392059>,  <34.937897, 38.210857, 38.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035961, 38.397976, 38.392059>,  <35.199402, 38.709843, 38.581863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035961, 38.397976, 38.392059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678607, -0.088157, 0.729192,
		-0.610359, 0.619957, -0.493067,
		-0.408600, -0.779667, -0.474515,
		34.913380, 38.164074, 38.249706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541222, 38.797737, 38.767178>,  <35.199402, 38.709843, 38.581863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541222, 38.797737, 38.767178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602943, 38.416088, 38.664536>,  <34.639977, 38.187099, 38.602951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602943, 38.416088, 38.664536>,  <34.541222, 38.797737, 38.767178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602943, 38.416088, 38.664536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511115, -0.299349, 0.805700,
		-0.845548, 0.006834, -0.533855,
		0.154303, -0.954119, -0.256607,
		34.649235, 38.129852, 38.587555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811493, 38.343517, 38.956318>,  <34.541222, 38.797737, 38.767178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811493, 38.343517, 38.956318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109673, 38.079613, 38.918343>,  <34.288582, 37.921268, 38.895557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109673, 38.079613, 38.918343>,  <33.811493, 38.343517, 38.956318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109673, 38.079613, 38.918343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419274, -0.574844, 0.702684,
		-0.518180, -0.484011, -0.705140,
		0.745452, -0.659763, -0.094939,
		34.333309, 37.881683, 38.889862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508648, 37.796993, 38.988289>,  <33.811493, 38.343517, 38.956318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508648, 37.796993, 38.988289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880569, 37.695076, 39.094532>,  <34.103722, 37.633926, 39.158276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880569, 37.695076, 39.094532>,  <33.508648, 37.796993, 38.988289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880569, 37.695076, 39.094532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347961, -0.373326, 0.859972,
		-0.119958, -0.892025, -0.435778,
		0.929803, -0.254794, 0.265606,
		34.159512, 37.618637, 39.174213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470753, 37.145432, 39.211262>,  <33.508648, 37.796993, 38.988289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470753, 37.145432, 39.211262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799721, 37.303143, 39.375294>,  <33.997101, 37.397770, 39.473713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799721, 37.303143, 39.375294>,  <33.470753, 37.145432, 39.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799721, 37.303143, 39.375294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264407, -0.373332, 0.889220,
		0.503696, -0.839743, -0.202787,
		0.822423, 0.394279, 0.410080,
		34.046448, 37.421425, 39.498318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743385, 36.616737, 39.627556>,  <33.470753, 37.145432, 39.211262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743385, 36.616737, 39.627556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914467, 36.954067, 39.757717>,  <34.017117, 37.156464, 39.835812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914467, 36.954067, 39.757717>,  <33.743385, 36.616737, 39.627556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914467, 36.954067, 39.757717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165928, -0.280622, 0.945367,
		0.888561, -0.458325, 0.019908,
		0.427699, 0.843320, 0.325399,
		34.042778, 37.207062, 39.855335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888584, 35.852806, 39.706085>,  <33.743385, 36.616737, 39.627556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888584, 35.852806, 39.706085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723423, 35.499569, 39.795223>,  <33.624325, 35.287628, 39.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723423, 35.499569, 39.795223>,  <33.888584, 35.852806, 39.706085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723423, 35.499569, 39.795223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133986, -0.183118, -0.973918,
		0.900865, -0.431994, -0.042712,
		-0.412905, -0.883091, 0.222845,
		33.599552, 35.234642, 39.862076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255440, 35.270645, 39.328445>,  <33.888584, 35.852806, 39.706085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255440, 35.270645, 39.328445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882507, 35.155952, 39.416576>,  <33.658749, 35.087135, 39.469456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882507, 35.155952, 39.416576>,  <34.255440, 35.270645, 39.328445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882507, 35.155952, 39.416576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173700, -0.179271, -0.968344,
		0.317151, -0.941089, 0.117335,
		-0.932332, -0.286731, 0.220323,
		33.602806, 35.069935, 39.482674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139862, 34.753880, 38.796288>,  <34.255440, 35.270645, 39.328445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139862, 34.753880, 38.796288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770859, 34.843075, 38.922314>,  <33.549458, 34.896591, 38.997929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770859, 34.843075, 38.922314>,  <34.139862, 34.753880, 38.796288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770859, 34.843075, 38.922314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322467, 0.003380, -0.946575,
		-0.212137, -0.974816, 0.068787,
		-0.922504, 0.222985, 0.315063,
		33.494106, 34.909969, 39.016834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871395, 34.363510, 38.378002>,  <34.139862, 34.753880, 38.796288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871395, 34.363510, 38.378002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565014, 34.582069, 38.513504>,  <33.381184, 34.713203, 38.594807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565014, 34.582069, 38.513504>,  <33.871395, 34.363510, 38.378002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565014, 34.582069, 38.513504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454778, -0.088066, -0.886240,
		-0.454409, -0.832881, 0.315946,
		-0.765957, 0.546400, 0.338758,
		33.335228, 34.745991, 38.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269375, 33.970222, 38.255047>,  <33.871395, 34.363510, 38.378002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269375, 33.970222, 38.255047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161995, 34.353947, 38.290039>,  <33.097569, 34.584183, 38.311035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161995, 34.353947, 38.290039>,  <33.269375, 33.970222, 38.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161995, 34.353947, 38.290039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444842, -0.042909, -0.894581,
		-0.854430, -0.279064, 0.438261,
		-0.268451, 0.959313, 0.087476,
		33.081459, 34.641739, 38.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464382, 34.012840, 38.097599>,  <33.269375, 33.970222, 38.255047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464382, 34.012840, 38.097599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628708, 34.367947, 38.014549>,  <32.727303, 34.581009, 37.964722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628708, 34.367947, 38.014549>,  <32.464382, 34.012840, 38.097599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628708, 34.367947, 38.014549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310022, -0.078132, -0.947513,
		-0.857389, 0.453621, 0.243128,
		0.410816, 0.887763, -0.207622,
		32.751953, 34.634277, 37.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030304, 34.210232, 37.570286>,  <32.464382, 34.012840, 38.097599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030304, 34.210232, 37.570286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335941, 34.461952, 37.513531>,  <32.519325, 34.612984, 37.479477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335941, 34.461952, 37.513531>,  <32.030304, 34.210232, 37.570286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335941, 34.461952, 37.513531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218338, 0.045319, -0.974820,
		-0.607028, 0.775837, 0.172029,
		0.764098, 0.629303, -0.141885,
		32.565170, 34.650742, 37.470966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702091, 34.689209, 37.085438>,  <32.030304, 34.210232, 37.570286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702091, 34.689209, 37.085438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101082, 34.708660, 37.064735>,  <32.340477, 34.720333, 37.052315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101082, 34.708660, 37.064735>,  <31.702091, 34.689209, 37.085438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101082, 34.708660, 37.064735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054890, 0.065417, -0.996347,
		-0.045068, 0.996672, 0.067921,
		0.997475, 0.048631, -0.051759,
		32.400326, 34.723251, 37.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757839, 35.233566, 36.677986>,  <31.702091, 34.689209, 37.085438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757839, 35.233566, 36.677986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105206, 35.038685, 36.641132>,  <32.313625, 34.921757, 36.619019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105206, 35.038685, 36.641132>,  <31.757839, 35.233566, 36.677986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105206, 35.038685, 36.641132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059329, 0.082385, -0.994833,
		0.492277, 0.869394, 0.042639,
		0.868414, -0.487204, -0.092136,
		32.365730, 34.892525, 36.613491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128132, 35.547867, 36.150318>,  <31.757839, 35.233566, 36.677986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128132, 35.547867, 36.150318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299679, 35.188622, 36.189251>,  <32.402607, 34.973076, 36.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299679, 35.188622, 36.189251>,  <32.128132, 35.547867, 36.150318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299679, 35.188622, 36.189251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011130, -0.112992, -0.993534,
		0.903299, 0.425010, -0.058454,
		0.428867, -0.898109, 0.097335,
		32.428337, 34.919189, 36.218452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551006, 35.546204, 35.536461>,  <32.128132, 35.547867, 36.150318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551006, 35.546204, 35.536461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513226, 35.169659, 35.666027>,  <32.490555, 34.943733, 35.743767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513226, 35.169659, 35.666027>,  <32.551006, 35.546204, 35.536461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513226, 35.169659, 35.666027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011976, -0.324275, -0.945887,
		0.995457, -0.093225, 0.019356,
		-0.094457, -0.941358, 0.323918,
		32.484890, 34.887253, 35.763203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142403, 35.065502, 35.308788>,  <32.551006, 35.546204, 35.536461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142403, 35.065502, 35.308788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835518, 34.818256, 35.377289>,  <32.651386, 34.669910, 35.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835518, 34.818256, 35.377289>,  <33.142403, 35.065502, 35.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835518, 34.818256, 35.377289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050831, -0.324756, -0.944431,
		0.639378, -0.715872, 0.280576,
		-0.767210, -0.618111, 0.171253,
		32.605354, 34.632824, 35.428665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333092, 34.533127, 34.953522>,  <33.142403, 35.065502, 35.308788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333092, 34.533127, 34.953522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944588, 34.468399, 35.023338>,  <32.711483, 34.429562, 35.065228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944588, 34.468399, 35.023338>,  <33.333092, 34.533127, 34.953522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944588, 34.468399, 35.023338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087354, -0.439806, -0.893834,
		0.221401, -0.883395, 0.413032,
		-0.971262, -0.161816, 0.174542,
		32.653210, 34.419853, 35.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191437, 33.831005, 34.761795>,  <33.333092, 34.533127, 34.953522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191437, 33.831005, 34.761795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824821, 33.990482, 34.749195>,  <32.604851, 34.086170, 34.741634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824821, 33.990482, 34.749195>,  <33.191437, 33.831005, 34.761795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824821, 33.990482, 34.749195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146331, -0.407610, -0.901355,
		-0.372206, -0.821521, 0.431933,
		-0.916543, 0.398695, -0.031501,
		32.549858, 34.110092, 34.739746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759731, 33.359951, 34.714596>,  <33.191437, 33.831005, 34.761795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759731, 33.359951, 34.714596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555401, 33.669144, 34.564098>,  <32.432804, 33.854660, 34.473801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555401, 33.669144, 34.564098>,  <32.759731, 33.359951, 34.714596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555401, 33.669144, 34.564098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023128, -0.425140, -0.904832,
		-0.859374, -0.470913, 0.199295,
		-0.510825, 0.772979, -0.376246,
		32.402153, 33.901039, 34.451225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119362, 32.817722, 34.964195>,  <32.759731, 33.359951, 34.714596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119362, 32.817722, 34.964195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492809, 32.903366, 35.079094>,  <33.716877, 32.954754, 35.148033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492809, 32.903366, 35.079094>,  <33.119362, 32.817722, 34.964195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492809, 32.903366, 35.079094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133085, -0.537136, 0.832931,
		0.332628, -0.815869, -0.472987,
		0.933620, 0.214109, 0.287246,
		33.772896, 32.967598, 35.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348278, 32.276642, 35.104916>,  <33.119362, 32.817722, 34.964195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348278, 32.276642, 35.104916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586620, 32.529278, 35.303329>,  <33.729626, 32.680859, 35.422379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586620, 32.529278, 35.303329>,  <33.348278, 32.276642, 35.104916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586620, 32.529278, 35.303329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145569, -0.692369, 0.706707,
		0.789787, -0.348889, -0.504493,
		0.595858, 0.631586, 0.496036,
		33.765377, 32.718754, 35.452141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894737, 31.860611, 35.313797>,  <33.348278, 32.276642, 35.104916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894737, 31.860611, 35.313797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886555, 32.183464, 35.549801>,  <33.881645, 32.377178, 35.691402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886555, 32.183464, 35.549801>,  <33.894737, 31.860611, 35.313797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886555, 32.183464, 35.549801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223194, -0.571557, 0.789625,
		0.974559, 0.147838, -0.168458,
		-0.020453, 0.807135, 0.590012,
		33.880417, 32.425606, 35.726803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423634, 31.685999, 35.777657>,  <33.894737, 31.860611, 35.313797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423634, 31.685999, 35.777657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242813, 31.993587, 35.958469>,  <34.134319, 32.178143, 36.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242813, 31.993587, 35.958469>,  <34.423634, 31.685999, 35.777657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242813, 31.993587, 35.958469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303125, -0.344172, 0.888629,
		0.838906, 0.538728, -0.077511,
		-0.452052, 0.768972, 0.452030,
		34.107197, 32.224277, 36.094078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974766, 31.903082, 36.288906>,  <34.423634, 31.685999, 35.777657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974766, 31.903082, 36.288906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625595, 32.057156, 36.408661>,  <34.416092, 32.149601, 36.480515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625595, 32.057156, 36.408661>,  <34.974766, 31.903082, 36.288906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625595, 32.057156, 36.408661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214974, -0.247184, 0.944821,
		0.437936, 0.889118, 0.132968,
		-0.872925, 0.385186, 0.299388,
		34.363716, 32.172710, 36.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098660, 32.378792, 36.807297>,  <34.974766, 31.903082, 36.288906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098660, 32.378792, 36.807297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724380, 32.254574, 36.874264>,  <34.499813, 32.180042, 36.914444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724380, 32.254574, 36.874264>,  <35.098660, 32.378792, 36.807297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724380, 32.254574, 36.874264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224578, -0.158305, 0.961511,
		-0.272088, 0.937284, 0.217867,
		-0.935699, -0.310544, 0.167421,
		34.443672, 32.161411, 36.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863827, 32.757744, 37.346661>,  <35.098660, 32.378792, 36.807297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863827, 32.757744, 37.346661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623016, 32.439083, 37.325085>,  <34.478531, 32.247887, 37.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623016, 32.439083, 37.325085>,  <34.863827, 32.757744, 37.346661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623016, 32.439083, 37.325085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062327, -0.114235, 0.991497,
		-0.796039, 0.593547, 0.118425,
		-0.602028, -0.796651, -0.053942,
		34.442410, 32.200089, 37.308903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536572, 32.869518, 38.043308>,  <34.863827, 32.757744, 37.346661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536572, 32.869518, 38.043308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489780, 32.496849, 37.905731>,  <34.461704, 32.273247, 37.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489780, 32.496849, 37.905731>,  <34.536572, 32.869518, 38.043308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489780, 32.496849, 37.905731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030894, -0.349568, 0.936401,
		-0.992654, 0.098912, 0.069674,
		-0.116977, -0.931675, -0.343945,
		34.454689, 32.217346, 37.802547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162895, 32.615124, 38.556442>,  <34.536572, 32.869518, 38.043308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162895, 32.615124, 38.556442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307957, 32.302467, 38.353458>,  <34.394993, 32.114872, 38.231667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307957, 32.302467, 38.353458>,  <34.162895, 32.615124, 38.556442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307957, 32.302467, 38.353458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121152, -0.500366, 0.857295,
		-0.924016, -0.372379, -0.086761,
		0.362652, -0.781644, -0.507461,
		34.416752, 32.067974, 38.201221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868046, 32.042149, 38.879910>,  <34.162895, 32.615124, 38.556442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868046, 32.042149, 38.879910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185589, 31.897095, 38.684654>,  <34.376114, 31.810062, 38.567501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185589, 31.897095, 38.684654>,  <33.868046, 32.042149, 38.879910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185589, 31.897095, 38.684654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366086, -0.355963, 0.859809,
		-0.485559, -0.861269, -0.149829,
		0.793860, -0.362638, -0.488139,
		34.423748, 31.788303, 38.538212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851234, 31.326639, 39.102215>,  <33.868046, 32.042149, 38.879910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851234, 31.326639, 39.102215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212605, 31.446669, 38.979721>,  <34.429428, 31.518686, 38.906223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212605, 31.446669, 38.979721>,  <33.851234, 31.326639, 39.102215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212605, 31.446669, 38.979721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389688, -0.276836, 0.878354,
		0.178793, -0.912863, -0.367035,
		0.903425, 0.300072, -0.306235,
		34.483631, 31.536690, 38.887852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334709, 30.816746, 39.169037>,  <33.851234, 31.326639, 39.102215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334709, 30.816746, 39.169037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551224, 31.151558, 39.201019>,  <34.681133, 31.352446, 39.220211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551224, 31.151558, 39.201019>,  <34.334709, 30.816746, 39.169037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551224, 31.151558, 39.201019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255421, -0.254282, 0.932792,
		0.801107, -0.484481, -0.351434,
		0.541283, 0.837030, 0.079961,
		34.713608, 31.402666, 39.225006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898857, 30.677683, 39.595875>,  <34.334709, 30.816746, 39.169037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898857, 30.677683, 39.595875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902817, 31.077646, 39.599468>,  <34.905193, 31.317625, 39.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902817, 31.077646, 39.599468>,  <34.898857, 30.677683, 39.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902817, 31.077646, 39.599468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491855, -0.012690, 0.870585,
		0.870621, -0.004204, -0.491937,
		0.009903, 0.999911, 0.008981,
		34.905788, 31.377619, 39.602161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626217, 30.882885, 39.612583>,  <34.898857, 30.677683, 39.595875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626217, 30.882885, 39.612583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424992, 31.199724, 39.750862>,  <35.304256, 31.389828, 39.833832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424992, 31.199724, 39.750862>,  <35.626217, 30.882885, 39.612583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424992, 31.199724, 39.750862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592935, 0.025303, 0.804852,
		0.628776, 0.609867, -0.482392,
		-0.503059, 0.792099, 0.345702,
		35.274075, 31.437353, 39.854572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162106, 31.360302, 39.887096>,  <35.626217, 30.882885, 39.612583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162106, 31.360302, 39.887096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814716, 31.499243, 40.028580>,  <35.606285, 31.582607, 40.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814716, 31.499243, 40.028580>,  <36.162106, 31.360302, 39.887096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814716, 31.499243, 40.028580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431802, 0.179522, 0.883923,
		0.243534, 0.920390, -0.305896,
		-0.868469, 0.347352, 0.353707,
		35.554176, 31.603449, 40.134693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364300, 31.865879, 40.250473>,  <36.162106, 31.360302, 39.887096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364300, 31.865879, 40.250473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004753, 31.781515, 40.404125>,  <35.789024, 31.730898, 40.496319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004753, 31.781515, 40.404125>,  <36.364300, 31.865879, 40.250473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004753, 31.781515, 40.404125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342947, 0.207151, 0.916229,
		-0.272813, 0.955304, -0.113871,
		-0.898866, -0.210908, 0.384132,
		35.735092, 31.718243, 40.519363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189560, 32.437511, 40.590015>,  <36.364300, 31.865879, 40.250473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189560, 32.437511, 40.590015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009930, 32.117401, 40.748959>,  <35.902149, 31.925335, 40.844322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009930, 32.117401, 40.748959>,  <36.189560, 32.437511, 40.590015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009930, 32.117401, 40.748959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217646, 0.333346, 0.917339,
		-0.866579, 0.498440, 0.024478,
		-0.449079, -0.800274, 0.397354,
		35.875206, 31.877319, 40.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127983, 32.644646, 41.250347>,  <36.189560, 32.437511, 40.590015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127983, 32.644646, 41.250347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986038, 32.272690, 41.289093>,  <35.900871, 32.049519, 41.312340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986038, 32.272690, 41.289093>,  <36.127983, 32.644646, 41.250347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986038, 32.272690, 41.289093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156470, 0.043072, 0.986743,
		-0.921732, 0.365313, 0.130215,
		-0.354862, -0.929888, 0.096862,
		35.879581, 31.993723, 41.318153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589317, 32.658432, 41.686001>,  <36.127983, 32.644646, 41.250347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589317, 32.658432, 41.686001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734390, 32.285992, 41.701553>,  <35.821434, 32.062527, 41.710884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734390, 32.285992, 41.701553>,  <35.589317, 32.658432, 41.686001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734390, 32.285992, 41.701553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188922, 0.114318, 0.975315,
		-0.912562, -0.346384, 0.217366,
		0.362683, -0.931101, 0.038883,
		35.843197, 32.006660, 41.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218288, 32.332771, 42.252960>,  <35.589317, 32.658432, 41.686001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218288, 32.332771, 42.252960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574776, 32.156494, 42.210018>,  <35.788666, 32.050728, 42.184254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574776, 32.156494, 42.210018>,  <35.218288, 32.332771, 42.252960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574776, 32.156494, 42.210018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137378, 0.036698, 0.989839,
		-0.432277, -0.896907, 0.093247,
		0.891215, -0.440695, -0.107351,
		35.842140, 32.024284, 42.177814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224998, 31.845177, 42.781982>,  <35.218288, 32.332771, 42.252960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224998, 31.845177, 42.781982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611149, 31.876806, 42.682549>,  <35.842838, 31.895784, 42.622887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611149, 31.876806, 42.682549>,  <35.224998, 31.845177, 42.781982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611149, 31.876806, 42.682549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256442, -0.112986, 0.959933,
		0.047822, -0.990445, -0.129352,
		0.965376, 0.079077, -0.248588,
		35.900761, 31.900528, 42.607971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610664, 31.374081, 43.260342>,  <35.224998, 31.845177, 42.781982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610664, 31.374081, 43.260342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898556, 31.615505, 43.123108>,  <36.071289, 31.760361, 43.040768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898556, 31.615505, 43.123108>,  <35.610664, 31.374081, 43.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898556, 31.615505, 43.123108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470518, -0.060685, 0.880301,
		0.510498, -0.795002, -0.327663,
		0.719726, 0.603563, -0.343084,
		36.114475, 31.796574, 43.020184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308781, 31.018526, 43.351425>,  <35.610664, 31.374081, 43.260342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308781, 31.018526, 43.351425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366043, 31.414068, 43.335091>,  <36.400402, 31.651394, 43.325291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366043, 31.414068, 43.335091>,  <36.308781, 31.018526, 43.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366043, 31.414068, 43.335091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408148, -0.021401, 0.912665,
		0.901621, -0.147323, -0.406664,
		0.143160, 0.988857, -0.040835,
		36.408993, 31.710726, 43.322842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888893, 31.086416, 43.625465>,  <36.308781, 31.018526, 43.351425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888893, 31.086416, 43.625465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787968, 31.472639, 43.650871>,  <36.727413, 31.704372, 43.666115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787968, 31.472639, 43.650871>,  <36.888893, 31.086416, 43.625465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787968, 31.472639, 43.650871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449598, 0.058855, 0.891290,
		0.856855, 0.253441, -0.448963,
		-0.252313, 0.965559, 0.063516,
		36.712273, 31.762306, 43.669926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417084, 31.518791, 43.957245>,  <36.888893, 31.086416, 43.625465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417084, 31.518791, 43.957245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085796, 31.740139, 43.992668>,  <36.887024, 31.872948, 44.013924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085796, 31.740139, 43.992668>,  <37.417084, 31.518791, 43.957245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085796, 31.740139, 43.992668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321187, 0.339215, 0.884179,
		0.459238, 0.760733, -0.458678,
		-0.828214, 0.553370, 0.088557,
		36.837334, 31.906151, 44.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653019, 32.082119, 44.355503>,  <37.417084, 31.518791, 43.957245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653019, 32.082119, 44.355503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257519, 32.116360, 44.404579>,  <37.020218, 32.136902, 44.434025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257519, 32.116360, 44.404579>,  <37.653019, 32.082119, 44.355503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257519, 32.116360, 44.404579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126379, 0.039054, 0.991213,
		0.080053, 0.995564, -0.049432,
		-0.988747, 0.085597, 0.122692,
		36.960896, 32.142040, 44.441387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621155, 32.650780, 44.752728>,  <37.653019, 32.082119, 44.355503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621155, 32.650780, 44.752728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286072, 32.440002, 44.810108>,  <37.085022, 32.313538, 44.844536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286072, 32.440002, 44.810108>,  <37.621155, 32.650780, 44.752728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286072, 32.440002, 44.810108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106924, 0.099334, 0.989293,
		-0.535550, 0.844076, -0.026870,
		-0.837707, -0.526943, 0.143450,
		37.034760, 32.281921, 44.853142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912731, 33.420292, 44.843910>,  <37.621155, 32.650780, 44.752728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912731, 33.420292, 44.843910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296936, 33.310406, 44.861595>,  <38.527458, 33.244473, 44.872208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296936, 33.310406, 44.861595>,  <37.912731, 33.420292, 44.843910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296936, 33.310406, 44.861595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071840, 0.091334, -0.993226,
		0.268817, 0.957178, 0.107462,
		0.960508, -0.274716, 0.044211,
		38.585087, 33.227989, 44.874859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314068, 33.887589, 44.316143>,  <37.912731, 33.420292, 44.843910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314068, 33.887589, 44.316143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561214, 33.585552, 44.403851>,  <38.709503, 33.404331, 44.456474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561214, 33.585552, 44.403851>,  <38.314068, 33.887589, 44.316143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561214, 33.585552, 44.403851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358320, 0.022170, -0.933336,
		0.699891, 0.655246, 0.284262,
		0.617867, -0.755090, 0.219271,
		38.746574, 33.359024, 44.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062450, 34.073925, 44.160114>,  <38.314068, 33.887589, 44.316143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062450, 34.073925, 44.160114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045544, 33.674332, 44.153931>,  <39.035400, 33.434574, 44.150223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045544, 33.674332, 44.153931>,  <39.062450, 34.073925, 44.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045544, 33.674332, 44.153931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271023, 0.003424, -0.962567,
		0.961644, -0.044872, 0.270604,
		-0.042266, -0.998987, -0.015454,
		39.032864, 33.374634, 44.149296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671944, 33.817825, 43.789478>,  <39.062450, 34.073925, 44.160114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671944, 33.817825, 43.789478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365459, 33.562675, 43.758404>,  <39.181568, 33.409588, 43.739758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365459, 33.562675, 43.758404>,  <39.671944, 33.817825, 43.789478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365459, 33.562675, 43.758404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120001, -0.023266, -0.992501,
		0.631280, -0.769792, 0.094372,
		-0.766215, -0.637871, -0.077688,
		39.135593, 33.371315, 43.735096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778744, 33.566040, 43.146488>,  <39.671944, 33.817825, 43.789478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778744, 33.566040, 43.146488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414200, 33.416901, 43.216244>,  <39.195473, 33.327415, 43.258095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414200, 33.416901, 43.216244>,  <39.778744, 33.566040, 43.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414200, 33.416901, 43.216244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136811, -0.125190, -0.982655,
		0.388215, -0.919407, 0.063082,
		-0.911357, -0.372851, 0.174385,
		39.140793, 33.305046, 43.268559>
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
