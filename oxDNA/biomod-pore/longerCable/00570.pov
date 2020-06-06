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
	<23.961105, 35.086933, 34.912437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311907, 34.919285, 34.818455>,  <24.522388, 34.818695, 34.762066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311907, 34.919285, 34.818455>,  <23.961105, 35.086933, 34.912437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311907, 34.919285, 34.818455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401375, 0.370239, 0.837748,
		-0.264129, -0.829012, 0.492926,
		0.877003, -0.419122, -0.234953,
		24.575008, 34.793549, 34.747971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.165756, 34.714733, 35.525928>,  <23.961105, 35.086933, 34.912437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.165756, 34.714733, 35.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481361, 34.758217, 35.284058>,  <24.670725, 34.784306, 35.138935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481361, 34.758217, 35.284058>,  <24.165756, 34.714733, 35.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481361, 34.758217, 35.284058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512801, 0.425531, 0.745626,
		0.338364, -0.898391, 0.280007,
		0.789015, 0.108705, -0.604680,
		24.718065, 34.790829, 35.102654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552753, 34.996487, 35.904449>,  <24.165756, 34.714733, 35.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552753, 34.996487, 35.904449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793642, 34.983982, 35.585361>,  <24.938175, 34.976479, 35.393909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793642, 34.983982, 35.585361>,  <24.552753, 34.996487, 35.904449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793642, 34.983982, 35.585361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606790, 0.667257, 0.431941,
		0.518779, -0.744171, 0.420806,
		0.602224, -0.031259, -0.797715,
		24.974310, 34.974606, 35.346046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180897, 34.815613, 36.207241>,  <24.552753, 34.996487, 35.904449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180897, 34.815613, 36.207241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184580, 35.038879, 35.875370>,  <25.186789, 35.172840, 35.676247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184580, 35.038879, 35.875370>,  <25.180897, 34.815613, 36.207241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184580, 35.038879, 35.875370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510264, 0.710937, 0.483942,
		0.859969, -0.427811, -0.278266,
		0.009207, 0.558164, -0.829680,
		25.187342, 35.206329, 35.626465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883488, 35.164276, 35.924683>,  <25.180897, 34.815613, 36.207241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883488, 35.164276, 35.924683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547310, 35.378693, 35.892895>,  <25.345604, 35.507343, 35.873821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547310, 35.378693, 35.892895>,  <25.883488, 35.164276, 35.924683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547310, 35.378693, 35.892895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513588, 0.834705, 0.198734,
		0.172867, 0.126208, -0.976826,
		-0.840443, 0.536040, -0.079474,
		25.295177, 35.539505, 35.869053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184776, 34.499332, 35.921402>,  <25.883488, 35.164276, 35.924683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184776, 34.499332, 35.921402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065596, 34.622707, 35.560051>,  <25.994087, 34.696732, 35.343239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065596, 34.622707, 35.560051>,  <26.184776, 34.499332, 35.921402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065596, 34.622707, 35.560051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649143, -0.628390, -0.428647,
		-0.699885, -0.714138, -0.012990,
		-0.297951, 0.308436, -0.903378,
		25.976210, 34.715237, 35.289036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177757, 33.866383, 35.618820>,  <26.184776, 34.499332, 35.921402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177757, 33.866383, 35.618820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215164, 34.139648, 35.329121>,  <26.237608, 34.303608, 35.155300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215164, 34.139648, 35.329121>,  <26.177757, 33.866383, 35.618820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215164, 34.139648, 35.329121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672889, -0.579518, -0.459759,
		-0.733808, -0.444345, -0.513890,
		0.093517, 0.683166, -0.724250,
		26.243219, 34.344597, 35.111847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020739, 33.520466, 34.946571>,  <26.177757, 33.866383, 35.618820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020739, 33.520466, 34.946571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272093, 33.830505, 34.920197>,  <26.422905, 34.016529, 34.904369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272093, 33.830505, 34.920197>,  <26.020739, 33.520466, 34.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272093, 33.830505, 34.920197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694230, -0.597023, -0.402005,
		-0.350963, 0.206836, -0.913260,
		0.628386, 0.775102, -0.065941,
		26.460609, 34.063034, 34.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242289, 33.462433, 34.303650>,  <26.020739, 33.520466, 34.946571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242289, 33.462433, 34.303650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500086, 33.726040, 34.458736>,  <26.654764, 33.884205, 34.551788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500086, 33.726040, 34.458736>,  <26.242289, 33.462433, 34.303650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500086, 33.726040, 34.458736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652106, -0.208996, -0.728751,
		-0.399231, 0.722506, -0.564447,
		0.644494, 0.659019, 0.387713,
		26.693434, 33.923744, 34.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529646, 33.814026, 33.727501>,  <26.242289, 33.462433, 34.303650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529646, 33.814026, 33.727501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814201, 33.865261, 34.003914>,  <26.984934, 33.896000, 34.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814201, 33.865261, 34.003914>,  <26.529646, 33.814026, 33.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814201, 33.865261, 34.003914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700731, -0.053883, -0.711388,
		-0.053883, 0.990298, -0.128085,
		0.711388, 0.128085, 0.691029,
		27.027618, 33.903687, 34.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926289, 34.476517, 33.500130>,  <26.529646, 33.814026, 33.727501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926289, 34.476517, 33.500130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160381, 34.240841, 33.722973>,  <27.300837, 34.099438, 33.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160381, 34.240841, 33.722973>,  <26.926289, 34.476517, 33.500130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160381, 34.240841, 33.722973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746447, 0.123082, -0.653963,
		0.316736, 0.798568, 0.511827,
		0.585231, -0.589185, 0.557105,
		27.335951, 34.064087, 33.890102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477577, 34.351986, 33.093449>,  <26.926289, 34.476517, 33.500130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477577, 34.351986, 33.093449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552452, 34.099083, 33.394173>,  <27.597378, 33.947342, 33.574608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552452, 34.099083, 33.394173>,  <27.477577, 34.351986, 33.093449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552452, 34.099083, 33.394173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820017, -0.320816, -0.473972,
		0.540863, 0.705217, 0.458406,
		0.187189, -0.632254, 0.751808,
		27.608608, 33.909405, 33.619717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858715, 33.726170, 32.980988>,  <27.477577, 34.351986, 33.093449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858715, 33.726170, 32.980988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168446, 33.645950, 33.221054>,  <28.354284, 33.597820, 33.365093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168446, 33.645950, 33.221054>,  <27.858715, 33.726170, 32.980988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168446, 33.645950, 33.221054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573191, 0.179536, 0.799512,
		-0.268091, -0.963093, 0.024068,
		0.774325, -0.200546, 0.600168,
		28.400743, 33.585785, 33.401104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745041, 33.229389, 33.432156>,  <27.858715, 33.726170, 32.980988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745041, 33.229389, 33.432156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999550, 33.512035, 33.555992>,  <28.152256, 33.681622, 33.630295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999550, 33.512035, 33.555992>,  <27.745041, 33.229389, 33.432156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999550, 33.512035, 33.555992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621176, 0.231275, 0.748767,
		0.457490, -0.668733, 0.586087,
		0.636273, 0.706617, 0.309595,
		28.190432, 33.724022, 33.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952936, 33.136501, 34.113911>,  <27.745041, 33.229389, 33.432156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952936, 33.136501, 34.113911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950705, 33.527172, 34.028046>,  <27.949366, 33.761574, 33.976528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950705, 33.527172, 34.028046>,  <27.952936, 33.136501, 34.113911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950705, 33.527172, 34.028046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596626, 0.169022, 0.784519,
		0.802500, 0.132450, 0.581765,
		-0.005578, 0.976672, -0.214663,
		27.949032, 33.820175, 33.963646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069981, 33.502728, 34.845234>,  <27.952936, 33.136501, 34.113911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069981, 33.502728, 34.845234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865917, 33.704651, 34.566692>,  <27.743479, 33.825806, 34.399567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865917, 33.704651, 34.566692>,  <28.069981, 33.502728, 34.845234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865917, 33.704651, 34.566692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650502, 0.303195, 0.696362,
		0.562661, 0.808233, 0.173703,
		-0.510157, 0.504809, -0.696353,
		27.712870, 33.856094, 34.357788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802603, 34.043224, 35.190475>,  <28.069981, 33.502728, 34.845234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802603, 34.043224, 35.190475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553440, 34.038612, 34.877590>,  <27.403942, 34.035843, 34.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553440, 34.038612, 34.877590>,  <27.802603, 34.043224, 35.190475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553440, 34.038612, 34.877590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743122, 0.321171, 0.587043,
		0.244454, 0.946951, -0.208629,
		-0.622906, -0.011532, -0.782211,
		27.366568, 34.035152, 34.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482571, 34.784897, 35.075291>,  <27.802603, 34.043224, 35.190475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482571, 34.784897, 35.075291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238180, 34.511742, 34.915108>,  <27.091545, 34.347847, 34.818996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238180, 34.511742, 34.915108>,  <27.482571, 34.784897, 35.075291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238180, 34.511742, 34.915108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722639, 0.274535, 0.634369,
		-0.323267, 0.676970, -0.661219,
		-0.610976, -0.682893, -0.400457,
		27.054888, 34.306873, 34.794971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670156, 34.777290, 34.345848>,  <27.482571, 34.784897, 35.075291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670156, 34.777290, 34.345848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864296, 34.444118, 34.452175>,  <27.980780, 34.244213, 34.515972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864296, 34.444118, 34.452175>,  <27.670156, 34.777290, 34.345848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864296, 34.444118, 34.452175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522297, 0.032387, -0.852148,
		0.701172, 0.552428, 0.450757,
		0.485349, -0.832931, 0.265822,
		28.009901, 34.194241, 34.531921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385700, 34.795860, 34.424870>,  <27.670156, 34.777290, 34.345848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385700, 34.795860, 34.424870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320482, 34.421093, 34.301193>,  <28.281351, 34.196232, 34.226986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320482, 34.421093, 34.301193>,  <28.385700, 34.795860, 34.424870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320482, 34.421093, 34.301193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643039, 0.136768, -0.753522,
		0.748276, -0.321683, 0.580176,
		-0.163046, -0.936918, -0.309194,
		28.271568, 34.140018, 34.208435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909647, 34.663864, 34.039684>,  <28.385700, 34.795860, 34.424870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909647, 34.663864, 34.039684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703213, 34.342659, 33.920471>,  <28.579353, 34.149937, 33.848942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703213, 34.342659, 33.920471>,  <28.909647, 34.663864, 34.039684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703213, 34.342659, 33.920471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510923, -0.009337, -0.859576,
		0.687470, -0.595885, 0.415098,
		-0.516084, -0.803016, -0.298032,
		28.548388, 34.101753, 33.831062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358004, 34.162189, 34.073399>,  <28.909647, 34.663864, 34.039684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358004, 34.162189, 34.073399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073389, 34.077728, 33.805328>,  <28.902620, 34.027050, 33.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073389, 34.077728, 33.805328>,  <29.358004, 34.162189, 34.073399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073389, 34.077728, 33.805328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702450, -0.190992, -0.685628,
		0.016776, -0.958611, 0.284223,
		-0.711535, -0.211155, -0.670173,
		28.859928, 34.014381, 33.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716761, 33.539871, 33.808498>,  <29.358004, 34.162189, 34.073399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716761, 33.539871, 33.808498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773460, 33.409405, 34.182346>,  <29.807480, 33.331123, 34.406654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773460, 33.409405, 34.182346>,  <29.716761, 33.539871, 33.808498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773460, 33.409405, 34.182346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957926, -0.192840, -0.212581,
		0.249571, 0.925433, 0.285113,
		0.141748, -0.326171, 0.934623,
		29.815985, 33.311554, 34.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182482, 33.958229, 34.076252>,  <29.716761, 33.539871, 33.808498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182482, 33.958229, 34.076252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232826, 33.601578, 34.250217>,  <30.263033, 33.387585, 34.354599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232826, 33.601578, 34.250217>,  <30.182482, 33.958229, 34.076252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232826, 33.601578, 34.250217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976949, 0.035204, -0.210552,
		0.172423, 0.451393, 0.875508,
		0.125863, -0.891631, 0.434918,
		30.270586, 33.334087, 34.380692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400511, 34.558075, 34.455502>,  <30.182482, 33.958229, 34.076252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400511, 34.558075, 34.455502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717428, 34.802113, 34.452457>,  <30.907579, 34.948536, 34.450630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717428, 34.802113, 34.452457>,  <30.400511, 34.558075, 34.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717428, 34.802113, 34.452457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275060, -0.368282, -0.888094,
		-0.544619, 0.701540, -0.459599,
		0.792296, 0.610090, -0.007608,
		30.955116, 34.985138, 34.450176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415634, 34.989380, 33.747978>,  <30.400511, 34.558075, 34.455502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415634, 34.989380, 33.747978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774843, 34.905720, 33.902798>,  <30.990368, 34.855522, 33.995689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774843, 34.905720, 33.902798>,  <30.415634, 34.989380, 33.747978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774843, 34.905720, 33.902798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355820, -0.172123, -0.918567,
		0.258742, 0.962615, -0.080150,
		0.898023, -0.209153, 0.387053,
		31.044250, 34.842976, 34.018913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885466, 35.266586, 33.428268>,  <30.415634, 34.989380, 33.747978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885466, 35.266586, 33.428268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073053, 34.943626, 33.571472>,  <31.185606, 34.749851, 33.657394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073053, 34.943626, 33.571472>,  <30.885466, 35.266586, 33.428268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073053, 34.943626, 33.571472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227329, -0.281343, -0.932292,
		0.853458, 0.518601, 0.051605,
		0.468969, -0.807402, 0.358008,
		31.213743, 34.701405, 33.678875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508614, 35.068504, 33.024185>,  <30.885466, 35.266586, 33.428268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508614, 35.068504, 33.024185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377960, 34.736038, 33.204178>,  <31.299568, 34.536560, 33.312172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377960, 34.736038, 33.204178>,  <31.508614, 35.068504, 33.024185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377960, 34.736038, 33.204178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174252, -0.520887, -0.835651,
		0.928949, -0.194544, 0.314972,
		-0.326636, -0.831161, 0.449978,
		31.279970, 34.486691, 33.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937496, 34.668354, 32.790546>,  <31.508614, 35.068504, 33.024185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937496, 34.668354, 32.790546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672079, 34.849735, 32.552525>,  <31.512829, 34.958565, 32.409710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672079, 34.849735, 32.552525>,  <31.937496, 34.668354, 32.790546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672079, 34.849735, 32.552525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692601, 0.071585, -0.717760,
		-0.282874, -0.888400, -0.361562,
		-0.663541, 0.453454, -0.595057,
		31.473017, 34.985771, 32.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094864, 34.326313, 32.180950>,  <31.937496, 34.668354, 32.790546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094864, 34.326313, 32.180950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915272, 34.683052, 32.158943>,  <31.807516, 34.897095, 32.145741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915272, 34.683052, 32.158943>,  <32.094864, 34.326313, 32.180950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915272, 34.683052, 32.158943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758328, 0.347752, -0.551368,
		-0.472604, -0.289273, -0.832446,
		-0.448980, 0.891846, -0.055014,
		31.780577, 34.950607, 32.142437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026299, 34.600029, 31.409140>,  <32.094864, 34.326313, 32.180950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026299, 34.600029, 31.409140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078224, 34.834850, 31.728769>,  <32.109379, 34.975742, 31.920547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078224, 34.834850, 31.728769>,  <32.026299, 34.600029, 31.409140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078224, 34.834850, 31.728769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748446, 0.470586, -0.467309,
		-0.650367, 0.658728, -0.378285,
		0.129814, 0.587049, 0.799076,
		32.117168, 35.010963, 31.968493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436563, 34.320415, 31.128052>,  <32.026299, 34.600029, 31.409140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436563, 34.320415, 31.128052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273882, 34.117077, 30.824429>,  <31.176273, 33.995071, 30.642254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273882, 34.117077, 30.824429>,  <31.436563, 34.320415, 31.128052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273882, 34.117077, 30.824429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550104, -0.527085, 0.647741,
		-0.729367, 0.681001, -0.065278,
		-0.406705, -0.508350, -0.759059,
		31.151871, 33.964573, 30.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718910, 34.259693, 31.260202>,  <31.436563, 34.320415, 31.128052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718910, 34.259693, 31.260202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810911, 33.969868, 31.000322>,  <30.866112, 33.795975, 30.844395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810911, 33.969868, 31.000322>,  <30.718910, 34.259693, 31.260202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810911, 33.969868, 31.000322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498817, -0.661007, 0.560581,
		-0.835631, 0.195146, -0.513457,
		0.230004, -0.724560, -0.649701,
		30.879911, 33.752499, 30.805412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078323, 34.026535, 31.001221>,  <30.718910, 34.259693, 31.260202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078323, 34.026535, 31.001221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334982, 33.729961, 30.922676>,  <30.488977, 33.552017, 30.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334982, 33.729961, 30.922676>,  <30.078323, 34.026535, 31.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334982, 33.729961, 30.922676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550559, -0.623478, 0.555121,
		-0.534015, -0.248085, -0.808259,
		0.641649, -0.741437, -0.196361,
		30.527475, 33.507530, 30.863768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715155, 33.495102, 30.590332>,  <30.078323, 34.026535, 31.001221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715155, 33.495102, 30.590332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028400, 33.391945, 30.816685>,  <30.216349, 33.330051, 30.952496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028400, 33.391945, 30.816685>,  <29.715155, 33.495102, 30.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028400, 33.391945, 30.816685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534821, -0.743629, 0.401227,
		0.317332, -0.616852, -0.720274,
		0.783114, -0.257895, 0.565882,
		30.263334, 33.314575, 30.986450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897875, 32.792870, 30.353336>,  <29.715155, 33.495102, 30.590332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897875, 32.792870, 30.353336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966673, 32.916763, 30.727392>,  <30.007952, 32.991100, 30.951826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966673, 32.916763, 30.727392>,  <29.897875, 32.792870, 30.353336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966673, 32.916763, 30.727392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544638, -0.761105, 0.352262,
		0.820846, -0.569899, 0.037787,
		0.171993, 0.309733, 0.935138,
		30.018270, 33.009682, 31.007935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509090, 32.392647, 30.796535>,  <29.897875, 32.792870, 30.353336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509090, 32.392647, 30.796535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826595, 32.509598, 31.009874>,  <30.017097, 32.579769, 31.137878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826595, 32.509598, 31.009874>,  <29.509090, 32.392647, 30.796535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826595, 32.509598, 31.009874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362742, -0.476309, 0.800967,
		0.488224, -0.829243, -0.272017,
		0.793760, 0.292379, 0.533347,
		30.064724, 32.597313, 31.169878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773073, 31.830593, 31.214052>,  <29.509090, 32.392647, 30.796535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773073, 31.830593, 31.214052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905880, 32.153587, 31.409082>,  <29.985565, 32.347385, 31.526100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905880, 32.153587, 31.409082>,  <29.773073, 31.830593, 31.214052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905880, 32.153587, 31.409082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469786, -0.306676, 0.827799,
		0.817964, -0.503900, 0.277524,
		0.332018, 0.807487, 0.487575,
		30.005486, 32.395832, 31.555355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926029, 31.571041, 31.814108>,  <29.773073, 31.830593, 31.214052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926029, 31.571041, 31.814108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862549, 31.962044, 31.869675>,  <29.824461, 32.196644, 31.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862549, 31.962044, 31.869675>,  <29.926029, 31.571041, 31.814108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862549, 31.962044, 31.869675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620123, -0.208172, 0.756381,
		0.768285, 0.033893, 0.639210,
		-0.158702, 0.977505, 0.138918,
		29.814938, 32.255295, 31.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827290, 31.757168, 32.504196>,  <29.926029, 31.571041, 31.814108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827290, 31.757168, 32.504196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628202, 32.041466, 32.305351>,  <29.508751, 32.212044, 32.186043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628202, 32.041466, 32.305351>,  <29.827290, 31.757168, 32.504196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628202, 32.041466, 32.305351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798898, -0.152517, 0.581807,
		0.337699, 0.686716, 0.643723,
		-0.497716, 0.710746, -0.497112,
		29.478888, 32.254688, 32.156219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480581, 32.162155, 33.035336>,  <29.827290, 31.757168, 32.504196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480581, 32.162155, 33.035336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296356, 32.161430, 32.680286>,  <29.185822, 32.160995, 32.467255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296356, 32.161430, 32.680286>,  <29.480581, 32.162155, 33.035336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296356, 32.161430, 32.680286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852251, -0.278599, 0.442776,
		-0.248094, 0.960406, 0.126768,
		-0.460562, -0.001812, -0.887626,
		29.158188, 32.160885, 32.413998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468332, 32.872604, 32.833916>,  <29.480581, 32.162155, 33.035336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468332, 32.872604, 32.833916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679504, 32.628948, 32.597195>,  <29.806208, 32.482754, 32.455162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679504, 32.628948, 32.597195>,  <29.468332, 32.872604, 32.833916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679504, 32.628948, 32.597195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325762, 0.788766, -0.521275,
		0.784327, 0.082409, 0.614850,
		0.527930, -0.609145, -0.591805,
		29.837883, 32.446205, 32.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789452, 33.275524, 32.396568>,  <29.468332, 32.872604, 32.833916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789452, 33.275524, 32.396568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940802, 32.930344, 32.262619>,  <30.031612, 32.723236, 32.182247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940802, 32.930344, 32.262619>,  <29.789452, 33.275524, 32.396568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940802, 32.930344, 32.262619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371759, 0.472983, -0.798800,
		0.847719, 0.177753, 0.499776,
		0.378375, -0.862955, -0.334876,
		30.054314, 32.671455, 32.162155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378588, 33.523518, 32.061535>,  <29.789452, 33.275524, 32.396568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378588, 33.523518, 32.061535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289145, 33.158897, 31.923502>,  <30.235479, 32.940125, 31.840683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289145, 33.158897, 31.923502>,  <30.378588, 33.523518, 32.061535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289145, 33.158897, 31.923502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506650, 0.193748, -0.840100,
		0.832650, -0.362688, 0.418512,
		-0.223608, -0.911548, -0.345080,
		30.222061, 32.885433, 31.819979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032598, 33.209473, 31.756590>,  <30.378588, 33.523518, 32.061535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032598, 33.209473, 31.756590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720020, 33.031132, 31.581978>,  <30.532473, 32.924126, 31.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720020, 33.031132, 31.581978>,  <31.032598, 33.209473, 31.756590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720020, 33.031132, 31.581978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373946, 0.225412, -0.899641,
		0.499507, -0.866258, -0.009422,
		-0.781446, -0.445854, -0.436529,
		30.485586, 32.897377, 31.451019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325838, 32.716240, 31.270550>,  <31.032598, 33.209473, 31.756590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325838, 32.716240, 31.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966383, 32.876099, 31.198183>,  <30.750710, 32.972015, 31.154764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966383, 32.876099, 31.198183>,  <31.325838, 32.716240, 31.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966383, 32.876099, 31.198183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329475, 0.342560, -0.879829,
		-0.289649, -0.850254, -0.439512,
		-0.898638, 0.399650, -0.180915,
		30.696793, 32.995995, 31.143909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241377, 32.416142, 30.679762>,  <31.325838, 32.716240, 31.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241377, 32.416142, 30.679762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040249, 32.760483, 30.710997>,  <30.919573, 32.967087, 30.729738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040249, 32.760483, 30.710997>,  <31.241377, 32.416142, 30.679762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040249, 32.760483, 30.710997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457245, 0.341559, -0.821136,
		-0.733552, -0.377178, -0.565365,
		-0.502820, 0.860856, 0.078089,
		30.889402, 33.018742, 30.734423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164579, 32.729431, 30.052889>,  <31.241377, 32.416142, 30.679762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164579, 32.729431, 30.052889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073404, 33.043823, 30.282768>,  <31.018700, 33.232460, 30.420696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073404, 33.043823, 30.282768>,  <31.164579, 32.729431, 30.052889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073404, 33.043823, 30.282768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457486, 0.607479, -0.649365,
		-0.859506, 0.114902, -0.498043,
		-0.227938, 0.785981, 0.574698,
		31.005022, 33.279617, 30.455177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878942, 33.349110, 29.530125>,  <31.164579, 32.729431, 30.052889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878942, 33.349110, 29.530125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980965, 33.519100, 29.877537>,  <31.042177, 33.621094, 30.085983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980965, 33.519100, 29.877537>,  <30.878942, 33.349110, 29.530125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980965, 33.519100, 29.877537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513703, 0.701429, -0.494071,
		-0.819180, 0.572181, -0.039408,
		0.255056, 0.424977, 0.868528,
		31.057482, 33.646595, 30.138096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859058, 34.060345, 29.321098>,  <30.878942, 33.349110, 29.530125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859058, 34.060345, 29.321098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095118, 33.956230, 29.626772>,  <31.236753, 33.893761, 29.810177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095118, 33.956230, 29.626772>,  <30.859058, 34.060345, 29.321098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095118, 33.956230, 29.626772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670817, 0.684753, -0.284813,
		-0.449146, 0.680710, 0.578707,
		0.590146, -0.260284, 0.764186,
		31.272161, 33.878143, 29.856028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892363, 34.575512, 29.848907>,  <30.859058, 34.060345, 29.321098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892363, 34.575512, 29.848907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227972, 34.365223, 29.792822>,  <31.429338, 34.239052, 29.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227972, 34.365223, 29.792822>,  <30.892363, 34.575512, 29.848907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227972, 34.365223, 29.792822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432235, 0.800540, -0.415101,
		0.330471, 0.287675, 0.898906,
		0.839024, -0.525718, -0.140212,
		31.479679, 34.207508, 29.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514093, 34.860394, 30.111641>,  <30.892363, 34.575512, 29.848907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514093, 34.860394, 30.111641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598616, 34.638611, 29.789665>,  <31.649328, 34.505539, 29.596479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598616, 34.638611, 29.789665>,  <31.514093, 34.860394, 30.111641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598616, 34.638611, 29.789665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393275, 0.802159, -0.449306,
		0.894810, -0.221621, 0.387556,
		0.211306, -0.554460, -0.804938,
		31.662006, 34.472275, 29.548183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182915, 34.861076, 30.037621>,  <31.514093, 34.860394, 30.111641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182915, 34.861076, 30.037621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048779, 34.780659, 29.669464>,  <31.968296, 34.732407, 29.448570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048779, 34.780659, 29.669464>,  <32.182915, 34.861076, 30.037621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048779, 34.780659, 29.669464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594010, 0.713170, -0.372211,
		0.731230, -0.671541, -0.119730,
		-0.335343, -0.201051, -0.920393,
		31.948175, 34.720345, 29.393347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783257, 34.617313, 29.570150>,  <32.182915, 34.861076, 30.037621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783257, 34.617313, 29.570150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477684, 34.800400, 29.388199>,  <32.294342, 34.910252, 29.279028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477684, 34.800400, 29.388199>,  <32.783257, 34.617313, 29.570150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477684, 34.800400, 29.388199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642366, 0.472216, -0.603637,
		-0.061491, -0.753333, -0.654758,
		-0.763927, 0.457712, -0.454879,
		32.248505, 34.937714, 29.251736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999878, 34.466629, 28.872831>,  <32.783257, 34.617313, 29.570150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999878, 34.466629, 28.872831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757881, 34.785122, 28.873053>,  <32.612682, 34.976215, 28.873186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757881, 34.785122, 28.873053>,  <32.999878, 34.466629, 28.872831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757881, 34.785122, 28.873053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635658, 0.483409, -0.601876,
		-0.479498, -0.363781, -0.798590,
		-0.604996, 0.796228, 0.000554,
		32.576382, 35.023991, 28.873219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767128, 34.623863, 28.150269>,  <32.999878, 34.466629, 28.872831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767128, 34.623863, 28.150269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843948, 34.909481, 28.419565>,  <32.890041, 35.080853, 28.581144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843948, 34.909481, 28.419565>,  <32.767128, 34.623863, 28.150269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843948, 34.909481, 28.419565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724657, 0.359437, -0.587943,
		-0.661805, 0.600788, -0.448406,
		0.192056, 0.714044, 0.673242,
		32.901566, 35.123695, 28.621538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876160, 35.214108, 27.811035>,  <32.767128, 34.623863, 28.150269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876160, 35.214108, 27.811035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069199, 35.284695, 28.154188>,  <33.185020, 35.327049, 28.360079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069199, 35.284695, 28.154188>,  <32.876160, 35.214108, 27.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069199, 35.284695, 28.154188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779376, 0.360356, -0.512559,
		-0.399595, 0.915970, 0.036369,
		0.482595, 0.176471, 0.857881,
		33.213978, 35.337635, 28.411552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035881, 35.914429, 27.826509>,  <32.876160, 35.214108, 27.811035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035881, 35.914429, 27.826509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291588, 35.706158, 28.052866>,  <33.445011, 35.581196, 28.188681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291588, 35.706158, 28.052866>,  <33.035881, 35.914429, 27.826509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291588, 35.706158, 28.052866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768799, 0.448942, -0.455411,
		-0.016929, 0.726185, 0.687291,
		0.639266, -0.520679, 0.565891,
		33.483368, 35.549953, 28.222633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659454, 36.259396, 28.168459>,  <33.035881, 35.914429, 27.826509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659454, 36.259396, 28.168459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781750, 35.881554, 28.120712>,  <33.855125, 35.654850, 28.092064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781750, 35.881554, 28.120712>,  <33.659454, 36.259396, 28.168459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781750, 35.881554, 28.120712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803201, 0.323207, -0.500405,
		0.511264, 0.057117, 0.857523,
		0.305739, -0.944603, -0.119368,
		33.873470, 35.598171, 28.084902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397907, 36.296993, 28.210802>,  <33.659454, 36.259396, 28.168459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397907, 36.296993, 28.210802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344082, 35.935596, 28.048029>,  <34.311787, 35.718758, 27.950365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344082, 35.935596, 28.048029>,  <34.397907, 36.296993, 28.210802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344082, 35.935596, 28.048029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836991, 0.116183, -0.534741,
		0.530413, -0.412556, 0.740580,
		-0.134568, -0.903492, -0.406931,
		34.303711, 35.664547, 27.925949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095444, 36.101204, 28.067242>,  <34.397907, 36.296993, 28.210802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095444, 36.101204, 28.067242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869900, 35.859478, 27.842075>,  <34.734573, 35.714443, 27.706976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869900, 35.859478, 27.842075>,  <35.095444, 36.101204, 28.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869900, 35.859478, 27.842075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657446, 0.084067, -0.748797,
		0.499831, -0.792300, 0.349901,
		-0.563856, -0.604313, -0.562914,
		34.700745, 35.678185, 27.673201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532078, 35.591637, 27.862137>,  <35.095444, 36.101204, 28.067242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532078, 35.591637, 27.862137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235500, 35.588589, 27.593746>,  <35.057556, 35.586761, 27.432713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235500, 35.588589, 27.593746>,  <35.532078, 35.591637, 27.862137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235500, 35.588589, 27.593746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670995, -0.016890, -0.741269,
		-0.005684, -0.999829, 0.017635,
		-0.741440, -0.007620, -0.670976,
		35.013069, 35.586304, 27.392454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798023, 35.240047, 27.224102>,  <35.532078, 35.591637, 27.862137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798023, 35.240047, 27.224102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495316, 35.483273, 27.128141>,  <35.313690, 35.629208, 27.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495316, 35.483273, 27.128141>,  <35.798023, 35.240047, 27.224102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495316, 35.483273, 27.128141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468288, 0.248253, -0.847984,
		-0.456075, -0.754072, -0.472621,
		-0.756770, 0.608067, -0.239901,
		35.268284, 35.665691, 27.056171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505424, 35.050957, 26.627188>,  <35.798023, 35.240047, 27.224102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505424, 35.050957, 26.627188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457146, 35.444916, 26.676836>,  <35.428177, 35.681290, 26.706625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457146, 35.444916, 26.676836>,  <35.505424, 35.050957, 26.627188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457146, 35.444916, 26.676836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348176, 0.159094, -0.923831,
		-0.929627, -0.068290, -0.362121,
		-0.120699, 0.984899, 0.124121,
		35.420937, 35.740387, 26.714073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166073, 35.220692, 26.040810>,  <35.505424, 35.050957, 26.627188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166073, 35.220692, 26.040810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319870, 35.557484, 26.192194>,  <35.412148, 35.759560, 26.283024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319870, 35.557484, 26.192194>,  <35.166073, 35.220692, 26.040810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319870, 35.557484, 26.192194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482826, 0.166004, -0.859838,
		-0.786795, 0.513329, -0.342705,
		0.384489, 0.841984, 0.378459,
		35.435215, 35.810078, 26.305731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884296, 35.728294, 25.665466>,  <35.166073, 35.220692, 26.040810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884296, 35.728294, 25.665466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245468, 35.818974, 25.811525>,  <35.462170, 35.873383, 25.899160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245468, 35.818974, 25.811525>,  <34.884296, 35.728294, 25.665466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245468, 35.818974, 25.811525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359163, 0.068642, -0.930747,
		-0.236064, 0.971543, -0.019443,
		0.902926, 0.226699, 0.365147,
		35.516346, 35.886982, 25.921070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155804, 36.403229, 25.441347>,  <34.884296, 35.728294, 25.665466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155804, 36.403229, 25.441347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463444, 36.153244, 25.494869>,  <35.648029, 36.003254, 25.526983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463444, 36.153244, 25.494869>,  <35.155804, 36.403229, 25.441347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463444, 36.153244, 25.494869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308250, 0.179319, -0.934252,
		0.559876, 0.759783, 0.330559,
		0.769104, -0.624960, 0.133807,
		35.694176, 35.965755, 25.535011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946987, 36.719090, 25.259266>,  <35.155804, 36.403229, 25.441347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946987, 36.719090, 25.259266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835999, 36.341084, 25.190041>,  <35.769405, 36.114281, 25.148506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835999, 36.341084, 25.190041>,  <35.946987, 36.719090, 25.259266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835999, 36.341084, 25.190041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175728, 0.127175, -0.976189,
		0.944525, -0.301280, 0.130778,
		-0.277474, -0.945017, -0.173064,
		35.752758, 36.057579, 25.138121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479446, 36.394524, 24.833246>,  <35.946987, 36.719090, 25.259266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479446, 36.394524, 24.833246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154163, 36.176315, 24.752155>,  <35.958992, 36.045391, 24.703501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154163, 36.176315, 24.752155>,  <36.479446, 36.394524, 24.833246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154163, 36.176315, 24.752155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177250, 0.099631, -0.979110,
		0.554320, -0.832156, 0.015673,
		-0.813210, -0.545519, -0.202727,
		35.910202, 36.012661, 24.691338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771137, 35.932827, 24.285534>,  <36.479446, 36.394524, 24.833246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771137, 35.932827, 24.285534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371891, 35.929634, 24.309864>,  <36.132343, 35.927719, 24.324461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371891, 35.929634, 24.309864>,  <36.771137, 35.932827, 24.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371891, 35.929634, 24.309864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060147, -0.067735, -0.995889,
		0.012068, -0.997671, 0.067127,
		-0.998116, -0.007981, 0.060825,
		36.072456, 35.927242, 24.328112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638309, 35.383190, 23.949465>,  <36.771137, 35.932827, 24.285534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638309, 35.383190, 23.949465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292416, 35.578434, 23.902159>,  <36.084881, 35.695580, 23.873775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292416, 35.578434, 23.902159>,  <36.638309, 35.383190, 23.949465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292416, 35.578434, 23.902159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052772, -0.145874, -0.987895,
		-0.499449, -0.860508, 0.100384,
		-0.864735, 0.488105, -0.118267,
		36.032993, 35.724865, 23.866678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205860, 34.971855, 23.411079>,  <36.638309, 35.383190, 23.949465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205860, 34.971855, 23.411079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099735, 35.357254, 23.425365>,  <36.036060, 35.588493, 23.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099735, 35.357254, 23.425365>,  <36.205860, 34.971855, 23.411079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099735, 35.357254, 23.425365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111834, 0.067544, -0.991429,
		-0.957654, -0.259046, -0.125672,
		-0.265315, 0.963500, 0.035713,
		36.020142, 35.646305, 23.436079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931316, 35.154697, 22.838381>,  <36.205860, 34.971855, 23.411079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931316, 35.154697, 22.838381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944695, 35.543289, 22.932287>,  <35.952721, 35.776443, 22.988630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944695, 35.543289, 22.932287>,  <35.931316, 35.154697, 22.838381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944695, 35.543289, 22.932287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078655, 0.231609, -0.969624,
		-0.996341, 0.050898, -0.068665,
		0.033448, 0.971477, 0.234764,
		35.954727, 35.834732, 23.002716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437050, 35.571903, 22.421452>,  <35.931316, 35.154697, 22.838381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437050, 35.571903, 22.421452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685547, 35.851685, 22.562769>,  <35.834644, 36.019554, 22.647560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685547, 35.851685, 22.562769>,  <35.437050, 35.571903, 22.421452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685547, 35.851685, 22.562769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062952, 0.404844, -0.912216,
		-0.781083, 0.588951, 0.207475,
		0.621245, 0.699455, 0.353293,
		35.871922, 36.061520, 22.668756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148727, 36.214577, 22.450647>,  <35.437050, 35.571903, 22.421452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148727, 36.214577, 22.450647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540226, 36.292648, 22.425455>,  <35.775124, 36.339493, 22.410339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540226, 36.292648, 22.425455>,  <35.148727, 36.214577, 22.450647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540226, 36.292648, 22.425455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135224, 0.383262, -0.913687,
		-0.154197, 0.902782, 0.401509,
		0.978743, 0.195181, -0.062980,
		35.833847, 36.351204, 22.406561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274670, 36.876278, 22.282024>,  <35.148727, 36.214577, 22.450647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274670, 36.876278, 22.282024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594906, 36.679577, 22.145069>,  <35.787048, 36.561558, 22.062895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594906, 36.679577, 22.145069>,  <35.274670, 36.876278, 22.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594906, 36.679577, 22.145069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119490, 0.428909, -0.895410,
		0.587171, 0.757773, 0.284623,
		0.800595, -0.491749, -0.342389,
		35.835083, 36.532051, 22.042353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389065, 37.272316, 21.697964>,  <35.274670, 36.876278, 22.282024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389065, 37.272316, 21.697964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635571, 36.959328, 21.662285>,  <35.783474, 36.771534, 21.640877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635571, 36.959328, 21.662285>,  <35.389065, 37.272316, 21.697964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635571, 36.959328, 21.662285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197890, 0.263484, -0.944148,
		0.762269, 0.564197, 0.317219,
		0.616267, -0.782469, -0.089197,
		35.820450, 36.724586, 21.635527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911835, 37.530609, 21.502747>,  <35.389065, 37.272316, 21.697964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911835, 37.530609, 21.502747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901615, 37.150753, 21.377827>,  <35.895481, 36.922840, 21.302876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901615, 37.150753, 21.377827>,  <35.911835, 37.530609, 21.502747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901615, 37.150753, 21.377827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000340, 0.312391, -0.949954,
		0.999673, -0.024380, -0.007659,
		-0.025552, -0.949641, -0.312298,
		35.893948, 36.865860, 21.284138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198456, 37.531731, 20.857151>,  <35.911835, 37.530609, 21.502747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198456, 37.531731, 20.857151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023148, 37.172325, 20.847431>,  <35.917961, 36.956680, 20.841599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023148, 37.172325, 20.847431>,  <36.198456, 37.531731, 20.857151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023148, 37.172325, 20.847431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064850, 0.058576, -0.996174,
		0.896499, -0.435022, -0.083941,
		-0.438275, -0.898512, -0.024301,
		35.891666, 36.902771, 20.840141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394577, 37.239529, 20.256241>,  <36.198456, 37.531731, 20.857151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394577, 37.239529, 20.256241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088001, 37.002415, 20.355185>,  <35.904057, 36.860146, 20.414551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088001, 37.002415, 20.355185>,  <36.394577, 37.239529, 20.256241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088001, 37.002415, 20.355185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249565, -0.080024, -0.965046,
		0.591855, -0.801379, -0.086604,
		-0.766437, -0.592780, 0.247359,
		35.858070, 36.824581, 20.429392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451614, 36.584396, 19.864601>,  <36.394577, 37.239529, 20.256241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451614, 36.584396, 19.864601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069057, 36.635410, 19.969711>,  <35.839523, 36.666019, 20.032778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069057, 36.635410, 19.969711>,  <36.451614, 36.584396, 19.864601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069057, 36.635410, 19.969711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285586, -0.219512, -0.932875,
		-0.061294, -0.967238, 0.246362,
		-0.956391, 0.127537, 0.262775,
		35.782139, 36.673672, 20.048544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055386, 36.027626, 19.589172>,  <36.451614, 36.584396, 19.864601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055386, 36.027626, 19.589172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779877, 36.304970, 19.673870>,  <35.614571, 36.471378, 19.724689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779877, 36.304970, 19.673870>,  <36.055386, 36.027626, 19.589172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779877, 36.304970, 19.673870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459594, -0.191725, -0.867188,
		-0.560680, -0.694614, 0.450721,
		-0.688775, 0.693364, 0.211744,
		35.573246, 36.512978, 19.737394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332237, 35.673595, 19.557304>,  <36.055386, 36.027626, 19.589172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332237, 35.673595, 19.557304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319393, 36.071484, 19.518320>,  <35.311687, 36.310215, 19.494930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319393, 36.071484, 19.518320>,  <35.332237, 35.673595, 19.557304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319393, 36.071484, 19.518320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346999, -0.102539, -0.932243,
		-0.937316, 0.003883, 0.348460,
		-0.032110, 0.994721, -0.097458,
		35.309761, 36.369900, 19.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682785, 35.687309, 19.285637>,  <35.332237, 35.673595, 19.557304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682785, 35.687309, 19.285637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827713, 36.048981, 19.195135>,  <34.914669, 36.265984, 19.140833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827713, 36.048981, 19.195135>,  <34.682785, 35.687309, 19.285637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827713, 36.048981, 19.195135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525322, -0.002421, -0.850900,
		-0.769912, 0.427151, 0.474106,
		0.362315, 0.904177, -0.226256,
		34.936409, 36.320232, 19.127258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141525, 36.243038, 19.065891>,  <34.682785, 35.687309, 19.285637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141525, 36.243038, 19.065891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490402, 36.333092, 18.892185>,  <34.699730, 36.387123, 18.787962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490402, 36.333092, 18.892185>,  <34.141525, 36.243038, 19.065891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490402, 36.333092, 18.892185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445876, 0.000810, -0.895094,
		-0.201166, 0.974327, 0.101089,
		0.872197, 0.225135, -0.434266,
		34.752060, 36.400631, 18.761906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014050, 36.582787, 18.353600>,  <34.141525, 36.243038, 19.065891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014050, 36.582787, 18.353600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405857, 36.514301, 18.311224>,  <34.640942, 36.473209, 18.285799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405857, 36.514301, 18.311224>,  <34.014050, 36.582787, 18.353600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405857, 36.514301, 18.311224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114659, -0.041845, -0.992523,
		0.165498, 0.984346, -0.060619,
		0.979522, -0.171211, -0.105939,
		34.699715, 36.462936, 18.279442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386154, 37.074707, 17.816248>,  <34.014050, 36.582787, 18.353600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386154, 37.074707, 17.816248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628036, 36.757000, 17.839804>,  <34.773167, 36.566376, 17.853937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628036, 36.757000, 17.839804>,  <34.386154, 37.074707, 17.816248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628036, 36.757000, 17.839804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121747, 0.019111, -0.992377,
		0.787087, 0.607268, 0.108256,
		0.604707, -0.794267, 0.058891,
		34.809448, 36.518719, 17.857471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827385, 37.241875, 17.313683>,  <34.386154, 37.074707, 17.816248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827385, 37.241875, 17.313683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872925, 36.850689, 17.383684>,  <34.900249, 36.615978, 17.425684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872925, 36.850689, 17.383684>,  <34.827385, 37.241875, 17.313683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872925, 36.850689, 17.383684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031808, -0.172470, -0.984501,
		0.992989, 0.117651, 0.011471,
		0.113850, -0.977963, 0.175003,
		34.907078, 36.557301, 17.436186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359879, 36.971687, 16.746592>,  <34.827385, 37.241875, 17.313683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359879, 36.971687, 16.746592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138649, 36.666443, 16.880320>,  <35.005913, 36.483295, 16.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138649, 36.666443, 16.880320>,  <35.359879, 36.971687, 16.746592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138649, 36.666443, 16.880320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032630, -0.381134, -0.923944,
		0.832496, -0.521914, 0.185893,
		-0.553069, -0.763114, 0.334322,
		34.972729, 36.437508, 16.980616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596214, 36.457348, 16.281967>,  <35.359879, 36.971687, 16.746592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596214, 36.457348, 16.281967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276840, 36.299885, 16.464191>,  <35.085217, 36.205406, 16.573526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276840, 36.299885, 16.464191>,  <35.596214, 36.457348, 16.281967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276840, 36.299885, 16.464191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204939, -0.533765, -0.820424,
		0.566131, -0.748416, 0.345499,
		-0.798433, -0.393661, 0.455560,
		35.037312, 36.181786, 16.600859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544933, 35.873322, 15.925353>,  <35.596214, 36.457348, 16.281967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544933, 35.873322, 15.925353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188656, 35.954212, 16.088213>,  <34.974888, 36.002747, 16.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188656, 35.954212, 16.088213>,  <35.544933, 35.873322, 15.925353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188656, 35.954212, 16.088213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448530, -0.244991, -0.859535,
		-0.074074, -0.948200, 0.308917,
		-0.890693, 0.202227, 0.407149,
		34.921448, 36.014881, 16.210358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208160, 35.386055, 15.714287>,  <35.544933, 35.873322, 15.925353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208160, 35.386055, 15.714287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919380, 35.630142, 15.844771>,  <34.746113, 35.776596, 15.923062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919380, 35.630142, 15.844771>,  <35.208160, 35.386055, 15.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919380, 35.630142, 15.844771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589214, -0.294987, -0.752203,
		-0.362786, -0.735260, 0.572520,
		-0.721951, 0.610225, 0.326208,
		34.702793, 35.813210, 15.942635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570965, 34.987785, 15.645123>,  <35.208160, 35.386055, 15.714287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570965, 34.987785, 15.645123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458595, 35.368660, 15.693146>,  <34.391174, 35.597187, 15.721959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458595, 35.368660, 15.693146>,  <34.570965, 34.987785, 15.645123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458595, 35.368660, 15.693146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723841, -0.128075, -0.677976,
		-0.630187, -0.277361, 0.725214,
		-0.280926, 0.952191, 0.120054,
		34.374317, 35.654316, 15.729162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831020, 34.913799, 15.585097>,  <34.570965, 34.987785, 15.645123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831020, 34.913799, 15.585097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938560, 35.291157, 15.507409>,  <34.003086, 35.517570, 15.460796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938560, 35.291157, 15.507409>,  <33.831020, 34.913799, 15.585097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938560, 35.291157, 15.507409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566818, -0.008068, -0.823804,
		-0.778741, 0.331566, 0.532565,
		0.268849, 0.943397, -0.194220,
		34.019215, 35.574177, 15.449143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166225, 35.290192, 15.458436>,  <33.831020, 34.913799, 15.585097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166225, 35.290192, 15.458436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455170, 35.494232, 15.271679>,  <33.628536, 35.616657, 15.159625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455170, 35.494232, 15.271679>,  <33.166225, 35.290192, 15.458436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455170, 35.494232, 15.271679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542064, -0.001527, -0.840336,
		-0.429368, 0.860114, 0.275403,
		0.722365, 0.510099, -0.466892,
		33.671879, 35.647263, 15.131611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888172, 35.674664, 15.018572>,  <33.166225, 35.290192, 15.458436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888172, 35.674664, 15.018572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258934, 35.706017, 14.871763>,  <33.481392, 35.724831, 14.783678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258934, 35.706017, 14.871763>,  <32.888172, 35.674664, 15.018572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258934, 35.706017, 14.871763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367476, -0.009058, -0.929989,
		-0.076223, 0.996882, 0.020409,
		0.926904, 0.078387, -0.367020,
		33.537006, 35.729534, 14.761657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742882, 36.092892, 14.362157>,  <32.888172, 35.674664, 15.018572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742882, 36.092892, 14.362157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105778, 35.929478, 14.322137>,  <33.323517, 35.831429, 14.298125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105778, 35.929478, 14.322137>,  <32.742882, 36.092892, 14.362157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105778, 35.929478, 14.322137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181221, -0.165012, -0.969500,
		0.379565, 0.897703, -0.223741,
		0.907243, -0.408535, -0.100050,
		33.377949, 35.806919, 14.292122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188255, 36.504646, 13.801364>,  <32.742882, 36.092892, 14.362157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188255, 36.504646, 13.801364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302750, 36.124695, 13.851658>,  <33.371445, 35.896725, 13.881834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302750, 36.124695, 13.851658>,  <33.188255, 36.504646, 13.801364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302750, 36.124695, 13.851658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336144, -0.222434, -0.915167,
		0.897261, 0.219687, -0.382963,
		0.286234, -0.949874, 0.125735,
		33.388618, 35.839733, 13.889379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418270, 36.358063, 13.225897>,  <33.188255, 36.504646, 13.801364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418270, 36.358063, 13.225897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370979, 35.988255, 13.370828>,  <33.342606, 35.766369, 13.457787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370979, 35.988255, 13.370828>,  <33.418270, 36.358063, 13.225897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370979, 35.988255, 13.370828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445582, -0.276692, -0.851410,
		0.887400, -0.262107, -0.379237,
		-0.118229, -0.924522, 0.362327,
		33.335510, 35.710899, 13.479526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897282, 35.904480, 12.757595>,  <33.418270, 36.358063, 13.225897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897282, 35.904480, 12.757595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614788, 35.692360, 12.945218>,  <33.445290, 35.565090, 13.057792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614788, 35.692360, 12.945218>,  <33.897282, 35.904480, 12.757595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614788, 35.692360, 12.945218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212193, -0.473526, -0.854838,
		0.675427, -0.703249, 0.221897,
		-0.706238, -0.530296, 0.469056,
		33.402916, 35.533272, 13.085935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042435, 35.200935, 12.510286>,  <33.897282, 35.904480, 12.757595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042435, 35.200935, 12.510286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672527, 35.219021, 12.661420>,  <33.450584, 35.229874, 12.752100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672527, 35.219021, 12.661420>,  <34.042435, 35.200935, 12.510286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672527, 35.219021, 12.661420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346343, -0.511338, -0.786498,
		0.157637, -0.858189, 0.488531,
		-0.924769, 0.045218, 0.377834,
		33.395096, 35.232586, 12.774770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723373, 34.516285, 12.406445>,  <34.042435, 35.200935, 12.510286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723373, 34.516285, 12.406445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417168, 34.772488, 12.430934>,  <33.233444, 34.926208, 12.445627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417168, 34.772488, 12.430934>,  <33.723373, 34.516285, 12.406445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417168, 34.772488, 12.430934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443714, -0.456608, -0.771121,
		-0.465951, -0.617466, 0.633739,
		-0.765511, 0.640503, 0.061222,
		33.187515, 34.964638, 12.449301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158146, 34.045956, 12.370426>,  <33.723373, 34.516285, 12.406445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158146, 34.045956, 12.370426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020519, 34.415447, 12.303082>,  <32.937943, 34.637142, 12.262676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020519, 34.415447, 12.303082>,  <33.158146, 34.045956, 12.370426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020519, 34.415447, 12.303082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482731, -0.327820, -0.812099,
		-0.805350, -0.198143, 0.558704,
		-0.344066, 0.923728, -0.168360,
		32.917301, 34.692566, 12.252575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587032, 33.852783, 11.967306>,  <33.158146, 34.045956, 12.370426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587032, 33.852783, 11.967306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620262, 34.248199, 11.916883>,  <32.640202, 34.485447, 11.886630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620262, 34.248199, 11.916883>,  <32.587032, 33.852783, 11.967306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620262, 34.248199, 11.916883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589929, -0.053165, -0.805703,
		-0.803170, 0.141299, 0.578750,
		0.083075, 0.988539, -0.126057,
		32.645184, 34.544762, 11.879066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949530, 34.016487, 11.784638>,  <32.587032, 33.852783, 11.967306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949530, 34.016487, 11.784638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175327, 34.323792, 11.663899>,  <32.310806, 34.508175, 11.591456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175327, 34.323792, 11.663899>,  <31.949530, 34.016487, 11.784638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175327, 34.323792, 11.663899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477049, 0.005221, -0.878861,
		-0.673623, 0.640110, 0.369448,
		0.564496, 0.768266, -0.301847,
		32.344677, 34.554272, 11.573345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530842, 34.544357, 11.479066>,  <31.949530, 34.016487, 11.784638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530842, 34.544357, 11.479066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899975, 34.606487, 11.338065>,  <32.121456, 34.643764, 11.253465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899975, 34.606487, 11.338065>,  <31.530842, 34.544357, 11.479066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899975, 34.606487, 11.338065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381298, 0.238334, -0.893202,
		-0.054721, 0.958682, 0.279166,
		0.922831, 0.155322, -0.352502,
		32.176823, 34.653084, 11.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395931, 35.008984, 10.921460>,  <31.530842, 34.544357, 11.479066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395931, 35.008984, 10.921460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770906, 34.897774, 10.837635>,  <31.995892, 34.831047, 10.787340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770906, 34.897774, 10.837635>,  <31.395931, 35.008984, 10.921460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770906, 34.897774, 10.837635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155736, 0.203488, -0.966612,
		0.311382, 0.938774, 0.147460,
		0.937437, -0.278021, -0.209563,
		32.052139, 34.814369, 10.774766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705050, 35.483204, 10.428190>,  <31.395931, 35.008984, 10.921460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705050, 35.483204, 10.428190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911997, 35.143028, 10.390070>,  <32.036163, 34.938923, 10.367198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911997, 35.143028, 10.390070>,  <31.705050, 35.483204, 10.428190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911997, 35.143028, 10.390070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025927, 0.095734, -0.995069,
		0.855371, 0.517286, 0.027480,
		0.517366, -0.850441, -0.095300,
		32.067207, 34.887897, 10.361480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194607, 35.569847, 9.791829>,  <31.705050, 35.483204, 10.428190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194607, 35.569847, 9.791829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131321, 35.178249, 9.843264>,  <32.093349, 34.943291, 9.874125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131321, 35.178249, 9.843264>,  <32.194607, 35.569847, 9.791829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131321, 35.178249, 9.843264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323015, -0.071746, -0.943670,
		0.933075, -0.190836, -0.304880,
		-0.158212, -0.978997, 0.128587,
		32.083858, 34.884552, 9.881840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460636, 35.022984, 9.219324>,  <32.194607, 35.569847, 9.791829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460636, 35.022984, 9.219324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136654, 34.889355, 9.412141>,  <31.942265, 34.809177, 9.527831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136654, 34.889355, 9.412141>,  <32.460636, 35.022984, 9.219324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136654, 34.889355, 9.412141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456279, -0.157461, -0.875794,
		0.368482, -0.929302, -0.024894,
		-0.809957, -0.334073, 0.482042,
		31.893667, 34.789135, 9.556753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304779, 34.386906, 9.041880>,  <32.460636, 35.022984, 9.219324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304779, 34.386906, 9.041880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964088, 34.585724, 9.108224>,  <31.759674, 34.705013, 9.148030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964088, 34.585724, 9.108224>,  <32.304779, 34.386906, 9.041880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964088, 34.585724, 9.108224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404529, -0.422551, -0.811053,
		-0.333042, -0.757892, 0.560966,
		-0.851727, 0.497042, 0.165862,
		31.708570, 34.734837, 9.157982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720423, 33.913902, 8.992038>,  <32.304779, 34.386906, 9.041880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720423, 33.913902, 8.992038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609982, 34.291656, 8.920600>,  <31.543716, 34.518311, 8.877737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609982, 34.291656, 8.920600>,  <31.720423, 33.913902, 8.992038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609982, 34.291656, 8.920600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442641, -0.289881, -0.848550,
		-0.853134, -0.155232, 0.498062,
		-0.276101, 0.944389, -0.178595,
		31.527151, 34.574974, 8.867022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690350, 33.268150, 9.331850>,  <31.720423, 33.913902, 8.992038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690350, 33.268150, 9.331850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381523, 33.022549, 9.397471>,  <31.196228, 32.875187, 9.436844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381523, 33.022549, 9.397471>,  <31.690350, 33.268150, 9.331850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381523, 33.022549, 9.397471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168099, -0.051650, -0.984416,
		0.612911, -0.787610, -0.063337,
		-0.772064, -0.614006, 0.164053,
		31.149904, 32.838348, 9.446688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707232, 32.877983, 8.781584>,  <31.690350, 33.268150, 9.331850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707232, 32.877983, 8.781584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341057, 32.827290, 8.934378>,  <31.121351, 32.796875, 9.026053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341057, 32.827290, 8.934378>,  <31.707232, 32.877983, 8.781584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341057, 32.827290, 8.934378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357588, -0.179383, -0.916489,
		0.184672, -0.975582, 0.118895,
		-0.915438, -0.126735, 0.381984,
		31.066425, 32.789268, 9.048973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466854, 32.193851, 8.622553>,  <31.707232, 32.877983, 8.781584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466854, 32.193851, 8.622553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169472, 32.459118, 8.657147>,  <30.991043, 32.618279, 8.677904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169472, 32.459118, 8.657147>,  <31.466854, 32.193851, 8.622553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169472, 32.459118, 8.657147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278791, -0.189770, -0.941415,
		-0.607905, -0.724012, 0.325972,
		-0.743456, 0.663169, 0.086486,
		30.946434, 32.658070, 8.683093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763237, 32.035873, 8.516186>,  <31.466854, 32.193851, 8.622553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763237, 32.035873, 8.516186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772560, 32.384850, 8.320918>,  <30.778154, 32.594234, 8.203757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772560, 32.384850, 8.320918>,  <30.763237, 32.035873, 8.516186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772560, 32.384850, 8.320918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525037, -0.404860, -0.748615,
		-0.850760, 0.273754, 0.448626,
		0.023306, 0.872437, -0.488170,
		30.779552, 32.646580, 8.174467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117607, 32.329342, 8.582032>,  <30.763237, 32.035873, 8.516186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117607, 32.329342, 8.582032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320400, 32.421864, 8.249896>,  <30.442076, 32.477375, 8.050614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320400, 32.421864, 8.249896>,  <30.117607, 32.329342, 8.582032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320400, 32.421864, 8.249896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713429, -0.428003, -0.554827,
		-0.483721, 0.873677, -0.051972,
		0.506984, 0.231303, -0.830341,
		30.472496, 32.491253, 8.000793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002136, 32.189682, 9.342042>,  <30.117607, 32.329342, 8.582032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002136, 32.189682, 9.342042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375040, 32.277905, 9.227324>,  <30.598782, 32.330837, 9.158493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375040, 32.277905, 9.227324>,  <30.002136, 32.189682, 9.342042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375040, 32.277905, 9.227324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311816, -0.087784, 0.946079,
		0.183487, -0.971416, -0.150610,
		0.932257, 0.220556, -0.286795,
		30.654716, 32.344070, 9.141285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446966, 31.711206, 9.614852>,  <30.002136, 32.189682, 9.342042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446966, 31.711206, 9.614852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651970, 32.049877, 9.557617>,  <30.774971, 32.253078, 9.523276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651970, 32.049877, 9.557617>,  <30.446966, 31.711206, 9.614852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651970, 32.049877, 9.557617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236474, 0.021025, 0.971410,
		0.825480, -0.531691, -0.189441,
		0.512507, 0.846677, -0.143087,
		30.805721, 32.303879, 9.514691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895359, 31.662931, 10.067364>,  <30.446966, 31.711206, 9.614852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895359, 31.662931, 10.067364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967394, 32.044083, 9.969719>,  <31.010614, 32.272774, 9.911132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967394, 32.044083, 9.969719>,  <30.895359, 31.662931, 10.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967394, 32.044083, 9.969719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245403, 0.196798, 0.949235,
		0.952547, -0.230852, -0.198398,
		0.180089, 0.952879, -0.244111,
		31.021420, 32.329945, 9.896485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544771, 31.786325, 10.318666>,  <30.895359, 31.662931, 10.067364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544771, 31.786325, 10.318666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356052, 32.138977, 10.323303>,  <31.242821, 32.350567, 10.326085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356052, 32.138977, 10.323303>,  <31.544771, 31.786325, 10.318666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356052, 32.138977, 10.323303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403714, 0.204319, 0.891778,
		0.783850, 0.425420, -0.452324,
		-0.471799, 0.881630, 0.011592,
		31.214512, 32.403465, 10.326781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976587, 32.087372, 10.754487>,  <31.544771, 31.786325, 10.318666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976587, 32.087372, 10.754487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641781, 32.304325, 10.725576>,  <31.440897, 32.434498, 10.708230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641781, 32.304325, 10.725576>,  <31.976587, 32.087372, 10.754487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641781, 32.304325, 10.725576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038199, 0.189687, 0.981101,
		0.545842, 0.818437, -0.179490,
		-0.837017, 0.542383, -0.072276,
		31.390676, 32.467041, 10.703894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061214, 32.761284, 11.023073>,  <31.976587, 32.087372, 10.754487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061214, 32.761284, 11.023073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670179, 32.687984, 11.064524>,  <31.435558, 32.644005, 11.089394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670179, 32.687984, 11.064524>,  <32.061214, 32.761284, 11.023073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670179, 32.687984, 11.064524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014638, 0.431869, 0.901817,
		-0.210013, 0.883124, -0.419508,
		-0.977589, -0.183252, 0.103625,
		31.376904, 32.633007, 11.095612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748327, 33.418289, 11.141222>,  <32.061214, 32.761284, 11.023073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748327, 33.418289, 11.141222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483755, 33.161209, 11.295856>,  <31.325012, 33.006962, 11.388637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483755, 33.161209, 11.295856>,  <31.748327, 33.418289, 11.141222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483755, 33.161209, 11.295856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032041, 0.490758, 0.870706,
		-0.749321, 0.588299, -0.304010,
		-0.661431, -0.642698, 0.386585,
		31.285326, 32.968399, 11.411832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243591, 33.867245, 11.438715>,  <31.748327, 33.418289, 11.141222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243591, 33.867245, 11.438715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206690, 33.515831, 11.626187>,  <31.184549, 33.304981, 11.738671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206690, 33.515831, 11.626187>,  <31.243591, 33.867245, 11.438715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206690, 33.515831, 11.626187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003654, 0.470985, 0.882134,
		-0.995729, 0.079666, -0.046660,
		-0.092252, -0.878537, 0.468682,
		31.179014, 33.252270, 11.766792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699085, 33.899864, 11.940956>,  <31.243591, 33.867245, 11.438715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699085, 33.899864, 11.940956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897837, 33.579876, 12.075512>,  <31.017088, 33.387882, 12.156245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897837, 33.579876, 12.075512>,  <30.699085, 33.899864, 11.940956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897837, 33.579876, 12.075512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183280, 0.282147, 0.941701,
		-0.848245, -0.529565, -0.006426,
		0.496879, -0.799971, 0.336389,
		31.046900, 33.339886, 12.176429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243185, 33.686840, 12.490270>,  <30.699085, 33.899864, 11.940956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243185, 33.686840, 12.490270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563385, 33.461163, 12.571150>,  <30.755505, 33.325756, 12.619678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563385, 33.461163, 12.571150>,  <30.243185, 33.686840, 12.490270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563385, 33.461163, 12.571150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001893, 0.339755, 0.940512,
		-0.599328, -0.752498, 0.273043,
		0.800501, -0.564192, 0.202200,
		30.803535, 33.291904, 12.631810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055014, 33.479198, 13.113247>,  <30.243185, 33.686840, 12.490270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055014, 33.479198, 13.113247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452660, 33.440521, 13.093710>,  <30.691248, 33.417313, 13.081987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452660, 33.440521, 13.093710>,  <30.055014, 33.479198, 13.113247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452660, 33.440521, 13.093710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067601, 0.201407, 0.977172,
		-0.084653, -0.974723, 0.206758,
		0.994115, -0.096698, -0.048843,
		30.750895, 33.411510, 13.079057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187344, 33.088348, 13.723334>,  <30.055014, 33.479198, 13.113247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187344, 33.088348, 13.723334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528925, 33.260529, 13.606386>,  <30.733873, 33.363834, 13.536217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528925, 33.260529, 13.606386>,  <30.187344, 33.088348, 13.723334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528925, 33.260529, 13.606386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266858, 0.120083, 0.956225,
		0.446714, -0.894592, -0.012324,
		0.853952, 0.430448, -0.292371,
		30.785110, 33.389664, 13.518675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704567, 32.682533, 14.062865>,  <30.187344, 33.088348, 13.723334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704567, 32.682533, 14.062865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865444, 33.039715, 13.981991>,  <30.961971, 33.254025, 13.933466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865444, 33.039715, 13.981991>,  <30.704567, 32.682533, 14.062865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865444, 33.039715, 13.981991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140461, 0.158040, 0.977392,
		0.904716, -0.421501, -0.061862,
		0.402195, 0.892951, -0.202185,
		30.986103, 33.307598, 13.921335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411400, 32.671528, 14.374319>,  <30.704567, 32.682533, 14.062865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411400, 32.671528, 14.374319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327499, 33.060181, 14.330621>,  <31.277159, 33.293373, 14.304401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327499, 33.060181, 14.330621>,  <31.411400, 32.671528, 14.374319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327499, 33.060181, 14.330621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150436, 0.142472, 0.978300,
		0.966113, 0.188765, -0.176052,
		-0.209751, 0.971633, -0.109247,
		31.264574, 33.351669, 14.297847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868004, 32.988861, 14.781073>,  <31.411400, 32.671528, 14.374319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868004, 32.988861, 14.781073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602936, 33.287018, 14.752059>,  <31.443895, 33.465912, 14.734651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602936, 33.287018, 14.752059>,  <31.868004, 32.988861, 14.781073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602936, 33.287018, 14.752059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286004, 0.341391, 0.895352,
		0.692149, 0.572578, -0.439414,
		-0.662670, 0.745391, -0.072534,
		31.404135, 33.510635, 14.730299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235966, 33.622402, 15.065122>,  <31.868004, 32.988861, 14.781073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235966, 33.622402, 15.065122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846457, 33.712688, 15.076635>,  <31.612753, 33.766861, 15.083544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846457, 33.712688, 15.076635>,  <32.235966, 33.622402, 15.065122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846457, 33.712688, 15.076635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125038, 0.425112, 0.896463,
		0.190105, 0.876546, -0.442184,
		-0.973769, 0.225712, 0.028785,
		31.554325, 33.780403, 15.085271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238514, 34.293083, 15.269557>,  <32.235966, 33.622402, 15.065122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238514, 34.293083, 15.269557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871433, 34.156834, 15.351336>,  <31.651184, 34.075085, 15.400404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871433, 34.156834, 15.351336>,  <32.238514, 34.293083, 15.269557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871433, 34.156834, 15.351336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002237, 0.510199, 0.860054,
		-0.397264, 0.789730, -0.467448,
		-0.917702, -0.340623, 0.204450,
		31.596123, 34.054646, 15.412671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752344, 34.819561, 15.613235>,  <32.238514, 34.293083, 15.269557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752344, 34.819561, 15.613235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589497, 34.478390, 15.743932>,  <31.491787, 34.273685, 15.822350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589497, 34.478390, 15.743932>,  <31.752344, 34.819561, 15.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589497, 34.478390, 15.743932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008047, 0.361066, 0.932505,
		-0.913339, 0.377013, -0.153861,
		-0.407121, -0.852931, 0.326742,
		31.467360, 34.222511, 15.841954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295305, 35.013988, 16.266607>,  <31.752344, 34.819561, 15.613235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295305, 35.013988, 16.266607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335546, 34.616833, 16.292051>,  <31.359692, 34.378540, 16.307318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335546, 34.616833, 16.292051>,  <31.295305, 35.013988, 16.266607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335546, 34.616833, 16.292051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145203, 0.077900, 0.986330,
		-0.984274, -0.089990, 0.152008,
		0.100601, -0.992891, 0.063608,
		31.365726, 34.318966, 16.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919748, 34.850414, 16.888496>,  <31.295305, 35.013988, 16.266607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919748, 34.850414, 16.888496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177795, 34.555214, 16.809326>,  <31.332623, 34.378094, 16.761824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177795, 34.555214, 16.809326>,  <30.919748, 34.850414, 16.888496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177795, 34.555214, 16.809326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256935, -0.034424, 0.965815,
		-0.719591, -0.673916, 0.167412,
		0.645115, -0.738006, -0.197924,
		31.371330, 34.333813, 16.749949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722561, 34.351784, 17.398420>,  <30.919748, 34.850414, 16.888496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722561, 34.351784, 17.398420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100054, 34.291061, 17.280893>,  <31.326550, 34.254627, 17.210377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100054, 34.291061, 17.280893>,  <30.722561, 34.351784, 17.398420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100054, 34.291061, 17.280893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288049, -0.059198, 0.955784,
		-0.162484, -0.986637, -0.012140,
		0.943730, -0.151803, -0.293818,
		31.383173, 34.245522, 17.192747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957060, 33.703911, 17.711653>,  <30.722561, 34.351784, 17.398420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957060, 33.703911, 17.711653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306852, 33.885361, 17.642944>,  <31.516727, 33.994232, 17.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306852, 33.885361, 17.642944>,  <30.957060, 33.703911, 17.711653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306852, 33.885361, 17.642944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230374, -0.076774, 0.970069,
		0.426861, -0.887879, -0.171642,
		0.874481, 0.453626, -0.171772,
		31.569197, 34.021450, 17.591413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522505, 33.269913, 18.047775>,  <30.957060, 33.703911, 17.711653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522505, 33.269913, 18.047775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667654, 33.638214, 17.990458>,  <31.754744, 33.859196, 17.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667654, 33.638214, 17.990458>,  <31.522505, 33.269913, 18.047775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667654, 33.638214, 17.990458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275137, 0.041051, 0.960528,
		0.890293, -0.387975, -0.238438,
		0.362873, 0.920755, -0.143294,
		31.776516, 33.914440, 17.947470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095745, 33.195114, 18.424217>,  <31.522505, 33.269913, 18.047775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095745, 33.195114, 18.424217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031967, 33.584656, 18.359489>,  <31.993700, 33.818382, 18.320652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031967, 33.584656, 18.359489>,  <32.095745, 33.195114, 18.424217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031967, 33.584656, 18.359489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277096, 0.201476, 0.939482,
		0.947520, 0.104957, -0.301975,
		-0.159446, 0.973854, -0.161820,
		31.984133, 33.876812, 18.310944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729301, 33.576641, 18.409428>,  <32.095745, 33.195114, 18.424217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729301, 33.576641, 18.409428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430408, 33.818199, 18.520390>,  <32.251072, 33.963135, 18.586966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430408, 33.818199, 18.520390>,  <32.729301, 33.576641, 18.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430408, 33.818199, 18.520390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439445, 0.135871, 0.887934,
		0.498528, 0.785398, -0.366906,
		-0.747234, 0.603895, 0.277404,
		32.206238, 33.999367, 18.603611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987984, 34.003601, 18.863819>,  <32.729301, 33.576641, 18.409428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987984, 34.003601, 18.863819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600700, 34.059387, 18.946877>,  <32.368328, 34.092857, 18.996712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600700, 34.059387, 18.946877>,  <32.987984, 34.003601, 18.863819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600700, 34.059387, 18.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230703, 0.177121, 0.956768,
		0.096653, 0.974258, -0.203664,
		-0.968212, 0.139461, 0.207645,
		32.310238, 34.101227, 19.009171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051994, 34.560162, 19.299047>,  <32.987984, 34.003601, 18.863819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051994, 34.560162, 19.299047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694691, 34.403812, 19.387871>,  <32.480309, 34.310001, 19.441164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694691, 34.403812, 19.387871>,  <33.051994, 34.560162, 19.299047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694691, 34.403812, 19.387871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160399, 0.184328, 0.969688,
		-0.419958, 0.901799, -0.101957,
		-0.893257, -0.390874, 0.222058,
		32.426712, 34.286549, 19.454489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816059, 34.933407, 19.935568>,  <33.051994, 34.560162, 19.299047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816059, 34.933407, 19.935568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568535, 34.619774, 19.916443>,  <32.420021, 34.431595, 19.904968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568535, 34.619774, 19.916443>,  <32.816059, 34.933407, 19.935568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568535, 34.619774, 19.916443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191846, -0.209873, 0.958722,
		-0.761751, 0.584097, 0.280295,
		-0.618814, -0.784081, -0.047814,
		32.382893, 34.384548, 19.902098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439457, 34.922451, 20.495255>,  <32.816059, 34.933407, 19.935568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439457, 34.922451, 20.495255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409893, 34.541855, 20.375780>,  <32.392155, 34.313499, 20.304096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409893, 34.541855, 20.375780>,  <32.439457, 34.922451, 20.495255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409893, 34.541855, 20.375780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196847, -0.307530, 0.930955,
		-0.977645, 0.010010, 0.210026,
		-0.073909, -0.951486, -0.298684,
		32.387722, 34.256409, 20.286175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011505, 34.590996, 21.045364>,  <32.439457, 34.922451, 20.495255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011505, 34.590996, 21.045364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212986, 34.311039, 20.842804>,  <32.333874, 34.143066, 20.721268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212986, 34.311039, 20.842804>,  <32.011505, 34.590996, 21.045364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212986, 34.311039, 20.842804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060950, -0.555943, 0.828983,
		-0.861726, -0.448423, -0.237370,
		0.503699, -0.699889, -0.506402,
		32.364098, 34.101074, 20.690884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660362, 33.882530, 21.085688>,  <32.011505, 34.590996, 21.045364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660362, 33.882530, 21.085688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047691, 33.813118, 21.013865>,  <32.280090, 33.771473, 20.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047691, 33.813118, 21.013865>,  <31.660362, 33.882530, 21.085688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047691, 33.813118, 21.013865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016886, -0.671929, 0.740423,
		-0.249131, -0.720000, -0.647714,
		0.968322, -0.173525, -0.179556,
		32.338188, 33.761059, 20.959997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684832, 33.270607, 21.245193>,  <31.660362, 33.882530, 21.085688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684832, 33.270607, 21.245193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068012, 33.385376, 21.246061>,  <32.297920, 33.454239, 21.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068012, 33.385376, 21.246061>,  <31.684832, 33.270607, 21.245193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068012, 33.385376, 21.246061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192931, -0.649694, 0.735307,
		0.212388, -0.703969, -0.677731,
		0.957951, 0.286926, 0.002170,
		32.355396, 33.471455, 21.246712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123486, 32.635769, 21.272718>,  <31.684832, 33.270607, 21.245193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123486, 32.635769, 21.272718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359962, 32.927387, 21.410696>,  <32.501850, 33.102360, 21.493483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359962, 32.927387, 21.410696>,  <32.123486, 32.635769, 21.272718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359962, 32.927387, 21.410696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161246, -0.525892, 0.835127,
		0.790248, -0.438100, -0.428458,
		0.591192, 0.729045, 0.344943,
		32.537319, 33.146099, 21.514179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634560, 32.195244, 21.705212>,  <32.123486, 32.635769, 21.272718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634560, 32.195244, 21.705212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684269, 32.576942, 21.814003>,  <32.714092, 32.805962, 21.879278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684269, 32.576942, 21.814003>,  <32.634560, 32.195244, 21.705212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684269, 32.576942, 21.814003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338797, -0.298437, 0.892273,
		0.932616, -0.018736, -0.360382,
		0.124269, 0.954245, 0.271980,
		32.721550, 32.863216, 21.895597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270863, 32.194370, 22.055819>,  <32.634560, 32.195244, 21.705212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270863, 32.194370, 22.055819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077782, 32.519333, 22.186655>,  <32.961933, 32.714310, 22.265156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077782, 32.519333, 22.186655>,  <33.270863, 32.194370, 22.055819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077782, 32.519333, 22.186655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370147, -0.149234, 0.916908,
		0.793717, 0.563669, -0.228674,
		-0.482706, 0.812408, 0.327090,
		32.932968, 32.763054, 22.284782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717964, 32.530159, 22.442562>,  <33.270863, 32.194370, 22.055819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717964, 32.530159, 22.442562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374664, 32.690456, 22.570820>,  <33.168686, 32.786636, 22.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374664, 32.690456, 22.570820>,  <33.717964, 32.530159, 22.442562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374664, 32.690456, 22.570820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303948, -0.106538, 0.946713,
		0.413551, 0.909974, -0.030369,
		-0.858249, 0.400745, 0.320643,
		33.117191, 32.810680, 22.667013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880043, 32.948261, 22.967184>,  <33.717964, 32.530159, 22.442562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880043, 32.948261, 22.967184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483627, 32.946331, 23.020582>,  <33.245777, 32.945175, 23.052620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483627, 32.946331, 23.020582>,  <33.880043, 32.948261, 22.967184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483627, 32.946331, 23.020582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132037, 0.116171, 0.984414,
		-0.020255, 0.993218, -0.114493,
		-0.991038, -0.004822, 0.133494,
		33.186317, 32.944885, 23.060631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711903, 33.504433, 23.363983>,  <33.880043, 32.948261, 22.967184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711903, 33.504433, 23.363983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403370, 33.256336, 23.421038>,  <33.218250, 33.107479, 23.455271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403370, 33.256336, 23.421038>,  <33.711903, 33.504433, 23.363983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403370, 33.256336, 23.421038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085855, 0.120663, 0.988974,
		-0.630616, 0.775073, -0.039820,
		-0.771332, -0.620244, 0.142636,
		33.171970, 33.070263, 23.463829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175259, 33.793552, 23.677111>,  <33.711903, 33.504433, 23.363983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175259, 33.793552, 23.677111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141941, 33.407349, 23.775787>,  <33.121952, 33.175629, 23.834993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141941, 33.407349, 23.775787>,  <33.175259, 33.793552, 23.677111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141941, 33.407349, 23.775787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130520, 0.234852, 0.963228,
		-0.987941, 0.112428, 0.106456,
		-0.083292, -0.965507, 0.246694,
		33.116955, 33.117695, 23.849796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869045, 33.817665, 24.229406>,  <33.175259, 33.793552, 23.677111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869045, 33.817665, 24.229406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987667, 33.435978, 24.245026>,  <33.058842, 33.206966, 24.254398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987667, 33.435978, 24.245026>,  <32.869045, 33.817665, 24.229406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987667, 33.435978, 24.245026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282625, 0.126745, 0.950820,
		-0.912239, -0.270933, 0.307272,
		0.296553, -0.954218, 0.039049,
		33.076633, 33.149712, 24.256741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533714, 33.697384, 24.839750>,  <32.869045, 33.817665, 24.229406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533714, 33.697384, 24.839750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843719, 33.460773, 24.750801>,  <33.029724, 33.318806, 24.697432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843719, 33.460773, 24.750801>,  <32.533714, 33.697384, 24.839750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843719, 33.460773, 24.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320859, 0.065182, 0.944881,
		-0.544428, -0.803646, 0.240313,
		0.775014, -0.591527, -0.222371,
		33.076225, 33.283314, 24.684090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582378, 33.242905, 25.422935>,  <32.533714, 33.697384, 24.839750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582378, 33.242905, 25.422935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931110, 33.214836, 25.229034>,  <33.140350, 33.197994, 25.112694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931110, 33.214836, 25.229034>,  <32.582378, 33.242905, 25.422935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931110, 33.214836, 25.229034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488669, 0.192056, 0.851068,
		0.033377, -0.978872, 0.201733,
		0.871830, -0.070175, -0.484755,
		33.192661, 33.193783, 25.083609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925262, 33.602364, 25.791191>,  <32.582378, 33.242905, 25.422935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925262, 33.602364, 25.791191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559261, 33.735043, 25.883057>,  <31.339661, 33.814648, 25.938175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559261, 33.735043, 25.883057>,  <31.925262, 33.602364, 25.791191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559261, 33.735043, 25.883057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213949, 0.083682, -0.973254,
		-0.342043, -0.939668, -0.005604,
		-0.915004, 0.331696, 0.229663,
		31.284760, 33.834553, 25.951956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523846, 33.195454, 25.478575>,  <31.925262, 33.602364, 25.791191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523846, 33.195454, 25.478575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295412, 33.515717, 25.551029>,  <31.158352, 33.707874, 25.594501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295412, 33.515717, 25.551029>,  <31.523846, 33.195454, 25.478575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295412, 33.515717, 25.551029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389821, -0.070317, -0.918202,
		-0.722429, -0.594980, 0.352270,
		-0.571083, 0.800658, 0.181136,
		31.124086, 33.755913, 25.605370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979633, 33.007481, 25.270739>,  <31.523846, 33.195454, 25.478575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979633, 33.007481, 25.270739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920792, 33.403046, 25.262564>,  <30.885487, 33.640385, 25.257660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920792, 33.403046, 25.262564>,  <30.979633, 33.007481, 25.270739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920792, 33.403046, 25.262564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442252, -0.084239, -0.892926,
		-0.884745, -0.122317, 0.449740,
		-0.147106, 0.988910, -0.020435,
		30.876659, 33.699718, 25.256433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341434, 33.088573, 25.026087>,  <30.979633, 33.007481, 25.270739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341434, 33.088573, 25.026087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511147, 33.445015, 24.961695>,  <30.612974, 33.658882, 24.923059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511147, 33.445015, 24.961695>,  <30.341434, 33.088573, 25.026087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511147, 33.445015, 24.961695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451152, 0.053878, -0.890819,
		-0.785143, 0.450581, 0.424885,
		0.424278, 0.891108, -0.160979,
		30.638430, 33.712349, 24.913401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831486, 33.552128, 24.696344>,  <30.341434, 33.088573, 25.026087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831486, 33.552128, 24.696344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183336, 33.725891, 24.618835>,  <30.394447, 33.830147, 24.572330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183336, 33.725891, 24.618835>,  <29.831486, 33.552128, 24.696344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183336, 33.725891, 24.618835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317026, 0.231715, -0.919675,
		-0.354611, 0.870403, 0.341541,
		0.879628, 0.434405, -0.193772,
		30.447224, 33.856213, 24.560703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670084, 34.170826, 24.331217>,  <29.831486, 33.552128, 24.696344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670084, 34.170826, 24.331217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046711, 34.086533, 24.226114>,  <30.272688, 34.035957, 24.163052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046711, 34.086533, 24.226114>,  <29.670084, 34.170826, 24.331217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046711, 34.086533, 24.226114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177698, 0.351926, -0.919006,
		0.286133, 0.911999, 0.293916,
		0.941569, -0.210730, -0.262758,
		30.329182, 34.023315, 24.147287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818661, 34.659466, 23.880547>,  <29.670084, 34.170826, 24.331217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818661, 34.659466, 23.880547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111586, 34.400253, 23.796864>,  <30.287340, 34.244724, 23.746653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111586, 34.400253, 23.796864>,  <29.818661, 34.659466, 23.880547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111586, 34.400253, 23.796864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059448, 0.245211, -0.967646,
		0.678367, 0.721058, 0.141047,
		0.732314, -0.648034, -0.209208,
		30.331280, 34.205845, 23.734100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186665, 35.005947, 23.339911>,  <29.818661, 34.659466, 23.880547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186665, 35.005947, 23.339911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246618, 34.610794, 23.323769>,  <30.282591, 34.373703, 23.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246618, 34.610794, 23.323769>,  <30.186665, 35.005947, 23.339911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246618, 34.610794, 23.323769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158246, 0.016320, -0.987265,
		0.975958, 0.154362, -0.153882,
		0.149884, -0.987880, -0.040355,
		30.291584, 34.314430, 23.311663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543972, 34.885197, 22.616165>,  <30.186665, 35.005947, 23.339911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543972, 34.885197, 22.616165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417723, 34.521927, 22.726143>,  <30.341974, 34.303963, 22.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417723, 34.521927, 22.726143>,  <30.543972, 34.885197, 22.616165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417723, 34.521927, 22.726143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215406, -0.213617, -0.952874,
		0.924112, -0.359973, -0.128205,
		-0.315622, -0.908178, 0.274946,
		30.323036, 34.249474, 22.808626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705666, 34.493931, 22.071375>,  <30.543972, 34.885197, 22.616165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705666, 34.493931, 22.071375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431980, 34.276726, 22.266098>,  <30.267769, 34.146400, 22.382933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431980, 34.276726, 22.266098>,  <30.705666, 34.493931, 22.071375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431980, 34.276726, 22.266098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350502, -0.340516, -0.872466,
		0.639529, -0.767583, 0.042659,
		-0.684216, -0.543015, 0.486809,
		30.226715, 34.113823, 22.412140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825005, 33.804558, 21.868736>,  <30.705666, 34.493931, 22.071375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825005, 33.804558, 21.868736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446705, 33.849884, 21.990536>,  <30.219725, 33.877079, 22.063616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446705, 33.849884, 21.990536>,  <30.825005, 33.804558, 21.868736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446705, 33.849884, 21.990536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324716, -0.360955, -0.874226,
		0.010851, -0.925674, 0.378166,
		-0.945749, 0.113310, 0.304498,
		30.162979, 33.883877, 22.081884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527182, 33.176941, 21.612295>,  <30.825005, 33.804558, 21.868736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527182, 33.176941, 21.612295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214607, 33.407818, 21.707123>,  <30.027061, 33.546345, 21.764019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214607, 33.407818, 21.707123>,  <30.527182, 33.176941, 21.612295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214607, 33.407818, 21.707123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483697, -0.320317, -0.814514,
		-0.394202, -0.751157, 0.529497,
		-0.781436, 0.577200, 0.237063,
		29.980175, 33.580975, 21.778242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822887, 32.805370, 21.461432>,  <30.527182, 33.176941, 21.612295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822887, 32.805370, 21.461432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722216, 33.192493, 21.462671>,  <29.661814, 33.424767, 21.463415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722216, 33.192493, 21.462671>,  <29.822887, 32.805370, 21.461432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722216, 33.192493, 21.462671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537197, -0.137035, -0.832250,
		-0.805032, -0.211123, 0.554391,
		-0.251678, 0.967806, 0.003097,
		29.646711, 33.482834, 21.463600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113964, 32.789490, 21.142756>,  <29.822887, 32.805370, 21.461432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113964, 32.789490, 21.142756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250303, 33.165340, 21.130629>,  <29.332108, 33.390850, 21.123352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250303, 33.165340, 21.130629>,  <29.113964, 32.789490, 21.142756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250303, 33.165340, 21.130629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274004, 0.068443, -0.959290,
		-0.899302, 0.335281, 0.280790,
		0.340850, 0.939629, -0.030318,
		29.352558, 33.447227, 21.121532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611834, 33.093647, 20.877829>,  <29.113964, 32.789490, 21.142756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611834, 33.093647, 20.877829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925699, 33.333618, 20.815361>,  <29.114019, 33.477600, 20.777880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925699, 33.333618, 20.815361>,  <28.611834, 33.093647, 20.877829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925699, 33.333618, 20.815361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142324, -0.070853, -0.987281,
		-0.603362, 0.796911, 0.029789,
		0.784665, 0.599927, -0.156170,
		29.161098, 33.513596, 20.768511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260511, 33.590012, 20.537653>,  <28.611834, 33.093647, 20.877829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260511, 33.590012, 20.537653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648363, 33.613113, 20.442591>,  <28.881075, 33.626976, 20.385553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648363, 33.613113, 20.442591>,  <28.260511, 33.590012, 20.537653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648363, 33.613113, 20.442591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241601, 0.075210, -0.967457,
		-0.038002, 0.995494, 0.086880,
		0.969631, 0.057756, -0.237654,
		28.939253, 33.630440, 20.371294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352049, 34.027058, 19.974747>,  <28.260511, 33.590012, 20.537653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352049, 34.027058, 19.974747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706360, 33.841702, 19.964434>,  <28.918947, 33.730488, 19.958246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706360, 33.841702, 19.964434>,  <28.352049, 34.027058, 19.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706360, 33.841702, 19.964434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020580, 0.016281, -0.999656,
		0.463650, 0.886005, 0.004885,
		0.885779, -0.463390, -0.025782,
		28.972094, 33.702686, 19.956699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686937, 34.408112, 19.478989>,  <28.352049, 34.027058, 19.974747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686937, 34.408112, 19.478989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882317, 34.062263, 19.526079>,  <28.999544, 33.854755, 19.554333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882317, 34.062263, 19.526079>,  <28.686937, 34.408112, 19.478989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882317, 34.062263, 19.526079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244359, 0.006015, -0.969666,
		0.837681, 0.502397, 0.214215,
		0.488446, -0.864616, 0.117727,
		29.028851, 33.802879, 19.561398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410669, 34.382160, 19.304203>,  <28.686937, 34.408112, 19.478989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410669, 34.382160, 19.304203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284500, 34.013699, 19.213001>,  <29.208797, 33.792622, 19.158279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284500, 34.013699, 19.213001>,  <29.410669, 34.382160, 19.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284500, 34.013699, 19.213001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260496, 0.146990, -0.954220,
		0.912496, -0.360378, 0.193592,
		-0.315424, -0.921152, -0.228005,
		29.189873, 33.737354, 19.144600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824146, 34.203579, 18.739027>,  <29.410669, 34.382160, 19.304203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824146, 34.203579, 18.739027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540854, 33.922176, 18.715427>,  <29.370878, 33.753334, 18.701267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540854, 33.922176, 18.715427>,  <29.824146, 34.203579, 18.739027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540854, 33.922176, 18.715427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079820, 0.003242, -0.996804,
		0.701451, -0.710680, 0.053858,
		-0.708234, -0.703508, -0.059001,
		29.328382, 33.711124, 18.697727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055656, 33.775154, 18.306768>,  <29.824146, 34.203579, 18.739027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055656, 33.775154, 18.306768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663084, 33.698765, 18.299633>,  <29.427540, 33.652931, 18.295353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663084, 33.698765, 18.299633>,  <30.055656, 33.775154, 18.306768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663084, 33.698765, 18.299633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053573, -0.183638, -0.981533,
		0.184176, -0.964264, 0.190460,
		-0.981432, -0.190978, -0.017836,
		29.368654, 33.641472, 18.294283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000620, 33.539349, 17.670696>,  <30.055656, 33.775154, 18.306768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000620, 33.539349, 17.670696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609642, 33.552204, 17.754187>,  <29.375055, 33.559917, 17.804281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609642, 33.552204, 17.754187>,  <30.000620, 33.539349, 17.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609642, 33.552204, 17.754187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210115, -0.247277, -0.945889,
		0.021216, -0.968412, 0.248452,
		-0.977447, 0.032136, 0.208724,
		29.316408, 33.561844, 17.816803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706005, 32.956467, 17.218307>,  <30.000620, 33.539349, 17.670696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706005, 32.956467, 17.218307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447605, 33.251671, 17.296310>,  <29.292566, 33.428795, 17.343113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447605, 33.251671, 17.296310>,  <29.706005, 32.956467, 17.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447605, 33.251671, 17.296310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322649, -0.032466, -0.945962,
		-0.691797, -0.674009, 0.259091,
		-0.645998, 0.738009, 0.195008,
		29.253805, 33.473072, 17.354813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098555, 32.744904, 16.912619>,  <29.706005, 32.956467, 17.218307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098555, 32.744904, 16.912619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055483, 33.135376, 16.987951>,  <29.029640, 33.369659, 17.033152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055483, 33.135376, 16.987951>,  <29.098555, 32.744904, 16.912619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055483, 33.135376, 16.987951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392112, 0.132378, -0.910343,
		-0.913594, -0.171871, 0.368519,
		-0.107677, 0.976184, 0.188332,
		29.023180, 33.428230, 17.044451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379286, 32.905319, 16.710197>,  <29.098555, 32.744904, 16.912619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379286, 32.905319, 16.710197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630095, 33.216118, 16.687870>,  <28.780581, 33.402599, 16.674475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630095, 33.216118, 16.687870>,  <28.379286, 32.905319, 16.710197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630095, 33.216118, 16.687870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381199, 0.243554, -0.891834,
		-0.679360, 0.580477, 0.448905,
		0.627023, 0.776999, -0.055817,
		28.818201, 33.449219, 16.671125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052326, 33.599758, 16.540579>,  <28.379286, 32.905319, 16.710197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052326, 33.599758, 16.540579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430790, 33.656895, 16.424383>,  <28.657867, 33.691177, 16.354666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430790, 33.656895, 16.424383>,  <28.052326, 33.599758, 16.540579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430790, 33.656895, 16.424383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323390, 0.456876, -0.828664,
		0.014352, 0.877987, 0.478469,
		0.946157, 0.142839, -0.290489,
		28.714638, 33.699745, 16.337236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058483, 34.274826, 16.365973>,  <28.052326, 33.599758, 16.540579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058483, 34.274826, 16.365973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369202, 34.108238, 16.177021>,  <28.555634, 34.008286, 16.063650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369202, 34.108238, 16.177021>,  <28.058483, 34.274826, 16.365973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369202, 34.108238, 16.177021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199850, 0.548304, -0.812048,
		0.597200, 0.725201, 0.342690,
		0.776796, -0.416469, -0.472378,
		28.602240, 33.983299, 16.035307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391655, 34.861774, 15.959366>,  <28.058483, 34.274826, 16.365973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391655, 34.861774, 15.959366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540556, 34.532635, 15.787623>,  <28.629896, 34.335152, 15.684578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540556, 34.532635, 15.787623>,  <28.391655, 34.861774, 15.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540556, 34.532635, 15.787623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042912, 0.446850, -0.893579,
		0.927139, 0.351061, 0.131031,
		0.372252, -0.822849, -0.429357,
		28.652231, 34.285782, 15.658816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819571, 35.118328, 15.396353>,  <28.391655, 34.861774, 15.959366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819571, 35.118328, 15.396353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772207, 34.729427, 15.315660>,  <28.743790, 34.496086, 15.267243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772207, 34.729427, 15.315660>,  <28.819571, 35.118328, 15.396353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772207, 34.729427, 15.315660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112617, 0.215001, -0.970099,
		0.986558, -0.092150, -0.134951,
		-0.118410, -0.972257, -0.201734,
		28.736685, 34.437752, 15.255139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488832, 34.846100, 14.951106>,  <28.819571, 35.118328, 15.396353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488832, 34.846100, 14.951106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150934, 34.645729, 14.875760>,  <28.948195, 34.525509, 14.830552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150934, 34.645729, 14.875760>,  <29.488832, 34.846100, 14.951106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150934, 34.645729, 14.875760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115744, 0.172637, -0.978161,
		0.522502, -0.848099, -0.087856,
		-0.844745, -0.500923, -0.188366,
		28.897511, 34.495453, 14.819250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675310, 34.557903, 14.371975>,  <29.488832, 34.846100, 14.951106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675310, 34.557903, 14.371975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276060, 34.535622, 14.382150>,  <29.036510, 34.522251, 14.388254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276060, 34.535622, 14.382150>,  <29.675310, 34.557903, 14.371975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276060, 34.535622, 14.382150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033033, 0.139996, -0.989601,
		0.051564, -0.988584, -0.141574,
		-0.998123, -0.055705, 0.025437,
		28.976624, 34.518909, 14.389781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454302, 34.093910, 13.853387>,  <29.675310, 34.557903, 14.371975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454302, 34.093910, 13.853387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118574, 34.306305, 13.900037>,  <28.917137, 34.433743, 13.928027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118574, 34.306305, 13.900037>,  <29.454302, 34.093910, 13.853387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118574, 34.306305, 13.900037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217905, -0.132046, -0.966996,
		-0.498060, -0.837030, 0.226532,
		-0.839318, 0.530984, 0.116626,
		28.866779, 34.465599, 13.935024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137001, 33.796143, 13.268640>,  <29.454302, 34.093910, 13.853387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137001, 33.796143, 13.268640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929956, 34.119232, 13.381541>,  <28.805731, 34.313084, 13.449283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929956, 34.119232, 13.381541>,  <29.137001, 33.796143, 13.268640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929956, 34.119232, 13.381541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262681, 0.163939, -0.950854,
		-0.814297, -0.566313, 0.127316,
		-0.517609, 0.807721, 0.282255,
		28.774673, 34.361549, 13.466218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472958, 33.715450, 12.972096>,  <29.137001, 33.796143, 13.268640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472958, 33.715450, 12.972096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514957, 34.102306, 13.064724>,  <28.540157, 34.334419, 13.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514957, 34.102306, 13.064724>,  <28.472958, 33.715450, 12.972096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514957, 34.102306, 13.064724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059187, 0.238521, -0.969332,
		-0.992710, 0.088073, 0.082286,
		0.104998, 0.967136, 0.231569,
		28.546457, 34.392448, 13.134194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880432, 34.091766, 12.622271>,  <28.472958, 33.715450, 12.972096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880432, 34.091766, 12.622271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151127, 34.375301, 12.701851>,  <28.313543, 34.545422, 12.749599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151127, 34.375301, 12.701851>,  <27.880432, 34.091766, 12.622271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151127, 34.375301, 12.701851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012431, 0.259190, -0.965746,
		-0.736119, 0.656031, 0.166592,
		0.676738, 0.708833, 0.198950,
		28.354149, 34.587952, 12.761536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516998, 34.721596, 12.400254>,  <27.880432, 34.091766, 12.622271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516998, 34.721596, 12.400254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907024, 34.810326, 12.402734>,  <28.141041, 34.863564, 12.404222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907024, 34.810326, 12.402734>,  <27.516998, 34.721596, 12.400254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907024, 34.810326, 12.402734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066972, 0.320781, -0.944783,
		-0.211567, 0.920811, 0.327639,
		0.975066, 0.221828, 0.006198,
		28.199545, 34.876873, 12.404593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526760, 35.275322, 12.128885>,  <27.516998, 34.721596, 12.400254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526760, 35.275322, 12.128885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915369, 35.197025, 12.075468>,  <28.148535, 35.150047, 12.043418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915369, 35.197025, 12.075468>,  <27.526760, 35.275322, 12.128885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915369, 35.197025, 12.075468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074932, 0.280874, -0.956815,
		0.224798, 0.939571, 0.258208,
		0.971520, -0.195742, -0.133544,
		28.206825, 35.138302, 12.035405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794643, 35.844608, 11.735532>,  <27.526760, 35.275322, 12.128885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794643, 35.844608, 11.735532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030621, 35.525612, 11.684978>,  <28.172207, 35.334213, 11.654645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030621, 35.525612, 11.684978>,  <27.794643, 35.844608, 11.735532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030621, 35.525612, 11.684978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091856, 0.089223, -0.991767,
		0.802203, 0.596695, -0.020618,
		0.589943, -0.797492, -0.126385,
		28.207603, 35.286366, 11.647062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466167, 36.271305, 11.781086>,  <27.794643, 35.844608, 11.735532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466167, 36.271305, 11.781086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268272, 36.618382, 11.761732>,  <28.149536, 36.826630, 11.750120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268272, 36.618382, 11.761732>,  <28.466167, 36.271305, 11.781086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268272, 36.618382, 11.761732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040243, 0.078491, 0.996102,
		0.868110, 0.490862, -0.073750,
		-0.494738, 0.867694, -0.048385,
		28.119852, 36.878689, 11.747216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858757, 36.677948, 12.165548>,  <28.466167, 36.271305, 11.781086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858757, 36.677948, 12.165548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488632, 36.829464, 12.172612>,  <28.266558, 36.920372, 12.176850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488632, 36.829464, 12.172612>,  <28.858757, 36.677948, 12.165548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488632, 36.829464, 12.172612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052365, 0.081514, 0.995296,
		0.375570, 0.921885, -0.095262,
		-0.925314, 0.378791, 0.017660,
		28.211039, 36.943100, 12.177910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968456, 37.204834, 12.603969>,  <28.858757, 36.677948, 12.165548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968456, 37.204834, 12.603969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573511, 37.142883, 12.590529>,  <28.336544, 37.105713, 12.582466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573511, 37.142883, 12.590529>,  <28.968456, 37.204834, 12.603969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573511, 37.142883, 12.590529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053975, 0.129312, 0.990134,
		-0.149000, 0.979435, -0.136037,
		-0.987363, -0.154873, -0.033597,
		28.277302, 37.096420, 12.580450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741070, 37.758896, 12.843651>,  <28.968456, 37.204834, 12.603969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741070, 37.758896, 12.843651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439007, 37.498463, 12.874187>,  <28.257769, 37.342201, 12.892508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439007, 37.498463, 12.874187>,  <28.741070, 37.758896, 12.843651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439007, 37.498463, 12.874187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128241, 0.260922, 0.956804,
		-0.642880, 0.712746, -0.280532,
		-0.755156, -0.651085, 0.076338,
		28.212460, 37.303139, 12.897088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188829, 38.078468, 13.066147>,  <28.741070, 37.758896, 12.843651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188829, 38.078468, 13.066147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102715, 37.703850, 13.176811>,  <28.051046, 37.479080, 13.243210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102715, 37.703850, 13.176811>,  <28.188829, 38.078468, 13.066147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102715, 37.703850, 13.176811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110313, 0.304813, 0.946002,
		-0.970300, 0.173142, -0.168935,
		-0.215287, -0.936542, 0.276661,
		28.038128, 37.422886, 13.259809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651413, 38.125839, 13.631243>,  <28.188829, 38.078468, 13.066147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651413, 38.125839, 13.631243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790766, 37.754860, 13.685616>,  <27.874376, 37.532272, 13.718239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790766, 37.754860, 13.685616>,  <27.651413, 38.125839, 13.631243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790766, 37.754860, 13.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087580, 0.112175, 0.989821,
		-0.933253, -0.356739, -0.042146,
		0.348380, -0.927445, 0.135931,
		27.895281, 37.476627, 13.726395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371145, 38.045322, 14.302307>,  <27.651413, 38.125839, 13.631243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371145, 38.045322, 14.302307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596249, 37.719231, 14.247606>,  <27.731310, 37.523575, 14.214786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596249, 37.719231, 14.247606>,  <27.371145, 38.045322, 14.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596249, 37.719231, 14.247606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059059, -0.125360, 0.990352,
		-0.824510, -0.565403, -0.022401,
		0.562756, -0.815232, -0.136753,
		27.765076, 37.474663, 14.206580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008179, 37.498154, 14.696050>,  <27.371145, 38.045322, 14.302307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008179, 37.498154, 14.696050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385017, 37.367214, 14.666928>,  <27.611120, 37.288651, 14.649456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385017, 37.367214, 14.666928>,  <27.008179, 37.498154, 14.696050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385017, 37.367214, 14.666928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023479, -0.152179, 0.988074,
		-0.334523, -0.932569, -0.135681,
		0.942095, -0.327347, -0.072803,
		27.667646, 37.269009, 14.645087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040791, 36.792797, 15.014868>,  <27.008179, 37.498154, 14.696050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040791, 36.792797, 15.014868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417517, 36.927227, 15.017435>,  <27.643553, 37.007885, 15.018975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417517, 36.927227, 15.017435>,  <27.040791, 36.792797, 15.014868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417517, 36.927227, 15.017435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073366, -0.224163, 0.971786,
		0.328030, -0.914771, -0.235776,
		0.941814, 0.336073, 0.006419,
		27.700062, 37.028049, 15.019361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550381, 36.282181, 15.278723>,  <27.040791, 36.792797, 15.014868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550381, 36.282181, 15.278723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760319, 36.622192, 15.296543>,  <27.886282, 36.826199, 15.307236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760319, 36.622192, 15.296543>,  <27.550381, 36.282181, 15.278723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760319, 36.622192, 15.296543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261777, -0.210993, 0.941782,
		0.809945, -0.482626, -0.333257,
		0.524844, 0.850031, 0.044552,
		27.917772, 36.877201, 15.309909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264141, 36.200089, 15.479680>,  <27.550381, 36.282181, 15.278723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264141, 36.200089, 15.479680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197069, 36.582592, 15.575563>,  <28.156826, 36.812092, 15.633094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197069, 36.582592, 15.575563>,  <28.264141, 36.200089, 15.479680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197069, 36.582592, 15.575563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180840, -0.209190, 0.961008,
		0.969113, 0.204491, -0.137852,
		-0.167680, 0.956255, 0.239709,
		28.146765, 36.869469, 15.647476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806314, 36.288689, 15.978510>,  <28.264141, 36.200089, 15.479680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806314, 36.288689, 15.978510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531330, 36.574436, 16.030775>,  <28.366339, 36.745884, 16.062134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531330, 36.574436, 16.030775>,  <28.806314, 36.288689, 15.978510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531330, 36.574436, 16.030775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092623, -0.092202, 0.991423,
		0.720289, 0.693668, -0.002782,
		-0.687462, 0.714369, 0.130662,
		28.325092, 36.788746, 16.069973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008894, 36.598980, 16.658522>,  <28.806314, 36.288689, 15.978510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008894, 36.598980, 16.658522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634201, 36.720486, 16.588936>,  <28.409386, 36.793388, 16.547184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634201, 36.720486, 16.588936>,  <29.008894, 36.598980, 16.658522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634201, 36.720486, 16.588936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168210, 0.045222, 0.984713,
		0.306985, 0.951674, 0.008735,
		-0.936731, 0.303762, -0.173963,
		28.353182, 36.811615, 16.536747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939680, 37.050549, 17.172764>,  <29.008894, 36.598980, 16.658522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939680, 37.050549, 17.172764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575098, 36.923752, 17.067875>,  <28.356348, 36.847672, 17.004942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575098, 36.923752, 17.067875>,  <28.939680, 37.050549, 17.172764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575098, 36.923752, 17.067875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297145, 0.066444, 0.952518,
		-0.284521, 0.946097, -0.154754,
		-0.911456, -0.316996, -0.262223,
		28.301661, 36.828651, 16.989208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489624, 37.457905, 17.554621>,  <28.939680, 37.050549, 17.172764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489624, 37.457905, 17.554621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264383, 37.147015, 17.442308>,  <28.129240, 36.960480, 17.374922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264383, 37.147015, 17.442308>,  <28.489624, 37.457905, 17.554621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264383, 37.147015, 17.442308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268796, -0.149031, 0.951598,
		-0.781452, 0.611317, -0.124996,
		-0.563100, -0.777227, -0.280780,
		28.095453, 36.913845, 17.358074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885662, 37.557434, 17.873762>,  <28.489624, 37.457905, 17.554621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885662, 37.557434, 17.873762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907429, 37.174007, 17.761908>,  <27.920488, 36.943951, 17.694796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907429, 37.174007, 17.761908>,  <27.885662, 37.557434, 17.873762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907429, 37.174007, 17.761908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236715, -0.284453, 0.929006,
		-0.970054, 0.015639, -0.242386,
		0.054419, -0.958562, -0.279637,
		27.923754, 36.886440, 17.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303257, 37.192207, 18.232733>,  <27.885662, 37.557434, 17.873762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303257, 37.192207, 18.232733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569952, 36.914085, 18.125393>,  <27.729969, 36.747211, 18.060989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569952, 36.914085, 18.125393>,  <27.303257, 37.192207, 18.232733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569952, 36.914085, 18.125393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025776, -0.381358, 0.924068,
		-0.744846, -0.609195, -0.272188,
		0.666739, -0.695305, -0.268350,
		27.769974, 36.705494, 18.044888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987593, 36.637405, 18.424440>,  <27.303257, 37.192207, 18.232733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987593, 36.637405, 18.424440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376579, 36.547043, 18.401548>,  <27.609972, 36.492825, 18.387814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376579, 36.547043, 18.401548>,  <26.987593, 36.637405, 18.424440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376579, 36.547043, 18.401548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024255, -0.342366, 0.939254,
		-0.231774, -0.912005, -0.338419,
		0.972467, -0.225903, -0.057231,
		27.668320, 36.479271, 18.384378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003868, 36.017063, 18.906130>,  <26.987593, 36.637405, 18.424440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003868, 36.017063, 18.906130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379974, 36.133991, 18.836334>,  <27.605639, 36.204147, 18.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379974, 36.133991, 18.836334>,  <27.003868, 36.017063, 18.906130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379974, 36.133991, 18.836334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291478, -0.426448, 0.856261,
		0.175894, -0.855973, -0.486181,
		0.940267, 0.292322, -0.174487,
		27.662054, 36.221687, 18.783989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479095, 35.458424, 19.121618>,  <27.003868, 36.017063, 18.906130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479095, 35.458424, 19.121618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708759, 35.785923, 19.121672>,  <27.846558, 35.982422, 19.121704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708759, 35.785923, 19.121672>,  <27.479095, 35.458424, 19.121618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708759, 35.785923, 19.121672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299517, -0.210191, 0.930650,
		0.761993, -0.534300, -0.365911,
		0.574157, 0.818745, 0.000132,
		27.881006, 36.031548, 19.121712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100641, 35.215267, 19.259951>,  <27.479095, 35.458424, 19.121618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100641, 35.215267, 19.259951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125986, 35.601749, 19.359894>,  <28.141193, 35.833641, 19.419859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125986, 35.601749, 19.359894>,  <28.100641, 35.215267, 19.259951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125986, 35.601749, 19.359894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342237, -0.256216, 0.904006,
		0.937475, 0.028232, -0.346905,
		0.063361, 0.966207, 0.249858,
		28.144995, 35.891613, 19.434851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781567, 35.363102, 19.543703>,  <28.100641, 35.215267, 19.259951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781567, 35.363102, 19.543703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550280, 35.646748, 19.705107>,  <28.411509, 35.816936, 19.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550280, 35.646748, 19.705107>,  <28.781567, 35.363102, 19.543703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550280, 35.646748, 19.705107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425818, -0.159581, 0.890625,
		0.695950, 0.686795, -0.209683,
		-0.578215, 0.709117, 0.403510,
		28.376816, 35.859482, 19.826160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250208, 35.656242, 20.020018>,  <28.781567, 35.363102, 19.543703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250208, 35.656242, 20.020018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904045, 35.820671, 20.134628>,  <28.696348, 35.919327, 20.203394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904045, 35.820671, 20.134628>,  <29.250208, 35.656242, 20.020018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904045, 35.820671, 20.134628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249518, -0.142348, 0.957851,
		0.434528, 0.900422, 0.020620,
		-0.865405, 0.411068, 0.286526,
		28.644424, 35.943993, 20.220587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474684, 36.025795, 20.657784>,  <29.250208, 35.656242, 20.020018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474684, 36.025795, 20.657784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078220, 35.981262, 20.686665>,  <28.840343, 35.954544, 20.703993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078220, 35.981262, 20.686665>,  <29.474684, 36.025795, 20.657784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078220, 35.981262, 20.686665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082714, -0.092861, 0.992238,
		-0.103761, 0.989435, 0.101248,
		-0.991157, -0.111331, 0.072205,
		28.780872, 35.947865, 20.708326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271616, 36.580124, 21.062490>,  <29.474684, 36.025795, 20.657784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271616, 36.580124, 21.062490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005430, 36.281971, 21.078320>,  <28.845718, 36.103081, 21.087816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005430, 36.281971, 21.078320>,  <29.271616, 36.580124, 21.062490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005430, 36.281971, 21.078320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028632, 0.027486, 0.999212,
		-0.745882, 0.666071, 0.003051,
		-0.665462, -0.745382, 0.039573,
		28.805792, 36.058357, 21.090191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786884, 36.965611, 21.436680>,  <29.271616, 36.580124, 21.062490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786884, 36.965611, 21.436680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746937, 36.569519, 21.475615>,  <28.722969, 36.331863, 21.498976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746937, 36.569519, 21.475615>,  <28.786884, 36.965611, 21.436680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746937, 36.569519, 21.475615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086743, 0.106117, 0.990563,
		-0.991212, 0.090484, -0.096493,
		-0.099870, -0.990228, 0.097336,
		28.716976, 36.272449, 21.504816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196104, 36.895954, 21.826761>,  <28.786884, 36.965611, 21.436680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196104, 36.895954, 21.826761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382519, 36.544735, 21.870283>,  <28.494368, 36.334003, 21.896397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382519, 36.544735, 21.870283>,  <28.196104, 36.895954, 21.826761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382519, 36.544735, 21.870283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114847, 0.061904, 0.991452,
		-0.877280, -0.474549, -0.071992,
		0.466036, -0.878050, 0.108807,
		28.522329, 36.281319, 21.902925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949585, 36.602871, 22.559368>,  <28.196104, 36.895954, 21.826761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949585, 36.602871, 22.559368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253704, 36.352177, 22.491074>,  <28.436176, 36.201759, 22.450096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253704, 36.352177, 22.491074>,  <27.949585, 36.602871, 22.559368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253704, 36.352177, 22.491074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069194, -0.183208, 0.980636,
		-0.645878, -0.757390, -0.095926,
		0.760298, -0.626734, -0.170737,
		28.481794, 36.164158, 22.439852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773161, 36.005985, 22.960541>,  <27.949585, 36.602871, 22.559368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773161, 36.005985, 22.960541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170002, 36.029751, 22.916359>,  <28.408108, 36.044010, 22.889851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170002, 36.029751, 22.916359>,  <27.773161, 36.005985, 22.960541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170002, 36.029751, 22.916359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119968, -0.192686, 0.973899,
		0.036583, -0.979460, -0.198293,
		0.992104, 0.059417, -0.110455,
		28.467632, 36.047577, 22.883223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074289, 35.424194, 23.325069>,  <27.773161, 36.005985, 22.960541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074289, 35.424194, 23.325069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385324, 35.670795, 23.275625>,  <28.571945, 35.818756, 23.245958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385324, 35.670795, 23.275625>,  <28.074289, 35.424194, 23.325069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385324, 35.670795, 23.275625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219873, -0.082426, 0.972040,
		0.589080, -0.783023, -0.199646,
		0.777586, 0.616506, -0.123610,
		28.618601, 35.855747, 23.238543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627369, 35.121750, 23.724079>,  <28.074289, 35.424194, 23.325069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627369, 35.121750, 23.724079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747852, 35.494122, 23.641474>,  <28.820143, 35.717545, 23.591909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747852, 35.494122, 23.641474>,  <28.627369, 35.121750, 23.724079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747852, 35.494122, 23.641474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224529, 0.141244, 0.964177,
		0.926747, -0.336787, -0.166476,
		0.301209, 0.930927, -0.206515,
		28.838215, 35.773399, 23.579519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315413, 35.254684, 24.142540>,  <28.627369, 35.121750, 23.724079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315413, 35.254684, 24.142540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205153, 35.624828, 24.038450>,  <29.138996, 35.846916, 23.975996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205153, 35.624828, 24.038450>,  <29.315413, 35.254684, 24.142540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205153, 35.624828, 24.038450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133124, 0.304855, 0.943049,
		0.951995, 0.225311, -0.207222,
		-0.275652, 0.925364, -0.260226,
		29.122458, 35.902439, 23.960382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805580, 35.730103, 24.364590>,  <29.315413, 35.254684, 24.142540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805580, 35.730103, 24.364590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466499, 35.941231, 24.343412>,  <29.263050, 36.067909, 24.330706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466499, 35.941231, 24.343412>,  <29.805580, 35.730103, 24.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466499, 35.941231, 24.343412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167167, 0.360518, 0.917650,
		0.503445, 0.769044, -0.393847,
		-0.847702, 0.527824, -0.052942,
		29.212189, 36.099579, 24.327530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963398, 36.434147, 24.714491>,  <29.805580, 35.730103, 24.364590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963398, 36.434147, 24.714491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564276, 36.412266, 24.699560>,  <29.324802, 36.399136, 24.690601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564276, 36.412266, 24.699560>,  <29.963398, 36.434147, 24.714491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564276, 36.412266, 24.699560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059464, 0.491900, 0.868619,
		-0.029155, 0.868932, -0.494073,
		-0.997805, -0.054705, -0.037329,
		29.264935, 36.395855, 24.688362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616396, 37.168373, 24.841217>,  <29.963398, 36.434147, 24.714491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616396, 37.168373, 24.841217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344238, 36.883999, 24.912354>,  <29.180943, 36.713375, 24.955036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344238, 36.883999, 24.912354>,  <29.616396, 37.168373, 24.841217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344238, 36.883999, 24.912354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020753, 0.261268, 0.965043,
		-0.732551, 0.652921, -0.192520,
		-0.680396, -0.710939, 0.177842,
		29.140120, 36.670719, 24.965706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082504, 37.506546, 25.213570>,  <29.616396, 37.168373, 24.841217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082504, 37.506546, 25.213570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046476, 37.118721, 25.304632>,  <29.024860, 36.886024, 25.359270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046476, 37.118721, 25.304632>,  <29.082504, 37.506546, 25.213570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046476, 37.118721, 25.304632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003026, 0.228850, 0.973457,
		-0.995931, 0.086990, -0.023547,
		-0.090069, -0.969567, 0.227655,
		29.019455, 36.827850, 25.372929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510202, 37.490475, 25.724449>,  <29.082504, 37.506546, 25.213570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510202, 37.490475, 25.724449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744928, 37.168373, 25.758438>,  <28.885763, 36.975113, 25.778831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744928, 37.168373, 25.758438>,  <28.510202, 37.490475, 25.724449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744928, 37.168373, 25.758438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123308, 0.192584, 0.973502,
		-0.800277, -0.560787, 0.212305,
		0.586814, -0.805251, 0.084971,
		28.920973, 36.926800, 25.783930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197235, 37.198929, 26.253027>,  <28.510202, 37.490475, 25.724449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197235, 37.198929, 26.253027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548361, 37.008686, 26.230280>,  <28.759037, 36.894539, 26.216631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548361, 37.008686, 26.230280>,  <28.197235, 37.198929, 26.253027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548361, 37.008686, 26.230280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130158, 0.122585, 0.983886,
		-0.460977, -0.871072, 0.169512,
		0.877815, -0.475612, -0.056868,
		28.811705, 36.866001, 26.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230352, 36.653774, 26.854967>,  <28.197235, 37.198929, 26.253027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230352, 36.653774, 26.854967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605721, 36.727638, 26.738161>,  <28.830940, 36.771957, 26.668077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605721, 36.727638, 26.738161>,  <28.230352, 36.653774, 26.854967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605721, 36.727638, 26.738161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240043, 0.259432, 0.935454,
		0.248490, -0.947945, 0.199132,
		0.938420, 0.184651, -0.292014,
		28.887245, 36.783035, 26.650557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744251, 36.409828, 27.391636>,  <28.230352, 36.653774, 26.854967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744251, 36.409828, 27.391636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959578, 36.671326, 27.178905>,  <29.088774, 36.828224, 27.051268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959578, 36.671326, 27.178905>,  <28.744251, 36.409828, 27.391636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959578, 36.671326, 27.178905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381024, 0.374078, 0.845509,
		0.751689, -0.657789, -0.047719,
		0.538316, 0.653742, -0.531824,
		29.121073, 36.867447, 27.019358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475645, 36.566280, 27.643219>,  <28.744251, 36.409828, 27.391636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475645, 36.566280, 27.643219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376766, 36.886623, 27.425037>,  <29.317438, 37.078831, 27.294128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376766, 36.886623, 27.425037>,  <29.475645, 36.566280, 27.643219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376766, 36.886623, 27.425037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463361, 0.592092, 0.659336,
		0.850993, -0.089757, -0.517450,
		-0.247198, 0.800856, -0.545456,
		29.302607, 37.126881, 27.261400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101536, 37.013447, 27.580795>,  <29.475645, 36.566280, 27.643219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101536, 37.013447, 27.580795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818138, 37.283474, 27.498510>,  <29.648100, 37.445492, 27.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818138, 37.283474, 27.498510>,  <30.101536, 37.013447, 27.580795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818138, 37.283474, 27.498510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567075, 0.718095, 0.403442,
		0.420072, 0.169182, -0.891581,
		-0.708495, 0.675068, -0.205713,
		29.605589, 37.485992, 27.436796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855583, 36.998112, 27.397619>,  <30.101536, 37.013447, 27.580795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855583, 36.998112, 27.397619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855553, 36.967331, 27.796432>,  <30.855534, 36.948864, 28.035721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855553, 36.967331, 27.796432>,  <30.855583, 36.998112, 27.397619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855553, 36.967331, 27.796432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995326, 0.096282, 0.007508,
		-0.096575, 0.992375, 0.076580,
		-0.000078, -0.076947, 0.997035,
		30.855530, 36.944248, 28.095543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168854, 37.619968, 27.860336>,  <30.855583, 36.998112, 27.397619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168854, 37.619968, 27.860336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218676, 37.253147, 28.011864>,  <31.248569, 37.033054, 28.102779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218676, 37.253147, 28.011864>,  <31.168854, 37.619968, 27.860336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218676, 37.253147, 28.011864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986926, 0.075147, -0.142584,
		0.102290, 0.391625, 0.914421,
		0.124556, -0.917051, 0.378818,
		31.256042, 36.978031, 28.125509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690783, 37.792568, 28.310270>,  <31.168854, 37.619968, 27.860336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690783, 37.792568, 28.310270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705393, 37.433266, 28.135090>,  <31.714159, 37.217686, 28.029982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705393, 37.433266, 28.135090>,  <31.690783, 37.792568, 28.310270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705393, 37.433266, 28.135090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862566, 0.249635, -0.440072,
		0.504625, -0.361686, 0.783924,
		0.036527, -0.898257, -0.437950,
		31.716351, 37.163788, 28.003704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289375, 37.491886, 28.462942>,  <31.690783, 37.792568, 28.310270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289375, 37.491886, 28.462942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156879, 37.365871, 28.107183>,  <32.077381, 37.290264, 27.893728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156879, 37.365871, 28.107183>,  <32.289375, 37.491886, 28.462942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156879, 37.365871, 28.107183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896473, 0.188931, -0.400801,
		0.294302, -0.930084, 0.219841,
		-0.331244, -0.315037, -0.889398,
		32.057507, 37.271358, 27.840364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791836, 37.065002, 28.231594>,  <32.289375, 37.491886, 28.462942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791836, 37.065002, 28.231594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596279, 37.228622, 27.923397>,  <32.478947, 37.326794, 27.738478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596279, 37.228622, 27.923397>,  <32.791836, 37.065002, 28.231594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596279, 37.228622, 27.923397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864174, 0.106494, -0.491794,
		-0.119117, -0.906275, -0.405558,
		-0.488890, 0.409054, -0.770494,
		32.449612, 37.351337, 27.692249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129108, 36.770901, 27.648727>,  <32.791836, 37.065002, 28.231594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129108, 36.770901, 27.648727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970665, 37.117302, 27.526659>,  <32.875599, 37.325142, 27.453419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970665, 37.117302, 27.526659>,  <33.129108, 36.770901, 27.648727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970665, 37.117302, 27.526659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815948, 0.179565, -0.549532,
		-0.421102, -0.466677, -0.777744,
		-0.396110, 0.866007, -0.305169,
		32.851833, 37.377106, 27.435108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333595, 36.878460, 27.020885>,  <33.129108, 36.770901, 27.648727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333595, 36.878460, 27.020885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254307, 37.253273, 27.135902>,  <33.206734, 37.478161, 27.204912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254307, 37.253273, 27.135902>,  <33.333595, 36.878460, 27.020885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254307, 37.253273, 27.135902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774939, 0.329448, -0.539383,
		-0.600149, 0.115911, -0.791446,
		-0.198220, 0.937032, 0.287542,
		33.194839, 37.534382, 27.222164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186295, 37.297276, 26.495548>,  <33.333595, 36.878460, 27.020885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186295, 37.297276, 26.495548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372604, 37.518681, 26.771717>,  <33.484390, 37.651524, 26.937418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372604, 37.518681, 26.771717>,  <33.186295, 37.297276, 26.495548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372604, 37.518681, 26.771717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839325, -0.029157, -0.542847,
		-0.280341, 0.832332, -0.478156,
		0.465771, 0.553511, 0.690423,
		33.512337, 37.684734, 26.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545105, 37.911018, 26.138910>,  <33.186295, 37.297276, 26.495548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545105, 37.911018, 26.138910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712433, 37.818016, 26.490126>,  <33.812828, 37.762215, 26.700855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712433, 37.818016, 26.490126>,  <33.545105, 37.911018, 26.138910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712433, 37.818016, 26.490126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890397, -0.086023, -0.446982,
		0.179456, 0.968784, 0.171035,
		0.418316, -0.232503, 0.878040,
		33.837929, 37.748264, 26.753538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004848, 38.420494, 26.204412>,  <33.545105, 37.911018, 26.138910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004848, 38.420494, 26.204412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121517, 38.100521, 26.414190>,  <34.191517, 37.908539, 26.540056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121517, 38.100521, 26.414190>,  <34.004848, 38.420494, 26.204412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121517, 38.100521, 26.414190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832150, -0.058149, -0.551494,
		0.471653, 0.597268, 0.648703,
		0.291668, -0.799931, 0.524442,
		34.209019, 37.860542, 26.571524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761581, 38.439114, 26.357182>,  <34.004848, 38.420494, 26.204412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761581, 38.439114, 26.357182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667923, 38.050812, 26.335964>,  <34.611729, 37.817829, 26.323235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667923, 38.050812, 26.335964>,  <34.761581, 38.439114, 26.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667923, 38.050812, 26.335964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786985, -0.157223, -0.596603,
		0.570815, -0.181436, 0.800782,
		-0.234147, -0.970753, -0.053043,
		34.597679, 37.759586, 26.320051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366894, 37.911877, 26.585604>,  <34.761581, 38.439114, 26.357182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366894, 37.911877, 26.585604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135933, 37.755020, 26.299156>,  <34.997356, 37.660908, 26.127287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135933, 37.755020, 26.299156>,  <35.366894, 37.911877, 26.585604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135933, 37.755020, 26.299156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804691, -0.124964, -0.580393,
		0.138108, -0.911377, 0.387709,
		-0.577406, -0.392143, -0.716119,
		34.962711, 37.637379, 26.084320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831886, 37.369034, 26.292507>,  <35.366894, 37.911877, 26.585604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831886, 37.369034, 26.292507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581146, 37.467484, 25.996811>,  <35.430702, 37.526554, 25.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581146, 37.467484, 25.996811>,  <35.831886, 37.369034, 26.292507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581146, 37.467484, 25.996811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737952, -0.116845, -0.664661,
		-0.249966, -0.962170, -0.108382,
		-0.626853, 0.246123, -0.739242,
		35.393089, 37.541321, 25.775038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832211, 36.844170, 26.886719>,  <35.831886, 37.369034, 26.292507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832211, 36.844170, 26.886719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674950, 36.549770, 26.666267>,  <35.580593, 36.373131, 26.533997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674950, 36.549770, 26.666267>,  <35.832211, 36.844170, 26.886719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674950, 36.549770, 26.666267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607577, -0.241937, 0.756516,
		-0.690130, 0.632280, -0.352055,
		-0.393154, -0.735995, -0.551127,
		35.557003, 36.328972, 26.500929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042065, 36.962708, 26.881950>,  <35.832211, 36.844170, 26.886719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042065, 36.962708, 26.881950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175148, 36.588432, 26.834974>,  <35.254997, 36.363869, 26.806787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175148, 36.588432, 26.834974>,  <35.042065, 36.962708, 26.881950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175148, 36.588432, 26.834974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551170, -0.293992, 0.780885,
		-0.765192, -0.195074, -0.613536,
		0.332705, -0.935690, -0.117442,
		35.274960, 36.307724, 26.799742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476177, 36.469185, 26.919470>,  <35.042065, 36.962708, 26.881950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476177, 36.469185, 26.919470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815540, 36.286083, 27.025805>,  <35.019157, 36.176224, 27.089605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815540, 36.286083, 27.025805>,  <34.476177, 36.469185, 26.919470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815540, 36.286083, 27.025805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417655, -0.270317, 0.867464,
		-0.325230, -0.846986, -0.420524,
		0.848404, -0.457759, 0.265833,
		35.070061, 36.148758, 27.105555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293140, 35.828186, 27.168850>,  <34.476177, 36.469185, 26.919470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293140, 35.828186, 27.168850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606804, 35.979515, 27.365610>,  <34.795002, 36.070312, 27.483665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606804, 35.979515, 27.365610>,  <34.293140, 35.828186, 27.168850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606804, 35.979515, 27.365610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422493, -0.255114, 0.869722,
		0.454526, -0.889826, -0.040212,
		0.784159, 0.378322, 0.491901,
		34.842052, 36.093010, 27.513180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103367, 35.390892, 26.546028>,  <34.293140, 35.828186, 27.168850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103367, 35.390892, 26.546028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409447, 35.381882, 26.803387>,  <34.593094, 35.376476, 26.957802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409447, 35.381882, 26.803387>,  <34.103367, 35.390892, 26.546028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409447, 35.381882, 26.803387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636288, -0.178597, 0.750494,
		0.098006, -0.983664, -0.150993,
		0.765201, -0.022522, 0.643397,
		34.639008, 35.375126, 26.996407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027542, 34.814964, 26.924517>,  <34.103367, 35.390892, 26.546028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027542, 34.814964, 26.924517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238483, 35.073284, 27.145367>,  <34.365047, 35.228275, 27.277878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238483, 35.073284, 27.145367>,  <34.027542, 34.814964, 26.924517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238483, 35.073284, 27.145367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566990, -0.216491, 0.794766,
		0.632791, -0.732170, 0.251996,
		0.527349, 0.645801, 0.552127,
		34.396687, 35.267025, 27.311005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261955, 34.466415, 27.501698>,  <34.027542, 34.814964, 26.924517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261955, 34.466415, 27.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273342, 34.846176, 27.626812>,  <34.280174, 35.074032, 27.701880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273342, 34.846176, 27.626812>,  <34.261955, 34.466415, 27.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273342, 34.846176, 27.626812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619694, -0.228764, 0.750764,
		0.784327, -0.215200, 0.581825,
		0.028464, 0.949398, 0.312784,
		34.281883, 35.130997, 27.720648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349575, 34.391960, 28.210430>,  <34.261955, 34.466415, 27.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349575, 34.391960, 28.210430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190559, 34.754429, 28.152719>,  <34.095150, 34.971909, 28.118093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190559, 34.754429, 28.152719>,  <34.349575, 34.391960, 28.210430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190559, 34.754429, 28.152719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699307, -0.197405, 0.687024,
		0.594080, 0.374014, 0.712168,
		-0.397542, 0.906171, -0.144276,
		34.071297, 35.026279, 28.109436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258110, 34.528812, 28.834084>,  <34.349575, 34.391960, 28.210430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258110, 34.528812, 28.834084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017235, 34.759480, 28.613239>,  <33.872711, 34.897881, 28.480734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017235, 34.759480, 28.613239>,  <34.258110, 34.528812, 28.834084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017235, 34.759480, 28.613239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738960, -0.140856, 0.658861,
		0.302178, 0.804743, 0.510957,
		-0.602186, 0.576670, -0.552109,
		33.836578, 34.932480, 28.447607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970646, 35.082573, 29.284895>,  <34.258110, 34.528812, 28.834084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970646, 35.082573, 29.284895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764206, 34.927494, 28.979391>,  <33.640343, 34.834446, 28.796089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764206, 34.927494, 28.979391>,  <33.970646, 35.082573, 29.284895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764206, 34.927494, 28.979391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813259, -0.058018, 0.579003,
		-0.268790, 0.919959, -0.285355,
		-0.516103, -0.387697, -0.763759,
		33.609375, 34.811184, 28.750263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291462, 34.895760, 29.944576>,  <33.970646, 35.082573, 29.284895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291462, 34.895760, 29.944576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353733, 34.989899, 30.328321>,  <34.391094, 35.046383, 30.558569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353733, 34.989899, 30.328321>,  <34.291462, 34.895760, 29.944576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353733, 34.989899, 30.328321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367004, 0.887904, -0.277370,
		-0.917101, 0.395269, 0.051850,
		0.155674, 0.235347, 0.959363,
		34.400436, 35.060501, 30.616131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992008, 35.095314, 29.652349>,  <34.291462, 34.895760, 29.944576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992008, 35.095314, 29.652349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008415, 34.928871, 29.288994>,  <35.018261, 34.829006, 29.070980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008415, 34.928871, 29.288994>,  <34.992008, 35.095314, 29.652349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008415, 34.928871, 29.288994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471529, 0.809607, -0.349566,
		0.880896, -0.413994, 0.229416,
		0.041019, -0.416108, -0.908390,
		35.020721, 34.804039, 29.016478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658558, 34.975540, 29.425724>,  <34.992008, 35.095314, 29.652349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658558, 34.975540, 29.425724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424915, 35.077419, 29.117453>,  <35.284729, 35.138546, 28.932489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424915, 35.077419, 29.117453>,  <35.658558, 34.975540, 29.425724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424915, 35.077419, 29.117453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696359, 0.645069, -0.314595,
		0.417014, -0.720426, -0.554152,
		-0.584109, 0.254698, -0.770679,
		35.249683, 35.153828, 28.886250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795982, 34.671646, 28.708460>,  <35.658558, 34.975540, 29.425724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795982, 34.671646, 28.708460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648457, 35.037727, 28.773418>,  <35.559940, 35.257378, 28.812393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648457, 35.037727, 28.773418>,  <35.795982, 34.671646, 28.708460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648457, 35.037727, 28.773418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903400, 0.394060, -0.169068,
		-0.218725, 0.084353, -0.972134,
		-0.368818, 0.915205, 0.162396,
		35.537811, 35.312290, 28.822138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078167, 35.223785, 28.236996>,  <35.795982, 34.671646, 28.708460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078167, 35.223785, 28.236996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916744, 35.479492, 28.498827>,  <35.819889, 35.632915, 28.655926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916744, 35.479492, 28.498827>,  <36.078167, 35.223785, 28.236996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916744, 35.479492, 28.498827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828459, 0.558947, -0.035116,
		-0.388323, 0.528120, -0.755178,
		-0.403559, 0.639271, 0.654578,
		35.795677, 35.671272, 28.695200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273682, 35.850742, 28.017370>,  <36.078167, 35.223785, 28.236996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273682, 35.850742, 28.017370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156807, 35.921963, 28.393227>,  <36.086681, 35.964695, 28.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156807, 35.921963, 28.393227>,  <36.273682, 35.850742, 28.017370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156807, 35.921963, 28.393227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517918, 0.855430, -0.001041,
		-0.803981, 0.486352, -0.342163,
		-0.292190, 0.178049, 0.939640,
		36.069149, 35.975376, 28.675119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269226, 36.560337, 28.173485>,  <36.273682, 35.850742, 28.017370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269226, 36.560337, 28.173485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309071, 36.397530, 28.536674>,  <36.332977, 36.299847, 28.754589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309071, 36.397530, 28.536674>,  <36.269226, 36.560337, 28.173485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309071, 36.397530, 28.536674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595811, 0.755236, 0.273183,
		-0.796923, 0.513768, 0.317735,
		0.099612, -0.407015, 0.907974,
		36.338955, 36.275425, 28.809067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095871, 37.059883, 28.870461>,  <36.269226, 36.560337, 28.173485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095871, 37.059883, 28.870461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356853, 36.760059, 28.915127>,  <36.513443, 36.580166, 28.941927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356853, 36.760059, 28.915127>,  <36.095871, 37.059883, 28.870461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356853, 36.760059, 28.915127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689888, 0.648457, 0.321804,
		-0.313621, -0.132925, 0.940198,
		0.652454, -0.749556, 0.111666,
		36.552589, 36.535194, 28.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513794, 36.937389, 29.575287>,  <36.095871, 37.059883, 28.870461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513794, 36.937389, 29.575287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722500, 36.809883, 29.258770>,  <36.847725, 36.733379, 29.068859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722500, 36.809883, 29.258770>,  <36.513794, 36.937389, 29.575287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722500, 36.809883, 29.258770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700434, 0.689574, 0.184065,
		0.486980, -0.650287, 0.583076,
		0.521769, -0.318770, -0.791292,
		36.879032, 36.714252, 29.021383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110176, 36.430809, 29.718596>,  <36.513794, 36.937389, 29.575287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110176, 36.430809, 29.718596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895485, 36.687725, 29.937462>,  <36.766670, 36.841873, 30.068781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895485, 36.687725, 29.937462>,  <37.110176, 36.430809, 29.718596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895485, 36.687725, 29.937462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691001, -0.706738, 0.151784,
		0.484191, -0.296624, 0.823148,
		-0.536728, 0.642289, 0.547164,
		36.734467, 36.880413, 30.101610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019779, 36.401363, 30.511438>,  <37.110176, 36.430809, 29.718596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019779, 36.401363, 30.511438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679447, 36.480183, 30.316599>,  <36.475250, 36.527473, 30.199696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679447, 36.480183, 30.316599>,  <37.019779, 36.401363, 30.511438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679447, 36.480183, 30.316599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305161, -0.939966, 0.152774,
		-0.427752, 0.278628, 0.859880,
		-0.850826, 0.197053, -0.487099,
		36.424198, 36.539299, 30.170469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811779, 35.705761, 30.224482>,  <37.019779, 36.401363, 30.511438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811779, 35.705761, 30.224482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792164, 35.658081, 29.827818>,  <36.780396, 35.629471, 29.589821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792164, 35.658081, 29.827818>,  <36.811779, 35.705761, 30.224482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792164, 35.658081, 29.827818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120544, 0.986302, -0.112599,
		0.991496, 0.114017, -0.062737,
		-0.049039, -0.119204, -0.991658,
		36.777451, 35.622318, 29.530321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480106, 35.804363, 30.597027>,  <36.811779, 35.705761, 30.224482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480106, 35.804363, 30.597027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768436, 35.900742, 30.337072>,  <37.941437, 35.958569, 30.181099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768436, 35.900742, 30.337072>,  <37.480106, 35.804363, 30.597027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768436, 35.900742, 30.337072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690312, -0.333778, 0.641920,
		-0.062250, -0.911338, -0.406925,
		0.720829, 0.240946, -0.649886,
		37.984684, 35.973026, 30.142107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918747, 35.188526, 30.469671>,  <37.480106, 35.804363, 30.597027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918747, 35.188526, 30.469671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128971, 35.510437, 30.359318>,  <38.255108, 35.703583, 30.293106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128971, 35.510437, 30.359318>,  <37.918747, 35.188526, 30.469671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128971, 35.510437, 30.359318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797418, -0.352980, 0.489418,
		0.296492, -0.477215, -0.827260,
		0.525564, 0.804780, -0.275883,
		38.286640, 35.751869, 30.276552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675983, 34.990097, 30.118563>,  <37.918747, 35.188526, 30.469671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675983, 34.990097, 30.118563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646343, 35.342892, 30.304729>,  <38.628559, 35.554569, 30.416430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646343, 35.342892, 30.304729>,  <38.675983, 34.990097, 30.118563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646343, 35.342892, 30.304729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801206, -0.225233, 0.554381,
		0.593783, 0.413974, -0.689962,
		-0.074097, 0.881984, 0.465418,
		38.624115, 35.607487, 30.444355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647556, 35.027138, 29.393215>,  <38.675983, 34.990097, 30.118563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647556, 35.027138, 29.393215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442577, 35.370449, 29.404215>,  <38.319592, 35.576435, 29.410814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442577, 35.370449, 29.404215>,  <38.647556, 35.027138, 29.393215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442577, 35.370449, 29.404215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857924, 0.513084, -0.026675,
		-0.037004, 0.009923, -0.999266,
		-0.512443, 0.858281, 0.027499,
		38.288845, 35.627934, 29.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953602, 35.611237, 29.007765>,  <38.647556, 35.027138, 29.393215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953602, 35.611237, 29.007765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731682, 35.865429, 29.222565>,  <38.598530, 36.017944, 29.351444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731682, 35.865429, 29.222565>,  <38.953602, 35.611237, 29.007765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731682, 35.865429, 29.222565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754457, 0.656344, 0.002756,
		-0.350705, 0.406673, -0.843577,
		-0.554797, 0.635476, 0.537001,
		38.565243, 36.056072, 29.383665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407452, 34.968239, 29.162718>,  <38.953602, 35.611237, 29.007765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407452, 34.968239, 29.162718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651169, 35.253323, 29.301746>,  <39.797401, 35.424374, 29.385162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651169, 35.253323, 29.301746>,  <39.407452, 34.968239, 29.162718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651169, 35.253323, 29.301746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202111, -0.284265, 0.937201,
		0.766752, -0.641280, -0.029155,
		0.609296, 0.712708, 0.347570,
		39.833958, 35.467136, 29.406017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009663, 34.718033, 29.594809>,  <39.407452, 34.968239, 29.162718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009663, 34.718033, 29.594809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885597, 35.080673, 29.709263>,  <39.811157, 35.298256, 29.777935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885597, 35.080673, 29.709263>,  <40.009663, 34.718033, 29.594809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885597, 35.080673, 29.709263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033821, -0.311312, 0.949706,
		0.950080, 0.284891, 0.127221,
		-0.310168, 0.906599, 0.286136,
		39.792545, 35.352654, 29.795103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535961, 35.156357, 29.998882>,  <40.009663, 34.718033, 29.594809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535961, 35.156357, 29.998882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163624, 35.247372, 30.113255>,  <39.940220, 35.301983, 30.181877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163624, 35.247372, 30.113255>,  <40.535961, 35.156357, 29.998882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163624, 35.247372, 30.113255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211606, -0.302283, 0.929434,
		0.297915, 0.925662, 0.233230,
		-0.930843, 0.227540, 0.285931,
		39.884369, 35.315632, 30.199034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598564, 35.567307, 30.584620>,  <40.535961, 35.156357, 29.998882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598564, 35.567307, 30.584620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265923, 35.345181, 30.587540>,  <40.066338, 35.211903, 30.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265923, 35.345181, 30.587540>,  <40.598564, 35.567307, 30.584620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265923, 35.345181, 30.587540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296718, -0.433157, 0.851078,
		-0.469458, 0.709927, 0.524989,
		-0.831606, -0.555319, 0.007299,
		40.016441, 35.178585, 30.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157936, 35.557739, 31.294657>,  <40.598564, 35.567307, 30.584620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157936, 35.557739, 31.294657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102283, 35.212730, 31.100050>,  <40.068893, 35.005726, 30.983286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102283, 35.212730, 31.100050>,  <40.157936, 35.557739, 31.294657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102283, 35.212730, 31.100050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234761, -0.506017, 0.829960,
		-0.962045, 0.001257, 0.272888,
		-0.139130, -0.862523, -0.486516,
		40.060543, 34.953972, 30.954096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438984, 35.904343, 31.940165>,  <40.157936, 35.557739, 31.294657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438984, 35.904343, 31.940165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673489, 36.225452, 31.983727>,  <40.814190, 36.418118, 32.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673489, 36.225452, 31.983727>,  <40.438984, 35.904343, 31.940165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673489, 36.225452, 31.983727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804299, 0.592852, -0.040368,
		-0.096970, -0.063924, 0.993232,
		0.586259, 0.802771, 0.108903,
		40.849365, 36.466282, 32.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976418, 35.640984, 31.590349>,  <40.438984, 35.904343, 31.940165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976418, 35.640984, 31.590349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314610, 35.542370, 31.400875>,  <41.517525, 35.483200, 31.287191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314610, 35.542370, 31.400875>,  <40.976418, 35.640984, 31.590349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314610, 35.542370, 31.400875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379488, 0.901473, 0.208172,
		0.375692, -0.355763, 0.855738,
		0.845485, -0.246534, -0.473684,
		41.568256, 35.468410, 31.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581436, 35.608501, 32.020176>,  <40.976418, 35.640984, 31.590349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581436, 35.608501, 32.020176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748432, 35.686569, 31.665186>,  <41.848629, 35.733410, 31.452192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748432, 35.686569, 31.665186>,  <41.581436, 35.608501, 32.020176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748432, 35.686569, 31.665186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418181, 0.825825, 0.378334,
		0.806738, -0.529076, 0.263158,
		0.417490, 0.195169, -0.887474,
		41.873680, 35.745121, 31.398943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301983, 35.615337, 31.986340>,  <41.581436, 35.608501, 32.020176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301983, 35.615337, 31.986340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195232, 35.881962, 31.707922>,  <42.131184, 36.041935, 31.540871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195232, 35.881962, 31.707922>,  <42.301983, 35.615337, 31.986340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195232, 35.881962, 31.707922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438929, 0.727050, 0.527957,
		0.857973, -0.164614, -0.486605,
		-0.266877, 0.666559, -0.696043,
		42.115170, 36.081928, 31.499109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899307, 35.907372, 31.544151>,  <42.301983, 35.615337, 31.986340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899307, 35.907372, 31.544151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603722, 36.159126, 31.640316>,  <42.426369, 36.310181, 31.698015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603722, 36.159126, 31.640316>,  <42.899307, 35.907372, 31.544151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603722, 36.159126, 31.640316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656995, 0.594097, 0.464119,
		0.149284, 0.500918, -0.852523,
		-0.738967, 0.629389, 0.240411,
		42.382030, 36.347942, 31.712439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391193, 35.963848, 32.145039>,  <42.899307, 35.907372, 31.544151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391193, 35.963848, 32.145039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714451, 36.133068, 32.308956>,  <43.908405, 36.234600, 32.407307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714451, 36.133068, 32.308956>,  <43.391193, 35.963848, 32.145039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714451, 36.133068, 32.308956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566921, 0.747371, 0.346465,
		-0.159692, -0.512312, 0.843821,
		0.808146, 0.423052, 0.409789,
		43.956894, 36.259983, 32.431892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286167, 36.047283, 32.942936>,  <43.391193, 35.963848, 32.145039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286167, 36.047283, 32.942936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511993, 36.323799, 32.762547>,  <43.647491, 36.489708, 32.654312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511993, 36.323799, 32.762547>,  <43.286167, 36.047283, 32.942936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511993, 36.323799, 32.762547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531830, 0.722513, 0.441737,
		0.631205, -0.009549, 0.775558,
		0.564569, 0.691291, -0.450975,
		43.681366, 36.531185, 32.627254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696964, 36.436539, 33.475117>,  <43.286167, 36.047283, 32.942936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696964, 36.436539, 33.475117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600742, 36.645706, 33.148022>,  <43.543007, 36.771206, 32.951767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600742, 36.645706, 33.148022>,  <43.696964, 36.436539, 33.475117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600742, 36.645706, 33.148022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595808, 0.585528, 0.549700,
		0.766254, 0.619448, 0.170704,
		-0.240559, 0.522916, -0.817735,
		43.528576, 36.802582, 32.902702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608707, 36.024189, 34.146149>,  <43.696964, 36.436539, 33.475117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608707, 36.024189, 34.146149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632782, 35.967110, 33.750977>,  <43.647228, 35.932861, 33.513874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632782, 35.967110, 33.750977>,  <43.608707, 36.024189, 34.146149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632782, 35.967110, 33.750977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970814, 0.238558, 0.024687,
		0.232157, -0.960586, 0.152895,
		0.060189, -0.142701, -0.987934,
		43.650837, 35.924301, 33.454597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073105, 35.460197, 34.272083>,  <43.608707, 36.024189, 34.146149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073105, 35.460197, 34.272083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372349, 35.509109, 34.011200>,  <43.551895, 35.538456, 33.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372349, 35.509109, 34.011200>,  <43.073105, 35.460197, 34.272083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372349, 35.509109, 34.011200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507937, -0.737986, 0.444271,
		-0.426996, -0.663645, -0.614207,
		0.748114, 0.122276, -0.652207,
		43.596783, 35.545792, 33.815536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579460, 34.870228, 34.331188>,  <43.073105, 35.460197, 34.272083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579460, 34.870228, 34.331188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368969, 34.610489, 34.550800>,  <43.242676, 34.454647, 34.682568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368969, 34.610489, 34.550800>,  <43.579460, 34.870228, 34.331188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368969, 34.610489, 34.550800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597479, 0.177072, 0.782090,
		-0.605065, 0.739591, 0.294791,
		-0.526227, -0.649347, 0.549030,
		43.211102, 34.415684, 34.715511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093338, 35.350700, 34.271725>,  <43.579460, 34.870228, 34.331188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093338, 35.350700, 34.271725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356453, 35.204197, 34.534988>,  <44.514320, 35.116295, 34.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356453, 35.204197, 34.534988>,  <44.093338, 35.350700, 34.271725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356453, 35.204197, 34.534988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039525, -0.855825, -0.515753,
		0.752167, 0.365269, -0.548474,
		0.657786, -0.366254, 0.658160,
		44.553787, 35.094322, 34.732437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362602, 34.715023, 33.916759>,  <44.093338, 35.350700, 34.271725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362602, 34.715023, 33.916759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532711, 34.683876, 34.277443>,  <44.634777, 34.665188, 34.493855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532711, 34.683876, 34.277443>,  <44.362602, 34.715023, 33.916759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532711, 34.683876, 34.277443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189244, -0.966619, -0.172727,
		0.885060, 0.244099, -0.396339,
		0.425272, -0.077869, 0.901710,
		44.660294, 34.660515, 34.547955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131500, 34.630516, 33.850277>,  <44.362602, 34.715023, 33.916759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131500, 34.630516, 33.850277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030441, 34.478130, 34.206039>,  <44.969807, 34.386700, 34.419495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030441, 34.478130, 34.206039>,  <45.131500, 34.630516, 33.850277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030441, 34.478130, 34.206039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485544, -0.845020, -0.224028,
		0.836909, 0.375244, 0.398466,
		-0.252647, -0.380963, 0.889403,
		44.954647, 34.363842, 34.472858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446312, 34.040173, 33.918980>,  <45.131500, 34.630516, 33.850277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446312, 34.040173, 33.918980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255333, 33.977585, 34.264824>,  <45.140747, 33.940033, 34.472332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255333, 33.977585, 34.264824>,  <45.446312, 34.040173, 33.918980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255333, 33.977585, 34.264824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283827, -0.958729, -0.016769,
		0.831556, 0.237395, 0.502154,
		-0.477449, -0.156470, 0.864615,
		45.112099, 33.930645, 34.524208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053635, 34.053768, 34.311317>,  <45.446312, 34.040173, 33.918980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053635, 34.053768, 34.311317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043095, 34.166328, 33.927628>,  <46.036770, 34.233864, 33.697414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043095, 34.166328, 33.927628>,  <46.053635, 34.053768, 34.311317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043095, 34.166328, 33.927628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287274, 0.921217, 0.262359,
		0.957486, -0.268649, -0.105109,
		-0.026346, 0.281400, -0.959229,
		46.035191, 34.250748, 33.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667923, 34.430859, 34.281120>,  <46.053635, 34.053768, 34.311317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667923, 34.430859, 34.281120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425461, 34.545933, 33.984524>,  <46.279984, 34.614979, 33.806564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425461, 34.545933, 33.984524>,  <46.667923, 34.430859, 34.281120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.425461, 34.545933, 33.984524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306314, 0.944816, 0.116165,
		0.733995, -0.156716, -0.660827,
		-0.606155, 0.287685, -0.741494,
		46.243614, 34.632236, 33.762077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545521, 34.858238, 34.745529>,  <46.667923, 34.430859, 34.281120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545521, 34.858238, 34.745529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892300, 34.686768, 34.643829>,  <47.100365, 34.583885, 34.582809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892300, 34.686768, 34.643829>,  <46.545521, 34.858238, 34.745529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892300, 34.686768, 34.643829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491946, 0.817849, 0.298518,
		0.079966, -0.383873, 0.919917,
		0.866946, -0.428678, -0.254245,
		47.152382, 34.558163, 34.567554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984043, 35.089554, 35.208046>,  <46.545521, 34.858238, 34.745529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984043, 35.089554, 35.208046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186516, 34.982815, 34.880005>,  <47.307999, 34.918770, 34.683182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186516, 34.982815, 34.880005>,  <46.984043, 35.089554, 35.208046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.186516, 34.982815, 34.880005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585861, 0.804229, 0.099920,
		0.632885, -0.531043, 0.563427,
		0.506186, -0.266852, -0.820101,
		47.338371, 34.902760, 34.633976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727070, 35.063465, 35.354584>,  <46.984043, 35.089554, 35.208046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727070, 35.063465, 35.354584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666759, 35.143871, 34.967419>,  <47.630573, 35.192116, 34.735119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666759, 35.143871, 34.967419>,  <47.727070, 35.063465, 35.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666759, 35.143871, 34.967419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664280, 0.745715, 0.051392,
		0.732119, -0.635218, -0.245968,
		-0.150777, 0.201017, -0.967914,
		47.621525, 35.204178, 34.677044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.223660, 39.483383, 16.721468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501083, 39.201172, 16.663214>,  <32.667538, 39.031845, 16.628262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501083, 39.201172, 16.663214>,  <32.223660, 39.483383, 16.721468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501083, 39.201172, 16.663214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050633, -0.153919, 0.986785,
		-0.718619, -0.691767, -0.071029,
		0.693558, -0.705527, -0.145636,
		32.709152, 38.989513, 16.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170273, 38.897697, 17.246273>,  <32.223660, 39.483383, 16.721468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170273, 38.897697, 17.246273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.542946, 38.882065, 17.101807>,  <32.766548, 38.872684, 17.015127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.542946, 38.882065, 17.101807>,  <32.170273, 38.897697, 17.246273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542946, 38.882065, 17.101807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339458, -0.260394, 0.903860,
		-0.129370, -0.964711, -0.229338,
		0.931682, -0.039082, -0.361167,
		32.822449, 38.870338, 16.993456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516281, 38.205357, 17.552860>,  <32.170273, 38.897697, 17.246273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516281, 38.205357, 17.552860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772926, 38.492744, 17.445425>,  <32.926914, 38.665176, 17.380964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772926, 38.492744, 17.445425>,  <32.516281, 38.205357, 17.552860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772926, 38.492744, 17.445425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486144, -0.110051, 0.866922,
		0.593299, -0.686797, -0.419889,
		0.641608, 0.718470, -0.268588,
		32.965408, 38.708286, 17.364849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184128, 37.942413, 17.633804>,  <32.516281, 38.205357, 17.552860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184128, 37.942413, 17.633804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242413, 38.336578, 17.668974>,  <33.277386, 38.573078, 17.690077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242413, 38.336578, 17.668974>,  <33.184128, 37.942413, 17.633804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242413, 38.336578, 17.668974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429121, -0.143032, 0.891850,
		0.891416, -0.092224, -0.443702,
		0.145714, 0.985412, 0.087926,
		33.286125, 38.632202, 17.695353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874069, 37.938110, 17.857843>,  <33.184128, 37.942413, 17.633804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874069, 37.938110, 17.857843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716755, 38.295452, 17.944784>,  <33.622368, 38.509857, 17.996948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716755, 38.295452, 17.944784>,  <33.874069, 37.938110, 17.857843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716755, 38.295452, 17.944784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341409, -0.077600, 0.936706,
		0.853678, 0.442599, -0.274481,
		-0.393286, 0.893355, 0.217353,
		33.598770, 38.563457, 18.009991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413490, 38.217281, 18.172485>,  <33.874069, 37.938110, 17.857843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413490, 38.217281, 18.172485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090931, 38.419598, 18.295057>,  <33.897396, 38.540989, 18.368601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090931, 38.419598, 18.295057>,  <34.413490, 38.217281, 18.172485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090931, 38.419598, 18.295057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222689, -0.220310, 0.949670,
		0.547845, 0.834050, 0.065023,
		-0.806397, 0.505792, 0.306429,
		33.849010, 38.571335, 18.386986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608368, 38.672459, 18.739414>,  <34.413490, 38.217281, 18.172485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608368, 38.672459, 18.739414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211018, 38.652443, 18.780794>,  <33.972607, 38.640434, 18.805622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211018, 38.652443, 18.780794>,  <34.608368, 38.672459, 18.739414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211018, 38.652443, 18.780794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109719, -0.145354, 0.983277,
		-0.034168, 0.988113, 0.149881,
		-0.993375, -0.050041, 0.103448,
		33.913006, 38.637432, 18.811829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345135, 39.236916, 19.256926>,  <34.608368, 38.672459, 18.739414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345135, 39.236916, 19.256926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092484, 38.927975, 19.230051>,  <33.940891, 38.742611, 19.213926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092484, 38.927975, 19.230051>,  <34.345135, 39.236916, 19.256926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092484, 38.927975, 19.230051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015658, -0.099353, 0.994929,
		-0.775114, 0.627372, 0.074848,
		-0.631627, -0.772355, -0.067186,
		33.902996, 38.696266, 19.209894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012779, 39.307209, 19.854235>,  <34.345135, 39.236916, 19.256926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012779, 39.307209, 19.854235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883068, 38.937210, 19.775017>,  <33.805241, 38.715210, 19.727486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883068, 38.937210, 19.775017>,  <34.012779, 39.307209, 19.854235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883068, 38.937210, 19.775017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091042, -0.177867, 0.979834,
		-0.941572, 0.335764, -0.026537,
		-0.324273, -0.925000, -0.198043,
		33.785786, 38.659710, 19.715605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280182, 39.316288, 20.126276>,  <34.012779, 39.307209, 19.854235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280182, 39.316288, 20.126276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.430252, 38.947426, 20.088602>,  <33.520294, 38.726109, 20.065998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.430252, 38.947426, 20.088602>,  <33.280182, 39.316288, 20.126276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430252, 38.947426, 20.088602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346412, -0.233727, 0.908499,
		-0.859791, -0.308222, -0.407135,
		0.375178, -0.922156, -0.094185,
		33.542805, 38.670780, 20.060347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794773, 38.955551, 20.395180>,  <33.280182, 39.316288, 20.126276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794773, 38.955551, 20.395180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115341, 38.716339, 20.391470>,  <33.307682, 38.572811, 20.389244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115341, 38.716339, 20.391470>,  <32.794773, 38.955551, 20.395180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115341, 38.716339, 20.391470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185955, -0.263877, 0.946462,
		-0.568461, -0.756788, -0.322683,
		0.801419, -0.598031, -0.009276,
		33.355766, 38.536930, 20.388687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539894, 38.298409, 20.689142>,  <32.794773, 38.955551, 20.395180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539894, 38.298409, 20.689142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930775, 38.354828, 20.752628>,  <33.165302, 38.388680, 20.790720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930775, 38.354828, 20.752628>,  <32.539894, 38.298409, 20.689142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930775, 38.354828, 20.752628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131443, -0.185186, 0.973873,
		0.166757, -0.972528, -0.162423,
		0.977198, 0.141051, 0.158713,
		33.223934, 38.397144, 20.800241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626774, 37.890827, 21.238380>,  <32.539894, 38.298409, 20.689142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626774, 37.890827, 21.238380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959621, 38.112495, 21.229620>,  <33.159328, 38.245495, 21.224363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959621, 38.112495, 21.229620>,  <32.626774, 37.890827, 21.238380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959621, 38.112495, 21.229620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108361, -0.123732, 0.986381,
		0.543911, -0.823158, -0.163010,
		0.832117, 0.554168, -0.021899,
		33.209255, 38.278748, 21.223051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017181, 37.525391, 21.723669>,  <32.626774, 37.890827, 21.238380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017181, 37.525391, 21.723669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185593, 37.886429, 21.687786>,  <33.286640, 38.103054, 21.666256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185593, 37.886429, 21.687786>,  <33.017181, 37.525391, 21.723669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185593, 37.886429, 21.687786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041920, 0.118156, 0.992110,
		0.906077, -0.413949, 0.087584,
		0.421032, 0.902599, -0.089705,
		33.311901, 38.157207, 21.660875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567707, 37.579720, 22.275461>,  <33.017181, 37.525391, 21.723669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567707, 37.579720, 22.275461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452564, 37.947262, 22.167505>,  <33.383480, 38.167789, 22.102732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452564, 37.947262, 22.167505>,  <33.567707, 37.579720, 22.275461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452564, 37.947262, 22.167505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070302, 0.260785, 0.962834,
		0.955091, 0.296129, -0.010470,
		-0.287853, 0.918858, -0.269892,
		33.366207, 38.222919, 22.086538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852581, 38.090370, 22.762972>,  <33.567707, 37.579720, 22.275461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852581, 38.090370, 22.762972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545311, 38.300659, 22.616806>,  <33.360950, 38.426830, 22.529106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545311, 38.300659, 22.616806>,  <33.852581, 38.090370, 22.762972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545311, 38.300659, 22.616806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074245, 0.493750, 0.866429,
		0.635923, 0.692698, -0.340253,
		-0.768173, 0.525720, -0.365416,
		33.314857, 38.458374, 22.507181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980522, 38.827816, 22.976328>,  <33.852581, 38.090370, 22.762972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980522, 38.827816, 22.976328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590923, 38.762764, 22.913233>,  <33.357162, 38.723732, 22.875376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590923, 38.762764, 22.913233>,  <33.980522, 38.827816, 22.976328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590923, 38.762764, 22.913233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220719, 0.524037, 0.822599,
		-0.051122, 0.836024, -0.546307,
		-0.973997, -0.162634, -0.157736,
		33.298725, 38.713974, 22.865911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695698, 39.472549, 23.156004>,  <33.980522, 38.827816, 22.976328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695698, 39.472549, 23.156004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389767, 39.215321, 23.171486>,  <33.206207, 39.060982, 23.180775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389767, 39.215321, 23.171486>,  <33.695698, 39.472549, 23.156004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389767, 39.215321, 23.171486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361207, 0.477787, 0.800780,
		-0.533454, 0.598476, -0.597706,
		-0.764825, -0.643075, 0.038704,
		33.160320, 39.022400, 23.183098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041706, 39.862415, 23.271906>,  <33.695698, 39.472549, 23.156004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041706, 39.862415, 23.271906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.991093, 39.486332, 23.398394>,  <32.960724, 39.260681, 23.474287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.991093, 39.486332, 23.398394>,  <33.041706, 39.862415, 23.271906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991093, 39.486332, 23.398394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464516, 0.337831, 0.818593,
		-0.876478, -0.043311, -0.479489,
		-0.126532, -0.940210, 0.316220,
		32.953133, 39.204269, 23.493259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452660, 39.949348, 23.698000>,  <33.041706, 39.862415, 23.271906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452660, 39.949348, 23.698000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628105, 39.603443, 23.795824>,  <32.733372, 39.395901, 23.854519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628105, 39.603443, 23.795824>,  <32.452660, 39.949348, 23.698000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628105, 39.603443, 23.795824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289729, 0.121531, 0.949361,
		-0.850691, -0.487259, -0.197241,
		0.438614, -0.864759, 0.244558,
		32.759689, 39.344017, 23.869192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930468, 39.460518, 23.971701>,  <32.452660, 39.949348, 23.698000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930468, 39.460518, 23.971701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.285851, 39.362774, 24.127098>,  <32.499081, 39.304127, 24.220337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.285851, 39.362774, 24.127098>,  <31.930468, 39.460518, 23.971701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285851, 39.362774, 24.127098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350257, 0.185997, 0.918001,
		-0.296581, -0.951679, 0.079662,
		0.888459, -0.244359, 0.388496,
		32.552387, 39.289467, 24.243647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755632, 39.034687, 24.612957>,  <31.930468, 39.460518, 23.971701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755632, 39.034687, 24.612957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.138805, 39.144146, 24.647551>,  <32.368710, 39.209820, 24.668306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.138805, 39.144146, 24.647551>,  <31.755632, 39.034687, 24.612957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138805, 39.144146, 24.647551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166344, 0.283857, 0.944328,
		0.233861, -0.918991, 0.317436,
		0.957935, 0.273646, 0.086486,
		32.426186, 39.226242, 24.673496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224094, 38.662788, 25.147257>,  <31.755632, 39.034687, 24.612957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224094, 38.662788, 25.147257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836403, 38.652023, 25.245134>,  <30.603788, 38.645565, 25.303862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836403, 38.652023, 25.245134>,  <31.224094, 38.662788, 25.147257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836403, 38.652023, 25.245134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234387, 0.404715, -0.883894,
		-0.075248, -0.914047, -0.398568,
		-0.969227, -0.026908, 0.244695,
		30.545635, 38.643951, 25.318542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886751, 38.283764, 24.652838>,  <31.224094, 38.662788, 25.147257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886751, 38.283764, 24.652838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.596210, 38.520897, 24.791952>,  <30.421886, 38.663177, 24.875422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.596210, 38.520897, 24.791952>,  <30.886751, 38.283764, 24.652838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596210, 38.520897, 24.791952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169522, 0.335847, -0.926536,
		-0.666088, -0.731950, -0.143445,
		-0.726354, 0.592837, 0.347785,
		30.378304, 38.698750, 24.896288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350515, 38.222721, 24.178501>,  <30.886751, 38.283764, 24.652838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350515, 38.222721, 24.178501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242056, 38.553894, 24.374870>,  <30.176981, 38.752598, 24.492691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242056, 38.553894, 24.374870>,  <30.350515, 38.222721, 24.178501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242056, 38.553894, 24.374870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159814, 0.464225, -0.871180,
		-0.949178, -0.314674, 0.006442,
		-0.271147, 0.827935, 0.490921,
		30.160711, 38.802273, 24.522146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765020, 38.366943, 23.937082>,  <30.350515, 38.222721, 24.178501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765020, 38.366943, 23.937082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.888180, 38.725742, 24.063948>,  <29.962076, 38.941021, 24.140066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.888180, 38.725742, 24.063948>,  <29.765020, 38.366943, 23.937082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888180, 38.725742, 24.063948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161916, 0.377896, -0.911580,
		-0.937540, 0.229320, 0.261593,
		0.307899, 0.896999, 0.317162,
		29.980549, 38.994843, 24.159096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440283, 38.836193, 23.540724>,  <29.765020, 38.366943, 23.937082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440283, 38.836193, 23.540724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714134, 39.093243, 23.678314>,  <29.878445, 39.247471, 23.760868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714134, 39.093243, 23.678314>,  <29.440283, 38.836193, 23.540724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714134, 39.093243, 23.678314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156520, 0.590525, -0.791695,
		-0.711887, 0.488179, 0.504874,
		0.684630, 0.642621, 0.343978,
		29.919523, 39.286030, 23.781507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148457, 39.567699, 23.545914>,  <29.440283, 38.836193, 23.540724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148457, 39.567699, 23.545914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.546354, 39.595665, 23.515993>,  <29.785093, 39.612446, 23.498041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.546354, 39.595665, 23.515993>,  <29.148457, 39.567699, 23.545914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546354, 39.595665, 23.515993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101548, 0.580275, -0.808065,
		-0.013088, 0.811414, 0.584325,
		0.994744, 0.069913, -0.074803,
		29.844778, 39.616638, 23.493553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234877, 40.213261, 23.402561>,  <29.148457, 39.567699, 23.545914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234877, 40.213261, 23.402561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582352, 40.046097, 23.296181>,  <29.790836, 39.945797, 23.232351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582352, 40.046097, 23.296181>,  <29.234877, 40.213261, 23.402561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582352, 40.046097, 23.296181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007567, 0.548023, -0.836429,
		0.495300, 0.724584, 0.479224,
		0.868689, -0.417910, -0.265953,
		29.842958, 39.920723, 23.216394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628937, 40.743008, 23.237169>,  <29.234877, 40.213261, 23.402561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628937, 40.743008, 23.237169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.766256, 40.422512, 23.041142>,  <29.848648, 40.230217, 22.923525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.766256, 40.422512, 23.041142>,  <29.628937, 40.743008, 23.237169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766256, 40.422512, 23.041142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052838, 0.537429, -0.841652,
		0.937739, 0.263043, 0.226834,
		0.343298, -0.801236, -0.490069,
		29.869246, 40.182140, 22.894121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045549, 41.039341, 22.712801>,  <29.628937, 40.743008, 23.237169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045549, 41.039341, 22.712801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.974979, 40.666103, 22.587450>,  <29.932636, 40.442162, 22.512239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.974979, 40.666103, 22.587450>,  <30.045549, 41.039341, 22.712801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974979, 40.666103, 22.587450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079386, 0.330824, -0.940348,
		0.981107, -0.141025, -0.132441,
		-0.176427, -0.933096, -0.313378,
		29.922050, 40.386173, 22.493437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460215, 40.906132, 22.105988>,  <30.045549, 41.039341, 22.712801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460215, 40.906132, 22.105988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.189035, 40.614510, 22.068327>,  <30.026327, 40.439537, 22.045731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.189035, 40.614510, 22.068327>,  <30.460215, 40.906132, 22.105988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189035, 40.614510, 22.068327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179435, -0.039919, -0.982960,
		0.712872, -0.683291, 0.157881,
		-0.677950, -0.729054, -0.094150,
		29.985651, 40.395794, 22.040083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750790, 40.440987, 21.631832>,  <30.460215, 40.906132, 22.105988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750790, 40.440987, 21.631832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.363638, 40.340664, 21.624826>,  <30.131348, 40.280472, 21.620623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.363638, 40.340664, 21.624826>,  <30.750790, 40.440987, 21.631832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363638, 40.340664, 21.624826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067152, -0.190760, -0.979337,
		0.242284, -0.949056, 0.201474,
		-0.967879, -0.250807, -0.017513,
		30.073275, 40.265423, 21.619572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654804, 39.717915, 21.360252>,  <30.750790, 40.440987, 21.631832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654804, 39.717915, 21.360252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321247, 39.932980, 21.310381>,  <30.121113, 40.062019, 21.280458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321247, 39.932980, 21.310381>,  <30.654804, 39.717915, 21.360252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321247, 39.932980, 21.310381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078163, -0.338665, -0.937655,
		-0.546367, -0.772156, 0.324435,
		-0.833891, 0.537662, -0.124681,
		30.071079, 40.094276, 21.272976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117912, 39.223206, 20.946089>,  <30.654804, 39.717915, 21.360252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117912, 39.223206, 20.946089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000252, 39.599277, 20.877335>,  <29.929655, 39.824921, 20.836082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000252, 39.599277, 20.877335>,  <30.117912, 39.223206, 20.946089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000252, 39.599277, 20.877335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070453, -0.200682, -0.977120,
		-0.953158, -0.275313, 0.125269,
		-0.294153, 0.940175, -0.171885,
		29.912006, 39.881329, 20.825769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520161, 39.157402, 20.635906>,  <30.117912, 39.223206, 20.946089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520161, 39.157402, 20.635906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.673161, 39.509975, 20.525084>,  <29.764961, 39.721519, 20.458590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.673161, 39.509975, 20.525084>,  <29.520161, 39.157402, 20.635906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673161, 39.509975, 20.525084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317936, -0.155983, -0.935193,
		-0.867530, 0.445800, 0.220577,
		0.382502, 0.881438, -0.277056,
		29.787910, 39.774406, 20.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942476, 39.477386, 20.232405>,  <29.520161, 39.157402, 20.635906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942476, 39.477386, 20.232405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286942, 39.658291, 20.139578>,  <29.493620, 39.766834, 20.083881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286942, 39.658291, 20.139578>,  <28.942476, 39.477386, 20.232405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286942, 39.658291, 20.139578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205895, -0.107071, -0.972699,
		-0.464765, 0.885433, 0.000913,
		0.861162, 0.452265, -0.232069,
		29.545290, 39.793972, 20.069958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806870, 39.830975, 19.625225>,  <28.942476, 39.477386, 20.232405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806870, 39.830975, 19.625225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.206768, 39.833336, 19.633877>,  <29.446709, 39.834751, 19.639069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.206768, 39.833336, 19.633877>,  <28.806870, 39.830975, 19.625225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206768, 39.833336, 19.633877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021663, -0.005778, -0.999749,
		-0.005778, 0.999966, -0.005905,
		0.999749, 0.005905, 0.021629,
		29.506693, 39.835106, 19.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071486, 40.284084, 19.067179>,  <28.806870, 39.830975, 19.625225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071486, 40.284084, 19.067179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404434, 40.078049, 19.149006>,  <29.604202, 39.954430, 19.198103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404434, 40.078049, 19.149006>,  <29.071486, 40.284084, 19.067179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404434, 40.078049, 19.149006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196658, -0.070594, -0.977928,
		0.518157, 0.854227, 0.042535,
		0.832370, -0.515085, 0.204569,
		29.654144, 39.923523, 19.210377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671171, 40.588570, 18.685188>,  <29.071486, 40.284084, 19.067179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671171, 40.588570, 18.685188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.774508, 40.211945, 18.771648>,  <29.836510, 39.985970, 18.823524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.774508, 40.211945, 18.771648>,  <29.671171, 40.588570, 18.685188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774508, 40.211945, 18.771648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292159, -0.137120, -0.946489,
		0.920817, 0.307665, 0.239662,
		0.258339, -0.941562, 0.216149,
		29.852009, 39.929474, 18.836493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.332138, 40.527328, 18.351370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188395, 40.158115, 18.406319>,  <30.102148, 39.936588, 18.439287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188395, 40.158115, 18.406319>,  <30.332138, 40.527328, 18.351370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188395, 40.158115, 18.406319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238554, -0.233176, -0.942720,
		0.902193, -0.306005, 0.303987,
		-0.359360, -0.923033, 0.137371,
		30.080587, 39.881207, 18.447531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894808, 40.030899, 18.302851>,  <30.332138, 40.527328, 18.351370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894808, 40.030899, 18.302851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536831, 39.874611, 18.216677>,  <30.322044, 39.780838, 18.164972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536831, 39.874611, 18.216677>,  <30.894808, 40.030899, 18.302851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536831, 39.874611, 18.216677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328909, -0.251465, -0.910266,
		0.301487, -0.885495, 0.353559,
		-0.894944, -0.390722, -0.215434,
		30.268347, 39.757393, 18.152046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051144, 39.360828, 17.995493>,  <30.894808, 40.030899, 18.302851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051144, 39.360828, 17.995493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671415, 39.432621, 17.892281>,  <30.443579, 39.475697, 17.830353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671415, 39.432621, 17.892281>,  <31.051144, 39.360828, 17.995493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671415, 39.432621, 17.892281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214616, -0.229639, -0.949319,
		-0.229639, -0.956584, 0.179481,
		0.949319, -0.179481, 0.258032,
		30.386620, 39.486465, 17.814871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898348, 38.726189, 17.673695>,  <31.051144, 39.360828, 17.995493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898348, 38.726189, 17.673695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626644, 38.990620, 17.546207>,  <30.463621, 39.149277, 17.469715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626644, 38.990620, 17.546207>,  <30.898348, 38.726189, 17.673695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626644, 38.990620, 17.546207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132285, -0.316880, -0.939195,
		-0.721878, -0.680119, 0.127793,
		-0.679259, 0.661079, -0.318718,
		30.422867, 39.188942, 17.450592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429455, 38.350021, 17.365583>,  <30.898348, 38.726189, 17.673695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429455, 38.350021, 17.365583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396057, 38.719055, 17.214924>,  <30.376019, 38.940475, 17.124529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396057, 38.719055, 17.214924>,  <30.429455, 38.350021, 17.365583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396057, 38.719055, 17.214924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228026, -0.385628, -0.894033,
		-0.970069, 0.011240, 0.242571,
		-0.083493, 0.922586, -0.376649,
		30.371010, 38.995831, 17.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064741, 38.213909, 16.687336>,  <30.429455, 38.350021, 17.365583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064741, 38.213909, 16.687336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209314, 38.585472, 16.655102>,  <30.296059, 38.808411, 16.635761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209314, 38.585472, 16.655102>,  <30.064741, 38.213909, 16.687336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209314, 38.585472, 16.655102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218290, 0.000277, -0.975884,
		-0.906485, 0.370309, 0.202871,
		0.361435, 0.928909, -0.080584,
		30.317745, 38.864143, 16.630926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619921, 38.604778, 16.213924>,  <30.064741, 38.213909, 16.687336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619921, 38.604778, 16.213924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949715, 38.830101, 16.235485>,  <30.147591, 38.965294, 16.248423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949715, 38.830101, 16.235485>,  <29.619921, 38.604778, 16.213924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949715, 38.830101, 16.235485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118006, 0.264313, -0.957190,
		-0.553442, 0.782828, 0.284396,
		0.824485, 0.563310, 0.053904,
		30.197060, 38.999096, 16.251656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399849, 39.207153, 15.972658>,  <29.619921, 38.604778, 16.213924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399849, 39.207153, 15.972658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795553, 39.198143, 15.914889>,  <30.032976, 39.192738, 15.880228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795553, 39.198143, 15.914889>,  <29.399849, 39.207153, 15.972658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795553, 39.198143, 15.914889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132215, 0.283359, -0.949856,
		0.062324, 0.958749, 0.277337,
		0.989260, -0.022530, -0.144421,
		30.092331, 39.191383, 15.871563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653814, 39.895878, 15.665172>,  <29.399849, 39.207153, 15.972658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653814, 39.895878, 15.665172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.903753, 39.595039, 15.581352>,  <30.053717, 39.414536, 15.531060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.903753, 39.595039, 15.581352>,  <29.653814, 39.895878, 15.665172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903753, 39.595039, 15.581352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095647, 0.340113, -0.935508,
		0.774866, 0.564507, 0.284455,
		0.624847, -0.752101, -0.209548,
		30.091208, 39.369408, 15.518488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127512, 40.202232, 15.246086>,  <29.653814, 39.895878, 15.665172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127512, 40.202232, 15.246086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153929, 39.808567, 15.180278>,  <30.169779, 39.572369, 15.140793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153929, 39.808567, 15.180278>,  <30.127512, 40.202232, 15.246086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153929, 39.808567, 15.180278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004818, 0.165192, -0.986250,
		0.997805, 0.064340, 0.015651,
		0.066041, -0.984161, -0.164520,
		30.173740, 39.513317, 15.130922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739925, 40.102753, 14.805807>,  <30.127512, 40.202232, 15.246086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739925, 40.102753, 14.805807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515467, 39.777477, 14.744050>,  <30.380791, 39.582314, 14.706996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515467, 39.777477, 14.744050>,  <30.739925, 40.102753, 14.805807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515467, 39.777477, 14.744050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031104, 0.165680, -0.985689,
		0.827131, -0.557919, -0.067678,
		-0.561148, -0.813189, -0.154393,
		30.347122, 39.533520, 14.697732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102297, 39.639301, 14.234965>,  <30.739925, 40.102753, 14.805807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102297, 39.639301, 14.234965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718996, 39.527016, 14.256681>,  <30.489016, 39.459644, 14.269711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718996, 39.527016, 14.256681>,  <31.102297, 39.639301, 14.234965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718996, 39.527016, 14.256681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014532, -0.141818, -0.989786,
		0.285549, -0.949255, 0.131818,
		-0.958254, -0.280717, 0.054291,
		30.431520, 39.442802, 14.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115929, 39.227470, 13.703168>,  <31.102297, 39.639301, 14.234965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115929, 39.227470, 13.703168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723953, 39.254410, 13.778197>,  <30.488768, 39.270573, 13.823215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723953, 39.254410, 13.778197>,  <31.115929, 39.227470, 13.703168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723953, 39.254410, 13.778197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195120, -0.132531, -0.971784,
		-0.040589, -0.988888, 0.143013,
		-0.979939, 0.067348, 0.187573,
		30.429972, 39.274616, 13.834469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853594, 38.630215, 13.435825>,  <31.115929, 39.227470, 13.703168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853594, 38.630215, 13.435825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544458, 38.882412, 13.464667>,  <30.358976, 39.033730, 13.481973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544458, 38.882412, 13.464667>,  <30.853594, 38.630215, 13.435825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544458, 38.882412, 13.464667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209225, -0.145880, -0.966925,
		-0.599121, -0.762363, 0.244657,
		-0.772838, 0.630493, 0.072105,
		30.312607, 39.071560, 13.486299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452797, 38.372833, 12.935783>,  <30.853594, 38.630215, 13.435825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452797, 38.372833, 12.935783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266327, 38.718601, 13.011102>,  <30.154444, 38.926064, 13.056293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266327, 38.718601, 13.011102>,  <30.452797, 38.372833, 12.935783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266327, 38.718601, 13.011102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439376, -0.041487, -0.897344,
		-0.767872, -0.501054, 0.399147,
		-0.466177, 0.864421, 0.188295,
		30.126474, 38.977928, 13.067590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760258, 38.242466, 12.685150>,  <30.452797, 38.372833, 12.935783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760258, 38.242466, 12.685150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824848, 38.637196, 12.680978>,  <29.863604, 38.874031, 12.678474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824848, 38.637196, 12.680978>,  <29.760258, 38.242466, 12.685150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824848, 38.637196, 12.680978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318076, 0.042037, -0.947133,
		-0.934212, 0.156259, 0.320672,
		0.161478, 0.986821, -0.010431,
		29.873291, 38.933243, 12.677849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106739, 38.674091, 12.417912>,  <29.760258, 38.242466, 12.685150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106739, 38.674091, 12.417912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.412954, 38.919666, 12.340939>,  <29.596684, 39.067013, 12.294754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.412954, 38.919666, 12.340939>,  <29.106739, 38.674091, 12.417912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412954, 38.919666, 12.340939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331926, 0.120645, -0.935559,
		-0.551160, 0.780079, 0.296141,
		0.765537, 0.613940, -0.192434,
		29.642616, 39.103848, 12.283209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824389, 39.205791, 11.966969>,  <29.106739, 38.674091, 12.417912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824389, 39.205791, 11.966969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.219879, 39.250618, 11.927243>,  <29.457172, 39.277515, 11.903407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.219879, 39.250618, 11.927243>,  <28.824389, 39.205791, 11.966969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219879, 39.250618, 11.927243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083578, -0.137322, -0.986994,
		-0.124246, 0.984167, -0.126407,
		0.988725, 0.112065, -0.099317,
		29.516497, 39.284237, 11.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854103, 39.574707, 11.319299>,  <28.824389, 39.205791, 11.966969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854103, 39.574707, 11.319299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201405, 39.387791, 11.385962>,  <29.409786, 39.275642, 11.425960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201405, 39.387791, 11.385962>,  <28.854103, 39.574707, 11.319299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201405, 39.387791, 11.385962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070583, -0.216158, -0.973804,
		0.491070, 0.857274, -0.154698,
		0.868256, -0.467287, 0.166657,
		29.461882, 39.247604, 11.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412291, 39.883949, 10.804841>,  <28.854103, 39.574707, 11.319299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412291, 39.883949, 10.804841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528828, 39.523243, 10.932549>,  <29.598749, 39.306820, 11.009174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528828, 39.523243, 10.932549>,  <29.412291, 39.883949, 10.804841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528828, 39.523243, 10.932549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068564, -0.313206, -0.947207,
		0.954159, 0.297852, -0.029421,
		0.291342, -0.901768, 0.319271,
		29.616230, 39.252712, 11.028331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918669, 39.670944, 10.295837>,  <29.412291, 39.883949, 10.804841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918669, 39.670944, 10.295837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795229, 39.341560, 10.486284>,  <29.721165, 39.143932, 10.600553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795229, 39.341560, 10.486284>,  <29.918669, 39.670944, 10.295837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795229, 39.341560, 10.486284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252462, -0.553502, -0.793661,
		0.917076, -0.124723, 0.378702,
		-0.308600, -0.823456, 0.476116,
		29.702648, 39.094524, 10.629119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372862, 39.140697, 10.108134>,  <29.918669, 39.670944, 10.295837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372862, 39.140697, 10.108134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071293, 38.915211, 10.243086>,  <29.890352, 38.779919, 10.324057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071293, 38.915211, 10.243086>,  <30.372862, 39.140697, 10.108134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071293, 38.915211, 10.243086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308249, -0.757037, -0.576088,
		0.580160, -0.330328, 0.744512,
		-0.753921, -0.563718, 0.337379,
		29.845116, 38.746094, 10.344299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619051, 38.453995, 10.050785>,  <30.372862, 39.140697, 10.108134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619051, 38.453995, 10.050785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219070, 38.457283, 10.048754>,  <29.979082, 38.459255, 10.047535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219070, 38.457283, 10.048754>,  <30.619051, 38.453995, 10.050785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219070, 38.457283, 10.048754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000487, -0.567767, -0.823189,
		-0.009649, -0.823148, 0.567745,
		-0.999953, 0.008219, -0.005077,
		29.919085, 38.459747, 10.047231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363073, 37.713665, 9.940816>,  <30.619051, 38.453995, 10.050785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363073, 37.713665, 9.940816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079508, 37.978844, 9.844533>,  <29.909369, 38.137951, 9.786763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079508, 37.978844, 9.844533>,  <30.363073, 37.713665, 9.940816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079508, 37.978844, 9.844533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150854, -0.475912, -0.866459,
		-0.688975, -0.577931, 0.437389,
		-0.708912, 0.662950, -0.240708,
		29.866835, 38.177731, 9.772321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334131, 37.577747, 9.221539>,  <30.363073, 37.713665, 9.940816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334131, 37.577747, 9.221539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673042, 37.365749, 9.207554>,  <30.876389, 37.238548, 9.199163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673042, 37.365749, 9.207554>,  <30.334131, 37.577747, 9.221539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673042, 37.365749, 9.207554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040014, -0.001945, 0.999197,
		-0.529641, -0.847996, 0.019560,
		0.847278, -0.529998, -0.034962,
		30.927225, 37.206749, 9.197065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275240, 36.916641, 9.642633>,  <30.334131, 37.577747, 9.221539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275240, 36.916641, 9.642633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647858, 37.058548, 9.610725>,  <30.871428, 37.143692, 9.591580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647858, 37.058548, 9.610725>,  <30.275240, 36.916641, 9.642633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647858, 37.058548, 9.610725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123524, -0.102406, 0.987044,
		0.342003, -0.929329, -0.139218,
		0.931545, 0.354769, -0.079771,
		30.927320, 37.164978, 9.586794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844395, 36.414001, 9.913127>,  <30.275240, 36.916641, 9.642633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844395, 36.414001, 9.913127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982388, 36.788475, 9.940113>,  <31.065184, 37.013161, 9.956305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982388, 36.788475, 9.940113>,  <30.844395, 36.414001, 9.913127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982388, 36.788475, 9.940113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389611, -0.208221, 0.897133,
		0.853928, -0.283208, -0.436579,
		0.344980, 0.936182, 0.067464,
		31.085882, 37.069328, 9.960352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438734, 36.288731, 10.190424>,  <30.844395, 36.414001, 9.913127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438734, 36.288731, 10.190424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.388754, 36.679008, 10.262430>,  <31.358767, 36.913174, 10.305634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.388754, 36.679008, 10.262430>,  <31.438734, 36.288731, 10.190424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388754, 36.679008, 10.262430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439691, -0.108194, 0.891608,
		0.889415, 0.190558, -0.415486,
		-0.124950, 0.975696, 0.180016,
		31.351269, 36.971718, 10.316435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106609, 36.434158, 10.597000>,  <31.438734, 36.288731, 10.190424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106609, 36.434158, 10.597000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810587, 36.697941, 10.649825>,  <31.632975, 36.856209, 10.681520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810587, 36.697941, 10.649825>,  <32.106609, 36.434158, 10.597000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810587, 36.697941, 10.649825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133161, -0.048801, 0.989892,
		0.659232, 0.750160, -0.051698,
		-0.740055, 0.659453, 0.132063,
		31.588570, 36.895775, 10.689444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380363, 36.918728, 10.957526>,  <32.106609, 36.434158, 10.597000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380363, 36.918728, 10.957526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.007713, 37.046669, 11.026537>,  <31.784122, 37.123436, 11.067944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.007713, 37.046669, 11.026537>,  <32.380363, 36.918728, 10.957526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007713, 37.046669, 11.026537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164806, -0.051273, 0.984993,
		0.323902, 0.946078, -0.004947,
		-0.931626, 0.319856, 0.172526,
		31.728226, 37.142628, 11.078295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498478, 37.581898, 11.501809>,  <32.380363, 36.918728, 10.957526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498478, 37.581898, 11.501809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129509, 37.428627, 11.521066>,  <31.908129, 37.336666, 11.532619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129509, 37.428627, 11.521066>,  <32.498478, 37.581898, 11.501809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129509, 37.428627, 11.521066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038649, 0.215628, 0.975710,
		-0.384247, 0.898155, -0.213709,
		-0.922421, -0.383174, 0.048141,
		31.852783, 37.313675, 11.535508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195190, 37.989532, 11.840352>,  <32.498478, 37.581898, 11.501809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195190, 37.989532, 11.840352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947727, 37.678516, 11.885436>,  <31.799250, 37.491909, 11.912486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947727, 37.678516, 11.885436>,  <32.195190, 37.989532, 11.840352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947727, 37.678516, 11.885436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062153, 0.191444, 0.979534,
		-0.783201, 0.598988, -0.166764,
		-0.618655, -0.777536, 0.112710,
		31.762131, 37.445255, 11.919250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553831, 38.163471, 12.217665>,  <32.195190, 37.989532, 11.840352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553831, 38.163471, 12.217665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579803, 37.766991, 12.263787>,  <31.595387, 37.529102, 12.291461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579803, 37.766991, 12.263787>,  <31.553831, 38.163471, 12.217665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579803, 37.766991, 12.263787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226553, 0.097889, 0.969067,
		-0.971832, -0.089045, -0.218205,
		0.064931, -0.991206, 0.115305,
		31.599283, 37.469627, 12.298379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934637, 37.897152, 12.615999>,  <31.553831, 38.163471, 12.217665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934637, 37.897152, 12.615999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217646, 37.620518, 12.674128>,  <31.387451, 37.454536, 12.709004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217646, 37.620518, 12.674128>,  <30.934637, 37.897152, 12.615999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217646, 37.620518, 12.674128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021016, 0.226136, 0.973869,
		-0.706377, -0.685981, 0.174531,
		0.707523, -0.691587, 0.145321,
		31.429903, 37.413040, 12.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751066, 37.638508, 13.229414>,  <30.934637, 37.897152, 12.615999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751066, 37.638508, 13.229414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119936, 37.487366, 13.196379>,  <31.341257, 37.396683, 13.176558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119936, 37.487366, 13.196379>,  <30.751066, 37.638508, 13.229414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119936, 37.487366, 13.196379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143081, 0.134891, 0.980475,
		-0.359335, -0.915986, 0.178456,
		0.922174, -0.377853, -0.082589,
		31.396589, 37.374008, 13.171602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873978, 37.200783, 13.894459>,  <30.751066, 37.638508, 13.229414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873978, 37.200783, 13.894459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221716, 37.302361, 13.724869>,  <31.430359, 37.363308, 13.623115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221716, 37.302361, 13.724869>,  <30.873978, 37.200783, 13.894459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221716, 37.302361, 13.724869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382398, 0.197813, 0.902575,
		0.313069, -0.946775, 0.074860,
		0.869344, 0.253942, -0.423975,
		31.482519, 37.378544, 13.597676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348906, 36.869087, 14.251995>,  <30.873978, 37.200783, 13.894459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348906, 36.869087, 14.251995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523071, 37.201351, 14.113190>,  <31.627571, 37.400711, 14.029906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523071, 37.201351, 14.113190>,  <31.348906, 36.869087, 14.251995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523071, 37.201351, 14.113190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503373, 0.094928, 0.858839,
		0.746344, -0.548628, -0.376799,
		0.435415, 0.830660, -0.347013,
		31.653696, 37.450550, 14.009086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914919, 36.947895, 14.682199>,  <31.348906, 36.869087, 14.251995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914919, 36.947895, 14.682199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899168, 37.307137, 14.506990>,  <31.889717, 37.522682, 14.401865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899168, 37.307137, 14.506990>,  <31.914919, 36.947895, 14.682199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899168, 37.307137, 14.506990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573282, 0.379344, 0.726254,
		0.818411, -0.222511, -0.529804,
		-0.039378, 0.898102, -0.438021,
		31.887354, 37.576569, 14.375584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487427, 37.105125, 14.835404>,  <31.914919, 36.947895, 14.682199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487427, 37.105125, 14.835404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334179, 37.454914, 14.716394>,  <32.242229, 37.664787, 14.644989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334179, 37.454914, 14.716394>,  <32.487427, 37.105125, 14.835404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334179, 37.454914, 14.716394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590369, 0.479542, 0.649233,
		0.710410, 0.073085, -0.699982,
		-0.383120, 0.874470, -0.297524,
		32.219242, 37.717255, 14.627137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989147, 37.548931, 14.709928>,  <32.487427, 37.105125, 14.835404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989147, 37.548931, 14.709928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689850, 37.804050, 14.782958>,  <32.510269, 37.957123, 14.826777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689850, 37.804050, 14.782958>,  <32.989147, 37.548931, 14.709928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689850, 37.804050, 14.782958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602032, 0.537172, 0.590765,
		0.278715, 0.551956, -0.785915,
		-0.748248, 0.637802, 0.182577,
		32.465374, 37.995392, 14.837731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315151, 38.224960, 14.787044>,  <32.989147, 37.548931, 14.709928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315151, 38.224960, 14.787044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963287, 38.264324, 14.973166>,  <32.752167, 38.287945, 15.084839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963287, 38.264324, 14.973166>,  <33.315151, 38.224960, 14.787044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963287, 38.264324, 14.973166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452490, 0.474439, 0.755090,
		-0.146447, 0.874770, -0.461878,
		-0.879662, 0.098414, 0.465305,
		32.699390, 38.293850, 15.112757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323040, 38.970524, 15.081375>,  <33.315151, 38.224960, 14.787044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323040, 38.970524, 15.081375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034393, 38.767971, 15.270201>,  <32.861206, 38.646439, 15.383496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034393, 38.767971, 15.270201>,  <33.323040, 38.970524, 15.081375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034393, 38.767971, 15.270201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215137, 0.484095, 0.848156,
		-0.658011, 0.713605, -0.240393,
		-0.721621, -0.506378, 0.472063,
		32.817905, 38.616058, 15.411819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028019, 39.518089, 15.552348>,  <33.323040, 38.970524, 15.081375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028019, 39.518089, 15.552348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887421, 39.161503, 15.666715>,  <32.803062, 38.947552, 15.735334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887421, 39.161503, 15.666715>,  <33.028019, 39.518089, 15.552348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887421, 39.161503, 15.666715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052786, 0.286045, 0.956761,
		-0.934701, 0.351387, -0.053486,
		-0.351492, -0.891462, 0.285915,
		32.781975, 38.894066, 15.752489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611160, 39.674244, 16.100584>,  <33.028019, 39.518089, 15.552348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611160, 39.674244, 16.100584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710320, 39.291309, 16.159988>,  <32.769814, 39.061550, 16.195631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710320, 39.291309, 16.159988>,  <32.611160, 39.674244, 16.100584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710320, 39.291309, 16.159988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038662, 0.143396, 0.988910,
		-0.968014, -0.250891, -0.001464,
		0.247898, -0.957336, 0.148509,
		32.784691, 39.004108, 16.204540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.930328, 40.654293, 21.090315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.292648, 40.490044, 21.132114>,  <29.510040, 40.391495, 21.157194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.292648, 40.490044, 21.132114>,  <28.930328, 40.654293, 21.090315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292648, 40.490044, 21.132114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166723, -0.118673, 0.978836,
		-0.389527, -0.904051, -0.175954,
		0.905799, -0.410619, 0.104500,
		29.564388, 40.366859, 21.163464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834167, 40.034306, 21.541443>,  <28.930328, 40.654293, 21.090315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834167, 40.034306, 21.541443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.217295, 40.145546, 21.570419>,  <29.447170, 40.212292, 21.587805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.217295, 40.145546, 21.570419>,  <28.834167, 40.034306, 21.541443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217295, 40.145546, 21.570419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012372, -0.211939, 0.977205,
		0.287114, -0.936879, -0.199558,
		0.957816, 0.278100, 0.072442,
		29.504641, 40.228977, 21.592152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068966, 39.434830, 21.876663>,  <28.834167, 40.034306, 21.541443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068966, 39.434830, 21.876663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.339794, 39.723366, 21.934967>,  <29.502291, 39.896488, 21.969950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.339794, 39.723366, 21.934967>,  <29.068966, 39.434830, 21.876663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339794, 39.723366, 21.934967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210489, -0.379612, 0.900883,
		0.705172, -0.579282, -0.408858,
		0.677072, 0.721338, 0.145759,
		29.542915, 39.939766, 21.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634003, 39.200153, 22.125628>,  <29.068966, 39.434830, 21.876663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634003, 39.200153, 22.125628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.727291, 39.577099, 22.221600>,  <29.783264, 39.803265, 22.279182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.727291, 39.577099, 22.221600>,  <29.634003, 39.200153, 22.125628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727291, 39.577099, 22.221600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349916, -0.311534, 0.883462,
		0.907285, -0.122087, -0.402404,
		0.233221, 0.942360, 0.239930,
		29.797258, 39.859806, 22.293579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381039, 39.207069, 22.321749>,  <29.634003, 39.200153, 22.125628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381039, 39.207069, 22.321749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.277967, 39.544628, 22.509981>,  <30.216125, 39.747162, 22.622921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.277967, 39.544628, 22.509981>,  <30.381039, 39.207069, 22.321749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277967, 39.544628, 22.509981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172502, -0.439025, 0.881759,
		0.950708, 0.308386, -0.032446,
		-0.257678, 0.843893, 0.470582,
		30.200665, 39.797794, 22.651155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890459, 39.274323, 22.834515>,  <30.381039, 39.207069, 22.321749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890459, 39.274323, 22.834515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.572676, 39.488068, 22.949959>,  <30.382006, 39.616314, 23.019224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.572676, 39.488068, 22.949959>,  <30.890459, 39.274323, 22.834515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572676, 39.488068, 22.949959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155243, -0.280745, 0.947144,
		0.587143, 0.797270, 0.140085,
		-0.794458, 0.534362, 0.288608,
		30.334339, 39.648376, 23.036541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074944, 39.739471, 23.483313>,  <30.890459, 39.274323, 22.834515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074944, 39.739471, 23.483313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.678410, 39.699718, 23.517668>,  <30.440489, 39.675865, 23.538280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.678410, 39.699718, 23.517668>,  <31.074944, 39.739471, 23.483313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678410, 39.699718, 23.517668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100542, -0.153322, 0.983048,
		-0.084533, 0.983166, 0.161986,
		-0.991335, -0.099386, 0.085889,
		30.381008, 39.669903, 23.543434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841181, 40.037109, 24.127724>,  <31.074944, 39.739471, 23.483313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841181, 40.037109, 24.127724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.516043, 39.817493, 24.049923>,  <30.320959, 39.685722, 24.003242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.516043, 39.817493, 24.049923>,  <30.841181, 40.037109, 24.127724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516043, 39.817493, 24.049923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037694, -0.283641, 0.958189,
		-0.581257, 0.786192, 0.209861,
		-0.812846, -0.549044, -0.194503,
		30.272188, 39.652779, 23.991571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293224, 40.143150, 24.664368>,  <30.841181, 40.037109, 24.127724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293224, 40.143150, 24.664368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.215847, 39.781639, 24.511652>,  <30.169420, 39.564732, 24.420023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.215847, 39.781639, 24.511652>,  <30.293224, 40.143150, 24.664368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215847, 39.781639, 24.511652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221846, -0.338766, 0.914343,
		-0.955701, 0.261572, -0.134968,
		-0.193443, -0.903780, -0.381787,
		30.157814, 39.510506, 24.397116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756859, 39.896420, 25.021004>,  <30.293224, 40.143150, 24.664368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756859, 39.896420, 25.021004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.929296, 39.556522, 24.899612>,  <30.032759, 39.352585, 24.826777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.929296, 39.556522, 24.899612>,  <29.756859, 39.896420, 25.021004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929296, 39.556522, 24.899612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064994, -0.364708, 0.928851,
		-0.899964, -0.380697, -0.212451,
		0.431093, -0.849740, -0.303480,
		30.058624, 39.301601, 24.808569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432095, 39.391964, 25.477043>,  <29.756859, 39.896420, 25.021004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432095, 39.391964, 25.477043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.713562, 39.169331, 25.300381>,  <29.882442, 39.035751, 25.194384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.713562, 39.169331, 25.300381>,  <29.432095, 39.391964, 25.477043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713562, 39.169331, 25.300381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059969, -0.572851, 0.817463,
		-0.707991, -0.601710, -0.369720,
		0.703671, -0.556584, -0.441658,
		29.924664, 39.002354, 25.167883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303476, 38.747192, 25.646078>,  <29.432095, 39.391964, 25.477043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303476, 38.747192, 25.646078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.683924, 38.691036, 25.536053>,  <29.912193, 38.657345, 25.470037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.683924, 38.691036, 25.536053>,  <29.303476, 38.747192, 25.646078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683924, 38.691036, 25.536053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139720, -0.598708, 0.788687,
		-0.275404, -0.788569, -0.549829,
		0.951121, -0.140385, -0.275065,
		29.969259, 38.648922, 25.453533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651527, 37.994205, 25.695171>,  <29.303476, 38.747192, 25.646078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651527, 37.994205, 25.695171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.930700, 38.277840, 25.735338>,  <30.098204, 38.448021, 25.759438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.930700, 38.277840, 25.735338>,  <29.651527, 37.994205, 25.695171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930700, 38.277840, 25.735338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336178, -0.448192, 0.828316,
		0.632355, -0.544351, -0.551188,
		0.697933, 0.709088, 0.100418,
		30.140079, 38.490566, 25.765463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615517, 38.162785, 26.511137>,  <29.651527, 37.994205, 25.695171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615517, 38.162785, 26.511137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.671190, 37.833469, 26.731253>,  <29.704596, 37.635880, 26.863323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.671190, 37.833469, 26.731253>,  <29.615517, 38.162785, 26.511137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671190, 37.833469, 26.731253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282192, -0.565634, -0.774872,
		0.949208, -0.047436, -0.311054,
		0.139186, -0.823291, 0.550290,
		29.712946, 37.586483, 26.896339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972301, 37.602036, 26.348909>,  <29.615517, 38.162785, 26.511137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972301, 37.602036, 26.348909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.688944, 37.405003, 26.551113>,  <29.518929, 37.286781, 26.672436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.688944, 37.405003, 26.551113>,  <29.972301, 37.602036, 26.348909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688944, 37.405003, 26.551113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314080, -0.421393, -0.850754,
		0.632083, -0.761440, 0.143803,
		-0.708396, -0.492581, 0.505509,
		29.476425, 37.257229, 26.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069860, 36.922382, 26.165527>,  <29.972301, 37.602036, 26.348909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069860, 36.922382, 26.165527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.705820, 36.902187, 26.330048>,  <29.487396, 36.890072, 26.428759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.705820, 36.902187, 26.330048>,  <30.069860, 36.922382, 26.165527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705820, 36.902187, 26.330048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314287, -0.562786, -0.764523,
		0.270072, -0.825059, 0.496325,
		-0.910101, -0.050488, 0.411299,
		29.432789, 36.887043, 26.453438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935678, 36.255207, 26.087744>,  <30.069860, 36.922382, 26.165527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935678, 36.255207, 26.087744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.589821, 36.453365, 26.121155>,  <29.382307, 36.572258, 26.141201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.589821, 36.453365, 26.121155>,  <29.935678, 36.255207, 26.087744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589821, 36.453365, 26.121155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336202, -0.447036, -0.828931,
		-0.373305, -0.744813, 0.553079,
		-0.864645, 0.495390, 0.083527,
		29.330427, 36.601982, 26.146212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427269, 35.752304, 26.043953>,  <29.935678, 36.255207, 26.087744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427269, 35.752304, 26.043953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.284584, 36.110039, 25.935938>,  <29.198973, 36.324680, 25.871128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.284584, 36.110039, 25.935938>,  <29.427269, 35.752304, 26.043953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284584, 36.110039, 25.935938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376249, -0.402107, -0.834713,
		-0.855098, -0.196150, 0.479930,
		-0.356712, 0.894335, -0.270040,
		29.177570, 36.378338, 25.854925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791832, 35.592037, 25.737127>,  <29.427269, 35.752304, 26.043953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791832, 35.592037, 25.737127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.873676, 35.965034, 25.618065>,  <28.922783, 36.188831, 25.546627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.873676, 35.965034, 25.618065>,  <28.791832, 35.592037, 25.737127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873676, 35.965034, 25.618065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339759, -0.217526, -0.915011,
		-0.917986, 0.288351, 0.272313,
		0.204610, 0.932489, -0.297656,
		28.935059, 36.244781, 25.528769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287777, 35.689907, 25.234661>,  <28.791832, 35.592037, 25.737127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287777, 35.689907, 25.234661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.516977, 36.007042, 25.151638>,  <28.654497, 36.197323, 25.101824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.516977, 36.007042, 25.151638>,  <28.287777, 35.689907, 25.234661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516977, 36.007042, 25.151638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184776, -0.121758, -0.975209,
		-0.798453, 0.597148, 0.076730,
		0.573002, 0.792837, -0.207556,
		28.688877, 36.244892, 25.089371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019854, 36.048340, 24.664440>,  <28.287777, 35.689907, 25.234661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019854, 36.048340, 24.664440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.386724, 36.207710, 24.661943>,  <28.606848, 36.303333, 24.660444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.386724, 36.207710, 24.661943>,  <28.019854, 36.048340, 24.664440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386724, 36.207710, 24.661943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077958, -0.194777, -0.977745,
		-0.390779, 0.896279, -0.209705,
		0.917177, 0.398430, -0.006243,
		28.661879, 36.327240, 24.660070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074347, 36.605419, 24.137724>,  <28.019854, 36.048340, 24.664440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074347, 36.605419, 24.137724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.444256, 36.471523, 24.210108>,  <28.666201, 36.391186, 24.253538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.444256, 36.471523, 24.210108>,  <28.074347, 36.605419, 24.137724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444256, 36.471523, 24.210108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170495, -0.060647, -0.983490,
		0.340190, 0.940356, 0.000988,
		0.924771, -0.334742, 0.180958,
		28.721687, 36.371101, 24.264395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527758, 37.014576, 23.732409>,  <28.074347, 36.605419, 24.137724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527758, 37.014576, 23.732409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.690725, 36.655125, 23.797501>,  <28.788506, 36.439453, 23.836555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.690725, 36.655125, 23.797501>,  <28.527758, 37.014576, 23.732409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690725, 36.655125, 23.797501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041638, -0.159728, -0.986283,
		0.912292, 0.408606, -0.027660,
		0.407419, -0.898626, 0.162732,
		28.812950, 36.385536, 23.846321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104059, 36.989807, 23.321526>,  <28.527758, 37.014576, 23.732409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104059, 36.989807, 23.321526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.024607, 36.609344, 23.416059>,  <28.976934, 36.381069, 23.472780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.024607, 36.609344, 23.416059>,  <29.104059, 36.989807, 23.321526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024607, 36.609344, 23.416059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268982, -0.284788, -0.920079,
		0.942440, -0.119187, 0.312411,
		-0.198632, -0.951152, 0.236336,
		28.965017, 36.323997, 23.486959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691483, 36.654137, 23.080503>,  <29.104059, 36.989807, 23.321526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691483, 36.654137, 23.080503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.384386, 36.400921, 23.120167>,  <29.200129, 36.248993, 23.143965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.384386, 36.400921, 23.120167>,  <29.691483, 36.654137, 23.080503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384386, 36.400921, 23.120167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102633, -0.274246, -0.956167,
		0.632487, -0.723912, 0.275520,
		-0.767741, -0.633041, 0.099160,
		29.154064, 36.211010, 23.149914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775984, 35.991791, 22.813936>,  <29.691483, 36.654137, 23.080503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775984, 35.991791, 22.813936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.376801, 36.017254, 22.816004>,  <29.137291, 36.032532, 22.817244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.376801, 36.017254, 22.816004>,  <29.775984, 35.991791, 22.813936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376801, 36.017254, 22.816004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022819, -0.279783, -0.959792,
		-0.059655, -0.957950, 0.280665,
		-0.997958, 0.063661, 0.005169,
		29.077414, 36.036354, 22.817554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622511, 35.621147, 22.205452>,  <29.775984, 35.991791, 22.813936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622511, 35.621147, 22.205452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.263683, 35.775379, 22.291798>,  <29.048388, 35.867920, 22.343605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.263683, 35.775379, 22.291798>,  <29.622511, 35.621147, 22.205452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263683, 35.775379, 22.291798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314293, -0.213344, -0.925043,
		-0.310626, -0.897670, 0.312570,
		-0.897068, 0.385581, 0.215861,
		28.994562, 35.891052, 22.356556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081804, 35.163116, 22.103596>,  <29.622511, 35.621147, 22.205452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081804, 35.163116, 22.103596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.910303, 35.517422, 22.032488>,  <28.807402, 35.730003, 21.989822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.910303, 35.517422, 22.032488>,  <29.081804, 35.163116, 22.103596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910303, 35.517422, 22.032488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154837, -0.265909, -0.951482,
		-0.890054, -0.380426, 0.251157,
		-0.428753, 0.885759, -0.177770,
		28.781677, 35.783150, 21.979156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003567, 34.394146, 22.157639>,  <29.081804, 35.163116, 22.103596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003567, 34.394146, 22.157639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.285639, 34.139011, 22.033773>,  <29.454882, 33.985931, 21.959455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.285639, 34.139011, 22.033773>,  <29.003567, 34.394146, 22.157639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285639, 34.139011, 22.033773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361358, -0.052454, 0.930951,
		-0.610034, -0.768386, 0.193497,
		0.705180, -0.637833, -0.309661,
		29.497192, 33.947662, 21.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930122, 33.894745, 22.581264>,  <29.003567, 34.394146, 22.157639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930122, 33.894745, 22.581264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.303156, 33.891216, 22.436926>,  <29.526976, 33.889099, 22.350323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.303156, 33.891216, 22.436926>,  <28.930122, 33.894745, 22.581264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303156, 33.891216, 22.436926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358574, -0.091960, 0.928961,
		-0.041371, -0.995724, -0.082600,
		0.932584, -0.008813, -0.360845,
		29.582932, 33.888573, 22.328672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223454, 33.452751, 22.935879>,  <28.930122, 33.894745, 22.581264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223454, 33.452751, 22.935879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.543930, 33.644787, 22.792992>,  <29.736216, 33.760010, 22.707258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.543930, 33.644787, 22.792992>,  <29.223454, 33.452751, 22.935879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543930, 33.644787, 22.792992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410415, -0.006417, 0.911876,
		0.435493, -0.877194, -0.202179,
		0.801190, 0.480092, -0.357219,
		29.784286, 33.788815, 22.685825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896013, 33.096329, 23.237471>,  <29.223454, 33.452751, 22.935879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896013, 33.096329, 23.237471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020002, 33.447975, 23.092653>,  <30.094397, 33.658962, 23.005762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020002, 33.447975, 23.092653>,  <29.896013, 33.096329, 23.237471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020002, 33.447975, 23.092653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602173, 0.113144, 0.790308,
		0.735733, -0.462988, -0.494306,
		0.309975, 0.879114, -0.362043,
		30.112995, 33.711708, 22.984041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609715, 33.052502, 23.156599>,  <29.896013, 33.096329, 23.237471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609715, 33.052502, 23.156599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491997, 33.428303, 23.226709>,  <30.421366, 33.653786, 23.268776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491997, 33.428303, 23.226709>,  <30.609715, 33.052502, 23.156599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491997, 33.428303, 23.226709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452801, -0.024440, 0.891276,
		0.841642, 0.341663, -0.418216,
		-0.294295, 0.939505, 0.175275,
		30.403708, 33.710155, 23.279291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174212, 33.359570, 23.418522>,  <30.609715, 33.052502, 23.156599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174212, 33.359570, 23.418522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.938900, 33.665207, 23.524424>,  <30.797714, 33.848591, 23.587965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.938900, 33.665207, 23.524424>,  <31.174212, 33.359570, 23.418522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938900, 33.665207, 23.524424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418754, 0.007760, 0.908067,
		0.691792, 0.645061, -0.324531,
		-0.588277, 0.764092, 0.264753,
		30.762417, 33.894436, 23.603849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603645, 33.864914, 23.821280>,  <31.174212, 33.359570, 23.418522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603645, 33.864914, 23.821280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.219433, 33.920433, 23.917706>,  <30.988905, 33.953747, 23.975561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.219433, 33.920433, 23.917706>,  <31.603645, 33.864914, 23.821280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219433, 33.920433, 23.917706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229756, -0.092678, 0.968826,
		0.156814, 0.985974, 0.057130,
		-0.960532, 0.138799, 0.241067,
		30.931273, 33.962074, 23.990026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501209, 34.519844, 24.221127>,  <31.603645, 33.864914, 23.821280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501209, 34.519844, 24.221127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.197668, 34.282616, 24.328762>,  <31.015543, 34.140278, 24.393343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.197668, 34.282616, 24.328762>,  <31.501209, 34.519844, 24.221127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197668, 34.282616, 24.328762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235521, 0.135306, 0.962404,
		-0.607185, 0.793698, 0.037004,
		-0.758852, -0.593073, 0.269088,
		30.970013, 34.104694, 24.409489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183979, 34.868904, 24.719826>,  <31.501209, 34.519844, 24.221127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183979, 34.868904, 24.719826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020521, 34.507549, 24.771830>,  <30.922447, 34.290737, 24.803032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020521, 34.507549, 24.771830>,  <31.183979, 34.868904, 24.719826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020521, 34.507549, 24.771830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010109, 0.137959, 0.990386,
		-0.912638, 0.406029, -0.047244,
		-0.408644, -0.903386, 0.130011,
		30.897928, 34.236534, 24.810833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829792, 34.973667, 25.343630>,  <31.183979, 34.868904, 24.719826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829792, 34.973667, 25.343630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.814522, 34.574699, 25.319292>,  <30.805361, 34.335320, 25.304689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.814522, 34.574699, 25.319292>,  <30.829792, 34.973667, 25.343630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814522, 34.574699, 25.319292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024218, -0.061796, 0.997795,
		-0.998978, 0.036616, 0.026515,
		-0.038174, -0.997417, -0.060846,
		30.803070, 34.275475, 25.301039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410200, 34.820503, 25.855038>,  <30.829792, 34.973667, 25.343630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410200, 34.820503, 25.855038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.597408, 34.476593, 25.773312>,  <30.709734, 34.270248, 25.724276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.597408, 34.476593, 25.773312>,  <30.410200, 34.820503, 25.855038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597408, 34.476593, 25.773312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018499, -0.221620, 0.974958,
		-0.883524, -0.460081, -0.087818,
		0.468021, -0.859774, -0.204318,
		30.737814, 34.218662, 25.712017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191259, 34.341328, 26.380358>,  <30.410200, 34.820503, 25.855038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191259, 34.341328, 26.380358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.536366, 34.204227, 26.231678>,  <30.743429, 34.121967, 26.142469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.536366, 34.204227, 26.231678>,  <30.191259, 34.341328, 26.380358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536366, 34.204227, 26.231678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336073, -0.160488, 0.928062,
		-0.377749, -0.925616, -0.023273,
		0.862763, -0.342752, -0.371699,
		30.795195, 34.101402, 26.120169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.070713, 33.279270, 18.319624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457434, 33.380325, 18.304279>,  <28.689466, 33.440960, 18.295073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457434, 33.380325, 18.304279>,  <28.070713, 33.279270, 18.319624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457434, 33.380325, 18.304279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092730, -0.206975, 0.973942,
		0.238117, -0.945164, -0.223531,
		0.966799, 0.252641, -0.038361,
		28.747473, 33.456116, 18.292770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409502, 32.824360, 18.778536>,  <28.070713, 33.279270, 18.319624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409502, 32.824360, 18.778536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690891, 33.108475, 18.768570>,  <28.859724, 33.278942, 18.762590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690891, 33.108475, 18.768570>,  <28.409502, 32.824360, 18.778536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690891, 33.108475, 18.768570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255818, -0.220345, 0.941278,
		0.663087, -0.668537, -0.336711,
		0.703472, 0.710286, -0.024916,
		28.901934, 33.321560, 18.761095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907471, 32.506569, 19.158903>,  <28.409502, 32.824360, 18.778536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907471, 32.506569, 19.158903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037798, 32.884441, 19.143847>,  <29.115993, 33.111164, 19.134811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037798, 32.884441, 19.143847>,  <28.907471, 32.506569, 19.158903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037798, 32.884441, 19.143847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246876, -0.046577, 0.967927,
		0.912632, -0.324659, -0.248396,
		0.325816, 0.944684, -0.037643,
		29.135542, 33.167847, 19.132553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545496, 32.533730, 19.626419>,  <28.907471, 32.506569, 19.158903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545496, 32.533730, 19.626419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414274, 32.909904, 19.590729>,  <29.335541, 33.135609, 19.569315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414274, 32.909904, 19.590729>,  <29.545496, 32.533730, 19.626419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414274, 32.909904, 19.590729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196761, 0.160408, 0.967240,
		0.923940, 0.299751, -0.237664,
		-0.328055, 0.940435, -0.089228,
		29.315857, 33.192036, 19.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030298, 33.091843, 19.873259>,  <29.545496, 32.533730, 19.626419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030298, 33.091843, 19.873259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668926, 33.260826, 19.902512>,  <29.452103, 33.362217, 19.920063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668926, 33.260826, 19.902512>,  <30.030298, 33.091843, 19.873259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668926, 33.260826, 19.902512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194031, 0.250757, 0.948406,
		0.382321, 0.871006, -0.308510,
		-0.903428, 0.422456, 0.073133,
		29.397898, 33.387562, 19.924452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205717, 33.662315, 20.238237>,  <30.030298, 33.091843, 19.873259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205717, 33.662315, 20.238237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808151, 33.627937, 20.265795>,  <29.569613, 33.607311, 20.282330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808151, 33.627937, 20.265795>,  <30.205717, 33.662315, 20.238237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808151, 33.627937, 20.265795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023842, 0.442757, 0.896325,
		-0.107539, 0.892513, -0.438014,
		-0.993915, -0.085947, 0.068893,
		29.509977, 33.602154, 20.286463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169159, 34.265560, 20.597969>,  <30.205717, 33.662315, 20.238237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169159, 34.265560, 20.597969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831776, 34.056919, 20.649351>,  <29.629345, 33.931732, 20.680182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831776, 34.056919, 20.649351>,  <30.169159, 34.265560, 20.597969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831776, 34.056919, 20.649351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062611, 0.332951, 0.940863,
		-0.533530, 0.785538, -0.313489,
		-0.843460, -0.521607, 0.128456,
		29.578737, 33.900436, 20.687887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754450, 34.672554, 21.073595>,  <30.169159, 34.265560, 20.597969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754450, 34.672554, 21.073595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610241, 34.300591, 21.102724>,  <29.523716, 34.077412, 21.120201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610241, 34.300591, 21.102724>,  <29.754450, 34.672554, 21.073595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610241, 34.300591, 21.102724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024153, 0.068740, 0.997342,
		-0.932438, 0.361321, -0.002322,
		-0.360521, -0.929904, 0.072823,
		29.502085, 34.021618, 21.124571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156857, 34.664970, 21.496330>,  <29.754450, 34.672554, 21.073595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156857, 34.664970, 21.496330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316917, 34.298412, 21.500423>,  <29.412954, 34.078480, 21.502880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316917, 34.298412, 21.500423>,  <29.156857, 34.664970, 21.496330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316917, 34.298412, 21.500423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252932, 0.121163, 0.959867,
		-0.880854, -0.381505, 0.280268,
		0.400153, -0.916391, 0.010233,
		29.436964, 34.023495, 21.503492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487581, 35.009487, 21.651966>,  <29.156857, 34.664970, 21.496330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487581, 35.009487, 21.651966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575006, 35.397148, 21.606413>,  <28.627462, 35.629745, 21.579081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575006, 35.397148, 21.606413>,  <28.487581, 35.009487, 21.651966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575006, 35.397148, 21.606413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171213, -0.076808, -0.982236,
		-0.960685, 0.234179, 0.149144,
		0.218563, 0.969155, -0.113883,
		28.640575, 35.687893, 21.572248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813156, 35.323555, 21.379730>,  <28.487581, 35.009487, 21.651966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813156, 35.323555, 21.379730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128880, 35.538860, 21.261568>,  <28.318314, 35.668045, 21.190670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128880, 35.538860, 21.261568>,  <27.813156, 35.323555, 21.379730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128880, 35.538860, 21.261568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449301, 0.178438, -0.875379,
		-0.418473, 0.823670, 0.382685,
		0.789309, 0.538263, -0.295405,
		28.365673, 35.700340, 21.172947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500340, 35.728165, 20.884392>,  <27.813156, 35.323555, 21.379730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500340, 35.728165, 20.884392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889372, 35.791763, 20.816500>,  <28.122791, 35.829922, 20.775764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889372, 35.791763, 20.816500>,  <27.500340, 35.728165, 20.884392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889372, 35.791763, 20.816500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199356, 0.194092, -0.960513,
		-0.119773, 0.968013, 0.220467,
		0.972580, 0.158995, -0.169732,
		28.181147, 35.839462, 20.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457245, 36.448395, 20.523605>,  <27.500340, 35.728165, 20.884392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457245, 36.448395, 20.523605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807461, 36.274879, 20.438513>,  <28.017591, 36.170769, 20.387457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807461, 36.274879, 20.438513>,  <27.457245, 36.448395, 20.523605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807461, 36.274879, 20.438513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008361, 0.426640, -0.904383,
		0.483072, 0.793603, 0.369914,
		0.875541, -0.433789, -0.212733,
		28.070124, 36.144741, 20.374693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888685, 36.953346, 20.262428>,  <27.457245, 36.448395, 20.523605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888685, 36.953346, 20.262428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013620, 36.601223, 20.119598>,  <28.088581, 36.389950, 20.033899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013620, 36.601223, 20.119598>,  <27.888685, 36.953346, 20.262428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013620, 36.601223, 20.119598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062641, 0.355978, -0.932392,
		0.947904, 0.313588, 0.056042,
		0.312337, -0.880308, -0.357076,
		28.107321, 36.337132, 20.012476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221733, 37.197868, 19.744139>,  <27.888685, 36.953346, 20.262428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221733, 37.197868, 19.744139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184147, 36.808811, 19.659151>,  <28.161594, 36.575378, 19.608158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184147, 36.808811, 19.659151>,  <28.221733, 37.197868, 19.744139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184147, 36.808811, 19.659151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103124, 0.221775, -0.969630,
		0.990220, -0.069202, -0.121142,
		-0.093967, -0.972639, -0.212470,
		28.155956, 36.517021, 19.595409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714970, 37.075665, 19.213360>,  <28.221733, 37.197868, 19.744139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714970, 37.075665, 19.213360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453136, 36.775429, 19.177275>,  <28.296036, 36.595287, 19.155622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453136, 36.775429, 19.177275>,  <28.714970, 37.075665, 19.213360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453136, 36.775429, 19.177275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050520, 0.162498, -0.985415,
		0.754300, -0.640478, -0.144289,
		-0.654583, -0.750588, -0.090215,
		28.256762, 36.550251, 19.150209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917444, 36.651955, 18.651230>,  <28.714970, 37.075665, 19.213360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917444, 36.651955, 18.651230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537859, 36.533356, 18.694227>,  <28.310108, 36.462196, 18.720026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537859, 36.533356, 18.694227>,  <28.917444, 36.651955, 18.651230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537859, 36.533356, 18.694227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107993, -0.014738, -0.994042,
		0.296317, -0.954920, -0.018034,
		-0.948964, -0.296499, 0.107491,
		28.253170, 36.444405, 18.726475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909401, 36.103565, 18.294527>,  <28.917444, 36.651955, 18.651230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909401, 36.103565, 18.294527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528011, 36.221443, 18.319950>,  <28.299177, 36.292171, 18.335205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528011, 36.221443, 18.319950>,  <28.909401, 36.103565, 18.294527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528011, 36.221443, 18.319950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064273, 0.007275, -0.997906,
		-0.294544, -0.955562, 0.012005,
		-0.953474, 0.294699, 0.063560,
		28.241968, 36.309853, 18.339018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546059, 35.696644, 17.787420>,  <28.909401, 36.103565, 18.294527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546059, 35.696644, 17.787420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294327, 35.998741, 17.860682>,  <28.143288, 36.180000, 17.904638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294327, 35.998741, 17.860682>,  <28.546059, 35.696644, 17.787420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294327, 35.998741, 17.860682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152515, 0.111064, -0.982041,
		-0.762025, -0.645961, 0.045291,
		-0.629330, 0.755248, 0.183152,
		28.105528, 36.225315, 17.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907001, 35.614151, 17.344889>,  <28.546059, 35.696644, 17.787420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907001, 35.614151, 17.344889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898350, 35.999577, 17.451525>,  <27.893158, 36.230831, 17.515507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898350, 35.999577, 17.451525>,  <27.907001, 35.614151, 17.344889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898350, 35.999577, 17.451525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095790, 0.263428, -0.959911,
		-0.995167, -0.046299, 0.086602,
		-0.021630, 0.963567, 0.266590,
		27.891861, 36.288647, 17.531502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422235, 35.908142, 16.896381>,  <27.907001, 35.614151, 17.344889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422235, 35.908142, 16.896381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645330, 36.206390, 17.042242>,  <27.779188, 36.385342, 17.129759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645330, 36.206390, 17.042242>,  <27.422235, 35.908142, 16.896381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645330, 36.206390, 17.042242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024121, 0.453706, -0.890825,
		-0.829666, 0.488052, 0.271035,
		0.557739, 0.745625, 0.364652,
		27.812653, 36.430077, 17.151638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133278, 36.453053, 16.669949>,  <27.422235, 35.908142, 16.896381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133278, 36.453053, 16.669949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502018, 36.583290, 16.754025>,  <27.723261, 36.661434, 16.804470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502018, 36.583290, 16.754025>,  <27.133278, 36.453053, 16.669949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502018, 36.583290, 16.754025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036992, 0.465956, -0.884034,
		-0.385779, 0.822722, 0.417496,
		0.921849, 0.325598, 0.210190,
		27.778572, 36.680969, 16.817081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060974, 37.069771, 16.456909>,  <27.133278, 36.453053, 16.669949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060974, 37.069771, 16.456909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454147, 36.998531, 16.475334>,  <27.690052, 36.955788, 16.486389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454147, 36.998531, 16.475334>,  <27.060974, 37.069771, 16.456909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454147, 36.998531, 16.475334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119133, 0.425490, -0.897087,
		0.140171, 0.887265, 0.439446,
		0.982934, -0.178098, 0.046062,
		27.749027, 36.945103, 16.489153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.610573, 36.337730, 14.551070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316551, 36.140446, 14.737163>,  <34.140137, 36.022076, 14.848818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316551, 36.140446, 14.737163>,  <34.610573, 36.337730, 14.551070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316551, 36.140446, 14.737163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472311, 0.119805, 0.873252,
		-0.486435, 0.861620, 0.144886,
		-0.735053, -0.493211, 0.465230,
		34.096035, 35.992481, 14.876732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376724, 36.748047, 15.125813>,  <34.610573, 36.337730, 14.551070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376724, 36.748047, 15.125813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.236576, 36.389835, 15.235556>,  <34.152485, 36.174908, 15.301401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.236576, 36.389835, 15.235556>,  <34.376724, 36.748047, 15.125813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236576, 36.389835, 15.235556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326536, 0.157751, 0.931928,
		-0.877846, 0.416109, 0.237150,
		-0.350373, -0.895527, 0.274356,
		34.131466, 36.121178, 15.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953007, 36.848598, 15.719391>,  <34.376724, 36.748047, 15.125813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953007, 36.848598, 15.719391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118298, 36.484356, 15.721625>,  <34.217472, 36.265808, 15.722966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118298, 36.484356, 15.721625>,  <33.953007, 36.848598, 15.719391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118298, 36.484356, 15.721625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206957, 0.099887, 0.973238,
		-0.886799, -0.401011, 0.229734,
		0.413227, -0.910611, 0.005587,
		34.242264, 36.211174, 15.723302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761845, 36.709270, 16.322992>,  <33.953007, 36.848598, 15.719391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761845, 36.709270, 16.322992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.041859, 36.446941, 16.209957>,  <34.209866, 36.289543, 16.142136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.041859, 36.446941, 16.209957>,  <33.761845, 36.709270, 16.322992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041859, 36.446941, 16.209957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301574, -0.087202, 0.949447,
		-0.647309, -0.749863, 0.136734,
		0.700032, -0.655821, -0.282586,
		34.251869, 36.250195, 16.125181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797821, 36.190392, 16.751072>,  <33.761845, 36.709270, 16.322992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797821, 36.190392, 16.751072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159767, 36.125431, 16.593670>,  <34.376934, 36.086452, 16.499229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159767, 36.125431, 16.593670>,  <33.797821, 36.190392, 16.751072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159767, 36.125431, 16.593670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373469, -0.140791, 0.916896,
		-0.204311, -0.976628, -0.066744,
		0.904864, -0.162405, -0.393505,
		34.431225, 36.076710, 16.475618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042561, 35.697140, 17.165001>,  <33.797821, 36.190392, 16.751072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042561, 35.697140, 17.165001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358181, 35.871693, 16.992041>,  <34.547554, 35.976425, 16.888266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358181, 35.871693, 16.992041>,  <34.042561, 35.697140, 17.165001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358181, 35.871693, 16.992041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452079, 0.064118, 0.889670,
		0.415960, -0.897475, -0.146687,
		0.789051, 0.436381, -0.432400,
		34.594898, 36.002605, 16.862320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479122, 35.288570, 17.456179>,  <34.042561, 35.697140, 17.165001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479122, 35.288570, 17.456179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635078, 35.627792, 17.312630>,  <34.728653, 35.831326, 17.226500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635078, 35.627792, 17.312630>,  <34.479122, 35.288570, 17.456179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635078, 35.627792, 17.312630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317728, 0.241893, 0.916808,
		0.864312, -0.471476, -0.175140,
		0.389888, 0.848055, -0.358873,
		34.752045, 35.882210, 17.204967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107506, 35.262711, 17.687735>,  <34.479122, 35.288570, 17.456179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107506, 35.262711, 17.687735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060986, 35.650520, 17.601480>,  <35.033073, 35.883205, 17.549728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060986, 35.650520, 17.601480>,  <35.107506, 35.262711, 17.687735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060986, 35.650520, 17.601480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373424, 0.243864, 0.895034,
		0.920342, 0.023569, -0.390405,
		-0.116301, 0.969523, -0.215637,
		35.026096, 35.941376, 17.536789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732922, 35.656528, 17.936764>,  <35.107506, 35.262711, 17.687735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732922, 35.656528, 17.936764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429108, 35.916256, 17.921293>,  <35.246819, 36.072094, 17.912010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429108, 35.916256, 17.921293>,  <35.732922, 35.656528, 17.936764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429108, 35.916256, 17.921293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254817, 0.351720, 0.900756,
		0.598482, 0.674297, -0.432600,
		-0.759531, 0.649320, -0.038676,
		35.201248, 36.111053, 17.909691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995609, 36.262463, 18.148758>,  <35.732922, 35.656528, 17.936764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995609, 36.262463, 18.148758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602474, 36.301952, 18.211094>,  <35.366592, 36.325645, 18.248495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602474, 36.301952, 18.211094>,  <35.995609, 36.262463, 18.148758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602474, 36.301952, 18.211094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178056, 0.286696, 0.941330,
		0.048249, 0.952922, -0.299353,
		-0.982837, 0.098720, 0.155841,
		35.307625, 36.331570, 18.257847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975163, 36.809452, 18.456778>,  <35.995609, 36.262463, 18.148758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975163, 36.809452, 18.456778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 36.707138, 18.536615>,  <35.369785, 36.645752, 18.584518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 36.707138, 18.536615>,  <35.975163, 36.809452, 18.456778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596802, 36.707138, 18.536615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139364, 0.235225, 0.961898,
		-0.292987, 0.937680, -0.186854,
		-0.945905, -0.255783, 0.199596,
		35.313030, 36.630402, 18.596495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634674, 37.388294, 18.835707>,  <35.975163, 36.809452, 18.456778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634674, 37.388294, 18.835707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412807, 37.070412, 18.934326>,  <35.279686, 36.879684, 18.993498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412807, 37.070412, 18.934326>,  <35.634674, 37.388294, 18.835707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412807, 37.070412, 18.934326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176060, 0.177505, 0.968243,
		-0.813230, 0.580463, 0.041458,
		-0.554671, -0.794704, 0.246549,
		35.246407, 36.832001, 19.008291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151775, 37.626961, 19.307018>,  <35.634674, 37.388294, 18.835707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151775, 37.626961, 19.307018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184307, 37.233303, 19.370062>,  <35.203827, 36.997108, 19.407888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184307, 37.233303, 19.370062>,  <35.151775, 37.626961, 19.307018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184307, 37.233303, 19.370062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007575, 0.158739, 0.987291,
		-0.996659, -0.079102, 0.020365,
		0.081330, -0.984147, 0.157609,
		35.208706, 36.938061, 19.417345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633503, 37.416000, 19.842550>,  <35.151775, 37.626961, 19.307018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633503, 37.416000, 19.842550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.921162, 37.140083, 19.809055>,  <35.093758, 36.974533, 19.788958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.921162, 37.140083, 19.809055>,  <34.633503, 37.416000, 19.842550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921162, 37.140083, 19.809055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149869, 0.036301, 0.988039,
		-0.678506, -0.723093, 0.129484,
		0.719145, -0.689796, -0.083739,
		35.136906, 36.933144, 19.783934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008804, 37.407906, 19.822144>,  <34.633503, 37.416000, 19.842550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008804, 37.407906, 19.822144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850586, 37.763638, 19.913906>,  <33.755653, 37.977077, 19.968964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850586, 37.763638, 19.913906>,  <34.008804, 37.407906, 19.822144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850586, 37.763638, 19.913906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065576, 0.221794, -0.972886,
		-0.916101, -0.399867, -0.029411,
		-0.395548, 0.889333, 0.229408,
		33.731922, 38.030437, 19.982729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333988, 37.471794, 19.499447>,  <34.008804, 37.407906, 19.822144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333988, 37.471794, 19.499447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476116, 37.841297, 19.556612>,  <33.561394, 38.063000, 19.590912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476116, 37.841297, 19.556612>,  <33.333988, 37.471794, 19.499447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476116, 37.841297, 19.556612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275748, 0.249671, -0.928239,
		-0.893148, 0.290412, 0.343436,
		0.355318, 0.923756, 0.142912,
		33.582710, 38.118423, 19.599485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839714, 37.970093, 19.285425>,  <33.333988, 37.471794, 19.499447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839714, 37.970093, 19.285425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176735, 38.182667, 19.250351>,  <33.378948, 38.310211, 19.229305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176735, 38.182667, 19.250351>,  <32.839714, 37.970093, 19.285425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176735, 38.182667, 19.250351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367616, 0.448397, -0.814739,
		-0.393659, 0.718693, 0.573159,
		0.842550, 0.531432, -0.087687,
		33.429501, 38.342098, 19.224045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588047, 38.564640, 18.937672>,  <32.839714, 37.970093, 19.285425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588047, 38.564640, 18.937672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985447, 38.600163, 18.909206>,  <33.223888, 38.621475, 18.892126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985447, 38.600163, 18.909206>,  <32.588047, 38.564640, 18.937672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985447, 38.600163, 18.909206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101238, 0.404063, -0.909112,
		-0.051980, 0.910410, 0.410429,
		0.993503, 0.088806, -0.071165,
		33.283497, 38.626804, 18.887857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762581, 39.239635, 18.643116>,  <32.588047, 38.564640, 18.937672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762581, 39.239635, 18.643116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098812, 39.030685, 18.585772>,  <33.300552, 38.905315, 18.551365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098812, 39.030685, 18.585772>,  <32.762581, 39.239635, 18.643116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098812, 39.030685, 18.585772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000776, 0.265820, -0.964022,
		0.541687, 0.810227, 0.223849,
		0.840580, -0.522372, -0.143362,
		33.350986, 38.873974, 18.542763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111576, 39.701809, 18.337488>,  <32.762581, 39.239635, 18.643116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111576, 39.701809, 18.337488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279552, 39.350113, 18.247524>,  <33.380337, 39.139095, 18.193546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279552, 39.350113, 18.247524>,  <33.111576, 39.701809, 18.337488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279552, 39.350113, 18.247524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135205, 0.184442, -0.973499,
		0.897424, 0.439219, -0.041424,
		0.419939, -0.879243, -0.224907,
		33.405533, 39.086342, 18.180052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400932, 39.916470, 17.609051>,  <33.111576, 39.701809, 18.337488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400932, 39.916470, 17.609051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.367046, 39.520432, 17.653839>,  <33.346714, 39.282810, 17.680712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.367046, 39.520432, 17.653839>,  <33.400932, 39.916470, 17.609051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367046, 39.520432, 17.653839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277176, -0.084526, -0.957094,
		0.957077, -0.112114, -0.267270,
		-0.084712, -0.990094, 0.111973,
		33.341633, 39.223404, 17.687431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842880, 39.565788, 17.002131>,  <33.400932, 39.916470, 17.609051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842880, 39.565788, 17.002131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567375, 39.304569, 17.128073>,  <33.402073, 39.147839, 17.203638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567375, 39.304569, 17.128073>,  <33.842880, 39.565788, 17.002131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567375, 39.304569, 17.128073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107009, -0.337961, -0.935057,
		0.717051, -0.677721, 0.162891,
		-0.688758, -0.653052, 0.314858,
		33.360748, 39.108654, 17.222530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058304, 38.918331, 16.755405>,  <33.842880, 39.565788, 17.002131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058304, 38.918331, 16.755405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.667534, 38.910942, 16.840521>,  <33.433071, 38.906509, 16.891590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.667534, 38.910942, 16.840521>,  <34.058304, 38.918331, 16.755405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667534, 38.910942, 16.840521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180047, -0.464723, -0.866958,
		0.114902, -0.885263, 0.450673,
		-0.976924, -0.018473, 0.212787,
		33.374458, 38.905399, 16.904356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769901, 38.231068, 16.660660>,  <34.058304, 38.918331, 16.755405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769901, 38.231068, 16.660660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436737, 38.448112, 16.617170>,  <33.236839, 38.578339, 16.591078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436737, 38.448112, 16.617170>,  <33.769901, 38.231068, 16.660660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436737, 38.448112, 16.617170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142687, -0.400389, -0.905168,
		-0.534692, -0.738414, 0.410914,
		-0.832914, 0.542618, -0.108723,
		33.186863, 38.610897, 16.584555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279102, 37.804779, 16.296597>,  <33.769901, 38.231068, 16.660660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279102, 37.804779, 16.296597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.137390, 38.176193, 16.252214>,  <33.052361, 38.399040, 16.225584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.137390, 38.176193, 16.252214>,  <33.279102, 37.804779, 16.296597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137390, 38.176193, 16.252214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286688, -0.220786, -0.932236,
		-0.890108, -0.298467, 0.344420,
		-0.354284, 0.928532, -0.110956,
		33.031105, 38.454754, 16.218927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548435, 37.660580, 16.223858>,  <33.279102, 37.804779, 16.296597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548435, 37.660580, 16.223858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.602253, 38.039085, 16.106222>,  <32.634544, 38.266190, 16.035641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.602253, 38.039085, 16.106222>,  <32.548435, 37.660580, 16.223858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602253, 38.039085, 16.106222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408980, -0.217301, -0.886293,
		-0.902570, 0.239525, 0.357765,
		0.134546, 0.946260, -0.294090,
		32.642616, 38.322964, 16.017996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908682, 37.923752, 16.050917>,  <32.548435, 37.660580, 16.223858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908682, 37.923752, 16.050917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.181915, 38.155922, 15.873602>,  <32.345856, 38.295223, 15.767213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.181915, 38.155922, 15.873602>,  <31.908682, 37.923752, 16.050917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181915, 38.155922, 15.873602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491421, -0.083730, -0.866888,
		-0.540277, 0.810000, 0.228037,
		0.683086, 0.580421, -0.443289,
		32.386841, 38.330048, 15.740615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554487, 38.416687, 15.699158>,  <31.908682, 37.923752, 16.050917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554487, 38.416687, 15.699158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906311, 38.390644, 15.510633>,  <32.117405, 38.375019, 15.397517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906311, 38.390644, 15.510633>,  <31.554487, 38.416687, 15.699158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906311, 38.390644, 15.510633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475614, -0.147121, -0.867264,
		-0.012877, 0.986973, -0.160367,
		0.879560, -0.065106, -0.471313,
		32.170177, 38.371113, 15.369239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409592, 39.141319, 15.697717>,  <31.554487, 38.416687, 15.699158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409592, 39.141319, 15.697717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.013084, 39.156990, 15.748074>,  <30.775179, 39.166393, 15.778288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.013084, 39.156990, 15.748074>,  <31.409592, 39.141319, 15.697717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013084, 39.156990, 15.748074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129581, 0.113258, 0.985079,
		0.024333, 0.992793, -0.117346,
		-0.991270, 0.039176, 0.125891,
		30.715704, 39.168743, 15.785841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217470, 39.729527, 16.116104>,  <31.409592, 39.141319, 15.697717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217470, 39.729527, 16.116104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.902521, 39.489029, 16.170584>,  <30.713551, 39.344730, 16.203272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.902521, 39.489029, 16.170584>,  <31.217470, 39.729527, 16.116104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902521, 39.489029, 16.170584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096877, 0.338861, 0.935835,
		-0.608815, 0.723659, -0.325057,
		-0.787375, -0.601241, 0.136198,
		30.666309, 39.308655, 16.211443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835735, 40.041664, 16.530603>,  <31.217470, 39.729527, 16.116104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835735, 40.041664, 16.530603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.690527, 39.669582, 16.552254>,  <30.603403, 39.446331, 16.565245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.690527, 39.669582, 16.552254>,  <30.835735, 40.041664, 16.530603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690527, 39.669582, 16.552254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415749, 0.213689, 0.884019,
		-0.833888, 0.298413, -0.464307,
		-0.363020, -0.930208, 0.054128,
		30.581621, 39.390518, 16.568493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181065, 40.193493, 16.900381>,  <30.835735, 40.041664, 16.530603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181065, 40.193493, 16.900381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.202881, 39.794666, 16.921862>,  <30.215971, 39.555370, 16.934750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.202881, 39.794666, 16.921862>,  <30.181065, 40.193493, 16.900381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202881, 39.794666, 16.921862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404655, 0.027099, 0.914068,
		-0.912842, -0.071583, -0.401990,
		0.054539, -0.997066, 0.053703,
		30.219242, 39.495544, 16.937973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557957, 40.042435, 17.065334>,  <30.181065, 40.193493, 16.900381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557957, 40.042435, 17.065334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.802172, 39.747517, 17.181013>,  <29.948700, 39.570564, 17.250420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.802172, 39.747517, 17.181013>,  <29.557957, 40.042435, 17.065334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802172, 39.747517, 17.181013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498501, -0.074011, 0.863724,
		-0.615419, -0.671500, -0.412731,
		0.610538, -0.737299, 0.289196,
		29.985332, 39.526325, 17.267773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178764, 39.554642, 17.501112>,  <29.557957, 40.042435, 17.065334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178764, 39.554642, 17.501112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565678, 39.520618, 17.596722>,  <29.797825, 39.500206, 17.654087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565678, 39.520618, 17.596722>,  <29.178764, 39.554642, 17.501112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565678, 39.520618, 17.596722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247035, -0.101131, 0.963715,
		-0.057787, -0.991232, -0.118831,
		0.967282, -0.085046, 0.239024,
		29.855862, 39.495102, 17.668428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224579, 39.068848, 18.074169>,  <29.178764, 39.554642, 17.501112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224579, 39.068848, 18.074169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570862, 39.268051, 18.094349>,  <29.778631, 39.387573, 18.106457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570862, 39.268051, 18.094349>,  <29.224579, 39.068848, 18.074169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570862, 39.268051, 18.094349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012494, -0.079255, 0.996776,
		0.500397, -0.863545, -0.062389,
		0.865706, 0.498005, 0.050448,
		29.830574, 39.417454, 18.109484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582882, 38.706467, 18.598486>,  <29.224579, 39.068848, 18.074169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582882, 38.706467, 18.598486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.757477, 39.062351, 18.544989>,  <29.862234, 39.275883, 18.512890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.757477, 39.062351, 18.544989>,  <29.582882, 38.706467, 18.598486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757477, 39.062351, 18.544989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067990, 0.115607, 0.990966,
		0.897138, -0.441637, -0.010031,
		0.436488, 0.889714, -0.133742,
		29.888424, 39.329266, 18.504866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219044, 38.704201, 19.085266>,  <29.582882, 38.706467, 18.598486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219044, 38.704201, 19.085266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.095869, 39.074722, 18.998425>,  <30.021965, 39.297035, 18.946320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.095869, 39.074722, 18.998425>,  <30.219044, 38.704201, 19.085266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095869, 39.074722, 18.998425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078851, 0.202557, 0.976091,
		0.948133, 0.317694, 0.010666,
		-0.307937, 0.926305, -0.217102,
		30.003489, 39.352615, 18.933294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645824, 39.098309, 19.465269>,  <30.219044, 38.704201, 19.085266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645824, 39.098309, 19.465269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.368988, 39.374241, 19.380281>,  <30.202887, 39.539799, 19.329288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.368988, 39.374241, 19.380281>,  <30.645824, 39.098309, 19.465269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368988, 39.374241, 19.380281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010246, 0.284939, 0.958491,
		0.721739, 0.665539, -0.190135,
		-0.692090, 0.689832, -0.212471,
		30.161362, 39.581192, 19.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809319, 39.675159, 19.761246>,  <30.645824, 39.098309, 19.465269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809319, 39.675159, 19.761246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417526, 39.726662, 19.699221>,  <30.182451, 39.757565, 19.662006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417526, 39.726662, 19.699221>,  <30.809319, 39.675159, 19.761246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417526, 39.726662, 19.699221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093326, 0.392166, 0.915148,
		0.178640, 0.910839, -0.372102,
		-0.979479, 0.128755, -0.155061,
		30.123682, 39.765289, 19.652702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677523, 40.414772, 19.768044>,  <30.809319, 39.675159, 19.761246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677523, 40.414772, 19.768044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345736, 40.214611, 19.867311>,  <30.146664, 40.094517, 19.926872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345736, 40.214611, 19.867311>,  <30.677523, 40.414772, 19.768044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345736, 40.214611, 19.867311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034508, 0.397546, 0.916933,
		-0.557491, 0.769128, -0.312484,
		-0.829466, -0.500399, 0.248169,
		30.096895, 40.064491, 19.941763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223721, 40.927788, 20.093288>,  <30.677523, 40.414772, 19.768044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223721, 40.927788, 20.093288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.068607, 40.574814, 20.199820>,  <29.975538, 40.363029, 20.263739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.068607, 40.574814, 20.199820>,  <30.223721, 40.927788, 20.093288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068607, 40.574814, 20.199820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273767, 0.386162, 0.880869,
		-0.880156, 0.268675, -0.391329,
		-0.387784, -0.882435, 0.266329,
		29.952272, 40.310081, 20.279718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637640, 41.084755, 20.573784>,  <30.223721, 40.927788, 20.093288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637640, 41.084755, 20.573784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.721170, 40.701141, 20.650354>,  <29.771288, 40.470974, 20.696297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.721170, 40.701141, 20.650354>,  <29.637640, 41.084755, 20.573784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721170, 40.701141, 20.650354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056996, 0.183474, 0.981371,
		-0.976290, -0.215847, -0.016347,
		0.208826, -0.959035, 0.191426,
		29.783819, 40.413429, 20.707783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.391562, 37.681591, 16.237720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.686686, 37.418655, 16.176344>,  <27.863760, 37.260895, 16.139519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.686686, 37.418655, 16.176344>,  <27.391562, 37.681591, 16.237720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686686, 37.418655, 16.176344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118529, 0.349949, -0.929240,
		0.664522, 0.667414, 0.336109,
		0.737809, -0.657339, -0.153441,
		27.908028, 37.221455, 16.130312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056990, 38.068184, 16.065571>,  <27.391562, 37.681591, 16.237720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056990, 38.068184, 16.065571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.060965, 37.692932, 15.927112>,  <28.063351, 37.467781, 15.844036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.060965, 37.692932, 15.927112>,  <28.056990, 38.068184, 16.065571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060965, 37.692932, 15.927112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073509, 0.345912, -0.935383,
		0.997245, -0.016148, 0.072399,
		0.009939, -0.938128, -0.346146,
		28.063946, 37.411495, 15.823268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451794, 38.096027, 15.537773>,  <28.056990, 38.068184, 16.065571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451794, 38.096027, 15.537773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270447, 37.751362, 15.446562>,  <28.161638, 37.544563, 15.391835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270447, 37.751362, 15.446562>,  <28.451794, 38.096027, 15.537773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270447, 37.751362, 15.446562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152576, 0.177031, -0.972307,
		0.878168, -0.475603, 0.051209,
		-0.453367, -0.861662, -0.228029,
		28.134438, 37.492863, 15.378153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788679, 37.802998, 14.900468>,  <28.451794, 38.096027, 15.537773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788679, 37.802998, 14.900468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.466059, 37.569752, 14.939366>,  <28.272486, 37.429806, 14.962706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.466059, 37.569752, 14.939366>,  <28.788679, 37.802998, 14.900468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466059, 37.569752, 14.939366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008477, -0.153074, -0.988178,
		0.591104, -0.797840, 0.118519,
		-0.806551, -0.583111, 0.097246,
		28.224094, 37.394817, 14.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938169, 37.177109, 14.584019>,  <28.788679, 37.802998, 14.900468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938169, 37.177109, 14.584019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.540472, 37.214123, 14.605630>,  <28.301853, 37.236332, 14.618597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.540472, 37.214123, 14.605630>,  <28.938169, 37.177109, 14.584019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540472, 37.214123, 14.605630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067822, -0.153078, -0.985884,
		-0.082956, -0.983872, 0.158473,
		-0.994243, 0.092533, 0.054030,
		28.242199, 37.241882, 14.621839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685799, 36.586498, 14.207959>,  <28.938169, 37.177109, 14.584019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685799, 36.586498, 14.207959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.407431, 36.873741, 14.209778>,  <28.240410, 37.046085, 14.210869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.407431, 36.873741, 14.209778>,  <28.685799, 36.586498, 14.207959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407431, 36.873741, 14.209778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179750, -0.168061, -0.969250,
		-0.695261, -0.675335, 0.246036,
		-0.695918, 0.718107, 0.004546,
		28.198656, 37.089172, 14.211142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192247, 36.266045, 13.943613>,  <28.685799, 36.586498, 14.207959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192247, 36.266045, 13.943613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093819, 36.647957, 13.876878>,  <28.034761, 36.877106, 13.836837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093819, 36.647957, 13.876878>,  <28.192247, 36.266045, 13.943613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093819, 36.647957, 13.876878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395736, -0.256101, -0.881933,
		-0.884783, -0.150997, 0.440862,
		-0.246074, 0.954784, -0.166838,
		28.019997, 36.934391, 13.826826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665779, 36.188816, 13.501249>,  <28.192247, 36.266045, 13.943613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665779, 36.188816, 13.501249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.781633, 36.564903, 13.429583>,  <27.851147, 36.790554, 13.386582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.781633, 36.564903, 13.429583>,  <27.665779, 36.188816, 13.501249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781633, 36.564903, 13.429583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457251, -0.028526, -0.888880,
		-0.840852, 0.339377, 0.421653,
		0.289637, 0.940218, -0.179167,
		27.868525, 36.846970, 13.375833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202038, 36.444637, 12.996203>,  <27.665779, 36.188816, 13.501249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202038, 36.444637, 12.996203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.510632, 36.698692, 12.981186>,  <27.695787, 36.851128, 12.972176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.510632, 36.698692, 12.981186>,  <27.202038, 36.444637, 12.996203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510632, 36.698692, 12.981186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155648, 0.131188, -0.979063,
		-0.616916, 0.761175, 0.200067,
		0.771485, 0.635139, -0.037543,
		27.742077, 36.889233, 12.969923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999676, 36.939594, 12.587893>,  <27.202038, 36.444637, 12.996203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999676, 36.939594, 12.587893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.396660, 36.988602, 12.586324>,  <27.634850, 37.018005, 12.585382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.396660, 36.988602, 12.586324>,  <26.999676, 36.939594, 12.587893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396660, 36.988602, 12.586324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028852, 0.202384, -0.978881,
		-0.119135, 0.971612, 0.204392,
		0.992459, 0.122516, -0.003922,
		27.694397, 37.025356, 12.585147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041794, 37.529148, 12.150262>,  <26.999676, 36.939594, 12.587893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041794, 37.529148, 12.150262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403925, 37.359440, 12.157993>,  <27.621204, 37.257614, 12.162632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403925, 37.359440, 12.157993>,  <27.041794, 37.529148, 12.150262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403925, 37.359440, 12.157993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155893, 0.289625, -0.944359,
		0.395070, 0.857967, 0.328347,
		0.905327, -0.424275, 0.019329,
		27.675524, 37.232159, 12.163792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416519, 37.971596, 11.803005>,  <27.041794, 37.529148, 12.150262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416519, 37.971596, 11.803005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.614527, 37.624271, 11.790420>,  <27.733332, 37.415874, 11.782868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.614527, 37.624271, 11.790420>,  <27.416519, 37.971596, 11.803005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614527, 37.624271, 11.790420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298623, 0.204025, -0.932308,
		0.815954, 0.452114, 0.360294,
		0.495018, -0.868313, -0.031463,
		27.763033, 37.363777, 11.780980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156977, 38.044430, 11.612437>,  <27.416519, 37.971596, 11.803005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156977, 38.044430, 11.612437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.967428, 37.714550, 11.488938>,  <27.853699, 37.516624, 11.414839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.967428, 37.714550, 11.488938>,  <28.156977, 38.044430, 11.612437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967428, 37.714550, 11.488938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149702, 0.270064, -0.951133,
		0.867777, -0.496934, -0.004517,
		-0.473870, -0.824695, -0.308748,
		27.825268, 37.467140, 11.396314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498127, 37.516037, 11.108093>,  <28.156977, 38.044430, 11.612437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498127, 37.516037, 11.108093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108500, 37.508995, 11.017864>,  <27.874723, 37.504772, 10.963727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108500, 37.508995, 11.017864>,  <28.498127, 37.516037, 11.108093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108500, 37.508995, 11.017864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220819, 0.143327, -0.964726,
		0.049309, -0.989519, -0.135724,
		-0.974068, -0.017599, -0.225571,
		27.816278, 37.503716, 10.950192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882622, 38.132690, 10.910490>,  <28.498127, 37.516037, 11.108093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882622, 38.132690, 10.910490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.200163, 38.296314, 10.730503>,  <29.390688, 38.394489, 10.622511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.200163, 38.296314, 10.730503>,  <28.882622, 38.132690, 10.910490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200163, 38.296314, 10.730503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272691, 0.421917, 0.864654,
		0.543544, -0.809108, 0.223392,
		0.793851, 0.409061, -0.449967,
		29.438318, 38.419033, 10.595513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424635, 37.968006, 11.277973>,  <28.882622, 38.132690, 10.910490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424635, 37.968006, 11.277973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540306, 38.298851, 11.085202>,  <29.609709, 38.497360, 10.969540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540306, 38.298851, 11.085202>,  <29.424635, 37.968006, 11.277973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540306, 38.298851, 11.085202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204727, 0.438352, 0.875177,
		0.935127, -0.351747, -0.042571,
		0.289180, 0.827117, -0.481926,
		29.627060, 38.546986, 10.940624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051716, 38.115047, 11.505412>,  <29.424635, 37.968006, 11.277973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051716, 38.115047, 11.505412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914997, 38.462013, 11.360763>,  <29.832966, 38.670193, 11.273973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914997, 38.462013, 11.360763>,  <30.051716, 38.115047, 11.505412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914997, 38.462013, 11.360763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302737, 0.465915, 0.831429,
		0.889676, 0.174705, -0.421846,
		-0.341799, 0.867411, -0.361624,
		29.812458, 38.722237, 11.252275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585361, 38.668095, 11.530028>,  <30.051716, 38.115047, 11.505412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585361, 38.668095, 11.530028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.222317, 38.835472, 11.516531>,  <30.004490, 38.935898, 11.508432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.222317, 38.835472, 11.516531>,  <30.585361, 38.668095, 11.530028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222317, 38.835472, 11.516531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193003, 0.487299, 0.851639,
		0.372809, 0.766447, -0.523041,
		-0.907614, 0.418448, -0.033743,
		29.950033, 38.961006, 11.506408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754253, 39.361767, 11.610358>,  <30.585361, 38.668095, 11.530028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754253, 39.361767, 11.610358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375038, 39.292274, 11.716972>,  <30.147509, 39.250580, 11.780941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375038, 39.292274, 11.716972>,  <30.754253, 39.361767, 11.610358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375038, 39.292274, 11.716972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138884, 0.527734, 0.837979,
		-0.286244, 0.831453, -0.476183,
		-0.948038, -0.173732, 0.266536,
		30.090628, 39.240154, 11.796933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608932, 39.899399, 12.089372>,  <30.754253, 39.361767, 11.610358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608932, 39.899399, 12.089372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293381, 39.666756, 12.168774>,  <30.104050, 39.527168, 12.216414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293381, 39.666756, 12.168774>,  <30.608932, 39.899399, 12.089372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293381, 39.666756, 12.168774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016163, 0.303260, 0.952771,
		-0.614338, 0.754828, -0.229835,
		-0.788878, -0.581608, 0.198504,
		30.056717, 39.492271, 12.228325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325214, 40.199688, 12.734149>,  <30.608932, 39.899399, 12.089372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325214, 40.199688, 12.734149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158134, 39.837536, 12.703636>,  <30.057886, 39.620247, 12.685328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158134, 39.837536, 12.703636>,  <30.325214, 40.199688, 12.734149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158134, 39.837536, 12.703636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053891, -0.108497, 0.992635,
		-0.906985, 0.410513, 0.094111,
		-0.417700, -0.905377, -0.076283,
		30.032824, 39.565922, 12.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813097, 40.255688, 13.144668>,  <30.325214, 40.199688, 12.734149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813097, 40.255688, 13.144668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907785, 39.867752, 13.121436>,  <29.964598, 39.634991, 13.107497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907785, 39.867752, 13.121436>,  <29.813097, 40.255688, 13.144668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907785, 39.867752, 13.121436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004819, -0.060949, 0.998129,
		-0.971566, -0.235997, -0.019102,
		0.236719, -0.969840, -0.058079,
		29.978802, 39.576801, 13.104012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347931, 39.912529, 13.530095>,  <29.813097, 40.255688, 13.144668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347931, 39.912529, 13.530095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.640430, 39.640003, 13.516939>,  <29.815929, 39.476486, 13.509046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.640430, 39.640003, 13.516939>,  <29.347931, 39.912529, 13.530095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640430, 39.640003, 13.516939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143837, -0.201152, 0.968942,
		-0.666774, -0.703807, -0.245091,
		0.731248, -0.681318, -0.032889,
		29.859804, 39.435608, 13.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124472, 39.490150, 13.960680>,  <29.347931, 39.912529, 13.530095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124472, 39.490150, 13.960680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.513742, 39.400356, 13.940561>,  <29.747305, 39.346478, 13.928491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.513742, 39.400356, 13.940561>,  <29.124472, 39.490150, 13.960680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513742, 39.400356, 13.940561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002066, -0.210090, 0.977680,
		-0.230051, -0.951559, -0.203991,
		0.973176, -0.224495, -0.050297,
		29.805696, 39.333008, 13.925472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268343, 38.875633, 14.351721>,  <29.124472, 39.490150, 13.960680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268343, 38.875633, 14.351721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631563, 39.038651, 14.313036>,  <29.849495, 39.136459, 14.289824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631563, 39.038651, 14.313036>,  <29.268343, 38.875633, 14.351721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631563, 39.038651, 14.313036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206673, -0.235107, 0.949742,
		0.364323, -0.882402, -0.297717,
		0.908050, 0.407544, -0.096713,
		29.903978, 39.160915, 14.284022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703011, 38.387749, 14.627993>,  <29.268343, 38.875633, 14.351721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703011, 38.387749, 14.627993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.910698, 38.729382, 14.640347>,  <30.035311, 38.934361, 14.647758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.910698, 38.729382, 14.640347>,  <29.703011, 38.387749, 14.627993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910698, 38.729382, 14.640347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146552, -0.124579, 0.981327,
		0.841982, -0.504997, -0.189851,
		0.519219, 0.854083, 0.030885,
		30.066463, 38.985607, 14.649612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233305, 38.191113, 15.106837>,  <29.703011, 38.387749, 14.627993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233305, 38.191113, 15.106837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.220186, 38.590561, 15.090415>,  <30.212315, 38.830231, 15.080562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.220186, 38.590561, 15.090415>,  <30.233305, 38.191113, 15.106837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220186, 38.590561, 15.090415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211556, 0.047083, 0.976231,
		0.976815, 0.023330, -0.212808,
		-0.032795, 0.998618, -0.041056,
		30.210348, 38.890148, 15.078098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890837, 38.412201, 15.394546>,  <30.233305, 38.191113, 15.106837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890837, 38.412201, 15.394546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626665, 38.711269, 15.422319>,  <30.468163, 38.890709, 15.438984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626665, 38.711269, 15.422319>,  <30.890837, 38.412201, 15.394546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626665, 38.711269, 15.422319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033162, -0.063339, 0.997441,
		0.750155, 0.661043, 0.017037,
		-0.660430, 0.747670, 0.069436,
		30.428535, 38.935570, 15.443151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489407, 38.781239, 14.997958>,  <30.890837, 38.412201, 15.394546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489407, 38.781239, 14.997958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800184, 38.533577, 14.952337>,  <31.986650, 38.384979, 14.924965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800184, 38.533577, 14.952337>,  <31.489407, 38.781239, 14.997958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800184, 38.533577, 14.952337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291193, -0.192794, -0.937037,
		0.558180, 0.761236, -0.330083,
		0.776944, -0.619153, -0.114053,
		32.033268, 38.347832, 14.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578936, 38.903488, 14.370485>,  <31.489407, 38.781239, 14.997958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578936, 38.903488, 14.370485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774601, 38.559170, 14.426705>,  <31.892000, 38.352581, 14.460438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774601, 38.559170, 14.426705>,  <31.578936, 38.903488, 14.370485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774601, 38.559170, 14.426705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274405, -0.304850, -0.912013,
		0.827901, 0.407557, -0.385327,
		0.489164, -0.860792, 0.140550,
		31.921350, 38.300934, 14.468870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902664, 38.808399, 13.776120>,  <31.578936, 38.903488, 14.370485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902664, 38.808399, 13.776120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893761, 38.447266, 13.947885>,  <31.888418, 38.230587, 14.050943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893761, 38.447266, 13.947885>,  <31.902664, 38.808399, 13.776120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893761, 38.447266, 13.947885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329336, -0.398922, -0.855803,
		0.943950, -0.160471, -0.288455,
		-0.022261, -0.902834, 0.429412,
		31.887083, 38.176414, 14.076708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298843, 38.312588, 13.342829>,  <31.902664, 38.808399, 13.776120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298843, 38.312588, 13.342829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059589, 38.073311, 13.556145>,  <31.916037, 37.929745, 13.684134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059589, 38.073311, 13.556145>,  <32.298843, 38.312588, 13.342829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059589, 38.073311, 13.556145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038280, -0.686020, -0.726575,
		0.800478, -0.414178, 0.433234,
		-0.598138, -0.598191, 0.533289,
		31.880148, 37.893852, 13.716131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651505, 37.753975, 13.149714>,  <32.298843, 38.312588, 13.342829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651505, 37.753975, 13.149714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275192, 37.670677, 13.256722>,  <32.049404, 37.620701, 13.320928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275192, 37.670677, 13.256722>,  <32.651505, 37.753975, 13.149714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275192, 37.670677, 13.256722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104952, -0.571447, -0.813900,
		0.322360, -0.793779, 0.515751,
		-0.940781, -0.208240, 0.267521,
		31.992958, 37.608204, 13.336979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656219, 37.005524, 13.089569>,  <32.651505, 37.753975, 13.149714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656219, 37.005524, 13.089569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267048, 37.094471, 13.114762>,  <32.033546, 37.147839, 13.129878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267048, 37.094471, 13.114762>,  <32.656219, 37.005524, 13.089569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267048, 37.094471, 13.114762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150145, -0.400967, -0.903704,
		-0.175697, -0.888695, 0.423499,
		-0.972927, 0.222364, 0.062984,
		31.975170, 37.161179, 13.133657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288731, 36.497250, 12.817544>,  <32.656219, 37.005524, 13.089569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288731, 36.497250, 12.817544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022980, 36.791286, 12.763507>,  <31.863529, 36.967709, 12.731085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022980, 36.791286, 12.763507>,  <32.288731, 36.497250, 12.817544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022980, 36.791286, 12.763507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208572, -0.355917, -0.910945,
		-0.717708, -0.577033, 0.389781,
		-0.664375, 0.735089, -0.135092,
		31.823668, 37.011814, 12.722980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175014, 35.711277, 12.865096>,  <32.288731, 36.497250, 12.817544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175014, 35.711277, 12.865096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461193, 35.464344, 12.734224>,  <32.632900, 35.316185, 12.655702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461193, 35.464344, 12.734224>,  <32.175014, 35.711277, 12.865096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461193, 35.464344, 12.734224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517501, 0.153612, 0.841781,
		-0.469397, -0.771563, 0.429368,
		0.715444, -0.617328, -0.327179,
		32.675827, 35.279144, 12.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215946, 35.156918, 13.350410>,  <32.175014, 35.711277, 12.865096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215946, 35.156918, 13.350410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560497, 35.197105, 13.151237>,  <32.767227, 35.221218, 13.031732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560497, 35.197105, 13.151237>,  <32.215946, 35.156918, 13.350410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560497, 35.197105, 13.151237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486855, 0.116405, 0.865692,
		0.144937, -0.988107, 0.051354,
		0.861374, 0.100469, -0.497936,
		32.818909, 35.227245, 13.001856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644310, 34.633827, 13.504189>,  <32.215946, 35.156918, 13.350410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644310, 34.633827, 13.504189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874809, 34.942173, 13.395598>,  <33.013107, 35.127182, 13.330443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874809, 34.942173, 13.395598>,  <32.644310, 34.633827, 13.504189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874809, 34.942173, 13.395598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477351, -0.047834, 0.877410,
		0.663383, -0.635195, -0.395539,
		0.576247, 0.770869, -0.271478,
		33.047684, 35.173435, 13.314155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185402, 34.477921, 13.938357>,  <32.644310, 34.633827, 13.504189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185402, 34.477921, 13.938357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274139, 34.833706, 13.778538>,  <33.327381, 35.047176, 13.682646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274139, 34.833706, 13.778538>,  <33.185402, 34.477921, 13.938357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274139, 34.833706, 13.778538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530132, 0.233886, 0.815020,
		0.818379, -0.392625, -0.419645,
		0.221848, 0.889462, -0.399550,
		33.340694, 35.100544, 13.658672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848904, 34.581959, 14.011070>,  <33.185402, 34.477921, 13.938357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848904, 34.581959, 14.011070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730751, 34.961891, 13.969936>,  <33.659859, 35.189850, 13.945256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730751, 34.961891, 13.969936>,  <33.848904, 34.581959, 14.011070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730751, 34.961891, 13.969936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468542, 0.237828, 0.850827,
		0.832596, 0.203139, -0.515285,
		-0.295386, 0.949827, -0.102835,
		33.642136, 35.246838, 13.939086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430744, 35.040371, 14.183698>,  <33.848904, 34.581959, 14.011070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430744, 35.040371, 14.183698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119534, 35.290062, 14.212014>,  <33.932808, 35.439877, 14.229004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119534, 35.290062, 14.212014>,  <34.430744, 35.040371, 14.183698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119534, 35.290062, 14.212014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351913, 0.339704, 0.872215,
		0.520413, 0.703520, -0.483973,
		-0.778028, 0.624228, 0.070791,
		33.886124, 35.477329, 14.233252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663273, 35.681198, 14.206123>,  <34.430744, 35.040371, 14.183698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663273, 35.681198, 14.206123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311337, 35.729748, 14.389924>,  <34.100174, 35.758877, 14.500204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311337, 35.729748, 14.389924>,  <34.663273, 35.681198, 14.206123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311337, 35.729748, 14.389924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456106, 0.487371, 0.744606,
		-0.133570, 0.864718, -0.484171,
		-0.879845, 0.121376, 0.459501,
		34.047382, 35.766159, 14.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.116667, 34.454506, 11.308000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855320, 34.738564, 11.412923>,  <28.698513, 34.909000, 11.475877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855320, 34.738564, 11.412923>,  <29.116667, 34.454506, 11.308000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855320, 34.738564, 11.412923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317657, -0.057340, 0.946470,
		0.687174, 0.701714, -0.188120,
		-0.653365, 0.710147, 0.262307,
		28.659311, 34.951607, 11.491615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448519, 34.831615, 11.834083>,  <29.116667, 34.454506, 11.308000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448519, 34.831615, 11.834083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064701, 34.931782, 11.885574>,  <28.834412, 34.991882, 11.916470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064701, 34.931782, 11.885574>,  <29.448519, 34.831615, 11.834083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064701, 34.931782, 11.885574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101704, -0.118069, 0.987783,
		0.262556, 0.960912, 0.087824,
		-0.959542, 0.250416, 0.128728,
		28.776838, 35.006908, 11.924192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456299, 35.215641, 12.376038>,  <29.448519, 34.831615, 11.834083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456299, 35.215641, 12.376038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065454, 35.130562, 12.377449>,  <28.830948, 35.079514, 12.378296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065454, 35.130562, 12.377449>,  <29.456299, 35.215641, 12.376038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065454, 35.130562, 12.377449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012419, 0.073591, 0.997211,
		-0.212360, 0.974344, -0.074548,
		-0.977113, -0.212693, 0.003528,
		28.772320, 35.066753, 12.378508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227011, 35.579327, 12.921544>,  <29.456299, 35.215641, 12.376038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227011, 35.579327, 12.921544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960260, 35.284023, 12.881038>,  <28.800211, 35.106842, 12.856734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960260, 35.284023, 12.881038>,  <29.227011, 35.579327, 12.921544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960260, 35.284023, 12.881038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050314, -0.090977, 0.994581,
		-0.743468, 0.668357, 0.023526,
		-0.666876, -0.738256, -0.101266,
		28.760199, 35.062546, 12.850657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741768, 35.641617, 13.506910>,  <29.227011, 35.579327, 12.921544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741768, 35.641617, 13.506910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677317, 35.266861, 13.382799>,  <28.638645, 35.042007, 13.308332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677317, 35.266861, 13.382799>,  <28.741768, 35.641617, 13.506910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677317, 35.266861, 13.382799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275736, -0.259133, 0.925646,
		-0.947632, 0.234703, -0.216581,
		-0.161129, -0.936891, -0.310279,
		28.628979, 34.985794, 13.289716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066542, 35.438244, 13.727160>,  <28.741768, 35.641617, 13.506910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066542, 35.438244, 13.727160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269377, 35.099239, 13.664433>,  <28.391077, 34.895836, 13.626796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269377, 35.099239, 13.664433>,  <28.066542, 35.438244, 13.727160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269377, 35.099239, 13.664433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225840, -0.306242, 0.924777,
		-0.831782, -0.433525, -0.346692,
		0.507086, -0.847509, -0.156819,
		28.421503, 34.844986, 13.617387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727074, 34.981079, 14.084840>,  <28.066542, 35.438244, 13.727160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727074, 34.981079, 14.084840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096136, 34.829697, 14.055243>,  <28.317574, 34.738865, 14.037484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096136, 34.829697, 14.055243>,  <27.727074, 34.981079, 14.084840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096136, 34.829697, 14.055243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067188, -0.346711, 0.935562,
		-0.379724, -0.858232, -0.345324,
		0.922657, -0.378457, -0.073992,
		28.372932, 34.716160, 14.033045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711733, 34.336086, 14.477577>,  <27.727074, 34.981079, 14.084840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711733, 34.336086, 14.477577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107819, 34.389847, 14.462563>,  <28.345470, 34.422104, 14.453554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107819, 34.389847, 14.462563>,  <27.711733, 34.336086, 14.477577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107819, 34.389847, 14.462563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084822, -0.366115, 0.926696,
		0.110811, -0.920812, -0.373933,
		0.990215, 0.134405, -0.037535,
		28.404882, 34.430168, 14.451302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880407, 33.691887, 14.763115>,  <27.711733, 34.336086, 14.477577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880407, 33.691887, 14.763115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.189316, 33.946003, 14.762277>,  <28.374660, 34.098473, 14.761774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.189316, 33.946003, 14.762277>,  <27.880407, 33.691887, 14.763115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189316, 33.946003, 14.762277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341922, -0.412864, 0.844176,
		0.535430, -0.652650, -0.536062,
		0.772272, 0.635289, -0.002096,
		28.420998, 34.136589, 14.761648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507856, 33.227531, 14.864213>,  <27.880407, 33.691887, 14.763115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507856, 33.227531, 14.864213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586981, 33.600826, 14.984176>,  <28.634455, 33.824802, 15.056153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586981, 33.600826, 14.984176>,  <28.507856, 33.227531, 14.864213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586981, 33.600826, 14.984176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435232, -0.357758, 0.826185,
		0.878318, -0.032899, -0.476943,
		0.197811, 0.933234, 0.299907,
		28.646324, 33.880798, 15.074148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186430, 33.257263, 15.105574>,  <28.507856, 33.227531, 14.864213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186430, 33.257263, 15.105574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007109, 33.564926, 15.287751>,  <28.899517, 33.749523, 15.397058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007109, 33.564926, 15.287751>,  <29.186430, 33.257263, 15.105574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007109, 33.564926, 15.287751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414308, -0.272688, 0.868326,
		0.792070, 0.577965, -0.196420,
		-0.448301, 0.769154, 0.455443,
		28.872618, 33.795673, 15.424384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705111, 33.632439, 15.474102>,  <29.186430, 33.257263, 15.105574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705111, 33.632439, 15.474102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.351713, 33.724499, 15.637305>,  <29.139675, 33.779736, 15.735228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.351713, 33.724499, 15.637305>,  <29.705111, 33.632439, 15.474102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351713, 33.724499, 15.637305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381661, -0.151368, 0.911824,
		0.271615, 0.961311, 0.045893,
		-0.883493, 0.230150, 0.408009,
		29.086666, 33.793545, 15.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301825, 34.102913, 15.220984>,  <29.705111, 33.632439, 15.474102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301825, 34.102913, 15.220984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672987, 33.960533, 15.176629>,  <30.895683, 33.875107, 15.150016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672987, 33.960533, 15.176629>,  <30.301825, 34.102913, 15.220984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672987, 33.960533, 15.176629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118770, -0.000291, -0.992922,
		0.353394, 0.934507, -0.042546,
		0.927904, -0.355945, -0.110889,
		30.951359, 33.853748, 15.143362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640905, 34.584721, 14.648901>,  <30.301825, 34.102913, 15.220984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640905, 34.584721, 14.648901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836233, 34.235985, 14.664084>,  <30.953430, 34.026745, 14.673195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836233, 34.235985, 14.664084>,  <30.640905, 34.584721, 14.648901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836233, 34.235985, 14.664084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013790, -0.035783, -0.999264,
		0.872557, 0.488482, -0.005451,
		0.488318, -0.871840, 0.037959,
		30.982729, 33.974434, 14.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055002, 34.616024, 14.150965>,  <30.640905, 34.584721, 14.648901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055002, 34.616024, 14.150965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102749, 34.220104, 14.182081>,  <31.131397, 33.982552, 14.200751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102749, 34.220104, 14.182081>,  <31.055002, 34.616024, 14.150965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102749, 34.220104, 14.182081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101968, -0.065714, -0.992615,
		0.987600, 0.126418, 0.093084,
		0.119368, -0.989798, 0.077790,
		31.138559, 33.923164, 14.205419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581991, 34.436626, 13.611784>,  <31.055002, 34.616024, 14.150965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581991, 34.436626, 13.611784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407284, 34.089424, 13.706277>,  <31.302460, 33.881104, 13.762973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407284, 34.089424, 13.706277>,  <31.581991, 34.436626, 13.611784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407284, 34.089424, 13.706277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286152, -0.383022, -0.878300,
		0.852849, -0.316015, 0.415673,
		-0.436768, -0.868003, 0.236231,
		31.276253, 33.829025, 13.777146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989620, 33.877094, 13.177762>,  <31.581991, 34.436626, 13.611784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989620, 33.877094, 13.177762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.625820, 33.736610, 13.266718>,  <31.407539, 33.652321, 13.320091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.625820, 33.736610, 13.266718>,  <31.989620, 33.877094, 13.177762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625820, 33.736610, 13.266718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007390, -0.548550, -0.836085,
		0.415635, -0.758777, 0.501503,
		-0.909502, -0.351212, 0.222389,
		31.352970, 33.631248, 13.333434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028725, 33.186203, 13.028128>,  <31.989620, 33.877094, 13.177762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028725, 33.186203, 13.028128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634674, 33.252842, 13.044919>,  <31.398243, 33.292828, 13.054994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634674, 33.252842, 13.044919>,  <32.028725, 33.186203, 13.028128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634674, 33.252842, 13.044919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118043, -0.478809, -0.869947,
		-0.124833, -0.861967, 0.491355,
		-0.985130, 0.166600, 0.041978,
		31.339134, 33.302822, 13.057512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898354, 32.576260, 12.783329>,  <32.028725, 33.186203, 13.028128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898354, 32.576260, 12.783329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.584812, 32.819351, 12.732354>,  <31.396687, 32.965206, 12.701769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.584812, 32.819351, 12.732354>,  <31.898354, 32.576260, 12.783329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584812, 32.819351, 12.732354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186443, -0.426111, -0.885251,
		-0.592295, -0.670147, 0.447315,
		-0.783853, 0.607728, -0.127439,
		31.349655, 33.001671, 12.694122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447569, 32.186783, 12.550843>,  <31.898354, 32.576260, 12.783329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447569, 32.186783, 12.550843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335878, 32.549873, 12.425587>,  <31.268864, 32.767727, 12.350432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335878, 32.549873, 12.425587>,  <31.447569, 32.186783, 12.550843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335878, 32.549873, 12.425587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158931, -0.365304, -0.917221,
		-0.946981, -0.206346, 0.246269,
		-0.279228, 0.907730, -0.313141,
		31.252110, 32.822193, 12.331644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948149, 31.985325, 12.170177>,  <31.447569, 32.186783, 12.550843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948149, 31.985325, 12.170177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026094, 32.361416, 12.058461>,  <31.072861, 32.587070, 11.991432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026094, 32.361416, 12.058461>,  <30.948149, 31.985325, 12.170177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026094, 32.361416, 12.058461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259360, -0.225216, -0.939154,
		-0.945918, 0.255442, 0.199971,
		0.194862, 0.940227, -0.279287,
		31.084553, 32.643482, 11.974675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362799, 32.162949, 11.802278>,  <30.948149, 31.985325, 12.170177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362799, 32.162949, 11.802278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.650089, 32.415451, 11.685202>,  <30.822464, 32.566952, 11.614956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.650089, 32.415451, 11.685202>,  <30.362799, 32.162949, 11.802278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650089, 32.415451, 11.685202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208415, -0.206163, -0.956065,
		-0.663863, 0.747672, -0.016508,
		0.718227, 0.631255, -0.292690,
		30.865557, 32.604828, 11.597395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097395, 32.604576, 11.269819>,  <30.362799, 32.162949, 11.802278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097395, 32.604576, 11.269819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492556, 32.583935, 11.211319>,  <30.729652, 32.571548, 11.176219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492556, 32.583935, 11.211319>,  <30.097395, 32.604576, 11.269819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492556, 32.583935, 11.211319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154032, -0.216589, -0.964035,
		0.018070, 0.974898, -0.221917,
		0.987901, -0.051602, -0.146252,
		30.788925, 32.568455, 11.167443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211653, 33.054768, 10.661848>,  <30.097395, 32.604576, 11.269819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211653, 33.054768, 10.661848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576878, 32.894215, 10.690738>,  <30.796013, 32.797882, 10.708072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576878, 32.894215, 10.690738>,  <30.211653, 33.054768, 10.661848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576878, 32.894215, 10.690738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160966, 0.191968, -0.968111,
		0.374714, 0.895569, 0.239886,
		0.913060, -0.401378, 0.072224,
		30.850796, 32.773800, 10.712405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536133, 33.488281, 10.302919>,  <30.211653, 33.054768, 10.661848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536133, 33.488281, 10.302919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773256, 33.166336, 10.314030>,  <30.915529, 32.973167, 10.320696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773256, 33.166336, 10.314030>,  <30.536133, 33.488281, 10.302919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773256, 33.166336, 10.314030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088379, 0.030734, -0.995613,
		0.800481, 0.592661, 0.089353,
		0.592807, -0.804866, 0.027777,
		30.951097, 32.924877, 10.322363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222630, 33.672554, 9.811242>,  <30.536133, 33.488281, 10.302919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222630, 33.672554, 9.811242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156324, 33.279663, 9.846444>,  <31.116541, 33.043926, 9.867565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156324, 33.279663, 9.846444>,  <31.222630, 33.672554, 9.811242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156324, 33.279663, 9.846444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108683, -0.106891, -0.988313,
		0.980158, -0.154262, 0.124471,
		-0.165764, -0.982231, 0.088005,
		31.106596, 32.984993, 9.872846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904478, 33.658730, 10.150711>,  <31.222630, 33.672554, 9.811242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904478, 33.658730, 10.150711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002316, 34.033222, 10.049805>,  <32.061016, 34.257919, 9.989261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002316, 34.033222, 10.049805>,  <31.904478, 33.658730, 10.150711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002316, 34.033222, 10.049805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380998, 0.146444, 0.912905,
		0.891636, -0.319402, -0.320884,
		0.244592, 0.936235, -0.252266,
		32.075695, 34.314095, 9.974125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608566, 33.738804, 10.317091>,  <31.904478, 33.658730, 10.150711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608566, 33.738804, 10.317091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.442314, 34.102539, 10.324573>,  <32.342564, 34.320782, 10.329062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.442314, 34.102539, 10.324573>,  <32.608566, 33.738804, 10.317091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442314, 34.102539, 10.324573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465092, 0.194816, 0.863560,
		0.781626, 0.367623, -0.503899,
		-0.415632, 0.909341, 0.018705,
		32.317623, 34.375340, 10.330184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134373, 34.191380, 10.524567>,  <32.608566, 33.738804, 10.317091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134373, 34.191380, 10.524567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799324, 34.392586, 10.609758>,  <32.598293, 34.513309, 10.660873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799324, 34.392586, 10.609758>,  <33.134373, 34.191380, 10.524567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799324, 34.392586, 10.609758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235719, -0.018877, 0.971638,
		0.492767, 0.864073, -0.102758,
		-0.837626, 0.503013, 0.212980,
		32.548035, 34.543491, 10.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378941, 34.780807, 10.861474>,  <33.134373, 34.191380, 10.524567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378941, 34.780807, 10.861474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.992901, 34.767483, 10.965370>,  <32.761276, 34.759487, 11.027708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.992901, 34.767483, 10.965370>,  <33.378941, 34.780807, 10.861474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992901, 34.767483, 10.965370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254109, 0.120507, 0.959639,
		-0.063269, 0.992153, -0.107837,
		-0.965104, -0.033313, 0.259740,
		32.703369, 34.757488, 11.043292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139030, 35.429440, 11.073328>,  <33.378941, 34.780807, 10.861474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139030, 35.429440, 11.073328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886875, 35.166107, 11.237871>,  <32.735580, 35.008110, 11.336597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886875, 35.166107, 11.237871>,  <33.139030, 35.429440, 11.073328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886875, 35.166107, 11.237871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280970, 0.300486, 0.911463,
		-0.723649, 0.690154, -0.004452,
		-0.630387, -0.658328, 0.411359,
		32.697758, 34.968609, 11.361279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897827, 35.799843, 11.603611>,  <33.139030, 35.429440, 11.073328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897827, 35.799843, 11.603611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.817867, 35.419312, 11.697432>,  <32.769894, 35.190994, 11.753724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.817867, 35.419312, 11.697432>,  <32.897827, 35.799843, 11.603611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817867, 35.419312, 11.697432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273949, 0.175572, 0.945583,
		-0.940741, 0.253275, 0.225519,
		-0.199897, -0.951329, 0.234552,
		32.757896, 35.133911, 11.767797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414886, 35.846813, 12.172963>,  <32.897827, 35.799843, 11.603611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414886, 35.846813, 12.172963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618546, 35.502640, 12.181185>,  <32.740742, 35.296135, 12.186117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618546, 35.502640, 12.181185>,  <32.414886, 35.846813, 12.172963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618546, 35.502640, 12.181185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220099, 0.153252, 0.963364,
		-0.832059, -0.485973, 0.267408,
		0.509150, -0.860432, 0.020553,
		32.771290, 35.244511, 12.187350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740471, 36.146103, 12.422121>,  <32.414886, 35.846813, 12.172963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740471, 36.146103, 12.422121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678989, 36.538700, 12.376442>,  <31.642101, 36.774258, 12.349034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678989, 36.538700, 12.376442>,  <31.740471, 36.146103, 12.422121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678989, 36.538700, 12.376442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291993, -0.155525, -0.943691,
		-0.943989, -0.111702, 0.310495,
		-0.153702, 0.981496, -0.114197,
		31.632879, 36.833149, 12.342183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068821, 36.356380, 12.041396>,  <31.740471, 36.146103, 12.422121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068821, 36.356380, 12.041396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274488, 36.698425, 12.014811>,  <31.397888, 36.903652, 11.998859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274488, 36.698425, 12.014811>,  <31.068821, 36.356380, 12.041396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274488, 36.698425, 12.014811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413868, 0.179487, -0.892467,
		-0.751228, 0.486386, 0.446190,
		0.514169, 0.855110, -0.066464,
		31.428740, 36.954960, 11.994871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686020, 36.772144, 11.518331>,  <31.068821, 36.356380, 12.041396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686020, 36.772144, 11.518331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.025864, 36.977646, 11.566030>,  <31.229771, 37.100948, 11.594649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.025864, 36.977646, 11.566030>,  <30.686020, 36.772144, 11.518331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025864, 36.977646, 11.566030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090434, 0.364657, -0.926740,
		-0.519602, 0.776583, 0.356277,
		0.849609, 0.513755, 0.119247,
		31.280746, 37.131771, 11.601804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525372, 37.423393, 11.376068>,  <30.686020, 36.772144, 11.518331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525372, 37.423393, 11.376068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910570, 37.351833, 11.295439>,  <31.141689, 37.308899, 11.247061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910570, 37.351833, 11.295439>,  <30.525372, 37.423393, 11.376068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910570, 37.351833, 11.295439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129772, 0.347716, -0.928576,
		0.236213, 0.920374, 0.311633,
		0.962997, -0.178901, -0.201573,
		31.199469, 37.298164, 11.234966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617493, 37.798950, 10.860229>,  <30.525372, 37.423393, 11.376068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617493, 37.798950, 10.860229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945684, 37.571903, 10.833036>,  <31.142599, 37.435677, 10.816721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945684, 37.571903, 10.833036>,  <30.617493, 37.798950, 10.860229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945684, 37.571903, 10.833036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027137, 0.157451, -0.987154,
		0.571030, 0.808096, 0.144589,
		0.820481, -0.567618, -0.067980,
		31.191828, 37.401619, 10.812642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137880, 38.206226, 10.615043>,  <30.617493, 37.798950, 10.860229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137880, 38.206226, 10.615043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234631, 37.838043, 10.492242>,  <31.292681, 37.617134, 10.418561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234631, 37.838043, 10.492242>,  <31.137880, 38.206226, 10.615043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234631, 37.838043, 10.492242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154595, 0.275799, -0.948702,
		0.957913, 0.276929, -0.075589,
		0.241876, -0.920459, -0.307003,
		31.307194, 37.561905, 10.400141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643677, 38.256775, 10.058861>,  <31.137880, 38.206226, 10.615043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643677, 38.256775, 10.058861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492609, 37.888748, 10.017220>,  <31.401968, 37.667931, 9.992236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492609, 37.888748, 10.017220>,  <31.643677, 38.256775, 10.058861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492609, 37.888748, 10.017220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154013, 0.173279, -0.972756,
		0.913043, -0.351346, -0.207145,
		-0.377668, -0.920071, -0.104100,
		31.379309, 37.612728, 9.985991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046696, 37.830914, 9.559723>,  <31.643677, 38.256775, 10.058861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046696, 37.830914, 9.559723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704683, 37.624077, 9.575386>,  <31.499475, 37.499973, 9.584785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704683, 37.624077, 9.575386>,  <32.046696, 37.830914, 9.559723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704683, 37.624077, 9.575386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063347, 0.029203, -0.997564,
		0.514689, -0.855431, -0.057726,
		-0.855034, -0.517092, 0.039158,
		31.448174, 37.468948, 9.587133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217937, 37.327129, 9.044734>,  <32.046696, 37.830914, 9.559723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217937, 37.327129, 9.044734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.839926, 37.438908, 9.112644>,  <31.613117, 37.505974, 9.153390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.839926, 37.438908, 9.112644>,  <32.217937, 37.327129, 9.044734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839926, 37.438908, 9.112644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154813, 0.074942, -0.985097,
		-0.288000, -0.957233, -0.027562,
		-0.945034, 0.279441, 0.169775,
		31.556416, 37.522739, 9.163577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.716785, 39.494442, 24.629515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322365, 39.437634, 24.664217>,  <33.085712, 39.403549, 24.685038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322365, 39.437634, 24.664217>,  <33.716785, 39.494442, 24.629515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322365, 39.437634, 24.664217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006109, -0.551842, -0.833926,
		0.166308, -0.821767, 0.545014,
		-0.986055, -0.142018, 0.086756,
		33.026546, 39.395027, 24.690243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617073, 38.734936, 24.679625>,  <33.716785, 39.494442, 24.629515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617073, 38.734936, 24.679625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300232, 38.931686, 24.535051>,  <33.110126, 39.049736, 24.448307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300232, 38.931686, 24.535051>,  <33.617073, 38.734936, 24.679625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300232, 38.931686, 24.535051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060432, -0.526026, -0.848319,
		-0.607393, -0.693795, 0.386940,
		-0.792100, 0.491879, -0.361432,
		33.062603, 39.079250, 24.426622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275303, 38.197258, 24.197771>,  <33.617073, 38.734936, 24.679625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275303, 38.197258, 24.197771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121029, 38.549038, 24.086191>,  <33.028465, 38.760105, 24.019243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121029, 38.549038, 24.086191>,  <33.275303, 38.197258, 24.197771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121029, 38.549038, 24.086191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032028, -0.289396, -0.956674,
		-0.922077, -0.377904, 0.083447,
		-0.385680, 0.879454, -0.278948,
		33.005325, 38.812874, 24.002506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611717, 38.011414, 23.822737>,  <33.275303, 38.197258, 24.197771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611717, 38.011414, 23.822737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723694, 38.380066, 23.715231>,  <32.790878, 38.601257, 23.650728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723694, 38.380066, 23.715231>,  <32.611717, 38.011414, 23.822737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723694, 38.380066, 23.715231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080221, -0.256521, -0.963204,
		-0.956660, 0.291200, 0.002124,
		0.279940, 0.921629, -0.268764,
		32.807674, 38.656555, 23.634602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170151, 38.195274, 23.181566>,  <32.611717, 38.011414, 23.822737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170151, 38.195274, 23.181566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477695, 38.450924, 23.189381>,  <32.662220, 38.604313, 23.194069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477695, 38.450924, 23.189381>,  <32.170151, 38.195274, 23.181566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477695, 38.450924, 23.189381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089670, -0.077517, -0.992950,
		-0.633102, 0.765189, -0.116909,
		0.768857, 0.639122, 0.019538,
		32.708351, 38.642662, 23.195242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010780, 38.643970, 22.565607>,  <32.170151, 38.195274, 23.181566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010780, 38.643970, 22.565607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401066, 38.663445, 22.651035>,  <32.635239, 38.675129, 22.702293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401066, 38.663445, 22.651035>,  <32.010780, 38.643970, 22.565607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401066, 38.663445, 22.651035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210838, 0.055754, -0.975930,
		-0.059418, 0.997257, 0.044136,
		0.975713, 0.048683, 0.213573,
		32.693779, 38.678051, 22.715107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276493, 39.113403, 22.077127>,  <32.010780, 38.643970, 22.565607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276493, 39.113403, 22.077127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606968, 38.924637, 22.200224>,  <32.805252, 38.811378, 22.274082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606968, 38.924637, 22.200224>,  <32.276493, 39.113403, 22.077127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606968, 38.924637, 22.200224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328973, -0.039340, -0.943519,
		0.457366, 0.880767, 0.122745,
		0.826192, -0.471913, 0.307742,
		32.854824, 38.783062, 22.292547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897800, 39.438515, 21.762779>,  <32.276493, 39.113403, 22.077127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897800, 39.438515, 21.762779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042278, 39.076607, 21.853046>,  <33.128967, 38.859463, 21.907207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042278, 39.076607, 21.853046>,  <32.897800, 39.438515, 21.762779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042278, 39.076607, 21.853046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391461, -0.072526, -0.917332,
		0.846342, 0.419678, 0.327987,
		0.361197, -0.904771, 0.225670,
		33.150639, 38.805176, 21.920748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542316, 39.411102, 21.372507>,  <32.897800, 39.438515, 21.762779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542316, 39.411102, 21.372507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524220, 39.027706, 21.485117>,  <33.513359, 38.797668, 21.552683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524220, 39.027706, 21.485117>,  <33.542316, 39.411102, 21.372507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524220, 39.027706, 21.485117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385299, -0.276751, -0.880314,
		0.921682, 0.068640, 0.381826,
		-0.045245, -0.958487, 0.281523,
		33.510647, 38.740158, 21.569574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262688, 39.026207, 21.258951>,  <33.542316, 39.411102, 21.372507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262688, 39.026207, 21.258951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952400, 38.774540, 21.239347>,  <33.766228, 38.623539, 21.227585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952400, 38.774540, 21.239347>,  <34.262688, 39.026207, 21.258951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952400, 38.774540, 21.239347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321648, -0.327364, -0.888468,
		0.542953, -0.704968, 0.456314,
		-0.775722, -0.629169, -0.049008,
		33.719685, 38.585789, 21.224646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523140, 38.383659, 21.022638>,  <34.262688, 39.026207, 21.258951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523140, 38.383659, 21.022638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132877, 38.375778, 20.935266>,  <33.898720, 38.371048, 20.882843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132877, 38.375778, 20.935266>,  <34.523140, 38.383659, 21.022638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132877, 38.375778, 20.935266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215413, -0.273205, -0.937526,
		-0.041202, -0.961754, 0.270799,
		-0.975653, -0.019706, -0.218431,
		33.840179, 38.369865, 20.869738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448685, 37.864857, 20.467474>,  <34.523140, 38.383659, 21.022638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448685, 37.864857, 20.467474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118347, 38.088375, 20.437225>,  <33.920143, 38.222488, 20.419077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118347, 38.088375, 20.437225>,  <34.448685, 37.864857, 20.467474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118347, 38.088375, 20.437225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091370, -0.264941, -0.959926,
		-0.556443, -0.785842, 0.269858,
		-0.825847, 0.558801, -0.075622,
		33.870594, 38.256016, 20.414539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606270, 37.027031, 20.447453>,  <34.448685, 37.864857, 20.467474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606270, 37.027031, 20.447453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943035, 36.856731, 20.314829>,  <35.145092, 36.754551, 20.235254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943035, 36.856731, 20.314829>,  <34.606270, 37.027031, 20.447453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943035, 36.856731, 20.314829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286250, -0.168496, 0.943223,
		-0.457438, -0.889017, -0.019989,
		0.841909, -0.425745, -0.331558,
		35.195606, 36.729008, 20.215361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735634, 36.269260, 20.715174>,  <34.606270, 37.027031, 20.447453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735634, 36.269260, 20.715174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084469, 36.436863, 20.614058>,  <35.293770, 36.537422, 20.553389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084469, 36.436863, 20.614058>,  <34.735634, 36.269260, 20.715174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084469, 36.436863, 20.614058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352688, -0.180069, 0.918252,
		0.339230, -0.889950, -0.304813,
		0.872086, 0.419003, -0.252790,
		35.346096, 36.562565, 20.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184772, 35.803883, 20.961800>,  <34.735634, 36.269260, 20.715174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184772, 35.803883, 20.961800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422253, 36.123207, 20.921370>,  <35.564739, 36.314800, 20.897112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422253, 36.123207, 20.921370>,  <35.184772, 35.803883, 20.961800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422253, 36.123207, 20.921370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386583, -0.172799, 0.905922,
		0.705742, -0.576922, -0.411204,
		0.593701, 0.798312, -0.101077,
		35.600365, 36.362701, 20.891047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819256, 35.552723, 20.992422>,  <35.184772, 35.803883, 20.961800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819256, 35.552723, 20.992422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840660, 35.943844, 21.073456>,  <35.853500, 36.178516, 21.122076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840660, 35.943844, 21.073456>,  <35.819256, 35.552723, 20.992422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840660, 35.943844, 21.073456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276123, -0.209451, 0.938023,
		0.959632, 0.005746, -0.281201,
		0.053507, 0.977802, 0.202582,
		35.856712, 36.237183, 21.134230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477322, 35.641407, 21.387142>,  <35.819256, 35.552723, 20.992422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477322, 35.641407, 21.387142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313988, 35.999516, 21.458424>,  <36.215988, 36.214378, 21.501192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313988, 35.999516, 21.458424>,  <36.477322, 35.641407, 21.387142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313988, 35.999516, 21.458424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329220, -0.037644, 0.943503,
		0.851397, 0.443933, -0.279369,
		-0.408335, 0.895269, 0.178201,
		36.191486, 36.268097, 21.511885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969536, 36.037022, 21.667933>,  <36.477322, 35.641407, 21.387142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969536, 36.037022, 21.667933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619453, 36.184921, 21.792706>,  <36.409405, 36.273663, 21.867569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619453, 36.184921, 21.792706>,  <36.969536, 36.037022, 21.667933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619453, 36.184921, 21.792706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320853, -0.038888, 0.946330,
		0.362037, 0.928317, -0.084600,
		-0.875205, 0.369750, 0.311932,
		36.356892, 36.295845, 21.886286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117199, 36.410706, 22.380865>,  <36.969536, 36.037022, 21.667933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117199, 36.410706, 22.380865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719944, 36.364300, 22.386726>,  <36.481590, 36.336456, 22.390244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719944, 36.364300, 22.386726>,  <37.117199, 36.410706, 22.380865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719944, 36.364300, 22.386726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038194, -0.203382, 0.978354,
		-0.110520, 0.972202, 0.206418,
		-0.993140, -0.116012, 0.014654,
		36.422001, 36.329494, 22.391123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846371, 36.865009, 22.972654>,  <37.117199, 36.410706, 22.380865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846371, 36.865009, 22.972654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575447, 36.589203, 22.870041>,  <36.412891, 36.423717, 22.808474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575447, 36.589203, 22.870041>,  <36.846371, 36.865009, 22.972654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575447, 36.589203, 22.870041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271277, -0.090048, 0.958280,
		-0.683853, 0.718647, -0.126060,
		-0.677314, -0.689520, -0.256531,
		36.372253, 36.382347, 22.793081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315247, 37.023930, 23.435789>,  <36.846371, 36.865009, 22.972654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315247, 37.023930, 23.435789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222122, 36.652229, 23.321043>,  <36.166248, 36.429211, 23.252195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222122, 36.652229, 23.321043>,  <36.315247, 37.023930, 23.435789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222122, 36.652229, 23.321043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584915, -0.101868, 0.804672,
		-0.776966, 0.355126, -0.519817,
		-0.232807, -0.929252, -0.286866,
		36.152279, 36.373455, 23.234983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550652, 36.877960, 23.535210>,  <36.315247, 37.023930, 23.435789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550652, 36.877960, 23.535210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699631, 36.506866, 23.525503>,  <35.789021, 36.284210, 23.519680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699631, 36.506866, 23.525503>,  <35.550652, 36.877960, 23.535210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699631, 36.506866, 23.525503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587013, -0.255755, 0.768118,
		-0.718815, -0.271844, -0.639848,
		0.372452, -0.927734, -0.024264,
		35.811367, 36.228546, 23.518225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962311, 36.452122, 23.751213>,  <35.550652, 36.877960, 23.535210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962311, 36.452122, 23.751213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300449, 36.242748, 23.793938>,  <35.503334, 36.117123, 23.819572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300449, 36.242748, 23.793938>,  <34.962311, 36.452122, 23.751213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300449, 36.242748, 23.793938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418157, -0.523895, 0.742077,
		-0.332469, -0.671976, -0.661750,
		0.845346, -0.523433, 0.106813,
		35.554054, 36.085720, 23.825981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676006, 35.931824, 24.107058>,  <34.962311, 36.452122, 23.751213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676006, 35.931824, 24.107058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071671, 35.895115, 24.152914>,  <35.309071, 35.873089, 24.180428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071671, 35.895115, 24.152914>,  <34.676006, 35.931824, 24.107058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071671, 35.895115, 24.152914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137797, -0.310245, 0.940617,
		-0.050754, -0.946217, -0.319528,
		0.989159, -0.091770, 0.114639,
		35.368420, 35.867584, 24.187305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794899, 35.293655, 24.406361>,  <34.676006, 35.931824, 24.107058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794899, 35.293655, 24.406361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118786, 35.509274, 24.499121>,  <35.313118, 35.638645, 24.554777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118786, 35.509274, 24.499121>,  <34.794899, 35.293655, 24.406361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118786, 35.509274, 24.499121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016239, -0.415617, 0.909395,
		0.586591, -0.732590, -0.345287,
		0.809721, 0.539050, 0.231900,
		35.361702, 35.670990, 24.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272392, 34.877701, 24.738060>,  <34.794899, 35.293655, 24.406361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272392, 34.877701, 24.738060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419678, 35.235226, 24.840448>,  <35.508049, 35.449741, 24.901882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419678, 35.235226, 24.840448>,  <35.272392, 34.877701, 24.738060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419678, 35.235226, 24.840448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086401, -0.307019, 0.947773,
		0.925717, -0.326870, -0.190275,
		0.368217, 0.893810, 0.255971,
		35.530144, 35.503368, 24.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000282, 34.126556, 24.857206>,  <35.272392, 34.877701, 24.738060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000282, 34.126556, 24.857206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062153, 33.743298, 24.760845>,  <35.099274, 33.513344, 24.703030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062153, 33.743298, 24.760845>,  <35.000282, 34.126556, 24.857206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062153, 33.743298, 24.760845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188260, 0.267953, -0.944860,
		0.969863, 0.100795, 0.221826,
		0.154676, -0.958145, -0.240902,
		35.108555, 33.455853, 24.688574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269604, 33.825703, 24.836191>,  <35.000282, 34.126556, 24.857206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269604, 33.825703, 24.836191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062271, 33.533970, 25.014812>,  <33.937874, 33.358929, 25.121986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062271, 33.533970, 25.014812>,  <34.269604, 33.825703, 24.836191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062271, 33.533970, 25.014812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329570, -0.311484, -0.891269,
		0.789127, -0.609140, -0.078916,
		-0.518327, -0.729333, 0.446555,
		33.906773, 33.315170, 25.148779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441723, 33.205051, 24.445639>,  <34.269604, 33.825703, 24.836191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441723, 33.205051, 24.445639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088753, 33.163273, 24.629126>,  <33.876972, 33.138206, 24.739218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088753, 33.163273, 24.629126>,  <34.441723, 33.205051, 24.445639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088753, 33.163273, 24.629126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397772, -0.355011, -0.846017,
		0.251214, -0.929009, 0.271724,
		-0.882422, -0.104447, 0.458718,
		33.824024, 33.131939, 24.766741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153015, 32.536205, 24.522083>,  <34.441723, 33.205051, 24.445639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153015, 32.536205, 24.522083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812252, 32.735500, 24.586605>,  <33.607796, 32.855076, 24.625319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812252, 32.735500, 24.586605>,  <34.153015, 32.536205, 24.522083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812252, 32.735500, 24.586605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435103, -0.501958, -0.747478,
		-0.291451, -0.706965, 0.644405,
		-0.851905, 0.498235, 0.161307,
		33.556683, 32.884972, 24.634996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593830, 32.006973, 24.433228>,  <34.153015, 32.536205, 24.522083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593830, 32.006973, 24.433228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383324, 32.344398, 24.390430>,  <33.257019, 32.546852, 24.364752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383324, 32.344398, 24.390430>,  <33.593830, 32.006973, 24.433228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383324, 32.344398, 24.390430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413539, -0.363848, -0.834625,
		-0.742989, -0.394986, 0.540327,
		-0.526262, 0.843564, -0.106993,
		33.225445, 32.597469, 24.358332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823574, 31.943237, 24.245752>,  <33.593830, 32.006973, 24.433228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823574, 31.943237, 24.245752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912342, 32.310444, 24.114300>,  <32.965603, 32.530769, 24.035429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912342, 32.310444, 24.114300>,  <32.823574, 31.943237, 24.245752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912342, 32.310444, 24.114300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577091, -0.148010, -0.803156,
		-0.785951, 0.367883, 0.496933,
		0.221916, 0.918017, -0.328631,
		32.978916, 32.585850, 24.015711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317986, 32.118626, 23.638424>,  <32.823574, 31.943237, 24.245752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317986, 32.118626, 23.638424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576088, 32.417439, 23.574430>,  <32.730949, 32.596725, 23.536034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576088, 32.417439, 23.574430>,  <32.317986, 32.118626, 23.638424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576088, 32.417439, 23.574430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387691, 0.139741, -0.911135,
		-0.658288, 0.649938, 0.379785,
		0.645254, 0.747029, -0.159986,
		32.769665, 32.641548, 23.526434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907614, 32.629192, 23.330936>,  <32.317986, 32.118626, 23.638424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907614, 32.629192, 23.330936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288242, 32.725025, 23.253876>,  <32.516621, 32.782524, 23.207640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288242, 32.725025, 23.253876>,  <31.907614, 32.629192, 23.330936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288242, 32.725025, 23.253876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246872, 0.222028, -0.943270,
		-0.183219, 0.945147, 0.270422,
		0.951570, 0.239585, -0.192651,
		32.573711, 32.796902, 23.196081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966084, 33.212440, 23.014688>,  <31.907614, 32.629192, 23.330936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966084, 33.212440, 23.014688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324345, 33.073811, 22.903198>,  <32.539303, 32.990631, 22.836304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324345, 33.073811, 22.903198>,  <31.966084, 33.212440, 23.014688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324345, 33.073811, 22.903198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114835, 0.425242, -0.897765,
		0.429669, 0.836095, 0.341071,
		0.895655, -0.346575, -0.278727,
		32.593040, 32.969837, 22.819580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345112, 33.817173, 22.732353>,  <31.966084, 33.212440, 23.014688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345112, 33.817173, 22.732353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518337, 33.485897, 22.590057>,  <32.622272, 33.287132, 22.504681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518337, 33.485897, 22.590057>,  <32.345112, 33.817173, 22.732353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518337, 33.485897, 22.590057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053097, 0.370543, -0.927296,
		0.899797, 0.420468, 0.116495,
		0.433065, -0.828193, -0.355740,
		32.648258, 33.237438, 22.483335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922340, 34.061810, 22.390186>,  <32.345112, 33.817173, 22.732353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922340, 34.061810, 22.390186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856701, 33.700100, 22.232523>,  <32.817318, 33.483074, 22.137926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856701, 33.700100, 22.232523>,  <32.922340, 34.061810, 22.390186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856701, 33.700100, 22.232523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075783, 0.386836, -0.919030,
		0.983528, -0.180684, 0.005049,
		-0.164100, -0.904274, -0.394157,
		32.807472, 33.428818, 22.114277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369785, 34.119148, 21.826721>,  <32.922340, 34.061810, 22.390186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369785, 34.119148, 21.826721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114185, 33.821846, 21.747467>,  <32.960827, 33.643467, 21.699915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114185, 33.821846, 21.747467>,  <33.369785, 34.119148, 21.826721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114185, 33.821846, 21.747467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064001, 0.308064, -0.949211,
		0.766543, -0.593861, -0.244420,
		-0.638996, -0.743253, -0.198136,
		32.922485, 33.598869, 21.688026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622063, 33.724026, 21.224535>,  <33.369785, 34.119148, 21.826721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622063, 33.724026, 21.224535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228397, 33.655983, 21.244505>,  <32.992199, 33.615158, 21.256487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228397, 33.655983, 21.244505>,  <33.622063, 33.724026, 21.224535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228397, 33.655983, 21.244505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090460, 0.239649, -0.966636,
		0.152464, -0.955841, -0.251241,
		-0.984160, -0.170105, 0.049928,
		32.933151, 33.604950, 21.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598278, 33.534279, 20.582664>,  <33.622063, 33.724026, 21.224535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598278, 33.534279, 20.582664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226135, 33.617096, 20.703701>,  <33.002850, 33.666786, 20.776323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226135, 33.617096, 20.703701>,  <33.598278, 33.534279, 20.582664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226135, 33.617096, 20.703701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239596, 0.281373, -0.929206,
		-0.277528, -0.936996, -0.212171,
		-0.930362, 0.207045, 0.302589,
		32.947025, 33.679211, 20.794477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148838, 33.246487, 20.077391>,  <33.598278, 33.534279, 20.582664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148838, 33.246487, 20.077391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920521, 33.513336, 20.268869>,  <32.783531, 33.673447, 20.383757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920521, 33.513336, 20.268869>,  <33.148838, 33.246487, 20.077391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920521, 33.513336, 20.268869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410112, 0.273438, -0.870081,
		-0.711342, -0.692952, 0.117518,
		-0.570790, 0.667121, 0.478696,
		32.749283, 33.713470, 20.412477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467106, 33.126640, 19.725197>,  <33.148838, 33.246487, 20.077391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467106, 33.126640, 19.725197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422104, 33.476116, 19.914516>,  <32.395103, 33.685802, 20.028109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422104, 33.476116, 19.914516>,  <32.467106, 33.126640, 19.725197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422104, 33.476116, 19.914516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574787, 0.331318, -0.748230,
		-0.810532, -0.356228, 0.464909,
		-0.112508, 0.873688, 0.473298,
		32.388351, 33.738224, 20.056505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615025, 33.280708, 19.719517>,  <32.467106, 33.126640, 19.725197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615025, 33.280708, 19.719517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836374, 33.610268, 19.768463>,  <31.969185, 33.808002, 19.797831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836374, 33.610268, 19.768463>,  <31.615025, 33.280708, 19.719517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836374, 33.610268, 19.768463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477641, 0.434243, -0.763736,
		-0.682376, 0.364184, 0.633825,
		0.553374, 0.823895, 0.122367,
		32.002388, 33.857437, 19.805174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182787, 33.917927, 19.596512>,  <31.615025, 33.280708, 19.719517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182787, 33.917927, 19.596512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566195, 34.022243, 19.550512>,  <31.796240, 34.084835, 19.522913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566195, 34.022243, 19.550512>,  <31.182787, 33.917927, 19.596512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566195, 34.022243, 19.550512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180070, 0.241337, -0.953589,
		-0.220938, 0.934742, 0.278287,
		0.958520, 0.260795, -0.114999,
		31.853750, 34.100483, 19.516012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112663, 34.440697, 19.103994>,  <31.182787, 33.917927, 19.596512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112663, 34.440697, 19.103994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508308, 34.383919, 19.088461>,  <31.745695, 34.349854, 19.079142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508308, 34.383919, 19.088461>,  <31.112663, 34.440697, 19.103994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508308, 34.383919, 19.088461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019574, 0.134646, -0.990700,
		0.145850, 0.980675, 0.130401,
		0.989113, -0.141941, -0.038834,
		31.805042, 34.341335, 19.076811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333443, 34.949375, 18.764378>,  <31.112663, 34.440697, 19.103994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333443, 34.949375, 18.764378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614967, 34.668438, 18.721729>,  <31.783882, 34.499874, 18.696140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614967, 34.668438, 18.721729>,  <31.333443, 34.949375, 18.764378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614967, 34.668438, 18.721729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082816, 0.230182, -0.969618,
		0.705544, 0.673597, 0.220169,
		0.703810, -0.702341, -0.106619,
		31.826111, 34.457737, 18.689743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904863, 35.180099, 18.332724>,  <31.333443, 34.949375, 18.764378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904863, 35.180099, 18.332724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919884, 34.781460, 18.303364>,  <31.928896, 34.542278, 18.285748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919884, 34.781460, 18.303364>,  <31.904863, 35.180099, 18.332724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919884, 34.781460, 18.303364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143631, 0.078073, -0.986547,
		0.988919, 0.026504, 0.146073,
		0.037552, -0.996595, -0.073401,
		31.931149, 34.482483, 18.281343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426521, 35.013351, 17.854136>,  <31.904863, 35.180099, 18.332724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426521, 35.013351, 17.854136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230618, 34.664608, 17.854319>,  <32.113075, 34.455360, 17.854429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230618, 34.664608, 17.854319>,  <32.426521, 35.013351, 17.854136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230618, 34.664608, 17.854319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030096, 0.016380, -0.999413,
		0.871338, -0.489486, -0.034261,
		-0.489760, -0.871857, 0.000459,
		32.083691, 34.403049, 17.854456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572605, 34.683010, 17.205572>,  <32.426521, 35.013351, 17.854136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572605, 34.683010, 17.205572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256741, 34.472973, 17.332514>,  <32.067223, 34.346951, 17.408678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256741, 34.472973, 17.332514>,  <32.572605, 34.683010, 17.205572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256741, 34.472973, 17.332514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171567, -0.307630, -0.935911,
		0.589072, -0.793496, 0.152833,
		-0.789658, -0.525098, 0.317354,
		32.019844, 34.315445, 17.427721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627251, 33.992168, 16.928581>,  <32.572605, 34.683010, 17.205572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627251, 33.992168, 16.928581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243313, 34.082008, 16.995808>,  <32.012951, 34.135914, 17.036142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243313, 34.082008, 16.995808>,  <32.627251, 33.992168, 16.928581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243313, 34.082008, 16.995808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211252, -0.184566, -0.959848,
		-0.184566, -0.956812, 0.224603,
		0.959848, -0.224603, -0.168064,
		31.955359, 34.149387, 17.046227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186459, 33.340965, 16.692440>,  <32.627251, 33.992168, 16.928581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186459, 33.340965, 16.692440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940092, 33.656090, 16.692955>,  <31.792273, 33.845165, 16.693264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940092, 33.656090, 16.692955>,  <32.186459, 33.340965, 16.692440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940092, 33.656090, 16.692955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287858, -0.223529, -0.931221,
		-0.733338, -0.573924, 0.364453,
		-0.615916, 0.787810, 0.001286,
		31.755318, 33.892433, 16.693340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643484, 33.081390, 16.336336>,  <32.186459, 33.340965, 16.692440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643484, 33.081390, 16.336336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570246, 33.474464, 16.347717>,  <31.526302, 33.710308, 16.354546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570246, 33.474464, 16.347717>,  <31.643484, 33.081390, 16.336336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570246, 33.474464, 16.347717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492681, -0.066674, -0.867652,
		-0.850730, -0.172884, 0.496357,
		-0.183098, 0.982683, 0.028455,
		31.515316, 33.769268, 16.356255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944773, 33.080715, 16.145359>,  <31.643484, 33.081390, 16.336336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944773, 33.080715, 16.145359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114193, 33.429890, 16.048546>,  <31.215845, 33.639397, 15.990458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114193, 33.429890, 16.048546>,  <30.944773, 33.080715, 16.145359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114193, 33.429890, 16.048546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360294, -0.082803, -0.929157,
		-0.831139, 0.480748, 0.279444,
		0.423552, 0.872940, -0.242031,
		31.241259, 33.691772, 15.975937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457737, 33.498070, 15.760512>,  <30.944773, 33.080715, 16.145359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457737, 33.498070, 15.760512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809547, 33.657837, 15.657056>,  <31.020634, 33.753696, 15.594982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809547, 33.657837, 15.657056>,  <30.457737, 33.498070, 15.760512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809547, 33.657837, 15.657056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181994, -0.219854, -0.958406,
		-0.439672, 0.890015, -0.120675,
		0.879527, 0.399422, -0.258641,
		31.073406, 33.777664, 15.579463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925470, 34.025902, 16.164330>,  <30.457737, 33.498070, 15.760512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925470, 34.025902, 16.164330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551451, 33.891029, 16.208136>,  <29.327040, 33.810104, 16.234419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551451, 33.891029, 16.208136>,  <29.925470, 34.025902, 16.164330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551451, 33.891029, 16.208136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166087, -0.143713, 0.975583,
		-0.313211, 0.930405, 0.190380,
		-0.935048, -0.337183, 0.109516,
		29.270937, 33.789875, 16.240990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556667, 34.548340, 16.609913>,  <29.925470, 34.025902, 16.164330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556667, 34.548340, 16.609913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.355007, 34.203274, 16.626139>,  <29.234011, 33.996235, 16.635874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.355007, 34.203274, 16.626139>,  <29.556667, 34.548340, 16.609913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355007, 34.203274, 16.626139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012675, 0.039576, 0.999136,
		-0.863522, 0.504231, -0.009018,
		-0.504153, -0.862661, 0.040566,
		29.203762, 33.944477, 16.638308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081728, 34.690613, 17.143755>,  <29.556667, 34.548340, 16.609913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081728, 34.690613, 17.143755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059654, 34.292412, 17.112963>,  <29.046410, 34.053490, 17.094488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059654, 34.292412, 17.112963>,  <29.081728, 34.690613, 17.143755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059654, 34.292412, 17.112963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035542, -0.075090, 0.996543,
		-0.997843, 0.057732, -0.031239,
		-0.055187, -0.995504, -0.076980,
		29.043098, 33.993759, 17.089869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420534, 34.429165, 17.652744>,  <29.081728, 34.690613, 17.143755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420534, 34.429165, 17.652744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659422, 34.120762, 17.564312>,  <28.802753, 33.935719, 17.511253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659422, 34.120762, 17.564312>,  <28.420534, 34.429165, 17.652744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659422, 34.120762, 17.564312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062328, -0.230189, 0.971148,
		-0.799654, -0.593765, -0.089417,
		0.597217, -0.771010, -0.221080,
		28.838587, 33.889458, 17.497988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070492, 33.929562, 17.988762>,  <28.420534, 34.429165, 17.652744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070492, 33.929562, 17.988762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.449306, 33.818264, 17.924633>,  <28.676596, 33.751484, 17.886156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.449306, 33.818264, 17.924633>,  <28.070492, 33.929562, 17.988762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449306, 33.818264, 17.924633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025554, -0.432366, 0.901336,
		-0.320113, -0.857693, -0.402355,
		0.947035, -0.278248, -0.160324,
		28.733418, 33.734791, 17.876535>
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
