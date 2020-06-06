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
	<23.965969, 34.743595, 35.116863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343424, 34.806709, 35.000481>,  <24.569897, 34.844578, 34.930649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343424, 34.806709, 35.000481>,  <23.965969, 34.743595, 35.116863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343424, 34.806709, 35.000481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313050, -0.140003, 0.939361,
		0.107483, -0.977498, -0.181507,
		0.943635, 0.157786, -0.290958,
		24.626514, 34.854046, 34.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426716, 34.148701, 35.206879>,  <23.965969, 34.743595, 35.116863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426716, 34.148701, 35.206879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582991, 34.513180, 35.259167>,  <24.676756, 34.731865, 35.290539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582991, 34.513180, 35.259167>,  <24.426716, 34.148701, 35.206879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582991, 34.513180, 35.259167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163943, -0.208614, 0.964159,
		0.905807, -0.355253, -0.230887,
		0.390687, 0.911195, 0.130723,
		24.700197, 34.786537, 35.298382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033424, 34.042233, 35.684372>,  <24.426716, 34.148701, 35.206879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033424, 34.042233, 35.684372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931341, 34.427940, 35.712784>,  <24.870090, 34.659367, 35.729832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931341, 34.427940, 35.712784>,  <25.033424, 34.042233, 35.684372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931341, 34.427940, 35.712784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060036, -0.057517, 0.996538,
		0.965020, 0.258589, -0.043213,
		-0.255209, 0.964274, 0.071030,
		24.854778, 34.717224, 35.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533817, 34.232975, 36.138760>,  <25.033424, 34.042233, 35.684372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533817, 34.232975, 36.138760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219027, 34.479126, 36.156574>,  <25.030153, 34.626816, 36.167263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219027, 34.479126, 36.156574>,  <25.533817, 34.232975, 36.138760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219027, 34.479126, 36.156574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032291, -0.113170, 0.993051,
		0.616139, 0.780069, 0.108933,
		-0.786976, 0.615375, 0.044539,
		24.982933, 34.663738, 36.169937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677156, 34.864231, 36.505581>,  <25.533817, 34.232975, 36.138760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677156, 34.864231, 36.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288898, 34.770641, 36.527863>,  <25.055943, 34.714489, 36.541233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288898, 34.770641, 36.527863>,  <25.677156, 34.864231, 36.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288898, 34.770641, 36.527863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100885, -0.185826, 0.977390,
		-0.218330, 0.954320, 0.203975,
		-0.970646, -0.233972, 0.055705,
		24.997705, 34.700451, 36.544575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367451, 35.345196, 36.971699>,  <25.677156, 34.864231, 36.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367451, 35.345196, 36.971699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187757, 34.987938, 36.962959>,  <25.079941, 34.773582, 36.957718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187757, 34.987938, 36.962959>,  <25.367451, 35.345196, 36.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187757, 34.987938, 36.962959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057029, 0.004264, 0.998363,
		-0.891592, 0.449744, -0.052851,
		-0.449233, -0.893147, -0.021847,
		25.052988, 34.719994, 36.956406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831942, 35.465992, 37.328453>,  <25.367451, 35.345196, 36.971699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831942, 35.465992, 37.328453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880898, 35.070557, 37.363583>,  <24.910271, 34.833294, 37.384663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880898, 35.070557, 37.363583>,  <24.831942, 35.465992, 37.328453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880898, 35.070557, 37.363583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038294, 0.083721, 0.995753,
		-0.991743, -0.125235, -0.027610,
		0.122392, -0.988588, 0.087826,
		24.917616, 34.773979, 37.389931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250843, 34.988789, 37.604080>,  <24.831942, 35.465992, 37.328453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250843, 34.988789, 37.604080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607796, 34.828716, 37.687511>,  <24.821968, 34.732674, 37.737572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607796, 34.828716, 37.687511>,  <24.250843, 34.988789, 37.604080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607796, 34.828716, 37.687511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207248, 0.047144, 0.977152,
		-0.400873, -0.915221, -0.040867,
		0.892384, -0.400183, 0.208577,
		24.875511, 34.708660, 37.750084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118858, 34.280106, 38.005108>,  <24.250843, 34.988789, 37.604080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118858, 34.280106, 38.005108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476393, 34.442673, 38.080875>,  <24.690914, 34.540215, 38.126335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476393, 34.442673, 38.080875>,  <24.118858, 34.280106, 38.005108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476393, 34.442673, 38.080875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226502, 0.044666, 0.972986,
		0.386978, -0.912596, 0.131978,
		0.893837, 0.406417, 0.189420,
		24.744545, 34.564598, 38.137703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.216486, 33.979118, 38.683666>,  <24.118858, 34.280106, 38.005108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.216486, 33.979118, 38.683666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496162, 34.263435, 38.652935>,  <24.663967, 34.434025, 38.634495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496162, 34.263435, 38.652935>,  <24.216486, 33.979118, 38.683666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496162, 34.263435, 38.652935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085758, 0.190075, 0.978017,
		0.709774, -0.677230, 0.193855,
		0.699189, 0.710796, -0.076832,
		24.705919, 34.476673, 38.629887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819294, 33.855083, 39.101124>,  <24.216486, 33.979118, 38.683666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819294, 33.855083, 39.101124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771433, 34.247398, 39.039486>,  <24.742716, 34.482788, 39.002502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771433, 34.247398, 39.039486>,  <24.819294, 33.855083, 39.101124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771433, 34.247398, 39.039486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088457, 0.144065, 0.985607,
		0.988868, 0.131561, 0.069519,
		-0.119652, 0.980784, -0.154099,
		24.735537, 34.541634, 38.993256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087818, 34.236961, 39.697437>,  <24.819294, 33.855083, 39.101124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087818, 34.236961, 39.697437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809515, 34.463860, 39.521183>,  <24.642534, 34.599998, 39.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809515, 34.463860, 39.521183>,  <25.087818, 34.236961, 39.697437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809515, 34.463860, 39.521183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368232, 0.245027, 0.896865,
		0.616708, 0.786255, 0.038398,
		-0.695756, 0.567243, -0.440634,
		24.600788, 34.634033, 39.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227409, 34.960987, 39.821468>,  <25.087818, 34.236961, 39.697437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227409, 34.960987, 39.821468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855806, 34.814980, 39.845825>,  <24.632845, 34.727375, 39.860439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855806, 34.814980, 39.845825>,  <25.227409, 34.960987, 39.821468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855806, 34.814980, 39.845825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059563, 0.309888, 0.948905,
		-0.365236, 0.877914, -0.309630,
		-0.929008, -0.365016, 0.060891,
		24.577105, 34.705475, 39.864094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737930, 35.545238, 40.052162>,  <25.227409, 34.960987, 39.821468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737930, 35.545238, 40.052162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627993, 35.170197, 40.137356>,  <24.562031, 34.945171, 40.188473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627993, 35.170197, 40.137356>,  <24.737930, 35.545238, 40.052162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627993, 35.170197, 40.137356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058926, 0.237521, 0.969594,
		-0.959681, 0.253938, -0.120531,
		-0.274845, -0.937603, 0.212980,
		24.545540, 34.888916, 40.201248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474638, 36.132305, 39.700317>,  <24.737930, 35.545238, 40.052162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474638, 36.132305, 39.700317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800093, 36.363441, 39.674702>,  <24.995365, 36.502121, 39.659332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800093, 36.363441, 39.674702>,  <24.474638, 36.132305, 39.700317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800093, 36.363441, 39.674702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449197, 0.694752, 0.561731,
		0.369078, -0.428279, 0.824838,
		0.813636, 0.577837, -0.064036,
		25.044184, 36.536793, 39.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.399696, 35.655750, 39.039219>,  <24.474638, 36.132305, 39.700317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.399696, 35.655750, 39.039219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600183, 35.355145, 39.210808>,  <24.720476, 35.174782, 39.313759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600183, 35.355145, 39.210808>,  <24.399696, 35.655750, 39.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600183, 35.355145, 39.210808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422752, -0.219882, -0.879166,
		0.755025, 0.622000, 0.207493,
		0.501217, -0.751510, 0.428968,
		24.750549, 35.129692, 39.339497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968056, 35.777092, 38.770191>,  <24.399696, 35.655750, 39.039219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968056, 35.777092, 38.770191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942724, 35.391296, 38.872757>,  <24.927526, 35.159817, 38.934296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942724, 35.391296, 38.872757>,  <24.968056, 35.777092, 38.770191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942724, 35.391296, 38.872757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447057, -0.257124, -0.856754,
		0.892261, 0.060375, 0.447465,
		-0.063327, -0.964491, 0.256412,
		24.923727, 35.101948, 38.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565931, 35.484913, 38.566097>,  <24.968056, 35.777092, 38.770191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565931, 35.484913, 38.566097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295244, 35.191711, 38.593681>,  <25.132832, 35.015789, 38.610233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295244, 35.191711, 38.593681>,  <25.565931, 35.484913, 38.566097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295244, 35.191711, 38.593681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295070, -0.355837, -0.886743,
		0.674526, -0.579728, 0.457089,
		-0.676719, -0.733004, 0.068961,
		25.092228, 34.971809, 38.614368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971697, 34.939632, 38.413406>,  <25.565931, 35.484913, 38.566097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971697, 34.939632, 38.413406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588636, 34.846909, 38.345089>,  <25.358801, 34.791275, 38.304096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588636, 34.846909, 38.345089>,  <25.971697, 34.939632, 38.413406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588636, 34.846909, 38.345089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232436, -0.272278, -0.933723,
		0.169940, -0.933879, 0.314628,
		-0.957650, -0.231808, -0.170796,
		25.301342, 34.777367, 38.293850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047522, 34.328365, 38.065372>,  <25.971697, 34.939632, 38.413406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047522, 34.328365, 38.065372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688126, 34.471272, 37.963337>,  <25.472488, 34.557014, 37.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688126, 34.471272, 37.963337>,  <26.047522, 34.328365, 38.065372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688126, 34.471272, 37.963337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209364, -0.162005, -0.964324,
		-0.385851, -0.919844, 0.070760,
		-0.898491, 0.357271, -0.255092,
		25.418579, 34.578453, 37.886810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703245, 33.824970, 37.653534>,  <26.047522, 34.328365, 38.065372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703245, 33.824970, 37.653534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585665, 34.198326, 37.571198>,  <25.515116, 34.422340, 37.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585665, 34.198326, 37.571198>,  <25.703245, 33.824970, 37.653534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585665, 34.198326, 37.571198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377754, -0.084372, -0.922054,
		-0.878006, -0.348794, -0.327792,
		-0.293951, 0.933394, -0.205838,
		25.497478, 34.478344, 37.509445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133646, 33.493542, 37.388313>,  <25.703245, 33.824970, 37.653534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133646, 33.493542, 37.388313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061810, 33.886971, 37.395634>,  <25.018707, 34.123028, 37.400024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061810, 33.886971, 37.395634>,  <25.133646, 33.493542, 37.388313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061810, 33.886971, 37.395634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402680, -0.056527, -0.913594,
		-0.897550, -0.171442, 0.406216,
		-0.179591, 0.983571, 0.018300,
		25.007933, 34.182041, 37.401123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408583, 33.562862, 37.178890>,  <25.133646, 33.493542, 37.388313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408583, 33.562862, 37.178890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631323, 33.887623, 37.108768>,  <24.764967, 34.082478, 37.066696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631323, 33.887623, 37.108768>,  <24.408583, 33.562862, 37.178890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631323, 33.887623, 37.108768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257773, -0.031710, -0.965685,
		-0.789601, 0.582931, 0.191629,
		0.556851, 0.811903, -0.175303,
		24.798378, 34.131195, 37.056179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.919943, 33.928219, 36.793728>,  <24.408583, 33.562862, 37.178890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.919943, 33.928219, 36.793728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298040, 34.036575, 36.720913>,  <24.524899, 34.101589, 36.677223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298040, 34.036575, 36.720913>,  <23.919943, 33.928219, 36.793728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298040, 34.036575, 36.720913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128440, -0.203986, -0.970512,
		-0.300033, 0.940749, -0.158024,
		0.945243, 0.270888, -0.182033,
		24.581614, 34.117844, 36.666302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996431, 34.538513, 36.272770>,  <23.919943, 33.928219, 36.793728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996431, 34.538513, 36.272770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304560, 34.283470, 36.269802>,  <24.489437, 34.130444, 36.268021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304560, 34.283470, 36.269802>,  <23.996431, 34.538513, 36.272770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304560, 34.283470, 36.269802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214491, -0.248140, -0.944680,
		0.600498, 0.729299, -0.327910,
		0.770322, -0.637612, -0.007421,
		24.535656, 34.092186, 36.267574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938568, 35.207195, 36.593578>,  <23.996431, 34.538513, 36.272770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938568, 35.207195, 36.593578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337234, 35.176311, 36.604145>,  <24.576433, 35.157780, 36.610485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337234, 35.176311, 36.604145>,  <23.938568, 35.207195, 36.593578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337234, 35.176311, 36.604145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034842, 0.109882, -0.993334,
		0.073794, 0.990941, 0.112206,
		0.996665, -0.077212, 0.026418,
		24.636234, 35.153149, 36.612072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.083836, 35.683559, 36.113708>,  <23.938568, 35.207195, 36.593578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.083836, 35.683559, 36.113708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367533, 35.406769, 36.167587>,  <24.537750, 35.240696, 36.199917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367533, 35.406769, 36.167587>,  <24.083836, 35.683559, 36.113708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367533, 35.406769, 36.167587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222819, 0.038764, -0.974089,
		0.668826, 0.720878, 0.181678,
		0.709241, -0.691978, 0.134699,
		24.580305, 35.199177, 36.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668665, 35.969296, 35.973583>,  <24.083836, 35.683559, 36.113708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668665, 35.969296, 35.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704832, 35.579487, 35.891472>,  <24.726532, 35.345604, 35.842205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704832, 35.579487, 35.891472>,  <24.668665, 35.969296, 35.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704832, 35.579487, 35.891472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370451, 0.224242, -0.901378,
		0.924441, 0.005455, 0.381287,
		0.090417, -0.974518, -0.205277,
		24.731956, 35.287132, 35.829887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310848, 35.888496, 35.681660>,  <24.668665, 35.969296, 35.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310848, 35.888496, 35.681660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118965, 35.555611, 35.570450>,  <25.003836, 35.355877, 35.503723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118965, 35.555611, 35.570450>,  <25.310848, 35.888496, 35.681660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118965, 35.555611, 35.570450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354003, 0.106358, -0.929177,
		0.802847, -0.544152, 0.243587,
		-0.479707, -0.832218, -0.278021,
		24.975054, 35.305946, 35.487045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863533, 36.060421, 35.121861>,  <25.310848, 35.888496, 35.681660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863533, 36.060421, 35.121861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076862, 36.188499, 34.808674>,  <26.204859, 36.265347, 34.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076862, 36.188499, 34.808674>,  <25.863533, 36.060421, 35.121861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076862, 36.188499, 34.808674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151914, -0.946799, -0.283715,
		-0.832160, 0.032367, -0.553590,
		0.533322, 0.320194, -0.782971,
		26.236858, 36.284557, 34.573784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669117, 35.768795, 34.499641>,  <25.863533, 36.060421, 35.121861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669117, 35.768795, 34.499641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062334, 35.841522, 34.490086>,  <26.298264, 35.885159, 34.484352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062334, 35.841522, 34.490086>,  <25.669117, 35.768795, 34.499641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062334, 35.841522, 34.490086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172963, -0.962581, -0.208619,
		-0.060926, 0.200949, -0.977705,
		0.983042, 0.181817, -0.023890,
		26.357246, 35.896069, 34.482918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963177, 35.635365, 33.827942>,  <25.669117, 35.768795, 34.499641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963177, 35.635365, 33.827942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260738, 35.597816, 34.092606>,  <26.439276, 35.575287, 34.251404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260738, 35.597816, 34.092606>,  <25.963177, 35.635365, 33.827942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260738, 35.597816, 34.092606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257165, -0.873636, -0.413069,
		0.616824, 0.477440, -0.625763,
		0.743905, -0.093867, 0.661660,
		26.483910, 35.569656, 34.291103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609350, 35.592102, 33.470852>,  <25.963177, 35.635365, 33.827942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609350, 35.592102, 33.470852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667667, 35.421082, 33.827713>,  <26.702658, 35.318470, 34.041832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667667, 35.421082, 33.827713>,  <26.609350, 35.592102, 33.470852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667667, 35.421082, 33.827713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497894, -0.747554, -0.439619,
		0.854895, 0.508292, 0.103889,
		0.145792, -0.427554, 0.892156,
		26.711405, 35.292816, 34.095360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216908, 35.441513, 33.484413>,  <26.609350, 35.592102, 33.470852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216908, 35.441513, 33.484413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079763, 35.193729, 33.766891>,  <26.997477, 35.045059, 33.936378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079763, 35.193729, 33.766891>,  <27.216908, 35.441513, 33.484413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079763, 35.193729, 33.766891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429566, -0.771951, -0.468577,
		0.835416, 0.142702, 0.530770,
		-0.342861, -0.619457, 0.706200,
		26.976906, 35.007893, 33.978752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669889, 34.922543, 33.567719>,  <27.216908, 35.441513, 33.484413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669889, 34.922543, 33.567719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363335, 34.707100, 33.707752>,  <27.179401, 34.577835, 33.791771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363335, 34.707100, 33.707752>,  <27.669889, 34.922543, 33.567719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363335, 34.707100, 33.707752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179913, -0.703134, -0.687919,
		0.616671, -0.464228, 0.635775,
		-0.766386, -0.538604, 0.350082,
		27.133419, 34.545517, 33.812778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904016, 34.305271, 33.789860>,  <27.669889, 34.922543, 33.567719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904016, 34.305271, 33.789860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520311, 34.266426, 33.683739>,  <27.290089, 34.243118, 33.620068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520311, 34.266426, 33.683739>,  <27.904016, 34.305271, 33.789860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520311, 34.266426, 33.683739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243931, -0.758435, -0.604379,
		-0.142519, -0.644473, 0.751228,
		-0.959264, -0.097112, -0.265298,
		27.232533, 34.237293, 33.604149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017767, 34.732651, 34.207287>,  <27.904016, 34.305271, 33.789860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017767, 34.732651, 34.207287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649523, 34.580048, 34.240585>,  <27.428576, 34.488487, 34.260563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649523, 34.580048, 34.240585>,  <28.017767, 34.732651, 34.207287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649523, 34.580048, 34.240585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345451, -0.895106, -0.281865,
		0.182047, -0.230731, 0.955836,
		-0.920610, -0.381507, 0.083245,
		27.373341, 34.465595, 34.265560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150883, 34.082710, 34.552017>,  <28.017767, 34.732651, 34.207287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150883, 34.082710, 34.552017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790096, 34.042717, 34.383991>,  <27.573624, 34.018719, 34.283176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790096, 34.042717, 34.383991>,  <28.150883, 34.082710, 34.552017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790096, 34.042717, 34.383991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235679, -0.929136, -0.284890,
		-0.361816, -0.355963, 0.861614,
		-0.901967, -0.099987, -0.420069,
		27.519506, 34.012722, 34.257969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694216, 33.546352, 34.910416>,  <28.150883, 34.082710, 34.552017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694216, 33.546352, 34.910416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573053, 33.589401, 34.531647>,  <27.500355, 33.615231, 34.304386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573053, 33.589401, 34.531647>,  <27.694216, 33.546352, 34.910416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573053, 33.589401, 34.531647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117417, -0.981819, -0.149146,
		-0.945759, -0.156363, 0.284764,
		-0.302908, 0.107620, -0.946924,
		27.482182, 33.621689, 34.247570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167616, 33.090492, 34.854130>,  <27.694216, 33.546352, 34.910416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167616, 33.090492, 34.854130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336433, 33.163628, 34.498951>,  <27.437725, 33.207508, 34.285843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336433, 33.163628, 34.498951>,  <27.167616, 33.090492, 34.854130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336433, 33.163628, 34.498951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162975, -0.978797, -0.124078,
		-0.891806, -0.092346, -0.442894,
		0.422045, 0.182834, -0.887947,
		27.463047, 33.218479, 34.232567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764721, 32.800667, 34.348114>,  <27.167616, 33.090492, 34.854130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764721, 32.800667, 34.348114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160997, 32.831123, 34.302979>,  <27.398764, 32.849396, 34.275898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160997, 32.831123, 34.302979>,  <26.764721, 32.800667, 34.348114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160997, 32.831123, 34.302979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056520, -0.984188, -0.167867,
		-0.123835, 0.159927, -0.979330,
		0.990692, 0.076140, -0.112838,
		27.458204, 32.853966, 34.269127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978968, 32.662075, 33.612488>,  <26.764721, 32.800667, 34.348114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978968, 32.662075, 33.612488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196020, 32.566666, 33.934643>,  <27.326252, 32.509418, 34.127937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196020, 32.566666, 33.934643>,  <26.978968, 32.662075, 33.612488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196020, 32.566666, 33.934643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108666, -0.970710, -0.214274,
		0.832911, 0.028753, -0.552660,
		0.542633, -0.238527, 0.805391,
		27.358810, 32.495110, 34.176258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848923, 33.089249, 32.913094>,  <26.978968, 32.662075, 33.612488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848923, 33.089249, 32.913094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044130, 32.747150, 32.982830>,  <27.161255, 32.541893, 33.024673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044130, 32.747150, 32.982830>,  <26.848923, 33.089249, 32.913094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044130, 32.747150, 32.982830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508924, 0.116539, -0.852886,
		0.709108, 0.504951, 0.492128,
		0.488018, -0.855244, 0.174343,
		27.190536, 32.490578, 33.035133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908751, 33.790131, 33.119583>,  <26.848923, 33.089249, 32.913094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908751, 33.790131, 33.119583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093847, 33.725891, 33.468315>,  <27.204905, 33.687347, 33.677555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093847, 33.725891, 33.468315>,  <26.908751, 33.790131, 33.119583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093847, 33.725891, 33.468315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507236, 0.758591, 0.408963,
		-0.727037, -0.631466, 0.269571,
		0.462741, -0.160595, 0.871826,
		27.232670, 33.677711, 33.729862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402744, 33.821720, 33.560978>,  <26.908751, 33.790131, 33.119583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402744, 33.821720, 33.560978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738621, 33.897953, 33.764385>,  <26.940147, 33.943695, 33.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738621, 33.897953, 33.764385>,  <26.402744, 33.821720, 33.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738621, 33.897953, 33.764385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417250, 0.825761, 0.379502,
		-0.347589, -0.530845, 0.772907,
		0.839693, 0.190585, 0.508520,
		26.990528, 33.955128, 33.916943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205853, 34.018356, 34.317600>,  <26.402744, 33.821720, 33.560978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205853, 34.018356, 34.317600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568943, 34.171070, 34.248001>,  <26.786797, 34.262699, 34.206242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568943, 34.171070, 34.248001>,  <26.205853, 34.018356, 34.317600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568943, 34.171070, 34.248001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304945, 0.885182, 0.351371,
		0.288169, -0.265888, 0.919925,
		0.907727, 0.381781, -0.174001,
		26.841261, 34.285603, 34.195801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369919, 34.379120, 34.985115>,  <26.205853, 34.018356, 34.317600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369919, 34.379120, 34.985115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564405, 34.540382, 34.675003>,  <26.681097, 34.637138, 34.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564405, 34.540382, 34.675003>,  <26.369919, 34.379120, 34.985115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564405, 34.540382, 34.675003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111345, 0.908563, 0.402636,
		0.866714, -0.109446, 0.486649,
		0.486219, 0.403156, -0.775279,
		26.710270, 34.661331, 34.442421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937630, 34.777191, 35.268959>,  <26.369919, 34.379120, 34.985115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937630, 34.777191, 35.268959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870996, 34.934856, 34.907433>,  <26.831017, 35.029457, 34.690517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870996, 34.934856, 34.907433>,  <26.937630, 34.777191, 35.268959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870996, 34.934856, 34.907433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112150, 0.903102, 0.414524,
		0.979629, 0.170416, -0.106236,
		-0.166583, 0.394165, -0.903816,
		26.821022, 35.053104, 34.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366859, 35.448132, 35.173931>,  <26.937630, 34.777191, 35.268959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366859, 35.448132, 35.173931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100994, 35.502144, 34.879997>,  <26.941475, 35.534554, 34.703636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100994, 35.502144, 34.879997>,  <27.366859, 35.448132, 35.173931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100994, 35.502144, 34.879997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090136, 0.961857, 0.258278,
		0.741685, 0.237903, -0.627141,
		-0.664664, 0.135034, -0.734838,
		26.901594, 35.542652, 34.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514299, 35.795956, 34.603962>,  <27.366859, 35.448132, 35.173931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514299, 35.795956, 34.603962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130648, 35.849010, 34.703945>,  <26.900457, 35.880844, 34.763935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130648, 35.849010, 34.703945>,  <27.514299, 35.795956, 34.603962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130648, 35.849010, 34.703945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205916, 0.933034, 0.295037,
		-0.194085, 0.334448, -0.922212,
		-0.959130, 0.132636, 0.249956,
		26.842909, 35.888802, 34.778931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305471, 36.450603, 34.412514>,  <27.514299, 35.795956, 34.603962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305471, 36.450603, 34.412514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080717, 36.332588, 34.721638>,  <26.945866, 36.261780, 34.907112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080717, 36.332588, 34.721638>,  <27.305471, 36.450603, 34.412514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080717, 36.332588, 34.721638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145714, 0.884322, 0.443556,
		-0.814280, 0.361837, -0.453896,
		-0.561885, -0.295040, 0.772811,
		26.912151, 36.244076, 34.953480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858347, 37.119781, 34.424583>,  <27.305471, 36.450603, 34.412514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858347, 37.119781, 34.424583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952175, 37.461327, 34.238724>,  <28.008472, 37.666252, 34.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952175, 37.461327, 34.238724>,  <27.858347, 37.119781, 34.424583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952175, 37.461327, 34.238724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536391, -0.512322, -0.670680,
		-0.810717, -0.091913, -0.578178,
		0.234569, 0.853861, -0.464649,
		28.022545, 37.717484, 34.099327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765680, 37.112293, 33.692738>,  <27.858347, 37.119781, 34.424583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765680, 37.112293, 33.692738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066984, 37.328842, 33.842144>,  <28.247766, 37.458771, 33.931789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066984, 37.328842, 33.842144>,  <27.765680, 37.112293, 33.692738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066984, 37.328842, 33.842144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628435, -0.424829, -0.651606,
		-0.194082, 0.725559, -0.660225,
		0.753261, 0.541373, 0.373515,
		28.292963, 37.491253, 33.954197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960012, 37.485981, 33.151134>,  <27.765680, 37.112293, 33.692738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960012, 37.485981, 33.151134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267393, 37.428467, 33.400551>,  <28.451820, 37.393959, 33.550201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267393, 37.428467, 33.400551>,  <27.960012, 37.485981, 33.151134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267393, 37.428467, 33.400551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439044, -0.590428, -0.677226,
		0.465537, 0.794178, -0.390585,
		0.768451, -0.143789, 0.623545,
		28.497929, 37.385330, 33.587616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749527, 37.786140, 32.930729>,  <27.960012, 37.485981, 33.151134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749527, 37.786140, 32.930729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779251, 37.456783, 33.155762>,  <28.797085, 37.259167, 33.290783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779251, 37.456783, 33.155762>,  <28.749527, 37.786140, 32.930729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779251, 37.456783, 33.155762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518422, -0.450023, -0.727130,
		0.851890, 0.345686, 0.393426,
		0.074308, -0.823396, 0.562581,
		28.801544, 37.209763, 33.324535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408262, 37.644459, 33.262482>,  <28.749527, 37.786140, 32.930729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408262, 37.644459, 33.262482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179777, 37.331619, 33.162853>,  <29.042686, 37.143917, 33.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179777, 37.331619, 33.162853>,  <29.408262, 37.644459, 33.262482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179777, 37.331619, 33.162853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618163, -0.210275, -0.757403,
		0.539991, -0.586605, 0.603576,
		-0.571214, -0.782099, -0.249071,
		29.008413, 37.096989, 33.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032864, 37.283638, 33.535206>,  <29.408262, 37.644459, 33.262482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032864, 37.283638, 33.535206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819752, 37.282005, 33.196709>,  <29.691885, 37.281025, 32.993610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819752, 37.282005, 33.196709>,  <30.032864, 37.283638, 33.535206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819752, 37.282005, 33.196709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339552, 0.914931, -0.218190,
		0.775147, -0.403591, -0.486068,
		-0.532777, -0.004084, -0.846246,
		29.659918, 37.280781, 32.942837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693138, 37.587246, 33.916389>,  <30.032864, 37.283638, 33.535206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693138, 37.587246, 33.916389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869507, 37.273518, 33.741837>,  <30.975328, 37.085281, 33.637104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869507, 37.273518, 33.741837>,  <30.693138, 37.587246, 33.916389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869507, 37.273518, 33.741837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326063, 0.313009, -0.892025,
		0.836224, 0.535603, -0.117724,
		0.440923, -0.784318, -0.436386,
		31.001783, 37.038223, 33.610920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275412, 37.205383, 34.254787>,  <30.693138, 37.587246, 33.916389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275412, 37.205383, 34.254787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546396, 37.229660, 34.548008>,  <31.708988, 37.244225, 34.723938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546396, 37.229660, 34.548008>,  <31.275412, 37.205383, 34.254787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546396, 37.229660, 34.548008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490977, 0.704766, -0.512099,
		-0.547708, 0.706839, 0.447654,
		0.677463, 0.060693, 0.733048,
		31.749636, 37.247868, 34.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236570, 37.889030, 34.416969>,  <31.275412, 37.205383, 34.254787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236570, 37.889030, 34.416969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599434, 37.752666, 34.515636>,  <31.817152, 37.670849, 34.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599434, 37.752666, 34.515636>,  <31.236570, 37.889030, 34.416969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599434, 37.752666, 34.515636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420599, 0.752051, -0.507460,
		-0.012509, 0.564095, 0.825615,
		0.907160, -0.340906, 0.246665,
		31.871582, 37.650394, 34.589638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498487, 38.469654, 34.790222>,  <31.236570, 37.889030, 34.416969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498487, 38.469654, 34.790222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775877, 38.258678, 34.593899>,  <31.942310, 38.132092, 34.476105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775877, 38.258678, 34.593899>,  <31.498487, 38.469654, 34.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775877, 38.258678, 34.593899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193695, 0.792632, -0.578115,
		0.693954, 0.305841, 0.651835,
		0.693476, -0.527443, -0.490811,
		31.983919, 38.100445, 34.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281033, 38.588436, 34.986565>,  <31.498487, 38.469654, 34.790222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281033, 38.588436, 34.986565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180458, 38.504833, 34.608551>,  <32.120113, 38.454670, 34.381741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180458, 38.504833, 34.608551>,  <32.281033, 38.588436, 34.986565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180458, 38.504833, 34.608551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186813, 0.947564, -0.259274,
		0.949674, -0.241736, -0.199205,
		-0.251436, -0.209011, -0.945037,
		32.105026, 38.442131, 34.325039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871441, 38.811573, 34.613304>,  <32.281033, 38.588436, 34.986565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871441, 38.811573, 34.613304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529224, 38.780621, 34.408539>,  <32.323895, 38.762047, 34.285679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529224, 38.780621, 34.408539>,  <32.871441, 38.811573, 34.613304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529224, 38.780621, 34.408539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044754, 0.974011, -0.222033,
		0.515789, -0.212869, -0.829848,
		-0.855545, -0.077384, -0.511912,
		32.272560, 38.757404, 34.254967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461300, 38.634251, 35.037189>,  <32.871441, 38.811573, 34.613304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461300, 38.634251, 35.037189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851501, 38.554825, 34.999313>,  <34.085621, 38.507168, 34.976585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851501, 38.554825, 34.999313>,  <33.461300, 38.634251, 35.037189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851501, 38.554825, 34.999313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134002, -0.877707, 0.460080,
		-0.174471, -0.436119, -0.882814,
		0.975502, -0.198569, -0.094693,
		34.144154, 38.495255, 34.970905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675236, 38.088608, 34.524433>,  <33.461300, 38.634251, 35.037189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675236, 38.088608, 34.524433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921909, 38.050083, 34.836952>,  <34.069912, 38.026970, 35.024464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921909, 38.050083, 34.836952>,  <33.675236, 38.088608, 34.524433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921909, 38.050083, 34.836952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226842, -0.972130, 0.059217,
		0.753819, -0.213749, -0.621344,
		0.616684, -0.096308, 0.781297,
		34.106915, 38.021191, 35.071342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311131, 37.870972, 33.923855>,  <33.675236, 38.088608, 34.524433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311131, 37.870972, 33.923855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081406, 38.172733, 33.796703>,  <32.943569, 38.353790, 33.720413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081406, 38.172733, 33.796703>,  <33.311131, 37.870972, 33.923855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081406, 38.172733, 33.796703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005415, -0.384789, -0.922989,
		-0.818618, -0.531805, 0.216904,
		-0.574313, 0.754401, -0.317875,
		32.909111, 38.399052, 33.701340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937840, 37.615238, 33.388580>,  <33.311131, 37.870972, 33.923855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937840, 37.615238, 33.388580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844711, 38.001060, 33.338886>,  <32.788834, 38.232552, 33.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844711, 38.001060, 33.338886>,  <32.937840, 37.615238, 33.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844711, 38.001060, 33.338886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092735, -0.149181, -0.984452,
		-0.968088, -0.217681, 0.124180,
		-0.232822, 0.964552, -0.124233,
		32.774864, 38.290424, 33.301617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247379, 37.584099, 33.091228>,  <32.937840, 37.615238, 33.388580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247379, 37.584099, 33.091228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470798, 37.903049, 32.999828>,  <32.604851, 38.094421, 32.944988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470798, 37.903049, 32.999828>,  <32.247379, 37.584099, 33.091228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470798, 37.903049, 32.999828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176698, -0.154777, -0.972020,
		-0.810433, 0.583296, 0.054445,
		0.558548, 0.797377, -0.228503,
		32.638363, 38.142262, 32.931278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847422, 38.046261, 32.622707>,  <32.247379, 37.584099, 33.091228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847422, 38.046261, 32.622707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242058, 38.072273, 32.562824>,  <32.478840, 38.087879, 32.526894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242058, 38.072273, 32.562824>,  <31.847422, 38.046261, 32.622707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242058, 38.072273, 32.562824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134403, -0.196728, -0.971202,
		-0.092607, 0.978299, -0.185349,
		0.986590, 0.065029, -0.149705,
		32.538036, 38.091782, 32.517914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921148, 38.387531, 32.017628>,  <31.847422, 38.046261, 32.622707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921148, 38.387531, 32.017628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271816, 38.200912, 32.064587>,  <32.482216, 38.088940, 32.092762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271816, 38.200912, 32.064587>,  <31.921148, 38.387531, 32.017628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271816, 38.200912, 32.064587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072190, -0.368828, -0.926690,
		0.475642, 0.803928, -0.357021,
		0.876672, -0.466546, 0.117395,
		32.534817, 38.060947, 32.099804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093884, 38.353470, 31.381939>,  <31.921148, 38.387531, 32.017628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093884, 38.353470, 31.381939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371861, 38.123734, 31.555000>,  <32.538647, 37.985893, 31.658836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371861, 38.123734, 31.555000>,  <32.093884, 38.353470, 31.381939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371861, 38.123734, 31.555000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092672, -0.525133, -0.845960,
		0.713068, 0.627989, -0.311712,
		0.694943, -0.574340, 0.432652,
		32.580345, 37.951431, 31.684795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746052, 38.289227, 30.959921>,  <32.093884, 38.353470, 31.381939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746052, 38.289227, 30.959921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721519, 37.960938, 31.187132>,  <32.706799, 37.763966, 31.323458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721519, 37.960938, 31.187132>,  <32.746052, 38.289227, 30.959921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721519, 37.960938, 31.187132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076008, -0.571285, -0.817225,
		0.995219, -0.006947, 0.097419,
		-0.061332, -0.820722, 0.568026,
		32.703121, 37.714722, 31.357540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130798, 37.880512, 30.640703>,  <32.746052, 38.289227, 30.959921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130798, 37.880512, 30.640703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946541, 37.625355, 30.887573>,  <32.835987, 37.472260, 31.035694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946541, 37.625355, 30.887573>,  <33.130798, 37.880512, 30.640703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946541, 37.625355, 30.887573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045784, -0.711492, -0.701201,
		0.886403, -0.294748, 0.356950,
		-0.460644, -0.637890, 0.617174,
		32.808346, 37.433987, 31.072725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567310, 37.428719, 30.718781>,  <33.130798, 37.880512, 30.640703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567310, 37.428719, 30.718781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225849, 37.247578, 30.821693>,  <33.020973, 37.138893, 30.883440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225849, 37.247578, 30.821693>,  <33.567310, 37.428719, 30.718781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225849, 37.247578, 30.821693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200041, -0.741161, -0.640831,
		0.480891, -0.495582, 0.723286,
		-0.853655, -0.452856, 0.257281,
		32.969753, 37.111721, 30.898878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739182, 36.830750, 30.709629>,  <33.567310, 37.428719, 30.718781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739182, 36.830750, 30.709629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343742, 36.770515, 30.708878>,  <33.106480, 36.734375, 30.708426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343742, 36.770515, 30.708878>,  <33.739182, 36.830750, 30.709629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343742, 36.770515, 30.708878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123404, -0.802848, -0.583273,
		0.086326, -0.576852, 0.812274,
		-0.988595, -0.150590, -0.001879,
		33.047165, 36.725338, 30.708313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644619, 36.139889, 30.933439>,  <33.739182, 36.830750, 30.709629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644619, 36.139889, 30.933439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342834, 36.266022, 30.703184>,  <33.161766, 36.341702, 30.565031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342834, 36.266022, 30.703184>,  <33.644619, 36.139889, 30.933439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342834, 36.266022, 30.703184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042550, -0.851690, -0.522316,
		-0.654967, -0.418559, 0.629147,
		-0.754458, 0.315329, -0.575639,
		33.116497, 36.360622, 30.530493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126049, 35.589611, 30.823032>,  <33.644619, 36.139889, 30.933439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126049, 35.589611, 30.823032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041145, 35.828465, 30.513613>,  <32.990204, 35.971775, 30.327961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041145, 35.828465, 30.513613>,  <33.126049, 35.589611, 30.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041145, 35.828465, 30.513613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010171, -0.790195, -0.612772,
		-0.977161, -0.137933, 0.161652,
		-0.212258, 0.597132, -0.773550,
		32.977467, 36.007603, 30.281548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656624, 35.183384, 30.491776>,  <33.126049, 35.589611, 30.823032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656624, 35.183384, 30.491776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766075, 35.460438, 30.224825>,  <32.831745, 35.626671, 30.064655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766075, 35.460438, 30.224825>,  <32.656624, 35.183384, 30.491776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766075, 35.460438, 30.224825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073605, -0.706901, -0.703472,
		-0.959015, 0.143368, -0.244410,
		0.273629, 0.692630, -0.667376,
		32.848164, 35.668228, 30.024612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258301, 35.031002, 29.893637>,  <32.656624, 35.183384, 30.491776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258301, 35.031002, 29.893637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578793, 35.239044, 29.775297>,  <32.771088, 35.363869, 29.704294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578793, 35.239044, 29.775297>,  <32.258301, 35.031002, 29.893637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578793, 35.239044, 29.775297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120629, -0.624683, -0.771505,
		-0.586075, 0.582463, -0.563253,
		0.801227, 0.520104, -0.295849,
		32.819160, 35.395077, 29.686543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227444, 34.930428, 29.125532>,  <32.258301, 35.031002, 29.893637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227444, 34.930428, 29.125532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590832, 35.077160, 29.205645>,  <32.808865, 35.165199, 29.253712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590832, 35.077160, 29.205645>,  <32.227444, 34.930428, 29.125532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590832, 35.077160, 29.205645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396240, -0.603561, -0.691887,
		-0.132922, 0.707921, -0.693671,
		0.908474, 0.366827, 0.200280,
		32.863373, 35.187206, 29.265728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634609, 35.206928, 28.471275>,  <32.227444, 34.930428, 29.125532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634609, 35.206928, 28.471275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902126, 35.103149, 28.749960>,  <33.062637, 35.040882, 28.917170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902126, 35.103149, 28.749960>,  <32.634609, 35.206928, 28.471275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902126, 35.103149, 28.749960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427682, -0.632276, -0.645999,
		0.608115, 0.730009, -0.311901,
		0.668793, -0.259447, 0.696709,
		33.102764, 35.025314, 28.958973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241982, 35.235821, 28.090076>,  <32.634609, 35.206928, 28.471275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241982, 35.235821, 28.090076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390488, 35.037178, 28.403902>,  <33.479591, 34.917992, 28.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390488, 35.037178, 28.403902>,  <33.241982, 35.235821, 28.090076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390488, 35.037178, 28.403902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551016, -0.562258, -0.616642,
		0.747359, 0.661243, 0.064896,
		0.371262, -0.496611, 0.784565,
		33.501865, 34.888195, 28.639271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967747, 35.379009, 28.141262>,  <33.241982, 35.235821, 28.090076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967747, 35.379009, 28.141262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874935, 35.018154, 28.286758>,  <33.819248, 34.801640, 28.374056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874935, 35.018154, 28.286758>,  <33.967747, 35.379009, 28.141262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874935, 35.018154, 28.286758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667682, -0.419650, -0.614894,
		0.707364, 0.100192, 0.699712,
		-0.232027, -0.902139, 0.363742,
		33.805328, 34.747513, 28.395882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646965, 34.949474, 28.091553>,  <33.967747, 35.379009, 28.141262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646965, 34.949474, 28.091553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357704, 34.676792, 28.135967>,  <34.184147, 34.513184, 28.162617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357704, 34.676792, 28.135967>,  <34.646965, 34.949474, 28.091553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357704, 34.676792, 28.135967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564717, -0.676126, -0.473232,
		0.397680, -0.279513, 0.873912,
		-0.723149, -0.681708, 0.111036,
		34.140759, 34.472279, 28.169277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059757, 34.288147, 28.095785>,  <34.646965, 34.949474, 28.091553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059757, 34.288147, 28.095785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684013, 34.158939, 28.049706>,  <34.458569, 34.081417, 28.022058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684013, 34.158939, 28.049706>,  <35.059757, 34.288147, 28.095785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684013, 34.158939, 28.049706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331399, -0.768566, -0.547248,
		0.088234, -0.552237, 0.829005,
		-0.939356, -0.323017, -0.115197,
		34.402206, 34.062035, 28.015146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053280, 33.466595, 28.298784>,  <35.059757, 34.288147, 28.095785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053280, 33.466595, 28.298784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751625, 33.582104, 28.062857>,  <34.570633, 33.651409, 27.921299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751625, 33.582104, 28.062857>,  <35.053280, 33.466595, 28.298784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751625, 33.582104, 28.062857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221188, -0.733970, -0.642156,
		-0.618347, -0.614734, 0.489641,
		-0.754137, 0.288773, -0.589820,
		34.525383, 33.668736, 27.885910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776505, 32.841602, 28.078846>,  <35.053280, 33.466595, 28.298784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776505, 32.841602, 28.078846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576286, 33.079445, 27.827166>,  <34.456154, 33.222149, 27.676157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576286, 33.079445, 27.827166>,  <34.776505, 32.841602, 28.078846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576286, 33.079445, 27.827166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111972, -0.676234, -0.728128,
		-0.858439, -0.434913, 0.271905,
		-0.500544, 0.594608, -0.629203,
		34.426125, 33.257828, 27.638405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267731, 32.443756, 27.832470>,  <34.776505, 32.841602, 28.078846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267731, 32.443756, 27.832470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360725, 32.718243, 27.556772>,  <34.416523, 32.882935, 27.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360725, 32.718243, 27.556772>,  <34.267731, 32.443756, 27.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360725, 32.718243, 27.556772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288300, -0.725433, -0.625005,
		-0.928889, -0.053405, -0.366489,
		0.232484, 0.686218, -0.689243,
		34.430470, 32.924107, 27.350000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022041, 32.174515, 27.185770>,  <34.267731, 32.443756, 27.832470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022041, 32.174515, 27.185770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256653, 32.465931, 27.044233>,  <34.397419, 32.640781, 26.959312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256653, 32.465931, 27.044233>,  <34.022041, 32.174515, 27.185770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256653, 32.465931, 27.044233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286279, -0.595165, -0.750881,
		-0.757644, 0.339118, -0.557650,
		0.586532, 0.728545, -0.353841,
		34.432613, 32.684494, 26.938082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828625, 32.379925, 26.480780>,  <34.022041, 32.174515, 27.185770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828625, 32.379925, 26.480780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215679, 32.449448, 26.553957>,  <34.447914, 32.491161, 26.597864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215679, 32.449448, 26.553957>,  <33.828625, 32.379925, 26.480780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215679, 32.449448, 26.553957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251931, -0.706746, -0.661091,
		0.014396, 0.685787, -0.727660,
		0.967638, 0.173803, 0.182945,
		34.505970, 32.501587, 26.608841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052975, 32.232185, 25.823296>,  <33.828625, 32.379925, 26.480780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052975, 32.232185, 25.823296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393181, 32.285900, 26.026707>,  <34.597305, 32.318127, 26.148752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393181, 32.285900, 26.026707>,  <34.052975, 32.232185, 25.823296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393181, 32.285900, 26.026707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463352, -0.648790, -0.603636,
		0.248869, 0.749026, -0.614023,
		0.850511, 0.134283, 0.508526,
		34.648335, 32.326183, 26.179264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587921, 32.430588, 25.368879>,  <34.052975, 32.232185, 25.823296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587921, 32.430588, 25.368879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769051, 32.263020, 25.683701>,  <34.877728, 32.162479, 25.872593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769051, 32.263020, 25.683701>,  <34.587921, 32.430588, 25.368879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769051, 32.263020, 25.683701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494316, -0.616695, -0.612649,
		0.742024, 0.666477, -0.072176,
		0.452827, -0.418922, 0.787053,
		34.904900, 32.137344, 25.919817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287807, 32.522953, 25.334688>,  <34.587921, 32.430588, 25.368879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287807, 32.522953, 25.334688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243771, 32.200031, 25.566599>,  <35.217350, 32.006279, 25.705746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243771, 32.200031, 25.566599>,  <35.287807, 32.522953, 25.334688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243771, 32.200031, 25.566599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633569, -0.506449, -0.584893,
		0.765813, 0.302938, 0.567238,
		-0.110091, -0.807303, 0.579777,
		35.210743, 31.957840, 25.740532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877903, 32.223309, 25.348299>,  <35.287807, 32.522953, 25.334688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877903, 32.223309, 25.348299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641876, 31.908508, 25.420364>,  <35.500259, 31.719629, 25.463604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641876, 31.908508, 25.420364>,  <35.877903, 32.223309, 25.348299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641876, 31.908508, 25.420364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530287, -0.546060, -0.648548,
		0.608787, -0.287144, 0.739545,
		-0.590062, -0.786998, 0.180165,
		35.464859, 31.672409, 25.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276077, 31.727055, 25.080879>,  <35.877903, 32.223309, 25.348299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276077, 31.727055, 25.080879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966507, 31.494619, 25.181578>,  <35.780766, 31.355158, 25.241997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966507, 31.494619, 25.181578>,  <36.276077, 31.727055, 25.080879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966507, 31.494619, 25.181578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384306, -0.746916, -0.542610,
		0.503338, -0.323191, 0.801373,
		-0.773925, -0.581088, 0.251747,
		35.734329, 31.320293, 25.257101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570923, 31.008574, 25.083246>,  <36.276077, 31.727055, 25.080879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570923, 31.008574, 25.083246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173969, 30.968855, 25.054062>,  <35.935799, 30.945024, 25.036551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173969, 30.968855, 25.054062>,  <36.570923, 31.008574, 25.083246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173969, 30.968855, 25.054062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123166, -0.782013, -0.610970,
		0.003609, -0.615301, 0.788284,
		-0.992379, -0.099295, -0.072962,
		35.876255, 30.939066, 25.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451611, 30.264433, 25.053589>,  <36.570923, 31.008574, 25.083246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451611, 30.264433, 25.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107185, 30.396456, 24.898855>,  <35.900532, 30.475670, 24.806015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107185, 30.396456, 24.898855>,  <36.451611, 30.264433, 25.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107185, 30.396456, 24.898855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043199, -0.710500, -0.702370,
		-0.506666, -0.621493, 0.597524,
		-0.861059, 0.330055, -0.386834,
		35.848869, 30.495472, 24.782804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063782, 29.756809, 24.865814>,  <36.451611, 30.264433, 25.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063782, 29.756809, 24.865814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950363, 30.059397, 24.630068>,  <35.882313, 30.240950, 24.488619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950363, 30.059397, 24.630068>,  <36.063782, 29.756809, 24.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950363, 30.059397, 24.630068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119838, -0.581822, -0.804439,
		-0.951441, -0.298724, 0.074319,
		-0.283545, 0.756470, -0.589368,
		35.865299, 30.286339, 24.453257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755081, 29.305218, 24.393387>,  <36.063782, 29.756809, 24.865814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755081, 29.305218, 24.393387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791927, 29.655931, 24.204594>,  <35.814034, 29.866360, 24.091318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791927, 29.655931, 24.204594>,  <35.755081, 29.305218, 24.393387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791927, 29.655931, 24.204594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255570, -0.478938, -0.839823,
		-0.962392, -0.043265, -0.268196,
		0.092115, 0.876782, -0.471983,
		35.819561, 29.918966, 24.062998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409401, 29.277285, 23.749256>,  <35.755081, 29.305218, 24.393387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409401, 29.277285, 23.749256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668884, 29.574570, 23.683752>,  <35.824574, 29.752941, 23.644449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668884, 29.574570, 23.683752>,  <35.409401, 29.277285, 23.749256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668884, 29.574570, 23.683752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401860, -0.517256, -0.755615,
		-0.646288, 0.424363, -0.634214,
		0.648706, 0.743210, -0.163762,
		35.863495, 29.797533, 23.634623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343102, 29.590078, 22.954115>,  <35.409401, 29.277285, 23.749256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343102, 29.590078, 22.954115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697777, 29.689367, 23.110153>,  <35.910580, 29.748941, 23.203777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697777, 29.689367, 23.110153>,  <35.343102, 29.590078, 22.954115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697777, 29.689367, 23.110153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459418, -0.377703, -0.803913,
		-0.052210, 0.892035, -0.448942,
		0.886684, 0.248224, 0.390097,
		35.963783, 29.763834, 23.227182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748959, 30.076374, 22.514387>,  <35.343102, 29.590078, 22.954115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748959, 30.076374, 22.514387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039154, 29.930023, 22.747555>,  <36.213272, 29.842213, 22.887455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039154, 29.930023, 22.747555>,  <35.748959, 30.076374, 22.514387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039154, 29.930023, 22.747555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525765, -0.251904, -0.812475,
		0.444107, 0.895922, 0.009611,
		0.725493, -0.365879, 0.582917,
		36.256802, 29.820259, 22.922430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313400, 30.331806, 22.281624>,  <35.748959, 30.076374, 22.514387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313400, 30.331806, 22.281624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490295, 30.039284, 22.489325>,  <36.596432, 29.863771, 22.613945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490295, 30.039284, 22.489325>,  <36.313400, 30.331806, 22.281624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490295, 30.039284, 22.489325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674911, -0.109950, -0.729661,
		0.590696, 0.673130, 0.444942,
		0.442235, -0.731305, 0.519250,
		36.622967, 29.819893, 22.645100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964794, 30.467922, 22.242443>,  <36.313400, 30.331806, 22.281624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964794, 30.467922, 22.242443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936150, 30.076439, 22.319382>,  <36.918961, 29.841549, 22.365545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936150, 30.076439, 22.319382>,  <36.964794, 30.467922, 22.242443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936150, 30.076439, 22.319382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582297, -0.197593, -0.788598,
		0.809816, 0.055529, 0.584051,
		-0.071614, -0.978710, 0.192348,
		36.914665, 29.782825, 22.377087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480865, 30.313379, 21.872704>,  <36.964794, 30.467922, 22.242443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480865, 30.313379, 21.872704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341095, 29.952326, 21.973223>,  <37.257233, 29.735693, 22.033535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341095, 29.952326, 21.973223>,  <37.480865, 30.313379, 21.872704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341095, 29.952326, 21.973223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409131, -0.388277, -0.825744,
		0.842918, -0.185726, 0.504971,
		-0.349431, -0.902633, 0.251299,
		37.236267, 29.681536, 22.048613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090992, 29.780579, 21.924435>,  <37.480865, 30.313379, 21.872704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090992, 29.780579, 21.924435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735138, 29.625111, 21.828526>,  <37.521626, 29.531830, 21.770981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735138, 29.625111, 21.828526>,  <38.090992, 29.780579, 21.924435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735138, 29.625111, 21.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344477, -0.226430, -0.911079,
		0.299818, -0.893121, 0.335327,
		-0.889632, -0.388671, -0.239772,
		37.468250, 29.508509, 21.756594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225288, 29.505539, 21.277279>,  <38.090992, 29.780579, 21.924435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225288, 29.505539, 21.277279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830540, 29.443544, 21.295420>,  <37.593689, 29.406347, 21.306305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830540, 29.443544, 21.295420>,  <38.225288, 29.505539, 21.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830540, 29.443544, 21.295420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010738, -0.217235, -0.976060,
		0.161129, -0.963736, 0.212720,
		-0.986875, -0.154987, 0.045352,
		37.534477, 29.397049, 21.309025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085346, 28.849054, 20.951113>,  <38.225288, 29.505539, 21.277279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085346, 28.849054, 20.951113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739964, 29.050806, 20.948687>,  <37.532734, 29.171858, 20.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739964, 29.050806, 20.948687>,  <38.085346, 28.849054, 20.951113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739964, 29.050806, 20.948687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094522, -0.173603, -0.980269,
		-0.495483, -0.845849, 0.197574,
		-0.863459, 0.504382, -0.006066,
		37.480927, 29.202120, 20.946867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513439, 28.418224, 20.735098>,  <38.085346, 28.849054, 20.951113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513439, 28.418224, 20.735098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410069, 28.800245, 20.677010>,  <37.348045, 29.029457, 20.642157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410069, 28.800245, 20.677010>,  <37.513439, 28.418224, 20.735098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410069, 28.800245, 20.677010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067429, -0.167793, -0.983514,
		-0.963674, -0.244378, 0.107761,
		-0.258430, 0.955053, -0.145220,
		37.332539, 29.086761, 20.633444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089417, 28.364702, 20.098236>,  <37.513439, 28.418224, 20.735098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089417, 28.364702, 20.098236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224693, 28.737095, 20.153233>,  <37.305859, 28.960529, 20.186230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224693, 28.737095, 20.153233>,  <37.089417, 28.364702, 20.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224693, 28.737095, 20.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160072, 0.087064, -0.983258,
		-0.927365, 0.354535, -0.119580,
		0.338188, 0.930981, 0.137492,
		37.326149, 29.016390, 20.194481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669243, 28.837988, 19.473227>,  <37.089417, 28.364702, 20.098236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669243, 28.837988, 19.473227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023323, 28.947519, 19.623657>,  <37.235771, 29.013239, 19.713915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023323, 28.947519, 19.623657>,  <36.669243, 28.837988, 19.473227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023323, 28.947519, 19.623657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360125, 0.108396, -0.926585,
		-0.294492, 0.955650, -0.002660,
		0.885203, 0.273830, 0.376075,
		37.288883, 29.029669, 19.736481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007263, 29.222971, 18.950048>,  <36.669243, 28.837988, 19.473227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007263, 29.222971, 18.950048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302879, 29.139248, 19.206177>,  <37.480247, 29.089014, 19.359854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302879, 29.139248, 19.206177>,  <37.007263, 29.222971, 18.950048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302879, 29.139248, 19.206177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661194, 0.043358, -0.748961,
		0.129001, 0.976888, 0.170437,
		0.739041, -0.209308, 0.640319,
		37.524593, 29.076456, 19.398273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461803, 29.561771, 19.303272>,  <37.007263, 29.222971, 18.950048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461803, 29.561771, 19.303272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675259, 29.890812, 19.381815>,  <36.803333, 30.088236, 19.428940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675259, 29.890812, 19.381815>,  <36.461803, 29.561771, 19.303272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675259, 29.890812, 19.381815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343449, 0.001378, -0.939170,
		-0.772835, 0.568614, -0.281788,
		0.533637, 0.822603, 0.196355,
		36.835350, 30.137592, 19.440722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315048, 30.253603, 18.832146>,  <36.461803, 29.561771, 19.303272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315048, 30.253603, 18.832146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687778, 30.202028, 18.967834>,  <36.911419, 30.171083, 19.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687778, 30.202028, 18.967834>,  <36.315048, 30.253603, 18.832146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687778, 30.202028, 18.967834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333804, -0.062203, -0.940588,
		0.142376, 0.989700, -0.014923,
		0.931828, -0.128936, 0.339222,
		36.967327, 30.163347, 19.069601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776680, 30.771875, 18.558460>,  <36.315048, 30.253603, 18.832146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776680, 30.771875, 18.558460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964687, 30.430882, 18.649984>,  <37.077492, 30.226284, 18.704899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964687, 30.430882, 18.649984>,  <36.776680, 30.771875, 18.558460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964687, 30.430882, 18.649984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249011, -0.120633, -0.960959,
		0.846805, 0.508641, 0.155579,
		0.470015, -0.852486, 0.228810,
		37.105694, 30.175137, 18.718628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542858, 30.765707, 18.251167>,  <36.776680, 30.771875, 18.558460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542858, 30.765707, 18.251167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381523, 30.401644, 18.288979>,  <37.284721, 30.183207, 18.311666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381523, 30.401644, 18.288979>,  <37.542858, 30.765707, 18.251167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381523, 30.401644, 18.288979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174088, -0.177743, -0.968556,
		0.898340, -0.374196, 0.230137,
		-0.403335, -0.910156, 0.094530,
		37.260521, 30.128597, 18.317337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235825, 30.719042, 18.269197>,  <37.542858, 30.765707, 18.251167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235825, 30.719042, 18.269197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400955, 31.079876, 18.319494>,  <38.500034, 31.296377, 18.349672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400955, 31.079876, 18.319494>,  <38.235825, 30.719042, 18.269197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400955, 31.079876, 18.319494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591288, -0.370448, 0.716343,
		0.692784, -0.221378, -0.686325,
		0.412830, 0.902086, 0.125742,
		38.524803, 31.350502, 18.357218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979774, 30.809763, 18.071991>,  <38.235825, 30.719042, 18.269197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979774, 30.809763, 18.071991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883144, 31.042549, 18.382591>,  <38.825165, 31.182220, 18.568953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883144, 31.042549, 18.382591>,  <38.979774, 30.809763, 18.071991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883144, 31.042549, 18.382591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434399, -0.650689, 0.622817,
		0.867721, 0.487769, -0.095616,
		-0.241575, 0.581967, 0.776503,
		38.810673, 31.217138, 18.615541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576679, 31.108593, 18.378622>,  <38.979774, 30.809763, 18.071991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576679, 31.108593, 18.378622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297188, 31.076025, 18.662918>,  <39.129494, 31.056484, 18.833496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297188, 31.076025, 18.662918>,  <39.576679, 31.108593, 18.378622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297188, 31.076025, 18.662918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672822, -0.412377, 0.614211,
		0.243083, 0.907367, 0.342922,
		-0.698728, -0.081422, 0.710739,
		39.087570, 31.051598, 18.876141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478622, 31.156530, 19.214754>,  <39.576679, 31.108593, 18.378622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478622, 31.156530, 19.214754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083031, 31.209623, 19.188517>,  <38.845676, 31.241478, 19.172773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083031, 31.209623, 19.188517>,  <39.478622, 31.156530, 19.214754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083031, 31.209623, 19.188517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055613, 0.743635, 0.666269,
		0.137213, 0.655278, -0.742821,
		-0.988979, 0.132731, -0.065595,
		38.786339, 31.249443, 19.168839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379932, 31.900200, 19.241306>,  <39.478622, 31.156530, 19.214754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379932, 31.900200, 19.241306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038883, 31.725325, 19.355783>,  <38.834255, 31.620399, 19.424471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038883, 31.725325, 19.355783>,  <39.379932, 31.900200, 19.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038883, 31.725325, 19.355783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134558, 0.712935, 0.688199,
		-0.504910, 0.548262, -0.666689,
		-0.852620, -0.437187, 0.286195,
		38.783096, 31.594168, 19.441643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793678, 32.451576, 19.291540>,  <39.379932, 31.900200, 19.241306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793678, 32.451576, 19.291540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679531, 32.131184, 19.502060>,  <38.611042, 31.938948, 19.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679531, 32.131184, 19.502060>,  <38.793678, 32.451576, 19.291540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679531, 32.131184, 19.502060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174547, 0.583384, 0.793219,
		-0.942391, 0.134493, -0.306286,
		-0.285365, -0.800984, 0.526300,
		38.593922, 31.890888, 19.659950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168045, 32.604740, 19.570620>,  <38.793678, 32.451576, 19.291540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168045, 32.604740, 19.570620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312931, 32.315968, 19.806458>,  <38.399864, 32.142704, 19.947960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312931, 32.315968, 19.806458>,  <38.168045, 32.604740, 19.570620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312931, 32.315968, 19.806458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236107, 0.540854, 0.807299,
		-0.901696, -0.431621, 0.025452,
		0.362213, -0.721928, 0.589594,
		38.421597, 32.099388, 19.983335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760456, 32.716110, 20.136292>,  <38.168045, 32.604740, 19.570620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760456, 32.716110, 20.136292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037262, 32.472958, 20.292032>,  <38.203346, 32.327065, 20.385477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037262, 32.472958, 20.292032>,  <37.760456, 32.716110, 20.136292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037262, 32.472958, 20.292032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180565, 0.376451, 0.908670,
		-0.698935, -0.699118, 0.150749,
		0.692017, -0.607881, 0.389351,
		38.244865, 32.290592, 20.408838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404629, 32.515644, 20.671667>,  <37.760456, 32.716110, 20.136292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404629, 32.515644, 20.671667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778149, 32.405384, 20.762913>,  <38.002262, 32.339226, 20.817659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778149, 32.405384, 20.762913>,  <37.404629, 32.515644, 20.671667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778149, 32.405384, 20.762913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197594, 0.134212, 0.971053,
		-0.298288, -0.951842, 0.070860,
		0.933799, -0.275652, 0.228112,
		38.058289, 32.322689, 20.831347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405910, 31.951830, 21.195557>,  <37.404629, 32.515644, 20.671667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405910, 31.951830, 21.195557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754482, 32.147911, 21.202663>,  <37.963627, 32.265560, 21.206928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754482, 32.147911, 21.202663>,  <37.405910, 31.951830, 21.195557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754482, 32.147911, 21.202663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177549, 0.281451, 0.943007,
		0.457264, -0.824916, 0.332299,
		0.871428, 0.490202, 0.017766,
		38.015911, 32.294971, 21.207993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851467, 31.742733, 21.743023>,  <37.405910, 31.951830, 21.195557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851467, 31.742733, 21.743023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002071, 32.107899, 21.679989>,  <38.092434, 32.327000, 21.642168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002071, 32.107899, 21.679989>,  <37.851467, 31.742733, 21.743023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002071, 32.107899, 21.679989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271130, 0.271240, 0.923535,
		0.885851, -0.304990, 0.349642,
		0.376506, 0.912913, -0.157586,
		38.115025, 32.381771, 21.632713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273071, 31.937809, 22.291979>,  <37.851467, 31.742733, 21.743023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273071, 31.937809, 22.291979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215794, 32.308487, 22.152994>,  <38.181427, 32.530895, 22.069603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215794, 32.308487, 22.152994>,  <38.273071, 31.937809, 22.291979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215794, 32.308487, 22.152994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014368, 0.352990, 0.935517,
		0.989590, 0.128967, -0.063860,
		-0.143193, 0.926696, -0.347463,
		38.172836, 32.586494, 22.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731319, 32.353870, 22.680115>,  <38.273071, 31.937809, 22.291979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731319, 32.353870, 22.680115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463028, 32.617348, 22.543736>,  <38.302055, 32.775436, 22.461908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463028, 32.617348, 22.543736>,  <38.731319, 32.353870, 22.680115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463028, 32.617348, 22.543736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108363, 0.541773, 0.833511,
		0.733747, 0.522111, -0.434760,
		-0.670726, 0.658697, -0.340946,
		38.261810, 32.814957, 22.441452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004139, 32.954819, 22.881462>,  <38.731319, 32.353870, 22.680115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004139, 32.954819, 22.881462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619495, 33.042152, 22.814964>,  <38.388710, 33.094551, 22.775064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619495, 33.042152, 22.814964>,  <39.004139, 32.954819, 22.881462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619495, 33.042152, 22.814964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056496, 0.435318, 0.898503,
		0.268544, 0.873400, -0.406270,
		-0.961609, 0.218335, -0.166246,
		38.331013, 33.107655, 22.765091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931572, 33.752460, 23.071537>,  <39.004139, 32.954819, 22.881462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931572, 33.752460, 23.071537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562412, 33.598450, 23.070002>,  <38.340916, 33.506042, 23.069080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562412, 33.598450, 23.070002>,  <38.931572, 33.752460, 23.071537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562412, 33.598450, 23.070002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262717, 0.622382, 0.737307,
		-0.281494, 0.681467, -0.675548,
		-0.922898, -0.385025, -0.003836,
		38.285542, 33.482941, 23.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540112, 34.275257, 23.108904>,  <38.931572, 33.752460, 23.071537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540112, 34.275257, 23.108904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288681, 33.993351, 23.240480>,  <38.137821, 33.824207, 23.319426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288681, 33.993351, 23.240480>,  <38.540112, 34.275257, 23.108904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288681, 33.993351, 23.240480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181210, 0.544011, 0.819277,
		-0.756344, 0.455370, -0.469662,
		-0.628575, -0.704762, 0.328942,
		38.100109, 33.781921, 23.339163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881477, 34.681782, 23.395851>,  <38.540112, 34.275257, 23.108904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881477, 34.681782, 23.395851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909397, 34.307476, 23.534109>,  <37.926151, 34.082893, 23.617064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909397, 34.307476, 23.534109>,  <37.881477, 34.681782, 23.395851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909397, 34.307476, 23.534109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472556, 0.274128, 0.837583,
		-0.878532, -0.221803, -0.423066,
		0.069804, -0.935766, 0.345644,
		37.930340, 34.026745, 23.637802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237530, 34.451107, 23.499657>,  <37.881477, 34.681782, 23.395851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237530, 34.451107, 23.499657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460735, 34.247898, 23.762115>,  <37.594658, 34.125973, 23.919590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460735, 34.247898, 23.762115>,  <37.237530, 34.451107, 23.499657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460735, 34.247898, 23.762115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620731, 0.269228, 0.736349,
		-0.550736, -0.818185, -0.165113,
		0.558017, -0.508025, 0.656146,
		37.628139, 34.095490, 23.958960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717667, 33.967583, 23.884663>,  <37.237530, 34.451107, 23.499657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717667, 33.967583, 23.884663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052940, 34.005608, 24.099478>,  <37.254105, 34.028423, 24.228367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052940, 34.005608, 24.099478>,  <36.717667, 33.967583, 23.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052940, 34.005608, 24.099478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535553, 0.329584, 0.777533,
		-0.103088, -0.939329, 0.327161,
		0.838186, 0.095058, 0.537037,
		37.304398, 34.034126, 24.260590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567463, 33.716446, 24.568649>,  <36.717667, 33.967583, 23.884663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567463, 33.716446, 24.568649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895016, 33.933521, 24.643404>,  <37.091545, 34.063766, 24.688257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895016, 33.933521, 24.643404>,  <36.567463, 33.716446, 24.568649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895016, 33.933521, 24.643404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451900, 0.408843, 0.792864,
		0.353871, -0.733714, 0.580034,
		0.818878, 0.542689, 0.186887,
		37.140678, 34.096329, 24.699471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721447, 33.617241, 25.355566>,  <36.567463, 33.716446, 24.568649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721447, 33.617241, 25.355566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881584, 33.954956, 25.213070>,  <36.977665, 34.157585, 25.127573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881584, 33.954956, 25.213070>,  <36.721447, 33.617241, 25.355566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881584, 33.954956, 25.213070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353595, 0.500973, 0.789934,
		0.845397, -0.190280, 0.499096,
		0.400342, 0.844286, -0.356240,
		37.001686, 34.208241, 25.106197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068352, 33.873165, 25.893824>,  <36.721447, 33.617241, 25.355566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068352, 33.873165, 25.893824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959438, 34.169506, 25.648224>,  <36.894089, 34.347313, 25.500864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959438, 34.169506, 25.648224>,  <37.068352, 33.873165, 25.893824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959438, 34.169506, 25.648224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439788, 0.471740, 0.764230,
		0.855832, 0.478117, 0.197371,
		-0.272284, 0.740854, -0.614000,
		36.877754, 34.391762, 25.464024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204597, 34.441765, 26.299509>,  <37.068352, 33.873165, 25.893824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204597, 34.441765, 26.299509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003853, 34.604889, 25.994400>,  <36.883404, 34.702763, 25.811335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003853, 34.604889, 25.994400>,  <37.204597, 34.441765, 26.299509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003853, 34.604889, 25.994400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387408, 0.682485, 0.619782,
		0.773335, 0.606550, -0.184525,
		-0.501864, 0.407813, -0.762772,
		36.853294, 34.727234, 25.765568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512230, 35.125317, 26.223866>,  <37.204597, 34.441765, 26.299509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512230, 35.125317, 26.223866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132244, 35.070873, 26.111404>,  <36.904255, 35.038208, 26.043928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132244, 35.070873, 26.111404>,  <37.512230, 35.125317, 26.223866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132244, 35.070873, 26.111404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302540, 0.624886, 0.719713,
		0.077727, 0.768760, -0.634797,
		-0.949962, -0.136110, -0.281151,
		36.847256, 35.030041, 26.027060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308163, 35.789715, 26.406017>,  <37.512230, 35.125317, 26.223866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308163, 35.789715, 26.406017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971775, 35.592274, 26.317352>,  <36.769943, 35.473808, 26.264154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971775, 35.592274, 26.317352>,  <37.308163, 35.789715, 26.406017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971775, 35.592274, 26.317352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536429, 0.706921, 0.460984,
		-0.070845, 0.506577, -0.859279,
		-0.840967, -0.493600, -0.221661,
		36.719486, 35.444195, 26.250854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877506, 36.274857, 26.205986>,  <37.308163, 35.789715, 26.406017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877506, 36.274857, 26.205986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635773, 35.974792, 26.313349>,  <36.490734, 35.794754, 26.377766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635773, 35.974792, 26.313349>,  <36.877506, 36.274857, 26.205986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635773, 35.974792, 26.313349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630557, 0.656254, 0.414402,
		-0.487011, 0.081191, -0.869614,
		-0.604333, -0.750159, 0.268407,
		36.454472, 35.749744, 26.393871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129902, 36.527485, 26.034945>,  <36.877506, 36.274857, 26.205986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129902, 36.527485, 26.034945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111950, 36.226692, 26.298004>,  <36.101181, 36.046215, 26.455841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111950, 36.226692, 26.298004>,  <36.129902, 36.527485, 26.034945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111950, 36.226692, 26.298004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674993, 0.508134, 0.534962,
		-0.736458, -0.419903, -0.530388,
		-0.044876, -0.751985, 0.657650,
		36.098488, 36.001095, 26.495298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536831, 36.616241, 26.316765>,  <36.129902, 36.527485, 26.034945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536831, 36.616241, 26.316765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683399, 36.367474, 26.593590>,  <35.771339, 36.218212, 26.759686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683399, 36.367474, 26.593590>,  <35.536831, 36.616241, 26.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683399, 36.367474, 26.593590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551753, 0.453669, 0.699823,
		-0.749200, -0.638281, -0.176910,
		0.366425, -0.621918, 0.692063,
		35.793327, 36.180897, 26.801208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915924, 36.285568, 26.771978>,  <35.536831, 36.616241, 26.316765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915924, 36.285568, 26.771978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248360, 36.274914, 26.994179>,  <35.447823, 36.268520, 27.127499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248360, 36.274914, 26.994179>,  <34.915924, 36.285568, 26.771978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248360, 36.274914, 26.994179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514771, 0.341179, 0.786516,
		-0.210474, -0.939621, 0.269840,
		0.831090, -0.026635, 0.555499,
		35.497688, 36.266922, 27.160828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642929, 36.082355, 27.506891>,  <34.915924, 36.285568, 26.771978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642929, 36.082355, 27.506891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014900, 36.218945, 27.561478>,  <35.238083, 36.300900, 27.594229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014900, 36.218945, 27.561478>,  <34.642929, 36.082355, 27.506891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014900, 36.218945, 27.561478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252174, 0.322068, 0.912513,
		0.267644, -0.882989, 0.385612,
		0.929933, 0.341470, 0.136467,
		35.293880, 36.321388, 27.602417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857738, 35.792618, 28.128500>,  <34.642929, 36.082355, 27.506891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857738, 35.792618, 28.128500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097958, 36.105560, 28.062452>,  <35.242088, 36.293324, 28.022823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097958, 36.105560, 28.062452>,  <34.857738, 35.792618, 28.128500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097958, 36.105560, 28.062452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064345, 0.253120, 0.965293,
		0.796993, -0.569082, 0.202352,
		0.600551, 0.782352, -0.165118,
		35.278122, 36.340267, 28.012917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438980, 35.852707, 28.578917>,  <34.857738, 35.792618, 28.128500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438980, 35.852707, 28.578917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402607, 36.230591, 28.452896>,  <35.380783, 36.457321, 28.377283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402607, 36.230591, 28.452896>,  <35.438980, 35.852707, 28.578917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402607, 36.230591, 28.452896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053139, 0.320514, 0.945752,
		0.994438, 0.069263, -0.079347,
		-0.090938, 0.944708, -0.315050,
		35.375324, 36.514004, 28.358381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865360, 36.109207, 29.027372>,  <35.438980, 35.852707, 28.578917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865360, 36.109207, 29.027372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693344, 36.439709, 28.881838>,  <35.590134, 36.638008, 28.794518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693344, 36.439709, 28.881838>,  <35.865360, 36.109207, 29.027372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693344, 36.439709, 28.881838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011227, 0.407865, 0.912973,
		0.902741, 0.388529, -0.184674,
		-0.430039, 0.826251, -0.363834,
		35.564331, 36.687584, 28.772688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361198, 36.630817, 29.182590>,  <35.865360, 36.109207, 29.027372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361198, 36.630817, 29.182590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013451, 36.813976, 29.108267>,  <35.804802, 36.923874, 29.063673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013451, 36.813976, 29.108267>,  <36.361198, 36.630817, 29.182590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013451, 36.813976, 29.108267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133659, 0.579880, 0.803663,
		0.475746, 0.673844, -0.565332,
		-0.869368, 0.457901, -0.185810,
		35.752640, 36.951347, 29.052525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470779, 37.334621, 29.110792>,  <36.361198, 36.630817, 29.182590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470779, 37.334621, 29.110792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 37.288792, 29.219238>,  <35.859127, 37.261292, 29.284306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 37.288792, 29.219238>,  <36.470779, 37.334621, 29.110792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088497, 37.288792, 29.219238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139693, 0.634196, 0.760448,
		-0.259071, 0.764635, -0.590097,
		-0.955703, -0.114577, 0.271116,
		35.801785, 37.254417, 29.300573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224968, 37.938770, 29.359636>,  <36.470779, 37.334621, 29.110792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224968, 37.938770, 29.359636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943031, 37.690037, 29.496181>,  <35.773869, 37.540798, 29.578108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943031, 37.690037, 29.496181>,  <36.224968, 37.938770, 29.359636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943031, 37.690037, 29.496181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122276, 0.580520, 0.805012,
		-0.698750, 0.525664, -0.485208,
		-0.704838, -0.621831, 0.341362,
		35.731579, 37.503487, 29.598591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674049, 38.276115, 29.705109>,  <36.224968, 37.938770, 29.359636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674049, 38.276115, 29.705109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594269, 37.915012, 29.857553>,  <35.546402, 37.698349, 29.949020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594269, 37.915012, 29.857553>,  <35.674049, 38.276115, 29.705109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594269, 37.915012, 29.857553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191268, 0.417312, 0.888407,
		-0.961060, 0.104297, -0.255901,
		-0.199449, -0.902758, 0.381114,
		35.534435, 37.644184, 29.971888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937271, 38.304394, 30.063704>,  <35.674049, 38.276115, 29.705109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937271, 38.304394, 30.063704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160049, 38.008373, 30.214506>,  <35.293716, 37.830761, 30.304987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160049, 38.008373, 30.214506>,  <34.937271, 38.304394, 30.063704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160049, 38.008373, 30.214506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180894, 0.334939, 0.924712,
		-0.810610, -0.583212, 0.052672,
		0.556945, -0.740053, 0.377005,
		35.327133, 37.786358, 30.327608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429028, 37.930180, 30.514536>,  <34.937271, 38.304394, 30.063704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429028, 37.930180, 30.514536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808285, 37.868568, 30.625742>,  <35.035839, 37.831604, 30.692465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808285, 37.868568, 30.625742>,  <34.429028, 37.930180, 30.514536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808285, 37.868568, 30.625742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232216, 0.261529, 0.936845,
		-0.217008, -0.952827, 0.212201,
		0.948147, -0.154026, 0.278015,
		35.092728, 37.822361, 30.709146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311142, 37.699123, 31.159883>,  <34.429028, 37.930180, 30.514536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311142, 37.699123, 31.159883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704353, 37.771423, 31.147366>,  <34.940281, 37.814804, 31.139854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704353, 37.771423, 31.147366>,  <34.311142, 37.699123, 31.159883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704353, 37.771423, 31.147366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014676, 0.247546, 0.968765,
		0.182844, -0.951868, 0.245999,
		0.983032, 0.180743, -0.031293,
		34.999264, 37.825649, 31.137978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707344, 37.363293, 31.700176>,  <34.311142, 37.699123, 31.159883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707344, 37.363293, 31.700176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948467, 37.665649, 31.598003>,  <35.093143, 37.847065, 31.536699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948467, 37.665649, 31.598003>,  <34.707344, 37.363293, 31.700176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948467, 37.665649, 31.598003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010815, 0.327851, 0.944668,
		0.797810, -0.566695, 0.205807,
		0.602812, 0.755891, -0.255434,
		35.129311, 37.892418, 31.521374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176315, 37.420830, 32.177868>,  <34.707344, 37.363293, 31.700176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176315, 37.420830, 32.177868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257687, 37.779202, 32.019917>,  <35.306511, 37.994225, 31.925146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257687, 37.779202, 32.019917>,  <35.176315, 37.420830, 32.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257687, 37.779202, 32.019917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031638, 0.397082, 0.917238,
		0.978579, -0.199085, 0.052432,
		0.203428, 0.895930, -0.394875,
		35.318714, 38.047981, 31.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857159, 37.725094, 32.565243>,  <35.176315, 37.420830, 32.177868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857159, 37.725094, 32.565243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619617, 38.009911, 32.415398>,  <35.477093, 38.180801, 32.325489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619617, 38.009911, 32.415398>,  <35.857159, 37.725094, 32.565243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619617, 38.009911, 32.415398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120927, 0.539311, 0.833379,
		0.795433, 0.449605, -0.406377,
		-0.593855, 0.712039, -0.374616,
		35.441460, 38.223522, 32.303013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284157, 38.401875, 32.545986>,  <35.857159, 37.725094, 32.565243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284157, 38.401875, 32.545986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554722, 38.305790, 32.824486>,  <36.717060, 38.248138, 32.991585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554722, 38.305790, 32.824486>,  <36.284157, 38.401875, 32.545986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554722, 38.305790, 32.824486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361476, -0.715371, -0.597980,
		0.641720, 0.656158, -0.397053,
		0.676410, -0.240210, 0.696253,
		36.757645, 38.233727, 33.033363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972393, 38.539757, 32.249550>,  <36.284157, 38.401875, 32.545986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972393, 38.539757, 32.249550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038483, 38.268257, 32.535767>,  <37.078136, 38.105358, 32.707497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038483, 38.268257, 32.535767>,  <36.972393, 38.539757, 32.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038483, 38.268257, 32.535767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524623, -0.553865, -0.646532,
		0.835147, 0.482211, 0.264578,
		0.165224, -0.678753, 0.715538,
		37.088051, 38.064632, 32.750427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718487, 38.506935, 32.480286>,  <36.972393, 38.539757, 32.249550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718487, 38.506935, 32.480286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535362, 38.159668, 32.556904>,  <37.425488, 37.951305, 32.602875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535362, 38.159668, 32.556904>,  <37.718487, 38.506935, 32.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535362, 38.159668, 32.556904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568574, -0.451533, -0.687635,
		0.683473, -0.205899, 0.700336,
		-0.457808, -0.868173, 0.191541,
		37.398022, 37.899216, 32.614365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189095, 38.091278, 32.355686>,  <37.718487, 38.506935, 32.480286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189095, 38.091278, 32.355686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893002, 37.822689, 32.369392>,  <37.715343, 37.661533, 32.377617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893002, 37.822689, 32.369392>,  <38.189095, 38.091278, 32.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893002, 37.822689, 32.369392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497615, -0.581421, -0.643684,
		0.452142, -0.459425, 0.764524,
		-0.740234, -0.671475, 0.034267,
		37.670933, 37.621246, 32.379673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544193, 37.483582, 32.345787>,  <38.189095, 38.091278, 32.355686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544193, 37.483582, 32.345787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162937, 37.404373, 32.254307>,  <37.934181, 37.356850, 32.199417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162937, 37.404373, 32.254307>,  <38.544193, 37.483582, 32.345787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162937, 37.404373, 32.254307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301788, -0.569824, -0.764346,
		0.021035, -0.797551, 0.602885,
		-0.953143, -0.198022, -0.228705,
		37.876995, 37.344967, 32.185696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479942, 36.857773, 32.508862>,  <38.544193, 37.483582, 32.345787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479942, 36.857773, 32.508862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234821, 36.944191, 32.204811>,  <38.087749, 36.996040, 32.022381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234821, 36.944191, 32.204811>,  <38.479942, 36.857773, 32.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234821, 36.944191, 32.204811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572333, -0.541926, -0.615428,
		-0.544923, -0.812173, 0.208408,
		-0.612776, 0.216082, -0.760141,
		38.050980, 37.009007, 31.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386307, 36.269249, 32.187344>,  <38.479942, 36.857773, 32.508862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386307, 36.269249, 32.187344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257015, 36.500488, 31.887657>,  <38.179440, 36.639233, 31.707846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257015, 36.500488, 31.887657>,  <38.386307, 36.269249, 32.187344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257015, 36.500488, 31.887657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536656, -0.540117, -0.648285,
		-0.779438, -0.611615, -0.135661,
		-0.323228, 0.578101, -0.749215,
		38.160046, 36.673920, 31.662893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360565, 35.758850, 31.643288>,  <38.386307, 36.269249, 32.187344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360565, 35.758850, 31.643288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343727, 36.111202, 31.454702>,  <38.333622, 36.322613, 31.341551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343727, 36.111202, 31.454702>,  <38.360565, 35.758850, 31.643288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343727, 36.111202, 31.454702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374557, -0.423551, -0.824809,
		-0.926247, -0.211313, -0.312110,
		-0.042099, 0.880881, -0.471462,
		38.331097, 36.375465, 31.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035805, 35.632385, 31.000277>,  <38.360565, 35.758850, 31.643288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035805, 35.632385, 31.000277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247463, 35.970730, 30.973349>,  <38.374458, 36.173737, 30.957191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247463, 35.970730, 30.973349>,  <38.035805, 35.632385, 31.000277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247463, 35.970730, 30.973349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480711, -0.364202, -0.797668,
		-0.699231, 0.389720, -0.599328,
		0.529144, 0.845857, -0.067319,
		38.406208, 36.224487, 30.953154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052425, 35.655193, 30.299637>,  <38.035805, 35.632385, 31.000277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052425, 35.655193, 30.299637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323639, 35.925529, 30.415228>,  <38.486366, 36.087730, 30.484583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323639, 35.925529, 30.415228>,  <38.052425, 35.655193, 30.299637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323639, 35.925529, 30.415228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507337, -0.145831, -0.849319,
		-0.531863, 0.722476, -0.441758,
		0.678034, 0.675841, 0.288977,
		38.527050, 36.128281, 30.501921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137215, 36.170029, 29.774727>,  <38.052425, 35.655193, 30.299637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137215, 36.170029, 29.774727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480759, 36.159561, 29.979342>,  <38.686886, 36.153282, 30.102110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480759, 36.159561, 29.979342>,  <38.137215, 36.170029, 29.774727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480759, 36.159561, 29.979342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500212, -0.171985, -0.848651,
		0.110184, 0.984752, -0.134622,
		0.858864, -0.026168, 0.511535,
		38.738419, 36.151711, 30.132803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596287, 36.533073, 29.350227>,  <38.137215, 36.170029, 29.774727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596287, 36.533073, 29.350227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821259, 36.304211, 29.588993>,  <38.956242, 36.166893, 29.732252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821259, 36.304211, 29.588993>,  <38.596287, 36.533073, 29.350227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821259, 36.304211, 29.588993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647628, -0.143989, -0.748228,
		0.514053, 0.807406, 0.289560,
		0.562431, -0.572156, 0.596917,
		38.989986, 36.132565, 29.768068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302162, 36.720043, 29.154825>,  <38.596287, 36.533073, 29.350227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302162, 36.720043, 29.154825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301720, 36.374664, 29.356602>,  <39.301453, 36.167439, 29.477667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301720, 36.374664, 29.356602>,  <39.302162, 36.720043, 29.154825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301720, 36.374664, 29.356602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467116, -0.446473, -0.763194,
		0.884195, 0.234786, 0.403824,
		-0.001109, -0.863445, 0.504441,
		39.301388, 36.115631, 29.507935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900467, 36.447754, 28.990738>,  <39.302162, 36.720043, 29.154825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900467, 36.447754, 28.990738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721771, 36.121246, 29.137228>,  <39.614552, 35.925343, 29.225122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721771, 36.121246, 29.137228>,  <39.900467, 36.447754, 28.990738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721771, 36.121246, 29.137228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265564, -0.511885, -0.816975,
		0.854340, -0.267720, 0.445453,
		-0.446742, -0.816271, 0.366227,
		39.587749, 35.876366, 29.247097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467880, 35.842018, 28.970970>,  <39.900467, 36.447754, 28.990738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467880, 35.842018, 28.970970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108089, 35.668583, 28.992708>,  <39.892216, 35.564522, 29.005751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108089, 35.668583, 28.992708>,  <40.467880, 35.842018, 28.970970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108089, 35.668583, 28.992708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197493, -0.514301, -0.834560,
		0.389802, -0.739931, 0.548230,
		-0.899473, -0.433585, 0.054344,
		39.838249, 35.538506, 29.009012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599289, 35.203701, 28.719664>,  <40.467880, 35.842018, 28.970970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599289, 35.203701, 28.719664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202038, 35.229485, 28.680571>,  <39.963688, 35.244953, 28.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202038, 35.229485, 28.680571>,  <40.599289, 35.203701, 28.719664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202038, 35.229485, 28.680571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053137, -0.495679, -0.866879,
		-0.104319, -0.866111, 0.488845,
		-0.993123, 0.064456, -0.097731,
		39.904102, 35.248821, 28.651251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395393, 34.545322, 28.537760>,  <40.599289, 35.203701, 28.719664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395393, 34.545322, 28.537760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083977, 34.763908, 28.414309>,  <39.897125, 34.895061, 28.340237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083977, 34.763908, 28.414309>,  <40.395393, 34.545322, 28.537760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083977, 34.763908, 28.414309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136726, -0.627639, -0.766404,
		-0.612515, -0.554482, 0.563361,
		-0.778544, 0.546460, -0.308626,
		39.850414, 34.927849, 28.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942757, 34.038307, 28.312727>,  <40.395393, 34.545322, 28.537760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942757, 34.038307, 28.312727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790913, 34.369789, 28.148222>,  <39.699806, 34.568680, 28.049519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790913, 34.369789, 28.148222>,  <39.942757, 34.038307, 28.312727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790913, 34.369789, 28.148222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286004, -0.527884, -0.799712,
		-0.879829, -0.185953, 0.437403,
		-0.379608, 0.828709, -0.411265,
		39.677029, 34.618401, 28.024843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303040, 33.904049, 27.999409>,  <39.942757, 34.038307, 28.312727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303040, 33.904049, 27.999409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415524, 34.224930, 27.788738>,  <39.483013, 34.417458, 27.662336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415524, 34.224930, 27.788738>,  <39.303040, 33.904049, 27.999409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415524, 34.224930, 27.788738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182647, -0.494051, -0.850031,
		-0.942104, 0.335234, 0.007588,
		0.281211, 0.802204, -0.526678,
		39.499886, 34.465591, 27.630735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809574, 34.030006, 27.641243>,  <39.303040, 33.904049, 27.999409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809574, 34.030006, 27.641243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131485, 34.187752, 27.463789>,  <39.324631, 34.282398, 27.357317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131485, 34.187752, 27.463789>,  <38.809574, 34.030006, 27.641243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131485, 34.187752, 27.463789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233010, -0.477507, -0.847168,
		-0.545930, 0.785153, -0.292396,
		0.804777, 0.394363, -0.443634,
		39.372917, 34.306061, 27.330698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643723, 34.143940, 26.998358>,  <38.809574, 34.030006, 27.641243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643723, 34.143940, 26.998358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040581, 34.120674, 26.954075>,  <39.278698, 34.106712, 26.927505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040581, 34.120674, 26.954075>,  <38.643723, 34.143940, 26.998358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040581, 34.120674, 26.954075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124932, -0.421340, -0.898257,
		0.005605, 0.905035, -0.425299,
		0.992150, -0.058168, -0.110706,
		39.338226, 34.103222, 26.920862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842415, 34.504009, 26.344048>,  <38.643723, 34.143940, 26.998358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842415, 34.504009, 26.344048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129349, 34.239742, 26.432537>,  <39.301510, 34.081181, 26.485630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129349, 34.239742, 26.432537>,  <38.842415, 34.504009, 26.344048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129349, 34.239742, 26.432537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165476, -0.469988, -0.867023,
		0.676788, 0.585342, -0.446466,
		0.717339, -0.660671, 0.221222,
		39.344551, 34.041542, 26.498903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047173, 34.294109, 25.648254>,  <38.842415, 34.504009, 26.344048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047173, 34.294109, 25.648254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232090, 34.023605, 25.877676>,  <39.343040, 33.861305, 26.015329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232090, 34.023605, 25.877676>,  <39.047173, 34.294109, 25.648254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232090, 34.023605, 25.877676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341753, -0.460970, -0.818970,
		0.818225, 0.574616, 0.018011,
		0.462291, -0.676256, 0.573554,
		39.370777, 33.820728, 26.049742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786350, 34.035603, 25.327106>,  <39.047173, 34.294109, 25.648254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786350, 34.035603, 25.327106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657974, 33.766426, 25.593685>,  <39.580948, 33.604919, 25.753632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657974, 33.766426, 25.593685>,  <39.786350, 34.035603, 25.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657974, 33.766426, 25.593685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154064, -0.731390, -0.664329,
		0.934486, -0.110533, 0.338406,
		-0.320937, -0.672942, 0.666444,
		39.561691, 33.564545, 25.793619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316563, 33.401936, 25.313751>,  <39.786350, 34.035603, 25.327106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316563, 33.401936, 25.313751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967377, 33.285801, 25.470535>,  <39.757866, 33.216122, 25.564606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967377, 33.285801, 25.470535>,  <40.316563, 33.401936, 25.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967377, 33.285801, 25.470535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033854, -0.765559, -0.642474,
		0.486601, -0.574129, 0.658480,
		-0.872968, -0.290337, 0.391958,
		39.705486, 33.198700, 25.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480061, 32.728939, 25.506607>,  <40.316563, 33.401936, 25.313751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480061, 32.728939, 25.506607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089001, 32.770130, 25.433300>,  <39.854362, 32.794846, 25.389315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089001, 32.770130, 25.433300>,  <40.480061, 32.728939, 25.506607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089001, 32.770130, 25.433300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033667, -0.783842, -0.620047,
		-0.207506, -0.612361, 0.762860,
		-0.977654, 0.102981, -0.183269,
		39.795704, 32.801025, 25.378319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194332, 32.115368, 25.593473>,  <40.480061, 32.728939, 25.506607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194332, 32.115368, 25.593473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928135, 32.310810, 25.367771>,  <39.768417, 32.428078, 25.232349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928135, 32.310810, 25.367771>,  <40.194332, 32.115368, 25.593473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928135, 32.310810, 25.367771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103677, -0.809146, -0.578388,
		-0.739172, -0.326411, 0.589136,
		-0.665490, 0.488608, -0.564257,
		39.728489, 32.457394, 25.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597641, 31.659973, 25.571951>,  <40.194332, 32.115368, 25.593473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597641, 31.659973, 25.571951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568722, 31.910469, 25.261442>,  <39.551373, 32.060768, 25.075136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568722, 31.910469, 25.261442>,  <39.597641, 31.659973, 25.571951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568722, 31.910469, 25.261442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137102, -0.777159, -0.614188,
		-0.987915, 0.062027, 0.142042,
		-0.072293, 0.626240, -0.776271,
		39.547035, 32.098343, 25.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069057, 31.369488, 25.181911>,  <39.597641, 31.659973, 25.571951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069057, 31.369488, 25.181911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261772, 31.621637, 24.938435>,  <39.377403, 31.772926, 24.792349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261772, 31.621637, 24.938435>,  <39.069057, 31.369488, 25.181911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261772, 31.621637, 24.938435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060930, -0.668849, -0.740897,
		-0.874166, 0.394045, -0.283836,
		0.481790, 0.630373, -0.608694,
		39.406311, 31.810749, 24.755827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715538, 31.412445, 24.553867>,  <39.069057, 31.369488, 25.181911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715538, 31.412445, 24.553867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082340, 31.527773, 24.443609>,  <39.302422, 31.596970, 24.377455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082340, 31.527773, 24.443609>,  <38.715538, 31.412445, 24.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082340, 31.527773, 24.443609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080939, -0.542174, -0.836359,
		-0.390587, 0.789252, -0.473838,
		0.917001, 0.288319, -0.275647,
		39.357441, 31.614269, 24.360914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598434, 31.481821, 23.831062>,  <38.715538, 31.412445, 24.553867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598434, 31.481821, 23.831062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994904, 31.517653, 23.870144>,  <39.232784, 31.539152, 23.893593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994904, 31.517653, 23.870144>,  <38.598434, 31.481821, 23.831062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994904, 31.517653, 23.870144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132215, -0.615383, -0.777060,
		-0.009484, 0.783121, -0.621797,
		0.991176, 0.089580, 0.097704,
		39.292255, 31.544527, 23.899454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915169, 31.786564, 23.187017>,  <38.598434, 31.481821, 23.831062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915169, 31.786564, 23.187017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183407, 31.566483, 23.386045>,  <39.344349, 31.434433, 23.505463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183407, 31.566483, 23.386045>,  <38.915169, 31.786564, 23.187017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183407, 31.566483, 23.386045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168351, -0.540362, -0.824419,
		0.722465, 0.636620, -0.269739,
		0.670599, -0.550203, 0.497569,
		39.384586, 31.401423, 23.535316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430996, 31.601812, 22.703384>,  <38.915169, 31.786564, 23.187017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430996, 31.601812, 22.703384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469589, 31.319019, 22.983631>,  <39.492744, 31.149343, 23.151779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469589, 31.319019, 22.983631>,  <39.430996, 31.601812, 22.703384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469589, 31.319019, 22.983631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312448, -0.646805, -0.695715,
		0.945022, 0.286034, 0.158488,
		0.096487, -0.706985, 0.700616,
		39.498535, 31.106924, 23.193815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989796, 31.265121, 22.529526>,  <39.430996, 31.601812, 22.703384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989796, 31.265121, 22.529526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838463, 30.988838, 22.776031>,  <39.747662, 30.823069, 22.923935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838463, 30.988838, 22.776031>,  <39.989796, 31.265121, 22.529526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838463, 30.988838, 22.776031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582996, -0.694920, -0.420954,
		0.719011, 0.200017, 0.665594,
		-0.378336, -0.690710, 0.616264,
		39.724960, 30.781626, 22.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574810, 30.952833, 22.894123>,  <39.989796, 31.265121, 22.529526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574810, 30.952833, 22.894123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257565, 30.709223, 22.891073>,  <40.067219, 30.563057, 22.889244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257565, 30.709223, 22.891073>,  <40.574810, 30.952833, 22.894123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257565, 30.709223, 22.891073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529876, -0.683760, -0.501701,
		0.300336, -0.401945, 0.865008,
		-0.793114, -0.609026, -0.007624,
		40.019630, 30.526516, 22.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799759, 30.283909, 23.040264>,  <40.574810, 30.952833, 22.894123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799759, 30.283909, 23.040264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439316, 30.203499, 22.886597>,  <40.223049, 30.155252, 22.794397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439316, 30.203499, 22.886597>,  <40.799759, 30.283909, 23.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439316, 30.203499, 22.886597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359067, -0.842629, -0.401306,
		-0.243037, -0.499564, 0.831486,
		-0.901112, -0.201027, -0.384167,
		40.168983, 30.143190, 22.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670540, 29.560863, 23.060139>,  <40.799759, 30.283909, 23.040264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670540, 29.560863, 23.060139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404514, 29.637012, 22.771292>,  <40.244900, 29.682701, 22.597984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404514, 29.637012, 22.771292>,  <40.670540, 29.560863, 23.060139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404514, 29.637012, 22.771292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227071, -0.869627, -0.438391,
		-0.711431, -0.455528, 0.535126,
		-0.665060, 0.190373, -0.722117,
		40.204998, 29.694124, 22.554657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364468, 28.841204, 22.948542>,  <40.670540, 29.560863, 23.060139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364468, 28.841204, 22.948542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297112, 29.086414, 22.639778>,  <40.256699, 29.233541, 22.454519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297112, 29.086414, 22.639778>,  <40.364468, 28.841204, 22.948542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297112, 29.086414, 22.639778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110063, -0.766501, -0.632742,
		-0.979556, -0.191507, 0.061600,
		-0.168391, 0.613027, -0.771908,
		40.246593, 29.270323, 22.408205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896286, 28.703327, 23.591805>,  <40.364468, 28.841204, 22.948542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896286, 28.703327, 23.591805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237049, 28.498056, 23.633554>,  <40.441509, 28.374893, 23.658604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237049, 28.498056, 23.633554>,  <39.896286, 28.703327, 23.591805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237049, 28.498056, 23.633554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137925, 0.412142, 0.900620,
		-0.505197, -0.752852, 0.421888,
		0.851911, -0.513179, 0.104375,
		40.492622, 28.344103, 23.664867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883511, 28.533545, 24.292555>,  <39.896286, 28.703327, 23.591805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883511, 28.533545, 24.292555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262135, 28.497124, 24.168791>,  <40.489307, 28.475271, 24.094532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262135, 28.497124, 24.168791>,  <39.883511, 28.533545, 24.292555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262135, 28.497124, 24.168791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321332, 0.348719, 0.880421,
		0.027734, -0.932794, 0.359341,
		0.946560, -0.091051, -0.309408,
		40.546104, 28.469809, 24.075968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292850, 28.245384, 24.964952>,  <39.883511, 28.533545, 24.292555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292850, 28.245384, 24.964952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554878, 28.410130, 24.711576>,  <40.712097, 28.508976, 24.559551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554878, 28.410130, 24.711576>,  <40.292850, 28.245384, 24.964952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554878, 28.410130, 24.711576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413741, 0.505965, 0.756848,
		0.632217, -0.757870, 0.161039,
		0.655072, 0.411864, -0.633441,
		40.751400, 28.533688, 24.521544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016502, 28.068247, 25.230343>,  <40.292850, 28.245384, 24.964952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016502, 28.068247, 25.230343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056438, 28.383564, 24.987484>,  <41.080399, 28.572754, 24.841768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056438, 28.383564, 24.987484>,  <41.016502, 28.068247, 25.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056438, 28.383564, 24.987484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500944, 0.487400, 0.715190,
		0.859702, -0.375550, -0.346230,
		0.099837, 0.788292, -0.607148,
		41.086391, 28.620052, 24.805340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638069, 28.315569, 25.469175>,  <41.016502, 28.068247, 25.230343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638069, 28.315569, 25.469175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455601, 28.609426, 25.268297>,  <41.346119, 28.785742, 25.147770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455601, 28.609426, 25.268297>,  <41.638069, 28.315569, 25.469175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455601, 28.609426, 25.268297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382513, 0.671417, 0.634731,
		0.803485, 0.097451, -0.587294,
		-0.456175, 0.734644, -0.502198,
		41.318748, 28.829821, 25.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077347, 28.842505, 25.581367>,  <41.638069, 28.315569, 25.469175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077347, 28.842505, 25.581367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734459, 29.001749, 25.450714>,  <41.528728, 29.097296, 25.372322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734459, 29.001749, 25.450714>,  <42.077347, 28.842505, 25.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734459, 29.001749, 25.450714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171983, 0.819198, 0.547116,
		0.485388, 0.412822, -0.770699,
		-0.857216, 0.398111, -0.326631,
		41.477295, 29.121181, 25.352724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224274, 29.499981, 25.346931>,  <42.077347, 28.842505, 25.581367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224274, 29.499981, 25.346931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833397, 29.496988, 25.431816>,  <41.598869, 29.495193, 25.482746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833397, 29.496988, 25.431816>,  <42.224274, 29.499981, 25.346931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833397, 29.496988, 25.431816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159256, 0.635209, 0.755743,
		-0.140451, 0.772304, -0.619532,
		-0.977196, -0.007481, 0.212209,
		41.540237, 29.494743, 25.495480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155033, 30.179688, 25.526011>,  <42.224274, 29.499981, 25.346931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155033, 30.179688, 25.526011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821308, 29.996199, 25.648315>,  <41.621071, 29.886105, 25.721699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821308, 29.996199, 25.648315>,  <42.155033, 30.179688, 25.526011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821308, 29.996199, 25.648315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193994, 0.763454, 0.616039,
		-0.516027, 0.454655, -0.725951,
		-0.834316, -0.458723, 0.305763,
		41.571014, 29.858582, 25.740044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709694, 30.651733, 25.623680>,  <42.155033, 30.179688, 25.526011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709694, 30.651733, 25.623680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529118, 30.364082, 25.834984>,  <41.420773, 30.191492, 25.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529118, 30.364082, 25.834984>,  <41.709694, 30.651733, 25.623680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529118, 30.364082, 25.834984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222423, 0.664020, 0.713867,
		-0.864136, 0.204771, -0.459715,
		-0.451439, -0.719129, 0.528258,
		41.393684, 30.148344, 25.993462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001663, 30.929518, 25.889973>,  <41.709694, 30.651733, 25.623680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001663, 30.929518, 25.889973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116539, 30.626539, 26.124510>,  <41.185463, 30.444752, 26.265232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116539, 30.626539, 26.124510>,  <41.001663, 30.929518, 25.889973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116539, 30.626539, 26.124510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318353, 0.501855, 0.804234,
		-0.903424, -0.417630, -0.097009,
		0.287188, -0.757448, 0.586342,
		41.202694, 30.399305, 26.300413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481197, 30.755993, 26.421234>,  <41.001663, 30.929518, 25.889973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481197, 30.755993, 26.421234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813431, 30.593594, 26.573709>,  <41.012772, 30.496153, 26.665194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813431, 30.593594, 26.573709>,  <40.481197, 30.755993, 26.421234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813431, 30.593594, 26.573709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193724, 0.431092, 0.881266,
		-0.522120, -0.805806, 0.279404,
		0.830579, -0.405999, 0.381186,
		41.062603, 30.471794, 26.688065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227531, 30.404320, 27.018681>,  <40.481197, 30.755993, 26.421234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227531, 30.404320, 27.018681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618088, 30.474646, 27.068867>,  <40.852421, 30.516842, 27.098978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618088, 30.474646, 27.068867>,  <40.227531, 30.404320, 27.018681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618088, 30.474646, 27.068867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197238, 0.489020, 0.849680,
		0.088032, -0.854370, 0.512155,
		0.976395, 0.175815, 0.125465,
		40.911007, 30.527390, 27.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217854, 30.375891, 27.724403>,  <40.227531, 30.404320, 27.018681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217854, 30.375891, 27.724403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564022, 30.550179, 27.625454>,  <40.771725, 30.654751, 27.566084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564022, 30.550179, 27.625454>,  <40.217854, 30.375891, 27.724403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564022, 30.550179, 27.625454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012726, 0.512673, 0.858490,
		0.500882, -0.739808, 0.449223,
		0.865422, 0.435719, -0.247374,
		40.823647, 30.680895, 27.551241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536560, 30.272522, 28.340782>,  <40.217854, 30.375891, 27.724403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536560, 30.272522, 28.340782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709641, 30.577879, 28.148951>,  <40.813488, 30.761093, 28.033852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709641, 30.577879, 28.148951>,  <40.536560, 30.272522, 28.340782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709641, 30.577879, 28.148951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052225, 0.552290, 0.832014,
		0.900023, -0.334969, 0.278846,
		0.432703, 0.763394, -0.479580,
		40.839451, 30.806898, 28.005077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990005, 30.488113, 28.758318>,  <40.536560, 30.272522, 28.340782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990005, 30.488113, 28.758318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978737, 30.806005, 28.515795>,  <40.971973, 30.996740, 28.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978737, 30.806005, 28.515795>,  <40.990005, 30.488113, 28.758318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978737, 30.806005, 28.515795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200697, 0.598695, 0.775426,
		0.979248, -0.099835, -0.176369,
		-0.028176, 0.794731, -0.606307,
		40.970284, 31.044424, 28.333902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575157, 30.927544, 28.894085>,  <40.990005, 30.488113, 28.758318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575157, 30.927544, 28.894085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350948, 31.199701, 28.705244>,  <41.216423, 31.362995, 28.591940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350948, 31.199701, 28.705244>,  <41.575157, 30.927544, 28.894085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350948, 31.199701, 28.705244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235830, 0.677613, 0.696580,
		0.793853, 0.279111, -0.540273,
		-0.560520, 0.680395, -0.472103,
		41.182793, 31.403820, 28.563614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021446, 31.516504, 28.978052>,  <41.575157, 30.927544, 28.894085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021446, 31.516504, 28.978052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641888, 31.625139, 28.913757>,  <41.414154, 31.690321, 28.875179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641888, 31.625139, 28.913757>,  <42.021446, 31.516504, 28.978052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641888, 31.625139, 28.913757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110118, 0.762250, 0.637847,
		0.295755, 0.587550, -0.753203,
		-0.948896, 0.271588, -0.160739,
		41.357220, 31.706615, 28.865536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991341, 32.273624, 28.881794>,  <42.021446, 31.516504, 28.978052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991341, 32.273624, 28.881794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621613, 32.165977, 28.990026>,  <41.399776, 32.101391, 29.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621613, 32.165977, 28.990026>,  <41.991341, 32.273624, 28.881794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621613, 32.165977, 28.990026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026985, 0.753341, 0.657076,
		-0.380666, 0.600046, -0.703589,
		-0.924318, -0.269113, 0.270580,
		41.344318, 32.085243, 29.071199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541088, 32.912560, 28.775906>,  <41.991341, 32.273624, 28.881794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541088, 32.912560, 28.775906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330399, 32.686035, 29.029472>,  <41.203983, 32.550121, 29.181612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330399, 32.686035, 29.029472>,  <41.541088, 32.912560, 28.775906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330399, 32.686035, 29.029472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212919, 0.809879, 0.546591,
		-0.822938, 0.152929, -0.547162,
		-0.526724, -0.566312, 0.633919,
		41.172382, 32.516140, 29.219648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873417, 33.320343, 28.864782>,  <41.541088, 32.912560, 28.775906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873417, 33.320343, 28.864782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930397, 33.038250, 29.142590>,  <40.964584, 32.868996, 29.309275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930397, 33.038250, 29.142590>,  <40.873417, 33.320343, 28.864782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930397, 33.038250, 29.142590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407034, 0.597862, 0.690569,
		-0.902237, -0.381065, -0.201887,
		0.142451, -0.705231, 0.694519,
		40.973133, 32.826679, 29.350945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269295, 33.337589, 29.221682>,  <40.873417, 33.320343, 28.864782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269295, 33.337589, 29.221682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533531, 33.190781, 29.483648>,  <40.692074, 33.102695, 29.640827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533531, 33.190781, 29.483648>,  <40.269295, 33.337589, 29.221682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533531, 33.190781, 29.483648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421170, 0.540973, 0.727986,
		-0.621478, -0.756732, 0.202784,
		0.660591, -0.367021, 0.654916,
		40.731709, 33.080673, 29.680122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937908, 33.257069, 29.745424>,  <40.269295, 33.337589, 29.221682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937908, 33.257069, 29.745424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305561, 33.255814, 29.903002>,  <40.526154, 33.255062, 29.997549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305561, 33.255814, 29.903002>,  <39.937908, 33.257069, 29.745424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305561, 33.255814, 29.903002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339575, 0.500648, 0.796266,
		-0.199726, -0.865645, 0.459095,
		0.919129, -0.003138, 0.393944,
		40.581299, 33.254871, 30.021185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755882, 33.535934, 30.376032>,  <39.937908, 33.257069, 29.745424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755882, 33.535934, 30.376032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154835, 33.509514, 30.364292>,  <40.394207, 33.493660, 30.357248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154835, 33.509514, 30.364292>,  <39.755882, 33.535934, 30.376032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154835, 33.509514, 30.364292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069753, 0.773135, 0.630394,
		-0.018951, -0.630792, 0.775720,
		0.997384, -0.066056, -0.029348,
		40.454048, 33.489697, 30.355488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019192, 33.472416, 31.072029>,  <39.755882, 33.535934, 30.376032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019192, 33.472416, 31.072029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304256, 33.643688, 30.849756>,  <40.475296, 33.746452, 30.716393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304256, 33.643688, 30.849756>,  <40.019192, 33.472416, 31.072029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304256, 33.643688, 30.849756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019370, 0.803831, 0.594543,
		0.701245, -0.412942, 0.581150,
		0.712657, 0.428177, -0.555683,
		40.518055, 33.772141, 30.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523731, 33.676620, 31.479494>,  <40.019192, 33.472416, 31.072029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523731, 33.676620, 31.479494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569550, 33.911865, 31.159243>,  <40.597042, 34.053013, 30.967093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569550, 33.911865, 31.159243>,  <40.523731, 33.676620, 31.479494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569550, 33.911865, 31.159243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034490, 0.807802, 0.588444,
		0.992819, -0.039792, 0.112817,
		0.114549, 0.588109, -0.800629,
		40.603916, 34.088299, 30.919054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951599, 34.203712, 31.796419>,  <40.523731, 33.676620, 31.479494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951599, 34.203712, 31.796419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782440, 34.334049, 31.458193>,  <40.680943, 34.412251, 31.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782440, 34.334049, 31.458193>,  <40.951599, 34.203712, 31.796419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782440, 34.334049, 31.458193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044753, 0.924465, 0.378631,
		0.905070, 0.197966, -0.376375,
		-0.422902, 0.325844, -0.845565,
		40.655571, 34.431801, 31.204523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294991, 34.715275, 31.524958>,  <40.951599, 34.203712, 31.796419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294991, 34.715275, 31.524958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916401, 34.792149, 31.421227>,  <40.689247, 34.838272, 31.358988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916401, 34.792149, 31.421227>,  <41.294991, 34.715275, 31.524958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916401, 34.792149, 31.421227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032595, 0.856227, 0.515571,
		0.321128, 0.479522, -0.816661,
		-0.946475, 0.192184, -0.259328,
		40.632458, 34.849804, 31.343428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368645, 35.429295, 31.413017>,  <41.294991, 34.715275, 31.524958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368645, 35.429295, 31.413017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986378, 35.330967, 31.477850>,  <40.757019, 35.271969, 31.516750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986378, 35.330967, 31.477850>,  <41.368645, 35.429295, 31.413017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986378, 35.330967, 31.477850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034890, 0.641125, 0.766643,
		-0.292371, 0.727002, -0.621279,
		-0.955668, -0.245821, 0.162081,
		40.699677, 35.257221, 31.526474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096878, 35.995041, 31.519859>,  <41.368645, 35.429295, 31.413017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096878, 35.995041, 31.519859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843998, 35.742962, 31.700159>,  <40.692268, 35.591713, 31.808338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843998, 35.742962, 31.700159>,  <41.096878, 35.995041, 31.519859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843998, 35.742962, 31.700159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117749, 0.653146, 0.748021,
		-0.765805, 0.419825, -0.487125,
		-0.632201, -0.630197, 0.450748,
		40.654339, 35.553902, 31.835382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597607, 36.440826, 31.795860>,  <41.096878, 35.995041, 31.519859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597607, 36.440826, 31.795860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571526, 36.100445, 32.004333>,  <40.555878, 35.896217, 32.129417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571526, 36.100445, 32.004333>,  <40.597607, 36.440826, 31.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571526, 36.100445, 32.004333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345834, 0.509192, 0.788113,
		-0.936028, -0.128857, -0.327488,
		-0.065200, -0.850952, 0.521181,
		40.551964, 35.845158, 32.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959778, 36.540298, 32.145508>,  <40.597607, 36.440826, 31.795860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959778, 36.540298, 32.145508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144630, 36.242565, 32.338341>,  <40.255543, 36.063927, 32.454041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144630, 36.242565, 32.338341>,  <39.959778, 36.540298, 32.145508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144630, 36.242565, 32.338341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293043, 0.384898, 0.875202,
		-0.836995, -0.545729, -0.040249,
		0.462131, -0.744334, 0.482080,
		40.283268, 36.019264, 32.482964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456978, 36.214088, 32.590561>,  <39.959778, 36.540298, 32.145508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456978, 36.214088, 32.590561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811134, 36.089474, 32.728561>,  <40.023628, 36.014706, 32.811359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811134, 36.089474, 32.728561>,  <39.456978, 36.214088, 32.590561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811134, 36.089474, 32.728561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288013, 0.214895, 0.933204,
		-0.364870, -0.925615, 0.100538,
		0.885392, -0.311541, 0.344998,
		40.076752, 35.996010, 32.832062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283531, 35.926991, 33.251011>,  <39.456978, 36.214088, 32.590561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283531, 35.926991, 33.251011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676811, 35.998920, 33.263523>,  <39.912781, 36.042080, 33.271030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676811, 35.998920, 33.263523>,  <39.283531, 35.926991, 33.251011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676811, 35.998920, 33.263523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065650, 0.188464, 0.979883,
		0.170313, -0.965476, 0.197104,
		0.983201, 0.179827, 0.031286,
		39.971771, 36.052868, 33.272907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491638, 35.630192, 33.859146>,  <39.283531, 35.926991, 33.251011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491638, 35.630192, 33.859146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783123, 35.889481, 33.770794>,  <39.958012, 36.045055, 33.717781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783123, 35.889481, 33.770794>,  <39.491638, 35.630192, 33.859146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783123, 35.889481, 33.770794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033143, 0.355541, 0.934073,
		0.684023, -0.673345, 0.280569,
		0.728707, 0.648227, -0.220881,
		40.001736, 36.083950, 33.704529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079586, 35.573063, 34.393257>,  <39.491638, 35.630192, 33.859146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079586, 35.573063, 34.393257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094006, 35.929718, 34.212730>,  <40.102657, 36.143711, 34.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094006, 35.929718, 34.212730>,  <40.079586, 35.573063, 34.393257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094006, 35.929718, 34.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020201, 0.450870, 0.892361,
		0.999146, -0.041282, -0.001760,
		0.036046, 0.891635, -0.451319,
		40.104820, 36.197208, 34.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400505, 35.924137, 34.838020>,  <40.079586, 35.573063, 34.393257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400505, 35.924137, 34.838020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305958, 36.242775, 34.615467>,  <40.249229, 36.433956, 34.481934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305958, 36.242775, 34.615467>,  <40.400505, 35.924137, 34.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305958, 36.242775, 34.615467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014285, 0.575401, 0.817747,
		0.971558, 0.185343, -0.147387,
		-0.236371, 0.796594, -0.556388,
		40.235046, 36.481754, 34.448551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780285, 36.457077, 35.118645>,  <40.400505, 35.924137, 34.838020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780285, 36.457077, 35.118645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472008, 36.607296, 34.912735>,  <40.287041, 36.697430, 34.789188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472008, 36.607296, 34.912735>,  <40.780285, 36.457077, 35.118645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472008, 36.607296, 34.912735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221269, 0.599863, 0.768898,
		0.597554, 0.706489, -0.379213,
		-0.770694, 0.375550, -0.514775,
		40.240799, 36.719959, 34.758301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900368, 37.243553, 34.998150>,  <40.780285, 36.457077, 35.118645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900368, 37.243553, 34.998150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510242, 37.192841, 34.925827>,  <40.276169, 37.162415, 34.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510242, 37.192841, 34.925827>,  <40.900368, 37.243553, 34.998150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510242, 37.192841, 34.925827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220140, 0.493507, 0.841421,
		-0.017446, 0.860452, -0.509233,
		-0.975312, -0.126782, -0.180811,
		40.217648, 37.154804, 34.871582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587822, 37.927692, 34.899426>,  <40.900368, 37.243553, 34.998150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587822, 37.927692, 34.899426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290165, 37.688290, 35.018108>,  <40.111568, 37.544647, 35.089317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290165, 37.688290, 35.018108>,  <40.587822, 37.927692, 34.899426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290165, 37.688290, 35.018108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192746, 0.617640, 0.762476,
		-0.639605, 0.510206, -0.574975,
		-0.744147, -0.598507, 0.296705,
		40.066921, 37.508736, 35.107121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040382, 38.315266, 34.912003>,  <40.587822, 37.927692, 34.899426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040382, 38.315266, 34.912003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919106, 38.015049, 35.146870>,  <39.846340, 37.834919, 35.287788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919106, 38.015049, 35.146870>,  <40.040382, 38.315266, 34.912003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919106, 38.015049, 35.146870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356552, 0.660761, 0.660504,
		-0.883712, -0.009098, -0.467943,
		-0.303189, -0.750542, 0.587166,
		39.828148, 37.789886, 35.323021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523308, 38.636738, 35.235455>,  <40.040382, 38.315266, 34.912003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523308, 38.636738, 35.235455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607788, 38.323322, 35.469193>,  <39.658474, 38.135273, 35.609436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607788, 38.323322, 35.469193>,  <39.523308, 38.636738, 35.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607788, 38.323322, 35.469193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341094, 0.501168, 0.795290,
		-0.915997, -0.367279, -0.161416,
		0.211197, -0.783541, 0.584345,
		39.671146, 38.088261, 35.644497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941433, 38.633980, 35.700397>,  <39.523308, 38.636738, 35.235455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941433, 38.633980, 35.700397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250324, 38.431660, 35.854195>,  <39.435658, 38.310268, 35.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250324, 38.431660, 35.854195>,  <38.941433, 38.633980, 35.700397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250324, 38.431660, 35.854195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255890, 0.306311, 0.916894,
		-0.581540, -0.806436, 0.107112,
		0.772225, -0.505801, 0.384491,
		39.481991, 38.279919, 35.969543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787689, 38.313389, 36.309586>,  <38.941433, 38.633980, 35.700397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787689, 38.313389, 36.309586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185638, 38.309776, 36.349892>,  <39.424408, 38.307610, 36.374077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185638, 38.309776, 36.349892>,  <38.787689, 38.313389, 36.309586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185638, 38.309776, 36.349892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096571, 0.212129, 0.972458,
		-0.030158, -0.977200, 0.210168,
		0.994869, -0.009032, 0.100767,
		39.484100, 38.307068, 36.380123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922653, 37.967793, 36.987450>,  <38.787689, 38.313389, 36.309586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922653, 37.967793, 36.987450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209419, 38.222893, 36.874805>,  <39.381481, 38.375954, 36.807220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209419, 38.222893, 36.874805>,  <38.922653, 37.967793, 36.987450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209419, 38.222893, 36.874805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002910, 0.406677, 0.913567,
		0.697151, -0.654134, 0.293410,
		0.716919, 0.637748, -0.281611,
		39.424496, 38.414219, 36.790321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474503, 37.857861, 37.481079>,  <38.922653, 37.967793, 36.987450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474503, 37.857861, 37.481079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593723, 38.193657, 37.299343>,  <39.665257, 38.395134, 37.190300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593723, 38.193657, 37.299343>,  <39.474503, 37.857861, 37.481079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593723, 38.193657, 37.299343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235060, 0.396768, 0.887312,
		0.925155, -0.371263, -0.079072,
		0.298053, 0.839487, -0.454341,
		39.683140, 38.445503, 37.163040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055641, 38.072586, 37.868031>,  <39.474503, 37.857861, 37.481079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055641, 38.072586, 37.868031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944290, 38.403519, 37.672874>,  <39.877480, 38.602077, 37.555782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944290, 38.403519, 37.672874>,  <40.055641, 38.072586, 37.868031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944290, 38.403519, 37.672874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254139, 0.553308, 0.793261,
		0.926239, 0.096836, -0.364286,
		-0.278379, 0.827329, -0.487886,
		39.860775, 38.651718, 37.526508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648254, 38.525753, 37.820889>,  <40.055641, 38.072586, 37.868031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648254, 38.525753, 37.820889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316547, 38.748566, 37.802811>,  <40.117523, 38.882252, 37.791965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316547, 38.748566, 37.802811>,  <40.648254, 38.525753, 37.820889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316547, 38.748566, 37.802811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262427, 0.459522, 0.848511,
		0.493411, 0.691780, -0.527244,
		-0.829263, 0.557028, -0.045191,
		40.067768, 38.915672, 37.789253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897373, 39.182682, 37.844704>,  <40.648254, 38.525753, 37.820889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897373, 39.182682, 37.844704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508781, 39.179501, 37.939507>,  <40.275627, 39.177593, 37.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508781, 39.179501, 37.939507>,  <40.897373, 39.182682, 37.844704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508781, 39.179501, 37.939507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192264, 0.558636, 0.806821,
		-0.138814, 0.829375, -0.541172,
		-0.971476, -0.007950, 0.237006,
		40.217339, 39.177116, 38.010609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771328, 39.856312, 38.054493>,  <40.897373, 39.182682, 37.844704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771328, 39.856312, 38.054493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465935, 39.653782, 38.214859>,  <40.282700, 39.532265, 38.311077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465935, 39.653782, 38.214859>,  <40.771328, 39.856312, 38.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465935, 39.653782, 38.214859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201878, 0.402561, 0.892855,
		-0.613464, 0.762615, -0.205133,
		-0.763484, -0.506322, 0.400912,
		40.236889, 39.501884, 38.335133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487320, 40.331146, 38.483723>,  <40.771328, 39.856312, 38.054493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487320, 40.331146, 38.483723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385979, 39.970493, 38.623932>,  <40.325172, 39.754101, 38.708057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385979, 39.970493, 38.623932>,  <40.487320, 40.331146, 38.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385979, 39.970493, 38.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098803, 0.336329, 0.936547,
		-0.962315, 0.271911, 0.003873,
		-0.253355, -0.901636, 0.350520,
		40.309971, 39.700001, 38.729088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091267, 40.438293, 39.086533>,  <40.487320, 40.331146, 38.483723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091267, 40.438293, 39.086533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167805, 40.047882, 39.128017>,  <40.213726, 39.813637, 39.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167805, 40.047882, 39.128017>,  <40.091267, 40.438293, 39.086533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167805, 40.047882, 39.128017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168867, 0.136822, 0.976096,
		-0.966888, -0.169257, 0.190999,
		0.191344, -0.976029, 0.103710,
		40.225208, 39.755074, 39.159130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831001, 40.207458, 39.833099>,  <40.091267, 40.438293, 39.086533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831001, 40.207458, 39.833099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076256, 39.913422, 39.717377>,  <40.223408, 39.737000, 39.647942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076256, 39.913422, 39.717377>,  <39.831001, 40.207458, 39.833099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076256, 39.913422, 39.717377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346414, -0.078942, 0.934754,
		-0.709973, -0.673351, 0.206246,
		0.613136, -0.735096, -0.289305,
		40.260197, 39.692894, 39.630585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778103, 39.719810, 40.357224>,  <39.831001, 40.207458, 39.833099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778103, 39.719810, 40.357224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122246, 39.636028, 40.171356>,  <40.328732, 39.585758, 40.059834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122246, 39.636028, 40.171356>,  <39.778103, 39.719810, 40.357224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122246, 39.636028, 40.171356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423603, -0.213179, 0.880406,
		-0.283464, -0.954297, -0.094683,
		0.860354, -0.209456, -0.464671,
		40.380352, 39.573193, 40.031956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050140, 38.979534, 40.540428>,  <39.778103, 39.719810, 40.357224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050140, 38.979534, 40.540428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335407, 39.247746, 40.458668>,  <40.506569, 39.408672, 40.409611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335407, 39.247746, 40.458668>,  <40.050140, 38.979534, 40.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335407, 39.247746, 40.458668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522009, -0.313390, 0.793280,
		0.467863, -0.672440, -0.573523,
		0.713170, 0.670531, -0.204396,
		40.549358, 39.448906, 40.397350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670105, 38.757751, 40.838860>,  <40.050140, 38.979534, 40.540428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670105, 38.757751, 40.838860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773685, 39.138210, 40.771610>,  <40.835835, 39.366486, 40.731262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773685, 39.138210, 40.771610>,  <40.670105, 38.757751, 40.838860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773685, 39.138210, 40.771610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450770, 0.034936, 0.891956,
		0.854255, -0.306756, -0.419702,
		0.258950, 0.951147, -0.168121,
		40.851372, 39.423553, 40.721172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427639, 38.765610, 40.879498>,  <40.670105, 38.757751, 40.838860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427639, 38.765610, 40.879498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262703, 39.122211, 40.954533>,  <41.163742, 39.336174, 40.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262703, 39.122211, 40.954533>,  <41.427639, 38.765610, 40.879498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262703, 39.122211, 40.954533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487057, 0.041714, 0.872373,
		0.769903, 0.451080, -0.451416,
		-0.412340, 0.891508, 0.187586,
		41.139000, 39.389664, 41.010807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977650, 39.135281, 41.257061>,  <41.427639, 38.765610, 40.879498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977650, 39.135281, 41.257061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655560, 39.362278, 41.325840>,  <41.462307, 39.498478, 41.367107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655560, 39.362278, 41.325840>,  <41.977650, 39.135281, 41.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655560, 39.362278, 41.325840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175198, -0.049338, 0.983296,
		0.566498, 0.821898, -0.059696,
		-0.805224, 0.567494, 0.171945,
		41.413994, 39.532528, 41.377422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198948, 39.761238, 41.528790>,  <41.977650, 39.135281, 41.257061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198948, 39.761238, 41.528790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815968, 39.730900, 41.640175>,  <41.586182, 39.712696, 41.707008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815968, 39.730900, 41.640175>,  <42.198948, 39.761238, 41.528790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815968, 39.730900, 41.640175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264888, 0.152157, 0.952199,
		-0.114589, 0.985442, -0.125592,
		-0.957446, -0.075844, 0.278467,
		41.528732, 39.708145, 41.723717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939594, 40.435631, 41.877468>,  <42.198948, 39.761238, 41.528790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939594, 40.435631, 41.877468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702534, 40.131737, 41.984474>,  <41.560299, 39.949398, 42.048679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702534, 40.131737, 41.984474>,  <41.939594, 40.435631, 41.877468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702534, 40.131737, 41.984474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280673, 0.116518, 0.952705,
		-0.754978, 0.639702, 0.144185,
		-0.592647, -0.759740, 0.267515,
		41.524738, 39.903816, 42.064728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442162, 40.621609, 42.485172>,  <41.939594, 40.435631, 41.877468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442162, 40.621609, 42.485172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559311, 40.239227, 42.477390>,  <41.629601, 40.009800, 42.472721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559311, 40.239227, 42.477390>,  <41.442162, 40.621609, 42.485172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559311, 40.239227, 42.477390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395896, 0.102715, 0.912533,
		-0.870340, -0.274959, 0.408540,
		0.292872, -0.955953, -0.019458,
		41.647171, 39.952442, 42.471554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574402, 40.500278, 43.224659>,  <41.442162, 40.621609, 42.485172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574402, 40.500278, 43.224659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725895, 40.175163, 43.047596>,  <41.816792, 39.980095, 42.941360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725895, 40.175163, 43.047596>,  <41.574402, 40.500278, 43.224659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725895, 40.175163, 43.047596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681126, -0.079032, 0.727888,
		-0.626599, -0.577180, 0.523676,
		0.378736, -0.812783, -0.442654,
		41.839516, 39.931328, 42.914799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172909, 40.240295, 43.478394>,  <41.574402, 40.500278, 43.224659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172909, 40.240295, 43.478394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000813, 39.897701, 43.592468>,  <41.897552, 39.692146, 43.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000813, 39.897701, 43.592468>,  <42.172909, 40.240295, 43.478394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000813, 39.897701, 43.592468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152327, -0.242505, -0.958117,
		0.889769, -0.455663, -0.026130,
		-0.430242, -0.856482, 0.285183,
		41.871738, 39.640755, 43.678024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618481, 39.692429, 43.147045>,  <42.172909, 40.240295, 43.478394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618481, 39.692429, 43.147045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234539, 39.607239, 43.220055>,  <42.004173, 39.556126, 43.263859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234539, 39.607239, 43.220055>,  <42.618481, 39.692429, 43.147045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234539, 39.607239, 43.220055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083477, -0.404338, -0.910792,
		0.267779, -0.889467, 0.370328,
		-0.959857, -0.212977, 0.182523,
		41.946583, 39.543346, 43.274811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554798, 39.058552, 42.722000>,  <42.618481, 39.692429, 43.147045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554798, 39.058552, 42.722000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221085, 39.267464, 42.792641>,  <42.020855, 39.392811, 42.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221085, 39.267464, 42.792641>,  <42.554798, 39.058552, 42.722000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221085, 39.267464, 42.792641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334054, -0.224033, -0.915542,
		-0.438603, -0.822821, 0.361377,
		-0.834287, 0.522279, 0.176605,
		41.970798, 39.424149, 42.845623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024662, 38.677124, 42.548824>,  <42.554798, 39.058552, 42.722000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024662, 38.677124, 42.548824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912724, 39.058800, 42.506481>,  <41.845562, 39.287807, 42.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912724, 39.058800, 42.506481>,  <42.024662, 38.677124, 42.548824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912724, 39.058800, 42.506481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354399, -0.205149, -0.912313,
		-0.892237, -0.217792, 0.395575,
		-0.279846, 0.954191, -0.105857,
		41.828770, 39.345058, 42.474724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313839, 38.797150, 42.484310>,  <42.024662, 38.677124, 42.548824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313839, 38.797150, 42.484310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494881, 39.096550, 42.290443>,  <41.603504, 39.276188, 42.174122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494881, 39.096550, 42.290443>,  <41.313839, 38.797150, 42.484310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494881, 39.096550, 42.290443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553639, -0.190201, -0.810745,
		-0.699024, 0.635277, 0.328311,
		0.452602, 0.748496, -0.484669,
		41.630661, 39.321098, 42.145042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676430, 38.987431, 42.450867>,  <41.313839, 38.797150, 42.484310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676430, 38.987431, 42.450867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929115, 39.277134, 42.340317>,  <41.080727, 39.450954, 42.273987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929115, 39.277134, 42.340317>,  <40.676430, 38.987431, 42.450867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929115, 39.277134, 42.340317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376019, -0.025483, -0.926262,
		-0.677895, 0.689058, 0.256237,
		0.631719, 0.724258, -0.276373,
		41.118629, 39.494411, 42.257404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244236, 39.474613, 42.014057>,  <40.676430, 38.987431, 42.450867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244236, 39.474613, 42.014057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625694, 39.561714, 41.930973>,  <40.854568, 39.613976, 41.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625694, 39.561714, 41.930973>,  <40.244236, 39.474613, 42.014057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625694, 39.561714, 41.930973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254265, 0.213848, -0.943196,
		-0.160968, 0.952287, 0.259303,
		0.953645, 0.217756, -0.207710,
		40.911789, 39.627041, 41.868660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204868, 40.077904, 41.631226>,  <40.244236, 39.474613, 42.014057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204868, 40.077904, 41.631226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560276, 39.912975, 41.550709>,  <40.773521, 39.814018, 41.502399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560276, 39.912975, 41.550709>,  <40.204868, 40.077904, 41.631226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560276, 39.912975, 41.550709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072141, 0.307712, -0.948741,
		0.453126, 0.857499, 0.243664,
		0.888523, -0.412321, -0.201293,
		40.826832, 39.789280, 41.490322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625648, 40.523266, 41.210491>,  <40.204868, 40.077904, 41.631226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625648, 40.523266, 41.210491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773598, 40.163666, 41.116692>,  <40.862366, 39.947906, 41.060413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773598, 40.163666, 41.116692>,  <40.625648, 40.523266, 41.210491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773598, 40.163666, 41.116692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016877, 0.258855, -0.965769,
		0.928929, 0.353255, 0.110916,
		0.369874, -0.899002, -0.234496,
		40.884560, 39.893967, 41.046341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089687, 40.726063, 40.662685>,  <40.625648, 40.523266, 41.210491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089687, 40.726063, 40.662685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014400, 40.333332, 40.652939>,  <40.969227, 40.097694, 40.647091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014400, 40.333332, 40.652939>,  <41.089687, 40.726063, 40.662685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014400, 40.333332, 40.652939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117553, 0.047155, -0.991946,
		0.975067, -0.183838, -0.124292,
		-0.188218, -0.981825, -0.024368,
		40.957935, 40.038784, 40.645630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354549, 40.487614, 40.015759>,  <41.089687, 40.726063, 40.662685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354549, 40.487614, 40.015759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124695, 40.182358, 40.134018>,  <40.986782, 39.999203, 40.204975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124695, 40.182358, 40.134018>,  <41.354549, 40.487614, 40.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124695, 40.182358, 40.134018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441119, -0.015473, -0.897316,
		0.689355, -0.646044, -0.327745,
		-0.574634, -0.763143, 0.295648,
		40.952305, 39.953415, 40.222713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237587, 39.964989, 39.415028>,  <41.354549, 40.487614, 40.015759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237587, 39.964989, 39.415028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943394, 39.910694, 39.680553>,  <40.766880, 39.878117, 39.839867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943394, 39.910694, 39.680553>,  <41.237587, 39.964989, 39.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943394, 39.910694, 39.680553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641070, -0.177720, -0.746622,
		0.219314, -0.974675, 0.043695,
		-0.735479, -0.135733, 0.663812,
		40.722752, 39.869976, 39.879696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468929, 39.248623, 39.278599>,  <41.237587, 39.964989, 39.415028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468929, 39.248623, 39.278599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159252, 39.337200, 39.515781>,  <40.973446, 39.390347, 39.658092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159252, 39.337200, 39.515781>,  <41.468929, 39.248623, 39.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159252, 39.337200, 39.515781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623034, -0.101386, -0.775596,
		-0.111650, -0.969884, 0.216471,
		-0.774185, 0.221464, 0.592951,
		40.926994, 39.403633, 39.693668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028446, 38.692871, 39.219120>,  <41.468929, 39.248623, 39.278599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028446, 38.692871, 39.219120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803925, 38.992546, 39.359779>,  <40.669212, 39.172352, 39.444176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803925, 38.992546, 39.359779>,  <41.028446, 38.692871, 39.219120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803925, 38.992546, 39.359779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692910, -0.193069, -0.694695,
		-0.452565, -0.633594, 0.627490,
		-0.561303, 0.749188, 0.351647,
		40.635532, 39.217304, 39.465275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304733, 38.457207, 39.298321>,  <41.028446, 38.692871, 39.219120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304733, 38.457207, 39.298321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300453, 38.853493, 39.244110>,  <40.297886, 39.091263, 39.211582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300453, 38.853493, 39.244110>,  <40.304733, 38.457207, 39.298321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300453, 38.853493, 39.244110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576109, -0.116890, -0.808972,
		-0.817303, 0.069423, 0.572011,
		-0.010701, 0.990715, -0.135530,
		40.297241, 39.150707, 39.203449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680634, 38.649120, 39.017998>,  <40.304733, 38.457207, 39.298321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680634, 38.649120, 39.017998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865555, 38.999008, 38.959843>,  <39.976509, 39.208942, 38.924950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865555, 38.999008, 38.959843>,  <39.680634, 38.649120, 39.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865555, 38.999008, 38.959843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479125, 0.108457, -0.871020,
		-0.746133, 0.472333, 0.469241,
		0.462304, 0.874722, -0.145383,
		40.004246, 39.261425, 38.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168995, 39.177315, 38.899086>,  <39.680634, 38.649120, 39.017998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168995, 39.177315, 38.899086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522110, 39.235481, 38.720409>,  <39.733978, 39.270382, 38.613201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522110, 39.235481, 38.720409>,  <39.168995, 39.177315, 38.899086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522110, 39.235481, 38.720409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445450, -0.042855, -0.894281,
		-0.149186, 0.988442, 0.026944,
		0.882790, 0.145417, -0.446694,
		39.786945, 39.279106, 38.586403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935329, 39.231636, 38.306740>,  <39.168995, 39.177315, 38.899086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935329, 39.231636, 38.306740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325943, 39.228481, 38.220650>,  <39.560310, 39.226589, 38.168995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325943, 39.228481, 38.220650>,  <38.935329, 39.231636, 38.306740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325943, 39.228481, 38.220650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213147, -0.178544, -0.960568,
		-0.030850, 0.983900, -0.176035,
		0.976533, -0.007888, -0.215223,
		39.618904, 39.226116, 38.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967628, 39.564270, 37.702950>,  <38.935329, 39.231636, 38.306740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967628, 39.564270, 37.702950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291321, 39.333515, 37.747410>,  <39.485535, 39.195061, 37.774086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291321, 39.333515, 37.747410>,  <38.967628, 39.564270, 37.702950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291321, 39.333515, 37.747410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111510, -0.336572, -0.935032,
		0.576818, 0.744258, -0.336691,
		0.809226, -0.576888, 0.111149,
		39.534088, 39.160450, 37.780754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345898, 39.702225, 37.074020>,  <38.967628, 39.564270, 37.702950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345898, 39.702225, 37.074020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493591, 39.377190, 37.254402>,  <39.582207, 39.182167, 37.362633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493591, 39.377190, 37.254402>,  <39.345898, 39.702225, 37.074020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493591, 39.377190, 37.254402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256777, -0.377151, -0.889844,
		0.893158, 0.444358, 0.069397,
		0.369236, -0.812591, 0.450956,
		39.604362, 39.133411, 37.389690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873314, 39.520882, 36.483856>,  <39.345898, 39.702225, 37.074020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873314, 39.520882, 36.483856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875469, 39.191715, 36.711109>,  <39.876762, 38.994217, 36.847462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875469, 39.191715, 36.711109>,  <39.873314, 39.520882, 36.483856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875469, 39.191715, 36.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171550, -0.558961, -0.811254,
		0.985161, 0.101836, 0.138158,
		0.005390, -0.822917, 0.568137,
		39.877087, 38.944839, 36.881550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527645, 39.106117, 36.385540>,  <39.873314, 39.520882, 36.483856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527645, 39.106117, 36.385540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236324, 38.873589, 36.530670>,  <40.061531, 38.734070, 36.617748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236324, 38.873589, 36.530670>,  <40.527645, 39.106117, 36.385540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236324, 38.873589, 36.530670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005948, -0.524088, -0.851644,
		0.685235, -0.622409, 0.378234,
		-0.728298, -0.581326, 0.362825,
		40.017834, 38.699192, 36.639519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776566, 38.398567, 36.387474>,  <40.527645, 39.106117, 36.385540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776566, 38.398567, 36.387474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376652, 38.393417, 36.394089>,  <40.136703, 38.390327, 36.398056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376652, 38.393417, 36.394089>,  <40.776566, 38.398567, 36.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376652, 38.393417, 36.394089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004831, -0.626344, -0.779532,
		0.020392, -0.779440, 0.626144,
		-0.999780, -0.012871, 0.016539,
		40.076717, 38.389557, 36.399052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542282, 37.649872, 36.361126>,  <40.776566, 38.398567, 36.387474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542282, 37.649872, 36.361126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203262, 37.839386, 36.265472>,  <39.999851, 37.953094, 36.208080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203262, 37.839386, 36.265472>,  <40.542282, 37.649872, 36.361126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203262, 37.839386, 36.265472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211510, -0.714801, -0.666576,
		-0.486744, -0.514379, 0.706041,
		-0.847552, 0.473787, -0.239129,
		39.948997, 37.981522, 36.193733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981438, 37.140602, 36.452705>,  <40.542282, 37.649872, 36.361126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981438, 37.140602, 36.452705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861900, 37.431400, 36.205425>,  <39.790180, 37.605877, 36.057056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861900, 37.431400, 36.205425>,  <39.981438, 37.140602, 36.452705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861900, 37.431400, 36.205425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219460, -0.682799, -0.696867,
		-0.928726, -0.072580, 0.363593,
		-0.298840, 0.726992, -0.618205,
		39.772247, 37.649498, 36.019962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707703, 36.890221, 36.169224>,  <39.981438, 37.140602, 36.452705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707703, 36.890221, 36.169224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507446, 37.080971, 35.880238>,  <40.387291, 37.195419, 35.706848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507446, 37.080971, 35.880238>,  <40.707703, 36.890221, 36.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507446, 37.080971, 35.880238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812932, 0.545811, -0.203059,
		0.297493, -0.688971, -0.660921,
		-0.500639, 0.476875, -0.722461,
		40.357254, 37.224033, 35.663498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112465, 36.977921, 35.621513>,  <40.707703, 36.890221, 36.169224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112465, 36.977921, 35.621513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872120, 37.296944, 35.642910>,  <40.727913, 37.488358, 35.655746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872120, 37.296944, 35.642910>,  <41.112465, 36.977921, 35.621513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872120, 37.296944, 35.642910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747041, 0.584097, -0.317428,
		-0.284411, -0.150772, -0.946773,
		-0.600867, 0.797558, 0.053491,
		40.691860, 37.536209, 35.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893673, 36.973255, 35.529366>,  <41.112465, 36.977921, 35.621513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893673, 36.973255, 35.529366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819412, 36.653694, 35.300526>,  <41.774857, 36.461960, 35.163223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819412, 36.653694, 35.300526>,  <41.893673, 36.973255, 35.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819412, 36.653694, 35.300526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775998, -0.237967, 0.584121,
		-0.602795, 0.552387, -0.575766,
		-0.185648, -0.798899, -0.572097,
		41.763718, 36.414024, 35.128895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402596, 36.478767, 35.363186>,  <41.893673, 36.973255, 35.529366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402596, 36.478767, 35.363186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074871, 36.249496, 35.368824>,  <41.878239, 36.111935, 35.372208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074871, 36.249496, 35.368824>,  <42.402596, 36.478767, 35.363186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074871, 36.249496, 35.368824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290547, -0.436256, -0.851624,
		0.494284, -0.693647, 0.523964,
		-0.819308, -0.573179, 0.014097,
		41.829079, 36.077541, 35.373055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481232, 35.821449, 35.431145>,  <42.402596, 36.478767, 35.363186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481232, 35.821449, 35.431145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142216, 35.819771, 35.218861>,  <41.938805, 35.818764, 35.091488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142216, 35.819771, 35.218861>,  <42.481232, 35.821449, 35.431145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142216, 35.819771, 35.218861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447410, -0.543525, -0.710214,
		-0.285478, -0.839382, 0.462536,
		-0.847542, -0.004192, -0.530713,
		41.887955, 35.818512, 35.059647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644119, 35.496021, 34.719345>,  <42.481232, 35.821449, 35.431145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644119, 35.496021, 34.719345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472290, 35.146206, 34.809372>,  <42.369190, 34.936317, 34.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472290, 35.146206, 34.809372>,  <42.644119, 35.496021, 34.719345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472290, 35.146206, 34.809372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766393, -0.484890, -0.421335,
		0.477604, -0.008507, 0.878534,
		-0.429576, -0.874534, 0.225066,
		42.343418, 34.883846, 34.876892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913509, 35.005180, 35.383648>,  <42.644119, 35.496021, 34.719345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913509, 35.005180, 35.383648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757515, 34.802135, 35.076340>,  <42.663918, 34.680309, 34.891953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757515, 34.802135, 35.076340>,  <42.913509, 35.005180, 35.383648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757515, 34.802135, 35.076340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907027, -0.355638, -0.225439,
		-0.158793, -0.784764, 0.599108,
		-0.389982, -0.507610, -0.768275,
		42.640522, 34.649853, 34.845856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983765, 34.260540, 35.476833>,  <42.913509, 35.005180, 35.383648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983765, 34.260540, 35.476833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987564, 34.316566, 35.080795>,  <42.989845, 34.350182, 34.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987564, 34.316566, 35.080795>,  <42.983765, 34.260540, 35.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987564, 34.316566, 35.080795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934485, -0.353627, -0.041057,
		-0.355876, -0.924840, -0.134249,
		0.009503, 0.140065, -0.990097,
		42.990414, 34.358585, 34.783768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259750, 33.690533, 35.150269>,  <42.983765, 34.260540, 35.476833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259750, 33.690533, 35.150269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325218, 33.996212, 34.900723>,  <43.364498, 34.179619, 34.750996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325218, 33.996212, 34.900723>,  <43.259750, 33.690533, 35.150269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325218, 33.996212, 34.900723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891428, -0.385451, -0.238291,
		-0.422573, -0.517133, -0.744316,
		0.163669, 0.764199, -0.623868,
		43.374317, 34.225471, 34.713562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248260, 33.500183, 34.417477>,  <43.259750, 33.690533, 35.150269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248260, 33.500183, 34.417477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469948, 33.812508, 34.532845>,  <43.602959, 33.999901, 34.602066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469948, 33.812508, 34.532845>,  <43.248260, 33.500183, 34.417477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469948, 33.812508, 34.532845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830545, -0.541697, -0.129460,
		0.055153, 0.311295, -0.948712,
		0.554214, 0.780807, 0.288421,
		43.636211, 34.046749, 34.619370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883034, 33.365570, 34.670933>,  <43.248260, 33.500183, 34.417477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883034, 33.365570, 34.670933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943935, 33.597591, 34.350845>,  <43.980476, 33.736805, 34.158791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943935, 33.597591, 34.350845>,  <43.883034, 33.365570, 34.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943935, 33.597591, 34.350845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794117, 0.410214, 0.448444,
		0.588385, -0.703747, -0.398176,
		0.152253, 0.580056, -0.800221,
		43.989613, 33.771606, 34.110779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549728, 33.282204, 34.501167>,  <43.883034, 33.365570, 34.670933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549728, 33.282204, 34.501167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460213, 33.652344, 34.378765>,  <44.406502, 33.874428, 34.305325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460213, 33.652344, 34.378765>,  <44.549728, 33.282204, 34.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460213, 33.652344, 34.378765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836605, 0.343452, 0.426770,
		0.500011, -0.160496, -0.851017,
		-0.223789, 0.925355, -0.306002,
		44.393078, 33.929951, 34.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075092, 33.626804, 34.031643>,  <44.549728, 33.282204, 34.501167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075092, 33.626804, 34.031643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878586, 33.888367, 34.261799>,  <44.760681, 34.045303, 34.399891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878586, 33.888367, 34.261799>,  <45.075092, 33.626804, 34.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878586, 33.888367, 34.261799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870589, 0.348080, 0.347728,
		0.027099, 0.671753, -0.740279,
		-0.491264, 0.653902, 0.575389,
		44.731205, 34.084538, 34.434414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244633, 34.442726, 33.813206>,  <45.075092, 33.626804, 34.031643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244633, 34.442726, 33.813206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113903, 34.371918, 34.184551>,  <45.035465, 34.329433, 34.407356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113903, 34.371918, 34.184551>,  <45.244633, 34.442726, 33.813206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113903, 34.371918, 34.184551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794160, 0.481083, 0.371308,
		-0.512346, 0.858618, -0.016647,
		-0.326820, -0.177018, 0.928360,
		45.015858, 34.318813, 34.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293716, 35.063843, 34.187275>,  <45.244633, 34.442726, 33.813206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293716, 35.063843, 34.187275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320286, 34.763382, 34.449986>,  <45.336227, 34.583107, 34.607613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320286, 34.763382, 34.449986>,  <45.293716, 35.063843, 34.187275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320286, 34.763382, 34.449986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895152, 0.335640, 0.293340,
		-0.440784, 0.568433, 0.694690,
		0.066422, -0.751152, 0.656779,
		45.340214, 34.538036, 34.647018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599876, 35.363640, 34.915688>,  <45.293716, 35.063843, 34.187275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599876, 35.363640, 34.915688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658409, 34.970860, 34.867752>,  <45.693527, 34.735191, 34.838989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658409, 34.970860, 34.867752>,  <45.599876, 35.363640, 34.915688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658409, 34.970860, 34.867752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971985, 0.120197, 0.201987,
		-0.183937, -0.146037, 0.972029,
		0.146333, -0.981950, -0.119837,
		45.702309, 34.676273, 34.831802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054626, 35.013336, 35.408493>,  <45.599876, 35.363640, 34.915688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054626, 35.013336, 35.408493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059414, 34.838539, 35.048740>,  <46.062286, 34.733662, 34.832890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059414, 34.838539, 35.048740>,  <46.054626, 35.013336, 35.408493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059414, 34.838539, 35.048740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992699, 0.113155, -0.041767,
		0.120022, -0.892318, 0.435158,
		0.011971, -0.436994, -0.899385,
		46.063004, 34.707439, 34.778923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673306, 34.615356, 35.299629>,  <46.054626, 35.013336, 35.408493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673306, 34.615356, 35.299629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565952, 34.681713, 34.920063>,  <46.501541, 34.721527, 34.692322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565952, 34.681713, 34.920063>,  <46.673306, 34.615356, 35.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565952, 34.681713, 34.920063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962380, 0.089477, -0.256552,
		0.042347, -0.982077, -0.183663,
		-0.268387, 0.165890, -0.948920,
		46.485435, 34.731480, 34.635387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079903, 34.139671, 34.774242>,  <46.673306, 34.615356, 35.299629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079903, 34.139671, 34.774242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978264, 34.487774, 34.605438>,  <46.917278, 34.696636, 34.504154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978264, 34.487774, 34.605438>,  <47.079903, 34.139671, 34.774242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978264, 34.487774, 34.605438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938101, 0.115576, -0.326510,
		-0.235373, -0.478853, -0.845754,
		-0.254099, 0.870254, -0.422009,
		46.902035, 34.748852, 34.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219707, 34.169769, 34.145172>,  <47.079903, 34.139671, 34.774242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219707, 34.169769, 34.145172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197762, 34.558445, 34.237099>,  <47.184593, 34.791649, 34.292255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197762, 34.558445, 34.237099>,  <47.219707, 34.169769, 34.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.197762, 34.558445, 34.237099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890079, 0.151901, -0.429750,
		-0.452491, 0.180973, -0.873213,
		-0.054869, 0.971687, 0.229814,
		47.181301, 34.849953, 34.306042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.611980, 34.600590, 34.614296>,  <47.219707, 34.169769, 34.145172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.611980, 34.600590, 34.614296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696083, 34.903950, 34.861073>,  <47.746544, 35.085964, 35.009140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696083, 34.903950, 34.861073>,  <47.611980, 34.600590, 34.614296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696083, 34.903950, 34.861073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249471, 0.651780, -0.716204,
		-0.945281, -0.003323, 0.326241,
		0.210257, 0.758401, 0.616944,
		47.759159, 35.131470, 35.046154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.162437, 31.338968, 29.182520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836006, 31.217665, 28.985723>,  <36.640148, 31.144882, 28.867645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836006, 31.217665, 28.985723>,  <37.162437, 31.338968, 29.182520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836006, 31.217665, 28.985723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536886, 0.712927, 0.451097,
		0.213954, 0.632272, -0.744618,
		-0.816074, -0.303261, -0.491991,
		36.591183, 31.126686, 28.838125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895599, 31.888611, 28.914146>,  <37.162437, 31.338968, 29.182520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895599, 31.888611, 28.914146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588608, 31.634256, 28.946703>,  <36.404411, 31.481644, 28.966236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588608, 31.634256, 28.946703>,  <36.895599, 31.888611, 28.914146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588608, 31.634256, 28.946703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550783, 0.719015, 0.423857,
		-0.328046, 0.280473, -0.902065,
		-0.767479, -0.635887, 0.081390,
		36.358364, 31.443491, 28.971121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266769, 32.308510, 28.768158>,  <36.895599, 31.888611, 28.914146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266769, 32.308510, 28.768158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168816, 31.970215, 28.957792>,  <36.110043, 31.767237, 29.071573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168816, 31.970215, 28.957792>,  <36.266769, 32.308510, 28.768158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168816, 31.970215, 28.957792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649666, 0.506098, 0.567274,
		-0.719700, -0.169083, -0.673382,
		-0.244881, -0.845740, 0.474086,
		36.095352, 31.716494, 29.100018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657459, 32.198452, 28.628744>,  <36.266769, 32.308510, 28.768158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657459, 32.198452, 28.628744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709892, 32.016403, 28.981035>,  <35.741352, 31.907175, 29.192410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709892, 32.016403, 28.981035>,  <35.657459, 32.198452, 28.628744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709892, 32.016403, 28.981035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715157, 0.571835, 0.401940,
		-0.686562, -0.682547, -0.250523,
		0.131085, -0.455120, 0.880728,
		35.749218, 31.879868, 29.245255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978516, 32.303505, 28.923357>,  <35.657459, 32.198452, 28.628744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978516, 32.303505, 28.923357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214439, 32.199806, 29.229275>,  <35.355995, 32.137585, 29.412827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214439, 32.199806, 29.229275>,  <34.978516, 32.303505, 28.923357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214439, 32.199806, 29.229275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420385, 0.710051, 0.564893,
		-0.689491, -0.654690, 0.309812,
		0.589812, -0.259248, 0.764795,
		35.391384, 32.122032, 29.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542419, 32.235294, 29.491844>,  <34.978516, 32.303505, 28.923357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542419, 32.235294, 29.491844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907085, 32.280518, 29.649876>,  <35.125885, 32.307652, 29.744694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907085, 32.280518, 29.649876>,  <34.542419, 32.235294, 29.491844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907085, 32.280518, 29.649876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321921, 0.794037, 0.515628,
		-0.255410, -0.597264, 0.760291,
		0.911665, 0.113056, 0.395077,
		35.180584, 32.314434, 29.768398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341106, 32.424423, 30.121681>,  <34.542419, 32.235294, 29.491844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341106, 32.424423, 30.121681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723343, 32.533165, 30.076178>,  <34.952686, 32.598412, 30.048876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723343, 32.533165, 30.076178>,  <34.341106, 32.424423, 30.121681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723343, 32.533165, 30.076178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166700, 0.816965, 0.552069,
		0.243020, -0.508588, 0.826002,
		0.955590, 0.271858, -0.113757,
		35.010021, 32.614723, 30.042051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465153, 32.798698, 30.751421>,  <34.341106, 32.424423, 30.121681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465153, 32.798698, 30.751421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761971, 32.924129, 30.514427>,  <34.940060, 32.999390, 30.372231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761971, 32.924129, 30.514427>,  <34.465153, 32.798698, 30.751421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761971, 32.924129, 30.514427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056837, 0.851231, 0.521705,
		0.667936, -0.420803, 0.613829,
		0.742045, 0.313577, -0.592485,
		34.984585, 33.018204, 30.336681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094898, 33.021904, 31.200996>,  <34.465153, 32.798698, 30.751421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094898, 33.021904, 31.200996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108105, 33.225620, 30.857012>,  <35.116028, 33.347851, 30.650621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108105, 33.225620, 30.857012>,  <35.094898, 33.021904, 31.200996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108105, 33.225620, 30.857012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108514, 0.853515, 0.509643,
		0.993547, -0.110142, -0.027088,
		0.033013, 0.509294, -0.859959,
		35.118008, 33.378410, 30.599024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640465, 33.462326, 31.296434>,  <35.094898, 33.021904, 31.200996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640465, 33.462326, 31.296434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448517, 33.609207, 30.977715>,  <35.333347, 33.697338, 30.786484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448517, 33.609207, 30.977715>,  <35.640465, 33.462326, 31.296434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448517, 33.609207, 30.977715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135806, 0.928340, 0.346037,
		0.866766, 0.057841, -0.495349,
		-0.479867, 0.367205, -0.796798,
		35.304558, 33.719368, 30.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025715, 34.075127, 31.070507>,  <35.640465, 33.462326, 31.296434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025715, 34.075127, 31.070507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650517, 34.108601, 30.935953>,  <35.425396, 34.128685, 30.855221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650517, 34.108601, 30.935953>,  <36.025715, 34.075127, 31.070507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650517, 34.108601, 30.935953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026543, 0.950233, 0.310406,
		0.345622, 0.300089, -0.889096,
		-0.937998, 0.083684, -0.336386,
		35.369118, 34.133705, 30.835037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105297, 34.747002, 30.825171>,  <36.025715, 34.075127, 31.070507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105297, 34.747002, 30.825171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729832, 34.628590, 30.895920>,  <35.504555, 34.557541, 30.938370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729832, 34.628590, 30.895920>,  <36.105297, 34.747002, 30.825171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729832, 34.628590, 30.895920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238096, 0.927377, 0.288586,
		-0.249460, 0.228771, -0.940975,
		-0.938659, -0.296033, 0.176874,
		35.448235, 34.539780, 30.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644676, 35.448704, 30.799301>,  <36.105297, 34.747002, 30.825171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644676, 35.448704, 30.799301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422634, 35.180992, 30.996859>,  <35.289410, 35.020367, 31.115393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422634, 35.180992, 30.996859>,  <35.644676, 35.448704, 30.799301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422634, 35.180992, 30.996859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455044, 0.741391, 0.493229,
		-0.696275, 0.049049, -0.716098,
		-0.555101, -0.669279, 0.493892,
		35.256104, 34.980209, 31.145027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947437, 35.699005, 30.936226>,  <35.644676, 35.448704, 30.799301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947437, 35.699005, 30.936226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995716, 35.407612, 31.205963>,  <35.024685, 35.232777, 31.367805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995716, 35.407612, 31.205963>,  <34.947437, 35.699005, 30.936226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995716, 35.407612, 31.205963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365643, 0.598924, 0.712457,
		-0.922896, -0.332560, -0.194078,
		0.120697, -0.728487, 0.674343,
		35.031925, 35.189064, 31.408266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412113, 35.874088, 31.366882>,  <34.947437, 35.699005, 30.936226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412113, 35.874088, 31.366882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592510, 35.598766, 31.594158>,  <34.700748, 35.433575, 31.730524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592510, 35.598766, 31.594158>,  <34.412113, 35.874088, 31.366882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592510, 35.598766, 31.594158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400703, 0.412700, 0.817995,
		-0.797522, -0.596587, -0.089681,
		0.450994, -0.688305, 0.568191,
		34.727810, 35.392277, 31.764616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035042, 35.714718, 31.981514>,  <34.412113, 35.874088, 31.366882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035042, 35.714718, 31.981514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399548, 35.597153, 32.096901>,  <34.618252, 35.526615, 32.166134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399548, 35.597153, 32.096901>,  <34.035042, 35.714718, 31.981514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399548, 35.597153, 32.096901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217764, 0.250624, 0.943274,
		-0.349535, -0.922390, 0.164382,
		0.911265, -0.293911, 0.288465,
		34.672928, 35.508980, 32.183441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893478, 35.342781, 32.635567>,  <34.035042, 35.714718, 31.981514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893478, 35.342781, 32.635567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276138, 35.459267, 32.634499>,  <34.505733, 35.529160, 32.633858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276138, 35.459267, 32.634499>,  <33.893478, 35.342781, 32.635567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276138, 35.459267, 32.634499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097576, 0.329157, 0.939220,
		0.274393, -0.898248, 0.343305,
		0.956654, 0.291214, -0.002671,
		34.563133, 35.546631, 32.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151485, 35.054646, 33.323166>,  <33.893478, 35.342781, 32.635567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151485, 35.054646, 33.323166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381809, 35.356297, 33.196838>,  <34.520004, 35.537289, 33.121044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381809, 35.356297, 33.196838>,  <34.151485, 35.054646, 33.323166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381809, 35.356297, 33.196838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126261, 0.463663, 0.876969,
		0.807778, -0.465089, 0.362197,
		0.575806, 0.754128, -0.315814,
		34.554550, 35.582535, 33.102093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495411, 35.184635, 33.975822>,  <34.151485, 35.054646, 33.323166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495411, 35.184635, 33.975822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602089, 35.485184, 33.734390>,  <34.666096, 35.665512, 33.589531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602089, 35.485184, 33.734390>,  <34.495411, 35.184635, 33.975822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602089, 35.485184, 33.734390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132375, 0.591771, 0.795163,
		0.954648, -0.291963, 0.058357,
		0.266692, 0.751375, -0.603581,
		34.682098, 35.710598, 33.553314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151772, 35.411060, 34.202831>,  <34.495411, 35.184635, 33.975822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151772, 35.411060, 34.202831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013824, 35.728500, 34.002327>,  <34.931057, 35.918964, 33.882023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013824, 35.728500, 34.002327>,  <35.151772, 35.411060, 34.202831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013824, 35.728500, 34.002327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181856, 0.580394, 0.793770,
		0.920868, 0.182585, -0.344479,
		-0.344864, 0.793603, -0.501262,
		34.910366, 35.966579, 33.851948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637131, 35.990471, 34.374908>,  <35.151772, 35.411060, 34.202831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637131, 35.990471, 34.374908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290024, 36.154251, 34.262249>,  <35.081760, 36.252518, 34.194653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290024, 36.154251, 34.262249>,  <35.637131, 35.990471, 34.374908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290024, 36.154251, 34.262249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089998, 0.686836, 0.721218,
		0.488749, 0.600504, -0.632866,
		-0.867770, 0.409452, -0.281646,
		35.029694, 36.277088, 34.177753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713573, 36.636799, 34.467121>,  <35.637131, 35.990471, 34.374908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713573, 36.636799, 34.467121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315285, 36.601402, 34.456509>,  <35.076309, 36.580166, 34.450142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315285, 36.601402, 34.456509>,  <35.713573, 36.636799, 34.467121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315285, 36.601402, 34.456509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062707, 0.436521, 0.897506,
		-0.067840, 0.895332, -0.440204,
		-0.995724, -0.088491, -0.026530,
		35.016567, 36.574856, 34.448551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343010, 36.692604, 34.688709>,  <35.713573, 36.636799, 34.467121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343010, 36.692604, 34.688709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617287, 36.654369, 34.977345>,  <36.781853, 36.631428, 35.150524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617287, 36.654369, 34.977345>,  <36.343010, 36.692604, 34.688709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617287, 36.654369, 34.977345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377391, -0.801005, -0.464723,
		0.622413, 0.590978, -0.513173,
		0.685695, -0.095582, 0.721586,
		36.822994, 36.625694, 35.193821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971176, 36.772007, 34.367516>,  <36.343010, 36.692604, 34.688709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971176, 36.772007, 34.367516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062248, 36.571472, 34.701420>,  <37.116890, 36.451153, 34.901764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062248, 36.571472, 34.701420>,  <36.971176, 36.772007, 34.367516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062248, 36.571472, 34.701420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458992, -0.700808, -0.546072,
		0.858772, 0.507477, 0.070550,
		0.227677, -0.501333, 0.834762,
		37.130550, 36.421074, 34.951847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568012, 36.508026, 34.095280>,  <36.971176, 36.772007, 34.367516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568012, 36.508026, 34.095280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452732, 36.316025, 34.426708>,  <37.383564, 36.200825, 34.625565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452732, 36.316025, 34.426708>,  <37.568012, 36.508026, 34.095280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452732, 36.316025, 34.426708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258608, -0.872152, -0.415299,
		0.921988, 0.094586, 0.375489,
		-0.288202, -0.480005, 0.828574,
		37.366272, 36.172024, 34.675282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114594, 35.958149, 34.308636>,  <37.568012, 36.508026, 34.095280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114594, 35.958149, 34.308636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765522, 35.854549, 34.474216>,  <37.556080, 35.792389, 34.573566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765522, 35.854549, 34.474216>,  <38.114594, 35.958149, 34.308636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765522, 35.854549, 34.474216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145975, -0.947351, -0.284986,
		0.465971, -0.188273, 0.864537,
		-0.872676, -0.258996, 0.413955,
		37.503719, 35.776852, 34.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330505, 35.197430, 34.448174>,  <38.114594, 35.958149, 34.308636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330505, 35.197430, 34.448174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937038, 35.234539, 34.509865>,  <37.700958, 35.256805, 34.546879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937038, 35.234539, 34.509865>,  <38.330505, 35.197430, 34.448174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937038, 35.234539, 34.509865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151067, -0.891411, -0.427277,
		0.097838, -0.443598, 0.890869,
		-0.983670, 0.092777, 0.154227,
		37.641937, 35.262371, 34.556133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177628, 34.647331, 34.843578>,  <38.330505, 35.197430, 34.448174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177628, 34.647331, 34.843578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863438, 34.768166, 34.627514>,  <37.674923, 34.840664, 34.497875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863438, 34.768166, 34.627514>,  <38.177628, 34.647331, 34.843578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863438, 34.768166, 34.627514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049293, -0.839477, -0.541155,
		-0.616924, -0.451691, 0.644500,
		-0.785478, 0.302082, -0.540159,
		37.627796, 34.858791, 34.465466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877434, 34.095398, 34.831482>,  <38.177628, 34.647331, 34.843578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877434, 34.095398, 34.831482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704224, 34.301453, 34.535610>,  <37.600296, 34.425087, 34.358089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704224, 34.301453, 34.535610>,  <37.877434, 34.095398, 34.831482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704224, 34.301453, 34.535610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083612, -0.840020, -0.536074,
		-0.897495, -0.170289, 0.406822,
		-0.433026, 0.515139, -0.739676,
		37.574314, 34.455994, 34.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177441, 33.945896, 34.729126>,  <37.877434, 34.095398, 34.831482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177441, 33.945896, 34.729126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284702, 34.102283, 34.376938>,  <37.349060, 34.196117, 34.165623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284702, 34.102283, 34.376938>,  <37.177441, 33.945896, 34.729126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284702, 34.102283, 34.376938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182896, -0.876665, -0.444981,
		-0.945856, 0.280358, -0.163572,
		0.268152, 0.390972, -0.880475,
		37.365147, 34.219574, 34.112797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823635, 33.629658, 34.253246>,  <37.177441, 33.945896, 34.729126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823635, 33.629658, 34.253246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109478, 33.789593, 34.023647>,  <37.280983, 33.885551, 33.885887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109478, 33.789593, 34.023647>,  <36.823635, 33.629658, 34.253246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109478, 33.789593, 34.023647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185935, -0.682461, -0.706877,
		-0.674362, 0.611865, -0.413348,
		0.714607, 0.399835, -0.573993,
		37.323860, 33.909542, 33.851448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523109, 33.667809, 33.566822>,  <36.823635, 33.629658, 34.253246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523109, 33.667809, 33.566822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919373, 33.713852, 33.537563>,  <37.157131, 33.741478, 33.520008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919373, 33.713852, 33.537563>,  <36.523109, 33.667809, 33.566822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919373, 33.713852, 33.537563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018030, -0.642155, -0.766363,
		-0.135186, 0.757883, -0.638230,
		0.990656, 0.115109, -0.073146,
		37.216568, 33.748386, 33.515621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557934, 33.841068, 32.823433>,  <36.523109, 33.667809, 33.566822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557934, 33.841068, 32.823433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901833, 33.709965, 32.980106>,  <37.108170, 33.631302, 33.074112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901833, 33.709965, 32.980106>,  <36.557934, 33.841068, 32.823433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901833, 33.709965, 32.980106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201723, -0.486631, -0.849999,
		0.469202, 0.809791, -0.352260,
		0.859742, -0.327762, 0.391682,
		37.159756, 33.611637, 33.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061550, 33.742538, 32.229053>,  <36.557934, 33.841068, 32.823433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061550, 33.742538, 32.229053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234936, 33.515442, 32.508991>,  <37.338966, 33.379185, 32.676952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234936, 33.515442, 32.508991>,  <37.061550, 33.742538, 32.229053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234936, 33.515442, 32.508991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253266, -0.668545, -0.699216,
		0.864849, 0.480332, -0.146002,
		0.433465, -0.567739, 0.699843,
		37.364975, 33.345119, 32.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647621, 33.590424, 31.960899>,  <37.061550, 33.742538, 32.229053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647621, 33.590424, 31.960899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594120, 33.312946, 32.243996>,  <37.562019, 33.146458, 32.413853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594120, 33.312946, 32.243996>,  <37.647621, 33.590424, 31.960899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594120, 33.312946, 32.243996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360521, -0.699283, -0.617275,
		0.923111, 0.172592, 0.343623,
		-0.133753, -0.693697, 0.707739,
		37.553993, 33.104836, 32.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309582, 33.261368, 32.135796>,  <37.647621, 33.590424, 31.960899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309582, 33.261368, 32.135796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021961, 33.015255, 32.265030>,  <37.849388, 32.867588, 32.342571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021961, 33.015255, 32.265030>,  <38.309582, 33.261368, 32.135796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021961, 33.015255, 32.265030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395148, -0.744419, -0.538236,
		0.571684, -0.259351, 0.778405,
		-0.719052, -0.615287, 0.323090,
		37.806244, 32.830669, 32.361958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641708, 32.631126, 32.111572>,  <38.309582, 33.261368, 32.135796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641708, 32.631126, 32.111572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248875, 32.555885, 32.107037>,  <38.013176, 32.510738, 32.104317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248875, 32.555885, 32.107037>,  <38.641708, 32.631126, 32.111572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248875, 32.555885, 32.107037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162133, -0.812756, -0.559589,
		0.096049, -0.551401, 0.828693,
		-0.982083, -0.188106, -0.011336,
		37.954250, 32.499454, 32.103638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505829, 31.928465, 32.412380>,  <38.641708, 32.631126, 32.111572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505829, 31.928465, 32.412380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194016, 32.025101, 32.181225>,  <38.006927, 32.083080, 32.042530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194016, 32.025101, 32.181225>,  <38.505829, 31.928465, 32.412380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194016, 32.025101, 32.181225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139659, -0.832354, -0.536360,
		-0.610588, -0.498819, 0.615111,
		-0.779537, 0.241590, -0.577890,
		37.960155, 32.097576, 32.007858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341816, 31.229239, 32.168819>,  <38.505829, 31.928465, 32.412380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341816, 31.229239, 32.168819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106464, 31.468208, 31.950865>,  <37.965256, 31.611591, 31.820093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106464, 31.468208, 31.950865>,  <38.341816, 31.229239, 32.168819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106464, 31.468208, 31.950865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014519, -0.665954, -0.745851,
		-0.808459, -0.446750, 0.383156,
		-0.588374, 0.597427, -0.544883,
		37.929951, 31.647436, 31.787399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706154, 30.867485, 31.911755>,  <38.341816, 31.229239, 32.168819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706154, 30.867485, 31.911755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804741, 31.172974, 31.673098>,  <37.863895, 31.356266, 31.529903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804741, 31.172974, 31.673098>,  <37.706154, 30.867485, 31.911755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804741, 31.172974, 31.673098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094810, -0.631681, -0.769409,
		-0.964501, 0.133071, -0.228100,
		0.246472, 0.763722, -0.596641,
		37.878681, 31.402090, 31.494106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.185234, 30.833078, 31.255974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503838, 31.046709, 31.142599>,  <37.695000, 31.174887, 31.074575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503838, 31.046709, 31.142599>,  <37.185234, 30.833078, 31.255974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503838, 31.046709, 31.142599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018817, -0.446654, -0.894509,
		-0.604331, 0.717819, -0.345715,
		0.796511, 0.534075, -0.283434,
		37.742790, 31.206932, 31.057570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007847, 31.111614, 30.525122>,  <37.185234, 30.833078, 31.255974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007847, 31.111614, 30.525122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403400, 31.152105, 30.568668>,  <37.640732, 31.176401, 30.594797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403400, 31.152105, 30.568668>,  <37.007847, 31.111614, 30.525122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403400, 31.152105, 30.568668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144286, -0.477219, -0.866859,
		-0.035798, 0.872935, -0.486522,
		0.988888, 0.101230, 0.108869,
		37.700066, 31.182474, 30.601330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249859, 31.323286, 29.919823>,  <37.007847, 31.111614, 30.525122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249859, 31.323286, 29.919823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588104, 31.201143, 30.094955>,  <37.791050, 31.127857, 30.200035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588104, 31.201143, 30.094955>,  <37.249859, 31.323286, 29.919823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588104, 31.201143, 30.094955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270603, -0.461800, -0.844698,
		0.460124, 0.832766, -0.307874,
		0.845612, -0.305355, 0.437834,
		37.841789, 31.109537, 30.226305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847240, 31.454498, 29.457842>,  <37.249859, 31.323286, 29.919823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847240, 31.454498, 29.457842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001774, 31.171505, 29.694557>,  <38.094494, 31.001709, 29.836586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001774, 31.171505, 29.694557>,  <37.847240, 31.454498, 29.457842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001774, 31.171505, 29.694557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303954, -0.508111, -0.805875,
		0.870839, 0.491211, 0.018743,
		0.386331, -0.707485, 0.591789,
		38.117672, 30.959259, 29.872093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537518, 31.233671, 29.151352>,  <37.847240, 31.454498, 29.457842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537518, 31.233671, 29.151352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413364, 30.921280, 29.368143>,  <38.338875, 30.733845, 29.498219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413364, 30.921280, 29.368143>,  <38.537518, 31.233671, 29.151352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413364, 30.921280, 29.368143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233695, -0.615325, -0.752836,
		0.921439, -0.107009, 0.373495,
		-0.310381, -0.780977, 0.541977,
		38.320251, 30.686987, 29.530737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974060, 30.649538, 28.917549>,  <38.537518, 31.233671, 29.151352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974060, 30.649538, 28.917549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719067, 30.440960, 29.144426>,  <38.566071, 30.315813, 29.280552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719067, 30.440960, 29.144426>,  <38.974060, 30.649538, 28.917549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719067, 30.440960, 29.144426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151599, -0.806672, -0.571225,
		0.755402, -0.278161, 0.593291,
		-0.637484, -0.521447, 0.567192,
		38.527821, 30.284525, 29.314585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296883, 30.055979, 29.206238>,  <38.974060, 30.649538, 28.917549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296883, 30.055979, 29.206238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903748, 29.983641, 29.191685>,  <38.667866, 29.940237, 29.182953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903748, 29.983641, 29.191685>,  <39.296883, 30.055979, 29.206238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903748, 29.983641, 29.191685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165852, -0.779948, -0.603469,
		0.080759, -0.599146, 0.796556,
		-0.982838, -0.180846, -0.036382,
		38.608894, 29.929386, 29.180771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204288, 29.318449, 29.307077>,  <39.296883, 30.055979, 29.206238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204288, 29.318449, 29.307077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882160, 29.455418, 29.113495>,  <38.688885, 29.537598, 28.997345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882160, 29.455418, 29.113495>,  <39.204288, 29.318449, 29.307077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882160, 29.455418, 29.113495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018251, -0.830262, -0.557075,
		-0.592563, -0.439789, 0.674873,
		-0.805317, 0.342419, -0.483956,
		38.640564, 29.558144, 28.968307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809731, 28.751221, 29.279520>,  <39.204288, 29.318449, 29.307077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809731, 28.751221, 29.279520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661057, 29.007318, 29.010614>,  <38.571854, 29.160976, 28.849270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661057, 29.007318, 29.010614>,  <38.809731, 28.751221, 29.279520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661057, 29.007318, 29.010614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077940, -0.743106, -0.664619,
		-0.925083, -0.194630, 0.326099,
		-0.371681, 0.640244, -0.672265,
		38.549553, 29.199392, 28.808935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263279, 28.481487, 29.047216>,  <38.809731, 28.751221, 29.279520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263279, 28.481487, 29.047216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338943, 28.743174, 28.754309>,  <38.384342, 28.900185, 28.578564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338943, 28.743174, 28.754309>,  <38.263279, 28.481487, 29.047216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338943, 28.743174, 28.754309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076167, -0.753263, -0.653295,
		-0.978987, 0.067804, -0.192319,
		0.189162, 0.654216, -0.732270,
		38.395691, 28.939438, 28.534628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953648, 28.328318, 28.517160>,  <38.263279, 28.481487, 29.047216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953648, 28.328318, 28.517160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271706, 28.515314, 28.362652>,  <38.462540, 28.627512, 28.269947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271706, 28.515314, 28.362652>,  <37.953648, 28.328318, 28.517160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271706, 28.515314, 28.362652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070268, -0.703699, -0.707015,
		-0.602340, 0.535035, -0.592389,
		0.795141, 0.467489, -0.386270,
		38.510246, 28.655561, 28.246771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992619, 28.142807, 27.863691>,  <37.953648, 28.328318, 28.517160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992619, 28.142807, 27.863691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379333, 28.245008, 27.866192>,  <38.611362, 28.306330, 27.867691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379333, 28.245008, 27.866192>,  <37.992619, 28.142807, 27.863691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379333, 28.245008, 27.866192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212095, -0.788419, -0.577418,
		-0.142604, 0.559567, -0.816425,
		0.966788, 0.255501, 0.006250,
		38.669369, 28.321659, 27.868067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153893, 27.907331, 27.283678>,  <37.992619, 28.142807, 27.863691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153893, 27.907331, 27.283678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.510162, 27.972763, 27.453356>,  <38.723923, 28.012022, 27.555162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.510162, 27.972763, 27.453356>,  <38.153893, 27.907331, 27.283678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510162, 27.972763, 27.453356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420930, -0.649281, -0.633444,
		0.171802, 0.742749, -0.647154,
		0.890675, 0.163579, 0.424193,
		38.777367, 28.021837, 27.580614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533180, 28.108286, 26.766392>,  <38.153893, 27.907331, 27.283678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533180, 28.108286, 26.766392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786709, 27.948944, 27.031597>,  <38.938824, 27.853340, 27.190722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786709, 27.948944, 27.031597>,  <38.533180, 28.108286, 26.766392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786709, 27.948944, 27.031597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503766, -0.437851, -0.744652,
		0.586936, 0.805978, -0.076842,
		0.633819, -0.398353, 0.663015,
		38.976856, 27.829437, 27.230501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257057, 28.302954, 26.524200>,  <38.533180, 28.108286, 26.766392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257057, 28.302954, 26.524200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302517, 27.980175, 26.756037>,  <39.329792, 27.786509, 26.895138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302517, 27.980175, 26.756037>,  <39.257057, 28.302954, 26.524200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302517, 27.980175, 26.756037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372751, -0.506123, -0.777751,
		0.920946, 0.304432, 0.243270,
		0.113648, -0.806945, 0.579589,
		39.336613, 27.738091, 26.929913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936298, 28.004143, 26.322651>,  <39.257057, 28.302954, 26.524200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936298, 28.004143, 26.322651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796333, 27.702827, 26.545406>,  <39.712357, 27.522039, 26.679060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796333, 27.702827, 26.545406>,  <39.936298, 28.004143, 26.322651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796333, 27.702827, 26.545406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272550, -0.650614, -0.708815,
		0.896259, -0.096241, 0.432964,
		-0.349909, -0.753286, 0.556888,
		39.691360, 27.476841, 26.712473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511986, 27.686474, 26.395464>,  <39.936298, 28.004143, 26.322651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511986, 27.686474, 26.395464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190285, 27.453276, 26.441574>,  <39.997265, 27.313356, 26.469240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190285, 27.453276, 26.441574>,  <40.511986, 27.686474, 26.395464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190285, 27.453276, 26.441574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321575, -0.590048, -0.740563,
		0.499763, -0.558533, 0.662026,
		-0.804256, -0.582996, 0.115274,
		39.949009, 27.278378, 26.476156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815102, 26.949486, 26.380011>,  <40.511986, 27.686474, 26.395464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815102, 26.949486, 26.380011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431061, 26.939560, 26.268589>,  <40.200638, 26.933603, 26.201736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431061, 26.939560, 26.268589>,  <40.815102, 26.949486, 26.380011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431061, 26.939560, 26.268589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202447, -0.748846, -0.631066,
		-0.192933, -0.662279, 0.723991,
		-0.960100, -0.024816, -0.278553,
		40.143032, 26.932116, 26.185022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689850, 26.298540, 26.261517>,  <40.815102, 26.949486, 26.380011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689850, 26.298540, 26.261517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375462, 26.450174, 26.066153>,  <40.186829, 26.541155, 25.948935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375462, 26.450174, 26.066153>,  <40.689850, 26.298540, 26.261517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375462, 26.450174, 26.066153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207510, -0.582401, -0.785970,
		-0.582401, -0.719099, 0.379086,
		0.785970, -0.379086, 0.488411,
		40.139671, 26.563900, 25.919630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418270, 25.724506, 25.942699>,  <40.689850, 26.298540, 26.261517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418270, 25.724506, 25.942699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.253841, 26.031139, 25.745369>,  <40.155186, 26.215120, 25.626970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.253841, 26.031139, 25.745369>,  <40.418270, 25.724506, 25.942699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253841, 26.031139, 25.745369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077933, -0.509629, -0.856857,
		-0.908266, -0.390675, 0.149751,
		-0.411070, 0.766584, -0.493325,
		40.130520, 26.261114, 25.597372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174297, 25.405632, 25.399702>,  <40.418270, 25.724506, 25.942699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174297, 25.405632, 25.399702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146271, 25.783562, 25.271702>,  <40.129456, 26.010319, 25.194902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146271, 25.783562, 25.271702>,  <40.174297, 25.405632, 25.399702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146271, 25.783562, 25.271702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112866, -0.311220, -0.943612,
		-0.991137, -0.102234, -0.084832,
		-0.070068, 0.944823, -0.320000,
		40.125252, 26.067009, 25.175701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706367, 25.398794, 24.860647>,  <40.174297, 25.405632, 25.399702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706367, 25.398794, 24.860647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.933922, 25.718571, 24.783438>,  <40.070454, 25.910437, 24.737112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.933922, 25.718571, 24.783438>,  <39.706367, 25.398794, 24.860647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933922, 25.718571, 24.783438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001059, -0.233992, -0.972238,
		-0.822416, 0.553297, -0.132268,
		0.568886, 0.799444, -0.193025,
		40.104588, 25.958405, 24.725531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460243, 25.851524, 24.305836>,  <39.706367, 25.398794, 24.860647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460243, 25.851524, 24.305836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.859074, 25.882078, 24.306194>,  <40.098373, 25.900410, 24.306410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.859074, 25.882078, 24.306194>,  <39.460243, 25.851524, 24.305836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859074, 25.882078, 24.306194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006050, -0.067266, -0.997717,
		-0.076151, 0.994807, -0.067531,
		0.997078, 0.076385, 0.000896,
		40.158195, 25.904993, 24.306463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574306, 25.980911, 23.690662>,  <39.460243, 25.851524, 24.305836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574306, 25.980911, 23.690662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944275, 25.884552, 23.808294>,  <40.166256, 25.826736, 23.878874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944275, 25.884552, 23.808294>,  <39.574306, 25.980911, 23.690662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944275, 25.884552, 23.808294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194204, -0.365606, -0.910284,
		0.326802, 0.899056, -0.291375,
		0.924924, -0.240896, 0.294081,
		40.221752, 25.812283, 23.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934101, 25.954308, 23.214516>,  <39.574306, 25.980911, 23.690662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934101, 25.954308, 23.214516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568268, 25.991335, 23.057047>,  <38.348770, 26.013552, 22.962566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568268, 25.991335, 23.057047>,  <38.934101, 25.954308, 23.214516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568268, 25.991335, 23.057047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194040, 0.753630, 0.628004,
		0.354816, 0.650747, -0.671292,
		-0.914579, 0.092569, -0.393671,
		38.293896, 26.019106, 22.938946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823280, 26.664230, 23.013834>,  <38.934101, 25.954308, 23.214516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823280, 26.664230, 23.013834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458672, 26.503397, 23.048372>,  <38.239906, 26.406897, 23.069096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458672, 26.503397, 23.048372>,  <38.823280, 26.664230, 23.013834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458672, 26.503397, 23.048372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293417, 0.782970, 0.548511,
		-0.288153, 0.474645, -0.831673,
		-0.911523, -0.402082, 0.086347,
		38.185215, 26.382772, 23.074276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415581, 27.192045, 22.976564>,  <38.823280, 26.664230, 23.013834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415581, 27.192045, 22.976564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192856, 26.924326, 23.173338>,  <38.059223, 26.763695, 23.291403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192856, 26.924326, 23.173338>,  <38.415581, 27.192045, 22.976564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192856, 26.924326, 23.173338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385284, 0.732779, 0.560884,
		-0.735879, 0.122772, -0.665889,
		-0.556810, -0.669300, 0.491935,
		38.025814, 26.723536, 23.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773273, 27.471773, 23.067453>,  <38.415581, 27.192045, 22.976564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773273, 27.471773, 23.067453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775021, 27.211239, 23.370964>,  <37.776070, 27.054918, 23.553070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775021, 27.211239, 23.370964>,  <37.773273, 27.471773, 23.067453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775021, 27.211239, 23.370964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290821, 0.725159, 0.624154,
		-0.956768, -0.223392, -0.186256,
		0.004366, -0.651338, 0.758776,
		37.776329, 27.015837, 23.598597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221912, 27.649799, 23.414446>,  <37.773273, 27.471773, 23.067453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221912, 27.649799, 23.414446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490398, 27.477407, 23.655684>,  <37.651489, 27.373972, 23.800426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490398, 27.477407, 23.655684>,  <37.221912, 27.649799, 23.414446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490398, 27.477407, 23.655684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186274, 0.689432, 0.699990,
		-0.717475, -0.582186, 0.382478,
		0.671217, -0.430980, 0.603096,
		37.691765, 27.348114, 23.836613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798141, 27.613363, 24.042040>,  <37.221912, 27.649799, 23.414446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798141, 27.613363, 24.042040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183372, 27.557888, 24.134346>,  <37.414509, 27.524603, 24.189730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183372, 27.557888, 24.134346>,  <36.798141, 27.613363, 24.042040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183372, 27.557888, 24.134346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102373, 0.604108, 0.790300,
		-0.249011, -0.784742, 0.567603,
		0.963075, -0.138687, 0.230766,
		37.472294, 27.516283, 24.203575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799000, 27.377026, 24.718605>,  <36.798141, 27.613363, 24.042040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799000, 27.377026, 24.718605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168831, 27.518614, 24.662230>,  <37.390728, 27.603567, 24.628405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168831, 27.518614, 24.662230>,  <36.799000, 27.377026, 24.718605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168831, 27.518614, 24.662230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173537, 0.720574, 0.671310,
		0.339180, -0.596220, 0.727653,
		0.924577, 0.353970, -0.140938,
		37.446205, 27.624805, 24.619947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991718, 27.632025, 25.339920>,  <36.799000, 27.377026, 24.718605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991718, 27.632025, 25.339920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267319, 27.798317, 25.102453>,  <37.432678, 27.898092, 24.959974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267319, 27.798317, 25.102453>,  <36.991718, 27.632025, 25.339920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267319, 27.798317, 25.102453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173790, 0.889997, 0.421548,
		0.703612, -0.187275, 0.685462,
		0.689005, 0.415732, -0.593665,
		37.474022, 27.923037, 24.924355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491001, 27.950880, 25.827827>,  <36.991718, 27.632025, 25.339920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491001, 27.950880, 25.827827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532928, 28.123249, 25.469316>,  <37.558086, 28.226671, 25.254210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532928, 28.123249, 25.469316>,  <37.491001, 27.950880, 25.827827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532928, 28.123249, 25.469316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207560, 0.890877, 0.404052,
		0.972590, 0.143677, 0.182827,
		0.104823, 0.430925, -0.896279,
		37.564377, 28.252527, 25.200432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923088, 28.406740, 25.995678>,  <37.491001, 27.950880, 25.827827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923088, 28.406740, 25.995678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737183, 28.538658, 25.666988>,  <37.625641, 28.617809, 25.469774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737183, 28.538658, 25.666988>,  <37.923088, 28.406740, 25.995678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737183, 28.538658, 25.666988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081449, 0.908188, 0.410561,
		0.881682, 0.257742, -0.395230,
		-0.464762, 0.329793, -0.821726,
		37.597755, 28.637596, 25.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247276, 29.043396, 25.696419>,  <37.923088, 28.406740, 25.995678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247276, 29.043396, 25.696419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873363, 29.039799, 25.554380>,  <37.649014, 29.037640, 25.469158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873363, 29.039799, 25.554380>,  <38.247276, 29.043396, 25.696419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873363, 29.039799, 25.554380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168361, 0.891474, 0.420630,
		0.312775, 0.452984, -0.834852,
		-0.934787, -0.008994, -0.355096,
		37.592926, 29.037100, 25.447851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169582, 29.721294, 25.543922>,  <38.247276, 29.043396, 25.696419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169582, 29.721294, 25.543922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802643, 29.562725, 25.558453>,  <37.582478, 29.467583, 25.567171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802643, 29.562725, 25.558453>,  <38.169582, 29.721294, 25.543922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802643, 29.562725, 25.558453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312468, 0.773582, 0.551303,
		-0.246649, 0.494387, -0.833514,
		-0.917349, -0.396424, 0.036323,
		37.527439, 29.443798, 25.569349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596825, 30.267456, 25.431980>,  <38.169582, 29.721294, 25.543922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596825, 30.267456, 25.431980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407986, 29.968916, 25.619635>,  <37.294682, 29.789793, 25.732227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407986, 29.968916, 25.619635>,  <37.596825, 30.267456, 25.431980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407986, 29.968916, 25.619635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301239, 0.636721, 0.709818,
		-0.828481, 0.193780, -0.525423,
		-0.472096, -0.746349, 0.469137,
		37.266357, 29.745010, 25.760376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380466, 30.611536, 25.883619>,  <37.596825, 30.267456, 25.431980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380466, 30.611536, 25.883619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235226, 30.270712, 26.034430>,  <37.148083, 30.066217, 26.124916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235226, 30.270712, 26.034430>,  <37.380466, 30.611536, 25.883619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235226, 30.270712, 26.034430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416990, 0.510461, 0.752030,
		-0.833234, 0.115844, -0.540649,
		-0.363098, -0.852062, 0.377028,
		37.126297, 30.015093, 26.147537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848488, 30.831207, 26.171566>,  <37.380466, 30.611536, 25.883619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848488, 30.831207, 26.171566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868668, 30.464117, 26.329165>,  <36.880775, 30.243862, 26.423723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868668, 30.464117, 26.329165>,  <36.848488, 30.831207, 26.171566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868668, 30.464117, 26.329165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541529, 0.306337, 0.782881,
		-0.839167, -0.252852, -0.481523,
		0.050445, -0.917727, 0.393995,
		36.883801, 30.188799, 26.447363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187309, 30.608612, 26.252422>,  <36.848488, 30.831207, 26.171566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187309, 30.608612, 26.252422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437244, 30.453213, 26.523317>,  <36.587204, 30.359974, 26.685854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437244, 30.453213, 26.523317>,  <36.187309, 30.608612, 26.252422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437244, 30.453213, 26.523317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658687, 0.203402, 0.724402,
		-0.419181, -0.898719, -0.128807,
		0.624835, -0.388499, 0.677237,
		36.624695, 30.336662, 26.726488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814777, 30.279650, 26.747066>,  <36.187309, 30.608612, 26.252422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814777, 30.279650, 26.747066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154827, 30.353830, 26.944206>,  <36.358856, 30.398338, 27.062490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154827, 30.353830, 26.944206>,  <35.814777, 30.279650, 26.747066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154827, 30.353830, 26.944206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518463, 0.131017, 0.845003,
		0.092126, -0.973882, 0.207524,
		0.850123, 0.185440, 0.492852,
		36.409863, 30.409466, 27.092062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792889, 29.805159, 27.295126>,  <35.814777, 30.279650, 26.747066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792889, 29.805159, 27.295126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064117, 30.079412, 27.401051>,  <36.226852, 30.243965, 27.464605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064117, 30.079412, 27.401051>,  <35.792889, 29.805159, 27.295126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064117, 30.079412, 27.401051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404871, 0.047730, 0.913127,
		0.613434, -0.726377, 0.309959,
		0.678069, 0.685637, 0.264810,
		36.267540, 30.285103, 27.480494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191158, 29.513067, 27.803757>,  <35.792889, 29.805159, 27.295126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191158, 29.513067, 27.803757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221596, 29.909977, 27.842947>,  <36.239857, 30.148123, 27.866461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221596, 29.909977, 27.842947>,  <36.191158, 29.513067, 27.803757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221596, 29.909977, 27.842947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503562, -0.046567, 0.862703,
		0.860602, -0.114979, 0.496129,
		0.076090, 0.992276, 0.097975,
		36.244423, 30.207661, 27.872339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457703, 29.643826, 28.458391>,  <36.191158, 29.513067, 27.803757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457703, 29.643826, 28.458391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248390, 29.954899, 28.319031>,  <36.122803, 30.141542, 28.235415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248390, 29.954899, 28.319031>,  <36.457703, 29.643826, 28.458391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248390, 29.954899, 28.319031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595198, -0.040959, 0.802535,
		0.609846, 0.627322, 0.484308,
		-0.523285, 0.777682, -0.348402,
		36.091404, 30.188204, 28.214510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.692612, 32.639568, 33.718010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588978, 32.850178, 33.394123>,  <37.526798, 32.976543, 33.199791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588978, 32.850178, 33.394123>,  <37.692612, 32.639568, 33.718010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588978, 32.850178, 33.394123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030597, 0.842397, 0.537988,
		0.965369, 0.114613, -0.234366,
		-0.259090, 0.526528, -0.809717,
		37.511250, 33.008137, 33.151207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245945, 33.033287, 33.561462>,  <37.692612, 32.639568, 33.718010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245945, 33.033287, 33.561462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908215, 33.201225, 33.428288>,  <37.705578, 33.301987, 33.348385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908215, 33.201225, 33.428288>,  <38.245945, 33.033287, 33.561462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908215, 33.201225, 33.428288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131882, 0.765057, 0.630314,
		0.519346, 0.488283, -0.701327,
		-0.844326, 0.419844, -0.332934,
		37.654915, 33.327179, 33.328407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450565, 33.665627, 33.117626>,  <38.245945, 33.033287, 33.561462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450565, 33.665627, 33.117626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079037, 33.680355, 33.265106>,  <37.856121, 33.689194, 33.353596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079037, 33.680355, 33.265106>,  <38.450565, 33.665627, 33.117626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079037, 33.680355, 33.265106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184814, 0.908476, 0.374853,
		-0.321154, 0.416311, -0.850615,
		-0.928819, 0.036820, 0.368701,
		37.800392, 33.691402, 33.375717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265636, 34.388386, 33.099873>,  <38.450565, 33.665627, 33.117626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265636, 34.388386, 33.099873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977127, 34.248951, 33.339287>,  <37.804020, 34.165291, 33.482937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977127, 34.248951, 33.339287>,  <38.265636, 34.388386, 33.099873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977127, 34.248951, 33.339287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060361, 0.892479, 0.447033,
		-0.690010, 0.286307, -0.664766,
		-0.721278, -0.348584, 0.598538,
		37.760742, 34.144375, 33.518848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751476, 34.888176, 33.068756>,  <38.265636, 34.388386, 33.099873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751476, 34.888176, 33.068756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633724, 34.679344, 33.388950>,  <37.563072, 34.554047, 33.581066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633724, 34.679344, 33.388950>,  <37.751476, 34.888176, 33.068756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633724, 34.679344, 33.388950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255769, 0.850083, 0.460370,
		-0.920826, -0.069212, -0.383783,
		-0.294384, -0.522080, 0.800481,
		37.545410, 34.522720, 33.629093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047276, 35.164406, 33.279858>,  <37.751476, 34.888176, 33.068756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047276, 35.164406, 33.279858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193005, 34.955105, 33.588005>,  <37.280441, 34.829525, 33.772896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193005, 34.955105, 33.588005>,  <37.047276, 35.164406, 33.279858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193005, 34.955105, 33.588005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241491, 0.745847, 0.620801,
		-0.899417, -0.412210, 0.145368,
		0.364323, -0.523254, 0.770373,
		37.302303, 34.798130, 33.819118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599453, 35.261669, 33.832645>,  <37.047276, 35.164406, 33.279858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599453, 35.261669, 33.832645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920666, 35.122120, 34.025902>,  <37.113396, 35.038391, 34.141857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920666, 35.122120, 34.025902>,  <36.599453, 35.261669, 33.832645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920666, 35.122120, 34.025902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171856, 0.640716, 0.748297,
		-0.570615, -0.683939, 0.454561,
		0.803034, -0.348871, 0.483141,
		37.161575, 35.017460, 34.170845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308804, 35.283241, 34.577492>,  <36.599453, 35.261669, 33.832645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308804, 35.283241, 34.577492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708626, 35.288689, 34.566872>,  <36.948521, 35.291958, 34.560501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708626, 35.288689, 34.566872>,  <36.308804, 35.283241, 34.577492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708626, 35.288689, 34.566872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006659, 0.765531, 0.643365,
		0.029085, -0.643255, 0.765099,
		0.999555, 0.013617, -0.026550,
		37.008492, 35.292774, 34.558907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570763, 35.206173, 35.267677>,  <36.308804, 35.283241, 34.577492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570763, 35.206173, 35.267677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862461, 35.387043, 35.062256>,  <37.037479, 35.495567, 34.939003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862461, 35.387043, 35.062256>,  <36.570763, 35.206173, 35.267677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862461, 35.387043, 35.062256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077625, 0.800357, 0.594477,
		0.679838, -0.393653, 0.618755,
		0.729243, 0.452179, -0.513556,
		37.081234, 35.522697, 34.908188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075512, 35.340714, 35.721027>,  <36.570763, 35.206173, 35.267677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075512, 35.340714, 35.721027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138138, 35.588974, 35.413708>,  <37.175713, 35.737930, 35.229317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138138, 35.588974, 35.413708>,  <37.075512, 35.340714, 35.721027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138138, 35.588974, 35.413708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079289, 0.767481, 0.636149,
		0.984480, -0.160517, 0.070950,
		0.156566, 0.620650, -0.768297,
		37.185108, 35.775169, 35.183220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378418, 35.852264, 36.068996>,  <37.075512, 35.340714, 35.721027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378418, 35.852264, 36.068996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293797, 36.018059, 35.714947>,  <37.243023, 36.117535, 35.502518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293797, 36.018059, 35.714947>,  <37.378418, 35.852264, 36.068996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293797, 36.018059, 35.714947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004038, 0.905985, 0.423290,
		0.977358, 0.085976, -0.193340,
		-0.211556, 0.414487, -0.885124,
		37.230331, 36.142406, 35.449409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665676, 36.544090, 36.222313>,  <37.378418, 35.852264, 36.068996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665676, 36.544090, 36.222313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412533, 36.554070, 35.912766>,  <37.260647, 36.560055, 35.727036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412533, 36.554070, 35.912766>,  <37.665676, 36.544090, 36.222313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412533, 36.554070, 35.912766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308361, 0.908676, 0.281464,
		0.710216, 0.416757, -0.567368,
		-0.632856, 0.024946, -0.773868,
		37.222675, 36.561554, 35.680607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820644, 37.153503, 35.773918>,  <37.665676, 36.544090, 36.222313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820644, 37.153503, 35.773918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441658, 37.025574, 35.775955>,  <37.214268, 36.948814, 35.777176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441658, 37.025574, 35.775955>,  <37.820644, 37.153503, 35.773918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441658, 37.025574, 35.775955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288493, 0.861289, 0.418274,
		-0.138158, 0.394831, -0.908307,
		-0.947462, -0.319828, 0.005088,
		37.157421, 36.929626, 35.777481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485249, 37.126205, 35.955818>,  <37.820644, 37.153503, 35.773918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485249, 37.126205, 35.955818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368946, 37.165348, 36.336529>,  <38.299164, 37.188835, 36.564957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368946, 37.165348, 36.336529>,  <38.485249, 37.126205, 35.955818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368946, 37.165348, 36.336529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392174, 0.919544, 0.025259,
		-0.872731, 0.380608, -0.305742,
		-0.290757, 0.097860, 0.951779,
		38.281719, 37.194706, 36.622063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191929, 36.915886, 35.997189>,  <38.485249, 37.126205, 35.955818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191929, 36.915886, 35.997189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435471, 37.165657, 35.801483>,  <39.581596, 37.315521, 35.684059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435471, 37.165657, 35.801483>,  <39.191929, 36.915886, 35.997189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435471, 37.165657, 35.801483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043844, -0.589331, -0.806701,
		-0.792067, 0.512618, -0.331441,
		0.608858, 0.624430, -0.489264,
		39.618130, 37.352985, 35.654705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186863, 36.656902, 35.336735>,  <39.191929, 36.915886, 35.997189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186863, 36.656902, 35.336735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444225, 36.949097, 35.245152>,  <39.598640, 37.124413, 35.190201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444225, 36.949097, 35.245152>,  <39.186863, 36.656902, 35.336735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444225, 36.949097, 35.245152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298381, -0.514737, -0.803750,
		-0.704982, 0.448818, -0.549147,
		0.643404, 0.730485, -0.228961,
		39.637245, 37.168243, 35.176464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979210, 36.868374, 34.633339>,  <39.186863, 36.656902, 35.336735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979210, 36.868374, 34.633339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361687, 36.949501, 34.717781>,  <39.591171, 36.998177, 34.768444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361687, 36.949501, 34.717781>,  <38.979210, 36.868374, 34.633339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361687, 36.949501, 34.717781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269812, -0.330807, -0.904305,
		-0.113572, 0.921647, -0.371036,
		0.956192, 0.202814, 0.211102,
		39.648544, 37.010345, 34.781113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166882, 37.095512, 34.041199>,  <38.979210, 36.868374, 34.633339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166882, 37.095512, 34.041199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498360, 37.008533, 34.247494>,  <39.697247, 36.956348, 34.371269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498360, 37.008533, 34.247494>,  <39.166882, 37.095512, 34.041199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498360, 37.008533, 34.247494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422104, -0.362302, -0.831003,
		0.367547, 0.906342, -0.208455,
		0.828696, -0.217443, 0.515734,
		39.746967, 36.943302, 34.402214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655960, 37.395454, 33.663166>,  <39.166882, 37.095512, 34.041199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655960, 37.395454, 33.663166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823540, 37.133320, 33.914566>,  <39.924088, 36.976040, 34.065407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823540, 37.133320, 33.914566>,  <39.655960, 37.395454, 33.663166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823540, 37.133320, 33.914566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404591, -0.484929, -0.775339,
		0.812886, 0.579115, 0.061982,
		0.418953, -0.655339, 0.628497,
		39.949226, 36.936718, 34.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377369, 37.378506, 33.569130>,  <39.655960, 37.395454, 33.663166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377369, 37.378506, 33.569130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274017, 37.028465, 33.732811>,  <40.212006, 36.818443, 33.831020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274017, 37.028465, 33.732811>,  <40.377369, 37.378506, 33.569130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274017, 37.028465, 33.732811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391716, -0.482103, -0.783668,
		0.883063, -0.042190, 0.467354,
		-0.258376, -0.875098, 0.409201,
		40.196503, 36.765934, 33.855572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905376, 37.023697, 33.387848>,  <40.377369, 37.378506, 33.569130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905376, 37.023697, 33.387848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.637005, 36.743774, 33.485928>,  <40.475983, 36.575821, 33.544777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.637005, 36.743774, 33.485928>,  <40.905376, 37.023697, 33.387848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637005, 36.743774, 33.485928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311879, -0.566316, -0.762901,
		0.672748, -0.435377, 0.598212,
		-0.670927, -0.699809, 0.245203,
		40.435726, 36.533833, 33.559490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225426, 36.411316, 33.267906>,  <40.905376, 37.023697, 33.387848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225426, 36.411316, 33.267906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844368, 36.290104, 33.277981>,  <40.615734, 36.217377, 33.284027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844368, 36.290104, 33.277981>,  <41.225426, 36.411316, 33.267906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844368, 36.290104, 33.277981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193524, -0.668095, -0.718469,
		0.234548, -0.679573, 0.695103,
		-0.952647, -0.303034, 0.025187,
		40.558575, 36.199192, 33.285538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281921, 35.678333, 33.141296>,  <41.225426, 36.411316, 33.267906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281921, 35.678333, 33.141296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898277, 35.773129, 33.079399>,  <40.668091, 35.830006, 33.042259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898277, 35.773129, 33.079399>,  <41.281921, 35.678333, 33.141296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898277, 35.773129, 33.079399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004183, -0.558542, -0.829465,
		-0.283000, -0.794902, 0.536695,
		-0.959111, 0.236984, -0.154742,
		40.610542, 35.844223, 33.032978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904846, 35.030880, 33.074455>,  <41.281921, 35.678333, 33.141296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904846, 35.030880, 33.074455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723072, 35.332062, 32.884071>,  <40.614006, 35.512772, 32.769840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723072, 35.332062, 32.884071>,  <40.904846, 35.030880, 33.074455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723072, 35.332062, 32.884071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112398, -0.481585, -0.869162,
		-0.883659, -0.448478, 0.134220,
		-0.454438, 0.752957, -0.475965,
		40.586742, 35.557949, 32.741283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445457, 34.650486, 32.765198>,  <40.904846, 35.030880, 33.074455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445457, 34.650486, 32.765198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475563, 35.005138, 32.582672>,  <40.493626, 35.217930, 32.473156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475563, 35.005138, 32.582672>,  <40.445457, 34.650486, 32.765198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475563, 35.005138, 32.582672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047871, -0.453875, -0.889779,
		-0.996014, 0.088814, 0.008283,
		0.075265, 0.886628, -0.456318,
		40.498142, 35.271126, 32.445778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832016, 34.709061, 32.387520>,  <40.445457, 34.650486, 32.765198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832016, 34.709061, 32.387520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072086, 34.984386, 32.224545>,  <40.216129, 35.149582, 32.126759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072086, 34.984386, 32.224545>,  <39.832016, 34.709061, 32.387520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072086, 34.984386, 32.224545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266266, -0.308407, -0.913229,
		-0.754247, 0.656588, -0.001824,
		0.600178, 0.688315, -0.407442,
		40.252140, 35.190880, 32.102310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462120, 35.039562, 31.861439>,  <39.832016, 34.709061, 32.387520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462120, 35.039562, 31.861439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839546, 35.100483, 31.743807>,  <40.066002, 35.137035, 31.673227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839546, 35.100483, 31.743807>,  <39.462120, 35.039562, 31.861439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839546, 35.100483, 31.743807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248553, -0.261156, -0.932748,
		-0.218860, 0.953206, -0.208563,
		0.943569, 0.152302, -0.294079,
		40.122616, 35.146172, 31.655582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438412, 35.422756, 31.166388>,  <39.462120, 35.039562, 31.861439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438412, 35.422756, 31.166388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784595, 35.228771, 31.216661>,  <39.992306, 35.112381, 31.246826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784595, 35.228771, 31.216661>,  <39.438412, 35.422756, 31.166388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784595, 35.228771, 31.216661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071050, -0.367153, -0.927443,
		0.495920, 0.793732, -0.352212,
		0.865457, -0.484962, 0.125685,
		40.044231, 35.083282, 31.254366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829666, 35.679909, 30.628160>,  <39.438412, 35.422756, 31.166388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829666, 35.679909, 30.628160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564137, 35.817032, 30.362282>,  <39.404819, 35.899307, 30.202755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564137, 35.817032, 30.362282>,  <39.829666, 35.679909, 30.628160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564137, 35.817032, 30.362282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400274, 0.587912, 0.702951,
		0.631761, 0.732696, -0.253052,
		-0.663821, 0.342807, -0.664699,
		39.364990, 35.919872, 30.162872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855316, 36.412933, 30.699018>,  <39.829666, 35.679909, 30.628160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855316, 36.412933, 30.699018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506565, 36.343212, 30.515959>,  <39.297314, 36.301380, 30.406122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506565, 36.343212, 30.515959>,  <39.855316, 36.412933, 30.699018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506565, 36.343212, 30.515959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457397, 0.623717, 0.633849,
		0.174964, 0.761969, -0.623532,
		-0.871880, -0.174301, -0.457650,
		39.245003, 36.290920, 30.378664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529133, 36.946632, 30.772556>,  <39.855316, 36.412933, 30.699018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529133, 36.946632, 30.772556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211483, 36.717312, 30.691874>,  <39.020893, 36.579720, 30.643465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211483, 36.717312, 30.691874>,  <39.529133, 36.946632, 30.772556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211483, 36.717312, 30.691874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522632, 0.474810, 0.708103,
		-0.310184, 0.667744, -0.676686,
		-0.794129, -0.573300, -0.201706,
		38.973244, 36.545322, 30.631361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965721, 37.382729, 30.869308>,  <39.529133, 36.946632, 30.772556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965721, 37.382729, 30.869308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820923, 37.011768, 30.907028>,  <38.734043, 36.789192, 30.929661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820923, 37.011768, 30.907028>,  <38.965721, 37.382729, 30.869308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820923, 37.011768, 30.907028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653572, 0.324636, 0.683706,
		-0.664680, 0.185869, -0.723639,
		-0.361999, -0.927396, 0.094300,
		38.712322, 36.733551, 30.935318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357723, 37.478828, 30.682983>,  <38.965721, 37.382729, 30.869308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357723, 37.478828, 30.682983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346603, 37.145294, 30.903507>,  <38.339931, 36.945175, 31.035822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346603, 37.145294, 30.903507>,  <38.357723, 37.478828, 30.682983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346603, 37.145294, 30.903507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623517, 0.445544, 0.642431,
		-0.781316, -0.325896, -0.532295,
		-0.027795, -0.833836, 0.551312,
		38.338264, 36.895142, 31.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674725, 37.448494, 30.756109>,  <38.357723, 37.478828, 30.682983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674725, 37.448494, 30.756109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821247, 37.197716, 31.031137>,  <37.909161, 37.047249, 31.196154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821247, 37.197716, 31.031137>,  <37.674725, 37.448494, 30.756109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821247, 37.197716, 31.031137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729235, 0.265544, 0.630637,
		-0.577957, -0.732408, -0.359922,
		0.366308, -0.626949, 0.687571,
		37.931141, 37.009632, 31.237410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088799, 37.244270, 31.151789>,  <37.674725, 37.448494, 30.756109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088799, 37.244270, 31.151789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.390858, 37.166031, 31.402067>,  <37.572094, 37.119087, 31.552235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.390858, 37.166031, 31.402067>,  <37.088799, 37.244270, 31.151789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390858, 37.166031, 31.402067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600267, 0.177334, 0.779892,
		-0.263507, -0.964516, 0.016499,
		0.755145, -0.195603, 0.625696,
		37.617401, 37.107349, 31.589777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726604, 36.894806, 31.750204>,  <37.088799, 37.244270, 31.151789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726604, 36.894806, 31.750204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070667, 37.033440, 31.899878>,  <37.277103, 37.116619, 31.989681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070667, 37.033440, 31.899878>,  <36.726604, 36.894806, 31.750204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070667, 37.033440, 31.899878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502292, 0.448278, 0.739425,
		0.088536, -0.823969, 0.559675,
		0.860154, 0.346586, 0.374184,
		37.328712, 37.137417, 32.012135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801586, 36.675659, 32.423927>,  <36.726604, 36.894806, 31.750204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801586, 36.675659, 32.423927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049774, 36.988567, 32.401772>,  <37.198689, 37.176311, 32.388477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049774, 36.988567, 32.401772>,  <36.801586, 36.675659, 32.423927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049774, 36.988567, 32.401772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282852, 0.289109, 0.914555,
		0.731445, -0.551785, 0.400651,
		0.620469, 0.782272, -0.055394,
		37.235916, 37.223248, 32.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855545, 36.842182, 33.097099>,  <36.801586, 36.675659, 32.423927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855545, 36.842182, 33.097099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.059357, 37.155258, 32.954117>,  <37.181644, 37.343105, 32.868328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.059357, 37.155258, 32.954117>,  <36.855545, 36.842182, 33.097099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059357, 37.155258, 32.954117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265229, 0.538062, 0.800090,
		0.818555, -0.312864, 0.481752,
		0.509532, 0.782691, -0.357452,
		37.212215, 37.390064, 32.846882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210514, 37.124367, 33.670475>,  <36.855545, 36.842182, 33.097099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210514, 37.124367, 33.670475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178036, 37.406170, 33.388462>,  <37.158550, 37.575253, 33.219254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178036, 37.406170, 33.388462>,  <37.210514, 37.124367, 33.670475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178036, 37.406170, 33.388462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175125, 0.686282, 0.705938,
		0.981192, 0.180789, 0.067654,
		-0.081196, 0.704509, -0.705035,
		37.153679, 37.617523, 33.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575382, 37.783623, 33.925137>,  <37.210514, 37.124367, 33.670475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575382, 37.783623, 33.925137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322662, 37.911057, 33.642483>,  <37.171032, 37.987514, 33.472889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322662, 37.911057, 33.642483>,  <37.575382, 37.783623, 33.925137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322662, 37.911057, 33.642483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283420, 0.753563, 0.593141,
		0.721458, 0.575022, -0.385809,
		-0.631800, 0.318580, -0.706637,
		37.133121, 38.006630, 33.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.554703, 34.118973, 26.753174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159519, 34.146854, 26.808422>,  <39.922409, 34.163586, 26.841572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159519, 34.146854, 26.808422>,  <40.554703, 34.118973, 26.753174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159519, 34.146854, 26.808422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143305, 0.748780, 0.647141,
		-0.058313, 0.659143, -0.749754,
		-0.987959, 0.069707, 0.138122,
		39.863132, 34.167767, 26.849859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430588, 34.904724, 26.796989>,  <40.554703, 34.118973, 26.753174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430588, 34.904724, 26.796989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096622, 34.735268, 26.937527>,  <39.896244, 34.633595, 27.021849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096622, 34.735268, 26.937527>,  <40.430588, 34.904724, 26.796989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096622, 34.735268, 26.937527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111736, 0.755546, 0.645496,
		-0.538914, 0.499678, -0.678154,
		-0.834917, -0.423641, 0.351343,
		39.846146, 34.608177, 27.042929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007248, 35.466656, 26.975698>,  <40.430588, 34.904724, 26.796989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007248, 35.466656, 26.975698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870617, 35.152626, 27.182379>,  <39.788639, 34.964207, 27.306387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870617, 35.152626, 27.182379>,  <40.007248, 35.466656, 26.975698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870617, 35.152626, 27.182379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163013, 0.590925, 0.790085,
		-0.925608, 0.185649, -0.329825,
		-0.341580, -0.785075, 0.516701,
		39.768143, 34.917103, 27.337389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472713, 35.730797, 27.349529>,  <40.007248, 35.466656, 26.975698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472713, 35.730797, 27.349529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536304, 35.395096, 27.557520>,  <39.574459, 35.193676, 27.682314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536304, 35.395096, 27.557520>,  <39.472713, 35.730797, 27.349529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536304, 35.395096, 27.557520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371367, 0.437161, 0.819132,
		-0.914774, -0.323327, -0.242172,
		0.158980, -0.839255, 0.519977,
		39.584000, 35.143318, 27.713512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842087, 35.482655, 27.760260>,  <39.472713, 35.730797, 27.349529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842087, 35.482655, 27.760260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160805, 35.341202, 27.956247>,  <39.352036, 35.256329, 28.073839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160805, 35.341202, 27.956247>,  <38.842087, 35.482655, 27.760260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160805, 35.341202, 27.956247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366262, 0.362281, 0.857091,
		-0.480601, -0.862379, 0.159140,
		0.796790, -0.353632, 0.489969,
		39.399841, 35.235111, 28.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626671, 35.468174, 28.473494>,  <38.842087, 35.482655, 27.760260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626671, 35.468174, 28.473494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010155, 35.370750, 28.532219>,  <39.240246, 35.312294, 28.567453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010155, 35.370750, 28.532219>,  <38.626671, 35.468174, 28.473494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010155, 35.370750, 28.532219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089736, 0.230783, 0.968858,
		-0.269860, -0.942028, 0.199397,
		0.958709, -0.243563, 0.146813,
		39.297768, 35.297680, 28.576263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655922, 35.092644, 29.069427>,  <38.626671, 35.468174, 28.473494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655922, 35.092644, 29.069427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027657, 35.235485, 29.031900>,  <39.250698, 35.321190, 29.009384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027657, 35.235485, 29.031900>,  <38.655922, 35.092644, 29.069427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027657, 35.235485, 29.031900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016068, 0.214740, 0.976539,
		0.368874, -0.909045, 0.193829,
		0.929340, 0.357105, -0.093818,
		39.306458, 35.342617, 29.003756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007896, 34.832787, 29.718010>,  <38.655922, 35.092644, 29.069427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007896, 34.832787, 29.718010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184109, 35.162262, 29.575199>,  <39.289837, 35.359947, 29.489511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184109, 35.162262, 29.575199>,  <39.007896, 34.832787, 29.718010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184109, 35.162262, 29.575199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213598, 0.482448, 0.849482,
		0.871955, -0.297965, 0.388473,
		0.440534, 0.823687, -0.357029,
		39.316269, 35.409367, 29.468090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432068, 35.059235, 30.218060>,  <39.007896, 34.832787, 29.718010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432068, 35.059235, 30.218060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396702, 35.382355, 29.984945>,  <39.375481, 35.576225, 29.845078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396702, 35.382355, 29.984945>,  <39.432068, 35.059235, 30.218060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396702, 35.382355, 29.984945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156051, 0.566618, 0.809069,
		0.983784, 0.162481, 0.075958,
		-0.088419, 0.807802, -0.582785,
		39.370174, 35.624695, 29.810110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199490, 35.041615, 30.102757>,  <39.432068, 35.059235, 30.218060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199490, 35.041615, 30.102757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342293, 34.848347, 30.422529>,  <40.427975, 34.732388, 30.614393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342293, 34.848347, 30.422529>,  <40.199490, 35.041615, 30.102757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342293, 34.848347, 30.422529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529406, -0.600449, -0.599325,
		0.769595, 0.637187, 0.041430,
		0.357005, -0.483171, 0.799433,
		40.449394, 34.703396, 30.662359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820446, 34.675983, 29.820070>,  <40.199490, 35.041615, 30.102757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820446, 34.675983, 29.820070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738644, 34.500294, 30.169987>,  <40.689564, 34.394878, 30.379936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738644, 34.500294, 30.169987>,  <40.820446, 34.675983, 29.820070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738644, 34.500294, 30.169987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469860, -0.828041, -0.305909,
		0.858725, 0.348470, 0.375712,
		-0.204504, -0.439223, 0.874792,
		40.677292, 34.368526, 30.432425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481789, 34.328121, 30.041164>,  <40.820446, 34.675983, 29.820070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481789, 34.328121, 30.041164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173809, 34.164593, 30.237141>,  <40.989021, 34.066475, 30.354727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173809, 34.164593, 30.237141>,  <41.481789, 34.328121, 30.041164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173809, 34.164593, 30.237141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308856, -0.910639, -0.274490,
		0.558376, -0.060023, 0.827414,
		-0.769951, -0.408821, 0.489940,
		40.942825, 34.041946, 30.384123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750694, 33.887402, 30.516140>,  <41.481789, 34.328121, 30.041164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750694, 33.887402, 30.516140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379768, 33.747234, 30.463547>,  <41.157211, 33.663132, 30.431992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379768, 33.747234, 30.463547>,  <41.750694, 33.887402, 30.516140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379768, 33.747234, 30.463547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374278, -0.867829, -0.326787,
		0.000408, -0.352246, 0.935907,
		-0.927317, -0.350423, -0.131484,
		41.101574, 33.642109, 30.424101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784424, 33.229610, 30.748957>,  <41.750694, 33.887402, 30.516140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784424, 33.229610, 30.748957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462517, 33.235970, 30.511604>,  <41.269375, 33.239784, 30.369194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462517, 33.235970, 30.511604>,  <41.784424, 33.229610, 30.748957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462517, 33.235970, 30.511604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259202, -0.889888, -0.375384,
		-0.534010, -0.455901, 0.712030,
		-0.804766, 0.015899, -0.593380,
		41.221088, 33.240738, 30.333590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699123, 32.546848, 30.456314>,  <41.784424, 33.229610, 30.748957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699123, 32.546848, 30.456314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406391, 32.717155, 30.243467>,  <41.230751, 32.819340, 30.115759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406391, 32.717155, 30.243467>,  <41.699123, 32.546848, 30.456314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406391, 32.717155, 30.243467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132328, -0.854736, -0.501911,
		-0.668517, -0.296899, 0.681862,
		-0.731829, 0.425765, -0.532118,
		41.186844, 32.844887, 30.083832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176792, 32.022972, 30.378574>,  <41.699123, 32.546848, 30.456314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176792, 32.022972, 30.378574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095245, 32.285080, 30.087629>,  <41.046318, 32.442345, 29.913061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095245, 32.285080, 30.087629>,  <41.176792, 32.022972, 30.378574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095245, 32.285080, 30.087629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070777, -0.750888, -0.656626,
		-0.976438, -0.082382, 0.199457,
		-0.203864, 0.655271, -0.727365,
		41.034084, 32.481663, 29.869419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552963, 31.827341, 30.072878>,  <41.176792, 32.022972, 30.378574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552963, 31.827341, 30.072878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764565, 32.036705, 29.805687>,  <40.891525, 32.162323, 29.645372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764565, 32.036705, 29.805687>,  <40.552963, 31.827341, 30.072878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764565, 32.036705, 29.805687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182183, -0.698738, -0.691791,
		-0.828833, 0.487655, -0.274279,
		0.529004, 0.523411, -0.667979,
		40.923267, 32.193729, 29.605293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158718, 31.755920, 29.363970>,  <40.552963, 31.827341, 30.072878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158718, 31.755920, 29.363970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532459, 31.860115, 29.266708>,  <40.756706, 31.922632, 29.208351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532459, 31.860115, 29.266708>,  <40.158718, 31.755920, 29.363970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532459, 31.860115, 29.266708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, -0.511482, -0.855557,
		-0.347229, 0.818862, -0.457054,
		0.934357, 0.260484, -0.243155,
		40.812767, 31.938261, 29.193762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036209, 31.948130, 28.726852>,  <40.158718, 31.755920, 29.363970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036209, 31.948130, 28.726852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430595, 31.906231, 28.778856>,  <40.667229, 31.881092, 28.810059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430595, 31.906231, 28.778856>,  <40.036209, 31.948130, 28.726852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430595, 31.906231, 28.778856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077146, -0.404765, -0.911161,
		0.148064, 0.908401, -0.391003,
		0.985964, -0.104746, 0.130011,
		40.726383, 31.874807, 28.817860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341766, 32.238487, 28.023275>,  <40.036209, 31.948130, 28.726852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341766, 32.238487, 28.023275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591545, 31.975193, 28.191460>,  <40.741413, 31.817215, 28.292370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591545, 31.975193, 28.191460>,  <40.341766, 32.238487, 28.023275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591545, 31.975193, 28.191460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069228, -0.489553, -0.869221,
		0.777992, 0.571891, -0.260132,
		0.624449, -0.658238, 0.420460,
		40.778881, 31.777721, 28.317598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758896, 31.974649, 27.499411>,  <40.341766, 32.238487, 28.023275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758896, 31.974649, 27.499411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847195, 31.699989, 27.776476>,  <40.900173, 31.535194, 27.942715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847195, 31.699989, 27.776476>,  <40.758896, 31.974649, 27.499411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847195, 31.699989, 27.776476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194189, -0.665023, -0.721135,
		0.955804, 0.293698, -0.013464,
		0.220749, -0.686649, 0.692664,
		40.913418, 31.493996, 27.984276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425488, 31.815907, 27.376028>,  <40.758896, 31.974649, 27.499411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425488, 31.815907, 27.376028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266911, 31.505739, 27.572624>,  <41.171764, 31.319639, 27.690582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266911, 31.505739, 27.572624>,  <41.425488, 31.815907, 27.376028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266911, 31.505739, 27.572624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251502, -0.606608, -0.754171,
		0.882940, -0.175372, 0.435503,
		-0.396440, -0.775417, 0.491492,
		41.147980, 31.273113, 27.720072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954918, 31.235270, 27.357748>,  <41.425488, 31.815907, 27.376028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954918, 31.235270, 27.357748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605190, 31.049835, 27.415224>,  <41.395351, 30.938574, 27.449711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605190, 31.049835, 27.415224>,  <41.954918, 31.235270, 27.357748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605190, 31.049835, 27.415224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279684, -0.723209, -0.631463,
		0.396657, -0.511915, 0.761976,
		-0.874323, -0.463586, 0.143691,
		41.342892, 30.910759, 27.458332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.688824, 30.646708, 25.630287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007343, 30.845325, 25.492094>,  <35.198456, 30.964497, 25.409178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007343, 30.845325, 25.492094>,  <34.688824, 30.646708, 25.630287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007343, 30.845325, 25.492094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002058, 0.568903, 0.822402,
		0.604907, -0.655585, 0.451992,
		0.796294, 0.496546, -0.345483,
		35.246231, 30.994289, 25.388449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179157, 30.617186, 26.166002>,  <34.688824, 30.646708, 25.630287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179157, 30.617186, 26.166002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254623, 30.942736, 25.946180>,  <35.299904, 31.138065, 25.814287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254623, 30.942736, 25.946180>,  <35.179157, 30.617186, 26.166002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254623, 30.942736, 25.946180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174896, 0.578503, 0.796709,
		0.966341, -0.054199, 0.251489,
		0.188668, 0.813877, -0.549552,
		35.311222, 31.186899, 25.781315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240681, 31.133413, 26.711855>,  <35.179157, 30.617186, 26.166002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240681, 31.133413, 26.711855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205685, 31.359915, 26.384026>,  <35.184685, 31.495815, 26.187328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205685, 31.359915, 26.384026>,  <35.240681, 31.133413, 26.711855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205685, 31.359915, 26.384026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242675, 0.785827, 0.568845,
		0.966154, 0.248660, 0.068662,
		-0.087492, 0.566255, -0.819574,
		35.179436, 31.529791, 26.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405666, 31.666285, 26.970224>,  <35.240681, 31.133413, 26.711855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405666, 31.666285, 26.970224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218658, 31.816637, 26.650188>,  <35.106453, 31.906849, 26.458166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218658, 31.816637, 26.650188>,  <35.405666, 31.666285, 26.970224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218658, 31.816637, 26.650188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346109, 0.755001, 0.556940,
		0.813410, 0.537297, -0.222880,
		-0.467517, 0.375880, -0.800089,
		35.078403, 31.929401, 26.410162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657131, 32.402534, 26.937891>,  <35.405666, 31.666285, 26.970224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657131, 32.402534, 26.937891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349792, 32.383747, 26.682566>,  <35.165390, 32.372475, 26.529371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349792, 32.383747, 26.682566>,  <35.657131, 32.402534, 26.937891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349792, 32.383747, 26.682566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326975, 0.886144, 0.328385,
		0.550214, 0.461024, -0.696219,
		-0.768344, -0.046964, -0.638312,
		35.119289, 32.369659, 26.491072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626156, 33.062592, 26.482126>,  <35.657131, 32.402534, 26.937891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626156, 33.062592, 26.482126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271351, 32.882572, 26.523420>,  <35.058468, 32.774559, 26.548197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271351, 32.882572, 26.523420>,  <35.626156, 33.062592, 26.482126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271351, 32.882572, 26.523420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356208, 0.809226, 0.467193,
		-0.293802, 0.377633, -0.878108,
		-0.887015, -0.450051, 0.103236,
		35.005245, 32.747559, 26.554392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235420, 33.661926, 26.537611>,  <35.626156, 33.062592, 26.482126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235420, 33.661926, 26.537611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983685, 33.375301, 26.657930>,  <34.832645, 33.203327, 26.730122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983685, 33.375301, 26.657930>,  <35.235420, 33.661926, 26.537611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983685, 33.375301, 26.657930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479437, 0.662619, 0.575393,
		-0.611618, 0.217901, -0.760554,
		-0.629336, -0.716558, 0.300800,
		34.794884, 33.160336, 26.748171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589592, 33.909103, 26.453344>,  <35.235420, 33.661926, 26.537611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589592, 33.909103, 26.453344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555492, 33.615963, 26.723354>,  <34.535034, 33.440079, 26.885361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555492, 33.615963, 26.723354>,  <34.589592, 33.909103, 26.453344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555492, 33.615963, 26.723354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300510, 0.664853, 0.683859,
		-0.949961, -0.144556, -0.276905,
		-0.085245, -0.732853, 0.675026,
		34.529919, 33.396107, 26.925861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950050, 34.065430, 26.723900>,  <34.589592, 33.909103, 26.453344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950050, 34.065430, 26.723900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100800, 33.816898, 26.998684>,  <34.191250, 33.667778, 27.163555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100800, 33.816898, 26.998684>,  <33.950050, 34.065430, 26.723900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100800, 33.816898, 26.998684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525768, 0.467094, 0.710909,
		-0.762584, -0.629106, -0.150639,
		0.376874, -0.621328, 0.686962,
		34.213863, 33.630501, 27.204773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438961, 33.970406, 27.122711>,  <33.950050, 34.065430, 26.723900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438961, 33.970406, 27.122711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766521, 33.881752, 27.334475>,  <33.963058, 33.828560, 27.461533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766521, 33.881752, 27.334475>,  <33.438961, 33.970406, 27.122711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766521, 33.881752, 27.334475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434454, 0.363359, 0.824148,
		-0.375028, -0.904901, 0.201265,
		0.818904, -0.221638, 0.529408,
		34.012192, 33.815262, 27.493298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160576, 33.967213, 27.723019>,  <33.438961, 33.970406, 27.122711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160576, 33.967213, 27.723019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553043, 33.987144, 27.797665>,  <33.788525, 33.999104, 27.842451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553043, 33.987144, 27.797665>,  <33.160576, 33.967213, 27.723019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553043, 33.987144, 27.797665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190904, 0.397168, 0.897671,
		-0.029387, -0.916392, 0.399202,
		0.981169, 0.049829, 0.186614,
		33.847393, 34.002094, 27.853649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240417, 33.578568, 28.352839>,  <33.160576, 33.967213, 27.723019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240417, 33.578568, 28.352839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542221, 33.838467, 28.315840>,  <33.723301, 33.994404, 28.293640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542221, 33.838467, 28.315840>,  <33.240417, 33.578568, 28.352839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542221, 33.838467, 28.315840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199937, 0.361801, 0.910563,
		0.625100, -0.668530, 0.402888,
		0.754504, 0.649745, -0.092498,
		33.768574, 34.033390, 28.288090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571899, 33.645363, 29.032583>,  <33.240417, 33.578568, 28.352839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571899, 33.645363, 29.032583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666473, 33.987206, 28.847652>,  <33.723217, 34.192310, 28.736694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666473, 33.987206, 28.847652>,  <33.571899, 33.645363, 29.032583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666473, 33.987206, 28.847652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404801, 0.519195, 0.752710,
		0.883309, 0.009183, 0.468701,
		0.236435, 0.854606, -0.462328,
		33.737404, 34.243587, 28.708954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856728, 34.050999, 29.613268>,  <33.571899, 33.645363, 29.032583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856728, 34.050999, 29.613268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.740555, 34.284676, 29.310120>,  <33.670853, 34.424881, 29.128231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.740555, 34.284676, 29.310120>,  <33.856728, 34.050999, 29.613268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740555, 34.284676, 29.310120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447880, 0.616909, 0.647169,
		0.845608, 0.527394, 0.082477,
		-0.290432, 0.584190, -0.757872,
		33.653423, 34.459934, 29.082758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680008, 34.194645, 29.691059>,  <33.856728, 34.050999, 29.613268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680008, 34.194645, 29.691059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879570, 34.053986, 30.007904>,  <34.999306, 33.969589, 30.198011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879570, 34.053986, 30.007904>,  <34.680008, 34.194645, 29.691059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879570, 34.053986, 30.007904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149295, -0.865446, -0.478241,
		0.853703, 0.356853, -0.379272,
		0.498901, -0.351652, 0.792110,
		35.029240, 33.948490, 30.245537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294510, 33.961437, 29.421404>,  <34.680008, 34.194645, 29.691059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294510, 33.961437, 29.421404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243153, 33.782135, 29.775257>,  <35.212337, 33.674553, 29.987570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243153, 33.782135, 29.775257>,  <35.294510, 33.961437, 29.421404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243153, 33.782135, 29.775257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379909, -0.846202, -0.373646,
		0.916070, 0.288105, 0.278948,
		-0.128397, -0.448260, 0.884634,
		35.204632, 33.647655, 30.040648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866898, 33.580875, 29.591057>,  <35.294510, 33.961437, 29.421404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866898, 33.580875, 29.591057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616901, 33.382027, 29.831806>,  <35.466904, 33.262718, 29.976255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616901, 33.382027, 29.831806>,  <35.866898, 33.580875, 29.591057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616901, 33.382027, 29.831806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375021, -0.867417, -0.327028,
		0.684649, 0.021325, 0.728561,
		-0.624992, -0.497125, 0.601874,
		35.429405, 33.232887, 30.012369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200710, 33.007141, 29.869743>,  <35.866898, 33.580875, 29.591057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200710, 33.007141, 29.869743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837551, 32.870510, 29.966946>,  <35.619656, 32.788532, 30.025267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837551, 32.870510, 29.966946>,  <36.200710, 33.007141, 29.869743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837551, 32.870510, 29.966946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235377, -0.895066, -0.378753,
		0.346881, -0.286669, 0.893025,
		-0.907894, -0.341580, 0.243006,
		35.565182, 32.768036, 30.039848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302696, 32.423107, 30.397156>,  <36.200710, 33.007141, 29.869743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302696, 32.423107, 30.397156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957535, 32.374767, 30.200874>,  <35.750439, 32.345764, 30.083105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957535, 32.374767, 30.200874>,  <36.302696, 32.423107, 30.397156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957535, 32.374767, 30.200874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398097, -0.760683, -0.512718,
		-0.311311, -0.637775, 0.704505,
		-0.862904, -0.120847, -0.490706,
		35.698662, 32.338512, 30.053663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177113, 31.786259, 30.511314>,  <36.302696, 32.423107, 30.397156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177113, 31.786259, 30.511314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960976, 31.886900, 30.190134>,  <35.831295, 31.947285, 29.997425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960976, 31.886900, 30.190134>,  <36.177113, 31.786259, 30.511314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960976, 31.886900, 30.190134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356802, -0.795701, -0.489440,
		-0.762053, -0.550958, 0.340176,
		-0.540340, 0.251603, -0.802950,
		35.798874, 31.962381, 29.949249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988304, 31.105104, 30.227325>,  <36.177113, 31.786259, 30.511314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988304, 31.105104, 30.227325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890564, 31.345568, 29.922981>,  <35.831921, 31.489845, 29.740376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890564, 31.345568, 29.922981>,  <35.988304, 31.105104, 30.227325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890564, 31.345568, 29.922981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341413, -0.681065, -0.647755,
		-0.907597, -0.418043, -0.038827,
		-0.244346, 0.601157, -0.760858,
		35.817261, 31.525915, 29.694723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435062, 30.787655, 29.735369>,  <35.988304, 31.105104, 30.227325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435062, 30.787655, 29.735369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672878, 31.047430, 29.545736>,  <35.815567, 31.203295, 29.431957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672878, 31.047430, 29.545736>,  <35.435062, 30.787655, 29.735369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672878, 31.047430, 29.545736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362626, -0.742808, -0.562795,
		-0.717651, 0.162691, -0.677133,
		0.594542, 0.649436, -0.474081,
		35.851242, 31.242260, 29.403511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425014, 30.590975, 29.060556>,  <35.435062, 30.787655, 29.735369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425014, 30.590975, 29.060556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721725, 30.858479, 29.040449>,  <35.899754, 31.018980, 29.028385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721725, 30.858479, 29.040449>,  <35.425014, 30.590975, 29.060556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721725, 30.858479, 29.040449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481926, -0.583668, -0.653513,
		-0.466384, 0.460534, -0.755244,
		0.741777, 0.668760, -0.050270,
		35.944260, 31.059107, 29.025368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523937, 30.604094, 28.374531>,  <35.425014, 30.590975, 29.060556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523937, 30.604094, 28.374531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853924, 30.740028, 28.555174>,  <36.051914, 30.821589, 28.663559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853924, 30.740028, 28.555174>,  <35.523937, 30.604094, 28.374531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853924, 30.740028, 28.555174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554788, -0.334324, -0.761865,
		-0.107928, 0.879055, -0.464342,
		0.824962, 0.339838, 0.451606,
		36.101414, 30.841980, 28.690657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845539, 30.998562, 27.837170>,  <35.523937, 30.604094, 28.374531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845539, 30.998562, 27.837170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085224, 30.833061, 28.111322>,  <36.229034, 30.733761, 28.275814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085224, 30.833061, 28.111322>,  <35.845539, 30.998562, 27.837170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085224, 30.833061, 28.111322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592606, -0.346384, -0.727212,
		0.538291, 0.841918, 0.037634,
		0.599217, -0.413753, 0.685381,
		36.264988, 30.708935, 28.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340527, 31.467743, 27.899296>,  <35.845539, 30.998562, 27.837170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340527, 31.467743, 27.899296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396999, 31.074331, 27.944433>,  <36.430885, 30.838284, 27.971516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396999, 31.074331, 27.944433>,  <36.340527, 31.467743, 27.899296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396999, 31.074331, 27.944433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570505, -0.012323, -0.821202,
		0.809068, 0.180320, 0.559370,
		0.141186, -0.983531, 0.112844,
		36.439354, 30.779272, 27.978287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160034, 31.175060, 27.852623>,  <36.340527, 31.467743, 27.899296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160034, 31.175060, 27.852623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890026, 30.897821, 27.751455>,  <36.728024, 30.731478, 27.690754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890026, 30.897821, 27.751455>,  <37.160034, 31.175060, 27.852623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890026, 30.897821, 27.751455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551571, -0.246379, -0.796911,
		0.490024, -0.677430, 0.548603,
		-0.675016, -0.693099, -0.252919,
		36.687523, 30.689892, 27.675579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398170, 30.435631, 27.900032>,  <37.160034, 31.175060, 27.852623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398170, 30.435631, 27.900032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121185, 30.455715, 27.612148>,  <36.954994, 30.467766, 27.439419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121185, 30.455715, 27.612148>,  <37.398170, 30.435631, 27.900032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121185, 30.455715, 27.612148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630853, -0.441865, -0.637794,
		-0.350036, -0.895676, 0.274299,
		-0.692459, 0.050208, -0.719708,
		36.913448, 30.470778, 27.396236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555687, 29.977161, 28.410906>,  <37.398170, 30.435631, 27.900032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555687, 29.977161, 28.410906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900124, 29.868332, 28.582720>,  <38.106785, 29.803034, 28.685808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900124, 29.868332, 28.582720>,  <37.555687, 29.977161, 28.410906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900124, 29.868332, 28.582720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275102, 0.461149, 0.843600,
		-0.427603, -0.844580, 0.322242,
		0.861089, -0.272076, 0.429534,
		38.158451, 29.786709, 28.711580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348766, 29.836941, 29.102789>,  <37.555687, 29.977161, 28.410906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348766, 29.836941, 29.102789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748184, 29.839476, 29.124193>,  <37.987835, 29.840998, 29.137035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748184, 29.839476, 29.124193>,  <37.348766, 29.836941, 29.102789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748184, 29.839476, 29.124193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048868, 0.524883, 0.849770,
		-0.022701, -0.851151, 0.524430,
		0.998547, 0.006338, 0.053510,
		38.047749, 29.841377, 29.140245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502289, 29.669365, 29.873171>,  <37.348766, 29.836941, 29.102789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502289, 29.669365, 29.873171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815842, 29.849117, 29.701782>,  <38.003971, 29.956970, 29.598949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815842, 29.849117, 29.701782>,  <37.502289, 29.669365, 29.873171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815842, 29.849117, 29.701782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125390, 0.561279, 0.818073,
		0.608121, -0.694996, 0.383626,
		0.783879, 0.449384, -0.428471,
		38.051006, 29.983932, 29.573240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113094, 29.681889, 30.356541>,  <37.502289, 29.669365, 29.873171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113094, 29.681889, 30.356541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148205, 29.988657, 30.102255>,  <38.169270, 30.172718, 29.949684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148205, 29.988657, 30.102255>,  <38.113094, 29.681889, 30.356541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148205, 29.988657, 30.102255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192594, 0.613069, 0.766195,
		0.977345, -0.189689, -0.093890,
		0.087778, 0.766919, -0.635713,
		38.174538, 30.218733, 29.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599949, 30.183044, 30.755165>,  <38.113094, 29.681889, 30.356541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599949, 30.183044, 30.755165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466541, 30.412848, 30.456179>,  <38.386497, 30.550730, 30.276787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466541, 30.412848, 30.456179>,  <38.599949, 30.183044, 30.755165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466541, 30.412848, 30.456179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050709, 0.780783, 0.622740,
		0.941379, 0.245598, -0.231272,
		-0.333517, 0.574507, -0.747467,
		38.366486, 30.585199, 30.231939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967480, 30.787937, 30.769047>,  <38.599949, 30.183044, 30.755165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967480, 30.787937, 30.769047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620262, 30.880342, 30.593260>,  <38.411930, 30.935785, 30.487787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620262, 30.880342, 30.593260>,  <38.967480, 30.787937, 30.769047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620262, 30.880342, 30.593260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192624, 0.659120, 0.726950,
		0.457596, 0.715678, -0.527647,
		-0.868045, 0.231011, -0.439467,
		38.359848, 30.949646, 30.461420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977230, 31.482689, 30.847527>,  <38.967480, 30.787937, 30.769047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977230, 31.482689, 30.847527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612194, 31.392433, 30.711138>,  <38.393173, 31.338280, 30.629305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612194, 31.392433, 30.711138>,  <38.977230, 31.482689, 30.847527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612194, 31.392433, 30.711138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389885, 0.731403, 0.559499,
		0.123141, 0.643534, -0.755447,
		-0.912593, -0.225640, -0.340970,
		38.338417, 31.324741, 30.608847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695396, 32.038490, 30.615711>,  <38.977230, 31.482689, 30.847527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695396, 32.038490, 30.615711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427174, 31.780121, 30.761662>,  <38.266239, 31.625099, 30.849232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427174, 31.780121, 30.761662>,  <38.695396, 32.038490, 30.615711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427174, 31.780121, 30.761662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444390, 0.743568, 0.499624,
		-0.594028, 0.172881, -0.785648,
		-0.670558, -0.645925, 0.364874,
		38.226006, 31.586344, 30.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115810, 32.290310, 30.612949>,  <38.695396, 32.038490, 30.615711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115810, 32.290310, 30.612949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044071, 32.020164, 30.899086>,  <38.001026, 31.858076, 31.070768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044071, 32.020164, 30.899086>,  <38.115810, 32.290310, 30.612949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044071, 32.020164, 30.899086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371406, 0.719805, 0.586462,
		-0.910984, -0.160499, -0.379933,
		-0.179351, -0.675367, 0.715341,
		37.990265, 31.817554, 31.113688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468170, 32.504097, 30.867670>,  <38.115810, 32.290310, 30.612949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468170, 32.504097, 30.867670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613651, 32.261299, 31.150309>,  <37.700939, 32.115620, 31.319891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613651, 32.261299, 31.150309>,  <37.468170, 32.504097, 30.867670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613651, 32.261299, 31.150309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394912, 0.586531, 0.707125,
		-0.843660, -0.536230, -0.026383,
		0.363707, -0.606992, 0.706596,
		37.722763, 32.079201, 31.362288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890041, 32.254974, 31.307631>,  <37.468170, 32.504097, 30.867670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890041, 32.254974, 31.307631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238995, 32.264587, 31.502922>,  <37.448368, 32.270355, 31.620098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238995, 32.264587, 31.502922>,  <36.890041, 32.254974, 31.307631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238995, 32.264587, 31.502922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459994, 0.378289, 0.803307,
		-0.165383, -0.925375, 0.341071,
		0.872384, 0.024037, 0.488230,
		37.500710, 32.271797, 31.649391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751991, 32.020546, 32.032059>,  <36.890041, 32.254974, 31.307631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751991, 32.020546, 32.032059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087280, 32.238190, 32.046646>,  <37.288452, 32.368774, 32.055397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087280, 32.238190, 32.046646>,  <36.751991, 32.020546, 32.032059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087280, 32.238190, 32.046646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250011, 0.324001, 0.912424,
		0.484646, -0.773929, 0.407618,
		0.838220, 0.544111, 0.036465,
		37.338745, 32.401424, 32.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943447, 31.921951, 32.696968>,  <36.751991, 32.020546, 32.032059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943447, 31.921951, 32.696968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180229, 32.220387, 32.575027>,  <37.322300, 32.399448, 32.501862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180229, 32.220387, 32.575027>,  <36.943447, 31.921951, 32.696968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180229, 32.220387, 32.575027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100967, 0.443911, 0.890365,
		0.799619, -0.496279, 0.338108,
		0.591959, 0.746090, -0.304851,
		37.357819, 32.444214, 32.483574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484818, 31.998720, 33.256855>,  <36.943447, 31.921951, 32.696968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484818, 31.998720, 33.256855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466698, 32.325977, 33.027565>,  <37.455826, 32.522331, 32.889992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466698, 32.325977, 33.027565>,  <37.484818, 31.998720, 33.256855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466698, 32.325977, 33.027565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027143, 0.572598, 0.819387,
		0.998605, 0.052679, -0.003732,
		-0.045302, 0.818142, -0.573229,
		37.453106, 32.571419, 32.855595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.168072, 30.537025, 27.283506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770378, 30.538763, 27.240656>,  <41.531761, 30.539806, 27.214945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770378, 30.538763, 27.240656>,  <42.168072, 30.537025, 27.283506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770378, 30.538763, 27.240656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070011, -0.730427, -0.679393,
		-0.081202, -0.682977, 0.725912,
		-0.994236, 0.004346, -0.107128,
		41.472107, 30.540068, 27.208517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010406, 29.900204, 27.304867>,  <42.168072, 30.537025, 27.283506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010406, 29.900204, 27.304867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701519, 30.068342, 27.114294>,  <41.516186, 30.169226, 26.999950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701519, 30.068342, 27.114294>,  <42.010406, 29.900204, 27.304867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701519, 30.068342, 27.114294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042582, -0.782418, -0.621297,
		-0.633927, -0.459490, 0.622097,
		-0.772219, 0.420347, -0.476430,
		41.469852, 30.194447, 26.971365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598625, 29.410431, 27.054745>,  <42.010406, 29.900204, 27.304867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598625, 29.410431, 27.054745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450520, 29.701965, 26.824371>,  <41.361656, 29.876886, 26.686148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450520, 29.701965, 26.824371>,  <41.598625, 29.410431, 27.054745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450520, 29.701965, 26.824371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024082, -0.627322, -0.778388,
		-0.928613, -0.274342, 0.249828,
		-0.370267, 0.728837, -0.575932,
		41.339439, 29.920616, 26.651592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952099, 29.185513, 26.765854>,  <41.598625, 29.410431, 27.054745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952099, 29.185513, 26.765854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072544, 29.477234, 26.520107>,  <41.144810, 29.652266, 26.372660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072544, 29.477234, 26.520107>,  <40.952099, 29.185513, 26.765854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072544, 29.477234, 26.520107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066800, -0.626555, -0.776509,
		-0.951246, 0.274857, -0.139947,
		0.301113, 0.729302, -0.614369,
		41.162880, 29.696024, 26.335796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478271, 29.224062, 26.260889>,  <40.952099, 29.185513, 26.765854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478271, 29.224062, 26.260889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813145, 29.387985, 26.116009>,  <41.014069, 29.486340, 26.029081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813145, 29.387985, 26.116009>,  <40.478271, 29.224062, 26.260889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813145, 29.387985, 26.116009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143337, -0.474696, -0.868400,
		-0.527813, 0.778922, -0.338664,
		0.837178, 0.409810, -0.362199,
		41.064297, 29.510929, 26.007349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289463, 29.695498, 25.666719>,  <40.478271, 29.224062, 26.260889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289463, 29.695498, 25.666719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.669170, 29.573416, 25.636398>,  <40.896996, 29.500166, 25.618206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.669170, 29.573416, 25.636398>,  <40.289463, 29.695498, 25.666719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669170, 29.573416, 25.636398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178049, -0.322919, -0.929528,
		0.259219, 0.895864, -0.360877,
		0.949265, -0.305205, -0.075801,
		40.953949, 29.481853, 25.613659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399044, 29.783134, 24.935432>,  <40.289463, 29.695498, 25.666719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399044, 29.783134, 24.935432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727077, 29.580982, 25.042807>,  <40.923897, 29.459692, 25.107231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727077, 29.580982, 25.042807>,  <40.399044, 29.783134, 24.935432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727077, 29.580982, 25.042807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036691, -0.421689, -0.905998,
		0.571070, 0.752841, -0.327277,
		0.820081, -0.505380, 0.268437,
		40.973103, 29.429369, 25.123337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715000, 29.747265, 24.326927>,  <40.399044, 29.783134, 24.935432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715000, 29.747265, 24.326927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909508, 29.494503, 24.568336>,  <41.026211, 29.342846, 24.713182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909508, 29.494503, 24.568336>,  <40.715000, 29.747265, 24.326927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909508, 29.494503, 24.568336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068386, -0.661043, -0.747225,
		0.871130, 0.404625, -0.278230,
		0.486268, -0.631903, 0.603525,
		41.055389, 29.304932, 24.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337524, 29.556847, 23.967850>,  <40.715000, 29.747265, 24.326927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337524, 29.556847, 23.967850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.257755, 29.272635, 24.237776>,  <41.209892, 29.102108, 24.399733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.257755, 29.272635, 24.237776>,  <41.337524, 29.556847, 23.967850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257755, 29.272635, 24.237776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068423, -0.676872, -0.732914,
		0.977521, -0.192335, 0.086370,
		-0.199426, -0.710529, 0.674816,
		41.197926, 29.059475, 24.440220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757778, 28.941931, 23.726978>,  <41.337524, 29.556847, 23.967850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757778, 28.941931, 23.726978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.461254, 28.818392, 23.965330>,  <41.283340, 28.744268, 24.108341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.461254, 28.818392, 23.965330>,  <41.757778, 28.941931, 23.726978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461254, 28.818392, 23.965330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359175, -0.567447, -0.740943,
		0.566968, -0.763294, 0.309725,
		-0.741310, -0.308845, 0.595881,
		41.238861, 28.725739, 24.144094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829575, 28.174879, 23.768648>,  <41.757778, 28.941931, 23.726978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829575, 28.174879, 23.768648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453094, 28.282982, 23.849749>,  <41.227207, 28.347843, 23.898409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453094, 28.282982, 23.849749>,  <41.829575, 28.174879, 23.768648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453094, 28.282982, 23.849749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328948, -0.596141, -0.732400,
		-0.077067, -0.756028, 0.649987,
		-0.941198, 0.270255, 0.202751,
		41.170734, 28.364059, 23.910574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477936, 27.513626, 23.944862>,  <41.829575, 28.174879, 23.768648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477936, 27.513626, 23.944862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.193230, 27.773363, 23.837721>,  <41.022408, 27.929205, 23.773436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.193230, 27.773363, 23.837721>,  <41.477936, 27.513626, 23.944862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193230, 27.773363, 23.837721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338466, -0.651196, -0.679252,
		-0.615493, -0.392808, 0.683279,
		-0.711765, 0.649342, -0.267854,
		40.979702, 27.968166, 23.757364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913177, 27.103849, 23.795841>,  <41.477936, 27.513626, 23.944862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913177, 27.103849, 23.795841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865524, 27.461020, 23.622179>,  <40.836933, 27.675322, 23.517982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865524, 27.461020, 23.622179>,  <40.913177, 27.103849, 23.795841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865524, 27.461020, 23.622179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153382, -0.448571, -0.880487,
		-0.980959, -0.038307, 0.190400,
		-0.119137, 0.892926, -0.434154,
		40.829784, 27.728897, 23.491932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198479, 26.554020, 24.253109>,  <40.913177, 27.103849, 23.795841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198479, 26.554020, 24.253109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883160, 26.309046, 24.276794>,  <40.693970, 26.162062, 24.291006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883160, 26.309046, 24.276794>,  <41.198479, 26.554020, 24.253109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883160, 26.309046, 24.276794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377817, 0.557760, 0.739025,
		-0.485633, 0.560201, -0.671071,
		-0.788299, -0.612437, 0.059214,
		40.646671, 26.125315, 24.294558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796585, 26.964132, 24.489544>,  <41.198479, 26.554020, 24.253109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796585, 26.964132, 24.489544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581440, 26.639801, 24.581858>,  <40.452351, 26.445202, 24.637245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581440, 26.639801, 24.581858>,  <40.796585, 26.964132, 24.489544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581440, 26.639801, 24.581858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439098, 0.503136, 0.744343,
		-0.719648, 0.299020, -0.626652,
		-0.537865, -0.810827, 0.230782,
		40.420082, 26.396553, 24.651093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158600, 27.241180, 24.698858>,  <40.796585, 26.964132, 24.489544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158600, 27.241180, 24.698858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167099, 26.872980, 24.854923>,  <40.172199, 26.652060, 24.948563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167099, 26.872980, 24.854923>,  <40.158600, 27.241180, 24.698858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167099, 26.872980, 24.854923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390235, 0.351657, 0.850913,
		-0.920470, -0.170333, -0.351741,
		0.021246, -0.920502, 0.390160,
		40.173473, 26.596830, 24.971972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457088, 27.274614, 25.015934>,  <40.158600, 27.241180, 24.698858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457088, 27.274614, 25.015934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.674465, 26.976665, 25.170769>,  <39.804890, 26.797895, 25.263670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.674465, 26.976665, 25.170769>,  <39.457088, 27.274614, 25.015934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674465, 26.976665, 25.170769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350690, 0.217501, 0.910884,
		-0.762684, -0.630759, -0.143021,
		0.543442, -0.744873, 0.387086,
		39.837498, 26.753204, 25.286894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068527, 27.129726, 25.541300>,  <39.457088, 27.274614, 25.015934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068527, 27.129726, 25.541300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417885, 26.956959, 25.631298>,  <39.627499, 26.853298, 25.685297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417885, 26.956959, 25.631298>,  <39.068527, 27.129726, 25.541300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417885, 26.956959, 25.631298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090102, 0.310713, 0.946224,
		-0.478602, -0.846701, 0.232459,
		0.873397, -0.431920, 0.224997,
		39.679905, 26.827383, 25.698797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853527, 26.733427, 26.023203>,  <39.068527, 27.129726, 25.541300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853527, 26.733427, 26.023203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240440, 26.813890, 26.085037>,  <39.472588, 26.862169, 26.122137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240440, 26.813890, 26.085037>,  <38.853527, 26.733427, 26.023203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240440, 26.813890, 26.085037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220336, 0.364084, 0.904928,
		0.125752, -0.909383, 0.396495,
		0.967284, 0.201158, 0.154585,
		39.530624, 26.874239, 26.131413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868874, 26.591312, 26.714081>,  <38.853527, 26.733427, 26.023203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868874, 26.591312, 26.714081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209316, 26.787434, 26.639017>,  <39.413582, 26.905107, 26.593979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209316, 26.787434, 26.639017>,  <38.868874, 26.591312, 26.714081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209316, 26.787434, 26.639017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041614, 0.419336, 0.906877,
		0.523341, -0.764040, 0.377303,
		0.851107, 0.490307, -0.187660,
		39.464649, 26.934525, 26.582720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162735, 26.451378, 27.284243>,  <38.868874, 26.591312, 26.714081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162735, 26.451378, 27.284243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336685, 26.767290, 27.111208>,  <39.441055, 26.956837, 27.007387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336685, 26.767290, 27.111208>,  <39.162735, 26.451378, 27.284243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336685, 26.767290, 27.111208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174174, 0.545089, 0.820086,
		0.883486, -0.281289, 0.374605,
		0.434874, 0.789781, -0.432585,
		39.467148, 27.004225, 26.981432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557571, 26.854380, 27.821028>,  <39.162735, 26.451378, 27.284243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557571, 26.854380, 27.821028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477673, 27.116842, 27.529945>,  <39.429733, 27.274321, 27.355295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477673, 27.116842, 27.529945>,  <39.557571, 26.854380, 27.821028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477673, 27.116842, 27.529945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217359, 0.694499, 0.685876,
		0.955436, 0.295174, 0.003898,
		-0.199746, 0.656158, -0.727708,
		39.417747, 27.313690, 27.311634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860889, 27.431108, 28.028513>,  <39.557571, 26.854380, 27.821028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860889, 27.431108, 28.028513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.571884, 27.566805, 27.787550>,  <39.398483, 27.648224, 27.642973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.571884, 27.566805, 27.787550>,  <39.860889, 27.431108, 28.028513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571884, 27.566805, 27.787550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082487, 0.822811, 0.562297,
		0.686421, 0.455956, -0.566507,
		-0.722511, 0.339243, -0.602406,
		39.355129, 27.668577, 27.606829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944626, 28.162104, 28.041735>,  <39.860889, 27.431108, 28.028513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944626, 28.162104, 28.041735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573902, 28.127207, 27.895628>,  <39.351467, 28.106268, 27.807964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573902, 28.127207, 27.895628>,  <39.944626, 28.162104, 28.041735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573902, 28.127207, 27.895628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229143, 0.901972, 0.365978,
		0.297530, 0.422889, -0.855944,
		-0.926806, -0.087244, -0.365266,
		39.295860, 28.101034, 27.786049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858383, 28.798834, 27.933920>,  <39.944626, 28.162104, 28.041735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858383, 28.798834, 27.933920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485546, 28.654873, 27.917545>,  <39.261845, 28.568497, 27.907721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485546, 28.654873, 27.917545>,  <39.858383, 28.798834, 27.933920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485546, 28.654873, 27.917545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346562, 0.853201, 0.389799,
		-0.105364, 0.377515, -0.919989,
		-0.932091, -0.359904, -0.040936,
		39.205917, 28.546902, 27.905264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388943, 29.395247, 27.762152>,  <39.858383, 28.798834, 27.933920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388943, 29.395247, 27.762152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100853, 29.147087, 27.886337>,  <38.928001, 28.998192, 27.960850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100853, 29.147087, 27.886337>,  <39.388943, 29.395247, 27.762152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100853, 29.147087, 27.886337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496931, 0.773628, 0.393140,
		-0.484088, 0.128868, -0.865478,
		-0.720221, -0.620397, 0.310465,
		38.884789, 28.960968, 27.979477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835377, 29.689449, 27.579561>,  <39.388943, 29.395247, 27.762152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835377, 29.689449, 27.579561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731953, 29.462553, 27.892326>,  <38.669899, 29.326416, 28.079985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731953, 29.462553, 27.892326>,  <38.835377, 29.689449, 27.579561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731953, 29.462553, 27.892326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563315, 0.746099, 0.354983,
		-0.784743, -0.348677, -0.512448,
		-0.258563, -0.567240, 0.781911,
		38.654385, 29.292381, 28.126900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128376, 30.001757, 27.790470>,  <38.835377, 29.689449, 27.579561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128376, 30.001757, 27.790470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284771, 29.777426, 28.082388>,  <38.378609, 29.642826, 28.257538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284771, 29.777426, 28.082388>,  <38.128376, 30.001757, 27.790470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284771, 29.777426, 28.082388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478654, 0.553355, 0.681681,
		-0.786141, -0.615849, -0.052087,
		0.390990, -0.560829, 0.729793,
		38.402069, 29.609177, 28.301327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469913, 29.806816, 27.573980>,  <38.128376, 30.001757, 27.790470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469913, 29.806816, 27.573980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192432, 29.921495, 27.309685>,  <37.025944, 29.990303, 27.151108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192432, 29.921495, 27.309685>,  <37.469913, 29.806816, 27.573980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192432, 29.921495, 27.309685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393774, -0.617166, -0.681211,
		-0.603081, -0.732745, 0.315244,
		-0.693712, 0.286691, -0.660736,
		36.984322, 30.007505, 27.111464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390251, 29.227564, 27.207987>,  <37.469913, 29.806816, 27.573980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390251, 29.227564, 27.207987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219315, 29.498943, 26.968960>,  <37.116753, 29.661772, 26.825542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219315, 29.498943, 26.968960>,  <37.390251, 29.227564, 27.207987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219315, 29.498943, 26.968960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132418, -0.606865, -0.783697,
		-0.894342, -0.414033, 0.169498,
		-0.427338, 0.678448, -0.597570,
		37.091114, 29.702478, 26.789688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800522, 28.976316, 26.795708>,  <37.390251, 29.227564, 27.207987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800522, 28.976316, 26.795708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940746, 29.288651, 26.588863>,  <37.024879, 29.476051, 26.464756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940746, 29.288651, 26.588863>,  <36.800522, 28.976316, 26.795708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940746, 29.288651, 26.588863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063090, -0.531209, -0.844889,
		-0.934414, 0.328807, -0.136956,
		0.350557, 0.780835, -0.517113,
		37.045914, 29.522902, 26.433729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334278, 29.196222, 26.205235>,  <36.800522, 28.976316, 26.795708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334278, 29.196222, 26.205235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699272, 29.333380, 26.115967>,  <36.918266, 29.415674, 26.062407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699272, 29.333380, 26.115967>,  <36.334278, 29.196222, 26.205235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699272, 29.333380, 26.115967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021523, -0.584960, -0.810776,
		-0.408553, 0.735015, -0.541145,
		0.912481, 0.342893, -0.223167,
		36.973015, 29.436247, 26.049017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310947, 28.891029, 25.595469>,  <36.334278, 29.196222, 26.205235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310947, 28.891029, 25.595469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680420, 29.043507, 25.610981>,  <36.902103, 29.134993, 25.620289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680420, 29.043507, 25.610981>,  <36.310947, 28.891029, 25.595469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680420, 29.043507, 25.610981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264900, -0.562187, -0.783437,
		-0.276837, 0.733920, -0.620260,
		0.923682, 0.381191, 0.038781,
		36.957523, 29.157864, 25.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517342, 28.791796, 24.861456>,  <36.310947, 28.891029, 25.595469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517342, 28.791796, 24.861456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850159, 28.896175, 25.057257>,  <37.049850, 28.958803, 25.174738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850159, 28.896175, 25.057257>,  <36.517342, 28.791796, 24.861456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850159, 28.896175, 25.057257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547966, -0.523867, -0.652148,
		0.086258, 0.810845, -0.578870,
		0.832042, 0.260948, 0.489503,
		37.099770, 28.974461, 25.204107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952873, 29.002298, 24.305574>,  <36.517342, 28.791796, 24.861456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952873, 29.002298, 24.305574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161934, 28.901932, 24.631489>,  <37.287373, 28.841713, 24.827038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161934, 28.901932, 24.631489>,  <36.952873, 29.002298, 24.305574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161934, 28.901932, 24.631489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583658, -0.591319, -0.556494,
		0.621429, 0.766410, -0.162608,
		0.522655, -0.250914, 0.814784,
		37.318729, 28.826658, 24.875923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227299, 29.471853, 23.656137>,  <36.952873, 29.002298, 24.305574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227299, 29.471853, 23.656137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.905556, 29.562990, 23.436647>,  <36.712509, 29.617672, 23.304953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.905556, 29.562990, 23.436647>,  <37.227299, 29.471853, 23.656137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905556, 29.562990, 23.436647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463658, 0.336802, 0.819503,
		0.371530, 0.913593, -0.165268,
		-0.804355, 0.227843, -0.548727,
		36.664249, 29.631344, 23.272030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106812, 30.155773, 23.714188>,  <37.227299, 29.471853, 23.656137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106812, 30.155773, 23.714188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758316, 30.015589, 23.576712>,  <36.549217, 29.931479, 23.494226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758316, 30.015589, 23.576712>,  <37.106812, 30.155773, 23.714188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758316, 30.015589, 23.576712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481756, 0.476264, 0.735584,
		-0.094108, 0.806442, -0.583776,
		-0.871238, -0.350462, -0.343688,
		36.496944, 29.910450, 23.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646763, 30.790478, 23.446907>,  <37.106812, 30.155773, 23.714188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646763, 30.790478, 23.446907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419350, 30.473129, 23.533932>,  <36.282902, 30.282721, 23.586145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419350, 30.473129, 23.533932>,  <36.646763, 30.790478, 23.446907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419350, 30.473129, 23.533932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594213, 0.578928, 0.558349,
		-0.568929, 0.188163, -0.800572,
		-0.568534, -0.793371, 0.217560,
		36.248791, 30.235119, 23.599199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995892, 31.063459, 23.489546>,  <36.646763, 30.790478, 23.446907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995892, 31.063459, 23.489546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923744, 30.709183, 23.660669>,  <35.880455, 30.496616, 23.763344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923744, 30.709183, 23.660669>,  <35.995892, 31.063459, 23.489546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923744, 30.709183, 23.660669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711850, 0.417692, 0.564626,
		-0.678776, -0.202698, -0.705816,
		-0.180365, -0.885690, 0.427810,
		35.869637, 30.443476, 23.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186832, 30.938322, 23.589046>,  <35.995892, 31.063459, 23.489546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186832, 30.938322, 23.589046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436104, 30.768101, 23.851513>,  <35.585667, 30.665968, 24.008993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436104, 30.768101, 23.851513>,  <35.186832, 30.938322, 23.589046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436104, 30.768101, 23.851513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572963, 0.322641, 0.753403,
		-0.532318, -0.845464, -0.042763,
		0.623178, -0.425552, 0.656168,
		35.623058, 30.640436, 24.048363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737793, 30.825905, 24.146788>,  <35.186832, 30.938322, 23.589046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737793, 30.825905, 24.146788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085423, 30.749813, 24.329443>,  <35.294003, 30.704159, 24.439035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085423, 30.749813, 24.329443>,  <34.737793, 30.825905, 24.146788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085423, 30.749813, 24.329443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342500, 0.434661, 0.832925,
		-0.356928, -0.880274, 0.312601,
		0.869078, -0.190228, 0.456636,
		35.346146, 30.692745, 24.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612450, 30.732874, 24.846460>,  <34.737793, 30.825905, 24.146788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612450, 30.732874, 24.846460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000732, 30.809542, 24.904425>,  <35.233700, 30.855543, 24.939203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000732, 30.809542, 24.904425>,  <34.612450, 30.732874, 24.846460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000732, 30.809542, 24.904425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235266, 0.635504, 0.735380,
		0.048860, -0.747928, 0.661979,
		0.970702, 0.191672, 0.144911,
		35.291943, 30.867043, 24.947899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.921181, 30.022148, 21.398621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027679, 29.795433, 21.710484>,  <40.091579, 29.659405, 21.897602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027679, 29.795433, 21.710484>,  <39.921181, 30.022148, 21.398621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027679, 29.795433, 21.710484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747845, 0.388856, 0.538069,
		-0.608146, -0.726321, -0.320339,
		0.266245, -0.566789, 0.779657,
		40.107552, 29.625397, 21.944380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311661, 30.057547, 21.681023>,  <39.921181, 30.022148, 21.398621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311661, 30.057547, 21.681023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564209, 29.921503, 21.959791>,  <39.715736, 29.839876, 22.127052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564209, 29.921503, 21.959791>,  <39.311661, 30.057547, 21.681023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564209, 29.921503, 21.959791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479005, 0.535713, 0.695389,
		-0.609857, -0.772876, 0.175319,
		0.631370, -0.340109, 0.696920,
		39.753620, 29.819469, 22.168867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952709, 29.964445, 22.227057>,  <39.311661, 30.057547, 21.681023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952709, 29.964445, 22.227057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306751, 30.014530, 22.406351>,  <39.519176, 30.044582, 22.513927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306751, 30.014530, 22.406351>,  <38.952709, 29.964445, 22.227057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306751, 30.014530, 22.406351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423185, 0.617337, 0.663182,
		-0.193674, -0.776670, 0.599395,
		0.885102, 0.125214, 0.448237,
		39.572281, 30.052095, 22.540823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933582, 29.884954, 23.013287>,  <38.952709, 29.964445, 22.227057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933582, 29.884954, 23.013287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299446, 30.046604, 23.009701>,  <39.518967, 30.143593, 23.007549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299446, 30.046604, 23.009701>,  <38.933582, 29.884954, 23.013287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299446, 30.046604, 23.009701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274019, 0.636191, 0.721231,
		0.297167, -0.657226, 0.692637,
		0.914661, 0.404122, -0.008963,
		39.573845, 30.167841, 23.007011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110504, 29.956123, 23.734625>,  <38.933582, 29.884954, 23.013287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110504, 29.956123, 23.734625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317455, 30.204861, 23.499462>,  <39.441624, 30.354103, 23.358364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317455, 30.204861, 23.499462>,  <39.110504, 29.956123, 23.734625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317455, 30.204861, 23.499462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179429, 0.750555, 0.635981,
		0.836737, -0.223552, 0.499895,
		0.517374, 0.621845, -0.587906,
		39.472668, 30.391415, 23.323090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728931, 30.204290, 24.121613>,  <39.110504, 29.956123, 23.734625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728931, 30.204290, 24.121613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610680, 30.472351, 23.849289>,  <39.539730, 30.633188, 23.685894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610680, 30.472351, 23.849289>,  <39.728931, 30.204290, 24.121613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610680, 30.472351, 23.849289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013121, 0.709747, 0.704335,
		0.955213, 0.217154, -0.201028,
		-0.295628, 0.670152, -0.680808,
		39.521992, 30.673397, 23.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282597, 30.684258, 24.019508>,  <39.728931, 30.204290, 24.121613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282597, 30.684258, 24.019508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964455, 30.890318, 23.891739>,  <39.773571, 31.013954, 23.815077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964455, 30.890318, 23.891739>,  <40.282597, 30.684258, 24.019508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964455, 30.890318, 23.891739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157007, 0.684083, 0.712306,
		0.585458, 0.516384, -0.624970,
		-0.795354, 0.515150, -0.319425,
		39.725849, 31.044863, 23.795912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578949, 31.413937, 24.119675>,  <40.282597, 30.684258, 24.019508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578949, 31.413937, 24.119675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186531, 31.461370, 24.058363>,  <39.951080, 31.489832, 24.021576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186531, 31.461370, 24.058363>,  <40.578949, 31.413937, 24.119675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186531, 31.461370, 24.058363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010025, 0.758814, 0.651230,
		0.193537, 0.640420, -0.743240,
		-0.981042, 0.118586, -0.153278,
		39.892220, 31.496946, 24.012379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478519, 32.117340, 23.961700>,  <40.578949, 31.413937, 24.119675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478519, 32.117340, 23.961700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124588, 31.970499, 24.076458>,  <39.912228, 31.882395, 24.145313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124588, 31.970499, 24.076458>,  <40.478519, 32.117340, 23.961700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124588, 31.970499, 24.076458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166949, 0.824700, 0.540369,
		-0.434973, 0.430238, -0.791008,
		-0.884831, -0.367104, 0.286894,
		39.859138, 31.860369, 24.162527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994762, 32.638802, 23.863970>,  <40.478519, 32.117340, 23.961700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994762, 32.638802, 23.863970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814621, 32.396069, 24.125942>,  <39.706535, 32.250427, 24.283127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814621, 32.396069, 24.125942>,  <39.994762, 32.638802, 23.863970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814621, 32.396069, 24.125942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326117, 0.794645, 0.512042,
		-0.831164, 0.017013, -0.555767,
		-0.450349, -0.606835, 0.654932,
		39.679516, 32.214020, 24.322422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412670, 32.862194, 23.980389>,  <39.994762, 32.638802, 23.863970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412670, 32.862194, 23.980389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449104, 32.639145, 24.310421>,  <39.470963, 32.505314, 24.508440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449104, 32.639145, 24.310421>,  <39.412670, 32.862194, 23.980389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449104, 32.639145, 24.310421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429677, 0.725428, 0.537711,
		-0.898377, -0.403493, -0.173527,
		0.091082, -0.557627, 0.825079,
		39.476429, 32.471855, 24.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809986, 32.987282, 24.438557>,  <39.412670, 32.862194, 23.980389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809986, 32.987282, 24.438557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.108822, 32.836170, 24.657331>,  <39.288124, 32.745502, 24.788595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.108822, 32.836170, 24.657331>,  <38.809986, 32.987282, 24.438557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108822, 32.836170, 24.657331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300165, 0.542406, 0.784663,
		-0.593089, -0.750386, 0.291831,
		0.747092, -0.377778, 0.546935,
		39.332951, 32.722836, 24.821411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153500, 32.845596, 24.034031>,  <38.809986, 32.987282, 24.438557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153500, 32.845596, 24.034031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013905, 33.203453, 23.922449>,  <37.930145, 33.418167, 23.855499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013905, 33.203453, 23.922449>,  <38.153500, 32.845596, 24.034031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013905, 33.203453, 23.922449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026059, -0.306821, -0.951410,
		-0.936764, -0.324763, 0.130391,
		-0.348989, 0.894645, -0.278956,
		37.909206, 33.471848, 23.838762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383736, 32.788380, 23.707031>,  <38.153500, 32.845596, 24.034031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383736, 32.788380, 23.707031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595024, 33.101654, 23.575819>,  <37.721798, 33.289619, 23.497091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595024, 33.101654, 23.575819>,  <37.383736, 32.788380, 23.707031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595024, 33.101654, 23.575819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013273, -0.378662, -0.925440,
		-0.849001, 0.493194, -0.189624,
		0.528224, 0.783183, -0.328030,
		37.753490, 33.336609, 23.477409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094139, 32.924534, 23.042059>,  <37.383736, 32.788380, 23.707031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094139, 32.924534, 23.042059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448235, 33.110554, 23.038479>,  <37.660690, 33.222168, 23.036331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448235, 33.110554, 23.038479>,  <37.094139, 32.924534, 23.042059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448235, 33.110554, 23.038479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096599, -0.202629, -0.974479,
		-0.454999, 0.861781, -0.224298,
		0.885237, 0.465054, -0.008948,
		37.713806, 33.250069, 23.035795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122898, 33.430935, 22.521723>,  <37.094139, 32.924534, 23.042059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122898, 33.430935, 22.521723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510910, 33.352665, 22.579344>,  <37.743717, 33.305702, 22.613916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510910, 33.352665, 22.579344>,  <37.122898, 33.430935, 22.521723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510910, 33.352665, 22.579344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122410, -0.118581, -0.985370,
		0.209892, 0.973474, -0.091075,
		0.970031, -0.195672, 0.144053,
		37.801918, 33.293964, 22.622561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573906, 33.842476, 22.047832>,  <37.122898, 33.430935, 22.521723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573906, 33.842476, 22.047832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.770512, 33.510738, 22.154119>,  <37.888474, 33.311695, 22.217892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.770512, 33.510738, 22.154119>,  <37.573906, 33.842476, 22.047832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770512, 33.510738, 22.154119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213836, -0.180845, -0.959984,
		0.844211, 0.528662, 0.088456,
		0.491510, -0.829344, 0.265718,
		37.917965, 33.261936, 22.233835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979847, 33.707188, 21.503307>,  <37.573906, 33.842476, 22.047832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979847, 33.707188, 21.503307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078686, 33.361874, 21.679344>,  <38.137989, 33.154686, 21.784967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078686, 33.361874, 21.679344>,  <37.979847, 33.707188, 21.503307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078686, 33.361874, 21.679344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275516, -0.372838, -0.886049,
		0.928995, 0.340196, 0.145721,
		0.247100, -0.863284, 0.440094,
		38.152817, 33.102890, 21.811373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622089, 33.550716, 21.319851>,  <37.979847, 33.707188, 21.503307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622089, 33.550716, 21.319851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461590, 33.194984, 21.407570>,  <38.365292, 32.981544, 21.460201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461590, 33.194984, 21.407570>,  <38.622089, 33.550716, 21.319851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461590, 33.194984, 21.407570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320705, -0.360664, -0.875825,
		0.857990, -0.281094, 0.429928,
		-0.401249, -0.889330, 0.219298,
		38.341213, 32.928185, 21.473360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079258, 33.029877, 21.129034>,  <38.622089, 33.550716, 21.319851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079258, 33.029877, 21.129034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754524, 32.799820, 21.169292>,  <38.559685, 32.661785, 21.193447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754524, 32.799820, 21.169292>,  <39.079258, 33.029877, 21.129034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754524, 32.799820, 21.169292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300908, -0.559840, -0.772032,
		0.500376, -0.596479, 0.627564,
		-0.811836, -0.575146, 0.100645,
		38.510975, 32.627277, 21.199486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291458, 32.325802, 21.165638>,  <39.079258, 33.029877, 21.129034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291458, 32.325802, 21.165638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.909649, 32.306446, 21.047964>,  <38.680565, 32.294834, 20.977360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.909649, 32.306446, 21.047964>,  <39.291458, 32.325802, 21.165638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909649, 32.306446, 21.047964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286514, -0.421720, -0.860268,
		-0.082438, -0.905434, 0.416405,
		-0.954523, -0.048387, -0.294186,
		38.623291, 32.291931, 20.959709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277657, 31.643187, 20.905607>,  <39.291458, 32.325802, 21.165638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277657, 31.643187, 20.905607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.950600, 31.817110, 20.754662>,  <38.754368, 31.921465, 20.664093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.950600, 31.817110, 20.754662>,  <39.277657, 31.643187, 20.905607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950600, 31.817110, 20.754662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085054, -0.557038, -0.826120,
		-0.569419, -0.707562, 0.418471,
		-0.817636, 0.434815, -0.377369,
		38.705307, 31.947554, 20.641451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808353, 31.122286, 20.743149>,  <39.277657, 31.643187, 20.905607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808353, 31.122286, 20.743149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667042, 31.420971, 20.517719>,  <38.582253, 31.600182, 20.382462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667042, 31.420971, 20.517719>,  <38.808353, 31.122286, 20.743149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667042, 31.420971, 20.517719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060986, -0.619519, -0.782609,
		-0.933527, -0.242113, 0.264404,
		-0.353283, 0.746711, -0.563572,
		38.561058, 31.644985, 20.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251286, 30.823002, 20.292156>,  <38.808353, 31.122286, 20.743149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251286, 30.823002, 20.292156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377892, 31.156958, 20.112034>,  <38.453857, 31.357330, 20.003962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377892, 31.156958, 20.112034>,  <38.251286, 30.823002, 20.292156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377892, 31.156958, 20.112034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027122, -0.466553, -0.884077,
		-0.948198, 0.292041, -0.125030,
		0.316520, 0.834890, -0.450305,
		38.472847, 31.407425, 19.976942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695900, 30.934362, 19.827475>,  <38.251286, 30.823002, 20.292156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695900, 30.934362, 19.827475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037354, 31.110920, 19.716854>,  <38.242226, 31.216854, 19.650482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037354, 31.110920, 19.716854>,  <37.695900, 30.934362, 19.827475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037354, 31.110920, 19.716854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065061, -0.436425, -0.897385,
		-0.516793, 0.784032, -0.343830,
		0.853635, 0.441392, -0.276551,
		38.293446, 31.243338, 19.633888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729160, 30.206654, 20.042618>,  <37.695900, 30.934362, 19.827475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729160, 30.206654, 20.042618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569931, 29.845808, 20.109222>,  <37.474392, 29.629301, 20.149185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569931, 29.845808, 20.109222>,  <37.729160, 30.206654, 20.042618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569931, 29.845808, 20.109222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042361, 0.199397, 0.979003,
		-0.916374, 0.382663, -0.117590,
		-0.398075, -0.902114, 0.166513,
		37.450508, 29.575174, 20.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132492, 30.347277, 20.497160>,  <37.729160, 30.206654, 20.042618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132492, 30.347277, 20.497160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205917, 29.954195, 20.506937>,  <37.249973, 29.718346, 20.512802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205917, 29.954195, 20.506937>,  <37.132492, 30.347277, 20.497160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205917, 29.954195, 20.506937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198783, -0.012759, 0.979961,
		-0.962700, -0.184741, -0.197687,
		0.183561, -0.982704, 0.024441,
		37.260986, 29.659384, 20.514269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430389, 29.913580, 20.789948>,  <37.132492, 30.347277, 20.497160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430389, 29.913580, 20.789948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.740208, 29.672617, 20.867086>,  <36.926098, 29.528038, 20.913370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.740208, 29.672617, 20.867086>,  <36.430389, 29.913580, 20.789948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740208, 29.672617, 20.867086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413875, -0.252114, 0.874726,
		-0.478324, -0.757326, -0.444595,
		0.774541, -0.602409, 0.192846,
		36.972569, 29.491894, 20.924940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196564, 29.346838, 21.236952>,  <36.430389, 29.913580, 20.789948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196564, 29.346838, 21.236952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593994, 29.373392, 21.273600>,  <36.832455, 29.389324, 21.295588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593994, 29.373392, 21.273600>,  <36.196564, 29.346838, 21.236952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593994, 29.373392, 21.273600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084242, -0.106491, 0.990739,
		0.075530, -0.992095, -0.100214,
		0.993578, 0.066388, 0.091620,
		36.892067, 29.393309, 21.301086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357357, 28.831070, 21.587700>,  <36.196564, 29.346838, 21.236952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357357, 28.831070, 21.587700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692684, 29.044334, 21.633234>,  <36.893879, 29.172293, 21.660555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692684, 29.044334, 21.633234>,  <36.357357, 28.831070, 21.587700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692684, 29.044334, 21.633234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043265, -0.143085, 0.988764,
		0.543460, -0.833825, -0.096884,
		0.838319, 0.533163, 0.113836,
		36.944180, 29.204283, 21.667385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573963, 28.546997, 22.106787>,  <36.357357, 28.831070, 21.587700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573963, 28.546997, 22.106787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766926, 28.897278, 22.098463>,  <36.882702, 29.107447, 22.093468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766926, 28.897278, 22.098463>,  <36.573963, 28.546997, 22.106787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766926, 28.897278, 22.098463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110009, 0.084137, 0.990363,
		0.869015, -0.475464, 0.136923,
		0.482402, 0.875703, -0.020811,
		36.911648, 29.159988, 22.092220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928268, 28.506668, 22.728357>,  <36.573963, 28.546997, 22.106787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928268, 28.506668, 22.728357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.878445, 28.889696, 22.624399>,  <36.848549, 29.119513, 22.562025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.878445, 28.889696, 22.624399>,  <36.928268, 28.506668, 22.728357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878445, 28.889696, 22.624399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239159, 0.225236, 0.944495,
		0.962958, 0.179804, 0.200955,
		-0.124562, 0.957569, -0.259895,
		36.841076, 29.176968, 22.546431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278107, 28.881321, 23.261072>,  <36.928268, 28.506668, 22.728357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278107, 28.881321, 23.261072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034626, 29.126431, 23.059483>,  <36.888538, 29.273497, 22.938528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034626, 29.126431, 23.059483>,  <37.278107, 28.881321, 23.261072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034626, 29.126431, 23.059483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317420, 0.394073, 0.862526,
		0.727137, 0.684991, -0.045365,
		-0.608700, 0.612775, -0.503975,
		36.852016, 29.310263, 22.908291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586670, 28.831926, 24.013817>,  <37.278107, 28.881321, 23.261072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586670, 28.831926, 24.013817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.587715, 28.666691, 24.378092>,  <37.588341, 28.567549, 24.596657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.587715, 28.666691, 24.378092>,  <37.586670, 28.831926, 24.013817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587715, 28.666691, 24.378092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507802, -0.783987, -0.357073,
		0.861470, 0.463380, 0.207721,
		0.002610, -0.413089, 0.910687,
		37.588497, 28.542765, 24.651299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313164, 28.505671, 24.152334>,  <37.586670, 28.831926, 24.013817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313164, 28.505671, 24.152334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055080, 28.320263, 24.395267>,  <37.900230, 28.209019, 24.541027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055080, 28.320263, 24.395267>,  <38.313164, 28.505671, 24.152334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055080, 28.320263, 24.395267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407287, -0.881237, -0.239873,
		0.646388, 0.092589, 0.757370,
		-0.645213, -0.463518, 0.607331,
		37.861515, 28.181208, 24.577467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689407, 27.985056, 24.440289>,  <38.313164, 28.505671, 24.152334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689407, 27.985056, 24.440289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311081, 27.871214, 24.502811>,  <38.084084, 27.802910, 24.540325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311081, 27.871214, 24.502811>,  <38.689407, 27.985056, 24.440289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311081, 27.871214, 24.502811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209786, -0.903043, -0.374837,
		0.247832, -0.321736, 0.913819,
		-0.945817, -0.284603, 0.156307,
		38.027336, 27.785833, 24.549704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644764, 27.311428, 24.756575>,  <38.689407, 27.985056, 24.440289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644764, 27.311428, 24.756575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284309, 27.349667, 24.587427>,  <38.068039, 27.372610, 24.485939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284309, 27.349667, 24.587427>,  <38.644764, 27.311428, 24.756575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284309, 27.349667, 24.587427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100292, -0.902965, -0.417846,
		-0.421780, -0.418946, 0.804105,
		-0.901134, 0.095594, -0.422870,
		38.013969, 27.378345, 24.460566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315742, 26.667437, 24.780647>,  <38.644764, 27.311428, 24.756575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315742, 26.667437, 24.780647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.115639, 26.874136, 24.502737>,  <37.995579, 26.998156, 24.335991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.115639, 26.874136, 24.502737>,  <38.315742, 26.667437, 24.780647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115639, 26.874136, 24.502737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052315, -0.818970, -0.571447,
		-0.864296, -0.249521, 0.436727,
		-0.500255, 0.516747, -0.694779,
		37.965561, 27.029160, 24.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850166, 26.178469, 24.539688>,  <38.315742, 26.667437, 24.780647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850166, 26.178469, 24.539688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827984, 26.447262, 24.244293>,  <37.814674, 26.608538, 24.067057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827984, 26.447262, 24.244293>,  <37.850166, 26.178469, 24.539688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827984, 26.447262, 24.244293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272973, -0.701244, -0.658592,
		-0.960422, -0.238112, -0.144543,
		-0.055459, 0.671983, -0.738488,
		37.811348, 26.648857, 24.022747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383385, 25.866562, 24.092163>,  <37.850166, 26.178469, 24.539688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383385, 25.866562, 24.092163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586582, 26.122055, 23.861006>,  <37.708500, 26.275351, 23.722311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586582, 26.122055, 23.861006>,  <37.383385, 25.866562, 24.092163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586582, 26.122055, 23.861006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135923, -0.721945, -0.678469,
		-0.850570, 0.266108, -0.453561,
		0.507992, 0.638735, -0.577895,
		37.738979, 26.313675, 23.687637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061382, 25.884220, 23.337759>,  <37.383385, 25.866562, 24.092163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061382, 25.884220, 23.337759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436749, 26.011229, 23.283260>,  <37.661968, 26.087433, 23.250561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436749, 26.011229, 23.283260>,  <37.061382, 25.884220, 23.337759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436749, 26.011229, 23.283260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091293, -0.608166, -0.788543,
		-0.333238, 0.727540, -0.599698,
		0.938413, 0.317520, -0.136245,
		37.718273, 26.106485, 23.242388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251869, 26.026608, 22.558683>,  <37.061382, 25.884220, 23.337759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251869, 26.026608, 22.558683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559711, 25.907635, 22.784691>,  <37.744415, 25.836250, 22.920296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559711, 25.907635, 22.784691>,  <37.251869, 26.026608, 22.558683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559711, 25.907635, 22.784691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219520, -0.707700, -0.671545,
		0.599604, 0.640855, -0.479354,
		0.769601, -0.297433, 0.565020,
		37.790592, 25.818405, 22.954197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.772514, 36.446587, 34.577488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162125, 36.525417, 34.532890>,  <34.395893, 36.572716, 34.506134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162125, 36.525417, 34.532890>,  <33.772514, 36.446587, 34.577488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162125, 36.525417, 34.532890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005560, -0.513057, -0.858337,
		-0.226362, 0.835423, -0.500827,
		0.974027, 0.197080, -0.111491,
		34.454334, 36.584541, 34.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934647, 36.918835, 33.967804>,  <33.772514, 36.446587, 34.577488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934647, 36.918835, 33.967804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281570, 36.721203, 33.992020>,  <34.489723, 36.602623, 34.006550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281570, 36.721203, 33.992020>,  <33.934647, 36.918835, 33.967804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281570, 36.721203, 33.992020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209252, -0.472232, -0.856277,
		0.451659, 0.729986, -0.512957,
		0.867305, -0.494082, 0.060537,
		34.541763, 36.572979, 34.010181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324940, 37.103710, 33.406975>,  <33.934647, 36.918835, 33.967804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324940, 37.103710, 33.406975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483814, 36.759285, 33.533974>,  <34.579140, 36.552628, 33.610172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483814, 36.759285, 33.533974>,  <34.324940, 37.103710, 33.406975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483814, 36.759285, 33.533974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024722, -0.355872, -0.934207,
		0.917405, 0.363205, -0.162635,
		0.397186, -0.861067, 0.317500,
		34.602970, 36.500965, 33.629223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856632, 36.897324, 32.890198>,  <34.324940, 37.103710, 33.406975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856632, 36.897324, 32.890198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831562, 36.540764, 33.069740>,  <34.816521, 36.326828, 33.177467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831562, 36.540764, 33.069740>,  <34.856632, 36.897324, 32.890198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831562, 36.540764, 33.069740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208009, -0.451534, -0.867669,
		0.976116, 0.038981, 0.213722,
		-0.062680, -0.891402, 0.448858,
		34.812759, 36.273342, 33.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490292, 36.527790, 32.781960>,  <34.856632, 36.897324, 32.890198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490292, 36.527790, 32.781960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215073, 36.254089, 32.878616>,  <35.049942, 36.089870, 32.936611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215073, 36.254089, 32.878616>,  <35.490292, 36.527790, 32.781960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215073, 36.254089, 32.878616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365552, -0.614479, -0.699133,
		0.626869, -0.392702, 0.672920,
		-0.688046, -0.684252, 0.241645,
		35.008659, 36.048813, 32.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802406, 35.743340, 32.716518>,  <35.490292, 36.527790, 32.781960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802406, 35.743340, 32.716518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410236, 35.665398, 32.705177>,  <35.174934, 35.618633, 32.698372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410236, 35.665398, 32.705177>,  <35.802406, 35.743340, 32.716518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410236, 35.665398, 32.705177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148641, -0.637935, -0.755609,
		0.129144, -0.745030, 0.654409,
		-0.980422, -0.194855, -0.028357,
		35.116108, 35.606941, 32.696671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817204, 35.128906, 32.571991>,  <35.802406, 35.743340, 32.716518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817204, 35.128906, 32.571991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444691, 35.218143, 32.456795>,  <35.221184, 35.271687, 32.387676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444691, 35.218143, 32.456795>,  <35.817204, 35.128906, 32.571991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444691, 35.218143, 32.456795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162011, -0.454425, -0.875928,
		-0.326280, -0.862397, 0.387057,
		-0.931286, 0.223090, -0.287988,
		35.165306, 35.285072, 32.370399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433575, 34.529446, 32.412739>,  <35.817204, 35.128906, 32.571991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433575, 34.529446, 32.412739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215309, 34.798573, 32.212910>,  <35.084351, 34.960049, 32.093014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215309, 34.798573, 32.212910>,  <35.433575, 34.529446, 32.412739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215309, 34.798573, 32.212910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089794, -0.639659, -0.763396,
		-0.833179, -0.371699, 0.409453,
		-0.545664, 0.672813, -0.499574,
		35.051609, 35.000416, 32.063038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073410, 34.077023, 32.065578>,  <35.433575, 34.529446, 32.412739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073410, 34.077023, 32.065578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043953, 34.430176, 31.880064>,  <35.026279, 34.642067, 31.768755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043953, 34.430176, 31.880064>,  <35.073410, 34.077023, 32.065578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043953, 34.430176, 31.880064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001346, -0.465137, -0.885238,
		-0.997284, -0.064568, 0.035443,
		-0.073644, 0.882881, -0.463786,
		35.021858, 34.695042, 31.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472439, 34.080509, 31.606686>,  <35.073410, 34.077023, 32.065578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472439, 34.080509, 31.606686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743496, 34.344662, 31.477255>,  <34.906132, 34.503151, 31.399597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743496, 34.344662, 31.477255>,  <34.472439, 34.080509, 31.606686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743496, 34.344662, 31.477255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015896, -0.426748, -0.904231,
		-0.735219, 0.617889, -0.278686,
		0.677643, 0.660378, -0.323576,
		34.946789, 34.542774, 31.380182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180241, 34.288525, 31.040207>,  <34.472439, 34.080509, 31.606686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180241, 34.288525, 31.040207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575016, 34.352512, 31.032516>,  <34.811882, 34.390903, 31.027903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575016, 34.352512, 31.032516>,  <34.180241, 34.288525, 31.040207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575016, 34.352512, 31.032516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064677, -0.502646, -0.862070,
		-0.147568, 0.849563, -0.506425,
		0.986935, 0.159968, -0.019227,
		34.871098, 34.400501, 31.026749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263111, 34.419426, 30.286287>,  <34.180241, 34.288525, 31.040207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263111, 34.419426, 30.286287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604321, 34.304485, 30.460539>,  <34.809048, 34.235519, 30.565090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604321, 34.304485, 30.460539>,  <34.263111, 34.419426, 30.286287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604321, 34.304485, 30.460539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157109, -0.654624, -0.739449,
		0.497658, 0.699210, -0.513265,
		0.853026, -0.287354, 0.435631,
		34.860229, 34.218281, 30.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072632, 34.804047, 29.767199>,  <34.263111, 34.419426, 30.286287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072632, 34.804047, 29.767199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762524, 34.863148, 29.521555>,  <33.576458, 34.898609, 29.374168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762524, 34.863148, 29.521555>,  <34.072632, 34.804047, 29.767199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762524, 34.863148, 29.521555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195586, 0.868314, 0.455826,
		0.600590, 0.473498, -0.644276,
		-0.775266, 0.147753, -0.614110,
		33.529945, 34.907475, 29.337322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042995, 35.544621, 29.564264>,  <34.072632, 34.804047, 29.767199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042995, 35.544621, 29.564264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676655, 35.411526, 29.474375>,  <33.456852, 35.331669, 29.420441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676655, 35.411526, 29.474375>,  <34.042995, 35.544621, 29.564264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676655, 35.411526, 29.474375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399397, 0.812420, 0.424800,
		0.041223, 0.478808, -0.876951,
		-0.915851, -0.332740, -0.224725,
		33.401901, 35.311703, 29.406958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758987, 36.132378, 29.164076>,  <34.042995, 35.544621, 29.564264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758987, 36.132378, 29.164076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495865, 35.883389, 29.333696>,  <33.337990, 35.733994, 29.435469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495865, 35.883389, 29.333696>,  <33.758987, 36.132378, 29.164076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495865, 35.883389, 29.333696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217179, 0.695854, 0.684558,
		-0.721196, 0.358212, -0.592925,
		-0.657807, -0.622472, 0.424051,
		33.298523, 35.696648, 29.460913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178375, 36.573246, 29.182650>,  <33.758987, 36.132378, 29.164076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178375, 36.573246, 29.182650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103806, 36.284752, 29.449503>,  <33.059063, 36.111656, 29.609615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103806, 36.284752, 29.449503>,  <33.178375, 36.573246, 29.182650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103806, 36.284752, 29.449503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474792, 0.660617, 0.581513,
		-0.860127, -0.208343, -0.465590,
		-0.186423, -0.721234, 0.667134,
		33.047878, 36.068382, 29.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477940, 36.681828, 29.338865>,  <33.178375, 36.573246, 29.182650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477940, 36.681828, 29.338865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629627, 36.469627, 29.642117>,  <32.720638, 36.342308, 29.824068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629627, 36.469627, 29.642117>,  <32.477940, 36.681828, 29.338865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629627, 36.469627, 29.642117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309771, 0.699263, 0.644262,
		-0.871915, -0.479162, 0.100839,
		0.379219, -0.530504, 0.758128,
		32.743393, 36.310474, 29.869555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009949, 36.753735, 29.901289>,  <32.477940, 36.681828, 29.338865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009949, 36.753735, 29.901289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331120, 36.610332, 30.091776>,  <32.523823, 36.524292, 30.206068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331120, 36.610332, 30.091776>,  <32.009949, 36.753735, 29.901289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331120, 36.610332, 30.091776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334181, 0.390821, 0.857661,
		-0.493590, -0.847782, 0.193995,
		0.802927, -0.358504, 0.476218,
		32.571999, 36.502781, 30.234642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762878, 36.481541, 30.520094>,  <32.009949, 36.753735, 29.901289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762878, 36.481541, 30.520094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149818, 36.552601, 30.592394>,  <32.381981, 36.595238, 30.635775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149818, 36.552601, 30.592394>,  <31.762878, 36.481541, 30.520094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149818, 36.552601, 30.592394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245696, 0.482415, 0.840779,
		0.062170, -0.857738, 0.510314,
		0.967351, 0.177654, 0.180751,
		32.440025, 36.605896, 30.646620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802086, 36.525558, 31.173946>,  <31.762878, 36.481541, 30.520094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802086, 36.525558, 31.173946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160225, 36.692223, 31.111025>,  <32.375111, 36.792221, 31.073273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160225, 36.692223, 31.111025>,  <31.802086, 36.525558, 31.173946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160225, 36.692223, 31.111025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056958, 0.457429, 0.887420,
		0.441694, -0.785598, 0.433293,
		0.895356, 0.416648, -0.157297,
		32.428829, 36.817219, 31.063833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138721, 36.594887, 31.784380>,  <31.802086, 36.525558, 31.173946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138721, 36.594887, 31.784380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354012, 36.848194, 31.561926>,  <32.483185, 37.000179, 31.428453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354012, 36.848194, 31.561926>,  <32.138721, 36.594887, 31.784380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354012, 36.848194, 31.561926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102049, 0.606043, 0.788859,
		0.836600, -0.481336, 0.261563,
		0.538225, 0.633268, -0.556135,
		32.515480, 37.038174, 31.395086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776592, 36.665550, 32.081886>,  <32.138721, 36.594887, 31.784380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776592, 36.665550, 32.081886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723461, 36.997604, 31.865282>,  <32.691582, 37.196838, 31.735319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723461, 36.997604, 31.865282>,  <32.776592, 36.665550, 32.081886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723461, 36.997604, 31.865282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367571, 0.548651, 0.750915,
		0.920460, -0.099298, -0.378012,
		-0.132832, 0.830134, -0.541510,
		32.683613, 37.246643, 31.702829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278835, 37.061687, 32.356152>,  <32.776592, 36.665550, 32.081886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278835, 37.061687, 32.356152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073448, 37.321289, 32.131603>,  <32.950214, 37.477051, 31.996874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073448, 37.321289, 32.131603>,  <33.278835, 37.061687, 32.356152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073448, 37.321289, 32.131603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320900, 0.751961, 0.575829,
		0.795847, 0.115526, -0.594375,
		-0.513470, 0.649006, -0.561373,
		32.919407, 37.515991, 31.963192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732872, 37.545765, 32.199909>,  <33.278835, 37.061687, 32.356152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732872, 37.545765, 32.199909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361183, 37.689495, 32.165432>,  <33.138168, 37.775734, 32.144745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361183, 37.689495, 32.165432>,  <33.732872, 37.545765, 32.199909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361183, 37.689495, 32.165432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130933, 0.538296, 0.832523,
		0.345545, 0.762314, -0.547244,
		-0.929223, 0.359326, -0.086194,
		33.082417, 37.797295, 32.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846302, 38.257931, 32.430649>,  <33.732872, 37.545765, 32.199909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846302, 38.257931, 32.430649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449886, 38.209641, 32.453476>,  <33.212036, 38.180668, 32.467175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449886, 38.209641, 32.453476>,  <33.846302, 38.257931, 32.430649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449886, 38.209641, 32.453476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005398, 0.463260, 0.886206,
		-0.133428, 0.877961, -0.459762,
		-0.991044, -0.120727, 0.057073,
		33.152573, 38.173424, 32.470596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525558, 38.934303, 32.455635>,  <33.846302, 38.257931, 32.430649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525558, 38.934303, 32.455635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250744, 38.688080, 32.610073>,  <33.085854, 38.540348, 32.702736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250744, 38.688080, 32.610073>,  <33.525558, 38.934303, 32.455635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250744, 38.688080, 32.610073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300739, 0.242810, 0.922279,
		-0.661461, 0.749756, 0.018301,
		-0.687041, -0.615556, 0.386090,
		33.044632, 38.503414, 32.725899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791519, 39.031792, 31.745417>,  <33.525558, 38.934303, 32.455635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791519, 39.031792, 31.745417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665676, 39.381405, 31.597319>,  <33.590168, 39.591175, 31.508459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665676, 39.381405, 31.597319>,  <33.791519, 39.031792, 31.745417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665676, 39.381405, 31.597319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402031, -0.230646, -0.886101,
		-0.859878, -0.427628, -0.278825,
		-0.314612, 0.874035, -0.370247,
		33.571293, 39.643616, 31.486244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282135, 38.916023, 32.345291>,  <33.791519, 39.031792, 31.745417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282135, 38.916023, 32.345291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679348, 38.961693, 32.333561>,  <34.917675, 38.989094, 32.326523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679348, 38.961693, 32.333561>,  <34.282135, 38.916023, 32.345291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679348, 38.961693, 32.333561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058761, -0.695097, -0.716511,
		-0.102188, 0.709792, -0.696959,
		0.993028, 0.114173, -0.029323,
		34.977257, 38.995945, 32.324764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716621, 39.216637, 31.772100>,  <34.282135, 38.916023, 32.345291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716621, 39.216637, 31.772100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933636, 38.915272, 31.920702>,  <35.063843, 38.734451, 32.009865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933636, 38.915272, 31.920702>,  <34.716621, 39.216637, 31.772100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933636, 38.915272, 31.920702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165104, -0.337988, -0.926555,
		0.823647, 0.564028, -0.058979,
		0.542537, -0.753417, 0.371506,
		35.096397, 38.689247, 32.032154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431633, 39.230606, 31.419958>,  <34.716621, 39.216637, 31.772100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431633, 39.230606, 31.419958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361931, 38.865280, 31.567196>,  <35.320110, 38.646084, 31.655539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361931, 38.865280, 31.567196>,  <35.431633, 39.230606, 31.419958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361931, 38.865280, 31.567196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312486, -0.405782, -0.858891,
		0.933803, -0.034641, 0.356107,
		-0.174255, -0.913313, 0.368096,
		35.309654, 38.591286, 31.677624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972702, 38.747673, 31.212439>,  <35.431633, 39.230606, 31.419958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972702, 38.747673, 31.212439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669762, 38.499809, 31.294846>,  <35.487999, 38.351089, 31.344290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669762, 38.499809, 31.294846>,  <35.972702, 38.747673, 31.212439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669762, 38.499809, 31.294846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164485, -0.486338, -0.858149,
		0.631956, -0.616031, 0.470252,
		-0.757348, -0.619662, 0.206016,
		35.442558, 38.313911, 31.356651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293598, 38.153080, 31.113050>,  <35.972702, 38.747673, 31.212439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293598, 38.153080, 31.113050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904026, 38.062439, 31.108887>,  <35.670280, 38.008057, 31.106388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904026, 38.062439, 31.108887>,  <36.293598, 38.153080, 31.113050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904026, 38.062439, 31.108887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177841, -0.734280, -0.655137,
		0.140811, -0.639911, 0.755438,
		-0.973933, -0.226599, -0.010408,
		35.611847, 37.994461, 31.105764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286510, 37.490059, 31.096893>,  <36.293598, 38.153080, 31.113050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286510, 37.490059, 31.096893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923367, 37.583321, 30.957502>,  <35.705482, 37.639278, 30.873869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923367, 37.583321, 30.957502>,  <36.286510, 37.490059, 31.096893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923367, 37.583321, 30.957502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158530, -0.578551, -0.800092,
		-0.388153, -0.781613, 0.488280,
		-0.907857, 0.233151, -0.348476,
		35.651009, 37.653267, 30.852959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043961, 36.829636, 30.857868>,  <36.286510, 37.490059, 31.096893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043961, 36.829636, 30.857868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815250, 37.113297, 30.692856>,  <35.678024, 37.283493, 30.593847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815250, 37.113297, 30.692856>,  <36.043961, 36.829636, 30.857868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815250, 37.113297, 30.692856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115261, -0.567283, -0.815417,
		-0.812275, -0.418685, 0.406095,
		-0.571773, 0.709149, -0.412532,
		35.643719, 37.326042, 30.569096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494289, 36.479679, 30.538097>,  <36.043961, 36.829636, 30.857868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494289, 36.479679, 30.538097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485149, 36.841881, 30.368612>,  <35.479664, 37.059204, 30.266920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485149, 36.841881, 30.368612>,  <35.494289, 36.479679, 30.538097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485149, 36.841881, 30.368612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223088, -0.417756, -0.880745,
		-0.974530, 0.074399, 0.211554,
		-0.022851, 0.905508, -0.423714,
		35.478294, 37.113533, 30.241499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916111, 36.513783, 29.943710>,  <35.494289, 36.479679, 30.538097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916111, 36.513783, 29.943710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138432, 36.837883, 29.869331>,  <35.271824, 37.032345, 29.824703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138432, 36.837883, 29.869331>,  <34.916111, 36.513783, 29.943710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138432, 36.837883, 29.869331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151403, -0.121277, -0.981004,
		-0.817414, 0.573393, 0.055269,
		0.555798, 0.810254, -0.185947,
		35.305172, 37.080959, 29.813547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500179, 37.091965, 29.458677>,  <34.916111, 36.513783, 29.943710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500179, 37.091965, 29.458677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896847, 37.128365, 29.422215>,  <35.134846, 37.150204, 29.400337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896847, 37.128365, 29.422215>,  <34.500179, 37.091965, 29.458677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896847, 37.128365, 29.422215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083837, -0.081268, -0.993160,
		-0.097786, 0.992529, -0.072962,
		0.991670, 0.091000, -0.091157,
		35.194347, 37.155666, 29.394867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610226, 37.596592, 29.005508>,  <34.500179, 37.091965, 29.458677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610226, 37.596592, 29.005508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943840, 37.376034, 28.998089>,  <35.144009, 37.243698, 28.993637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943840, 37.376034, 28.998089>,  <34.610226, 37.596592, 29.005508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943840, 37.376034, 28.998089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080358, -0.088150, -0.992860,
		0.545823, 0.829574, -0.117829,
		0.834038, -0.551395, -0.018549,
		35.194050, 37.210617, 28.992523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893200, 37.734955, 28.370213>,  <34.610226, 37.596592, 29.005508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893200, 37.734955, 28.370213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095562, 37.413326, 28.495131>,  <35.216980, 37.220348, 28.570082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095562, 37.413326, 28.495131>,  <34.893200, 37.734955, 28.370213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095562, 37.413326, 28.495131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083391, -0.314760, -0.945501,
		0.858547, 0.504379, -0.092187,
		0.505907, -0.804070, 0.312297,
		35.247334, 37.172104, 28.588820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238117, 37.606392, 27.745031>,  <34.893200, 37.734955, 28.370213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238117, 37.606392, 27.745031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328285, 37.293285, 27.977051>,  <35.382385, 37.105419, 28.116262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328285, 37.293285, 27.977051>,  <35.238117, 37.606392, 27.745031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328285, 37.293285, 27.977051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376516, -0.479121, -0.792893,
		0.898566, 0.397134, 0.186720,
		0.225423, -0.782769, 0.580049,
		35.395912, 37.058456, 28.151066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935661, 37.341805, 27.582752>,  <35.238117, 37.606392, 27.745031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935661, 37.341805, 27.582752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792061, 37.016090, 27.765203>,  <35.705902, 36.820660, 27.874674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792061, 37.016090, 27.765203>,  <35.935661, 37.341805, 27.582752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792061, 37.016090, 27.765203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298587, -0.563224, -0.770470,
		0.884287, -0.140406, 0.445334,
		-0.359001, -0.814288, 0.456128,
		35.684361, 36.771805, 27.902042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467827, 36.816769, 27.718418>,  <35.935661, 37.341805, 27.582752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467827, 36.816769, 27.718418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103794, 36.656643, 27.675520>,  <35.885376, 36.560566, 27.649782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103794, 36.656643, 27.675520>,  <36.467827, 36.816769, 27.718418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103794, 36.656643, 27.675520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371158, -0.672166, -0.640652,
		0.184376, -0.622849, 0.760305,
		-0.910081, -0.400314, -0.107244,
		35.830769, 36.536549, 27.643347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575974, 36.126060, 27.851381>,  <36.467827, 36.816769, 27.718418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575974, 36.126060, 27.851381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238922, 36.146706, 27.636974>,  <36.036690, 36.159092, 27.508329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238922, 36.146706, 27.636974>,  <36.575974, 36.126060, 27.851381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238922, 36.146706, 27.636974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361699, -0.683182, -0.634378,
		-0.398939, -0.728422, 0.557001,
		-0.842628, 0.051612, -0.536018,
		35.986134, 36.162189, 27.476170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430492, 35.379276, 27.648714>,  <36.575974, 36.126060, 27.851381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430492, 35.379276, 27.648714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239017, 35.618114, 27.391239>,  <36.124130, 35.761417, 27.236753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239017, 35.618114, 27.391239>,  <36.430492, 35.379276, 27.648714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239017, 35.618114, 27.391239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399901, -0.504402, -0.765283,
		-0.781623, -0.623746, 0.002674,
		-0.478691, 0.597093, -0.643689,
		36.095409, 35.797241, 27.198133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914570, 34.973953, 27.355009>,  <36.430492, 35.379276, 27.648714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914570, 34.973953, 27.355009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003689, 35.283516, 27.117886>,  <36.057159, 35.469254, 26.975611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003689, 35.283516, 27.117886>,  <35.914570, 34.973953, 27.355009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003689, 35.283516, 27.117886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212035, -0.632007, -0.745391,
		-0.951526, 0.040375, -0.304906,
		0.222798, 0.773910, -0.592810,
		36.070530, 35.515690, 26.940042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677296, 34.783836, 26.666595>,  <35.914570, 34.973953, 27.355009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677296, 34.783836, 26.666595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912334, 35.092255, 26.568439>,  <36.053356, 35.277306, 26.509546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912334, 35.092255, 26.568439>,  <35.677296, 34.783836, 26.666595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912334, 35.092255, 26.568439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309999, -0.494645, -0.811928,
		-0.747416, 0.401015, -0.529676,
		0.587596, 0.771047, -0.245392,
		36.088612, 35.323570, 26.494822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611584, 34.828728, 26.037615>,  <35.677296, 34.783836, 26.666595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611584, 34.828728, 26.037615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955162, 35.026005, 26.092705>,  <36.161308, 35.144371, 26.125759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955162, 35.026005, 26.092705>,  <35.611584, 34.828728, 26.037615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955162, 35.026005, 26.092705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398861, -0.475734, -0.783956,
		-0.321121, 0.728311, -0.605346,
		0.858948, 0.493194, 0.137727,
		36.212845, 35.173962, 26.134024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736481, 34.941807, 25.412477>,  <35.611584, 34.828728, 26.037615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736481, 34.941807, 25.412477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075588, 34.998730, 25.616842>,  <36.279053, 35.032883, 25.739462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075588, 34.998730, 25.616842>,  <35.736481, 34.941807, 25.412477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075588, 34.998730, 25.616842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528535, -0.306570, -0.791622,
		0.043975, 0.941150, -0.335117,
		0.847772, 0.142309, 0.510912,
		36.329918, 35.041424, 25.770117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102337, 35.132359, 24.851711>,  <35.736481, 34.941807, 25.412477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102337, 35.132359, 24.851711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355457, 35.045490, 25.149004>,  <36.507328, 34.993370, 25.327379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355457, 35.045490, 25.149004>,  <36.102337, 35.132359, 24.851711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355457, 35.045490, 25.149004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705425, -0.234087, -0.669013,
		0.319274, 0.947649, 0.005070,
		0.632802, -0.217175, 0.743233,
		36.545300, 34.980339, 25.371975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788757, 35.481960, 24.695303>,  <36.102337, 35.132359, 24.851711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788757, 35.481960, 24.695303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792145, 35.150177, 24.918705>,  <36.794178, 34.951107, 25.052746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792145, 35.150177, 24.918705>,  <36.788757, 35.481960, 24.695303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792145, 35.150177, 24.918705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629622, -0.429483, -0.647395,
		0.776856, 0.357132, 0.518606,
		0.008473, -0.829458, 0.558504,
		36.794685, 34.901340, 25.086256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509785, 35.303425, 24.638683>,  <36.788757, 35.481960, 24.695303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509785, 35.303425, 24.638683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363792, 34.969143, 24.802824>,  <37.276199, 34.768574, 24.901308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363792, 34.969143, 24.802824>,  <37.509785, 35.303425, 24.638683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363792, 34.969143, 24.802824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676173, -0.540915, -0.500201,
		0.639985, 0.094906, 0.762504,
		-0.364978, -0.835706, 0.410350,
		37.254299, 34.718430, 24.925928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095013, 34.905251, 24.924212>,  <37.509785, 35.303425, 24.638683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095013, 34.905251, 24.924212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800793, 34.639988, 24.868786>,  <37.624260, 34.480831, 24.835531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800793, 34.639988, 24.868786>,  <38.095013, 34.905251, 24.924212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800793, 34.639988, 24.868786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650620, -0.634439, -0.417349,
		0.188856, -0.397132, 0.898120,
		-0.735545, -0.663154, -0.138564,
		37.580128, 34.441040, 24.827217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396244, 34.219040, 24.969297>,  <38.095013, 34.905251, 24.924212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396244, 34.219040, 24.969297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.062523, 34.161110, 24.756519>,  <37.862289, 34.126354, 24.628853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.062523, 34.161110, 24.756519>,  <38.396244, 34.219040, 24.969297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062523, 34.161110, 24.756519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516443, -0.542973, -0.662168,
		-0.192936, -0.827168, 0.527796,
		-0.834303, -0.144821, -0.531944,
		37.812233, 34.117664, 24.596935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441719, 33.474262, 24.834101>,  <38.396244, 34.219040, 24.969297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441719, 33.474262, 24.834101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206642, 33.661568, 24.570181>,  <38.065594, 33.773952, 24.411829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206642, 33.661568, 24.570181>,  <38.441719, 33.474262, 24.834101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206642, 33.661568, 24.570181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459678, -0.477844, -0.748573,
		-0.665815, -0.743230, 0.065575,
		-0.587696, 0.468268, -0.659802,
		38.030334, 33.802048, 24.372240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485355, 32.867947, 25.323200>,  <38.441719, 33.474262, 24.834101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485355, 32.867947, 25.323200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884846, 32.857906, 25.340734>,  <39.124538, 32.851883, 25.351255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884846, 32.857906, 25.340734>,  <38.485355, 32.867947, 25.323200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884846, 32.857906, 25.340734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030699, 0.387502, 0.921357,
		-0.040117, -0.921527, 0.386237,
		0.998723, -0.025105, 0.043835,
		39.184464, 32.850376, 25.353886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566490, 32.687103, 25.877979>,  <38.485355, 32.867947, 25.323200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566490, 32.687103, 25.877979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921211, 32.859470, 25.811176>,  <39.134045, 32.962891, 25.771095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921211, 32.859470, 25.811176>,  <38.566490, 32.687103, 25.877979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921211, 32.859470, 25.811176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089555, 0.514752, 0.852649,
		0.453389, -0.741175, 0.495074,
		0.886803, 0.430918, -0.167007,
		39.187252, 32.988747, 25.761074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988613, 32.683510, 26.528784>,  <38.566490, 32.687103, 25.877979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988613, 32.683510, 26.528784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205791, 32.929760, 26.300322>,  <39.336098, 33.077511, 26.163244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205791, 32.929760, 26.300322>,  <38.988613, 32.683510, 26.528784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205791, 32.929760, 26.300322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152377, 0.596621, 0.787925,
		0.825828, -0.514831, 0.230126,
		0.542946, 0.615624, -0.571154,
		39.368675, 33.114449, 26.128975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740868, 32.909393, 26.865709>,  <38.988613, 32.683510, 26.528784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740868, 32.909393, 26.865709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634506, 33.195660, 26.607370>,  <39.570690, 33.367420, 26.452366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634506, 33.195660, 26.607370>,  <39.740868, 32.909393, 26.865709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634506, 33.195660, 26.607370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187692, 0.695582, 0.693497,
		0.945551, 0.063184, -0.319283,
		-0.265906, 0.715663, -0.645849,
		39.554733, 33.410358, 26.413616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290932, 33.438713, 26.954662>,  <39.740868, 32.909393, 26.865709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290932, 33.438713, 26.954662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947689, 33.610840, 26.842607>,  <39.741741, 33.714115, 26.775375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947689, 33.610840, 26.842607>,  <40.290932, 33.438713, 26.954662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947689, 33.610840, 26.842607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131924, 0.712032, 0.689642,
		0.496231, 0.554832, -0.667770,
		-0.858109, 0.430317, -0.280137,
		39.690258, 33.739933, 26.758566>
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
