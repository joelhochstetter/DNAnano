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
	<24.475313, 34.911434, 34.675800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184433, 34.944439, 34.948380>,  <24.009905, 34.964241, 35.111927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184433, 34.944439, 34.948380>,  <24.475313, 34.911434, 34.675800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184433, 34.944439, 34.948380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009551, -0.991437, 0.130234,
		0.686361, 0.101214, 0.720184,
		-0.727199, 0.082509, 0.681450,
		23.966274, 34.969193, 35.152813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507088, 34.358791, 35.159019>,  <24.475313, 34.911434, 34.675800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507088, 34.358791, 35.159019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849363, 34.162102, 35.223522>,  <25.054728, 34.044086, 35.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849363, 34.162102, 35.223522>,  <24.507088, 34.358791, 35.159019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849363, 34.162102, 35.223522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007426, 0.323244, 0.946286,
		-0.517441, -0.808527, 0.280248,
		0.855687, -0.491728, 0.161255,
		25.106070, 34.014584, 35.271900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383961, 33.870518, 35.574577>,  <24.507088, 34.358791, 35.159019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383961, 33.870518, 35.574577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758432, 34.010105, 35.591518>,  <24.983114, 34.093857, 35.601681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758432, 34.010105, 35.591518>,  <24.383961, 33.870518, 35.574577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758432, 34.010105, 35.591518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197493, 0.422468, 0.884600,
		0.290804, -0.836507, 0.464423,
		0.936178, 0.348965, 0.042349,
		25.039286, 34.114796, 35.604221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677197, 33.687195, 36.299736>,  <24.383961, 33.870518, 35.574577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677197, 33.687195, 36.299736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963627, 33.944191, 36.190601>,  <25.135485, 34.098389, 36.125118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963627, 33.944191, 36.190601>,  <24.677197, 33.687195, 36.299736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963627, 33.944191, 36.190601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116403, 0.275491, 0.954230,
		0.688248, -0.715061, 0.122485,
		0.716076, 0.642489, -0.272841,
		25.178450, 34.136936, 36.108749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324734, 33.458973, 36.687912>,  <24.677197, 33.687195, 36.299736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324734, 33.458973, 36.687912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333893, 33.843544, 36.578270>,  <25.339388, 34.074287, 36.512486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333893, 33.843544, 36.578270>,  <25.324734, 33.458973, 36.687912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333893, 33.843544, 36.578270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035803, 0.274794, 0.960837,
		0.999097, -0.012185, 0.040714,
		0.022896, 0.961426, -0.274109,
		25.340761, 34.131973, 36.496037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967113, 33.744423, 36.933212>,  <25.324734, 33.458973, 36.687912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967113, 33.744423, 36.933212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679401, 34.020981, 36.906082>,  <25.506773, 34.186916, 36.889805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679401, 34.020981, 36.906082>,  <25.967113, 33.744423, 36.933212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679401, 34.020981, 36.906082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092089, 0.191652, 0.977133,
		0.688587, 0.696589, -0.201522,
		-0.719282, 0.691399, -0.067821,
		25.463617, 34.228401, 36.885735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215034, 34.346931, 37.318836>,  <25.967113, 33.744423, 36.933212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215034, 34.346931, 37.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816078, 34.346024, 37.289986>,  <25.576704, 34.345478, 37.272675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816078, 34.346024, 37.289986>,  <26.215034, 34.346931, 37.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816078, 34.346024, 37.289986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071705, 0.143619, 0.987032,
		0.008116, 0.989631, -0.143407,
		-0.997393, -0.002272, -0.072128,
		25.516861, 34.345341, 37.268349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001223, 34.889038, 37.809322>,  <26.215034, 34.346931, 37.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001223, 34.889038, 37.809322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695454, 34.641457, 37.737141>,  <25.511993, 34.492908, 37.693832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695454, 34.641457, 37.737141>,  <26.001223, 34.889038, 37.809322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695454, 34.641457, 37.737141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240776, 0.014429, 0.970473,
		-0.598070, 0.785299, -0.160058,
		-0.764421, -0.618949, -0.180451,
		25.466127, 34.455772, 37.683006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302496, 35.256821, 38.022774>,  <26.001223, 34.889038, 37.809322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302496, 35.256821, 38.022774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265944, 34.861404, 38.070824>,  <25.244013, 34.624153, 38.099655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265944, 34.861404, 38.070824>,  <25.302496, 35.256821, 38.022774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265944, 34.861404, 38.070824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106638, 0.129654, 0.985808,
		-0.990090, 0.077274, -0.117264,
		-0.091381, -0.988544, 0.120129,
		25.238529, 34.564842, 38.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639448, 35.164551, 38.392815>,  <25.302496, 35.256821, 38.022774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639448, 35.164551, 38.392815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829103, 34.817696, 38.453835>,  <24.942896, 34.609585, 38.490448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829103, 34.817696, 38.453835>,  <24.639448, 35.164551, 38.392815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829103, 34.817696, 38.453835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207716, 0.058206, 0.976456,
		-0.855598, -0.494662, -0.152520,
		0.474138, -0.867134, 0.152550,
		24.971344, 34.557556, 38.499599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209225, 34.773914, 38.812737>,  <24.639448, 35.164551, 38.392815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209225, 34.773914, 38.812737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585426, 34.647808, 38.863422>,  <24.811148, 34.572144, 38.893833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585426, 34.647808, 38.863422>,  <24.209225, 34.773914, 38.812737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585426, 34.647808, 38.863422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081017, 0.154092, 0.984729,
		-0.329982, -0.936408, 0.119382,
		0.940504, -0.315271, 0.126713,
		24.867579, 34.553226, 38.901436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137344, 34.235939, 39.374180>,  <24.209225, 34.773914, 38.812737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137344, 34.235939, 39.374180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497789, 34.407272, 39.347260>,  <24.714056, 34.510071, 39.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497789, 34.407272, 39.347260>,  <24.137344, 34.235939, 39.374180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497789, 34.407272, 39.347260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093969, -0.041397, 0.994714,
		0.423283, -0.902672, -0.077553,
		0.901111, 0.428334, -0.067300,
		24.768124, 34.535774, 39.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631462, 34.369465, 40.074181>,  <24.137344, 34.235939, 39.374180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631462, 34.369465, 40.074181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995451, 34.351452, 40.239067>,  <25.213844, 34.340645, 40.337997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995451, 34.351452, 40.239067>,  <24.631462, 34.369465, 40.074181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995451, 34.351452, 40.239067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413889, 0.159565, -0.896234,
		-0.025412, 0.986160, 0.163840,
		0.909972, -0.045037, 0.412216,
		25.268442, 34.337940, 40.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034624, 35.001762, 40.021339>,  <24.631462, 34.369465, 40.074181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034624, 35.001762, 40.021339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238146, 34.657440, 40.016811>,  <25.360258, 34.450848, 40.014095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238146, 34.657440, 40.016811>,  <25.034624, 35.001762, 40.021339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238146, 34.657440, 40.016811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207124, 0.135171, -0.968932,
		0.835594, 0.490652, 0.247069,
		0.508805, -0.860807, -0.011322,
		25.390787, 34.399197, 40.013416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724295, 34.996120, 39.692993>,  <25.034624, 35.001762, 40.021339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724295, 34.996120, 39.692993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556166, 34.634861, 39.658001>,  <25.455288, 34.418106, 39.637005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556166, 34.634861, 39.658001>,  <25.724295, 34.996120, 39.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556166, 34.634861, 39.658001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064757, 0.066306, -0.995696,
		0.905062, -0.424177, 0.030615,
		-0.420321, -0.903149, -0.087480,
		25.430069, 34.363914, 39.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030390, 34.481010, 39.152233>,  <25.724295, 34.996120, 39.692993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030390, 34.481010, 39.152233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654562, 34.362942, 39.221607>,  <25.429066, 34.292099, 39.263229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654562, 34.362942, 39.221607>,  <26.030390, 34.481010, 39.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654562, 34.362942, 39.221607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141904, -0.125244, -0.981925,
		0.311561, -0.947199, 0.075790,
		-0.939571, -0.295175, 0.173432,
		25.372690, 34.274391, 39.273636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905371, 33.755650, 38.993629>,  <26.030390, 34.481010, 39.152233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905371, 33.755650, 38.993629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572744, 33.975365, 38.960686>,  <25.373169, 34.107193, 38.940918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572744, 33.975365, 38.960686>,  <25.905371, 33.755650, 38.993629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572744, 33.975365, 38.960686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102636, -0.297698, -0.949127,
		-0.545859, -0.780809, 0.303932,
		-0.831567, 0.549284, -0.082362,
		25.323275, 34.140148, 38.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470221, 33.369816, 38.532955>,  <25.905371, 33.755650, 38.993629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470221, 33.369816, 38.532955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330254, 33.744514, 38.529770>,  <25.246273, 33.969334, 38.527859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330254, 33.744514, 38.529770>,  <25.470221, 33.369816, 38.532955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330254, 33.744514, 38.529770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134842, -0.058777, -0.989122,
		-0.927025, -0.345037, 0.146880,
		-0.349917, 0.936747, -0.007962,
		25.225279, 34.025539, 38.527382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943087, 33.331841, 38.107319>,  <25.470221, 33.369816, 38.532955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943087, 33.331841, 38.107319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016548, 33.725025, 38.110394>,  <25.060625, 33.960938, 38.112236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016548, 33.725025, 38.110394>,  <24.943087, 33.331841, 38.107319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016548, 33.725025, 38.110394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177144, 0.040785, -0.983340,
		-0.966898, 0.179232, 0.181616,
		0.183653, 0.982961, 0.007685,
		25.071644, 34.019913, 38.112698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466969, 33.570274, 37.686569>,  <24.943087, 33.331841, 38.107319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466969, 33.570274, 37.686569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750479, 33.852448, 37.685940>,  <24.920586, 34.021751, 37.685562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750479, 33.852448, 37.685940>,  <24.466969, 33.570274, 37.686569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750479, 33.852448, 37.685940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060068, 0.058125, -0.996500,
		-0.702871, 0.706391, 0.083571,
		0.708777, 0.705431, -0.001577,
		24.963112, 34.064075, 37.685467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177399, 34.176693, 37.219398>,  <24.466969, 33.570274, 37.686569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177399, 34.176693, 37.219398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575180, 34.134686, 37.221699>,  <24.813848, 34.109482, 37.223080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575180, 34.134686, 37.221699>,  <24.177399, 34.176693, 37.219398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.575180, 34.134686, 37.221699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003450, -0.022086, -0.999750,
		0.105118, 0.994225, -0.021601,
		0.994454, -0.105017, 0.005751,
		24.873516, 34.103180, 37.223423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412266, 34.885723, 36.946838>,  <24.177399, 34.176693, 37.219398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412266, 34.885723, 36.946838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776224, 34.810825, 37.094910>,  <24.994598, 34.765888, 37.183750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776224, 34.810825, 37.094910>,  <24.412266, 34.885723, 36.946838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.776224, 34.810825, 37.094910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345455, -0.152036, -0.926038,
		0.229674, 0.970477, -0.073653,
		0.909896, -0.187243, 0.370175,
		25.049192, 34.754654, 37.205963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842682, 35.335602, 36.676327>,  <24.412266, 34.885723, 36.946838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842682, 35.335602, 36.676327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020620, 34.988091, 36.763363>,  <25.127384, 34.779583, 36.815582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020620, 34.988091, 36.763363>,  <24.842682, 35.335602, 36.676327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020620, 34.988091, 36.763363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216852, -0.131238, -0.967343,
		0.868958, 0.477503, 0.130015,
		0.444846, -0.868774, 0.217588,
		25.154074, 34.727459, 36.828640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806387, 35.226597, 35.944725>,  <24.842682, 35.335602, 36.676327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806387, 35.226597, 35.944725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526102, 34.961094, 35.840088>,  <24.357931, 34.801792, 35.777306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526102, 34.961094, 35.840088>,  <24.806387, 35.226597, 35.944725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526102, 34.961094, 35.840088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438500, -0.689910, 0.575971,
		-0.562778, 0.288883, 0.774485,
		-0.700713, -0.663756, -0.261591,
		24.315887, 34.761967, 35.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424879, 35.386719, 36.225700>,  <24.806387, 35.226597, 35.944725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424879, 35.386719, 36.225700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386620, 34.994324, 36.293259>,  <25.363665, 34.758888, 36.333794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386620, 34.994324, 36.293259>,  <25.424879, 35.386719, 36.225700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386620, 34.994324, 36.293259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115358, -0.179450, -0.976980,
		0.988708, -0.073961, 0.130328,
		-0.095646, -0.980982, 0.168892,
		25.357925, 34.700027, 36.343925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949799, 35.083591, 35.831928>,  <25.424879, 35.386719, 36.225700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949799, 35.083591, 35.831928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713074, 34.771320, 35.912235>,  <25.571039, 34.583958, 35.960419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713074, 34.771320, 35.912235>,  <25.949799, 35.083591, 35.831928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713074, 34.771320, 35.912235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142680, -0.346590, -0.927102,
		0.793348, -0.520023, 0.316503,
		-0.591811, -0.780673, 0.200770,
		25.535530, 34.537117, 35.972466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294149, 34.483070, 35.696445>,  <25.949799, 35.083591, 35.831928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294149, 34.483070, 35.696445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918800, 34.348370, 35.665329>,  <25.693590, 34.267548, 35.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918800, 34.348370, 35.665329>,  <26.294149, 34.483070, 35.696445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918800, 34.348370, 35.665329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176987, -0.274871, -0.945051,
		0.296865, -0.900580, 0.317532,
		-0.938374, -0.336752, -0.077791,
		25.637287, 34.247345, 35.641991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362734, 33.805939, 35.414402>,  <26.294149, 34.483070, 35.696445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362734, 33.805939, 35.414402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991903, 33.939075, 35.345417>,  <25.769405, 34.018959, 35.304028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991903, 33.939075, 35.345417>,  <26.362734, 33.805939, 35.414402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991903, 33.939075, 35.345417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029450, -0.393969, -0.918652,
		-0.373709, -0.856742, 0.355438,
		-0.927078, 0.332840, -0.172460,
		25.713781, 34.038929, 35.293678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351086, 33.351078, 34.836857>,  <26.362734, 33.805939, 35.414402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351086, 33.351078, 34.836857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992138, 33.282093, 34.674385>,  <25.776770, 33.240704, 34.576900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992138, 33.282093, 34.674385>,  <26.351086, 33.351078, 34.836857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992138, 33.282093, 34.674385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240287, -0.581062, 0.777579,
		-0.370118, 0.795376, 0.479988,
		-0.897371, -0.172461, -0.406180,
		25.722927, 33.230354, 34.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045891, 33.346817, 35.083717>,  <26.351086, 33.351078, 34.836857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045891, 33.346817, 35.083717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380936, 33.432091, 34.882538>,  <27.581963, 33.483257, 34.761829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380936, 33.432091, 34.882538>,  <27.045891, 33.346817, 35.083717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380936, 33.432091, 34.882538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461162, -0.217539, -0.860237,
		-0.292801, 0.952485, -0.083900,
		0.837614, 0.213187, -0.502945,
		27.632219, 33.496048, 34.731655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903503, 33.903816, 34.608952>,  <27.045891, 33.346817, 35.083717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903503, 33.903816, 34.608952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186682, 33.662006, 34.462875>,  <27.356588, 33.516918, 34.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186682, 33.662006, 34.462875>,  <26.903503, 33.903816, 34.608952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186682, 33.662006, 34.462875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625300, -0.296100, -0.722029,
		0.328353, 0.739508, -0.587632,
		0.707944, -0.604527, -0.365189,
		27.399065, 33.480648, 34.353317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031418, 34.014076, 33.876953>,  <26.903503, 33.903816, 34.608952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031418, 34.014076, 33.876953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113871, 33.630806, 33.956364>,  <27.163342, 33.400845, 34.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113871, 33.630806, 33.956364>,  <27.031418, 34.014076, 33.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113871, 33.630806, 33.956364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581656, -0.283129, -0.762570,
		0.786884, 0.041717, -0.615690,
		0.206131, -0.958174, 0.198525,
		27.175711, 33.343353, 34.015923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144438, 33.668640, 33.219139>,  <27.031418, 34.014076, 33.876953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144438, 33.668640, 33.219139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027699, 33.373711, 33.462833>,  <26.957655, 33.196751, 33.609051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027699, 33.373711, 33.462833>,  <27.144438, 33.668640, 33.219139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027699, 33.373711, 33.462833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624768, -0.335341, -0.705132,
		0.724216, -0.586426, -0.362789,
		-0.291849, -0.737327, 0.609240,
		26.940144, 33.152512, 33.645607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075508, 33.079330, 32.737595>,  <27.144438, 33.668640, 33.219139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075508, 33.079330, 32.737595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864431, 32.987263, 33.064659>,  <26.737785, 32.932022, 33.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864431, 32.987263, 33.064659>,  <27.075508, 33.079330, 32.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864431, 32.987263, 33.064659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677056, -0.467335, -0.568501,
		0.512970, -0.853594, 0.090773,
		-0.527690, -0.230165, 0.817659,
		26.706125, 32.918213, 33.309956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947027, 32.239651, 32.864628>,  <27.075508, 33.079330, 32.737595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947027, 32.239651, 32.864628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677773, 32.509312, 32.986221>,  <26.516220, 32.671108, 33.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677773, 32.509312, 32.986221>,  <26.947027, 32.239651, 32.864628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677773, 32.509312, 32.986221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717598, -0.496107, -0.488805,
		-0.178718, -0.547174, 0.817717,
		-0.673136, 0.674150, 0.303988,
		26.475832, 32.711555, 33.077419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371122, 32.010250, 33.024078>,  <26.947027, 32.239651, 32.864628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371122, 32.010250, 33.024078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247278, 32.379311, 32.932125>,  <26.172972, 32.600746, 32.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247278, 32.379311, 32.932125>,  <26.371122, 32.010250, 33.024078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247278, 32.379311, 32.932125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799500, -0.383476, -0.462327,
		-0.514725, 0.040653, 0.856391,
		-0.309610, 0.922656, -0.229887,
		26.154394, 32.656109, 32.863159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622776, 32.065178, 33.116798>,  <26.371122, 32.010250, 33.024078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622776, 32.065178, 33.116798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706573, 32.360310, 32.860134>,  <25.756853, 32.537388, 32.706135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706573, 32.360310, 32.860134>,  <25.622776, 32.065178, 33.116798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706573, 32.360310, 32.860134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802547, -0.245136, -0.543899,
		-0.558596, 0.628905, 0.540785,
		0.209495, 0.737826, -0.641658,
		25.769423, 32.581657, 32.667637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035286, 32.461720, 33.031414>,  <25.622776, 32.065178, 33.116798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035286, 32.461720, 33.031414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271465, 32.465237, 32.708603>,  <25.413174, 32.467346, 32.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271465, 32.465237, 32.708603>,  <25.035286, 32.461720, 33.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271465, 32.465237, 32.708603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760917, -0.327253, -0.560278,
		-0.269030, 0.944896, -0.186534,
		0.590448, 0.008794, -0.807028,
		25.448599, 32.467876, 32.466496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395744, 32.875820, 32.952824>,  <25.035286, 32.461720, 33.031414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395744, 32.875820, 32.952824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729609, 33.076057, 32.860958>,  <24.929928, 33.196201, 32.805840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729609, 33.076057, 32.860958>,  <24.395744, 32.875820, 32.952824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729609, 33.076057, 32.860958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427099, 0.325013, -0.843773,
		-0.347743, 0.802355, 0.485079,
		0.834663, 0.500593, -0.229664,
		24.980007, 33.226234, 32.792057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095890, 32.681522, 32.291451>,  <24.395744, 32.875820, 32.952824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095890, 32.681522, 32.291451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284409, 32.758038, 31.947058>,  <24.397520, 32.803947, 31.740421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284409, 32.758038, 31.947058>,  <24.095890, 32.681522, 32.291451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284409, 32.758038, 31.947058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855720, 0.137239, 0.498908,
		0.213593, -0.971893, -0.099005,
		0.471298, 0.191284, -0.860981,
		24.425798, 32.815422, 31.688763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664146, 32.231895, 32.095791>,  <24.095890, 32.681522, 32.291451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664146, 32.231895, 32.095791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727661, 32.603760, 31.962811>,  <24.765770, 32.826878, 31.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727661, 32.603760, 31.962811>,  <24.664146, 32.231895, 32.095791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727661, 32.603760, 31.962811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782934, 0.086581, 0.616051,
		0.601500, -0.358108, -0.714112,
		0.158785, 0.929657, -0.332453,
		24.775297, 32.882656, 31.863075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367903, 32.412910, 31.687716>,  <24.664146, 32.231895, 32.095791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367903, 32.412910, 31.687716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168787, 32.652916, 31.938213>,  <25.049318, 32.796921, 32.088512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168787, 32.652916, 31.938213>,  <25.367903, 32.412910, 31.687716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168787, 32.652916, 31.938213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759727, -0.046631, 0.648568,
		0.418354, 0.798627, -0.432637,
		-0.497790, 0.600017, 0.626247,
		25.019449, 32.832920, 32.126087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743877, 33.087894, 31.966459>,  <25.367903, 32.412910, 31.687716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743877, 33.087894, 31.966459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496363, 32.942188, 32.244858>,  <25.347855, 32.854763, 32.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496363, 32.942188, 32.244858>,  <25.743877, 33.087894, 31.966459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496363, 32.942188, 32.244858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760148, -0.054129, 0.647492,
		-0.198188, 0.929719, 0.310393,
		-0.618787, -0.364270, 0.695996,
		25.310726, 32.832909, 32.453655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955652, 33.364243, 32.555687>,  <25.743877, 33.087894, 31.966459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955652, 33.364243, 32.555687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740383, 33.066906, 32.714588>,  <25.611221, 32.888504, 32.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740383, 33.066906, 32.714588>,  <25.955652, 33.364243, 32.555687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740383, 33.066906, 32.714588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703448, -0.136527, 0.697511,
		-0.464255, 0.654827, 0.596379,
		-0.538172, -0.743345, 0.397253,
		25.578932, 32.843903, 32.833763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742630, 33.405125, 33.260353>,  <25.955652, 33.364243, 32.555687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742630, 33.405125, 33.260353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803913, 33.015186, 33.195602>,  <25.840683, 32.781223, 33.156754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803913, 33.015186, 33.195602>,  <25.742630, 33.405125, 33.260353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803913, 33.015186, 33.195602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758380, 0.010969, 0.651720,
		-0.633550, -0.222613, 0.740984,
		0.153209, -0.974845, -0.161876,
		25.849876, 32.722733, 33.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614731, 33.025684, 33.930069>,  <25.742630, 33.405125, 33.260353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614731, 33.025684, 33.930069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872749, 32.847130, 33.681984>,  <26.027559, 32.739998, 33.533134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872749, 32.847130, 33.681984>,  <25.614731, 33.025684, 33.930069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872749, 32.847130, 33.681984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729267, 0.117199, 0.674117,
		-0.228226, -0.887134, 0.401130,
		0.645045, -0.446382, -0.620210,
		26.066263, 32.713215, 33.495922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942032, 32.544849, 34.367027>,  <25.614731, 33.025684, 33.930069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942032, 32.544849, 34.367027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175716, 32.655148, 34.061699>,  <26.315928, 32.721325, 33.878502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175716, 32.655148, 34.061699>,  <25.942032, 32.544849, 34.367027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175716, 32.655148, 34.061699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750430, 0.174689, 0.637447,
		0.309116, -0.945225, -0.104870,
		0.584211, 0.275743, -0.763323,
		26.350981, 32.737869, 33.832703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590242, 32.229229, 34.422401>,  <25.942032, 32.544849, 34.367027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590242, 32.229229, 34.422401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699766, 32.519093, 34.169449>,  <26.765480, 32.693008, 34.017677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699766, 32.519093, 34.169449>,  <26.590242, 32.229229, 34.422401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699766, 32.519093, 34.169449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802561, 0.190192, 0.565440,
		0.530023, -0.662346, -0.529504,
		0.273810, 0.724655, -0.632379,
		26.781910, 32.736488, 33.979736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313337, 32.065136, 34.193501>,  <26.590242, 32.229229, 34.422401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313337, 32.065136, 34.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219154, 32.453381, 34.173603>,  <27.162645, 32.686329, 34.161663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219154, 32.453381, 34.173603>,  <27.313337, 32.065136, 34.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219154, 32.453381, 34.173603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807957, 0.223930, 0.545033,
		0.540154, 0.088141, -0.836938,
		-0.235455, 0.970611, -0.049743,
		27.148518, 32.744564, 34.158680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935734, 32.496658, 33.877018>,  <27.313337, 32.065136, 34.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935734, 32.496658, 33.877018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683640, 32.678043, 34.129105>,  <27.532383, 32.786873, 34.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683640, 32.678043, 34.129105>,  <27.935734, 32.496658, 33.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683640, 32.678043, 34.129105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752564, 0.157180, 0.639486,
		0.190926, 0.877306, -0.440320,
		-0.630234, 0.453463, 0.630219,
		27.494570, 32.814083, 34.318169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082975, 33.241920, 33.981506>,  <27.935734, 32.496658, 33.877018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082975, 33.241920, 33.981506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916397, 33.044601, 34.286987>,  <27.816450, 32.926212, 34.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916397, 33.044601, 34.286987>,  <28.082975, 33.241920, 33.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916397, 33.044601, 34.286987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867851, 0.034641, 0.495616,
		-0.270940, 0.869173, 0.413679,
		-0.416445, -0.493294, 0.763698,
		27.791464, 32.896614, 34.516098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349306, 33.559090, 34.618942>,  <28.082975, 33.241920, 33.981506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349306, 33.559090, 34.618942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218147, 33.201176, 34.740166>,  <28.139452, 32.986427, 34.812901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218147, 33.201176, 34.740166>,  <28.349306, 33.559090, 34.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218147, 33.201176, 34.740166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792320, -0.085764, 0.604048,
		-0.514501, 0.438185, 0.737077,
		-0.327899, -0.894784, 0.303057,
		28.119778, 32.932739, 34.831081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156021, 33.307220, 35.334080>,  <28.349306, 33.559090, 34.618942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156021, 33.307220, 35.334080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325264, 32.972080, 35.196098>,  <28.426809, 32.770996, 35.113312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325264, 32.972080, 35.196098>,  <28.156021, 33.307220, 35.334080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325264, 32.972080, 35.196098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667999, 0.031223, 0.743507,
		-0.612176, -0.545009, 0.572892,
		0.423106, -0.837849, -0.344952,
		28.452196, 32.720726, 35.092613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785940, 33.417961, 35.663151>,  <28.156021, 33.307220, 35.334080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785940, 33.417961, 35.663151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836569, 33.071217, 35.470264>,  <28.866945, 32.863171, 35.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836569, 33.071217, 35.470264>,  <28.785940, 33.417961, 35.663151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836569, 33.071217, 35.470264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960337, -0.014679, 0.278455,
		-0.248460, -0.498335, 0.830620,
		0.126572, -0.866860, -0.482217,
		28.874540, 32.811157, 35.325600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045815, 32.842690, 36.042221>,  <28.785940, 33.417961, 35.663151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045815, 32.842690, 36.042221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164633, 32.730083, 35.677254>,  <29.235924, 32.662521, 35.458271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164633, 32.730083, 35.677254>,  <29.045815, 32.842690, 36.042221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164633, 32.730083, 35.677254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926845, -0.144771, 0.346409,
		-0.229610, -0.948574, 0.217913,
		0.297047, -0.281511, -0.912422,
		29.253746, 32.645630, 35.403526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467638, 32.201614, 36.165001>,  <29.045815, 32.842690, 36.042221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467638, 32.201614, 36.165001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571943, 32.383335, 35.824268>,  <29.634525, 32.492367, 35.619831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571943, 32.383335, 35.824268>,  <29.467638, 32.201614, 36.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571943, 32.383335, 35.824268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963902, -0.073328, 0.255962,
		0.053822, -0.887823, -0.457026,
		0.260762, 0.454305, -0.851827,
		29.650171, 32.519627, 35.568722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933928, 31.788971, 35.723499>,  <29.467638, 32.201614, 36.165001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933928, 31.788971, 35.723499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022827, 32.177845, 35.693943>,  <30.076166, 32.411171, 35.676208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022827, 32.177845, 35.693943>,  <29.933928, 31.788971, 35.723499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022827, 32.177845, 35.693943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923118, -0.185429, 0.336852,
		0.313781, -0.143077, -0.938654,
		0.222249, 0.972186, -0.073893,
		30.089502, 32.469501, 35.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397650, 31.919121, 35.210609>,  <29.933928, 31.788971, 35.723499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397650, 31.919121, 35.210609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433477, 32.142078, 35.540771>,  <30.454973, 32.275852, 35.738869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433477, 32.142078, 35.540771>,  <30.397650, 31.919121, 35.210609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433477, 32.142078, 35.540771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951484, -0.292828, 0.094495,
		0.294372, 0.776895, -0.556578,
		0.089569, 0.557392, 0.825404,
		30.460348, 32.309296, 35.788391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896509, 32.381824, 35.076283>,  <30.397650, 31.919121, 35.210609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896509, 32.381824, 35.076283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875299, 32.331940, 35.472591>,  <30.862574, 32.302010, 35.710377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875299, 32.331940, 35.472591>,  <30.896509, 32.381824, 35.076283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875299, 32.331940, 35.472591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881160, -0.472658, -0.012337,
		0.469836, 0.872377, 0.134955,
		-0.053025, -0.124713, 0.990775,
		30.859392, 32.294525, 35.769825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534197, 32.726067, 35.454239>,  <30.896509, 32.381824, 35.076283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534197, 32.726067, 35.454239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356289, 32.404251, 35.611668>,  <31.249544, 32.211163, 35.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356289, 32.404251, 35.611668>,  <31.534197, 32.726067, 35.454239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356289, 32.404251, 35.611668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894192, -0.423899, 0.143979,
		0.050996, 0.415962, 0.907951,
		-0.444769, -0.804540, 0.393567,
		31.222858, 32.162888, 35.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857649, 33.520992, 35.561085>,  <31.534197, 32.726067, 35.454239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857649, 33.520992, 35.561085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656340, 33.819618, 35.387020>,  <31.535553, 33.998795, 35.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656340, 33.819618, 35.387020>,  <31.857649, 33.520992, 35.561085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656340, 33.819618, 35.387020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321601, 0.629226, 0.707565,
		0.802052, 0.216152, -0.556768,
		-0.503274, 0.746561, -0.435157,
		31.505358, 34.043587, 35.256474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431435, 33.963573, 35.482418>,  <31.857649, 33.520992, 35.561085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431435, 33.963573, 35.482418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122410, 34.052654, 35.244579>,  <31.936995, 34.106102, 35.101875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122410, 34.052654, 35.244579>,  <32.431435, 33.963573, 35.482418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122410, 34.052654, 35.244579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134102, 0.972577, 0.190026,
		0.620614, 0.067070, -0.781243,
		-0.772564, 0.222699, -0.594601,
		31.890640, 34.119465, 35.066200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150208, 33.893478, 35.153240>,  <32.431435, 33.963573, 35.482418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150208, 33.893478, 35.153240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390751, 33.940300, 34.837097>,  <33.535076, 33.968391, 34.647411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390751, 33.940300, 34.837097>,  <33.150208, 33.893478, 35.153240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390751, 33.940300, 34.837097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384767, -0.824520, -0.414874,
		-0.700227, 0.553592, -0.450797,
		0.601362, 0.117054, -0.790355,
		33.571159, 33.975418, 34.599991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757725, 33.867374, 34.534340>,  <33.150208, 33.893478, 35.153240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757725, 33.867374, 34.534340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122101, 33.726307, 34.448734>,  <33.340729, 33.641666, 34.397369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122101, 33.726307, 34.448734>,  <32.757725, 33.867374, 34.534340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122101, 33.726307, 34.448734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397414, -0.889380, -0.225975,
		-0.110648, 0.290904, -0.950332,
		0.910944, -0.352672, -0.214017,
		33.395386, 33.620506, 34.384529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593925, 33.412991, 33.955513>,  <32.757725, 33.867374, 34.534340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593925, 33.412991, 33.955513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958542, 33.325798, 34.094986>,  <33.177311, 33.273483, 34.178669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958542, 33.325798, 34.094986>,  <32.593925, 33.412991, 33.955513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958542, 33.325798, 34.094986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180414, -0.973970, -0.137233,
		0.369523, 0.062186, -0.927139,
		0.911539, -0.217980, 0.348685,
		33.232002, 33.260403, 34.199593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098801, 33.005871, 33.436516>,  <32.593925, 33.412991, 33.955513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098801, 33.005871, 33.436516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108425, 32.951389, 33.832672>,  <33.114201, 32.918701, 34.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108425, 32.951389, 33.832672>,  <33.098801, 33.005871, 33.436516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108425, 32.951389, 33.832672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314400, -0.941440, -0.121831,
		0.948985, -0.308447, -0.065475,
		0.024063, -0.136201, 0.990389,
		33.115643, 32.910530, 34.129787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310333, 32.285435, 33.453671>,  <33.098801, 33.005871, 33.436516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310333, 32.285435, 33.453671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343948, 32.387344, 33.068333>,  <33.364117, 32.448490, 32.837132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343948, 32.387344, 33.068333>,  <33.310333, 32.285435, 33.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343948, 32.387344, 33.068333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022965, 0.966010, 0.257483,
		0.996198, -0.043762, 0.075331,
		0.084039, 0.254774, -0.963342,
		33.369160, 32.463776, 32.779331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497231, 31.932369, 32.797543>,  <33.310333, 32.285435, 33.453671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497231, 31.932369, 32.797543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431385, 32.190365, 32.499043>,  <33.391876, 32.345161, 32.319942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431385, 32.190365, 32.499043>,  <33.497231, 31.932369, 32.797543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431385, 32.190365, 32.499043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179374, -0.724380, -0.665657,
		-0.969911, -0.243435, 0.003550,
		-0.164615, 0.644992, -0.746249,
		33.382000, 32.383862, 32.275169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919624, 31.720406, 32.317547>,  <33.497231, 31.932369, 32.797543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919624, 31.720406, 32.317547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183361, 31.956648, 32.131451>,  <33.341602, 32.098392, 32.019791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183361, 31.956648, 32.131451>,  <32.919624, 31.720406, 32.317547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183361, 31.956648, 32.131451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219180, -0.742920, -0.632480,
		-0.719186, 0.315048, -0.619287,
		0.659342, 0.590606, -0.465245,
		33.381165, 32.133831, 31.991877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846615, 31.749928, 31.565174>,  <32.919624, 31.720406, 32.317547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846615, 31.749928, 31.565174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232365, 31.845140, 31.611347>,  <33.463814, 31.902269, 31.639051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232365, 31.845140, 31.611347>,  <32.846615, 31.749928, 31.565174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232365, 31.845140, 31.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251920, -0.693107, -0.675381,
		-0.080757, 0.680399, -0.728379,
		0.964373, 0.238035, 0.115433,
		33.521675, 31.916552, 31.645977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065495, 31.406404, 31.036068>,  <32.846615, 31.749928, 31.565174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065495, 31.406404, 31.036068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407066, 31.547482, 31.189121>,  <33.612011, 31.632128, 31.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407066, 31.547482, 31.189121>,  <33.065495, 31.406404, 31.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407066, 31.547482, 31.189121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520301, -0.565446, -0.639966,
		-0.009354, 0.745572, -0.666360,
		0.853931, 0.352694, 0.382633,
		33.663246, 31.653290, 31.303911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511368, 31.697691, 30.485901>,  <33.065495, 31.406404, 31.036068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511368, 31.697691, 30.485901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750137, 31.612852, 30.795403>,  <33.893398, 31.561949, 30.981104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750137, 31.612852, 30.795403>,  <33.511368, 31.697691, 30.485901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750137, 31.612852, 30.795403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643392, -0.449605, -0.619598,
		0.479299, 0.867681, -0.131918,
		0.596925, -0.212098, 0.773754,
		33.929214, 31.549223, 31.027529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197025, 31.896849, 30.330296>,  <33.511368, 31.697691, 30.485901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197025, 31.896849, 30.330296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230297, 31.609949, 30.607029>,  <34.250259, 31.437809, 30.773069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230297, 31.609949, 30.607029>,  <34.197025, 31.896849, 30.330296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230297, 31.609949, 30.607029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488787, -0.575631, -0.655543,
		0.868429, 0.392684, 0.302705,
		0.083175, -0.717251, 0.691833,
		34.255249, 31.394773, 30.814579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915726, 31.721224, 30.197147>,  <34.197025, 31.896849, 30.330296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915726, 31.721224, 30.197147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771816, 31.420826, 30.418623>,  <34.685471, 31.240587, 30.551508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771816, 31.420826, 30.418623>,  <34.915726, 31.721224, 30.197147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771816, 31.420826, 30.418623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613595, -0.637487, -0.465951,
		0.702897, 0.172105, 0.690157,
		-0.359773, -0.750993, 0.553691,
		34.663883, 31.195528, 30.584730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496967, 31.420300, 30.429523>,  <34.915726, 31.721224, 30.197147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496967, 31.420300, 30.429523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200394, 31.152632, 30.449459>,  <35.022449, 30.992031, 30.461420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200394, 31.152632, 30.449459>,  <35.496967, 31.420300, 30.429523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200394, 31.152632, 30.449459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564909, -0.662544, -0.491847,
		0.362149, -0.336519, 0.869254,
		-0.741435, -0.669171, 0.049837,
		34.977962, 30.951880, 30.464411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727886, 30.795212, 30.707079>,  <35.496967, 31.420300, 30.429523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727886, 30.795212, 30.707079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396145, 30.691359, 30.509182>,  <35.197102, 30.629047, 30.390444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396145, 30.691359, 30.509182>,  <35.727886, 30.795212, 30.707079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396145, 30.691359, 30.509182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508233, -0.718411, -0.474959,
		-0.232112, -0.645351, 0.727768,
		-0.829351, -0.259632, -0.494740,
		35.147339, 30.613468, 30.360760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659817, 30.020609, 30.684828>,  <35.727886, 30.795212, 30.707079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659817, 30.020609, 30.684828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439243, 30.172104, 30.387512>,  <35.306900, 30.263000, 30.209122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439243, 30.172104, 30.387512>,  <35.659817, 30.020609, 30.684828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439243, 30.172104, 30.387512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392693, -0.668262, -0.631838,
		-0.736016, -0.640299, 0.219770,
		-0.551429, 0.378740, -0.743292,
		35.273815, 30.285725, 30.164524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494377, 29.461521, 30.261333>,  <35.659817, 30.020609, 30.684828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494377, 29.461521, 30.261333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427620, 29.775507, 30.022680>,  <35.387566, 29.963900, 29.879488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427620, 29.775507, 30.022680>,  <35.494377, 29.461521, 30.261333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427620, 29.775507, 30.022680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385309, -0.505077, -0.772292,
		-0.907570, -0.358781, -0.218159,
		-0.166897, 0.784967, -0.596634,
		35.377552, 30.010998, 29.843691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340549, 29.191715, 29.596182>,  <35.494377, 29.461521, 30.261333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340549, 29.191715, 29.596182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421780, 29.573164, 29.507307>,  <35.470520, 29.802032, 29.453981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421780, 29.573164, 29.507307>,  <35.340549, 29.191715, 29.596182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421780, 29.573164, 29.507307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293688, -0.275792, -0.915252,
		-0.934080, 0.120614, -0.336075,
		0.203079, 0.953620, -0.222189,
		35.482704, 29.859249, 29.440651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047928, 29.286243, 28.903206>,  <35.340549, 29.191715, 29.596182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047928, 29.286243, 28.903206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302345, 29.594883, 28.906813>,  <35.454998, 29.780067, 28.908976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302345, 29.594883, 28.906813>,  <35.047928, 29.286243, 28.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302345, 29.594883, 28.906813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317283, -0.250858, -0.914550,
		-0.703404, 0.584557, -0.404372,
		0.636046, 0.771598, 0.009015,
		35.493160, 29.826363, 28.909517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967907, 29.724340, 28.297430>,  <35.047928, 29.286243, 28.903206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967907, 29.724340, 28.297430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340870, 29.781252, 28.430317>,  <35.564648, 29.815399, 28.510050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340870, 29.781252, 28.430317>,  <34.967907, 29.724340, 28.297430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340870, 29.781252, 28.430317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356586, -0.212585, -0.909755,
		-0.058814, 0.966729, -0.248951,
		0.932409, 0.142279, 0.332219,
		35.620594, 29.823935, 28.529984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193451, 30.058870, 27.805954>,  <34.967907, 29.724340, 28.297430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193451, 30.058870, 27.805954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544289, 29.982954, 27.982447>,  <35.754791, 29.937405, 28.088343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544289, 29.982954, 27.982447>,  <35.193451, 30.058870, 27.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544289, 29.982954, 27.982447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451475, 0.012232, -0.892200,
		0.163935, 0.981748, 0.096415,
		0.877095, -0.189792, 0.441230,
		35.807419, 29.926016, 28.114815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611771, 30.509087, 27.459120>,  <35.193451, 30.058870, 27.805954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611771, 30.509087, 27.459120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855808, 30.239668, 27.626032>,  <36.002232, 30.078016, 27.726179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855808, 30.239668, 27.626032>,  <35.611771, 30.509087, 27.459120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855808, 30.239668, 27.626032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494018, -0.088383, -0.864948,
		0.619462, 0.733842, 0.278822,
		0.610092, -0.673546, 0.417281,
		36.038837, 30.037603, 27.751217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283070, 30.794764, 27.381720>,  <35.611771, 30.509087, 27.459120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283070, 30.794764, 27.381720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 30.399033, 27.423367>,  <36.348316, 30.161594, 27.448355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 30.399033, 27.423367>,  <36.283070, 30.794764, 27.381720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323849, 30.399033, 27.423367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315809, -0.067063, -0.946450,
		0.943330, 0.129369, 0.305602,
		0.101946, -0.989326, 0.104118,
		36.354431, 30.102234, 27.454601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959362, 30.578682, 27.126608>,  <36.283070, 30.794764, 27.381720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959362, 30.578682, 27.126608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753338, 30.236794, 27.100796>,  <36.629723, 30.031660, 27.085308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753338, 30.236794, 27.100796>,  <36.959362, 30.578682, 27.126608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753338, 30.236794, 27.100796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450260, -0.205729, -0.868874,
		0.729369, -0.476579, 0.490809,
		-0.515061, -0.854721, -0.064532,
		36.598820, 29.980377, 27.081436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368534, 30.058432, 26.856901>,  <36.959362, 30.578682, 27.126608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368534, 30.058432, 26.856901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005737, 29.904430, 26.788618>,  <36.788059, 29.812029, 26.747648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005737, 29.904430, 26.788618>,  <37.368534, 30.058432, 26.856901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005737, 29.904430, 26.788618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275380, -0.235472, -0.932051,
		0.318645, -0.892371, 0.319593,
		-0.906990, -0.385003, -0.170710,
		36.733639, 29.788929, 26.737406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575661, 29.431423, 26.542191>,  <37.368534, 30.058432, 26.856901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575661, 29.431423, 26.542191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203442, 29.519632, 26.425266>,  <36.980110, 29.572557, 26.355112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203442, 29.519632, 26.425266>,  <37.575661, 29.431423, 26.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203442, 29.519632, 26.425266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255544, -0.180634, -0.949773,
		-0.262253, -0.958508, 0.111734,
		-0.930548, 0.220528, -0.292313,
		36.924278, 29.585791, 26.337572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489017, 28.930368, 25.964668>,  <37.575661, 29.431423, 26.542191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489017, 28.930368, 25.964668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196724, 29.202162, 25.938345>,  <37.021347, 29.365238, 25.922550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196724, 29.202162, 25.938345>,  <37.489017, 28.930368, 25.964668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196724, 29.202162, 25.938345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086634, -0.187924, -0.978355,
		-0.677144, -0.709215, 0.196189,
		-0.730733, 0.679484, -0.065809,
		36.977505, 29.406008, 25.918602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907787, 28.509493, 25.633503>,  <37.489017, 28.930368, 25.964668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907787, 28.509493, 25.633503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870407, 28.906406, 25.600903>,  <36.847980, 29.144554, 25.581343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870407, 28.906406, 25.600903>,  <36.907787, 28.509493, 25.633503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870407, 28.906406, 25.600903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023821, -0.084066, -0.996176,
		-0.995339, -0.091151, 0.031493,
		-0.093450, 0.992283, -0.081502,
		36.842373, 29.204092, 25.576452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550671, 28.606817, 25.041204>,  <36.907787, 28.509493, 25.633503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550671, 28.606817, 25.041204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706379, 28.971071, 25.096645>,  <36.799805, 29.189623, 25.129910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706379, 28.971071, 25.096645>,  <36.550671, 28.606817, 25.041204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706379, 28.971071, 25.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095966, 0.109559, -0.989337,
		-0.916109, 0.398425, -0.044741,
		0.389274, 0.910634, 0.138603,
		36.823162, 29.244261, 25.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168171, 29.160936, 24.832529>,  <36.550671, 28.606817, 25.041204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168171, 29.160936, 24.832529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550293, 29.272493, 24.793299>,  <36.779564, 29.339428, 24.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550293, 29.272493, 24.793299>,  <36.168171, 29.160936, 24.832529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550293, 29.272493, 24.793299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134312, 0.113902, -0.984371,
		-0.263361, 0.953544, 0.146269,
		0.955302, 0.278891, -0.098075,
		36.836884, 29.356161, 24.763876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108932, 29.430889, 24.123892>,  <36.168171, 29.160936, 24.832529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108932, 29.430889, 24.123892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495712, 29.441891, 24.225286>,  <36.727779, 29.448492, 24.286123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495712, 29.441891, 24.225286>,  <36.108932, 29.430889, 24.123892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495712, 29.441891, 24.225286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250992, 0.072322, -0.965284,
		-0.044882, 0.997002, 0.063028,
		0.966948, 0.027504, 0.253485,
		36.785797, 29.450142, 24.301332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368416, 29.889885, 23.641775>,  <36.108932, 29.430889, 24.123892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368416, 29.889885, 23.641775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694477, 29.705996, 23.782732>,  <36.890114, 29.595661, 23.867306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694477, 29.705996, 23.782732>,  <36.368416, 29.889885, 23.641775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694477, 29.705996, 23.782732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372628, -0.049590, -0.926655,
		0.443480, 0.886676, 0.130883,
		0.815152, -0.459724, 0.352393,
		36.939022, 29.568079, 23.888451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940929, 30.166414, 23.278051>,  <36.368416, 29.889885, 23.641775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940929, 30.166414, 23.278051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080650, 29.818899, 23.418451>,  <37.164482, 29.610390, 23.502691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080650, 29.818899, 23.418451>,  <36.940929, 30.166414, 23.278051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080650, 29.818899, 23.418451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515387, -0.134703, -0.846304,
		0.782538, 0.476514, 0.400710,
		0.349299, -0.868786, 0.351000,
		37.185440, 29.558264, 23.523750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682209, 30.160862, 23.256556>,  <36.940929, 30.166414, 23.278051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682209, 30.160862, 23.256556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623554, 29.765661, 23.275944>,  <37.588360, 29.528542, 23.287577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623554, 29.765661, 23.275944>,  <37.682209, 30.160862, 23.256556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623554, 29.765661, 23.275944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674465, -0.135708, -0.725728,
		0.723599, -0.073726, 0.686272,
		-0.146638, -0.988002, 0.048473,
		37.579563, 29.469261, 23.290485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323692, 29.867001, 23.030306>,  <37.682209, 30.160862, 23.256556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323692, 29.867001, 23.030306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042229, 29.582907, 23.021969>,  <37.873352, 29.412451, 23.016968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042229, 29.582907, 23.021969>,  <38.323692, 29.867001, 23.030306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042229, 29.582907, 23.021969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316052, -0.286585, -0.904423,
		0.636382, -0.642988, 0.426128,
		-0.703654, -0.710236, -0.020840,
		37.831131, 29.369835, 23.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727470, 29.358137, 22.871925>,  <38.323692, 29.867001, 23.030306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727470, 29.358137, 22.871925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355289, 29.257902, 22.764997>,  <38.131981, 29.197762, 22.700842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355289, 29.257902, 22.764997>,  <38.727470, 29.358137, 22.871925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355289, 29.257902, 22.764997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333002, -0.273990, -0.902241,
		0.152848, -0.928513, 0.338381,
		-0.930456, -0.250587, -0.267318,
		38.076153, 29.182726, 22.684801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693489, 28.699795, 22.680027>,  <38.727470, 29.358137, 22.871925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693489, 28.699795, 22.680027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416740, 28.916340, 22.488932>,  <38.250690, 29.046267, 22.374273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416740, 28.916340, 22.488932>,  <38.693489, 28.699795, 22.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416740, 28.916340, 22.488932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337656, -0.342258, -0.876840,
		-0.638199, -0.767975, 0.054005,
		-0.691875, 0.541363, -0.477740,
		38.209179, 29.078749, 22.345610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497875, 28.324186, 22.233923>,  <38.693489, 28.699795, 22.680027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497875, 28.324186, 22.233923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381493, 28.671902, 22.074081>,  <38.311665, 28.880531, 21.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381493, 28.671902, 22.074081>,  <38.497875, 28.324186, 22.233923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381493, 28.671902, 22.074081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345590, -0.293983, -0.891146,
		-0.892139, -0.397384, -0.214881,
		-0.290956, 0.869287, -0.399605,
		38.294205, 28.932688, 21.954199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534744, 28.190510, 21.521418>,  <38.497875, 28.324186, 22.233923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534744, 28.190510, 21.521418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447086, 28.580706, 21.513453>,  <38.394493, 28.814823, 21.508675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447086, 28.580706, 21.513453>,  <38.534744, 28.190510, 21.521418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447086, 28.580706, 21.513453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224673, 0.030594, -0.973954,
		-0.949473, -0.217909, -0.225870,
		-0.219143, 0.975490, -0.019910,
		38.381344, 28.873352, 21.507479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275364, 28.332666, 20.806688>,  <38.534744, 28.190510, 21.521418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275364, 28.332666, 20.806688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374008, 28.698954, 20.933584>,  <38.433193, 28.918726, 21.009722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374008, 28.698954, 20.933584>,  <38.275364, 28.332666, 20.806688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374008, 28.698954, 20.933584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297324, 0.240074, -0.924101,
		-0.922379, 0.322215, -0.213062,
		0.246609, 0.915720, 0.317241,
		38.447990, 28.973669, 21.028757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955845, 28.768604, 20.248121>,  <38.275364, 28.332666, 20.806688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955845, 28.768604, 20.248121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221256, 28.990343, 20.449093>,  <38.380505, 29.123386, 20.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221256, 28.990343, 20.449093>,  <37.955845, 28.768604, 20.248121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221256, 28.990343, 20.449093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326878, 0.389263, -0.861177,
		-0.672965, 0.735647, 0.077083,
		0.663528, 0.554345, 0.502427,
		38.420315, 29.156647, 20.599821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979198, 29.377331, 19.913261>,  <37.955845, 28.768604, 20.248121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979198, 29.377331, 19.913261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327679, 29.397833, 20.108561>,  <38.536766, 29.410133, 20.225740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327679, 29.397833, 20.108561>,  <37.979198, 29.377331, 19.913261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327679, 29.397833, 20.108561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432497, 0.390454, -0.812707,
		-0.232295, 0.919195, 0.317994,
		0.871198, 0.051256, 0.488249,
		38.589039, 29.413210, 20.255035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214828, 30.117006, 19.844189>,  <37.979198, 29.377331, 19.913261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214828, 30.117006, 19.844189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523823, 29.878912, 19.932697>,  <38.709221, 29.736055, 19.985804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523823, 29.878912, 19.932697>,  <38.214828, 30.117006, 19.844189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523823, 29.878912, 19.932697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538687, 0.429700, -0.724689,
		0.336281, 0.679008, 0.652582,
		0.772484, -0.595236, 0.221273,
		38.755569, 29.700340, 19.999079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759701, 30.519667, 19.752548>,  <38.214828, 30.117006, 19.844189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759701, 30.519667, 19.752548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949352, 30.167698, 19.740337>,  <39.063145, 29.956516, 19.733011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949352, 30.167698, 19.740337>,  <38.759701, 30.519667, 19.752548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949352, 30.167698, 19.740337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586191, 0.341350, -0.734752,
		0.656946, 0.330476, 0.677649,
		0.474133, -0.879924, -0.030526,
		39.091591, 29.903721, 19.731180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551407, 30.625423, 19.737957>,  <38.759701, 30.519667, 19.752548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551407, 30.625423, 19.737957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473267, 30.263586, 19.586407>,  <39.426384, 30.046484, 19.495476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473267, 30.263586, 19.586407>,  <39.551407, 30.625423, 19.737957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473267, 30.263586, 19.586407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529738, 0.227791, -0.817000,
		0.825359, -0.360304, 0.434700,
		-0.195347, -0.904595, -0.378876,
		39.414661, 29.992207, 19.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119610, 30.357969, 19.551321>,  <39.551407, 30.625423, 19.737957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119610, 30.357969, 19.551321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842468, 30.173975, 19.329199>,  <39.676182, 30.063580, 19.195927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842468, 30.173975, 19.329199>,  <40.119610, 30.357969, 19.551321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842468, 30.173975, 19.329199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532043, 0.193679, -0.824268,
		0.486701, -0.866547, 0.110539,
		-0.692858, -0.459984, -0.555304,
		39.634609, 30.035980, 19.162607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551167, 30.151590, 19.039652>,  <40.119610, 30.357969, 19.551321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551167, 30.151590, 19.039652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 30.102640, 18.890167>,  <39.962727, 30.073271, 18.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 30.102640, 18.890167>,  <40.551167, 30.151590, 19.039652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183392, 30.102640, 18.890167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355508, 0.147523, -0.922958,
		0.168089, -0.981457, -0.092129,
		-0.919435, -0.122387, -0.373713,
		39.907562, 30.065928, 18.778053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622921, 29.628445, 18.507784>,  <40.551167, 30.151590, 19.039652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622921, 29.628445, 18.507784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299007, 29.855200, 18.447281>,  <40.104660, 29.991253, 18.410978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299007, 29.855200, 18.447281>,  <40.622921, 29.628445, 18.507784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299007, 29.855200, 18.447281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182559, -0.001557, -0.983194,
		-0.557598, -0.823792, -0.102230,
		-0.809788, 0.566890, -0.151258,
		40.056072, 30.025267, 18.401903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230518, 29.321230, 17.936022>,  <40.622921, 29.628445, 18.507784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230518, 29.321230, 17.936022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155209, 29.711731, 17.978888>,  <40.110023, 29.946032, 18.004606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155209, 29.711731, 17.978888>,  <40.230518, 29.321230, 17.936022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155209, 29.711731, 17.978888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137791, 0.134292, -0.981315,
		-0.972403, -0.169988, -0.159802,
		-0.188271, 0.976253, 0.107163,
		40.098728, 30.004606, 18.011036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673119, 29.594254, 17.548439>,  <40.230518, 29.321230, 17.936022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673119, 29.594254, 17.548439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918110, 29.909477, 17.573189>,  <40.065105, 30.098612, 17.588037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918110, 29.909477, 17.573189>,  <39.673119, 29.594254, 17.548439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918110, 29.909477, 17.573189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129084, -0.022489, -0.991379,
		-0.779873, 0.615189, -0.115500,
		0.612483, 0.788059, 0.061872,
		40.101856, 30.145895, 17.591751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379463, 30.069252, 17.080742>,  <39.673119, 29.594254, 17.548439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379463, 30.069252, 17.080742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768471, 30.130884, 17.150570>,  <40.001873, 30.167864, 17.192467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768471, 30.130884, 17.150570>,  <39.379463, 30.069252, 17.080742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768471, 30.130884, 17.150570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180034, -0.022139, -0.983411,
		-0.147661, 0.987810, -0.049271,
		0.972514, 0.154082, 0.174570,
		40.060226, 30.177109, 17.202942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590679, 30.647240, 16.719513>,  <39.379463, 30.069252, 17.080742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590679, 30.647240, 16.719513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945839, 30.469204, 16.766037>,  <40.158936, 30.362383, 16.793951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945839, 30.469204, 16.766037>,  <39.590679, 30.647240, 16.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945839, 30.469204, 16.766037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064988, -0.128938, -0.989521,
		0.455423, 0.886154, -0.085559,
		0.887900, -0.445091, 0.116310,
		40.212208, 30.335676, 16.800930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022316, 30.920465, 16.147715>,  <39.590679, 30.647240, 16.719513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022316, 30.920465, 16.147715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155579, 30.561554, 16.263571>,  <40.235538, 30.346207, 16.333084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155579, 30.561554, 16.263571>,  <40.022316, 30.920465, 16.147715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155579, 30.561554, 16.263571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220356, -0.224585, -0.949213,
		0.916759, 0.380064, 0.122898,
		0.333161, -0.897281, 0.289640,
		40.255527, 30.292370, 16.350462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744061, 30.784542, 16.092327>,  <40.022316, 30.920465, 16.147715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744061, 30.784542, 16.092327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599499, 30.413626, 16.053312>,  <40.512760, 30.191076, 16.029903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599499, 30.413626, 16.053312>,  <40.744061, 30.784542, 16.092327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599499, 30.413626, 16.053312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372551, -0.047715, -0.926785,
		0.854747, -0.371284, 0.362708,
		-0.361406, -0.927293, -0.097538,
		40.491077, 30.135437, 16.024052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825066, 30.385468, 16.782852>,  <40.744061, 30.784542, 16.092327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825066, 30.385468, 16.782852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780666, 30.282145, 17.166718>,  <40.754028, 30.220150, 17.397038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780666, 30.282145, 17.166718>,  <40.825066, 30.385468, 16.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780666, 30.282145, 17.166718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656611, 0.743917, 0.124291,
		-0.746017, -0.616331, -0.252179,
		-0.110996, -0.258307, 0.959666,
		40.747368, 30.204653, 17.454617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970352, 31.174505, 16.668055>,  <40.825066, 30.385468, 16.782852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970352, 31.174505, 16.668055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805374, 31.032928, 17.003820>,  <40.706387, 30.947983, 17.205280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805374, 31.032928, 17.003820>,  <40.970352, 31.174505, 16.668055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805374, 31.032928, 17.003820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572143, 0.817680, 0.063657,
		-0.708904, -0.454011, -0.539750,
		-0.412442, -0.353940, 0.839415,
		40.681641, 30.926746, 17.255646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407978, 31.525118, 16.424616>,  <40.970352, 31.174505, 16.668055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407978, 31.525118, 16.424616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046806, 31.675257, 16.508356>,  <39.830101, 31.765341, 16.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046806, 31.675257, 16.508356>,  <40.407978, 31.525118, 16.424616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046806, 31.675257, 16.508356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295528, 0.188558, 0.936541,
		0.312053, 0.907502, -0.281180,
		-0.902932, 0.375347, 0.209352,
		39.775928, 31.787861, 16.571161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370659, 32.319725, 16.784731>,  <40.407978, 31.525118, 16.424616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370659, 32.319725, 16.784731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070633, 32.064484, 16.854280>,  <39.890617, 31.911341, 16.896011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070633, 32.064484, 16.854280>,  <40.370659, 32.319725, 16.784731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070633, 32.064484, 16.854280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131498, 0.113768, 0.984767,
		-0.648160, 0.761503, -0.001424,
		-0.750065, -0.638099, 0.173876,
		39.845612, 31.873055, 16.906443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939419, 32.683239, 17.043268>,  <40.370659, 32.319725, 16.784731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939419, 32.683239, 17.043268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877720, 32.305111, 17.158211>,  <39.840702, 32.078232, 17.227177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877720, 32.305111, 17.158211>,  <39.939419, 32.683239, 17.043268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877720, 32.305111, 17.158211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075461, 0.301257, 0.950552,
		-0.985147, 0.124933, -0.117802,
		-0.154244, -0.945323, 0.287355,
		39.831448, 32.021515, 17.244417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401989, 32.796993, 17.372124>,  <39.939419, 32.683239, 17.043268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401989, 32.796993, 17.372124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519249, 32.434231, 17.493174>,  <39.589607, 32.216572, 17.565804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519249, 32.434231, 17.493174>,  <39.401989, 32.796993, 17.372124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519249, 32.434231, 17.493174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228949, 0.240732, 0.943202,
		-0.928247, -0.345789, -0.137064,
		0.293153, -0.906906, 0.302627,
		39.607197, 32.162159, 17.583961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972897, 32.547634, 17.845488>,  <39.401989, 32.796993, 17.372124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972897, 32.547634, 17.845488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285309, 32.313839, 17.933458>,  <39.472755, 32.173561, 17.986240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285309, 32.313839, 17.933458>,  <38.972897, 32.547634, 17.845488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285309, 32.313839, 17.933458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228926, 0.059683, 0.971613,
		-0.581017, -0.809208, -0.087189,
		0.781033, -0.584484, 0.219926,
		39.519619, 32.138493, 17.999435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702625, 31.989033, 18.271320>,  <38.972897, 32.547634, 17.845488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702625, 31.989033, 18.271320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092117, 32.026234, 18.354452>,  <39.325813, 32.048553, 18.404331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092117, 32.026234, 18.354452>,  <38.702625, 31.989033, 18.271320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092117, 32.026234, 18.354452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217267, 0.106516, 0.970283,
		0.068093, -0.989953, 0.123923,
		0.973734, 0.092994, 0.207831,
		39.384239, 32.054134, 18.416801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772820, 31.712513, 18.888847>,  <38.702625, 31.989033, 18.271320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772820, 31.712513, 18.888847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124229, 31.901937, 18.863777>,  <39.335075, 32.015594, 18.848734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124229, 31.901937, 18.863777>,  <38.772820, 31.712513, 18.888847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124229, 31.901937, 18.863777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027134, 0.081526, 0.996302,
		0.476922, -0.876978, 0.058774,
		0.878527, 0.473563, -0.062677,
		39.387787, 32.044006, 18.844975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124844, 31.556915, 19.437992>,  <38.772820, 31.712513, 18.888847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124844, 31.556915, 19.437992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339481, 31.875912, 19.327665>,  <39.468266, 32.067310, 19.261469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339481, 31.875912, 19.327665>,  <39.124844, 31.556915, 19.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339481, 31.875912, 19.327665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254223, 0.158891, 0.954004,
		0.804633, -0.582034, -0.117480,
		0.536597, 0.797489, -0.275816,
		39.500462, 32.115158, 19.244921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719040, 31.584549, 19.874584>,  <39.124844, 31.556915, 19.437992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719040, 31.584549, 19.874584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646599, 31.947609, 19.723127>,  <39.603134, 32.165447, 19.632254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646599, 31.947609, 19.723127>,  <39.719040, 31.584549, 19.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646599, 31.947609, 19.723127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018838, 0.381738, 0.924078,
		0.983285, 0.174482, -0.052034,
		-0.181098, 0.907652, -0.378644,
		39.592270, 32.219906, 19.609533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160557, 32.027874, 20.251114>,  <39.719040, 31.584549, 19.874584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160557, 32.027874, 20.251114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859726, 32.250725, 20.110260>,  <39.679230, 32.384434, 20.025747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859726, 32.250725, 20.110260>,  <40.160557, 32.027874, 20.251114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859726, 32.250725, 20.110260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145764, 0.380449, 0.913242,
		0.642757, 0.738155, -0.204918,
		-0.752075, 0.557123, -0.352133,
		39.634102, 32.417862, 20.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224186, 32.588856, 20.619579>,  <40.160557, 32.027874, 20.251114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224186, 32.588856, 20.619579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846062, 32.600491, 20.489635>,  <39.619186, 32.607471, 20.411669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846062, 32.600491, 20.489635>,  <40.224186, 32.588856, 20.619579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846062, 32.600491, 20.489635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307327, 0.254107, 0.917049,
		0.109227, 0.966738, -0.231271,
		-0.945314, 0.029091, -0.324860,
		39.562466, 32.609219, 20.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899422, 33.302666, 20.734421>,  <40.224186, 32.588856, 20.619579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899422, 33.302666, 20.734421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600834, 33.038776, 20.699690>,  <39.421680, 32.880444, 20.678852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600834, 33.038776, 20.699690>,  <39.899422, 33.302666, 20.734421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600834, 33.038776, 20.699690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291988, 0.207503, 0.933641,
		-0.597931, 0.722290, -0.347528,
		-0.746473, -0.659727, -0.086827,
		39.376892, 32.840858, 20.673641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353855, 33.552437, 21.080933>,  <39.899422, 33.302666, 20.734421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353855, 33.552437, 21.080933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223667, 33.174267, 21.087191>,  <39.145554, 32.947365, 21.090946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223667, 33.174267, 21.087191>,  <39.353855, 33.552437, 21.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223667, 33.174267, 21.087191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379634, 0.145813, 0.913574,
		-0.865994, 0.291402, -0.406372,
		-0.325472, -0.945422, 0.015647,
		39.126026, 32.890640, 21.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539371, 33.498219, 21.268000>,  <39.353855, 33.552437, 21.080933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539371, 33.498219, 21.268000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665565, 33.122036, 21.318607>,  <38.741280, 32.896324, 21.348972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665565, 33.122036, 21.318607>,  <38.539371, 33.498219, 21.268000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665565, 33.122036, 21.318607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551809, -0.073350, 0.830739,
		-0.771996, -0.331896, -0.542095,
		0.315481, -0.940460, 0.126517,
		38.760208, 32.839897, 21.356562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878952, 33.061001, 21.405781>,  <38.539371, 33.498219, 21.268000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878952, 33.061001, 21.405781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181290, 32.844238, 21.552769>,  <38.362694, 32.714180, 21.640961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181290, 32.844238, 21.552769>,  <37.878952, 33.061001, 21.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181290, 32.844238, 21.552769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550614, -0.222397, 0.804589,
		-0.354290, -0.810478, -0.466480,
		0.755846, -0.541909, 0.367467,
		38.408043, 32.681667, 21.663010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524326, 32.481323, 21.786497>,  <37.878952, 33.061001, 21.405781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524326, 32.481323, 21.786497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894112, 32.525570, 21.932449>,  <38.115982, 32.552120, 22.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894112, 32.525570, 21.932449>,  <37.524326, 32.481323, 21.786497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894112, 32.525570, 21.932449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341289, -0.186570, 0.921256,
		0.169986, -0.976194, -0.134723,
		0.924460, 0.110621, 0.364879,
		38.171452, 32.558758, 22.041912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612484, 31.850166, 22.227524>,  <37.524326, 32.481323, 21.786497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612484, 31.850166, 22.227524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880032, 32.133770, 22.316895>,  <38.040562, 32.303932, 22.370516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880032, 32.133770, 22.316895>,  <37.612484, 31.850166, 22.227524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880032, 32.133770, 22.316895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161979, -0.154326, 0.974652,
		0.725518, -0.688105, 0.011621,
		0.668869, 0.709010, 0.223425,
		38.080692, 32.346474, 22.383923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713367, 31.692503, 22.916222>,  <37.612484, 31.850166, 22.227524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713367, 31.692503, 22.916222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899872, 32.045219, 22.887804>,  <38.011772, 32.256847, 22.870752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899872, 32.045219, 22.887804>,  <37.713367, 31.692503, 22.916222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899872, 32.045219, 22.887804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251807, 0.209275, 0.944879,
		0.848054, -0.422668, 0.319617,
		0.466259, 0.881791, -0.071046,
		38.039749, 32.309757, 22.866489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146591, 31.805761, 23.555981>,  <37.713367, 31.692503, 22.916222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146591, 31.805761, 23.555981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094334, 32.175758, 23.413252>,  <38.062981, 32.397758, 23.327616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094334, 32.175758, 23.413252>,  <38.146591, 31.805761, 23.555981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094334, 32.175758, 23.413252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252320, 0.317033, 0.914235,
		0.958784, 0.209472, 0.191976,
		-0.130644, 0.924993, -0.356820,
		38.055141, 32.453255, 23.306206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602829, 32.283077, 23.939926>,  <38.146591, 31.805761, 23.555981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602829, 32.283077, 23.939926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284115, 32.479488, 23.799063>,  <38.092884, 32.597336, 23.714544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284115, 32.479488, 23.799063>,  <38.602829, 32.283077, 23.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284115, 32.479488, 23.799063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177610, 0.366733, 0.913215,
		0.577566, 0.790186, -0.204996,
		-0.796789, 0.491032, -0.352158,
		38.045078, 32.626797, 23.693415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568127, 32.875874, 24.337452>,  <38.602829, 32.283077, 23.939926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568127, 32.875874, 24.337452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207737, 32.904255, 24.166235>,  <37.991505, 32.921284, 24.063505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207737, 32.904255, 24.166235>,  <38.568127, 32.875874, 24.337452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207737, 32.904255, 24.166235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365595, 0.407125, 0.837012,
		0.233654, 0.910612, -0.340868,
		-0.900970, 0.070952, -0.428041,
		37.937447, 32.925541, 24.037823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388748, 33.543877, 24.405247>,  <38.568127, 32.875874, 24.337452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388748, 33.543877, 24.405247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048771, 33.338566, 24.357670>,  <37.844784, 33.215378, 24.329123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048771, 33.338566, 24.357670>,  <38.388748, 33.543877, 24.405247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048771, 33.338566, 24.357670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417379, 0.518145, 0.746539,
		-0.321551, 0.684158, -0.654624,
		-0.849941, -0.513277, -0.118943,
		37.793789, 33.184582, 24.321987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957153, 33.998146, 24.665247>,  <38.388748, 33.543877, 24.405247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957153, 33.998146, 24.665247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732716, 33.667786, 24.643145>,  <37.598053, 33.469570, 24.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732716, 33.667786, 24.643145>,  <37.957153, 33.998146, 24.665247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732716, 33.667786, 24.643145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684378, 0.425326, 0.592220,
		-0.465615, 0.370109, -0.803879,
		-0.561097, -0.825904, -0.055257,
		37.564388, 33.420013, 24.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227947, 34.167297, 24.669750>,  <37.957153, 33.998146, 24.665247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227947, 34.167297, 24.669750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224606, 33.785957, 24.790451>,  <37.222599, 33.557152, 24.862871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224606, 33.785957, 24.790451>,  <37.227947, 34.167297, 24.669750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224606, 33.785957, 24.790451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654797, 0.233285, 0.718901,
		-0.755758, -0.191580, -0.626200,
		-0.008356, -0.953350, 0.301753,
		37.222099, 33.499954, 24.880978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473137, 33.947998, 24.930933>,  <37.227947, 34.167297, 24.669750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473137, 33.947998, 24.930933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701351, 33.662781, 25.093941>,  <36.838280, 33.491650, 25.191746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701351, 33.662781, 25.093941>,  <36.473137, 33.947998, 24.930933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701351, 33.662781, 25.093941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486511, 0.106335, 0.867179,
		-0.661665, -0.693014, -0.286234,
		0.570531, -0.713039, 0.407517,
		36.872509, 33.448868, 25.216196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014820, 33.361717, 25.187483>,  <36.473137, 33.947998, 24.930933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014820, 33.361717, 25.187483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342594, 33.334259, 25.415102>,  <36.539257, 33.317783, 25.551674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342594, 33.334259, 25.415102>,  <36.014820, 33.361717, 25.187483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342594, 33.334259, 25.415102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560088, 0.115028, 0.820408,
		-0.121774, -0.990987, 0.055810,
		0.819434, -0.068646, 0.569048,
		36.588425, 33.313667, 25.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840809, 32.867504, 25.704195>,  <36.014820, 33.361717, 25.187483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840809, 32.867504, 25.704195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154575, 33.069817, 25.847788>,  <36.342834, 33.191204, 25.933943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154575, 33.069817, 25.847788>,  <35.840809, 32.867504, 25.704195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154575, 33.069817, 25.847788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444267, 0.054321, 0.894246,
		0.432797, -0.860947, 0.267314,
		0.784420, 0.505786, 0.358981,
		36.389900, 33.221554, 25.955482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850636, 32.527298, 26.291113>,  <35.840809, 32.867504, 25.704195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850636, 32.527298, 26.291113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059837, 32.866665, 26.323744>,  <36.185360, 33.070286, 26.343323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059837, 32.866665, 26.323744>,  <35.850636, 32.527298, 26.291113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059837, 32.866665, 26.323744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393291, 0.155310, 0.906201,
		0.756164, -0.506036, 0.414902,
		0.523009, 0.848414, 0.081580,
		36.216740, 33.121189, 26.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044247, 32.562576, 27.012503>,  <35.850636, 32.527298, 26.291113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044247, 32.562576, 27.012503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097462, 32.939110, 26.888447>,  <36.129391, 33.165031, 26.814014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097462, 32.939110, 26.888447>,  <36.044247, 32.562576, 27.012503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097462, 32.939110, 26.888447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272085, 0.335585, 0.901860,
		0.953032, -0.035598, 0.300769,
		0.133038, 0.941337, -0.310138,
		36.137375, 33.221512, 26.795406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299877, 32.851437, 27.569736>,  <36.044247, 32.562576, 27.012503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299877, 32.851437, 27.569736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149853, 33.140793, 27.337864>,  <36.059837, 33.314407, 27.198740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149853, 33.140793, 27.337864>,  <36.299877, 32.851437, 27.569736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149853, 33.140793, 27.337864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484712, 0.379995, 0.787819,
		0.790177, 0.576462, 0.208113,
		-0.375065, 0.723392, -0.579681,
		36.037334, 33.357811, 27.163960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499783, 33.434578, 27.964849>,  <36.299877, 32.851437, 27.569736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499783, 33.434578, 27.964849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203915, 33.522873, 27.710552>,  <36.026394, 33.575851, 27.557974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203915, 33.522873, 27.710552>,  <36.499783, 33.434578, 27.964849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203915, 33.522873, 27.710552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596271, 0.223030, 0.771180,
		0.312017, 0.949491, -0.033349,
		-0.739666, 0.220736, -0.635743,
		35.982014, 33.589092, 27.519829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265522, 34.123173, 28.104021>,  <36.499783, 33.434578, 27.964849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265522, 34.123173, 28.104021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943184, 33.952568, 27.939728>,  <35.749783, 33.850204, 27.841152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943184, 33.952568, 27.939728>,  <36.265522, 34.123173, 28.104021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943184, 33.952568, 27.939728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581921, 0.442228, 0.682497,
		-0.109454, 0.789002, -0.604562,
		-0.805846, -0.426509, -0.410734,
		35.701431, 33.824615, 27.816507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664642, 34.575817, 28.254133>,  <36.265522, 34.123173, 28.104021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664642, 34.575817, 28.254133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477940, 34.231728, 28.172003>,  <35.365917, 34.025272, 28.122725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477940, 34.231728, 28.172003>,  <35.664642, 34.575817, 28.254133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477940, 34.231728, 28.172003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727448, 0.241399, 0.642297,
		-0.502953, 0.449159, -0.738441,
		-0.466753, -0.860222, -0.205327,
		35.337914, 33.973660, 28.110405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993027, 34.739319, 28.392097>,  <35.664642, 34.575817, 28.254133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993027, 34.739319, 28.392097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985374, 34.339928, 28.412769>,  <34.980782, 34.100292, 28.425173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985374, 34.339928, 28.412769>,  <34.993027, 34.739319, 28.392097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985374, 34.339928, 28.412769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736564, 0.049030, 0.674589,
		-0.676097, -0.025157, -0.736383,
		-0.019135, -0.998480, 0.051679,
		34.979633, 34.040382, 28.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289062, 34.585274, 28.391804>,  <34.993027, 34.739319, 28.392097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289062, 34.585274, 28.391804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493881, 34.271751, 28.532349>,  <34.616772, 34.083637, 28.616674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493881, 34.271751, 28.532349>,  <34.289062, 34.585274, 28.391804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493881, 34.271751, 28.532349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546120, 0.018658, 0.837499,
		-0.662992, -0.620726, -0.418498,
		0.512049, -0.783805, 0.351361,
		34.647495, 34.036610, 28.637756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823330, 34.121719, 28.560453>,  <34.289062, 34.585274, 28.391804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823330, 34.121719, 28.560453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150414, 34.056477, 28.781269>,  <34.346664, 34.017330, 28.913759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150414, 34.056477, 28.781269>,  <33.823330, 34.121719, 28.560453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150414, 34.056477, 28.781269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546593, 0.080733, 0.833497,
		-0.180514, -0.983300, -0.023135,
		0.817711, -0.163104, 0.552039,
		34.395725, 34.007545, 28.946880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446316, 33.983414, 29.179253>,  <33.823330, 34.121719, 28.560453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446316, 33.983414, 29.179253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833576, 33.990421, 29.279150>,  <34.065933, 33.994625, 29.339088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833576, 33.990421, 29.279150>,  <33.446316, 33.983414, 29.179253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833576, 33.990421, 29.279150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250191, 0.103842, 0.962612,
		-0.009074, -0.994440, 0.104917,
		0.968154, 0.017515, 0.249742,
		34.124023, 33.995678, 29.354073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474861, 33.780285, 29.877094>,  <33.446316, 33.983414, 29.179253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474861, 33.780285, 29.877094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843365, 33.935093, 29.861576>,  <34.064465, 34.027977, 29.852266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843365, 33.935093, 29.861576>,  <33.474861, 33.780285, 29.877094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843365, 33.935093, 29.861576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106909, 0.347847, 0.931436,
		0.373989, -0.853938, 0.361831,
		0.921250, 0.387030, -0.038798,
		34.119740, 34.051201, 29.849937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785130, 33.415424, 30.394268>,  <33.474861, 33.780285, 29.877094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785130, 33.415424, 30.394268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961491, 33.760117, 30.293842>,  <34.067307, 33.966930, 30.233587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961491, 33.760117, 30.293842>,  <33.785130, 33.415424, 30.394268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961491, 33.760117, 30.293842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028695, 0.266045, 0.963533,
		0.897098, -0.432025, 0.092572,
		0.440899, 0.861727, -0.251066,
		34.093761, 34.018635, 30.218523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405476, 33.473892, 30.751657>,  <33.785130, 33.415424, 30.394268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405476, 33.473892, 30.751657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346649, 33.857601, 30.655186>,  <34.311352, 34.087826, 30.597301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346649, 33.857601, 30.655186>,  <34.405476, 33.473892, 30.751657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346649, 33.857601, 30.655186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039050, 0.238011, 0.970477,
		0.988356, 0.152143, 0.002457,
		-0.147066, 0.959272, -0.241181,
		34.302528, 34.145382, 30.582832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758629, 33.862255, 31.243317>,  <34.405476, 33.473892, 30.751657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758629, 33.862255, 31.243317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 34.134537, 31.077076>,  <34.372543, 34.297905, 30.977331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 34.134537, 31.077076>,  <34.758629, 33.862255, 31.243317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517326, 34.134537, 31.077076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164960, 0.403336, 0.900060,
		0.780299, 0.611527, -0.131028,
		-0.603259, 0.680701, -0.415601,
		34.336349, 34.338749, 30.952396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061680, 34.561180, 31.393091>,  <34.758629, 33.862255, 31.243317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061680, 34.561180, 31.393091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667019, 34.575787, 31.329622>,  <34.430222, 34.584553, 31.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667019, 34.575787, 31.329622>,  <35.061680, 34.561180, 31.393091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667019, 34.575787, 31.329622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122343, 0.476743, 0.870487,
		0.107433, 0.878284, -0.465914,
		-0.986656, 0.036518, -0.158670,
		34.371021, 34.586742, 31.282021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643429, 35.183674, 31.300022>,  <35.061680, 34.561180, 31.393091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643429, 35.183674, 31.300022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818554, 35.509296, 31.452667>,  <35.923630, 35.704670, 31.544254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818554, 35.509296, 31.452667>,  <35.643429, 35.183674, 31.300022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818554, 35.509296, 31.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868704, -0.273646, -0.412881,
		-0.231683, 0.512273, -0.826982,
		0.437808, 0.814060, 0.381615,
		35.949898, 35.753513, 31.567152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987267, 35.682938, 30.798462>,  <35.643429, 35.183674, 31.300022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987267, 35.682938, 30.798462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148346, 35.650120, 31.163120>,  <36.244995, 35.630428, 31.381916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148346, 35.650120, 31.163120>,  <35.987267, 35.682938, 30.798462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148346, 35.650120, 31.163120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904314, -0.118412, -0.410116,
		0.141598, 0.989569, 0.026510,
		0.402699, -0.082045, 0.911648,
		36.269157, 35.625507, 31.436615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597057, 36.041435, 30.756960>,  <35.987267, 35.682938, 30.798462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597057, 36.041435, 30.756960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655056, 35.798859, 31.069679>,  <36.689854, 35.653313, 31.257311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655056, 35.798859, 31.069679>,  <36.597057, 36.041435, 30.756960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655056, 35.798859, 31.069679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916503, -0.215413, -0.337075,
		0.372824, 0.765396, 0.524568,
		0.144997, -0.606438, 0.781798,
		36.698555, 35.616928, 31.304218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347282, 36.050091, 30.903101>,  <36.597057, 36.041435, 30.756960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347282, 36.050091, 30.903101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237362, 35.715809, 31.093292>,  <37.171410, 35.515240, 31.207407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237362, 35.715809, 31.093292>,  <37.347282, 36.050091, 30.903101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237362, 35.715809, 31.093292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878896, -0.418864, -0.228243,
		0.389905, 0.355173, 0.849604,
		-0.274802, -0.835707, 0.475477,
		37.154922, 35.465096, 31.235935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932114, 35.853802, 31.272198>,  <37.347282, 36.050091, 30.903101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932114, 35.853802, 31.272198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682545, 35.543221, 31.236784>,  <37.532803, 35.356873, 31.215536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682545, 35.543221, 31.236784>,  <37.932114, 35.853802, 31.272198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682545, 35.543221, 31.236784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753546, -0.567724, -0.331448,
		0.207090, -0.273515, 0.939310,
		-0.623925, -0.776453, -0.088537,
		37.495369, 35.310284, 31.210222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274597, 35.315697, 31.425404>,  <37.932114, 35.853802, 31.272198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274597, 35.315697, 31.425404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000980, 35.135250, 31.196114>,  <37.836811, 35.026981, 31.058540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000980, 35.135250, 31.196114>,  <38.274597, 35.315697, 31.425404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000980, 35.135250, 31.196114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708866, -0.596449, -0.376507,
		-0.172051, -0.663884, 0.727775,
		-0.684038, -0.451116, -0.573225,
		37.795769, 34.999916, 31.024147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420765, 34.571301, 31.407257>,  <38.274597, 35.315697, 31.425404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420765, 34.571301, 31.407257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234821, 34.645458, 31.060953>,  <38.123257, 34.689953, 30.853170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234821, 34.645458, 31.060953>,  <38.420765, 34.571301, 31.407257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234821, 34.645458, 31.060953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664022, -0.573796, -0.479408,
		-0.585651, -0.797738, 0.143622,
		-0.464852, 0.185397, -0.865760,
		38.095364, 34.701077, 30.801226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504429, 33.908211, 30.875916>,  <38.420765, 34.571301, 31.407257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504429, 33.908211, 30.875916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385101, 34.210823, 30.643137>,  <38.313503, 34.392391, 30.503469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385101, 34.210823, 30.643137>,  <38.504429, 33.908211, 30.875916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385101, 34.210823, 30.643137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550917, -0.361409, -0.752246,
		-0.779419, -0.545016, -0.308971,
		-0.298321, 0.756532, -0.581948,
		38.295605, 34.437782, 30.468552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280193, 33.543365, 30.263252>,  <38.504429, 33.908211, 30.875916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280193, 33.543365, 30.263252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309334, 33.931908, 30.172771>,  <38.326817, 34.165031, 30.118483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309334, 33.931908, 30.172771>,  <38.280193, 33.543365, 30.263252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309334, 33.931908, 30.172771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392900, -0.236414, -0.888672,
		-0.916691, -0.024133, -0.398868,
		0.072852, 0.971353, -0.226200,
		38.331188, 34.223312, 30.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098091, 33.513065, 29.579094>,  <38.280193, 33.543365, 30.263252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098091, 33.513065, 29.579094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303204, 33.855499, 29.604918>,  <38.426273, 34.060959, 29.620411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303204, 33.855499, 29.604918>,  <38.098091, 33.513065, 29.579094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303204, 33.855499, 29.604918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394167, -0.167962, -0.903560,
		-0.762682, 0.488780, -0.423569,
		0.512786, 0.856086, 0.064559,
		38.457039, 34.112324, 29.624285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940685, 34.042088, 29.017008>,  <38.098091, 33.513065, 29.579094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940685, 34.042088, 29.017008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303860, 34.133877, 29.157293>,  <38.521763, 34.188950, 29.241465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303860, 34.133877, 29.157293>,  <37.940685, 34.042088, 29.017008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303860, 34.133877, 29.157293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360904, -0.002618, -0.932599,
		-0.213093, 0.973310, -0.085196,
		0.907932, 0.229478, 0.350713,
		38.576241, 34.202721, 29.262506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119160, 34.518635, 28.559368>,  <37.940685, 34.042088, 29.017008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119160, 34.518635, 28.559368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 34.416611, 28.759237>,  <38.648956, 34.355396, 28.879158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 34.416611, 28.759237>,  <38.119160, 34.518635, 28.559368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450283, 34.416611, 28.759237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501284, -0.063594, -0.862943,
		0.251877, 0.964832, 0.075213,
		0.827812, -0.255058, 0.499672,
		38.698627, 34.340092, 28.909140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605331, 35.029121, 28.313263>,  <38.119160, 34.518635, 28.559368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605331, 35.029121, 28.313263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795158, 34.699848, 28.437943>,  <38.909054, 34.502285, 28.512751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795158, 34.699848, 28.437943>,  <38.605331, 35.029121, 28.313263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795158, 34.699848, 28.437943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533306, -0.012819, -0.845826,
		0.700264, 0.567634, 0.432924,
		0.474569, -0.823182, 0.311699,
		38.937531, 34.452892, 28.531452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273834, 35.116566, 28.224632>,  <38.605331, 35.029121, 28.313263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273834, 35.116566, 28.224632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223755, 34.719746, 28.229774>,  <39.193707, 34.481655, 28.232861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223755, 34.719746, 28.229774>,  <39.273834, 35.116566, 28.224632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223755, 34.719746, 28.229774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584750, -0.084254, -0.806827,
		0.801494, -0.093500, 0.590648,
		-0.125203, -0.992048, 0.012855,
		39.186195, 34.422131, 28.233631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794472, 34.950409, 27.848774>,  <39.273834, 35.116566, 28.224632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794472, 34.950409, 27.848774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597351, 34.602440, 27.840914>,  <39.479080, 34.393658, 27.836197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597351, 34.602440, 27.840914>,  <39.794472, 34.950409, 27.848774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597351, 34.602440, 27.840914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459695, -0.241106, -0.854721,
		0.738801, -0.430242, 0.518715,
		-0.492802, -0.869920, -0.019650,
		39.449509, 34.341465, 27.835018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225327, 34.461140, 27.639750>,  <39.794472, 34.950409, 27.848774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225327, 34.461140, 27.639750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889355, 34.252117, 27.581160>,  <39.687771, 34.126701, 27.546005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889355, 34.252117, 27.581160>,  <40.225327, 34.461140, 27.639750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889355, 34.252117, 27.581160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426351, -0.468378, -0.773852,
		0.335780, -0.712428, 0.616197,
		-0.839927, -0.522560, -0.146473,
		39.637375, 34.095348, 27.537218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415741, 33.844170, 27.387722>,  <40.225327, 34.461140, 27.639750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415741, 33.844170, 27.387722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043331, 33.859344, 27.242533>,  <39.819885, 33.868450, 27.155418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043331, 33.859344, 27.242533>,  <40.415741, 33.844170, 27.387722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043331, 33.859344, 27.242533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301314, -0.481263, -0.823162,
		-0.205912, -0.875755, 0.436638,
		-0.931026, 0.037934, -0.362975,
		39.764023, 33.870724, 27.133640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264126, 33.131683, 27.084524>,  <40.415741, 33.844170, 27.387722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264126, 33.131683, 27.084524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011692, 33.393223, 26.917568>,  <39.860233, 33.550148, 26.817394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011692, 33.393223, 26.917568>,  <40.264126, 33.131683, 27.084524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011692, 33.393223, 26.917568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220652, -0.364532, -0.904671,
		-0.743673, -0.663018, 0.085776,
		-0.631081, 0.653852, -0.417389,
		39.822369, 33.589378, 26.792351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911213, 32.746613, 26.699623>,  <40.264126, 33.131683, 27.084524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911213, 32.746613, 26.699623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847893, 33.107357, 26.538828>,  <39.809902, 33.323803, 26.442350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847893, 33.107357, 26.538828>,  <39.911213, 32.746613, 26.699623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847893, 33.107357, 26.538828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249434, -0.357392, -0.900030,
		-0.955366, -0.242742, -0.168380,
		-0.158297, 0.901858, -0.401989,
		39.800404, 33.377914, 26.418232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386101, 32.723629, 26.214865>,  <39.911213, 32.746613, 26.699623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386101, 32.723629, 26.214865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638355, 33.019859, 26.122046>,  <39.789707, 33.197598, 26.066355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638355, 33.019859, 26.122046>,  <39.386101, 32.723629, 26.214865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638355, 33.019859, 26.122046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136821, -0.400413, -0.906063,
		-0.763921, 0.539649, -0.353841,
		0.630638, 0.740573, -0.232049,
		39.827545, 33.242031, 26.052431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089363, 32.982372, 25.515013>,  <39.386101, 32.723629, 26.214865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089363, 32.982372, 25.515013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460316, 33.124779, 25.561005>,  <39.682888, 33.210220, 25.588600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460316, 33.124779, 25.561005>,  <39.089363, 32.982372, 25.515013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460316, 33.124779, 25.561005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148954, -0.069436, -0.986403,
		-0.343188, 0.931898, -0.117423,
		0.927381, 0.356012, 0.114981,
		39.738529, 33.231583, 25.595499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150036, 33.665440, 25.138182>,  <39.089363, 32.982372, 25.515013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150036, 33.665440, 25.138182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507324, 33.488422, 25.169983>,  <39.721695, 33.382214, 25.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507324, 33.488422, 25.169983>,  <39.150036, 33.665440, 25.138182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507324, 33.488422, 25.169983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069339, -0.039130, -0.996825,
		0.444246, 0.895895, -0.004267,
		0.893218, -0.442540, 0.079504,
		39.775291, 33.355659, 25.193834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425972, 33.856606, 24.571211>,  <39.150036, 33.665440, 25.138182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425972, 33.856606, 24.571211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700016, 33.584606, 24.675688>,  <39.864441, 33.421406, 24.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700016, 33.584606, 24.675688>,  <39.425972, 33.856606, 24.571211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700016, 33.584606, 24.675688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201638, -0.167518, -0.965029,
		0.699975, 0.713818, 0.022346,
		0.685111, -0.680002, 0.261191,
		39.905548, 33.380604, 24.754045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164619, 34.093037, 24.438215>,  <39.425972, 33.856606, 24.571211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164619, 34.093037, 24.438215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 33.693691, 24.459709>,  <40.152191, 33.454082, 24.472605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 33.693691, 24.459709>,  <40.164619, 34.093037, 24.438215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156853, 33.693691, 24.459709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309174, -0.057106, -0.949290,
		0.950807, -0.001823, 0.309778,
		-0.019421, -0.998366, 0.053734,
		40.151028, 33.394180, 24.475830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753998, 33.914196, 24.063931>,  <40.164619, 34.093037, 24.438215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753998, 33.914196, 24.063931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562836, 33.562847, 24.060724>,  <40.448139, 33.352036, 24.058802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562836, 33.562847, 24.060724>,  <40.753998, 33.914196, 24.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562836, 33.562847, 24.060724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444107, -0.233738, -0.864949,
		0.757876, -0.416922, 0.501797,
		-0.477905, -0.878375, -0.008013,
		40.419464, 33.299335, 24.058321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311001, 33.350468, 23.916180>,  <40.753998, 33.914196, 24.063931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311001, 33.350468, 23.916180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964458, 33.165524, 23.840652>,  <40.756535, 33.054558, 23.795336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964458, 33.165524, 23.840652>,  <41.311001, 33.350468, 23.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964458, 33.165524, 23.840652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424279, -0.481918, -0.766644,
		0.263471, -0.744297, 0.613682,
		-0.866355, -0.462360, -0.188818,
		40.704552, 33.026817, 23.784006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381962, 32.600349, 23.895744>,  <41.311001, 33.350468, 23.916180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381962, 32.600349, 23.895744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067055, 32.659363, 23.656265>,  <40.878109, 32.694771, 23.512577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067055, 32.659363, 23.656265>,  <41.381962, 32.600349, 23.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067055, 32.659363, 23.656265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445071, -0.536027, -0.717347,
		-0.426749, -0.831210, 0.356337,
		-0.787272, 0.147531, -0.598697,
		40.830872, 32.703621, 23.476656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404503, 32.024456, 23.591736>,  <41.381962, 32.600349, 23.895744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404503, 32.024456, 23.591736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160786, 32.246174, 23.364923>,  <41.014557, 32.379204, 23.228836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160786, 32.246174, 23.364923>,  <41.404503, 32.024456, 23.591736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160786, 32.246174, 23.364923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255324, -0.539867, -0.802093,
		-0.750714, -0.633486, 0.187413,
		-0.609293, 0.554291, -0.567030,
		40.977997, 32.412460, 23.194815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892097, 31.636023, 23.258949>,  <41.404503, 32.024456, 23.591736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892097, 31.636023, 23.258949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949257, 31.966391, 23.040800>,  <40.983555, 32.164612, 22.909910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949257, 31.966391, 23.040800>,  <40.892097, 31.636023, 23.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949257, 31.966391, 23.040800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352566, -0.557362, -0.751694,
		-0.924812, -0.084863, -0.370839,
		0.142900, 0.825921, -0.545375,
		40.992126, 32.214169, 22.877188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781475, 31.407080, 22.595697>,  <40.892097, 31.636023, 23.258949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781475, 31.407080, 22.595697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982784, 31.746515, 22.530449>,  <41.103569, 31.950176, 22.491301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982784, 31.746515, 22.530449>,  <40.781475, 31.407080, 22.595697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982784, 31.746515, 22.530449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371975, -0.383132, -0.845485,
		-0.779968, 0.364834, -0.508475,
		0.503274, 0.848591, -0.163121,
		41.133766, 32.001091, 22.481512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698784, 31.475895, 21.972502>,  <40.781475, 31.407080, 22.595697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698784, 31.475895, 21.972502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019028, 31.708147, 22.031683>,  <41.211174, 31.847498, 22.067192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019028, 31.708147, 22.031683>,  <40.698784, 31.475895, 21.972502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019028, 31.708147, 22.031683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416898, -0.362439, -0.833567,
		-0.430371, 0.729044, -0.532236,
		0.800610, 0.580631, 0.147954,
		41.259212, 31.882336, 22.076069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882957, 31.699369, 21.336412>,  <40.698784, 31.475895, 21.972502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882957, 31.699369, 21.336412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214649, 31.763166, 21.550678>,  <41.413666, 31.801445, 21.679237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214649, 31.763166, 21.550678>,  <40.882957, 31.699369, 21.336412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214649, 31.763166, 21.550678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553055, -0.372448, -0.745260,
		0.080645, 0.914246, -0.397054,
		0.829232, 0.159491, 0.535665,
		41.463417, 31.811014, 21.711378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374306, 32.001556, 20.896450>,  <40.882957, 31.699369, 21.336412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374306, 32.001556, 20.896450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605789, 31.880337, 21.199305>,  <41.744678, 31.807604, 21.381018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605789, 31.880337, 21.199305>,  <41.374306, 32.001556, 20.896450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605789, 31.880337, 21.199305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586341, -0.490667, -0.644554,
		0.566835, 0.816949, -0.106262,
		0.578707, -0.303050, 0.757139,
		41.779400, 31.789421, 21.426447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077690, 32.097820, 20.719633>,  <41.374306, 32.001556, 20.896450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077690, 32.097820, 20.719633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107399, 31.832840, 21.017797>,  <42.125225, 31.673851, 21.196695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107399, 31.832840, 21.017797>,  <42.077690, 32.097820, 20.719633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107399, 31.832840, 21.017797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676873, -0.515435, -0.525518,
		0.732343, 0.543580, 0.410115,
		0.074274, -0.662455, 0.745410,
		42.129681, 31.634104, 21.241421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852268, 32.050423, 20.862411>,  <42.077690, 32.097820, 20.719633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852268, 32.050423, 20.862411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641979, 31.740374, 21.002579>,  <42.515804, 31.554344, 21.086679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641979, 31.740374, 21.002579>,  <42.852268, 32.050423, 20.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641979, 31.740374, 21.002579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555751, -0.624843, -0.548372,
		0.644013, -0.093550, 0.759273,
		-0.525727, -0.775125, 0.350416,
		42.484261, 31.507835, 21.107704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337978, 31.574411, 21.051897>,  <42.852268, 32.050423, 20.862411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337978, 31.574411, 21.051897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009819, 31.356104, 20.983675>,  <42.812923, 31.225121, 20.942741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009819, 31.356104, 20.983675>,  <43.337978, 31.574411, 21.051897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009819, 31.356104, 20.983675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549878, -0.671239, -0.497063,
		0.156796, -0.501574, 0.850787,
		-0.820395, -0.545767, -0.170557,
		42.763699, 31.192373, 20.932508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539242, 30.926363, 21.126896>,  <43.337978, 31.574411, 21.051897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539242, 30.926363, 21.126896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200294, 30.882547, 20.919060>,  <42.996925, 30.856258, 20.794357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200294, 30.882547, 20.919060>,  <43.539242, 30.926363, 21.126896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200294, 30.882547, 20.919060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392494, -0.788259, -0.473916,
		-0.357660, -0.605516, 0.710936,
		-0.847365, -0.109537, -0.519590,
		42.946087, 30.849686, 20.763182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355183, 30.221689, 21.153316>,  <43.539242, 30.926363, 21.126896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355183, 30.221689, 21.153316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168369, 30.373732, 20.833967>,  <43.056282, 30.464956, 20.642357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168369, 30.373732, 20.833967>,  <43.355183, 30.221689, 21.153316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168369, 30.373732, 20.833967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569419, -0.561480, -0.600418,
		-0.676493, -0.735024, 0.045790,
		-0.467032, 0.380105, -0.798375,
		43.028259, 30.487762, 20.594456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619457, 29.670000, 21.184591>,  <43.355183, 30.221689, 21.153316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619457, 29.670000, 21.184591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985069, 29.517281, 21.239405>,  <44.204437, 29.425650, 21.272293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985069, 29.517281, 21.239405>,  <43.619457, 29.670000, 21.184591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985069, 29.517281, 21.239405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013001, 0.365218, 0.930831,
		-0.405438, -0.849026, 0.338784,
		0.914030, -0.381799, 0.137035,
		44.259277, 29.402740, 21.280516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601486, 29.199827, 21.768427>,  <43.619457, 29.670000, 21.184591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601486, 29.199827, 21.768427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981930, 29.322643, 21.755089>,  <44.210197, 29.396332, 21.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981930, 29.322643, 21.755089>,  <43.601486, 29.199827, 21.768427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981930, 29.322643, 21.755089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017670, 0.161895, 0.986650,
		0.308340, -0.937825, 0.159406,
		0.951112, 0.307040, -0.033347,
		44.267265, 29.414755, 21.745085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982464, 28.828255, 22.355970>,  <43.601486, 29.199827, 21.768427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982464, 28.828255, 22.355970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201042, 29.144905, 22.246628>,  <44.332188, 29.334896, 22.181023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201042, 29.144905, 22.246628>,  <43.982464, 28.828255, 22.355970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201042, 29.144905, 22.246628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144872, 0.232129, 0.961836,
		0.824869, -0.565194, 0.012161,
		0.546447, 0.791626, -0.273357,
		44.364975, 29.382393, 22.164621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474564, 28.904247, 22.824871>,  <43.982464, 28.828255, 22.355970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474564, 28.904247, 22.824871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515018, 29.272861, 22.674913>,  <44.539291, 29.494030, 22.584938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515018, 29.272861, 22.674913>,  <44.474564, 28.904247, 22.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515018, 29.272861, 22.674913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268319, 0.337597, 0.902238,
		0.958006, -0.191843, -0.213121,
		0.101140, 0.921534, -0.374895,
		44.545361, 29.549322, 22.562445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056805, 29.219976, 23.172276>,  <44.474564, 28.904247, 22.824871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056805, 29.219976, 23.172276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860409, 29.538584, 23.031141>,  <44.742573, 29.729748, 22.946461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860409, 29.538584, 23.031141>,  <45.056805, 29.219976, 23.172276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860409, 29.538584, 23.031141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293994, 0.532748, 0.793566,
		0.820061, 0.285899, -0.495744,
		-0.490986, 0.796519, -0.352833,
		44.713112, 29.777540, 22.925291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499401, 29.790655, 23.215740>,  <45.056805, 29.219976, 23.172276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499401, 29.790655, 23.215740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134491, 29.952322, 23.242306>,  <44.915546, 30.049322, 23.258245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134491, 29.952322, 23.242306>,  <45.499401, 29.790655, 23.215740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134491, 29.952322, 23.242306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229504, 0.370109, 0.900193,
		0.339247, 0.836462, -0.430398,
		-0.912271, 0.404166, 0.066413,
		44.860809, 30.073572, 23.262230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571693, 30.377008, 23.661308>,  <45.499401, 29.790655, 23.215740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571693, 30.377008, 23.661308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174152, 30.335102, 23.646986>,  <44.935627, 30.309959, 23.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174152, 30.335102, 23.646986>,  <45.571693, 30.377008, 23.661308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174152, 30.335102, 23.646986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077546, 0.427893, 0.900496,
		-0.079019, 0.897737, -0.433387,
		-0.993852, -0.104764, -0.035805,
		44.875996, 30.303673, 23.636244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400288, 31.002829, 23.942526>,  <45.571693, 30.377008, 23.661308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400288, 31.002829, 23.942526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053684, 30.803188, 23.945467>,  <44.845722, 30.683405, 23.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053684, 30.803188, 23.945467>,  <45.400288, 31.002829, 23.942526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053684, 30.803188, 23.945467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270024, 0.481093, 0.834048,
		-0.419812, 0.720728, -0.551643,
		-0.866513, -0.499100, 0.007355,
		44.793732, 30.653458, 23.947674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833595, 31.530308, 23.786388>,  <45.400288, 31.002829, 23.942526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833595, 31.530308, 23.786388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693012, 31.214878, 23.988232>,  <44.608662, 31.025620, 24.109337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693012, 31.214878, 23.988232>,  <44.833595, 31.530308, 23.786388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693012, 31.214878, 23.988232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352267, 0.610770, 0.709132,
		-0.867403, 0.071472, -0.492447,
		-0.351455, -0.788576, 0.504606,
		44.587574, 30.978306, 24.139614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246883, 31.709970, 24.052919>,  <44.833595, 31.530308, 23.786388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246883, 31.709970, 24.052919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346207, 31.396505, 24.280678>,  <44.405800, 31.208426, 24.417334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346207, 31.396505, 24.280678>,  <44.246883, 31.709970, 24.052919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346207, 31.396505, 24.280678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400643, 0.452090, 0.796932,
		-0.881945, -0.426011, -0.201710,
		0.248311, -0.783664, 0.569397,
		44.420700, 31.161406, 24.451496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585766, 31.320953, 24.339020>,  <44.246883, 31.709970, 24.052919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585766, 31.320953, 24.339020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901752, 31.253250, 24.574751>,  <44.091343, 31.212627, 24.716188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901752, 31.253250, 24.574751>,  <43.585766, 31.320953, 24.339020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901752, 31.253250, 24.574751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474340, 0.440338, 0.762302,
		-0.388530, -0.881733, 0.267565,
		0.789966, -0.169260, 0.589326,
		44.138741, 31.202473, 24.751549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222008, 31.042187, 24.993464>,  <43.585766, 31.320953, 24.339020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222008, 31.042187, 24.993464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597343, 31.093468, 25.121895>,  <43.822544, 31.124235, 25.198954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597343, 31.093468, 25.121895>,  <43.222008, 31.042187, 24.993464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597343, 31.093468, 25.121895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345698, 0.335729, 0.876230,
		0.004537, -0.933194, 0.359345,
		0.938335, 0.128201, 0.321080,
		43.878845, 31.131927, 25.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319321, 30.623737, 25.708002>,  <43.222008, 31.042187, 24.993464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319321, 30.623737, 25.708002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593880, 30.912888, 25.676249>,  <43.758617, 31.086378, 25.657196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593880, 30.912888, 25.676249>,  <43.319321, 30.623737, 25.708002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593880, 30.912888, 25.676249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266218, 0.351354, 0.897596,
		0.676744, -0.594977, 0.433612,
		0.686401, 0.722878, -0.079383,
		43.799801, 31.129751, 25.652433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767616, 30.656040, 26.293055>,  <43.319321, 30.623737, 25.708002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767616, 30.656040, 26.293055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814724, 31.026672, 26.150183>,  <43.842987, 31.249052, 26.064459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814724, 31.026672, 26.150183>,  <43.767616, 30.656040, 26.293055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814724, 31.026672, 26.150183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407939, 0.373073, 0.833308,
		0.905383, 0.047574, 0.421923,
		0.117765, 0.926581, -0.357181,
		43.850052, 31.304647, 26.043028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997971, 31.080294, 26.881744>,  <43.767616, 30.656040, 26.293055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997971, 31.080294, 26.881744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873619, 31.349016, 26.612812>,  <43.799007, 31.510250, 26.451452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873619, 31.349016, 26.612812>,  <43.997971, 31.080294, 26.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873619, 31.349016, 26.612812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381102, 0.559919, 0.735698,
		0.870698, 0.484941, 0.081959,
		-0.310880, 0.671806, -0.672332,
		43.780354, 31.550558, 26.411112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087570, 31.769409, 27.155838>,  <43.997971, 31.080294, 26.881744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087570, 31.769409, 27.155838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807808, 31.802343, 26.871851>,  <43.639950, 31.822104, 26.701458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807808, 31.802343, 26.871851>,  <44.087570, 31.769409, 27.155838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807808, 31.802343, 26.871851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615962, 0.434409, 0.657175,
		0.362525, 0.896945, -0.253113,
		-0.699405, 0.082334, -0.709968,
		43.597988, 31.827044, 26.658861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853043, 32.487850, 27.346767>,  <44.087570, 31.769409, 27.155838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853043, 32.487850, 27.346767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556721, 32.337196, 27.124290>,  <43.378925, 32.246803, 26.990805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556721, 32.337196, 27.124290>,  <43.853043, 32.487850, 27.346767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556721, 32.337196, 27.124290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662619, 0.545567, 0.513120,
		0.110179, 0.748666, -0.653727,
		-0.740808, -0.376637, -0.556191,
		43.334480, 32.224205, 26.957434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491650, 32.998520, 27.031790>,  <43.853043, 32.487850, 27.346767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491650, 32.998520, 27.031790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219952, 32.705544, 27.050375>,  <43.056934, 32.529758, 27.061525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219952, 32.705544, 27.050375>,  <43.491650, 32.998520, 27.031790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219952, 32.705544, 27.050375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647505, 0.627872, 0.431873,
		-0.345494, 0.263261, -0.900737,
		-0.679243, -0.732441, 0.046463,
		43.016178, 32.485813, 27.064314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819115, 33.335094, 27.213905>,  <43.491650, 32.998520, 27.031790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819115, 33.335094, 27.213905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732418, 32.951832, 27.288687>,  <42.680401, 32.721874, 27.333555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732418, 32.951832, 27.288687>,  <42.819115, 33.335094, 27.213905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732418, 32.951832, 27.288687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596074, 0.281555, 0.751946,
		-0.773122, 0.051541, -0.632160,
		-0.216744, -0.958160, 0.186954,
		42.667397, 32.664383, 27.344772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055996, 33.351456, 27.232185>,  <42.819115, 33.335094, 27.213905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055996, 33.351456, 27.232185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176563, 33.016792, 27.415117>,  <42.248901, 32.815994, 27.524876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176563, 33.016792, 27.415117>,  <42.055996, 33.351456, 27.232185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176563, 33.016792, 27.415117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514404, 0.261162, 0.816813,
		-0.802831, -0.481452, -0.351662,
		0.301416, -0.836659, 0.457329,
		42.266987, 32.765793, 27.552317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420109, 33.083092, 27.505592>,  <42.055996, 33.351456, 27.232185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420109, 33.083092, 27.505592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716858, 32.898037, 27.699745>,  <41.894905, 32.787003, 27.816236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716858, 32.898037, 27.699745>,  <41.420109, 33.083092, 27.505592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716858, 32.898037, 27.699745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563426, -0.037606, 0.825310,
		-0.363571, -0.885747, -0.288564,
		0.741868, -0.462643, 0.485380,
		41.939419, 32.759243, 27.845360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112881, 32.536362, 27.766882>,  <41.420109, 33.083092, 27.505592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112881, 32.536362, 27.766882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433708, 32.597691, 27.997766>,  <41.626205, 32.634487, 28.136297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433708, 32.597691, 27.997766>,  <41.112881, 32.536362, 27.766882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433708, 32.597691, 27.997766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563515, -0.125841, 0.816465,
		0.197821, -0.980130, -0.014533,
		0.802071, 0.153324, 0.577212,
		41.674328, 32.643688, 28.170931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195812, 31.945431, 28.291712>,  <41.112881, 32.536362, 27.766882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195812, 31.945431, 28.291712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379349, 32.272511, 28.430758>,  <41.489471, 32.468758, 28.514185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379349, 32.272511, 28.430758>,  <41.195812, 31.945431, 28.291712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379349, 32.272511, 28.430758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569195, -0.029903, 0.821658,
		0.682264, -0.574869, 0.451709,
		0.458839, 0.817698, 0.347614,
		41.517002, 32.517818, 28.535042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076534, 31.861773, 29.003969>,  <41.195812, 31.945431, 28.291712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076534, 31.861773, 29.003969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219482, 32.234039, 28.972622>,  <41.305252, 32.457401, 28.953814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219482, 32.234039, 28.972622>,  <41.076534, 31.861773, 29.003969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219482, 32.234039, 28.972622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313625, 0.198620, 0.928542,
		0.879729, -0.307258, 0.362862,
		0.357374, 0.930668, -0.078368,
		41.326694, 32.513241, 28.949112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469231, 32.045940, 29.613308>,  <41.076534, 31.861773, 29.003969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469231, 32.045940, 29.613308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357880, 32.408638, 29.486612>,  <41.291069, 32.626255, 29.410595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357880, 32.408638, 29.486612>,  <41.469231, 32.045940, 29.613308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357880, 32.408638, 29.486612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456593, 0.165194, 0.874204,
		0.845002, 0.387980, 0.368026,
		-0.278378, 0.906742, -0.316739,
		41.274364, 32.680660, 29.391590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475685, 32.320206, 30.178070>,  <41.469231, 32.045940, 29.613308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475685, 32.320206, 30.178070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277649, 32.570255, 29.936707>,  <41.158829, 32.720284, 29.791887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277649, 32.570255, 29.936707>,  <41.475685, 32.320206, 30.178070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277649, 32.570255, 29.936707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540372, 0.322290, 0.777256,
		0.680356, 0.710878, 0.178237,
		-0.495090, 0.625125, -0.603410,
		41.129120, 32.757793, 29.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641590, 33.019005, 30.331238>,  <41.475685, 32.320206, 30.178070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641590, 33.019005, 30.331238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281719, 33.066124, 30.163092>,  <41.065796, 33.094395, 30.062204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281719, 33.066124, 30.163092>,  <41.641590, 33.019005, 30.331238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281719, 33.066124, 30.163092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358112, 0.351577, 0.864956,
		0.249679, 0.928719, -0.274121,
		-0.899675, 0.117795, -0.420367,
		41.011818, 33.101463, 30.036982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454487, 33.840874, 30.373373>,  <41.641590, 33.019005, 30.331238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454487, 33.840874, 30.373373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140125, 33.593914, 30.359621>,  <40.951508, 33.445740, 30.351370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140125, 33.593914, 30.359621>,  <41.454487, 33.840874, 30.373373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140125, 33.593914, 30.359621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290075, 0.319002, 0.902272,
		-0.546094, 0.719067, -0.429795,
		-0.785900, -0.617398, -0.034378,
		40.904354, 33.408695, 30.349308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872543, 34.186535, 30.562231>,  <41.454487, 33.840874, 30.373373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872543, 34.186535, 30.562231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742718, 33.814884, 30.633091>,  <40.664822, 33.591892, 30.675608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742718, 33.814884, 30.633091>,  <40.872543, 34.186535, 30.562231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742718, 33.814884, 30.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222343, 0.256987, 0.940490,
		-0.919359, 0.265861, -0.289993,
		-0.324564, -0.929126, 0.177151,
		40.645348, 33.536148, 30.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283417, 34.297226, 30.935621>,  <40.872543, 34.186535, 30.562231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283417, 34.297226, 30.935621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364738, 33.910789, 30.999281>,  <40.413532, 33.678928, 31.037476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364738, 33.910789, 30.999281>,  <40.283417, 34.297226, 30.935621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364738, 33.910789, 30.999281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396380, 0.067417, 0.915608,
		-0.895294, -0.249227, -0.369235,
		0.203301, -0.966096, 0.159147,
		40.425728, 33.620960, 31.047026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694260, 34.094479, 31.205154>,  <40.283417, 34.297226, 30.935621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694260, 34.094479, 31.205154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985970, 33.845016, 31.317726>,  <40.160995, 33.695339, 31.385269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985970, 33.845016, 31.317726>,  <39.694260, 34.094479, 31.205154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985970, 33.845016, 31.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302506, 0.075042, 0.950189,
		-0.613712, -0.778087, -0.133934,
		0.729279, -0.623658, 0.281430,
		40.204754, 33.657921, 31.402155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334171, 33.701244, 31.692448>,  <39.694260, 34.094479, 31.205154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334171, 33.701244, 31.692448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726894, 33.661663, 31.757259>,  <39.962528, 33.637917, 31.796146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726894, 33.661663, 31.757259>,  <39.334171, 33.701244, 31.692448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726894, 33.661663, 31.757259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148258, 0.133519, 0.979894,
		-0.118597, -0.986094, 0.116420,
		0.981812, -0.098953, 0.162031,
		40.021439, 33.631977, 31.805868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269909, 33.236858, 32.299679>,  <39.334171, 33.701244, 31.692448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269909, 33.236858, 32.299679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644836, 33.375523, 32.313839>,  <39.869793, 33.458721, 32.322334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644836, 33.375523, 32.313839>,  <39.269909, 33.236858, 32.299679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644836, 33.375523, 32.313839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089128, 0.140296, 0.986090,
		0.336876, -0.927438, 0.162400,
		0.937321, 0.346664, 0.035398,
		39.926033, 33.479523, 32.324459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615429, 32.862770, 32.771755>,  <39.269909, 33.236858, 32.299679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615429, 32.862770, 32.771755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821838, 33.203121, 32.811199>,  <39.945683, 33.407333, 32.834866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821838, 33.203121, 32.811199>,  <39.615429, 32.862770, 32.771755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821838, 33.203121, 32.811199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077492, -0.068278, 0.994652,
		0.853064, -0.520902, 0.030704,
		0.516020, 0.850881, 0.098611,
		39.976643, 33.458385, 32.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040436, 32.812145, 33.367218>,  <39.615429, 32.862770, 32.771755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040436, 32.812145, 33.367218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095406, 33.204033, 33.308887>,  <40.128387, 33.439167, 33.273888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095406, 33.204033, 33.308887>,  <40.040436, 32.812145, 33.367218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095406, 33.204033, 33.308887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002194, 0.147527, 0.989056,
		0.990509, -0.135603, 0.022424,
		0.137427, 0.979718, -0.145829,
		40.136635, 33.497948, 33.265141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798553, 33.077343, 33.531845>,  <40.040436, 32.812145, 33.367218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798553, 33.077343, 33.531845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527164, 33.370445, 33.552792>,  <40.364330, 33.546307, 33.565361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527164, 33.370445, 33.552792>,  <40.798553, 33.077343, 33.531845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527164, 33.370445, 33.552792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097500, 0.019168, 0.995051,
		0.728124, 0.680223, -0.084449,
		-0.678476, 0.732754, 0.052365,
		40.323624, 33.590271, 33.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774754, 33.305767, 34.229969>,  <40.798553, 33.077343, 33.531845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774754, 33.305767, 34.229969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463585, 33.529076, 34.114605>,  <40.276886, 33.663059, 34.045387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463585, 33.529076, 34.114605>,  <40.774754, 33.305767, 34.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463585, 33.529076, 34.114605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345220, 0.003809, 0.938514,
		0.525040, 0.829652, 0.189762,
		-0.777918, 0.558267, -0.288412,
		40.230209, 33.696556, 34.028080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723236, 33.909355, 34.748295>,  <40.774754, 33.305767, 34.229969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723236, 33.909355, 34.748295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376507, 33.845921, 34.559204>,  <40.168468, 33.807861, 34.445747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376507, 33.845921, 34.559204>,  <40.723236, 33.909355, 34.748295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376507, 33.845921, 34.559204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470941, -0.051096, 0.880684,
		-0.163819, 0.986022, -0.030393,
		-0.866821, -0.158586, -0.472728,
		40.116459, 33.798344, 34.417385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201515, 34.429317, 34.932632>,  <40.723236, 33.909355, 34.748295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201515, 34.429317, 34.932632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010464, 34.091862, 34.834530>,  <39.895832, 33.889389, 34.775669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010464, 34.091862, 34.834530>,  <40.201515, 34.429317, 34.932632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010464, 34.091862, 34.834530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311015, -0.098723, 0.945264,
		-0.821670, 0.527764, -0.215231,
		-0.477627, -0.843635, -0.245261,
		39.867176, 33.838772, 34.760952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610752, 34.444622, 35.272675>,  <40.201515, 34.429317, 34.932632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610752, 34.444622, 35.272675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612381, 34.058121, 35.169643>,  <39.613358, 33.826221, 35.107826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612381, 34.058121, 35.169643>,  <39.610752, 34.444622, 35.272675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612381, 34.058121, 35.169643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445430, -0.232366, 0.864638,
		-0.895307, 0.111208, -0.431344,
		0.004074, -0.966250, -0.257574,
		39.613602, 33.768246, 35.092373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925110, 34.279499, 35.237476>,  <39.610752, 34.444622, 35.272675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925110, 34.279499, 35.237476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155373, 33.964352, 35.324997>,  <39.293530, 33.775261, 35.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155373, 33.964352, 35.324997>,  <38.925110, 34.279499, 35.237476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155373, 33.964352, 35.324997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562434, -0.187287, 0.805352,
		-0.593534, -0.586672, -0.550939,
		0.575661, -0.787870, 0.218803,
		39.328072, 33.727989, 35.390636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435989, 33.683678, 35.384460>,  <38.925110, 34.279499, 35.237476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435989, 33.683678, 35.384460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781551, 33.579731, 35.557037>,  <38.988888, 33.517365, 35.660583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781551, 33.579731, 35.557037>,  <38.435989, 33.683678, 35.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781551, 33.579731, 35.557037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491023, -0.243913, 0.836303,
		-0.112089, -0.934333, -0.338316,
		0.863905, -0.259861, 0.431439,
		39.040722, 33.501770, 35.686470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273911, 33.108433, 35.713585>,  <38.435989, 33.683678, 35.384460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273911, 33.108433, 35.713585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608257, 33.204540, 35.911007>,  <38.808865, 33.262203, 36.029461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608257, 33.204540, 35.911007>,  <38.273911, 33.108433, 35.713585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608257, 33.204540, 35.911007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434700, -0.259307, 0.862436,
		0.335199, -0.935431, -0.112301,
		0.835870, 0.240270, 0.493551,
		38.859016, 33.276623, 36.059071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394672, 32.560932, 36.307274>,  <38.273911, 33.108433, 35.713585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394672, 32.560932, 36.307274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583302, 32.894524, 36.421879>,  <38.696480, 33.094681, 36.490643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583302, 32.894524, 36.421879>,  <38.394672, 32.560932, 36.307274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583302, 32.894524, 36.421879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151982, -0.243185, 0.957999,
		0.868632, -0.495310, 0.012071,
		0.471572, 0.833983, 0.286517,
		38.724773, 33.144718, 36.507835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790302, 32.355247, 36.888660>,  <38.394672, 32.560932, 36.307274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790302, 32.355247, 36.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720600, 32.749107, 36.892780>,  <38.678780, 32.985424, 36.895252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720600, 32.749107, 36.892780>,  <38.790302, 32.355247, 36.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720600, 32.749107, 36.892780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196095, -0.044945, 0.979554,
		0.964978, 0.168672, 0.200916,
		-0.174253, 0.984647, 0.010295,
		38.668324, 33.044502, 36.895870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103600, 32.652554, 37.493279>,  <38.790302, 32.355247, 36.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103600, 32.652554, 37.493279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872841, 32.959206, 37.380520>,  <38.734386, 33.143196, 37.312866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872841, 32.959206, 37.380520>,  <39.103600, 32.652554, 37.493279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872841, 32.959206, 37.380520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110086, 0.268990, 0.956831,
		0.809365, 0.583025, -0.070784,
		-0.576897, 0.766633, -0.281894,
		38.699772, 33.189194, 37.295952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425430, 33.313450, 37.794754>,  <39.103600, 32.652554, 37.493279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425430, 33.313450, 37.794754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035118, 33.353401, 37.716900>,  <38.800930, 33.377373, 37.670189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035118, 33.353401, 37.716900>,  <39.425430, 33.313450, 37.794754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035118, 33.353401, 37.716900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141026, 0.392977, 0.908670,
		0.167240, 0.914108, -0.369374,
		-0.975778, 0.099875, -0.194634,
		38.742386, 33.383362, 37.658508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188660, 34.076973, 37.972633>,  <39.425430, 33.313450, 37.794754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188660, 34.076973, 37.972633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858501, 33.851154, 37.973423>,  <38.660404, 33.715664, 37.973896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858501, 33.851154, 37.973423>,  <39.188660, 34.076973, 37.972633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858501, 33.851154, 37.973423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226218, 0.333947, 0.915044,
		-0.517246, 0.754828, -0.403351,
		-0.825398, -0.564548, 0.001977,
		38.610882, 33.681789, 37.974014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730309, 34.554573, 38.204166>,  <39.188660, 34.076973, 37.972633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730309, 34.554573, 38.204166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562630, 34.195652, 38.259483>,  <38.462021, 33.980301, 38.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562630, 34.195652, 38.259483>,  <38.730309, 34.554573, 38.204166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562630, 34.195652, 38.259483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283677, 0.274148, 0.918896,
		-0.862439, 0.345969, -0.369466,
		-0.419198, -0.897301, 0.138292,
		38.436871, 33.926460, 38.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225361, 34.660133, 38.714428>,  <38.730309, 34.554573, 38.204166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225361, 34.660133, 38.714428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190758, 34.262089, 38.695339>,  <38.169994, 34.023262, 38.683887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190758, 34.262089, 38.695339>,  <38.225361, 34.660133, 38.714428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190758, 34.262089, 38.695339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320733, -0.017529, 0.947007,
		-0.943211, 0.097229, -0.317647,
		-0.086509, -0.995108, -0.047718,
		38.164806, 33.963558, 38.681023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546967, 34.460022, 38.921108>,  <38.225361, 34.660133, 38.714428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546967, 34.460022, 38.921108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812763, 34.168228, 38.985981>,  <37.972240, 33.993153, 39.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812763, 34.168228, 38.985981>,  <37.546967, 34.460022, 38.921108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812763, 34.168228, 38.985981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281690, -0.043487, 0.958519,
		-0.692174, -0.682612, -0.234385,
		0.664489, -0.729486, 0.162185,
		38.012112, 33.949383, 39.034637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184910, 33.830986, 39.271397>,  <37.546967, 34.460022, 38.921108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184910, 33.830986, 39.271397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571281, 33.867126, 39.368401>,  <37.803104, 33.888809, 39.426605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571281, 33.867126, 39.368401>,  <37.184910, 33.830986, 39.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571281, 33.867126, 39.368401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251344, 0.104242, 0.962268,
		0.061652, -0.990440, 0.123398,
		0.965932, 0.090341, 0.242515,
		37.861061, 33.894234, 39.441154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334179, 33.363850, 39.735950>,  <37.184910, 33.830986, 39.271397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334179, 33.363850, 39.735950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619560, 33.635258, 39.805920>,  <37.790791, 33.798103, 39.847900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619560, 33.635258, 39.805920>,  <37.334179, 33.363850, 39.735950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619560, 33.635258, 39.805920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189998, -0.052958, 0.980355,
		0.674451, -0.732674, 0.091134,
		0.713454, 0.678517, 0.174924,
		37.833595, 33.838814, 39.858398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685261, 33.010002, 40.183407>,  <37.334179, 33.363850, 39.735950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685261, 33.010002, 40.183407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722610, 33.406971, 40.215332>,  <37.745022, 33.645153, 40.234489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722610, 33.406971, 40.215332>,  <37.685261, 33.010002, 40.183407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722610, 33.406971, 40.215332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270471, -0.051867, 0.961330,
		0.958189, -0.111351, 0.263580,
		0.093374, 0.992427, 0.079815,
		37.750622, 33.704700, 40.239277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191406, 33.140247, 40.628872>,  <37.685261, 33.010002, 40.183407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191406, 33.140247, 40.628872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009621, 33.496517, 40.633892>,  <37.900547, 33.710278, 40.636906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009621, 33.496517, 40.633892>,  <38.191406, 33.140247, 40.628872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009621, 33.496517, 40.633892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052212, 0.012568, 0.998557,
		0.889231, 0.454468, -0.052215,
		-0.454468, 0.890674, 0.012553,
		37.873280, 33.763721, 40.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405544, 33.332924, 41.247868>,  <38.191406, 33.140247, 40.628872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405544, 33.332924, 41.247868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 33.604729, 41.171745>,  <37.952072, 33.767811, 41.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 33.604729, 41.171745>,  <38.405544, 33.332924, 41.247868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122124, 33.604729, 41.171745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016533, 0.253621, 0.967162,
		0.705461, 0.688435, -0.168470,
		-0.708556, 0.679510, -0.190302,
		37.909557, 33.808582, 41.114655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499355, 33.938969, 41.563988>,  <38.405544, 33.332924, 41.247868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499355, 33.938969, 41.563988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103661, 33.957150, 41.508366>,  <37.866241, 33.968056, 41.474991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103661, 33.957150, 41.508366>,  <38.499355, 33.938969, 41.563988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103661, 33.957150, 41.508366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124670, 0.235467, 0.963853,
		0.076549, 0.970819, -0.227268,
		-0.989241, 0.045449, -0.139056,
		37.806889, 33.970783, 41.466648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311199, 34.610275, 41.775932>,  <38.499355, 33.938969, 41.563988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311199, 34.610275, 41.775932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970604, 34.400589, 41.770866>,  <37.766247, 34.274776, 41.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970604, 34.400589, 41.770866>,  <38.311199, 34.610275, 41.775932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970604, 34.400589, 41.770866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140292, 0.204477, 0.968766,
		-0.505254, 0.826672, -0.247653,
		-0.851491, -0.524216, -0.012663,
		37.715157, 34.243324, 41.767067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788689, 35.027775, 42.050510>,  <38.311199, 34.610275, 41.775932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788689, 35.027775, 42.050510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668190, 34.649979, 42.102955>,  <37.595890, 34.423302, 42.134422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668190, 34.649979, 42.102955>,  <37.788689, 35.027775, 42.050510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668190, 34.649979, 42.102955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202028, 0.197597, 0.959239,
		-0.931898, 0.262481, -0.250339,
		-0.301248, -0.944489, 0.131111,
		37.577816, 34.366631, 42.142288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130093, 35.075256, 42.472443>,  <37.788689, 35.027775, 42.050510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130093, 35.075256, 42.472443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309357, 34.722443, 42.530636>,  <37.416916, 34.510754, 42.565552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309357, 34.722443, 42.530636>,  <37.130093, 35.075256, 42.472443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309357, 34.722443, 42.530636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043583, 0.140993, 0.989051,
		-0.892891, -0.449592, 0.024746,
		0.448158, -0.882036, 0.145486,
		37.443806, 34.457832, 42.574280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589085, 34.679283, 42.784271>,  <37.130093, 35.075256, 42.472443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589085, 34.679283, 42.784271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984028, 34.663174, 42.845585>,  <37.220993, 34.653507, 42.882374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984028, 34.663174, 42.845585>,  <36.589085, 34.679283, 42.784271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984028, 34.663174, 42.845585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122783, 0.417191, 0.900487,
		-0.100215, -0.907926, 0.406973,
		0.987361, -0.040273, 0.153286,
		37.280235, 34.651093, 42.891571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755478, 34.353645, 43.445820>,  <36.589085, 34.679283, 42.784271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755478, 34.353645, 43.445820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072514, 34.573872, 43.340992>,  <37.262733, 34.706009, 43.278095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072514, 34.573872, 43.340992>,  <36.755478, 34.353645, 43.445820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072514, 34.573872, 43.340992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056317, 0.361855, 0.930532,
		0.607154, -0.752285, 0.255795,
		0.792586, 0.550571, -0.262069,
		37.310291, 34.739044, 43.262371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224213, 34.536186, 43.963779>,  <36.755478, 34.353645, 43.445820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224213, 34.536186, 43.963779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986027, 34.225544, 43.881504>,  <36.843117, 34.039158, 43.832138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986027, 34.225544, 43.881504>,  <37.224213, 34.536186, 43.963779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986027, 34.225544, 43.881504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449691, -0.110038, -0.886380,
		0.665736, -0.620300, 0.414757,
		-0.595461, -0.776608, -0.205687,
		36.807388, 33.992561, 43.819798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622734, 34.065098, 43.622276>,  <37.224213, 34.536186, 43.963779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622734, 34.065098, 43.622276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270390, 33.925343, 43.494514>,  <37.058983, 33.841488, 43.417858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270390, 33.925343, 43.494514>,  <37.622734, 34.065098, 43.622276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270390, 33.925343, 43.494514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405942, -0.210419, -0.889345,
		0.243518, -0.913045, 0.327180,
		-0.880857, -0.349388, -0.319402,
		37.006134, 33.820526, 43.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878510, 33.516273, 43.235039>,  <37.622734, 34.065098, 43.622276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878510, 33.516273, 43.235039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515903, 33.646748, 43.127834>,  <37.298340, 33.725033, 43.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515903, 33.646748, 43.127834>,  <37.878510, 33.516273, 43.235039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515903, 33.646748, 43.127834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279592, -0.011799, -0.960047,
		-0.316313, -0.945233, -0.080502,
		-0.906518, 0.326183, -0.268012,
		37.243950, 33.744602, 43.047432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586025, 33.234505, 42.583389>,  <37.878510, 33.516273, 43.235039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586025, 33.234505, 42.583389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414165, 33.595692, 42.580704>,  <37.311050, 33.812405, 42.579094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414165, 33.595692, 42.580704>,  <37.586025, 33.234505, 42.583389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414165, 33.595692, 42.580704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061302, 0.021750, -0.997882,
		-0.900913, -0.429150, -0.064699,
		-0.429649, 0.902971, -0.006713,
		37.285271, 33.866585, 42.578690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034695, 33.204388, 42.251945>,  <37.586025, 33.234505, 42.583389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034695, 33.204388, 42.251945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165363, 33.580944, 42.218327>,  <37.243763, 33.806877, 42.198154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165363, 33.580944, 42.218327>,  <37.034695, 33.204388, 42.251945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165363, 33.580944, 42.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033236, -0.077426, -0.996444,
		-0.944554, 0.328301, 0.005996,
		0.326670, 0.941395, -0.084045,
		37.263363, 33.863361, 42.193111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543701, 33.599072, 41.777760>,  <37.034695, 33.204388, 42.251945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543701, 33.599072, 41.777760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896278, 33.787376, 41.762566>,  <37.107826, 33.900360, 41.753448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896278, 33.787376, 41.762566>,  <36.543701, 33.599072, 41.777760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896278, 33.787376, 41.762566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053562, 0.019723, -0.998370,
		-0.469242, 0.882041, 0.042600,
		0.881444, 0.470759, -0.037989,
		37.160713, 33.928604, 41.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517784, 34.093578, 41.267311>,  <36.543701, 33.599072, 41.777760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517784, 34.093578, 41.267311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912910, 34.054939, 41.316116>,  <37.149986, 34.031757, 41.345398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912910, 34.054939, 41.316116>,  <36.517784, 34.093578, 41.267311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912910, 34.054939, 41.316116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134939, 0.141085, -0.980758,
		0.077526, 0.985273, 0.152401,
		0.987816, -0.096599, 0.122014,
		37.209255, 34.025959, 41.352722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797844, 34.557621, 40.792625>,  <36.517784, 34.093578, 41.267311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797844, 34.557621, 40.792625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111275, 34.330215, 40.892868>,  <37.299332, 34.193771, 40.953014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111275, 34.330215, 40.892868>,  <36.797844, 34.557621, 40.792625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111275, 34.330215, 40.892868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436255, 0.216258, -0.873450,
		0.442375, 0.793739, 0.417472,
		0.783573, -0.568517, 0.250605,
		37.346348, 34.159660, 40.968048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403648, 34.987488, 40.587090>,  <36.797844, 34.557621, 40.792625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403648, 34.987488, 40.587090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544651, 34.613777, 40.608494>,  <37.629253, 34.389549, 40.621338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544651, 34.613777, 40.608494>,  <37.403648, 34.987488, 40.587090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544651, 34.613777, 40.608494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283671, 0.052185, -0.957501,
		0.891779, 0.352707, 0.283423,
		0.352508, -0.934278, 0.053515,
		37.650402, 34.333492, 40.624550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927933, 35.076286, 40.175694>,  <37.403648, 34.987488, 40.587090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927933, 35.076286, 40.175694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856777, 34.683941, 40.207340>,  <37.814083, 34.448532, 40.226330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856777, 34.683941, 40.207340>,  <37.927933, 35.076286, 40.175694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856777, 34.683941, 40.207340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138769, -0.104601, -0.984785,
		0.974217, -0.164205, 0.154721,
		-0.177891, -0.980865, 0.079118,
		37.803410, 34.389683, 40.231075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437328, 34.561832, 40.270771>,  <37.927933, 35.076286, 40.175694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437328, 34.561832, 40.270771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474663, 34.163807, 40.257290>,  <38.497063, 33.924992, 40.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474663, 34.163807, 40.257290>,  <38.437328, 34.561832, 40.270771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474663, 34.163807, 40.257290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101830, 0.024135, -0.994509,
		0.990414, 0.096252, -0.099074,
		0.093332, -0.995065, -0.033705,
		38.502663, 33.865288, 40.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071835, 34.325512, 39.857174>,  <38.437328, 34.561832, 40.270771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071835, 34.325512, 39.857174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 34.125729, 39.857285>,  <38.517380, 34.005859, 39.857353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 34.125729, 39.857285>,  <39.071835, 34.325512, 39.857174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725300, 34.125729, 39.857285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008169, -0.014731, -0.999858,
		0.499389, -0.866214, 0.016842,
		-0.866339, -0.499455, 0.000281,
		38.465397, 33.975891, 39.857368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083126, 33.571613, 39.510738>,  <39.071835, 34.325512, 39.857174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083126, 33.571613, 39.510738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697369, 33.677143, 39.503372>,  <38.465912, 33.740459, 39.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697369, 33.677143, 39.503372>,  <39.083126, 33.571613, 39.510738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697369, 33.677143, 39.503372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023775, -0.155842, -0.987496,
		-0.263393, -0.951899, 0.156565,
		-0.964396, 0.263822, -0.018416,
		38.408051, 33.756290, 39.497849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775265, 32.972923, 39.217754>,  <39.083126, 33.571613, 39.510738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775265, 32.972923, 39.217754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531708, 33.284695, 39.158772>,  <38.385574, 33.471756, 39.123383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531708, 33.284695, 39.158772>,  <38.775265, 32.972923, 39.217754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531708, 33.284695, 39.158772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068803, -0.237078, -0.969051,
		-0.790263, -0.579903, 0.197982,
		-0.608893, 0.779427, -0.147455,
		38.349041, 33.518524, 39.114536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210976, 32.700634, 38.849438>,  <38.775265, 32.972923, 39.217754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210976, 32.700634, 38.849438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209373, 33.096493, 38.792053>,  <38.208412, 33.334007, 38.757622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209373, 33.096493, 38.792053>,  <38.210976, 32.700634, 38.849438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209373, 33.096493, 38.792053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112742, -0.142996, -0.983281,
		-0.993616, 0.012238, 0.112147,
		-0.004004, 0.989648, -0.143463,
		38.208172, 33.393387, 38.749016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702568, 32.844402, 38.458302>,  <38.210976, 32.700634, 38.849438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702568, 32.844402, 38.458302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927181, 33.170860, 38.403755>,  <38.061947, 33.366734, 38.371025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927181, 33.170860, 38.403755>,  <37.702568, 32.844402, 38.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927181, 33.170860, 38.403755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022981, -0.149359, -0.988516,
		-0.827136, 0.558216, -0.065114,
		0.561531, 0.816141, -0.136369,
		38.095642, 33.415703, 38.362846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433353, 33.187122, 37.884464>,  <37.702568, 32.844402, 38.458302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433353, 33.187122, 37.884464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811985, 33.313148, 37.911930>,  <38.039165, 33.388763, 37.928410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811985, 33.313148, 37.911930>,  <37.433353, 33.187122, 37.884464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811985, 33.313148, 37.911930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066217, 0.018485, -0.997634,
		-0.315586, 0.948891, -0.003365,
		0.946584, 0.315063, 0.068666,
		38.095959, 33.407669, 37.932529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498947, 33.718090, 37.476234>,  <37.433353, 33.187122, 37.884464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498947, 33.718090, 37.476234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882164, 33.609116, 37.511864>,  <38.112095, 33.543732, 37.533241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882164, 33.609116, 37.511864>,  <37.498947, 33.718090, 37.476234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882164, 33.609116, 37.511864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087754, -0.017043, -0.995996,
		0.272859, 0.962024, 0.007579,
		0.958044, -0.272431, 0.089072,
		38.169579, 33.527386, 37.538586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894203, 34.186451, 37.077789>,  <37.498947, 33.718090, 37.476234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894203, 34.186451, 37.077789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136997, 33.873226, 37.132027>,  <38.282673, 33.685291, 37.164570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136997, 33.873226, 37.132027>,  <37.894203, 34.186451, 37.077789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136997, 33.873226, 37.132027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311784, 0.077700, -0.946971,
		0.731002, 0.617070, 0.291309,
		0.606982, -0.783063, 0.135594,
		38.319092, 33.638306, 37.172707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493484, 34.359360, 36.758663>,  <37.894203, 34.186451, 37.077789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493484, 34.359360, 36.758663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554485, 33.966396, 36.801777>,  <38.591087, 33.730618, 36.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554485, 33.966396, 36.801777>,  <38.493484, 34.359360, 36.758663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554485, 33.966396, 36.801777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586084, 0.002087, -0.810248,
		0.795769, 0.186735, 0.576092,
		0.152504, -0.982408, 0.107782,
		38.600235, 33.671673, 36.834110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281017, 34.201557, 36.842144>,  <38.493484, 34.359360, 36.758663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281017, 34.201557, 36.842144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139965, 33.844246, 36.730637>,  <39.055332, 33.629860, 36.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139965, 33.844246, 36.730637>,  <39.281017, 34.201557, 36.842144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139965, 33.844246, 36.730637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655381, -0.023125, -0.754945,
		0.667927, -0.448915, 0.593590,
		-0.352633, -0.893275, -0.278764,
		39.034176, 33.576263, 36.647007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858257, 33.741909, 36.725689>,  <39.281017, 34.201557, 36.842144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858257, 33.741909, 36.725689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550682, 33.604305, 36.510139>,  <39.366138, 33.521744, 36.380810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550682, 33.604305, 36.510139>,  <39.858257, 33.741909, 36.725689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550682, 33.604305, 36.510139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549216, 0.076013, -0.832216,
		0.327255, -0.935883, 0.130488,
		-0.768937, -0.344013, -0.538878,
		39.320000, 33.501102, 36.348476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180168, 33.300800, 36.250298>,  <39.858257, 33.741909, 36.725689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180168, 33.300800, 36.250298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815567, 33.359741, 36.096703>,  <39.596806, 33.395103, 36.004543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815567, 33.359741, 36.096703>,  <40.180168, 33.300800, 36.250298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815567, 33.359741, 36.096703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406271, 0.177150, -0.896416,
		-0.064063, -0.973091, -0.221337,
		-0.911504, 0.147350, -0.383990,
		39.542114, 33.403946, 35.981506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125717, 32.722549, 35.746098>,  <40.180168, 33.300800, 36.250298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125717, 32.722549, 35.746098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892101, 33.034409, 35.655716>,  <39.751934, 33.221523, 35.601486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892101, 33.034409, 35.655716>,  <40.125717, 32.722549, 35.746098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892101, 33.034409, 35.655716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450859, 0.080095, -0.888994,
		-0.675002, -0.621078, -0.398289,
		-0.584035, 0.779645, -0.225955,
		39.716892, 33.268303, 35.587929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785336, 32.662308, 36.062485>,  <40.125717, 32.722549, 35.746098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785336, 32.662308, 36.062485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132236, 32.855171, 36.012856>,  <41.340378, 32.970890, 35.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132236, 32.855171, 36.012856>,  <40.785336, 32.662308, 36.062485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132236, 32.855171, 36.012856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487103, -0.873273, 0.011181,
		-0.102958, -0.070133, -0.992210,
		0.867254, 0.482158, -0.124072,
		41.392414, 32.999817, 35.975636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248585, 32.267490, 35.564651>,  <40.785336, 32.662308, 36.062485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248585, 32.267490, 35.564651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447155, 32.479111, 35.839943>,  <41.566299, 32.606083, 36.005119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447155, 32.479111, 35.839943>,  <41.248585, 32.267490, 35.564651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447155, 32.479111, 35.839943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440034, -0.836777, 0.325844,
		0.748283, 0.141085, -0.648203,
		0.496430, 0.529055, 0.688228,
		41.596085, 32.637829, 36.046410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141464, 32.354492, 35.555050>,  <41.248585, 32.267490, 35.564651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141464, 32.354492, 35.555050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946457, 32.349697, 35.904263>,  <41.829453, 32.346821, 36.113789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946457, 32.349697, 35.904263>,  <42.141464, 32.354492, 35.555050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946457, 32.349697, 35.904263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470244, -0.846099, 0.250972,
		0.735663, 0.532891, 0.418124,
		-0.487515, -0.011989, 0.873032,
		41.800201, 32.346100, 36.166172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659466, 32.232227, 36.163692>,  <42.141464, 32.354492, 35.555050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659466, 32.232227, 36.163692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283905, 32.113449, 36.233303>,  <42.058567, 32.042183, 36.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283905, 32.113449, 36.233303>,  <42.659466, 32.232227, 36.163692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283905, 32.113449, 36.233303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311116, -0.948470, 0.060103,
		0.147210, 0.110572, 0.982905,
		-0.938901, -0.296950, 0.174025,
		42.002235, 32.024364, 36.285511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605137, 31.852058, 36.874527>,  <42.659466, 32.232227, 36.163692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605137, 31.852058, 36.874527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367191, 31.725374, 36.579006>,  <42.224422, 31.649364, 36.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367191, 31.725374, 36.579006>,  <42.605137, 31.852058, 36.874527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367191, 31.725374, 36.579006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421431, -0.905543, 0.048865,
		-0.684495, -0.282286, 0.672147,
		-0.594864, -0.316711, -0.738804,
		42.188732, 31.630362, 36.357365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102283, 32.123276, 37.403622>,  <42.605137, 31.852058, 36.874527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102283, 32.123276, 37.403622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209702, 32.220703, 37.030838>,  <42.274155, 32.279160, 36.807167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209702, 32.220703, 37.030838>,  <42.102283, 32.123276, 37.403622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209702, 32.220703, 37.030838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711157, 0.702712, -0.021267,
		0.649721, 0.668483, 0.361930,
		0.268549, 0.243572, -0.931962,
		42.290268, 32.293774, 36.751247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004566, 32.908386, 37.320873>,  <42.102283, 32.123276, 37.403622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004566, 32.908386, 37.320873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013485, 32.760601, 36.949284>,  <42.018837, 32.671928, 36.726330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013485, 32.760601, 36.949284>,  <42.004566, 32.908386, 37.320873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013485, 32.760601, 36.949284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509990, 0.795015, -0.328422,
		0.859892, 0.481090, -0.170700,
		0.022292, -0.369463, -0.928978,
		42.020172, 32.649761, 36.670589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306606, 33.380062, 36.840519>,  <42.004566, 32.908386, 37.320873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306606, 33.380062, 36.840519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069641, 33.171165, 36.595142>,  <41.927464, 33.045826, 36.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069641, 33.171165, 36.595142>,  <42.306606, 33.380062, 36.840519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069641, 33.171165, 36.595142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359184, 0.852786, -0.379135,
		0.721135, -0.004265, -0.692781,
		-0.592411, -0.522244, -0.613442,
		41.891918, 33.014492, 36.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685410, 33.910858, 36.548122>,  <42.306606, 33.380062, 36.840519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685410, 33.910858, 36.548122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595123, 34.162052, 36.250214>,  <42.540951, 34.312771, 36.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595123, 34.162052, 36.250214>,  <42.685410, 33.910858, 36.548122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595123, 34.162052, 36.250214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733905, 0.612367, 0.293922,
		0.640652, -0.480247, -0.599106,
		-0.225717, 0.627989, -0.744770,
		42.527409, 34.350449, 36.026783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295300, 34.011742, 36.100979>,  <42.685410, 33.910858, 36.548122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295300, 34.011742, 36.100979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041706, 34.320999, 36.093857>,  <42.889549, 34.506554, 36.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041706, 34.320999, 36.093857>,  <43.295300, 34.011742, 36.100979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041706, 34.320999, 36.093857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736947, 0.610956, 0.289209,
		0.234478, 0.170232, -0.957100,
		-0.633979, 0.773145, -0.017803,
		42.851513, 34.552944, 36.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066994, 33.797691, 35.847515>,  <43.295300, 34.011742, 36.100979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066994, 33.797691, 35.847515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066948, 33.855030, 35.451645>,  <44.066921, 33.889435, 35.214123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066948, 33.855030, 35.451645>,  <44.066994, 33.797691, 35.847515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066948, 33.855030, 35.451645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970093, 0.240242, 0.034685,
		0.242733, -0.960070, -0.139091,
		-0.000116, 0.143351, -0.989672,
		44.066914, 33.898037, 35.154743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462730, 33.301598, 35.419113>,  <44.066994, 33.797691, 35.847515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462730, 33.301598, 35.419113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464886, 33.652321, 35.226791>,  <44.466179, 33.862755, 35.111397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464886, 33.652321, 35.226791>,  <44.462730, 33.301598, 35.419113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464886, 33.652321, 35.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995615, 0.040200, 0.084460,
		0.093384, -0.479155, -0.872748,
		0.005385, 0.876809, -0.480809,
		44.466503, 33.915363, 35.082550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946339, 33.358208, 34.711281>,  <44.462730, 33.301598, 35.419113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946339, 33.358208, 34.711281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871506, 33.713642, 34.878815>,  <44.826607, 33.926903, 34.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871506, 33.713642, 34.878815>,  <44.946339, 33.358208, 34.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871506, 33.713642, 34.878815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979054, 0.203526, 0.005513,
		-0.080344, 0.411090, -0.908047,
		-0.187078, 0.888584, 0.418832,
		44.815384, 33.980217, 35.004463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530563, 33.677883, 34.661533>,  <44.946339, 33.358208, 34.711281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530563, 33.677883, 34.661533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380390, 33.999920, 34.845219>,  <45.290287, 34.193142, 34.955429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380390, 33.999920, 34.845219>,  <45.530563, 33.677883, 34.661533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380390, 33.999920, 34.845219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895677, 0.442560, -0.043624,
		-0.238351, 0.394930, -0.887254,
		-0.375435, 0.805091, 0.459214,
		45.267761, 34.241447, 34.982983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601967, 34.266495, 34.250214>,  <45.530563, 33.677883, 34.661533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601967, 34.266495, 34.250214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586632, 34.341610, 34.642799>,  <45.577431, 34.386681, 34.878349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586632, 34.341610, 34.642799>,  <45.601967, 34.266495, 34.250214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586632, 34.341610, 34.642799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854594, 0.515188, -0.065194,
		-0.517879, 0.836252, -0.180231,
		-0.038334, 0.187787, 0.981462,
		45.575130, 34.397945, 34.937237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771111, 35.042377, 34.347252>,  <45.601967, 34.266495, 34.250214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771111, 35.042377, 34.347252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849815, 34.782558, 34.641022>,  <45.897038, 34.626667, 34.817284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849815, 34.782558, 34.641022>,  <45.771111, 35.042377, 34.347252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849815, 34.782558, 34.641022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960685, 0.277377, -0.012063,
		-0.195876, 0.707922, 0.678586,
		0.196764, -0.649544, 0.734422,
		45.908844, 34.587696, 34.861347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856346, 35.348431, 35.050091>,  <45.771111, 35.042377, 34.347252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856346, 35.348431, 35.050091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061291, 35.010273, 34.989697>,  <46.184258, 34.807381, 34.953461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061291, 35.010273, 34.989697>,  <45.856346, 35.348431, 35.050091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061291, 35.010273, 34.989697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854770, 0.485087, 0.184550,
		-0.082776, -0.223615, 0.971156,
		0.512364, -0.845391, -0.150985,
		46.215000, 34.756657, 34.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400597, 35.195862, 35.591648>,  <45.856346, 35.348431, 35.050091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400597, 35.195862, 35.591648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479763, 35.063305, 35.222649>,  <46.527264, 34.983772, 35.001247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479763, 35.063305, 35.222649>,  <46.400597, 35.195862, 35.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479763, 35.063305, 35.222649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888434, 0.458268, 0.025981,
		0.414143, -0.824725, 0.385115,
		0.197913, -0.331390, -0.922503,
		46.539139, 34.963886, 34.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978065, 34.733948, 35.585266>,  <46.400597, 35.195862, 35.591648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978065, 34.733948, 35.585266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932526, 34.974358, 35.268833>,  <46.905201, 35.118603, 35.078976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932526, 34.974358, 35.268833>,  <46.978065, 34.733948, 35.585266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932526, 34.974358, 35.268833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954984, 0.285761, 0.079671,
		0.273944, -0.746398, -0.606502,
		-0.113848, 0.601024, -0.791081,
		46.898373, 35.154663, 35.031509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496368, 34.541840, 35.121204>,  <46.978065, 34.733948, 35.585266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496368, 34.541840, 35.121204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393433, 34.922012, 35.051388>,  <47.331673, 35.150116, 35.009499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393433, 34.922012, 35.051388>,  <47.496368, 34.541840, 35.121204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393433, 34.922012, 35.051388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956875, 0.275827, 0.091157,
		0.134780, -0.143553, -0.980422,
		-0.257341, 0.950427, -0.174538,
		47.316231, 35.207142, 34.999027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827148, 34.711704, 34.465645>,  <47.496368, 34.541840, 35.121204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827148, 34.711704, 34.465645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787395, 35.026138, 34.709675>,  <47.763542, 35.214798, 34.856091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787395, 35.026138, 34.709675>,  <47.827148, 34.711704, 34.465645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.787395, 35.026138, 34.709675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990591, 0.020189, 0.135356,
		0.094086, 0.617784, -0.780699,
		-0.099382, 0.786089, 0.610072,
		47.757580, 35.261967, 34.892696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.670345, 28.151289, 26.432457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.318363, 28.304543, 26.320110>,  <40.107174, 28.396494, 26.252703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.318363, 28.304543, 26.320110>,  <40.670345, 28.151289, 26.432457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318363, 28.304543, 26.320110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176801, 0.284636, 0.942191,
		0.440929, 0.878745, -0.182729,
		-0.879956, 0.383132, -0.280867,
		40.054375, 28.419483, 26.235849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591152, 28.821499, 26.821535>,  <40.670345, 28.151289, 26.432457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591152, 28.821499, 26.821535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214706, 28.742178, 26.712000>,  <39.988838, 28.694586, 26.646278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214706, 28.742178, 26.712000>,  <40.591152, 28.821499, 26.821535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214706, 28.742178, 26.712000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316225, 0.229688, 0.920459,
		-0.119632, 0.952848, -0.278870,
		-0.941111, -0.198302, -0.273836,
		39.932373, 28.682688, 26.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227535, 29.420670, 27.040245>,  <40.591152, 28.821499, 26.821535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227535, 29.420670, 27.040245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951550, 29.132227, 27.015074>,  <39.785957, 28.959162, 26.999971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951550, 29.132227, 27.015074>,  <40.227535, 29.420670, 27.040245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951550, 29.132227, 27.015074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445141, 0.354143, 0.822455,
		-0.570791, 0.595475, -0.565338,
		-0.689962, -0.721105, -0.062928,
		39.744560, 28.915895, 26.996195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594357, 29.730804, 27.217079>,  <40.227535, 29.420670, 27.040245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594357, 29.730804, 27.217079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493324, 29.344349, 27.238186>,  <39.432705, 29.112476, 27.250849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493324, 29.344349, 27.238186>,  <39.594357, 29.730804, 27.217079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493324, 29.344349, 27.238186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569459, 0.192519, 0.799158,
		-0.782254, 0.171801, -0.598801,
		-0.252576, -0.966137, 0.052765,
		39.417553, 29.054508, 27.254015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800232, 29.701385, 27.235630>,  <39.594357, 29.730804, 27.217079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800232, 29.701385, 27.235630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955036, 29.363581, 27.383698>,  <39.047916, 29.160898, 27.472538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955036, 29.363581, 27.383698>,  <38.800232, 29.701385, 27.235630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955036, 29.363581, 27.383698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495973, 0.147773, 0.855671,
		-0.777326, -0.514744, -0.361666,
		0.387007, -0.844513, 0.370168,
		39.071140, 29.110228, 27.494747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197495, 29.334343, 27.407213>,  <38.800232, 29.701385, 27.235630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197495, 29.334343, 27.407213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499443, 29.181767, 27.620632>,  <38.680611, 29.090219, 27.748684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499443, 29.181767, 27.620632>,  <38.197495, 29.334343, 27.407213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499443, 29.181767, 27.620632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568985, 0.023779, 0.822004,
		-0.326234, -0.924087, -0.199085,
		0.754870, -0.381442, 0.533549,
		38.725903, 29.067333, 27.780697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893059, 28.682878, 27.736780>,  <38.197495, 29.334343, 27.407213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893059, 28.682878, 27.736780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226894, 28.782948, 27.933096>,  <38.427197, 28.842989, 28.050886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226894, 28.782948, 27.933096>,  <37.893059, 28.682878, 27.736780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226894, 28.782948, 27.933096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477991, -0.114002, 0.870935,
		0.273837, -0.961466, 0.024437,
		0.834588, 0.250175, 0.490790,
		38.477272, 28.858000, 28.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947872, 28.119051, 28.202486>,  <37.893059, 28.682878, 27.736780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947872, 28.119051, 28.202486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126041, 28.455420, 28.325415>,  <38.232944, 28.657242, 28.399172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126041, 28.455420, 28.325415>,  <37.947872, 28.119051, 28.202486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126041, 28.455420, 28.325415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554156, -0.010661, 0.832345,
		0.703214, -0.541049, 0.461254,
		0.445422, 0.840923, 0.307322,
		38.259666, 28.707697, 28.417612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907024, 28.113535, 28.939875>,  <37.947872, 28.119051, 28.202486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907024, 28.113535, 28.939875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054928, 28.483513, 28.904652>,  <38.143669, 28.705500, 28.883518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054928, 28.483513, 28.904652>,  <37.907024, 28.113535, 28.939875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054928, 28.483513, 28.904652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292111, 0.205694, 0.934003,
		0.882014, -0.319636, 0.346244,
		0.369761, 0.924945, -0.088056,
		38.165855, 28.760996, 28.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352348, 28.244806, 29.479757>,  <37.907024, 28.113535, 28.939875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352348, 28.244806, 29.479757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228775, 28.605782, 29.359644>,  <38.154633, 28.822367, 29.287577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228775, 28.605782, 29.359644>,  <38.352348, 28.244806, 29.479757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228775, 28.605782, 29.359644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091380, 0.286102, 0.953832,
		0.946683, 0.322111, -0.005922,
		-0.308934, 0.902436, -0.300282,
		38.136093, 28.876513, 29.269560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697140, 28.553303, 29.919790>,  <38.352348, 28.244806, 29.479757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697140, 28.553303, 29.919790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381260, 28.777578, 29.820190>,  <38.191730, 28.912144, 29.760431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381260, 28.777578, 29.820190>,  <38.697140, 28.553303, 29.919790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381260, 28.777578, 29.820190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120800, 0.255810, 0.959150,
		0.601481, 0.787520, -0.134282,
		-0.789701, 0.560689, -0.248997,
		38.144348, 28.945786, 29.745491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784603, 29.187195, 30.324818>,  <38.697140, 28.553303, 29.919790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784603, 29.187195, 30.324818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403061, 29.175842, 30.205254>,  <38.174133, 29.169031, 30.133516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403061, 29.175842, 30.205254>,  <38.784603, 29.187195, 30.324818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403061, 29.175842, 30.205254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278410, 0.456369, 0.845113,
		0.112427, 0.889338, -0.443213,
		-0.953860, -0.028381, -0.298909,
		38.116901, 29.167328, 30.115582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526970, 29.868500, 30.358406>,  <38.784603, 29.187195, 30.324818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526970, 29.868500, 30.358406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186234, 29.658985, 30.357161>,  <37.981792, 29.533278, 30.356413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186234, 29.658985, 30.357161>,  <38.526970, 29.868500, 30.358406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186234, 29.658985, 30.357161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248646, 0.399134, 0.882534,
		-0.461015, 0.752557, -0.470238,
		-0.851845, -0.523785, -0.003113,
		37.930679, 29.501850, 30.356226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921448, 30.388409, 30.553036>,  <38.526970, 29.868500, 30.358406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921448, 30.388409, 30.553036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845890, 30.003447, 30.631111>,  <37.800556, 29.772470, 30.677956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845890, 30.003447, 30.631111>,  <37.921448, 30.388409, 30.553036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845890, 30.003447, 30.631111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302279, 0.246100, 0.920903,
		-0.934315, 0.114955, -0.337402,
		-0.188897, -0.962403, 0.195186,
		37.789223, 29.714725, 30.689667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170368, 30.320658, 30.788357>,  <37.921448, 30.388409, 30.553036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170368, 30.320658, 30.788357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386280, 30.014046, 30.927532>,  <37.515827, 29.830078, 31.011038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386280, 30.014046, 30.927532>,  <37.170368, 30.320658, 30.788357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386280, 30.014046, 30.927532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407904, 0.123393, 0.904649,
		-0.736375, -0.630241, -0.246066,
		0.539784, -0.766532, 0.347941,
		37.548214, 29.784086, 31.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726295, 30.228100, 31.418081>,  <37.170368, 30.320658, 30.788357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726295, 30.228100, 31.418081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 30.012346, 31.449314>,  <37.262894, 29.882895, 31.468054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 30.012346, 31.449314>,  <36.726295, 30.228100, 31.418081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061668, 30.012346, 31.449314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122897, -0.047533, 0.991280,
		-0.530971, -0.840716, -0.106142,
		0.838430, -0.539386, 0.078083,
		37.313198, 29.850531, 31.472738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538280, 29.777967, 31.900583>,  <36.726295, 30.228100, 31.418081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538280, 29.777967, 31.900583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938091, 29.765705, 31.901628>,  <37.177979, 29.758348, 31.902256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938091, 29.765705, 31.901628>,  <36.538280, 29.777967, 31.900583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938091, 29.765705, 31.901628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007121, 0.313158, 0.949674,
		-0.029931, -0.949206, 0.313228,
		0.999527, -0.030655, 0.002613,
		37.237949, 29.756508, 31.902412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722771, 29.461128, 32.575363>,  <36.538280, 29.777967, 31.900583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722771, 29.461128, 32.575363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040741, 29.668678, 32.449589>,  <37.231522, 29.793207, 32.374123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040741, 29.668678, 32.449589>,  <36.722771, 29.461128, 32.575363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040741, 29.668678, 32.449589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085019, 0.417887, 0.904512,
		0.600726, -0.745749, 0.288073,
		0.794921, 0.518873, -0.314438,
		37.279217, 29.824341, 32.355259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253590, 29.427162, 33.138817>,  <36.722771, 29.461128, 32.575363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253590, 29.427162, 33.138817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353462, 29.751013, 32.926338>,  <37.413383, 29.945322, 32.798851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353462, 29.751013, 32.926338>,  <37.253590, 29.427162, 33.138817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353462, 29.751013, 32.926338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176320, 0.501385, 0.847068,
		0.952140, -0.305156, -0.017568,
		0.249679, 0.809625, -0.531194,
		37.428368, 29.993900, 32.766979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937782, 29.642242, 33.356750>,  <37.253590, 29.427162, 33.138817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937782, 29.642242, 33.356750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778168, 29.960203, 33.173927>,  <37.682400, 30.150980, 33.064232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778168, 29.960203, 33.173927>,  <37.937782, 29.642242, 33.356750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778168, 29.960203, 33.173927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342045, 0.591526, 0.730139,
		0.850751, 0.135015, -0.507930,
		-0.399034, 0.794901, -0.457060,
		37.658459, 30.198673, 33.036808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505199, 30.168148, 33.388817>,  <37.937782, 29.642242, 33.356750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505199, 30.168148, 33.388817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173420, 30.379364, 33.315937>,  <37.974354, 30.506094, 33.272209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173420, 30.379364, 33.315937>,  <38.505199, 30.168148, 33.388817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173420, 30.379364, 33.315937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229470, 0.619487, 0.750719,
		0.509279, 0.580870, -0.635000,
		-0.829445, 0.528039, -0.182199,
		37.924587, 30.537775, 33.261276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697315, 30.950590, 33.561493>,  <38.505199, 30.168148, 33.388817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697315, 30.950590, 33.561493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298752, 30.922373, 33.542793>,  <38.059612, 30.905443, 33.531574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298752, 30.922373, 33.542793>,  <38.697315, 30.950590, 33.561493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298752, 30.922373, 33.542793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084628, 0.832318, 0.547800,
		0.000266, 0.549791, -0.835302,
		-0.996413, -0.070544, -0.046749,
		37.999828, 30.901209, 33.528770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376171, 31.434011, 33.571182>,  <38.697315, 30.950590, 33.561493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376171, 31.434011, 33.571182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724892, 31.421133, 33.766701>,  <39.934124, 31.413406, 33.884010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724892, 31.421133, 33.766701>,  <39.376171, 31.434011, 33.571182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724892, 31.421133, 33.766701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482804, -0.112226, -0.868508,
		0.082817, 0.993161, -0.082295,
		0.871804, -0.032195, 0.488797,
		39.986431, 31.411474, 33.913342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827480, 32.013866, 33.429310>,  <39.376171, 31.434011, 33.571182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827480, 32.013866, 33.429310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076481, 31.726231, 33.552860>,  <40.225883, 31.553650, 33.626991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076481, 31.726231, 33.552860>,  <39.827480, 32.013866, 33.429310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076481, 31.726231, 33.552860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420507, -0.025532, -0.906930,
		0.660048, 0.694451, 0.286487,
		0.622504, -0.719087, 0.308873,
		40.263233, 31.510504, 33.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417290, 32.254665, 33.076382>,  <39.827480, 32.013866, 33.429310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417290, 32.254665, 33.076382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513096, 31.885157, 33.195904>,  <40.570580, 31.663452, 33.267616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513096, 31.885157, 33.195904>,  <40.417290, 32.254665, 33.076382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513096, 31.885157, 33.195904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395553, -0.188221, -0.898950,
		0.886663, 0.333506, 0.320318,
		0.239514, -0.923768, 0.298808,
		40.584949, 31.608027, 33.285545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125263, 32.115276, 32.940998>,  <40.417290, 32.254665, 33.076382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125263, 32.115276, 32.940998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979847, 31.743778, 32.970028>,  <40.892597, 31.520880, 32.987446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979847, 31.743778, 32.970028>,  <41.125263, 32.115276, 32.940998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979847, 31.743778, 32.970028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477367, -0.252624, -0.841606,
		0.799974, -0.271313, 0.535193,
		-0.363541, -0.928747, 0.072577,
		40.870785, 31.465155, 32.991802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701374, 31.614485, 32.863655>,  <41.125263, 32.115276, 32.940998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701374, 31.614485, 32.863655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.363121, 31.415531, 32.786186>,  <41.160168, 31.296160, 32.739704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.363121, 31.415531, 32.786186>,  <41.701374, 31.614485, 32.863655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363121, 31.415531, 32.786186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432132, -0.424980, -0.795396,
		0.313310, -0.756307, 0.574314,
		-0.845635, -0.497384, -0.193674,
		41.109432, 31.266315, 32.728085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929401, 30.902006, 32.744972>,  <41.701374, 31.614485, 32.863655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929401, 30.902006, 32.744972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.573349, 30.922531, 32.563850>,  <41.359718, 30.934847, 32.455177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.573349, 30.922531, 32.563850>,  <41.929401, 30.902006, 32.744972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573349, 30.922531, 32.563850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378741, -0.469263, -0.797714,
		-0.253418, -0.881566, 0.398272,
		-0.890132, 0.051313, -0.452805,
		41.306309, 30.937925, 32.428009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941219, 30.427830, 32.294903>,  <41.929401, 30.902006, 32.744972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941219, 30.427830, 32.294903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625046, 30.618914, 32.141537>,  <41.435341, 30.733564, 32.049515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625046, 30.618914, 32.141537>,  <41.941219, 30.427830, 32.294903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625046, 30.618914, 32.141537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083368, -0.536216, -0.839953,
		-0.606851, -0.695890, 0.384016,
		-0.790431, 0.477712, -0.383419,
		41.387917, 30.762226, 32.026512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463303, 29.920422, 31.976608>,  <41.941219, 30.427830, 32.294903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463303, 29.920422, 31.976608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389839, 30.274794, 31.806246>,  <41.345760, 30.487417, 31.704029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389839, 30.274794, 31.806246>,  <41.463303, 29.920422, 31.976608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389839, 30.274794, 31.806246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040029, -0.439657, -0.897273,
		-0.982175, -0.147744, 0.116211,
		-0.183660, 0.885931, -0.425906,
		41.334740, 30.540573, 31.678474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937569, 29.786814, 31.584044>,  <41.463303, 29.920422, 31.976608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937569, 29.786814, 31.584044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.115143, 30.111450, 31.432127>,  <41.221687, 30.306232, 31.340977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.115143, 30.111450, 31.432127>,  <40.937569, 29.786814, 31.584044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115143, 30.111450, 31.432127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051265, -0.446157, -0.893485,
		-0.894592, 0.377177, -0.239670,
		0.443933, 0.811592, -0.379793,
		41.248322, 30.354927, 31.318190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714420, 29.730221, 30.915411>,  <40.937569, 29.786814, 31.584044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714420, 29.730221, 30.915411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985222, 30.024141, 30.898769>,  <41.147701, 30.200493, 30.888784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985222, 30.024141, 30.898769>,  <40.714420, 29.730221, 30.915411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985222, 30.024141, 30.898769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165743, -0.207294, -0.964136,
		-0.717073, 0.645830, -0.262127,
		0.677005, 0.734801, -0.041603,
		41.188324, 30.244581, 30.886288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534710, 30.094320, 30.356657>,  <40.714420, 29.730221, 30.915411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534710, 30.094320, 30.356657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.922760, 30.172997, 30.413475>,  <41.155590, 30.220203, 30.447565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.922760, 30.172997, 30.413475>,  <40.534710, 30.094320, 30.356657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922760, 30.172997, 30.413475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193367, -0.273204, -0.942321,
		-0.146540, 0.941632, -0.303075,
		0.970121, 0.196693, 0.142046,
		41.213795, 30.232004, 30.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721031, 30.411154, 29.682667>,  <40.534710, 30.094320, 30.356657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721031, 30.411154, 29.682667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055668, 30.284958, 29.861813>,  <41.256451, 30.209240, 29.969301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055668, 30.284958, 29.861813>,  <40.721031, 30.411154, 29.682667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055668, 30.284958, 29.861813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332133, -0.358057, -0.872630,
		0.435668, 0.878784, -0.194762,
		0.836589, -0.315490, 0.447867,
		41.306644, 30.190311, 29.996172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364986, 30.606888, 29.246138>,  <40.721031, 30.411154, 29.682667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364986, 30.606888, 29.246138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.465710, 30.315258, 29.500710>,  <41.526142, 30.140280, 29.653452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.465710, 30.315258, 29.500710>,  <41.364986, 30.606888, 29.246138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465710, 30.315258, 29.500710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438810, -0.500122, -0.746541,
		0.862578, 0.467254, 0.193993,
		0.251804, -0.729076, 0.636430,
		41.541252, 30.096535, 29.691639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184902, 30.397852, 29.170410>,  <41.364986, 30.606888, 29.246138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184902, 30.397852, 29.170410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.976513, 30.087559, 29.312859>,  <41.851479, 29.901382, 29.398329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.976513, 30.087559, 29.312859>,  <42.184902, 30.397852, 29.170410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976513, 30.087559, 29.312859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473756, -0.609840, -0.635335,
		0.710028, -0.162280, 0.685220,
		-0.520976, -0.775732, 0.356122,
		41.820221, 29.854839, 29.419695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724102, 29.834824, 29.381500>,  <42.184902, 30.397852, 29.170410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724102, 29.834824, 29.381500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372829, 29.647793, 29.341164>,  <42.162067, 29.535574, 29.316961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372829, 29.647793, 29.341164>,  <42.724102, 29.834824, 29.381500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372829, 29.647793, 29.341164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410923, -0.629577, -0.659375,
		0.244821, -0.620489, 0.745021,
		-0.878183, -0.467575, -0.100840,
		42.109375, 29.507521, 29.310911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919102, 29.133753, 29.370913>,  <42.724102, 29.834824, 29.381500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919102, 29.133753, 29.370913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.555405, 29.152786, 29.205498>,  <42.337185, 29.164206, 29.106249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.555405, 29.152786, 29.205498>,  <42.919102, 29.133753, 29.370913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555405, 29.152786, 29.205498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296046, -0.624476, -0.722763,
		-0.292635, -0.779593, 0.553714,
		-0.909243, 0.047581, -0.413539,
		42.282631, 29.167061, 29.081436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788200, 28.441025, 29.143347>,  <42.919102, 29.133753, 29.370913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788200, 28.441025, 29.143347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522171, 28.668577, 28.949831>,  <42.362553, 28.805109, 28.833721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522171, 28.668577, 28.949831>,  <42.788200, 28.441025, 29.143347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522171, 28.668577, 28.949831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160335, -0.523948, -0.836523,
		-0.729364, -0.633916, 0.257251,
		-0.665072, 0.568884, -0.483788,
		42.322651, 28.839243, 28.804695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359390, 27.965853, 28.710260>,  <42.788200, 28.441025, 29.143347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359390, 27.965853, 28.710260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.325314, 28.334845, 28.559650>,  <42.304867, 28.556240, 28.469284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.325314, 28.334845, 28.559650>,  <42.359390, 27.965853, 28.710260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325314, 28.334845, 28.559650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175414, -0.358109, -0.917054,
		-0.980802, -0.144175, -0.131308,
		-0.085194, 0.922481, -0.376524,
		42.299755, 28.611589, 28.446693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.601326, 27.951271, 28.077713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854023, 28.253048, 28.006474>,  <42.005642, 28.434114, 27.963730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854023, 28.253048, 28.006474>,  <41.601326, 27.951271, 28.077713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854023, 28.253048, 28.006474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113553, -0.137207, -0.984012,
		-0.766818, 0.641863, -0.001010,
		0.631740, 0.754444, -0.178098,
		42.043545, 28.479382, 27.953045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438087, 28.101828, 27.454727>,  <41.601326, 27.951271, 28.077713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438087, 28.101828, 27.454727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777557, 28.312407, 27.475143>,  <41.981239, 28.438753, 27.487394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777557, 28.312407, 27.475143>,  <41.438087, 28.101828, 27.454727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777557, 28.312407, 27.475143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027157, 0.053004, -0.998225,
		-0.528217, 0.848555, 0.030686,
		0.848675, 0.526446, 0.051042,
		42.032162, 28.470341, 27.490456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324703, 28.621748, 26.897184>,  <41.438087, 28.101828, 27.454727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324703, 28.621748, 26.897184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.711700, 28.613302, 26.997986>,  <41.943901, 28.608234, 27.058466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.711700, 28.613302, 26.997986>,  <41.324703, 28.621748, 26.897184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711700, 28.613302, 26.997986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251770, 0.173867, -0.952041,
		-0.023713, 0.984543, 0.173532,
		0.967497, -0.021114, 0.252001,
		42.001949, 28.606968, 27.073586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692089, 29.250328, 26.606489>,  <41.324703, 28.621748, 26.897184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692089, 29.250328, 26.606489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952587, 28.950439, 26.653471>,  <42.108887, 28.770506, 26.681660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952587, 28.950439, 26.653471>,  <41.692089, 29.250328, 26.606489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952587, 28.950439, 26.653471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176482, -0.000907, -0.984303,
		0.738062, 0.661750, 0.131722,
		0.651244, -0.749724, 0.117456,
		42.147961, 28.725523, 26.688707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119270, 29.372824, 26.076370>,  <41.692089, 29.250328, 26.606489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119270, 29.372824, 26.076370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.171974, 28.985359, 26.160597>,  <42.203594, 28.752880, 26.211132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.171974, 28.985359, 26.160597>,  <42.119270, 29.372824, 26.076370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171974, 28.985359, 26.160597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233712, -0.176074, -0.956230,
		0.963337, 0.175202, 0.203188,
		0.131758, -0.968660, 0.210566,
		42.211502, 28.694761, 26.223766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761578, 29.199549, 25.819033>,  <42.119270, 29.372824, 26.076370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761578, 29.199549, 25.819033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.568577, 28.852217, 25.864973>,  <42.452778, 28.643818, 25.892536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.568577, 28.852217, 25.864973>,  <42.761578, 29.199549, 25.819033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568577, 28.852217, 25.864973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133880, -0.202696, -0.970047,
		0.865602, -0.452675, 0.214054,
		-0.482503, -0.868332, 0.114850,
		42.423824, 28.591717, 25.899427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266968, 28.634502, 25.605856>,  <42.761578, 29.199549, 25.819033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266968, 28.634502, 25.605856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891651, 28.500240, 25.572512>,  <42.666462, 28.419683, 25.552505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891651, 28.500240, 25.572512>,  <43.266968, 28.634502, 25.605856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891651, 28.500240, 25.572512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225464, -0.410868, -0.883376,
		0.262261, -0.847656, 0.461191,
		-0.938288, -0.335657, -0.083361,
		42.610165, 28.399544, 25.547503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306965, 28.030602, 25.209909>,  <43.266968, 28.634502, 25.605856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306965, 28.030602, 25.209909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914955, 28.086903, 25.153713>,  <42.679749, 28.120684, 25.119995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914955, 28.086903, 25.153713>,  <43.306965, 28.030602, 25.209909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914955, 28.086903, 25.153713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071335, -0.410614, -0.909014,
		-0.185634, -0.900880, 0.392372,
		-0.980026, 0.140754, -0.140488,
		42.620949, 28.129129, 25.111567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212372, 27.554289, 24.771776>,  <43.306965, 28.030602, 25.209909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212372, 27.554289, 24.771776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874977, 27.764845, 24.728973>,  <42.672543, 27.891178, 24.703291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874977, 27.764845, 24.728973>,  <43.212372, 27.554289, 24.771776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874977, 27.764845, 24.728973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074791, -0.312362, -0.947014,
		-0.531923, -0.790787, 0.302841,
		-0.843483, 0.526389, -0.107009,
		42.621933, 27.922762, 24.696871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666622, 27.150881, 24.498631>,  <43.212372, 27.554289, 24.771776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666622, 27.150881, 24.498631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520805, 27.510880, 24.403038>,  <42.433315, 27.726879, 24.345682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520805, 27.510880, 24.403038>,  <42.666622, 27.150881, 24.498631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520805, 27.510880, 24.403038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145602, -0.308575, -0.939990,
		-0.919734, -0.307869, 0.243530,
		-0.364541, 0.899999, -0.238981,
		42.411442, 27.780880, 24.331345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960953, 27.073097, 24.194361>,  <42.666622, 27.150881, 24.498631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960953, 27.073097, 24.194361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110996, 27.423759, 24.073849>,  <42.201023, 27.634157, 24.001541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110996, 27.423759, 24.073849>,  <41.960953, 27.073097, 24.194361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110996, 27.423759, 24.073849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197375, -0.242024, -0.949983,
		-0.905724, 0.415813, 0.082244,
		0.375110, 0.876655, -0.301278,
		42.223530, 27.686756, 23.983465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560688, 27.304560, 23.659357>,  <41.960953, 27.073097, 24.194361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560688, 27.304560, 23.659357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.919605, 27.479023, 23.632164>,  <42.134956, 27.583702, 23.615849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.919605, 27.479023, 23.632164>,  <41.560688, 27.304560, 23.659357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919605, 27.479023, 23.632164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110214, -0.370494, -0.922273,
		-0.427446, 0.820061, -0.380514,
		0.897298, 0.436159, -0.067984,
		42.188793, 27.609871, 23.611769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634880, 27.460833, 23.072536>,  <41.560688, 27.304560, 23.659357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634880, 27.460833, 23.072536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.024220, 27.520422, 23.142277>,  <42.257824, 27.556175, 23.184120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.024220, 27.520422, 23.142277>,  <41.634880, 27.460833, 23.072536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024220, 27.520422, 23.142277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182058, -0.039671, -0.982487,
		-0.139448, 0.988045, -0.065735,
		0.973349, 0.148974, 0.174350,
		42.316223, 27.565115, 23.194582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871193, 27.991720, 22.614241>,  <41.634880, 27.460833, 23.072536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871193, 27.991720, 22.614241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212898, 27.811636, 22.718195>,  <42.417923, 27.703585, 22.780567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212898, 27.811636, 22.718195>,  <41.871193, 27.991720, 22.614241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212898, 27.811636, 22.718195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298086, 0.014664, -0.954427,
		0.425882, 0.892802, 0.146728,
		0.854266, -0.450210, 0.259887,
		42.469177, 27.676573, 22.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476685, 28.147141, 22.134325>,  <41.871193, 27.991720, 22.614241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476685, 28.147141, 22.134325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660191, 27.854435, 22.335941>,  <42.770294, 27.678812, 22.456911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660191, 27.854435, 22.335941>,  <42.476685, 28.147141, 22.134325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660191, 27.854435, 22.335941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420243, -0.321119, -0.848692,
		0.782898, 0.601172, 0.160199,
		0.458767, -0.731761, 0.504042,
		42.797821, 27.634907, 22.487154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199100, 28.132278, 22.044889>,  <42.476685, 28.147141, 22.134325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199100, 28.132278, 22.044889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108635, 27.751711, 22.128464>,  <43.054356, 27.523371, 22.178608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108635, 27.751711, 22.128464>,  <43.199100, 28.132278, 22.044889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108635, 27.751711, 22.128464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621281, -0.306092, -0.721330,
		0.750240, -0.033330, 0.660325,
		-0.226162, -0.951418, 0.208935,
		43.040787, 27.466286, 22.191145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912613, 27.749252, 22.006144>,  <43.199100, 28.132278, 22.044889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912613, 27.749252, 22.006144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.610867, 27.488970, 21.971460>,  <43.429821, 27.332800, 21.950651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.610867, 27.488970, 21.971460>,  <43.912613, 27.749252, 22.006144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610867, 27.488970, 21.971460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439031, -0.401893, -0.803576,
		0.488045, -0.644255, 0.588853,
		-0.754363, -0.650706, -0.086706,
		43.384556, 27.293758, 21.945448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196457, 27.101177, 21.870432>,  <43.912613, 27.749252, 22.006144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196457, 27.101177, 21.870432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822235, 27.093596, 21.729366>,  <43.597702, 27.089046, 21.644728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822235, 27.093596, 21.729366>,  <44.196457, 27.101177, 21.870432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822235, 27.093596, 21.729366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341131, -0.307027, -0.888462,
		-0.091436, -0.951512, 0.293708,
		-0.935558, -0.018955, -0.352663,
		43.541569, 27.087910, 21.623568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149666, 26.508268, 21.321880>,  <44.196457, 27.101177, 21.870432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149666, 26.508268, 21.321880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.814739, 26.718557, 21.261868>,  <43.613781, 26.844730, 21.225859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.814739, 26.718557, 21.261868>,  <44.149666, 26.508268, 21.321880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814739, 26.718557, 21.261868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104245, -0.115865, -0.987779,
		-0.536682, -0.842728, 0.042212,
		-0.837320, 0.525723, -0.150033,
		43.563541, 26.876274, 21.216858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749180, 26.185951, 20.785278>,  <44.149666, 26.508268, 21.321880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749180, 26.185951, 20.785278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643051, 26.571432, 20.773365>,  <43.579376, 26.802721, 20.766216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643051, 26.571432, 20.773365>,  <43.749180, 26.185951, 20.785278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643051, 26.571432, 20.773365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015798, -0.026541, -0.999523,
		-0.964031, -0.265663, -0.008183,
		-0.265319, 0.963701, -0.029783,
		43.563454, 26.860542, 20.764431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420696, 26.293207, 20.166227>,  <43.749180, 26.185951, 20.785278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420696, 26.293207, 20.166227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.468422, 26.682213, 20.246210>,  <43.497059, 26.915615, 20.294201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.468422, 26.682213, 20.246210>,  <43.420696, 26.293207, 20.166227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468422, 26.682213, 20.246210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156773, 0.180417, -0.971016,
		-0.980401, 0.147206, -0.130937,
		0.119316, 0.972512, 0.199959,
		43.504215, 26.973967, 20.306198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873524, 26.646179, 19.745710>,  <43.420696, 26.293207, 20.166227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873524, 26.646179, 19.745710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175804, 26.895439, 19.826309>,  <43.357174, 27.044994, 19.874668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175804, 26.895439, 19.826309>,  <42.873524, 26.646179, 19.745710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175804, 26.895439, 19.826309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144196, 0.141805, -0.979336,
		-0.638847, 0.769140, 0.017306,
		0.755700, 0.623150, 0.201499,
		43.402515, 27.082384, 19.886759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810081, 27.240614, 19.355286>,  <42.873524, 26.646179, 19.745710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810081, 27.240614, 19.355286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198330, 27.207884, 19.445803>,  <43.431278, 27.188246, 19.500113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198330, 27.207884, 19.445803>,  <42.810081, 27.240614, 19.355286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198330, 27.207884, 19.445803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236321, 0.146943, -0.960500,
		0.045341, 0.985755, 0.161963,
		0.970617, -0.081825, 0.226291,
		43.489513, 27.183336, 19.513691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596039, 27.143797, 18.609112>,  <42.810081, 27.240614, 19.355286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596039, 27.143797, 18.609112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396126, 27.399992, 18.375877>,  <42.276176, 27.553709, 18.235937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396126, 27.399992, 18.375877>,  <42.596039, 27.143797, 18.609112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396126, 27.399992, 18.375877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414628, 0.414132, 0.810295,
		0.760458, 0.646738, 0.058586,
		-0.499786, 0.640487, -0.583086,
		42.246189, 27.592138, 18.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602570, 27.877035, 18.899248>,  <42.596039, 27.143797, 18.609112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602570, 27.877035, 18.899248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284863, 27.836813, 18.659575>,  <42.094238, 27.812679, 18.515770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284863, 27.836813, 18.659575>,  <42.602570, 27.877035, 18.899248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284863, 27.836813, 18.659575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589330, 0.367305, 0.719568,
		0.147727, 0.924649, -0.351000,
		-0.794271, -0.100556, -0.599184,
		42.046581, 27.806646, 18.479818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194790, 28.585485, 18.982199>,  <42.602570, 27.877035, 18.899248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194790, 28.585485, 18.982199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965389, 28.280237, 18.863037>,  <41.827747, 28.097088, 18.791540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965389, 28.280237, 18.863037>,  <42.194790, 28.585485, 18.982199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965389, 28.280237, 18.863037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725374, 0.304052, 0.617564,
		-0.380697, 0.570264, -0.727921,
		-0.573500, -0.763119, -0.297903,
		41.793339, 28.051302, 18.773666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651989, 28.927277, 18.902107>,  <42.194790, 28.585485, 18.982199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651989, 28.927277, 18.902107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550125, 28.540464, 18.902721>,  <41.489006, 28.308376, 18.903090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550125, 28.540464, 18.902721>,  <41.651989, 28.927277, 18.902107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550125, 28.540464, 18.902721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719291, 0.190481, 0.668085,
		-0.646350, 0.169028, -0.744084,
		-0.254659, -0.967030, 0.001537,
		41.473728, 28.250355, 18.903183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973518, 28.964708, 19.181253>,  <41.651989, 28.927277, 18.902107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973518, 28.964708, 19.181253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062054, 28.579058, 19.239870>,  <41.115173, 28.347668, 19.275040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062054, 28.579058, 19.239870>,  <40.973518, 28.964708, 19.181253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062054, 28.579058, 19.239870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600751, -0.016432, 0.799268,
		-0.768186, -0.264939, -0.582836,
		0.221335, -0.964125, 0.146540,
		41.128452, 28.289820, 19.283833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323097, 28.671356, 19.437428>,  <40.973518, 28.964708, 19.181253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323097, 28.671356, 19.437428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609158, 28.409882, 19.536427>,  <40.780792, 28.252996, 19.595827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609158, 28.409882, 19.536427>,  <40.323097, 28.671356, 19.437428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609158, 28.409882, 19.536427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383814, -0.071325, 0.920652,
		-0.584165, -0.753397, -0.301902,
		0.715149, -0.653686, 0.247498,
		40.823704, 28.213776, 19.610676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006199, 28.090916, 19.717218>,  <40.323097, 28.671356, 19.437428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006199, 28.090916, 19.717218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381413, 28.112341, 19.854174>,  <40.606541, 28.125196, 19.936346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381413, 28.112341, 19.854174>,  <40.006199, 28.090916, 19.717218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381413, 28.112341, 19.854174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342518, -0.007010, 0.939485,
		0.052723, -0.998540, 0.011772,
		0.938031, 0.053565, 0.342387,
		40.662823, 28.128410, 19.956890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992332, 27.619436, 20.279793>,  <40.006199, 28.090916, 19.717218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992332, 27.619436, 20.279793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300289, 27.868916, 20.333862>,  <40.485062, 28.018604, 20.366304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300289, 27.868916, 20.333862>,  <39.992332, 27.619436, 20.279793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300289, 27.868916, 20.333862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121246, -0.065000, 0.990492,
		0.626556, -0.778956, 0.025579,
		0.769887, 0.623700, 0.135172,
		40.531254, 28.056026, 20.374414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446827, 27.325302, 20.762196>,  <39.992332, 27.619436, 20.279793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446827, 27.325302, 20.762196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490208, 27.721741, 20.793077>,  <40.516235, 27.959604, 20.811607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490208, 27.721741, 20.793077>,  <40.446827, 27.325302, 20.762196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490208, 27.721741, 20.793077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118735, -0.064193, 0.990849,
		0.986985, -0.116630, 0.110716,
		0.108456, 0.991099, 0.077205,
		40.522743, 28.019070, 20.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779858, 27.448849, 21.487864>,  <40.446827, 27.325302, 20.762196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779858, 27.448849, 21.487864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765259, 27.842781, 21.420006>,  <40.756500, 28.079140, 21.379292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765259, 27.842781, 21.420006>,  <40.779858, 27.448849, 21.487864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765259, 27.842781, 21.420006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247819, 0.155538, 0.956239,
		0.968119, 0.076941, 0.238383,
		-0.036496, 0.984829, -0.169647,
		40.754311, 28.138229, 21.369112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214050, 27.816072, 22.013561>,  <40.779858, 27.448849, 21.487864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214050, 27.816072, 22.013561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944157, 28.079800, 21.880873>,  <40.782223, 28.238035, 21.801260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944157, 28.079800, 21.880873>,  <41.214050, 27.816072, 22.013561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944157, 28.079800, 21.880873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135376, 0.331265, 0.933776,
		0.725541, 0.674955, -0.134260,
		-0.674732, 0.659317, -0.331719,
		40.741737, 28.277596, 21.781357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476486, 28.556189, 22.100380>,  <41.214050, 27.816072, 22.013561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476486, 28.556189, 22.100380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077156, 28.566669, 22.079773>,  <40.837559, 28.572958, 22.067408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077156, 28.566669, 22.079773>,  <41.476486, 28.556189, 22.100380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077156, 28.566669, 22.079773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046961, 0.151922, 0.987276,
		0.033697, 0.988045, -0.150438,
		-0.998328, 0.026204, -0.051519,
		40.777657, 28.574532, 22.064318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174355, 29.167980, 22.501278>,  <41.476486, 28.556189, 22.100380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174355, 29.167980, 22.501278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863663, 28.916372, 22.488499>,  <40.677246, 28.765408, 22.480831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863663, 28.916372, 22.488499>,  <41.174355, 29.167980, 22.501278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863663, 28.916372, 22.488499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138711, 0.121361, 0.982869,
		-0.614368, 0.767856, -0.181517,
		-0.776731, -0.629022, -0.031950,
		40.630642, 28.727665, 22.478914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683750, 29.470758, 22.919235>,  <41.174355, 29.167980, 22.501278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683750, 29.470758, 22.919235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552425, 29.093164, 22.905918>,  <40.473629, 28.866608, 22.897928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552425, 29.093164, 22.905918>,  <40.683750, 29.470758, 22.919235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552425, 29.093164, 22.905918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233692, 0.047023, 0.971173,
		-0.915205, 0.326627, -0.236039,
		-0.328311, -0.943983, -0.033294,
		40.453934, 28.809969, 22.895929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915836, 29.562305, 23.044819>,  <40.683750, 29.470758, 22.919235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915836, 29.562305, 23.044819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040752, 29.194345, 23.139690>,  <40.115704, 28.973570, 23.196613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040752, 29.194345, 23.139690>,  <39.915836, 29.562305, 23.044819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040752, 29.194345, 23.139690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403621, 0.097528, 0.909713,
		-0.859978, -0.379827, -0.340835,
		0.312293, -0.919902, 0.237179,
		40.134441, 28.918375, 23.210844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397045, 29.219162, 23.503641>,  <39.915836, 29.562305, 23.044819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397045, 29.219162, 23.503641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695671, 28.965374, 23.583733>,  <39.874847, 28.813101, 23.631786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695671, 28.965374, 23.583733>,  <39.397045, 29.219162, 23.503641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695671, 28.965374, 23.583733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325062, -0.085265, 0.941841,
		-0.580497, -0.768231, -0.269897,
		0.746564, -0.634469, 0.200227,
		39.919640, 28.775034, 23.643801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094955, 28.726025, 24.002476>,  <39.397045, 29.219162, 23.503641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094955, 28.726025, 24.002476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490940, 28.674702, 24.026173>,  <39.728531, 28.643908, 24.040392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490940, 28.674702, 24.026173>,  <39.094955, 28.726025, 24.002476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490940, 28.674702, 24.026173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092050, -0.267331, 0.959198,
		-0.107234, -0.955024, -0.276458,
		0.989963, -0.128307, 0.059243,
		39.787930, 28.636209, 24.043945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212738, 28.147484, 24.423843>,  <39.094955, 28.726025, 24.002476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212738, 28.147484, 24.423843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555958, 28.348867, 24.464418>,  <39.761890, 28.469698, 24.488764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555958, 28.348867, 24.464418>,  <39.212738, 28.147484, 24.423843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555958, 28.348867, 24.464418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091526, -0.344250, 0.934406,
		0.505353, -0.792479, -0.341462,
		0.858045, 0.503457, 0.101436,
		39.813370, 28.499905, 24.494848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656757, 27.755352, 24.789871>,  <39.212738, 28.147484, 24.423843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656757, 27.755352, 24.789871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820606, 28.112335, 24.865477>,  <39.918915, 28.326525, 24.910839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820606, 28.112335, 24.865477>,  <39.656757, 27.755352, 24.789871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820606, 28.112335, 24.865477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019204, -0.215582, 0.976297,
		0.912053, -0.396283, -0.105446,
		0.409622, 0.892460, 0.189012,
		39.943493, 28.380074, 24.922180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051342, 27.599474, 25.341839>,  <39.656757, 27.755352, 24.789871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051342, 27.599474, 25.341839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999271, 27.995659, 25.323788>,  <39.968029, 28.233370, 25.312958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999271, 27.995659, 25.323788>,  <40.051342, 27.599474, 25.341839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999271, 27.995659, 25.323788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142604, 0.026337, 0.989430,
		0.981182, 0.135239, 0.137815,
		-0.130179, 0.990463, -0.045127,
		39.960217, 28.292797, 25.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551659, 27.754320, 25.857454>,  <40.051342, 27.599474, 25.341839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551659, 27.754320, 25.857454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.282494, 28.046633, 25.811594>,  <40.120995, 28.222021, 25.784079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.282494, 28.046633, 25.811594>,  <40.551659, 27.754320, 25.857454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282494, 28.046633, 25.811594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172007, -0.003840, 0.985088,
		0.719444, 0.682601, 0.128283,
		-0.672915, 0.730781, -0.114649,
		40.080620, 28.265867, 25.777199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.345501, 29.658669, 30.664831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042702, 29.819874, 30.459101>,  <41.861023, 29.916597, 30.335663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042702, 29.819874, 30.459101>,  <42.345501, 29.658669, 30.664831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042702, 29.819874, 30.459101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243327, 0.556650, 0.794313,
		0.606416, 0.726445, -0.323322,
		-0.757002, 0.403011, -0.514325,
		41.815601, 29.940777, 30.304804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428425, 30.276865, 30.856333>,  <42.345501, 29.658669, 30.664831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428425, 30.276865, 30.856333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056736, 30.270922, 30.708645>,  <41.833721, 30.267355, 30.620031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056736, 30.270922, 30.708645>,  <42.428425, 30.276865, 30.856333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056736, 30.270922, 30.708645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291333, 0.644117, 0.707275,
		0.227312, 0.764782, -0.602857,
		-0.929222, -0.014860, -0.369222,
		41.777969, 30.266464, 30.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256279, 30.964149, 30.750000>,  <42.428425, 30.276865, 30.856333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256279, 30.964149, 30.750000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924446, 30.744987, 30.793081>,  <41.725346, 30.613489, 30.818930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924446, 30.744987, 30.793081>,  <42.256279, 30.964149, 30.750000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924446, 30.744987, 30.793081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371999, 0.686129, 0.625174,
		-0.416434, 0.478566, -0.773018,
		-0.829578, -0.547906, 0.107702,
		41.675571, 30.580616, 30.825392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697266, 31.489138, 30.784025>,  <42.256279, 30.964149, 30.750000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697266, 31.489138, 30.784025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572285, 31.149632, 30.954657>,  <41.497295, 30.945929, 31.057035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572285, 31.149632, 30.954657>,  <41.697266, 31.489138, 30.784025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572285, 31.149632, 30.954657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337117, 0.518908, 0.785548,
		-0.888102, 0.101639, -0.448268,
		-0.312452, -0.848766, 0.426579,
		41.478550, 30.895002, 31.082630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074032, 31.671341, 31.115858>,  <41.697266, 31.489138, 30.784025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074032, 31.671341, 31.115858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.156105, 31.317133, 31.282593>,  <41.205349, 31.104609, 31.382633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.156105, 31.317133, 31.282593>,  <41.074032, 31.671341, 31.115858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156105, 31.317133, 31.282593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332821, 0.337387, 0.880568,
		-0.920396, -0.319413, -0.225492,
		0.205187, -0.885520, 0.416836,
		41.217663, 31.051477, 31.407644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426327, 31.433437, 31.471416>,  <41.074032, 31.671341, 31.115858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426327, 31.433437, 31.471416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718586, 31.226149, 31.649227>,  <40.893940, 31.101774, 31.755913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718586, 31.226149, 31.649227>,  <40.426327, 31.433437, 31.471416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718586, 31.226149, 31.649227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449785, 0.124489, 0.884418,
		-0.513666, -0.846136, -0.142132,
		0.730644, -0.518224, 0.444525,
		40.937778, 31.070681, 31.782585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139858, 31.010317, 31.931240>,  <40.426327, 31.433437, 31.471416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139858, 31.010317, 31.931240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.506680, 30.995352, 32.090046>,  <40.726772, 30.986372, 32.185329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.506680, 30.995352, 32.090046>,  <40.139858, 31.010317, 31.931240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506680, 30.995352, 32.090046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393943, 0.069479, 0.916505,
		-0.061875, -0.996882, 0.048977,
		0.917050, -0.037415, 0.397014,
		40.781796, 30.984127, 32.209148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047993, 30.611057, 32.516685>,  <40.139858, 31.010317, 31.931240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047993, 30.611057, 32.516685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377037, 30.828262, 32.584145>,  <40.574463, 30.958586, 32.624622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377037, 30.828262, 32.584145>,  <40.047993, 30.611057, 32.516685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377037, 30.828262, 32.584145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286714, 0.139993, 0.947733,
		0.491020, -0.827973, 0.270850,
		0.822614, 0.543012, 0.168652,
		40.623821, 30.991165, 32.634739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342365, 30.303499, 33.090393>,  <40.047993, 30.611057, 32.516685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342365, 30.303499, 33.090393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489773, 30.672703, 33.046131>,  <40.578217, 30.894226, 33.019573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489773, 30.672703, 33.046131>,  <40.342365, 30.303499, 33.090393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489773, 30.672703, 33.046131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078347, 0.149445, 0.985661,
		0.926312, -0.354567, 0.127389,
		0.368521, 0.923010, -0.110653,
		40.600330, 30.949606, 33.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909557, 30.356739, 33.534595>,  <40.342365, 30.303499, 33.090393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909557, 30.356739, 33.534595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778782, 30.728363, 33.465359>,  <40.700317, 30.951338, 33.423817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778782, 30.728363, 33.465359>,  <40.909557, 30.356739, 33.534595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778782, 30.728363, 33.465359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005933, 0.181133, 0.983441,
		0.945029, 0.322548, -0.053707,
		-0.326935, 0.929061, -0.173089,
		40.680702, 31.007082, 33.413433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230782, 30.749851, 34.062798>,  <40.909557, 30.356739, 33.534595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230782, 30.749851, 34.062798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926651, 30.972794, 33.929371>,  <40.744175, 31.106558, 33.849316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926651, 30.972794, 33.929371>,  <41.230782, 30.749851, 34.062798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926651, 30.972794, 33.929371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202395, 0.284680, 0.937013,
		0.617208, 0.779944, -0.103643,
		-0.760323, 0.557355, -0.333564,
		40.698555, 31.139999, 33.829300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128159, 31.292387, 34.544373>,  <41.230782, 30.749851, 34.062798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128159, 31.292387, 34.544373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781956, 31.304853, 34.344402>,  <40.574234, 31.312334, 34.224422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781956, 31.304853, 34.344402>,  <41.128159, 31.292387, 34.544373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781956, 31.304853, 34.344402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484191, 0.203519, 0.850964,
		0.128265, 0.978575, -0.161057,
		-0.865510, 0.031167, -0.499921,
		40.522305, 31.314203, 34.194427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925289, 31.976303, 34.509529>,  <41.128159, 31.292387, 34.544373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925289, 31.976303, 34.509529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.652443, 31.684151, 34.495304>,  <40.488735, 31.508860, 34.486771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.652443, 31.684151, 34.495304>,  <40.925289, 31.976303, 34.509529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652443, 31.684151, 34.495304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303025, 0.238075, 0.922765,
		-0.665505, 0.640207, -0.383718,
		-0.682114, -0.730381, -0.035559,
		40.447807, 31.465036, 34.484638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239254, 32.248905, 34.567600>,  <40.925289, 31.976303, 34.509529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239254, 32.248905, 34.567600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342857, 31.889322, 34.708904>,  <40.405018, 31.673573, 34.793686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342857, 31.889322, 34.708904>,  <40.239254, 32.248905, 34.567600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342857, 31.889322, 34.708904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279113, 0.280474, 0.918384,
		-0.924668, -0.336469, -0.178265,
		0.259009, -0.898956, 0.353258,
		40.420559, 31.619635, 34.814880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540359, 32.537762, 34.768044>,  <40.239254, 32.248905, 34.567600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540359, 32.537762, 34.768044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.547482, 32.927017, 34.859852>,  <39.551754, 33.160572, 34.914936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.547482, 32.927017, 34.859852>,  <39.540359, 32.537762, 34.768044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547482, 32.927017, 34.859852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132872, 0.225220, -0.965205,
		-0.990973, 0.047686, -0.125293,
		0.017808, 0.973140, 0.229523,
		39.552822, 33.218960, 34.928707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245659, 32.815926, 34.245781>,  <39.540359, 32.537762, 34.768044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245659, 32.815926, 34.245781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400890, 33.144321, 34.413296>,  <39.494030, 33.341358, 34.513805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400890, 33.144321, 34.413296>,  <39.245659, 32.815926, 34.245781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400890, 33.144321, 34.413296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232907, 0.352283, -0.906449,
		-0.891712, 0.449309, -0.054501,
		0.388076, 0.820986, 0.418783,
		39.517315, 33.390617, 34.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948471, 33.446049, 33.948963>,  <39.245659, 32.815926, 34.245781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948471, 33.446049, 33.948963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312252, 33.540051, 34.086178>,  <39.530521, 33.596451, 34.168507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312252, 33.540051, 34.086178>,  <38.948471, 33.446049, 33.948963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312252, 33.540051, 34.086178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232116, 0.397564, -0.887730,
		-0.345002, 0.886970, 0.307015,
		0.909448, 0.235006, 0.343040,
		39.585087, 33.610554, 34.189091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065758, 34.067825, 33.718201>,  <38.948471, 33.446049, 33.948963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065758, 34.067825, 33.718201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445343, 33.978870, 33.807652>,  <39.673096, 33.925499, 33.861320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445343, 33.978870, 33.807652>,  <39.065758, 34.067825, 33.718201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445343, 33.978870, 33.807652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270093, 0.206975, -0.940325,
		0.162832, 0.952736, 0.256477,
		0.948965, -0.222388, 0.223625,
		39.730034, 33.912155, 33.874741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521027, 34.658371, 33.556190>,  <39.065758, 34.067825, 33.718201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521027, 34.658371, 33.556190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.737556, 34.322670, 33.535706>,  <39.867474, 34.121250, 33.523415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.737556, 34.322670, 33.535706>,  <39.521027, 34.658371, 33.556190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737556, 34.322670, 33.535706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265463, 0.228384, -0.936680,
		0.797809, 0.493451, 0.346420,
		0.541322, -0.839254, -0.051214,
		39.899952, 34.070892, 33.520340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045399, 34.811481, 33.002369>,  <39.521027, 34.658371, 33.556190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045399, 34.811481, 33.002369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065365, 34.417652, 33.069443>,  <40.077343, 34.181355, 33.109688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065365, 34.417652, 33.069443>,  <40.045399, 34.811481, 33.002369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065365, 34.417652, 33.069443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200015, -0.154634, -0.967513,
		0.978520, 0.081834, 0.189212,
		0.049916, -0.984577, 0.167681,
		40.080341, 34.122280, 33.119747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644779, 34.533207, 32.664062>,  <40.045399, 34.811481, 33.002369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644779, 34.533207, 32.664062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452133, 34.185917, 32.711781>,  <40.336544, 33.977543, 32.740410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452133, 34.185917, 32.711781>,  <40.644779, 34.533207, 32.664062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452133, 34.185917, 32.711781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224204, -0.253655, -0.940952,
		0.847219, -0.426430, 0.316824,
		-0.481614, -0.868226, 0.119294,
		40.307648, 33.925449, 32.747570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085377, 34.028416, 32.388515>,  <40.644779, 34.533207, 32.664062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085377, 34.028416, 32.388515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738178, 33.831074, 32.365940>,  <40.529858, 33.712669, 32.352394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738178, 33.831074, 32.365940>,  <41.085377, 34.028416, 32.388515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738178, 33.831074, 32.365940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250101, -0.336154, -0.907992,
		0.428992, -0.802247, 0.415169,
		-0.867995, -0.493356, -0.056435,
		40.477779, 33.683067, 32.349010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263149, 33.435856, 32.226250>,  <41.085377, 34.028416, 32.388515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263149, 33.435856, 32.226250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.891426, 33.485817, 32.087231>,  <40.668392, 33.515793, 32.003819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.891426, 33.485817, 32.087231>,  <41.263149, 33.435856, 32.226250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891426, 33.485817, 32.087231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280958, -0.371671, -0.884830,
		-0.239686, -0.919924, 0.310305,
		-0.929308, 0.124899, -0.347544,
		40.612633, 33.523285, 31.982967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149948, 32.831669, 31.743124>,  <41.263149, 33.435856, 32.226250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149948, 32.831669, 31.743124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852692, 33.081730, 31.647686>,  <40.674339, 33.231766, 31.590424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852692, 33.081730, 31.647686>,  <41.149948, 32.831669, 31.743124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852692, 33.081730, 31.647686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045635, -0.308388, -0.950165,
		-0.667577, -0.716995, 0.200647,
		-0.743140, 0.625152, -0.238593,
		40.629749, 33.269276, 31.576109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689747, 32.390583, 31.375029>,  <41.149948, 32.831669, 31.743124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689747, 32.390583, 31.375029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590153, 32.761372, 31.262798>,  <40.530396, 32.983845, 31.195459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590153, 32.761372, 31.262798>,  <40.689747, 32.390583, 31.375029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590153, 32.761372, 31.262798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042879, -0.299968, -0.952985,
		-0.967558, -0.225248, 0.114435,
		-0.248985, 0.926975, -0.280578,
		40.515457, 33.039463, 31.178625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189976, 32.341099, 30.838490>,  <40.689747, 32.390583, 31.375029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189976, 32.341099, 30.838490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355259, 32.703812, 30.805004>,  <40.454430, 32.921440, 30.784914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355259, 32.703812, 30.805004>,  <40.189976, 32.341099, 30.838490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355259, 32.703812, 30.805004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165664, -0.165246, -0.972239,
		-0.895442, 0.387866, -0.218502,
		0.413205, 0.906782, -0.083712,
		40.479221, 32.975845, 30.779890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899624, 32.575485, 30.234596>,  <40.189976, 32.341099, 30.838490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899624, 32.575485, 30.234596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207287, 32.828068, 30.273907>,  <40.391884, 32.979618, 30.297493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207287, 32.828068, 30.273907>,  <39.899624, 32.575485, 30.234596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207287, 32.828068, 30.273907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130575, -0.004749, -0.991427,
		-0.625573, 0.775400, -0.086105,
		0.769161, 0.631453, 0.098277,
		40.438034, 33.017506, 30.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844131, 33.227253, 29.654449>,  <39.899624, 32.575485, 30.234596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844131, 33.227253, 29.654449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214222, 33.141262, 29.779505>,  <40.436275, 33.089668, 29.854538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214222, 33.141262, 29.779505>,  <39.844131, 33.227253, 29.654449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214222, 33.141262, 29.779505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323385, 0.015850, -0.946135,
		0.198444, 0.976490, 0.084186,
		0.925226, -0.214979, 0.312637,
		40.491791, 33.076767, 29.873297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767891, 33.942944, 29.512674>,  <39.844131, 33.227253, 29.654449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767891, 33.942944, 29.512674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437046, 34.062996, 29.322596>,  <39.238541, 34.135025, 29.208548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437046, 34.062996, 29.322596>,  <39.767891, 33.942944, 29.512674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437046, 34.062996, 29.322596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281115, 0.511220, 0.812176,
		0.486688, 0.805343, -0.338464,
		-0.827109, 0.300129, -0.475198,
		39.188911, 34.153034, 29.180037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706207, 34.634274, 29.729591>,  <39.767891, 33.942944, 29.512674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706207, 34.634274, 29.729591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356174, 34.488670, 29.602007>,  <39.146156, 34.401310, 29.525455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356174, 34.488670, 29.602007>,  <39.706207, 34.634274, 29.729591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356174, 34.488670, 29.602007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450035, 0.369537, 0.812964,
		-0.178054, 0.854953, -0.487189,
		-0.875080, -0.364004, -0.318961,
		39.093651, 34.379471, 29.506319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235477, 35.168568, 29.804226>,  <39.706207, 34.634274, 29.729591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235477, 35.168568, 29.804226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999485, 34.850140, 29.750271>,  <38.857891, 34.659084, 29.717897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999485, 34.850140, 29.750271>,  <39.235477, 35.168568, 29.804226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999485, 34.850140, 29.750271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623757, 0.343298, 0.702192,
		-0.512688, 0.498417, -0.699093,
		-0.589982, -0.796069, -0.134887,
		38.822491, 34.611320, 29.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533459, 35.510830, 29.842607>,  <39.235477, 35.168568, 29.804226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533459, 35.510830, 29.842607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472927, 35.118690, 29.893232>,  <38.436607, 34.883408, 29.923607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472927, 35.118690, 29.893232>,  <38.533459, 35.510830, 29.842607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472927, 35.118690, 29.893232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789798, 0.196905, 0.580902,
		-0.594407, -0.012052, -0.804074,
		-0.151325, -0.980348, 0.126561,
		38.427528, 34.824585, 29.931200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850731, 35.344452, 29.715189>,  <38.533459, 35.510830, 29.842607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850731, 35.344452, 29.715189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995358, 35.055023, 29.950378>,  <38.082134, 34.881367, 30.091492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995358, 35.055023, 29.950378>,  <37.850731, 35.344452, 29.715189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995358, 35.055023, 29.950378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829878, 0.037663, 0.556673,
		-0.424937, -0.689221, -0.586859,
		0.361567, -0.723572, 0.587973,
		38.103828, 34.837952, 30.126770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218643, 34.960896, 29.913479>,  <37.850731, 35.344452, 29.715189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218643, 34.960896, 29.913479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505466, 34.887516, 30.182453>,  <37.677563, 34.843487, 30.343838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505466, 34.887516, 30.182453>,  <37.218643, 34.960896, 29.913479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505466, 34.887516, 30.182453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630775, 0.239675, 0.738024,
		-0.296558, -0.953363, 0.056144,
		0.717061, -0.183453, 0.672435,
		37.720585, 34.832481, 30.384184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918694, 34.458263, 30.298141>,  <37.218643, 34.960896, 29.913479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918694, 34.458263, 30.298141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200035, 34.630020, 30.524740>,  <37.368839, 34.733074, 30.660700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200035, 34.630020, 30.524740>,  <36.918694, 34.458263, 30.298141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200035, 34.630020, 30.524740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708442, 0.357959, 0.608256,
		0.058399, -0.829147, 0.555972,
		0.703349, 0.429395, 0.566498,
		37.411041, 34.758839, 30.694689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647099, 34.363991, 31.057301>,  <36.918694, 34.458263, 30.298141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647099, 34.363991, 31.057301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.666130, 31.092808>,  <37.062637, 34.847416, 31.114113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.666130, 31.092808>,  <36.647099, 34.363991, 31.057301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906811, 34.666130, 31.092808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594825, 0.431596, 0.678165,
		0.473943, -0.493119, 0.729529,
		0.649277, 0.755354, 0.088768,
		37.101593, 34.892735, 31.119438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638882, 34.440098, 31.782509>,  <36.647099, 34.363991, 31.057301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638882, 34.440098, 31.782509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807518, 34.762737, 31.616783>,  <36.908699, 34.956322, 31.517347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807518, 34.762737, 31.616783>,  <36.638882, 34.440098, 31.782509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807518, 34.762737, 31.616783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516395, 0.589138, 0.621493,
		0.745386, -0.048064, 0.664899,
		0.421588, 0.806602, -0.414315,
		36.933994, 35.004719, 31.492489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720596, 34.843288, 32.331810>,  <36.638882, 34.440098, 31.782509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720596, 34.843288, 32.331810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.740177, 35.083996, 32.012943>,  <36.751926, 35.228420, 31.821623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.740177, 35.083996, 32.012943>,  <36.720596, 34.843288, 32.331810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740177, 35.083996, 32.012943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533970, 0.690263, 0.488276,
		0.844085, 0.401760, 0.355120,
		0.048956, 0.601770, -0.797168,
		36.754864, 35.264526, 31.773792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830540, 35.544518, 32.610882>,  <36.720596, 34.843288, 32.331810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830540, 35.544518, 32.610882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653980, 35.551941, 32.252033>,  <36.548046, 35.556396, 32.036724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653980, 35.551941, 32.252033>,  <36.830540, 35.544518, 32.610882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653980, 35.551941, 32.252033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684655, 0.639286, 0.350086,
		0.580013, 0.768745, -0.269475,
		-0.441399, 0.018557, -0.897119,
		36.521561, 35.557507, 31.982897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864185, 36.350964, 32.305008>,  <36.830540, 35.544518, 32.610882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864185, 36.350964, 32.305008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557255, 36.135754, 32.165443>,  <36.373096, 36.006626, 32.081703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557255, 36.135754, 32.165443>,  <36.864185, 36.350964, 32.305008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557255, 36.135754, 32.165443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639307, 0.599453, 0.481604,
		-0.049959, 0.592609, -0.803939,
		-0.767327, -0.538024, -0.348911,
		36.327057, 35.974346, 32.060772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.882130, 33.818966, 25.606758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516235, 33.657410, 25.602095>,  <40.296700, 33.560478, 25.599297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516235, 33.657410, 25.602095>,  <40.882130, 33.818966, 25.606758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516235, 33.657410, 25.602095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203917, 0.436537, 0.876272,
		-0.348825, 0.803934, -0.481675,
		-0.914734, -0.403887, -0.011661,
		40.241814, 33.536243, 25.598597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492378, 34.348930, 25.778692>,  <40.882130, 33.818966, 25.606758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492378, 34.348930, 25.778692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260300, 34.030670, 25.848331>,  <40.121052, 33.839714, 25.890114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260300, 34.030670, 25.848331>,  <40.492378, 34.348930, 25.778692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260300, 34.030670, 25.848331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322498, 0.420708, 0.847939,
		-0.747906, 0.435827, -0.500690,
		-0.580199, -0.795650, 0.174096,
		40.086239, 33.791977, 25.900560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802719, 34.596809, 26.037771>,  <40.492378, 34.348930, 25.778692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802719, 34.596809, 26.037771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811592, 34.216171, 26.160393>,  <39.816917, 33.987789, 26.233965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811592, 34.216171, 26.160393>,  <39.802719, 34.596809, 26.037771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811592, 34.216171, 26.160393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551718, 0.244058, 0.797523,
		-0.833736, -0.186823, -0.519598,
		0.022184, -0.951595, 0.306554,
		39.818249, 33.930695, 26.252359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054096, 34.461834, 26.233873>,  <39.802719, 34.596809, 26.037771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054096, 34.461834, 26.233873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293663, 34.196980, 26.414036>,  <39.437405, 34.038067, 26.522133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293663, 34.196980, 26.414036>,  <39.054096, 34.461834, 26.233873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293663, 34.196980, 26.414036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412874, 0.226605, 0.882148,
		-0.686170, -0.714297, -0.137662,
		0.598921, -0.662141, 0.450404,
		39.473339, 33.998337, 26.549156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597050, 33.968975, 26.655071>,  <39.054096, 34.461834, 26.233873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597050, 33.968975, 26.655071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961300, 33.949085, 26.819164>,  <39.179852, 33.937149, 26.917620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961300, 33.949085, 26.819164>,  <38.597050, 33.968975, 26.655071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961300, 33.949085, 26.819164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391174, 0.216298, 0.894538,
		-0.133216, -0.975060, 0.177514,
		0.910624, -0.049728, 0.410233,
		39.234486, 33.934166, 26.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569244, 33.476395, 27.164883>,  <38.597050, 33.968975, 26.655071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569244, 33.476395, 27.164883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893753, 33.678741, 27.282145>,  <39.088459, 33.800148, 27.352501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893753, 33.678741, 27.282145>,  <38.569244, 33.476395, 27.164883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893753, 33.678741, 27.282145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360609, 0.038257, 0.931932,
		0.460219, -0.861762, 0.213458,
		0.811270, 0.505867, 0.293153,
		39.137135, 33.830502, 27.370090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678421, 33.251144, 27.802628>,  <38.569244, 33.476395, 27.164883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678421, 33.251144, 27.802628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907829, 33.578819, 27.801497>,  <39.045475, 33.775425, 27.800817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907829, 33.578819, 27.801497>,  <38.678421, 33.251144, 27.802628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907829, 33.578819, 27.801497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087597, 0.064759, 0.994049,
		0.814494, -0.569860, 0.108899,
		0.573520, 0.819186, -0.002827,
		39.079887, 33.824574, 27.800648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078621, 33.113766, 28.408890>,  <38.678421, 33.251144, 27.802628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078621, 33.113766, 28.408890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121990, 33.506046, 28.343819>,  <39.148010, 33.741417, 28.304775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121990, 33.506046, 28.343819>,  <39.078621, 33.113766, 28.408890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121990, 33.506046, 28.343819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187572, 0.180887, 0.965452,
		0.976249, -0.074161, 0.203565,
		0.108421, 0.980704, -0.162680,
		39.154518, 33.800259, 28.295015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580006, 33.335846, 28.866407>,  <39.078621, 33.113766, 28.408890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580006, 33.335846, 28.866407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404797, 33.685558, 28.782730>,  <39.299671, 33.895386, 28.732523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404797, 33.685558, 28.782730>,  <39.580006, 33.335846, 28.866407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404797, 33.685558, 28.782730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105703, 0.181000, 0.977786,
		0.892727, 0.450406, 0.013132,
		-0.438024, 0.874284, -0.209193,
		39.273388, 33.947845, 28.719973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248001, 33.436417, 29.105547>,  <39.580006, 33.335846, 28.866407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248001, 33.436417, 29.105547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510159, 33.210453, 29.306084>,  <40.667454, 33.074875, 29.426405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510159, 33.210453, 29.306084>,  <40.248001, 33.436417, 29.105547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510159, 33.210453, 29.306084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580620, -0.047697, -0.812776,
		0.483057, 0.823774, 0.296737,
		0.655391, -0.564909, 0.501340,
		40.706776, 33.040981, 29.456486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864391, 33.796684, 29.060310>,  <40.248001, 33.436417, 29.105547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864391, 33.796684, 29.060310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970547, 33.417179, 29.128906>,  <41.034241, 33.189476, 29.170063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970547, 33.417179, 29.128906>,  <40.864391, 33.796684, 29.060310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970547, 33.417179, 29.128906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644640, 0.042352, -0.763312,
		0.716942, 0.313126, 0.622853,
		0.265392, -0.948767, 0.171490,
		41.050163, 33.132549, 29.180353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545059, 33.852219, 28.788115>,  <40.864391, 33.796684, 29.060310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545059, 33.852219, 28.788115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514603, 33.457191, 28.843134>,  <41.496330, 33.220177, 28.876146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514603, 33.457191, 28.843134>,  <41.545059, 33.852219, 28.788115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514603, 33.457191, 28.843134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606409, -0.155368, -0.779827,
		0.791499, 0.024034, 0.610697,
		-0.076140, -0.987564, 0.137548,
		41.491760, 33.160923, 28.884398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214832, 33.510899, 28.976938>,  <41.545059, 33.852219, 28.788115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214832, 33.510899, 28.976938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003757, 33.199322, 28.841410>,  <41.877113, 33.012375, 28.760092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003757, 33.199322, 28.841410>,  <42.214832, 33.510899, 28.976938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003757, 33.199322, 28.841410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766566, -0.264830, -0.585015,
		0.365962, -0.568433, 0.736856,
		-0.527683, -0.778941, -0.338823,
		41.845451, 32.965641, 28.739763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703793, 32.907448, 28.922728>,  <42.214832, 33.510899, 28.976938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703793, 32.907448, 28.922728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388439, 32.827766, 28.689911>,  <42.199226, 32.779957, 28.550220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388439, 32.827766, 28.689911>,  <42.703793, 32.907448, 28.922728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388439, 32.827766, 28.689911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614939, -0.281961, -0.736442,
		-0.017412, -0.938518, 0.344791,
		-0.788382, -0.199202, -0.582041,
		42.151924, 32.768005, 28.515299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919395, 32.297218, 28.554844>,  <42.703793, 32.907448, 28.922728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919395, 32.297218, 28.554844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602898, 32.426247, 28.347044>,  <42.412998, 32.503662, 28.222364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602898, 32.426247, 28.347044>,  <42.919395, 32.297218, 28.554844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602898, 32.426247, 28.347044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483764, -0.189448, -0.854448,
		-0.374034, -0.927394, -0.006146,
		-0.791246, 0.322567, -0.519500,
		42.365524, 32.523018, 28.191195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862659, 31.784370, 28.148924>,  <42.919395, 32.297218, 28.554844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862659, 31.784370, 28.148924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647514, 32.073704, 27.975723>,  <42.518429, 32.247303, 27.871803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647514, 32.073704, 27.975723>,  <42.862659, 31.784370, 28.148924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647514, 32.073704, 27.975723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428456, -0.207800, -0.879344,
		-0.726037, -0.658488, -0.198149,
		-0.537862, 0.723334, -0.433004,
		42.486156, 32.290703, 27.845821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387459, 31.459911, 27.669180>,  <42.862659, 31.784370, 28.148924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387459, 31.459911, 27.669180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494404, 31.829931, 27.561253>,  <42.558571, 32.051941, 27.496496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494404, 31.829931, 27.561253>,  <42.387459, 31.459911, 27.669180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494404, 31.829931, 27.561253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410084, -0.362622, -0.836861,
		-0.871979, 0.113099, -0.476299,
		0.267365, 0.925048, -0.269818,
		42.574612, 32.107445, 27.480307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267696, 31.444014, 26.980598>,  <42.387459, 31.459911, 27.669180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267696, 31.444014, 26.980598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481529, 31.781105, 27.005997>,  <42.609829, 31.983360, 27.021236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481529, 31.781105, 27.005997>,  <42.267696, 31.444014, 26.980598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481529, 31.781105, 27.005997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528358, -0.274632, -0.803377,
		-0.659589, 0.463021, -0.592076,
		0.534584, 0.842727, 0.063496,
		42.641903, 32.033924, 27.025045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397579, 31.659544, 26.245657>,  <42.267696, 31.444014, 26.980598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397579, 31.659544, 26.245657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693890, 31.844070, 26.440977>,  <42.871677, 31.954786, 26.558168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693890, 31.844070, 26.440977>,  <42.397579, 31.659544, 26.245657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693890, 31.844070, 26.440977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605507, -0.143793, -0.782741,
		-0.290879, 0.875505, -0.385850,
		0.740777, 0.461318, 0.488299,
		42.916122, 31.982466, 26.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784451, 32.078175, 25.722244>,  <42.397579, 31.659544, 26.245657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784451, 32.078175, 25.722244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030857, 32.007660, 26.029346>,  <43.178699, 31.965351, 26.213608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030857, 32.007660, 26.029346>,  <42.784451, 32.078175, 25.722244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030857, 32.007660, 26.029346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723574, -0.258655, -0.639952,
		0.311401, 0.949747, -0.031777,
		0.616012, -0.176289, 0.767758,
		43.215660, 31.954773, 26.259674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370296, 32.572010, 25.672068>,  <42.784451, 32.078175, 25.722244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370296, 32.572010, 25.672068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482002, 32.256512, 25.891119>,  <43.549026, 32.067211, 26.022549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482002, 32.256512, 25.891119>,  <43.370296, 32.572010, 25.672068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482002, 32.256512, 25.891119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542116, -0.341219, -0.767906,
		0.792543, 0.511323, 0.332302,
		0.279261, -0.788745, 0.547627,
		43.565781, 32.019890, 26.055407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007359, 32.409019, 25.443838>,  <43.370296, 32.572010, 25.672068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007359, 32.409019, 25.443838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930946, 32.075180, 25.650507>,  <43.885098, 31.874876, 25.774508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930946, 32.075180, 25.650507>,  <44.007359, 32.409019, 25.443838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930946, 32.075180, 25.650507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503921, -0.535094, -0.678039,
		0.842359, 0.130833, 0.522794,
		-0.191035, -0.834600, 0.516671,
		43.873634, 31.824800, 25.805508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687443, 32.061466, 25.518845>,  <44.007359, 32.409019, 25.443838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687443, 32.061466, 25.518845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420364, 31.767754, 25.567865>,  <44.260117, 31.591526, 25.597279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420364, 31.767754, 25.567865>,  <44.687443, 32.061466, 25.518845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420364, 31.767754, 25.567865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448929, -0.528475, -0.720539,
		0.593844, -0.426081, 0.682499,
		-0.667692, -0.734281, 0.122552,
		44.220058, 31.547470, 25.604631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.336269, 28.216827, 23.302053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410835, 28.609694, 23.292233>,  <37.455574, 28.845413, 23.286339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410835, 28.609694, 23.292233>,  <37.336269, 28.216827, 23.302053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410835, 28.609694, 23.292233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106126, 0.044976, 0.993335,
		0.976722, -0.182570, 0.112618,
		0.186419, 0.982164, -0.024554,
		37.466763, 28.904343, 23.284866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590073, 28.355539, 23.980280>,  <37.336269, 28.216827, 23.302053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590073, 28.355539, 23.980280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491737, 28.720226, 23.848623>,  <37.432735, 28.939037, 23.769629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491737, 28.720226, 23.848623>,  <37.590073, 28.355539, 23.980280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491737, 28.720226, 23.848623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173858, 0.292584, 0.940302,
		0.953591, 0.288390, 0.086580,
		-0.245842, 0.911716, -0.329144,
		37.417984, 28.993742, 23.749880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907482, 28.858606, 24.407774>,  <37.590073, 28.355539, 23.980280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907482, 28.858606, 24.407774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615788, 29.070326, 24.234310>,  <37.440773, 29.197357, 24.130232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615788, 29.070326, 24.234310>,  <37.907482, 28.858606, 24.407774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615788, 29.070326, 24.234310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268173, 0.361987, 0.892776,
		0.629523, 0.767339, -0.122030,
		-0.729235, 0.529298, -0.433659,
		37.397018, 29.229115, 24.104212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041351, 29.533176, 24.554743>,  <37.907482, 28.858606, 24.407774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041351, 29.533176, 24.554743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650417, 29.469946, 24.498407>,  <37.415859, 29.432009, 24.464607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650417, 29.469946, 24.498407>,  <38.041351, 29.533176, 24.554743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650417, 29.469946, 24.498407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180622, 0.275512, 0.944176,
		-0.110448, 0.948211, -0.297819,
		-0.977332, -0.158075, -0.140838,
		37.357220, 29.422523, 24.456156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833839, 30.081959, 24.942642>,  <38.041351, 29.533176, 24.554743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833839, 30.081959, 24.942642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521729, 29.848841, 24.851858>,  <37.334461, 29.708969, 24.797388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521729, 29.848841, 24.851858>,  <37.833839, 30.081959, 24.942642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521729, 29.848841, 24.851858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466518, 0.300652, 0.831847,
		-0.416562, 0.754955, -0.506478,
		-0.780281, -0.582796, -0.226960,
		37.287643, 29.674002, 24.783770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279243, 30.459309, 25.079220>,  <37.833839, 30.081959, 24.942642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279243, 30.459309, 25.079220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140549, 30.084959, 25.104240>,  <37.057331, 29.860350, 25.119253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140549, 30.084959, 25.104240>,  <37.279243, 30.459309, 25.079220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140549, 30.084959, 25.104240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215000, 0.144216, 0.965907,
		-0.912988, 0.321470, -0.251218,
		-0.346740, -0.935873, 0.062551,
		37.036526, 29.804197, 25.123007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673161, 30.497688, 25.560957>,  <37.279243, 30.459309, 25.079220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673161, 30.497688, 25.560957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738453, 30.103086, 25.566113>,  <36.777630, 29.866325, 25.569206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738453, 30.103086, 25.566113>,  <36.673161, 30.497688, 25.560957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738453, 30.103086, 25.566113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467359, -0.065813, 0.881614,
		-0.868868, -0.149930, -0.471794,
		0.163230, -0.986504, 0.012888,
		36.787422, 29.807135, 25.569979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006149, 30.270035, 25.761433>,  <36.673161, 30.497688, 25.560957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006149, 30.270035, 25.761433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286106, 29.992666, 25.829924>,  <36.454079, 29.826246, 25.871017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286106, 29.992666, 25.829924>,  <36.006149, 30.270035, 25.761433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286106, 29.992666, 25.829924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350628, -0.124705, 0.928175,
		-0.622262, -0.709661, -0.330412,
		0.699893, -0.693419, 0.171227,
		36.496075, 29.784641, 25.881292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649773, 29.757635, 26.066839>,  <36.006149, 30.270035, 25.761433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649773, 29.757635, 26.066839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034298, 29.691628, 26.155069>,  <36.265011, 29.652023, 26.208008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034298, 29.691628, 26.155069>,  <35.649773, 29.757635, 26.066839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034298, 29.691628, 26.155069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242228, -0.125061, 0.962125,
		-0.131250, -0.978318, -0.160210,
		0.961301, -0.165086, 0.220561,
		36.322689, 29.642122, 26.221241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581852, 29.220865, 26.551075>,  <35.649773, 29.757635, 26.066839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581852, 29.220865, 26.551075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936253, 29.399256, 26.601847>,  <36.148891, 29.506290, 26.632309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936253, 29.399256, 26.601847>,  <35.581852, 29.220865, 26.551075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936253, 29.399256, 26.601847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117614, -0.048636, 0.991868,
		0.448523, -0.893722, 0.009362,
		0.885999, 0.445977, 0.126929,
		36.202053, 29.533049, 26.639925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908840, 28.802410, 27.104414>,  <35.581852, 29.220865, 26.551075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908840, 28.802410, 27.104414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078663, 29.163561, 27.077404>,  <36.180557, 29.380251, 27.061199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078663, 29.163561, 27.077404>,  <35.908840, 28.802410, 27.104414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078663, 29.163561, 27.077404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054657, 0.100002, 0.993485,
		0.903748, -0.418104, 0.091806,
		0.424561, 0.902878, -0.067524,
		36.206032, 29.434423, 27.057146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335449, 28.778389, 27.629360>,  <35.908840, 28.802410, 27.104414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335449, 28.778389, 27.629360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340572, 29.172167, 27.559267>,  <36.343647, 29.408434, 27.517210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340572, 29.172167, 27.559267>,  <36.335449, 28.778389, 27.629360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340572, 29.172167, 27.559267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009561, 0.175361, 0.984458,
		0.999872, -0.010929, 0.011657,
		0.012803, 0.984443, -0.175234,
		36.344414, 29.467501, 27.506697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811352, 29.067616, 28.176176>,  <36.335449, 28.778389, 27.629360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811352, 29.067616, 28.176176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583252, 29.371193, 28.050430>,  <36.446392, 29.553339, 27.974983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583252, 29.371193, 28.050430>,  <36.811352, 29.067616, 28.176176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583252, 29.371193, 28.050430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138443, 0.288424, 0.947441,
		0.809723, 0.583798, -0.059403,
		-0.570247, 0.758942, -0.314366,
		36.412178, 29.598875, 27.956120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020809, 29.592667, 28.606558>,  <36.811352, 29.067616, 28.176176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020809, 29.592667, 28.606558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659046, 29.705439, 28.478455>,  <36.441990, 29.773102, 28.401592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659046, 29.705439, 28.478455>,  <37.020809, 29.592667, 28.606558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659046, 29.705439, 28.478455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198541, 0.386299, 0.900752,
		0.377663, 0.878231, -0.293397,
		-0.904407, 0.281929, -0.320256,
		36.387726, 29.790018, 28.382378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726536, 29.968163, 28.673447>,  <37.020809, 29.592667, 28.606558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726536, 29.968163, 28.673447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.867451, 29.648949, 28.869011>,  <37.952000, 29.457420, 28.986349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.867451, 29.648949, 28.869011>,  <37.726536, 29.968163, 28.673447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867451, 29.648949, 28.869011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610285, -0.200171, -0.766475,
		0.709539, 0.568396, 0.416511,
		0.352288, -0.798034, 0.488912,
		37.973137, 29.409538, 29.015684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450077, 30.027554, 28.576136>,  <37.726536, 29.968163, 28.673447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450077, 30.027554, 28.576136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352859, 29.652464, 28.675417>,  <38.294529, 29.427410, 28.734985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352859, 29.652464, 28.675417>,  <38.450077, 30.027554, 28.576136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352859, 29.652464, 28.675417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733498, -0.345099, -0.585565,
		0.634753, 0.039740, 0.771693,
		-0.243040, -0.937724, 0.248202,
		38.279949, 29.371147, 28.749878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066433, 29.672041, 28.785772>,  <38.450077, 30.027554, 28.576136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066433, 29.672041, 28.785772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803108, 29.396255, 28.664932>,  <38.645115, 29.230783, 28.592428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803108, 29.396255, 28.664932>,  <39.066433, 29.672041, 28.785772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803108, 29.396255, 28.664932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692727, -0.397858, -0.601530,
		0.294540, -0.605268, 0.739525,
		-0.658313, -0.689463, -0.302100,
		38.605614, 29.189417, 28.574303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503376, 29.057457, 28.814934>,  <39.066433, 29.672041, 28.785772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503376, 29.057457, 28.814934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186172, 28.986494, 28.581812>,  <38.995850, 28.943916, 28.441938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186172, 28.986494, 28.581812>,  <39.503376, 29.057457, 28.814934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186172, 28.986494, 28.581812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606860, -0.146088, -0.781268,
		0.053461, -0.973234, 0.223510,
		-0.793009, -0.177407, -0.582807,
		38.948269, 28.933271, 28.406969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663986, 28.445168, 28.433151>,  <39.503376, 29.057457, 28.814934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663986, 28.445168, 28.433151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384472, 28.644279, 28.227659>,  <39.216763, 28.763746, 28.104364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384472, 28.644279, 28.227659>,  <39.663986, 28.445168, 28.433151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384472, 28.644279, 28.227659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495893, -0.180502, -0.849417,
		-0.515552, -0.848312, -0.120714,
		-0.698782, 0.497780, -0.513730,
		39.174839, 28.793613, 28.073540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473564, 27.984892, 28.016338>,  <39.663986, 28.445168, 28.433151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473564, 27.984892, 28.016338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368229, 28.327190, 27.838192>,  <39.305027, 28.532570, 27.731304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368229, 28.327190, 27.838192>,  <39.473564, 27.984892, 28.016338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368229, 28.327190, 27.838192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420266, -0.313789, -0.851419,
		-0.868350, -0.411381, -0.277010,
		-0.263335, 0.855747, -0.445367,
		39.289230, 28.583914, 27.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139717, 27.780352, 27.347364>,  <39.473564, 27.984892, 28.016338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139717, 27.780352, 27.347364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207489, 28.172735, 27.309383>,  <39.248154, 28.408165, 27.286594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207489, 28.172735, 27.309383>,  <39.139717, 27.780352, 27.347364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207489, 28.172735, 27.309383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154087, -0.121528, -0.980555,
		-0.973422, 0.151506, -0.171743,
		0.169431, 0.980957, -0.094953,
		39.258320, 28.467022, 27.280897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879665, 27.919889, 26.756969>,  <39.139717, 27.780352, 27.347364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879665, 27.919889, 26.756969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137901, 28.217766, 26.824678>,  <39.292843, 28.396492, 26.865303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137901, 28.217766, 26.824678>,  <38.879665, 27.919889, 26.756969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137901, 28.217766, 26.824678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208212, 0.041620, -0.977198,
		-0.734754, 0.666112, -0.128184,
		0.645588, 0.744690, 0.169273,
		39.331577, 28.441174, 26.875460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739147, 28.380556, 26.258196>,  <38.879665, 27.919889, 26.756969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739147, 28.380556, 26.258196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106129, 28.493210, 26.370596>,  <39.326317, 28.560802, 26.438036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106129, 28.493210, 26.370596>,  <38.739147, 28.380556, 26.258196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106129, 28.493210, 26.370596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283549, 0.032548, -0.958405,
		-0.279065, 0.958970, -0.049996,
		0.917454, 0.281634, 0.280998,
		39.381367, 28.577700, 26.454895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907616, 28.956728, 25.907562>,  <38.739147, 28.380556, 26.258196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907616, 28.956728, 25.907562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261524, 28.803055, 26.013075>,  <39.473869, 28.710852, 26.076384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261524, 28.803055, 26.013075>,  <38.907616, 28.956728, 25.907562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261524, 28.803055, 26.013075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315715, 0.077793, -0.945660,
		0.342786, 0.919974, 0.190121,
		0.884772, -0.384183, 0.263783,
		39.526955, 28.687799, 26.092209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324364, 29.348618, 25.599150>,  <38.907616, 28.956728, 25.907562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324364, 29.348618, 25.599150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542892, 29.019489, 25.661755>,  <39.674011, 28.822012, 25.699318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542892, 29.019489, 25.661755>,  <39.324364, 29.348618, 25.599150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542892, 29.019489, 25.661755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360366, 0.062233, -0.930733,
		0.756087, 0.564882, 0.330516,
		0.546324, -0.822821, 0.156511,
		39.706791, 28.772642, 25.708708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003906, 29.574095, 25.338490>,  <39.324364, 29.348618, 25.599150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003906, 29.574095, 25.338490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.995399, 29.174992, 25.313108>,  <39.990295, 28.935530, 25.297880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.995399, 29.174992, 25.313108>,  <40.003906, 29.574095, 25.338490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995399, 29.174992, 25.313108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558241, 0.040804, -0.828675,
		0.829406, -0.053045, 0.556122,
		-0.021265, -0.997758, -0.063455,
		39.989021, 28.875664, 25.294071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626736, 29.457901, 25.091354>,  <40.003906, 29.574095, 25.338490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626736, 29.457901, 25.091354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403564, 29.132370, 25.026365>,  <40.269661, 28.937052, 24.987371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403564, 29.132370, 25.026365>,  <40.626736, 29.457901, 25.091354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403564, 29.132370, 25.026365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388522, -0.083149, -0.917680,
		0.733325, -0.575125, 0.362582,
		-0.557929, -0.813829, -0.162473,
		40.236187, 28.888222, 24.977623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000797, 29.045746, 24.652241>,  <40.626736, 29.457901, 25.091354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000797, 29.045746, 24.652241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628681, 28.910572, 24.595173>,  <40.405411, 28.829468, 24.560932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628681, 28.910572, 24.595173>,  <41.000797, 29.045746, 24.652241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628681, 28.910572, 24.595173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218241, -0.197287, -0.955745,
		0.294834, -0.920259, 0.257287,
		-0.930292, -0.337937, -0.142671,
		40.349594, 28.809191, 24.552372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363892, 28.378649, 25.048876>,  <41.000797, 29.045746, 24.652241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363892, 28.378649, 25.048876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751068, 28.278339, 25.054634>,  <41.983372, 28.218153, 25.058088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751068, 28.278339, 25.054634>,  <41.363892, 28.378649, 25.048876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751068, 28.278339, 25.054634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036324, -0.083035, 0.995885,
		-0.248549, -0.964478, -0.089482,
		0.967938, -0.250776, 0.014395,
		42.041451, 28.203108, 25.058952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419849, 27.733526, 25.564034>,  <41.363892, 28.378649, 25.048876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419849, 27.733526, 25.564034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767975, 27.930523, 25.563602>,  <41.976852, 28.048721, 25.563343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767975, 27.930523, 25.563602>,  <41.419849, 27.733526, 25.564034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767975, 27.930523, 25.563602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068637, -0.119120, 0.990505,
		0.487689, -0.862126, -0.137475,
		0.870315, 0.492494, -0.001080,
		42.029068, 28.078270, 25.563278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785194, 27.431683, 26.104486>,  <41.419849, 27.733526, 25.564034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785194, 27.431683, 26.104486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.973942, 27.777775, 26.036703>,  <42.087189, 27.985430, 25.996033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.973942, 27.777775, 26.036703>,  <41.785194, 27.431683, 26.104486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973942, 27.777775, 26.036703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237396, 0.060417, 0.969532,
		0.849108, -0.497719, -0.176894,
		0.471867, 0.865232, -0.169457,
		42.115501, 28.037344, 25.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382381, 27.446182, 26.539032>,  <41.785194, 27.431683, 26.104486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382381, 27.446182, 26.539032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.333267, 27.833750, 26.453131>,  <42.303799, 28.066290, 26.401590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.333267, 27.833750, 26.453131>,  <42.382381, 27.446182, 26.539032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333267, 27.833750, 26.453131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178693, 0.234438, 0.955567,
		0.976213, 0.078959, -0.201926,
		-0.122790, 0.968919, -0.214752,
		42.296429, 28.124426, 26.388704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807491, 27.689821, 26.998655>,  <42.382381, 27.446182, 26.539032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807491, 27.689821, 26.998655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.620628, 28.028717, 26.897503>,  <42.508511, 28.232056, 26.836811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.620628, 28.028717, 26.897503>,  <42.807491, 27.689821, 26.998655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620628, 28.028717, 26.897503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030981, 0.301515, 0.952958,
		0.883631, 0.437347, -0.167103,
		-0.467157, 0.847240, -0.252879,
		42.480480, 28.282888, 26.821640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246052, 28.292906, 27.252209>,  <42.807491, 27.689821, 26.998655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246052, 28.292906, 27.252209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.867695, 28.405764, 27.188105>,  <42.640682, 28.473478, 27.149643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.867695, 28.405764, 27.188105>,  <43.246052, 28.292906, 27.252209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867695, 28.405764, 27.188105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038415, 0.393055, 0.918712,
		0.322199, 0.875159, -0.360949,
		-0.945892, 0.282142, -0.160261,
		42.583927, 28.490406, 27.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203354, 29.010302, 27.535347>,  <43.246052, 28.292906, 27.252209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203354, 29.010302, 27.535347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.849506, 28.826134, 27.505789>,  <42.637196, 28.715633, 27.488054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.849506, 28.826134, 27.505789>,  <43.203354, 29.010302, 27.535347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849506, 28.826134, 27.505789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203819, 0.239246, 0.949326,
		-0.419408, 0.854854, -0.305484,
		-0.884621, -0.460418, -0.073893,
		42.584122, 28.688007, 27.483622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741737, 29.512751, 27.694548>,  <43.203354, 29.010302, 27.535347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741737, 29.512751, 27.694548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.512836, 29.190485, 27.755783>,  <42.375496, 28.997126, 27.792524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.512836, 29.190485, 27.755783>,  <42.741737, 29.512751, 27.694548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512836, 29.190485, 27.755783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297057, 0.377640, 0.877009,
		-0.764387, 0.456392, -0.455433,
		-0.572250, -0.805664, 0.153088,
		42.341160, 28.948786, 27.801710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006062, 29.696093, 27.816341>,  <42.741737, 29.512751, 27.694548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006062, 29.696093, 27.816341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.094597, 29.360659, 28.015453>,  <42.147717, 29.159397, 28.134920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.094597, 29.360659, 28.015453>,  <42.006062, 29.696093, 27.816341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094597, 29.360659, 28.015453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292361, 0.429900, 0.854231,
		-0.930342, -0.334602, -0.150018,
		0.221334, -0.838587, 0.497779,
		42.160995, 29.109083, 28.164787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449287, 29.679718, 28.225443>,  <42.006062, 29.696093, 27.816341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449287, 29.679718, 28.225443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714176, 29.422539, 28.379368>,  <41.873108, 29.268230, 28.471724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714176, 29.422539, 28.379368>,  <41.449287, 29.679718, 28.225443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714176, 29.422539, 28.379368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265893, 0.278501, 0.922897,
		-0.700545, -0.713481, 0.013474,
		0.662222, -0.642948, 0.384812,
		41.912842, 29.229654, 28.494812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103455, 29.429092, 28.691824>,  <41.449287, 29.679718, 28.225443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103455, 29.429092, 28.691824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.469208, 29.334831, 28.823502>,  <41.688660, 29.278275, 28.902508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.469208, 29.334831, 28.823502>,  <41.103455, 29.429092, 28.691824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469208, 29.334831, 28.823502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249251, 0.313069, 0.916440,
		-0.319023, -0.920030, 0.227528,
		0.914383, -0.235654, 0.329195,
		41.743523, 29.264135, 28.922260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952446, 28.981979, 29.314577>,  <41.103455, 29.429092, 28.691824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952446, 28.981979, 29.314577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.323566, 29.131060, 29.307838>,  <41.546238, 29.220507, 29.303795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.323566, 29.131060, 29.307838>,  <40.952446, 28.981979, 29.314577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323566, 29.131060, 29.307838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090133, 0.267737, 0.959267,
		0.362028, -0.888489, 0.281999,
		0.927799, 0.372699, -0.016847,
		41.601906, 29.242868, 29.302784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349052, 28.795773, 29.942776>,  <40.952446, 28.981979, 29.314577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349052, 28.795773, 29.942776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473854, 29.141932, 29.785934>,  <41.548733, 29.349627, 29.691830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473854, 29.141932, 29.785934>,  <41.349052, 28.795773, 29.942776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473854, 29.141932, 29.785934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008874, 0.415342, 0.909622,
		0.950041, -0.280323, 0.137266,
		0.312000, 0.865396, -0.392104,
		41.567455, 29.401550, 29.668303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861286, 29.103703, 30.409231>,  <41.349052, 28.795773, 29.942776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861286, 29.103703, 30.409231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781021, 29.424223, 30.183790>,  <41.732861, 29.616535, 30.048525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781021, 29.424223, 30.183790>,  <41.861286, 29.103703, 30.409231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781021, 29.424223, 30.183790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004167, 0.574602, 0.818423,
		0.979651, 0.166579, -0.111965,
		-0.200668, 0.801302, -0.563603,
		41.720821, 29.664614, 30.014709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.100231, 31.306410, 25.590946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.719288, 31.259539, 25.478313>,  <44.490723, 31.231417, 25.410734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.719288, 31.259539, 25.478313>,  <45.100231, 31.306410, 25.590946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719288, 31.259539, 25.478313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285240, -0.669054, -0.686298,
		-0.107975, -0.733918, 0.670601,
		-0.952355, -0.117179, -0.281584,
		44.433582, 31.224384, 25.393839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049316, 30.629362, 25.399271>,  <45.100231, 31.306410, 25.590946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049316, 30.629362, 25.399271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731281, 30.805416, 25.232359>,  <44.540462, 30.911049, 25.132212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731281, 30.805416, 25.232359>,  <45.049316, 30.629362, 25.399271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731281, 30.805416, 25.232359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034248, -0.654335, -0.755429,
		-0.605528, -0.614923, 0.505179,
		-0.795087, 0.440132, -0.417278,
		44.492756, 30.937456, 25.107174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696293, 30.077686, 25.098349>,  <45.049316, 30.629362, 25.399271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696293, 30.077686, 25.098349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.599754, 30.419926, 24.915176>,  <44.541832, 30.625269, 24.805273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.599754, 30.419926, 24.915176>,  <44.696293, 30.077686, 25.098349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599754, 30.419926, 24.915176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134295, -0.437895, -0.888939,
		-0.961101, -0.276044, -0.009216,
		-0.241351, 0.855597, -0.457933,
		44.527348, 30.676605, 24.777796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111977, 29.968359, 24.752836>,  <44.696293, 30.077686, 25.098349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111977, 29.968359, 24.752836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.278938, 30.277420, 24.561510>,  <44.379116, 30.462856, 24.446714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.278938, 30.277420, 24.561510>,  <44.111977, 29.968359, 24.752836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278938, 30.277420, 24.561510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, -0.521460, -0.853186,
		-0.908638, 0.362061, -0.208061,
		0.417401, 0.772652, -0.478315,
		44.404160, 30.509216, 24.418016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741432, 29.933439, 24.212040>,  <44.111977, 29.968359, 24.752836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741432, 29.933439, 24.212040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062023, 30.151180, 24.112989>,  <44.254375, 30.281826, 24.053558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062023, 30.151180, 24.112989>,  <43.741432, 29.933439, 24.212040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062023, 30.151180, 24.112989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021445, -0.387645, -0.921559,
		-0.597646, 0.743915, -0.299013,
		0.801473, 0.544354, -0.247628,
		44.302464, 30.314487, 24.038700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546734, 30.228312, 23.620455>,  <43.741432, 29.933439, 24.212040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546734, 30.228312, 23.620455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.944675, 30.266594, 23.633715>,  <44.183441, 30.289564, 23.641670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.944675, 30.266594, 23.633715>,  <43.546734, 30.228312, 23.620455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944675, 30.266594, 23.633715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051157, -0.192358, -0.979990,
		-0.087414, 0.976647, -0.196265,
		0.994858, 0.095705, 0.033148,
		44.243134, 30.295305, 23.643660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733227, 30.732059, 23.143442>,  <43.546734, 30.228312, 23.620455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733227, 30.732059, 23.143442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062702, 30.507504, 23.175381>,  <44.260387, 30.372770, 23.194544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062702, 30.507504, 23.175381>,  <43.733227, 30.732059, 23.143442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062702, 30.507504, 23.175381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089766, -0.268132, -0.959191,
		0.559887, 0.782910, -0.271252,
		0.823692, -0.561388, 0.079845,
		44.309811, 30.339087, 23.199335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015541, 30.684183, 22.452223>,  <43.733227, 30.732059, 23.143442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015541, 30.684183, 22.452223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.248924, 30.409369, 22.625454>,  <44.388954, 30.244480, 22.729393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.248924, 30.409369, 22.625454>,  <44.015541, 30.684183, 22.452223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248924, 30.409369, 22.625454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301824, -0.311629, -0.900994,
		0.753977, 0.656404, 0.025542,
		0.583456, -0.687038, 0.433080,
		44.423962, 30.203257, 22.755379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610184, 30.745939, 22.056240>,  <44.015541, 30.684183, 22.452223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610184, 30.745939, 22.056240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589611, 30.378103, 22.212038>,  <44.577267, 30.157402, 22.305517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589611, 30.378103, 22.212038>,  <44.610184, 30.745939, 22.056240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589611, 30.378103, 22.212038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114377, -0.392869, -0.912454,
		0.992105, -0.002378, 0.125386,
		-0.051430, -0.919591, 0.389495,
		44.574181, 30.102226, 22.328886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212845, 30.375792, 21.875324>,  <44.610184, 30.745939, 22.056240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212845, 30.375792, 21.875324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946693, 30.088503, 21.956749>,  <44.787003, 29.916130, 22.005604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946693, 30.088503, 21.956749>,  <45.212845, 30.375792, 21.875324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946693, 30.088503, 21.956749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124587, -0.375700, -0.918329,
		0.736041, -0.585671, 0.339462,
		-0.665374, -0.718220, 0.203564,
		44.747082, 29.873037, 22.017818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487659, 29.782925, 21.623768>,  <45.212845, 30.375792, 21.875324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487659, 29.782925, 21.623768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.110996, 29.653051, 21.659254>,  <44.884998, 29.575129, 21.680546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.110996, 29.653051, 21.659254>,  <45.487659, 29.782925, 21.623768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110996, 29.653051, 21.659254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100195, -0.522022, -0.847027,
		0.321325, -0.788717, 0.524095,
		-0.941653, -0.324682, 0.088713,
		44.828499, 29.555647, 21.685867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512714, 29.062323, 21.346785>,  <45.487659, 29.782925, 21.623768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512714, 29.062323, 21.346785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.128498, 29.172977, 21.335188>,  <44.897968, 29.239370, 21.328230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.128498, 29.172977, 21.335188>,  <45.512714, 29.062323, 21.346785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128498, 29.172977, 21.335188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108746, -0.469418, -0.876254,
		-0.256012, -0.838522, 0.480977,
		-0.960538, 0.276636, -0.028990,
		44.840336, 29.255968, 21.326490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184914, 28.489756, 21.048683>,  <45.512714, 29.062323, 21.346785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184914, 28.489756, 21.048683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949715, 28.808710, 20.994366>,  <44.808598, 29.000082, 20.961775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949715, 28.808710, 20.994366>,  <45.184914, 28.489756, 21.048683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949715, 28.808710, 20.994366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325060, -0.386672, -0.863030,
		-0.740676, -0.463314, 0.486559,
		-0.587993, 0.797386, -0.135794,
		44.773315, 29.047926, 20.953629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409260, 28.345455, 20.963526>,  <45.184914, 28.489756, 21.048683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409260, 28.345455, 20.963526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.519257, 28.666218, 20.751366>,  <44.585255, 28.858675, 20.624069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.519257, 28.666218, 20.751366>,  <44.409260, 28.345455, 20.963526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519257, 28.666218, 20.751366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387434, -0.412470, -0.824478,
		-0.879928, 0.432223, 0.197258,
		0.274995, 0.801905, -0.530401,
		44.601757, 28.906790, 20.592245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331608, 27.933418, 20.282417>,  <44.409260, 28.345455, 20.963526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331608, 27.933418, 20.282417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.058201, 27.674124, 20.148195>,  <43.894157, 27.518547, 20.067663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.058201, 27.674124, 20.148195>,  <44.331608, 27.933418, 20.282417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058201, 27.674124, 20.148195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404655, -0.046088, 0.913307,
		-0.607503, 0.760044, -0.230810,
		-0.683516, -0.648236, -0.335554,
		43.853146, 27.479652, 20.047529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648354, 28.241127, 20.399223>,  <44.331608, 27.933418, 20.282417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648354, 28.241127, 20.399223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631557, 27.841585, 20.390005>,  <43.621479, 27.601860, 20.384474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631557, 27.841585, 20.390005>,  <43.648354, 28.241127, 20.399223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631557, 27.841585, 20.390005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428552, -0.002831, 0.903513,
		-0.902541, 0.047814, -0.427941,
		-0.041989, -0.998852, -0.023046,
		43.618961, 27.541929, 20.383091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014038, 28.073879, 20.816208>,  <43.648354, 28.241127, 20.399223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014038, 28.073879, 20.816208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195393, 27.717739, 20.799639>,  <43.304207, 27.504055, 20.789698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195393, 27.717739, 20.799639>,  <43.014038, 28.073879, 20.816208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195393, 27.717739, 20.799639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236319, -0.164888, 0.957583,
		-0.859415, -0.424366, -0.285164,
		0.453386, -0.890351, -0.041422,
		43.331409, 27.450634, 20.787212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525970, 27.619678, 20.982832>,  <43.014038, 28.073879, 20.816208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525970, 27.619678, 20.982832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.853237, 27.399765, 21.050163>,  <43.049599, 27.267817, 21.090561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.853237, 27.399765, 21.050163>,  <42.525970, 27.619678, 20.982832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853237, 27.399765, 21.050163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347421, -0.239439, 0.906624,
		-0.458144, -0.800254, -0.386909,
		0.818170, -0.549784, 0.168327,
		43.098690, 27.234829, 21.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300289, 26.980673, 21.321384>,  <42.525970, 27.619678, 20.982832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300289, 26.980673, 21.321384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.688648, 27.016825, 21.410107>,  <42.921661, 27.038515, 21.463341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.688648, 27.016825, 21.410107>,  <42.300289, 26.980673, 21.321384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688648, 27.016825, 21.410107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211220, -0.113548, 0.970821,
		0.112929, -0.989413, -0.091153,
		0.970893, 0.090381, 0.221807,
		42.979916, 27.043940, 21.476648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436447, 26.414743, 21.764160>,  <42.300289, 26.980673, 21.321384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436447, 26.414743, 21.764160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700363, 26.709017, 21.825418>,  <42.858711, 26.885580, 21.862173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700363, 26.709017, 21.825418>,  <42.436447, 26.414743, 21.764160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700363, 26.709017, 21.825418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168852, -0.053445, 0.984191,
		0.732238, -0.675214, 0.088959,
		0.659786, 0.735683, 0.153146,
		42.898300, 26.929722, 21.871363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660545, 26.283716, 22.416935>,  <42.436447, 26.414743, 21.764160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660545, 26.283716, 22.416935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.757576, 26.665743, 22.348816>,  <42.815796, 26.894958, 22.307945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.757576, 26.665743, 22.348816>,  <42.660545, 26.283716, 22.416935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757576, 26.665743, 22.348816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144576, 0.209168, 0.967133,
		0.959298, -0.209985, 0.188820,
		0.242578, 0.955068, -0.170295,
		42.830349, 26.952263, 22.297728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885456, 26.450066, 22.963257>,  <42.660545, 26.283716, 22.416935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885456, 26.450066, 22.963257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867237, 26.815720, 22.802118>,  <42.856308, 27.035112, 22.705435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867237, 26.815720, 22.802118>,  <42.885456, 26.450066, 22.963257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867237, 26.815720, 22.802118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111771, 0.396071, 0.911392,
		0.992690, 0.086536, 0.084135,
		-0.045545, 0.914133, -0.402848,
		42.853573, 27.089960, 22.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425591, 26.939468, 23.240067>,  <42.885456, 26.450066, 22.963257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425591, 26.939468, 23.240067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135696, 27.171682, 23.091618>,  <42.961758, 27.311010, 23.002548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135696, 27.171682, 23.091618>,  <43.425591, 26.939468, 23.240067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135696, 27.171682, 23.091618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, 0.370543, 0.912993,
		0.667540, 0.725037, -0.169443,
		-0.724740, 0.580533, -0.371125,
		42.918274, 27.345842, 22.980280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501472, 27.547789, 23.605745>,  <43.425591, 26.939468, 23.240067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501472, 27.547789, 23.605745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.129028, 27.509140, 23.465065>,  <42.905563, 27.485950, 23.380657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.129028, 27.509140, 23.465065>,  <43.501472, 27.547789, 23.605745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129028, 27.509140, 23.465065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363842, 0.313445, 0.877138,
		0.025487, 0.944678, -0.327008,
		-0.931112, -0.096624, -0.351703,
		42.849693, 27.480152, 23.359554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266853, 28.298208, 23.486547>,  <43.501472, 27.547789, 23.605745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266853, 28.298208, 23.486547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923580, 28.094608, 23.513212>,  <42.717617, 27.972448, 23.529211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923580, 28.094608, 23.513212>,  <43.266853, 28.298208, 23.486547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923580, 28.094608, 23.513212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292717, 0.591881, 0.750995,
		-0.421710, 0.624978, -0.656935,
		-0.858182, -0.508998, 0.066660,
		42.666126, 27.941910, 23.533211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727402, 28.806688, 23.629461>,  <43.266853, 28.298208, 23.486547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727402, 28.806688, 23.629461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578899, 28.452374, 23.740854>,  <42.489799, 28.239784, 23.807690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578899, 28.452374, 23.740854>,  <42.727402, 28.806688, 23.629461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578899, 28.452374, 23.740854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267845, 0.389332, 0.881294,
		-0.889061, 0.252593, -0.381794,
		-0.371254, -0.885787, 0.278484,
		42.467522, 28.186638, 23.824400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143581, 29.003088, 24.010012>,  <42.727402, 28.806688, 23.629461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143581, 29.003088, 24.010012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.236851, 28.627655, 24.111753>,  <42.292812, 28.402395, 24.172798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.236851, 28.627655, 24.111753>,  <42.143581, 29.003088, 24.010012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236851, 28.627655, 24.111753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248208, 0.195456, 0.948784,
		-0.940225, -0.284363, -0.187388,
		0.233173, -0.938581, 0.254354,
		42.306801, 28.346081, 24.188059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665871, 28.766251, 24.500757>,  <42.143581, 29.003088, 24.010012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665871, 28.766251, 24.500757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.968323, 28.510981, 24.558727>,  <42.149796, 28.357819, 24.593510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.968323, 28.510981, 24.558727>,  <41.665871, 28.766251, 24.500757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968323, 28.510981, 24.558727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131615, 0.068633, 0.988922,
		-0.641051, -0.766827, -0.032098,
		0.756129, -0.638174, 0.144924,
		42.195160, 28.319529, 24.602205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055603, 28.524300, 24.108253>,  <41.665871, 28.766251, 24.500757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055603, 28.524300, 24.108253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.656567, 28.549921, 24.097530>,  <40.417145, 28.565294, 24.091097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.656567, 28.549921, 24.097530>,  <41.055603, 28.524300, 24.108253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656567, 28.549921, 24.097530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024371, -0.038496, -0.998961,
		-0.065024, -0.997203, 0.036842,
		-0.997586, 0.064059, -0.026806,
		40.357292, 28.569136, 24.089489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876175, 27.925026, 23.801315>,  <41.055603, 28.524300, 24.108253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876175, 27.925026, 23.801315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571102, 28.175240, 23.735563>,  <40.388058, 28.325369, 23.696112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571102, 28.175240, 23.735563>,  <40.876175, 27.925026, 23.801315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571102, 28.175240, 23.735563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124037, -0.107973, -0.986386,
		-0.634768, -0.772688, 0.004760,
		-0.762682, 0.625536, -0.164380,
		40.342297, 28.362900, 23.686249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404423, 27.667110, 23.387917>,  <40.876175, 27.925026, 23.801315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404423, 27.667110, 23.387917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308655, 28.049292, 23.318882>,  <40.251194, 28.278601, 23.277462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308655, 28.049292, 23.318882>,  <40.404423, 27.667110, 23.387917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308655, 28.049292, 23.318882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129047, -0.144864, -0.981000,
		-0.962303, -0.257139, -0.088616,
		-0.239416, 0.955455, -0.172586,
		40.236832, 28.335928, 23.267107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937561, 27.655375, 22.814156>,  <40.404423, 27.667110, 23.387917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937561, 27.655375, 22.814156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097923, 28.021233, 22.834946>,  <40.194141, 28.240747, 22.847420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097923, 28.021233, 22.834946>,  <39.937561, 27.655375, 22.814156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097923, 28.021233, 22.834946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180337, -0.023165, -0.983332,
		-0.898194, 0.403598, -0.174231,
		0.400907, 0.914643, 0.051977,
		40.218197, 28.295626, 22.850538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550819, 28.136078, 22.429340>,  <39.937561, 27.655375, 22.814156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550819, 28.136078, 22.429340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.906719, 28.318163, 22.442778>,  <40.120258, 28.427414, 22.450840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.906719, 28.318163, 22.442778>,  <39.550819, 28.136078, 22.429340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906719, 28.318163, 22.442778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009342, 0.091744, -0.995739,
		-0.456354, 0.885644, 0.085881,
		0.889749, 0.455211, 0.033594,
		40.173645, 28.454727, 22.452856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538319, 28.487568, 21.804802>,  <39.550819, 28.136078, 22.429340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538319, 28.487568, 21.804802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922920, 28.522615, 21.908976>,  <40.153683, 28.543644, 21.971479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922920, 28.522615, 21.908976>,  <39.538319, 28.487568, 21.804802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922920, 28.522615, 21.908976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248121, 0.130399, -0.959912,
		-0.118069, 0.987582, 0.103639,
		0.961507, 0.087620, 0.260436,
		40.211372, 28.548901, 21.987106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823792, 29.113409, 21.414717>,  <39.538319, 28.487568, 21.804802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823792, 29.113409, 21.414717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112671, 28.858521, 21.522333>,  <40.285999, 28.705587, 21.586903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112671, 28.858521, 21.522333>,  <39.823792, 29.113409, 21.414717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112671, 28.858521, 21.522333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365792, 0.021728, -0.930443,
		0.587052, 0.770375, 0.248782,
		0.722196, -0.637221, 0.269041,
		40.329330, 28.667355, 21.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416531, 29.723253, 21.276867>,  <39.823792, 29.113409, 21.414717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416531, 29.723253, 21.276867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123680, 29.545744, 21.070154>,  <38.947971, 29.439238, 20.946127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123680, 29.545744, 21.070154>,  <39.416531, 29.723253, 21.276867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123680, 29.545744, 21.070154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499988, -0.165137, 0.850142,
		-0.462610, 0.880792, -0.100980,
		-0.732123, -0.443773, -0.516780,
		38.904045, 29.412611, 20.915121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903927, 30.099606, 21.432014>,  <39.416531, 29.723253, 21.276867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903927, 30.099606, 21.432014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752773, 29.751173, 21.306526>,  <38.662079, 29.542114, 21.231234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752773, 29.751173, 21.306526>,  <38.903927, 30.099606, 21.432014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752773, 29.751173, 21.306526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582191, -0.039903, 0.812072,
		-0.719899, 0.489517, -0.492056,
		-0.377888, -0.871081, -0.313719,
		38.639408, 29.489849, 21.212410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169239, 30.151443, 21.559704>,  <38.903927, 30.099606, 21.432014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169239, 30.151443, 21.559704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222244, 29.756908, 21.520555>,  <38.254047, 29.520187, 21.497066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222244, 29.756908, 21.520555>,  <38.169239, 30.151443, 21.559704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222244, 29.756908, 21.520555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407894, -0.144260, 0.901560,
		-0.903362, -0.079545, -0.421437,
		0.132511, -0.986337, -0.097873,
		38.261997, 29.461008, 21.491194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422176, 29.748823, 21.517347>,  <38.169239, 30.151443, 21.559704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422176, 29.748823, 21.517347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723122, 29.532724, 21.668121>,  <37.903690, 29.403065, 21.758587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723122, 29.532724, 21.668121>,  <37.422176, 29.748823, 21.517347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723122, 29.532724, 21.668121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571072, -0.249678, 0.782009,
		-0.328365, -0.803614, -0.496368,
		0.752365, -0.540246, 0.376936,
		37.948830, 29.370651, 21.781202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077808, 29.220768, 21.670422>,  <37.422176, 29.748823, 21.517347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077808, 29.220768, 21.670422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424057, 29.225328, 21.870651>,  <37.631805, 29.228065, 21.990789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424057, 29.225328, 21.870651>,  <37.077808, 29.220768, 21.670422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424057, 29.225328, 21.870651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494234, -0.140764, 0.857857,
		0.080246, -0.989977, -0.116212,
		0.865618, 0.011404, 0.500576,
		37.683743, 29.228748, 22.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857597, 28.985214, 22.245461>,  <37.077808, 29.220768, 21.670422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857597, 28.985214, 22.245461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224651, 29.058479, 22.386538>,  <37.444885, 29.102438, 22.471184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224651, 29.058479, 22.386538>,  <36.857597, 28.985214, 22.245461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224651, 29.058479, 22.386538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339351, -0.100749, 0.935249,
		0.206837, -0.977906, -0.030294,
		0.917638, 0.183164, 0.352693,
		37.499943, 29.113428, 22.492346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950348, 28.426302, 22.723366>,  <36.857597, 28.985214, 22.245461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950348, 28.426302, 22.723366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190708, 28.732534, 22.815279>,  <37.334923, 28.916275, 22.870428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190708, 28.732534, 22.815279>,  <36.950348, 28.426302, 22.723366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190708, 28.732534, 22.815279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323233, -0.030185, 0.945838,
		0.731053, -0.642629, 0.229323,
		0.600901, 0.765583, 0.229785,
		37.370979, 28.962210, 22.884214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.255814, 30.840336, 19.609222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.462830, 30.712345, 19.926655>,  <42.587040, 30.635551, 20.117113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.462830, 30.712345, 19.926655>,  <42.255814, 30.840336, 19.609222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462830, 30.712345, 19.926655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473198, 0.665690, 0.577010,
		-0.712907, -0.674145, 0.193108,
		0.517539, -0.319976, 0.793579,
		42.618092, 30.616352, 20.164728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770500, 30.759182, 20.197636>,  <42.255814, 30.840336, 19.609222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770500, 30.759182, 20.197636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128265, 30.781981, 20.375071>,  <42.342926, 30.795660, 20.481531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128265, 30.781981, 20.375071>,  <41.770500, 30.759182, 20.197636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128265, 30.781981, 20.375071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388699, 0.589634, 0.707986,
		-0.221203, -0.805657, 0.549533,
		0.894417, 0.056994, 0.443587,
		42.396591, 30.799078, 20.508146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717285, 30.528120, 20.817741>,  <41.770500, 30.759182, 20.197636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717285, 30.528120, 20.817741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.063225, 30.714226, 20.893179>,  <42.270790, 30.825890, 20.938440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.063225, 30.714226, 20.893179>,  <41.717285, 30.528120, 20.817741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063225, 30.714226, 20.893179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450886, 0.554655, 0.699328,
		0.220767, -0.689847, 0.689473,
		0.864849, 0.465262, 0.188593,
		42.322678, 30.853806, 20.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895416, 30.471268, 21.532110>,  <41.717285, 30.528120, 20.817741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895416, 30.471268, 21.532110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.090126, 30.801617, 21.418280>,  <42.206951, 30.999826, 21.349981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.090126, 30.801617, 21.418280>,  <41.895416, 30.471268, 21.532110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090126, 30.801617, 21.418280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333188, 0.476692, 0.813481,
		0.807488, -0.301164, 0.507212,
		0.486775, 0.825873, -0.284579,
		42.236160, 31.049377, 21.332907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160057, 30.790051, 22.177053>,  <41.895416, 30.471268, 21.532110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160057, 30.790051, 22.177053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141781, 31.058746, 21.881302>,  <42.130814, 31.219963, 21.703852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141781, 31.058746, 21.881302>,  <42.160057, 30.790051, 22.177053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141781, 31.058746, 21.881302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383510, 0.671638, 0.633894,
		0.922406, 0.312522, 0.226931,
		-0.045690, 0.671738, -0.739378,
		42.128075, 31.260267, 21.659489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482433, 31.382275, 22.453016>,  <42.160057, 30.790051, 22.177053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482433, 31.382275, 22.453016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254791, 31.502878, 22.147020>,  <42.118206, 31.575239, 21.963423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254791, 31.502878, 22.147020>,  <42.482433, 31.382275, 22.453016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254791, 31.502878, 22.147020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378171, 0.730138, 0.569109,
		0.730138, 0.613182, -0.301507,
		-0.569109, 0.301507, -0.764989,
		42.084057, 31.593330, 21.917524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537971, 32.073528, 22.493919>,  <42.482433, 31.382275, 22.453016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537971, 32.073528, 22.493919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217705, 31.988752, 22.269773>,  <42.025543, 31.937885, 22.135286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217705, 31.988752, 22.269773>,  <42.537971, 32.073528, 22.493919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217705, 31.988752, 22.269773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547428, 0.638842, 0.540558,
		0.243418, 0.739568, -0.627524,
		-0.800669, -0.211942, -0.560366,
		41.977505, 31.925169, 22.101664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249386, 32.688969, 22.298328>,  <42.537971, 32.073528, 22.493919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249386, 32.688969, 22.298328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.941116, 32.441849, 22.235870>,  <41.756153, 32.293575, 22.198397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.941116, 32.441849, 22.235870>,  <42.249386, 32.688969, 22.298328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941116, 32.441849, 22.235870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536249, 0.496407, 0.682655,
		-0.344234, 0.609837, -0.713864,
		-0.770675, -0.617802, -0.156144,
		41.709915, 32.256508, 22.189028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701992, 33.137554, 22.218365>,  <42.249386, 32.688969, 22.298328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701992, 33.137554, 22.218365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533222, 32.785515, 22.305456>,  <41.431961, 32.574291, 22.357712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533222, 32.785515, 22.305456>,  <41.701992, 33.137554, 22.218365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533222, 32.785515, 22.305456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541611, 0.437267, 0.717952,
		-0.727074, 0.184998, -0.661165,
		-0.421925, -0.880099, 0.217729,
		41.406643, 32.521484, 22.370775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983074, 33.297638, 22.149954>,  <41.701992, 33.137554, 22.218365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983074, 33.297638, 22.149954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.002884, 32.969593, 22.377975>,  <41.014771, 32.772766, 22.514788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.002884, 32.969593, 22.377975>,  <40.983074, 33.297638, 22.149954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002884, 32.969593, 22.377975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585169, 0.438710, 0.681990,
		-0.809398, -0.367350, -0.458181,
		0.049520, -0.820115, 0.570053,
		41.017738, 32.723560, 22.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354889, 33.238914, 22.468422>,  <40.983074, 33.297638, 22.149954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354889, 33.238914, 22.468422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532043, 32.962044, 22.696367>,  <40.638336, 32.795921, 22.833134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532043, 32.962044, 22.696367>,  <40.354889, 33.238914, 22.468422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532043, 32.962044, 22.696367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678968, 0.156167, 0.717367,
		-0.585538, -0.704629, -0.400802,
		0.442885, -0.692177, 0.569862,
		40.664909, 32.754391, 22.867327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826717, 33.033161, 22.766054>,  <40.354889, 33.238914, 22.468422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826717, 33.033161, 22.766054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146698, 32.930065, 22.982809>,  <40.338688, 32.868206, 23.112862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146698, 32.930065, 22.982809>,  <39.826717, 33.033161, 22.766054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146698, 32.930065, 22.982809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520031, 0.152805, 0.840368,
		-0.299402, -0.954054, -0.011797,
		0.799954, -0.257743, 0.541888,
		40.386684, 32.852741, 23.145376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417660, 32.412498, 22.493940>,  <39.826717, 33.033161, 22.766054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417660, 32.412498, 22.493940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.044632, 32.436043, 22.351477>,  <38.820816, 32.450169, 22.265999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.044632, 32.436043, 22.351477>,  <39.417660, 32.412498, 22.493940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044632, 32.436043, 22.351477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353400, -0.052392, -0.934004,
		-0.073641, -0.996890, 0.028056,
		-0.932569, 0.058866, -0.356159,
		38.764862, 32.453701, 22.244629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431515, 31.920530, 22.059813>,  <39.417660, 32.412498, 22.493940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431515, 31.920530, 22.059813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138199, 32.172775, 21.958134>,  <38.962208, 32.324123, 21.897127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138199, 32.172775, 21.958134>,  <39.431515, 31.920530, 22.059813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138199, 32.172775, 21.958134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242194, -0.107078, -0.964301,
		-0.635317, -0.768677, -0.074211,
		-0.733290, 0.630610, -0.254198,
		38.918213, 32.361958, 21.881874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068691, 31.540661, 21.530512>,  <39.431515, 31.920530, 22.059813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068691, 31.540661, 21.530512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990913, 31.932171, 21.504629>,  <38.944248, 32.167076, 21.489100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990913, 31.932171, 21.504629>,  <39.068691, 31.540661, 21.530512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990913, 31.932171, 21.504629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214246, -0.021996, -0.976532,
		-0.957231, -0.203742, -0.205422,
		-0.194442, 0.978778, -0.064707,
		38.932579, 32.225803, 21.485218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693714, 31.644869, 20.914797>,  <39.068691, 31.540661, 21.530512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693714, 31.644869, 20.914797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822556, 32.018623, 20.975679>,  <38.899860, 32.242878, 21.012209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822556, 32.018623, 20.975679>,  <38.693714, 31.644869, 20.914797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822556, 32.018623, 20.975679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144259, 0.110453, -0.983356,
		-0.935648, 0.338702, -0.099216,
		0.322106, 0.934388, 0.152206,
		38.919186, 32.298939, 21.021341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401566, 32.057037, 20.475311>,  <38.693714, 31.644869, 20.914797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401566, 32.057037, 20.475311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713104, 32.295074, 20.554569>,  <38.900028, 32.437897, 20.602123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713104, 32.295074, 20.554569>,  <38.401566, 32.057037, 20.475311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713104, 32.295074, 20.554569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128371, 0.157982, -0.979062,
		-0.613938, 0.787974, 0.046650,
		0.778846, 0.595095, 0.198145,
		38.946758, 32.473602, 20.614012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357849, 32.481491, 20.007660>,  <38.401566, 32.057037, 20.475311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357849, 32.481491, 20.007660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731709, 32.554512, 20.129717>,  <38.956024, 32.598324, 20.202951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731709, 32.554512, 20.129717>,  <38.357849, 32.481491, 20.007660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731709, 32.554512, 20.129717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281094, 0.146239, -0.948473,
		-0.217773, 0.972259, 0.085366,
		0.934645, 0.182556, 0.305143,
		39.012100, 32.609280, 20.221260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621960, 33.136562, 19.597721>,  <38.357849, 32.481491, 20.007660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621960, 33.136562, 19.597721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938160, 32.920666, 19.713507>,  <39.127880, 32.791126, 19.782978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938160, 32.920666, 19.713507>,  <38.621960, 33.136562, 19.597721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938160, 32.920666, 19.713507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340672, -0.005265, -0.940167,
		0.508973, 0.841813, 0.179713,
		0.790499, -0.539743, 0.289462,
		39.175308, 32.758743, 19.800344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216568, 33.449863, 19.213486>,  <38.621960, 33.136562, 19.597721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216568, 33.449863, 19.213486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310188, 33.081100, 19.336967>,  <39.366360, 32.859840, 19.411057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310188, 33.081100, 19.336967>,  <39.216568, 33.449863, 19.213486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310188, 33.081100, 19.336967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359911, -0.212805, -0.908393,
		0.903152, 0.323719, 0.281998,
		0.234053, -0.921911, 0.308705,
		39.380405, 32.804527, 19.429579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962769, 33.301189, 18.985952>,  <39.216568, 33.449863, 19.213486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962769, 33.301189, 18.985952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793209, 32.946980, 19.062017>,  <39.691475, 32.734455, 19.107656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793209, 32.946980, 19.062017>,  <39.962769, 33.301189, 18.985952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793209, 32.946980, 19.062017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418765, -0.377797, -0.825776,
		0.803085, -0.270411, 0.530972,
		-0.423899, -0.885521, 0.190164,
		39.666039, 32.681324, 19.119066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462299, 32.725864, 18.913046>,  <39.962769, 33.301189, 18.985952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462299, 32.725864, 18.913046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.105125, 32.549976, 18.874445>,  <39.890820, 32.444443, 18.851284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.105125, 32.549976, 18.874445>,  <40.462299, 32.725864, 18.913046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105125, 32.549976, 18.874445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290888, -0.399961, -0.869146,
		0.343583, -0.804163, 0.485049,
		-0.892936, -0.439719, -0.096502,
		39.837246, 32.418060, 18.845495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635738, 32.029869, 18.713190>,  <40.462299, 32.725864, 18.913046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635738, 32.029869, 18.713190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253834, 32.060795, 18.598335>,  <40.024689, 32.079350, 18.529423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253834, 32.060795, 18.598335>,  <40.635738, 32.029869, 18.713190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253834, 32.060795, 18.598335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192837, -0.574054, -0.795786,
		-0.226359, -0.815159, 0.533177,
		-0.954765, 0.077317, -0.287135,
		39.967403, 32.083988, 18.512196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464268, 31.354902, 18.348116>,  <40.635738, 32.029869, 18.713190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464268, 31.354902, 18.348116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168358, 31.597919, 18.232439>,  <39.990814, 31.743731, 18.163033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168358, 31.597919, 18.232439>,  <40.464268, 31.354902, 18.348116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168358, 31.597919, 18.232439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120520, -0.542485, -0.831375,
		-0.661979, -0.580172, 0.474536,
		-0.739769, 0.607544, -0.289191,
		39.946426, 31.780182, 18.145681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058800, 30.983229, 17.958073>,  <40.464268, 31.354902, 18.348116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058800, 30.983229, 17.958073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.893959, 31.329439, 17.844208>,  <39.795055, 31.537167, 17.775888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.893959, 31.329439, 17.844208>,  <40.058800, 30.983229, 17.958073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893959, 31.329439, 17.844208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046215, -0.331879, -0.942189,
		-0.909964, -0.375124, 0.176769,
		-0.412104, 0.865528, -0.284662,
		39.770329, 31.589098, 17.758810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470695, 30.773142, 17.527664>,  <40.058800, 30.983229, 17.958073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470695, 30.773142, 17.527664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.586590, 31.149582, 17.457945>,  <39.656128, 31.375446, 17.416113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.586590, 31.149582, 17.457945>,  <39.470695, 30.773142, 17.527664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586590, 31.149582, 17.457945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132808, -0.140815, -0.981088,
		-0.947847, 0.307407, 0.084186,
		0.289739, 0.941101, -0.174298,
		39.673512, 31.431911, 17.405655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899288, 30.544188, 18.015219>,  <39.470695, 30.773142, 17.527664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899288, 30.544188, 18.015219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245705, 30.362984, 18.099838>,  <39.453556, 30.254261, 18.150610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245705, 30.362984, 18.099838>,  <38.899288, 30.544188, 18.015219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245705, 30.362984, 18.099838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466069, -0.578341, 0.669553,
		-0.180966, -0.678458, -0.712001,
		0.866044, -0.453008, 0.211548,
		39.505516, 30.227081, 18.163303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671665, 29.889011, 18.314764>,  <38.899288, 30.544188, 18.015219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671665, 29.889011, 18.314764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047981, 29.929676, 18.444122>,  <39.273769, 29.954075, 18.521738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047981, 29.929676, 18.444122>,  <38.671665, 29.889011, 18.314764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047981, 29.929676, 18.444122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238333, -0.480058, 0.844240,
		0.241078, -0.871326, -0.427402,
		0.940786, 0.101664, 0.323397,
		39.330215, 29.960175, 18.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977913, 29.243376, 18.435410>,  <38.671665, 29.889011, 18.314764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977913, 29.243376, 18.435410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.167576, 29.504492, 18.671728>,  <39.281372, 29.661161, 18.813520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.167576, 29.504492, 18.671728>,  <38.977913, 29.243376, 18.435410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167576, 29.504492, 18.671728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220155, -0.561802, 0.797440,
		0.852472, -0.508178, -0.122667,
		0.474156, 0.652790, 0.590798,
		39.309822, 29.700329, 18.848967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051128, 28.840818, 18.940790>,  <38.977913, 29.243376, 18.435410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051128, 28.840818, 18.940790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.183800, 29.181665, 19.102722>,  <39.263401, 29.386173, 19.199883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.183800, 29.181665, 19.102722>,  <39.051128, 28.840818, 18.940790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183800, 29.181665, 19.102722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254635, -0.332334, 0.908138,
		0.908379, -0.404291, 0.106751,
		0.331675, 0.852117, 0.404832,
		39.283302, 29.437300, 19.224173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362236, 28.637167, 19.531553>,  <39.051128, 28.840818, 18.940790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362236, 28.637167, 19.531553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293774, 29.028206, 19.580559>,  <39.252697, 29.262829, 19.609962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293774, 29.028206, 19.580559>,  <39.362236, 28.637167, 19.531553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293774, 29.028206, 19.580559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240763, -0.162078, 0.956956,
		0.955374, 0.134288, 0.263109,
		-0.171152, 0.977598, 0.122513,
		39.242428, 29.321486, 19.617313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675320, 28.794577, 20.099825>,  <39.362236, 28.637167, 19.531553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675320, 28.794577, 20.099825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410465, 29.094193, 20.090759>,  <39.251553, 29.273962, 20.085320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410465, 29.094193, 20.090759>,  <39.675320, 28.794577, 20.099825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410465, 29.094193, 20.090759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214454, -0.160419, 0.963471,
		0.718041, 0.642812, 0.266854,
		-0.662138, 0.749039, -0.022666,
		39.211823, 29.318905, 20.083960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782810, 29.218269, 20.716408>,  <39.675320, 28.794577, 20.099825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782810, 29.218269, 20.716408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409775, 29.287088, 20.589491>,  <39.185951, 29.328381, 20.513340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409775, 29.287088, 20.589491>,  <39.782810, 29.218269, 20.716408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409775, 29.287088, 20.589491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308752, 0.075037, 0.948178,
		0.186941, 0.982226, -0.016859,
		-0.932591, 0.172048, -0.317292,
		39.129997, 29.338703, 20.494303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473351, 29.323313, 21.063892>,  <39.782810, 29.218269, 20.716408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473351, 29.323313, 21.063892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537346, 28.934774, 21.134193>,  <40.575745, 28.701651, 21.176374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537346, 28.934774, 21.134193>,  <40.473351, 29.323313, 21.063892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537346, 28.934774, 21.134193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189291, -0.144550, -0.971223,
		0.968799, 0.188655, 0.160741,
		0.159991, -0.971347, 0.175751,
		40.585342, 28.643370, 21.186918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052738, 29.246193, 20.749657>,  <40.473351, 29.323313, 21.063892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052738, 29.246193, 20.749657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906155, 28.876091, 20.788860>,  <40.818203, 28.654030, 20.812384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906155, 28.876091, 20.788860>,  <41.052738, 29.246193, 20.749657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906155, 28.876091, 20.788860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342615, -0.232129, -0.910347,
		0.865056, -0.300026, 0.402073,
		-0.366460, -0.925257, 0.098011,
		40.796215, 28.598515, 20.818264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637039, 28.687273, 20.584248>,  <41.052738, 29.246193, 20.749657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637039, 28.687273, 20.584248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.283489, 28.527094, 20.487577>,  <41.071358, 28.430986, 20.429575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.283489, 28.527094, 20.487577>,  <41.637039, 28.687273, 20.584248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283489, 28.527094, 20.487577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406392, -0.401720, -0.820650,
		0.231543, -0.823566, 0.517809,
		-0.883874, -0.400449, -0.241676,
		41.018326, 28.406960, 20.415075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811062, 27.909702, 20.513035>,  <41.637039, 28.687273, 20.584248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811062, 27.909702, 20.513035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472057, 28.011141, 20.326523>,  <41.268654, 28.072004, 20.214615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472057, 28.011141, 20.326523>,  <41.811062, 27.909702, 20.513035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472057, 28.011141, 20.326523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393193, -0.290161, -0.872471,
		-0.356550, -0.922766, 0.146203,
		-0.847509, 0.253594, -0.466282,
		41.217804, 28.087219, 20.186638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773975, 27.463078, 19.997143>,  <41.811062, 27.909702, 20.513035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773975, 27.463078, 19.997143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463165, 27.675137, 19.861397>,  <41.276680, 27.802372, 19.779949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463165, 27.675137, 19.861397>,  <41.773975, 27.463078, 19.997143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463165, 27.675137, 19.861397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254583, -0.228387, -0.939695,
		-0.575686, -0.816566, 0.042496,
		-0.777028, 0.530150, -0.339363,
		41.230057, 27.834181, 19.759588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430309, 27.072475, 19.491222>,  <41.773975, 27.463078, 19.997143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430309, 27.072475, 19.491222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.310799, 27.445625, 19.410746>,  <41.239094, 27.669516, 19.362459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.310799, 27.445625, 19.410746>,  <41.430309, 27.072475, 19.491222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310799, 27.445625, 19.410746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224367, -0.136248, -0.964933,
		-0.927574, -0.333438, -0.168599,
		-0.298774, 0.932875, -0.201193,
		41.221165, 27.725489, 19.350388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868301, 27.084457, 18.980091>,  <41.430309, 27.072475, 19.491222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868301, 27.084457, 18.980091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100231, 27.409531, 18.956919>,  <41.239388, 27.604574, 18.943016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100231, 27.409531, 18.956919>,  <40.868301, 27.084457, 18.980091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100231, 27.409531, 18.956919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265765, -0.255869, -0.929462,
		-0.770180, 0.523525, -0.364341,
		0.579820, 0.812682, -0.057930,
		41.274178, 27.653336, 18.939539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964195, 27.128502, 18.316980>,  <40.868301, 27.084457, 18.980091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964195, 27.128502, 18.316980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224258, 27.397654, 18.458132>,  <41.380299, 27.559145, 18.542822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224258, 27.397654, 18.458132>,  <40.964195, 27.128502, 18.316980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224258, 27.397654, 18.458132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501801, -0.031538, -0.864408,
		-0.570514, 0.739079, -0.358156,
		0.650161, 0.672880, 0.352878,
		41.419308, 27.599518, 18.563995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108051, 27.749352, 17.922947>,  <40.964195, 27.128502, 18.316980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108051, 27.749352, 17.922947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425018, 27.624502, 18.132578>,  <41.615196, 27.549593, 18.258356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425018, 27.624502, 18.132578>,  <41.108051, 27.749352, 17.922947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425018, 27.624502, 18.132578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474810, -0.223737, -0.851174,
		0.382928, 0.923320, -0.029092,
		0.792415, -0.312125, 0.524077,
		41.662743, 27.530865, 18.289801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.620453, 30.895546, 33.637802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996391, 30.981760, 33.531799>,  <37.221954, 31.033487, 33.468197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996391, 30.981760, 33.531799>,  <36.620453, 30.895546, 33.637802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996391, 30.981760, 33.531799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142375, -0.458029, -0.877462,
		-0.310503, 0.862412, -0.399792,
		0.939850, 0.215534, -0.265005,
		37.278347, 31.046421, 33.452297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761868, 31.141891, 32.938423>,  <36.620453, 30.895546, 33.637802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761868, 31.141891, 32.938423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119942, 30.998192, 33.043934>,  <37.334785, 30.911972, 33.107243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119942, 30.998192, 33.043934>,  <36.761868, 31.141891, 32.938423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119942, 30.998192, 33.043934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071047, -0.469253, -0.880201,
		0.439990, 0.806686, -0.394546,
		0.895188, -0.359249, 0.263779,
		37.388496, 30.890417, 33.123066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270317, 31.288401, 32.458664>,  <36.761868, 31.141891, 32.938423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270317, 31.288401, 32.458664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385735, 30.952620, 32.642864>,  <37.454983, 30.751150, 32.753384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385735, 30.952620, 32.642864>,  <37.270317, 31.288401, 32.458664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385735, 30.952620, 32.642864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139599, -0.438934, -0.887608,
		0.947236, 0.320397, -0.009463,
		0.288540, -0.839454, 0.460501,
		37.472298, 30.700783, 32.781013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658516, 31.037683, 31.981443>,  <37.270317, 31.288401, 32.458664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658516, 31.037683, 31.981443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589500, 30.719036, 32.213177>,  <37.548092, 30.527847, 32.352215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589500, 30.719036, 32.213177>,  <37.658516, 31.037683, 31.981443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589500, 30.719036, 32.213177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087479, -0.598221, -0.796542,
		0.981110, -0.086758, 0.172906,
		-0.172542, -0.796621, 0.579331,
		37.537739, 30.480049, 32.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274494, 30.526239, 32.003799>,  <37.658516, 31.037683, 31.981443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274494, 30.526239, 32.003799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964096, 30.303879, 32.123001>,  <37.777859, 30.170462, 32.194523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964096, 30.303879, 32.123001>,  <38.274494, 30.526239, 32.003799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964096, 30.303879, 32.123001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097100, -0.572118, -0.814403,
		0.623221, -0.603036, 0.497938,
		-0.775994, -0.555903, 0.298001,
		37.731297, 30.137108, 32.212402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497650, 29.843761, 32.022942>,  <38.274494, 30.526239, 32.003799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497650, 29.843761, 32.022942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101509, 29.818092, 31.973831>,  <37.863823, 29.802691, 31.944365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101509, 29.818092, 31.973831>,  <38.497650, 29.843761, 32.022942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101509, 29.818092, 31.973831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138302, -0.406315, -0.903206,
		0.008074, -0.911477, 0.411273,
		-0.990357, -0.064173, -0.122778,
		37.804401, 29.798841, 31.936998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354771, 29.067265, 31.793148>,  <38.497650, 29.843761, 32.022942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354771, 29.067265, 31.793148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054272, 29.304380, 31.677061>,  <37.873974, 29.446650, 31.607409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054272, 29.304380, 31.677061>,  <38.354771, 29.067265, 31.793148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054272, 29.304380, 31.677061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070967, -0.509711, -0.857414,
		-0.656196, -0.623532, 0.424987,
		-0.751246, 0.592792, -0.290220,
		37.828899, 29.482218, 31.589994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853775, 28.672729, 31.477579>,  <38.354771, 29.067265, 31.793148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853775, 28.672729, 31.477579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774261, 29.030262, 31.316807>,  <37.726555, 29.244781, 31.220345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774261, 29.030262, 31.316807>,  <37.853775, 28.672729, 31.477579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774261, 29.030262, 31.316807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057475, -0.420040, -0.905684,
		-0.978356, -0.156935, 0.134871,
		-0.198785, 0.893833, -0.401929,
		37.714626, 29.298412, 31.196228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318443, 28.561722, 30.945625>,  <37.853775, 28.672729, 31.477579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318443, 28.561722, 30.945625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.485424, 28.915569, 30.862499>,  <37.585613, 29.127878, 30.812624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.485424, 28.915569, 30.862499>,  <37.318443, 28.561722, 30.945625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485424, 28.915569, 30.862499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037779, -0.211602, -0.976626,
		-0.907915, 0.415541, -0.054913,
		0.417448, 0.884619, -0.207815,
		37.610657, 29.180954, 30.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875149, 28.792107, 30.452368>,  <37.318443, 28.561722, 30.945625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875149, 28.792107, 30.452368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200512, 29.021151, 30.411419>,  <37.395729, 29.158577, 30.386850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200512, 29.021151, 30.411419>,  <36.875149, 28.792107, 30.452368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200512, 29.021151, 30.411419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070736, -0.077313, -0.994494,
		-0.577373, 0.816173, -0.022383,
		0.813410, 0.572611, -0.102371,
		37.444534, 29.192934, 30.380707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853741, 29.044989, 29.777277>,  <36.875149, 28.792107, 30.452368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853741, 29.044989, 29.777277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238308, 29.067051, 29.885078>,  <37.469048, 29.080288, 29.949759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238308, 29.067051, 29.885078>,  <36.853741, 29.044989, 29.777277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238308, 29.067051, 29.885078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271001, -0.021613, -0.962336,
		-0.047252, 0.998244, -0.035726,
		0.961419, 0.055154, 0.269504,
		37.526733, 29.083597, 29.965929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024242, 29.497871, 29.327929>,  <36.853741, 29.044989, 29.777277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024242, 29.497871, 29.327929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361557, 29.324440, 29.454969>,  <37.563946, 29.220381, 29.531193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361557, 29.324440, 29.454969>,  <37.024242, 29.497871, 29.327929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361557, 29.324440, 29.454969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321143, -0.067344, -0.944633,
		0.430963, 0.898595, 0.082450,
		0.843290, -0.433580, 0.317600,
		37.614544, 29.194366, 29.550249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822536, 30.178646, 28.974573>,  <37.024242, 29.497871, 29.327929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822536, 30.178646, 28.974573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466099, 30.071474, 28.828054>,  <36.252235, 30.007172, 28.740143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466099, 30.071474, 28.828054>,  <36.822536, 30.178646, 28.974573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466099, 30.071474, 28.828054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441254, 0.322833, 0.837302,
		-0.106085, 0.907741, -0.405898,
		-0.891090, -0.267929, -0.366296,
		36.198772, 29.991095, 28.718166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346184, 30.734655, 29.128859>,  <36.822536, 30.178646, 28.974573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346184, 30.734655, 29.128859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097439, 30.428734, 29.061499>,  <35.948193, 30.245180, 29.021082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097439, 30.428734, 29.061499>,  <36.346184, 30.734655, 29.128859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097439, 30.428734, 29.061499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506376, 0.228662, 0.831443,
		-0.597385, 0.602317, -0.529476,
		-0.621863, -0.764806, -0.168400,
		35.910881, 30.199291, 29.010979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760693, 31.069719, 29.155836>,  <36.346184, 30.734655, 29.128859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760693, 31.069719, 29.155836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666489, 30.688791, 29.233427>,  <35.609966, 30.460236, 29.279982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666489, 30.688791, 29.233427>,  <35.760693, 31.069719, 29.155836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666489, 30.688791, 29.233427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660241, 0.303233, 0.687118,
		-0.713175, 0.033749, -0.700173,
		-0.235505, -0.952318, 0.193976,
		35.595837, 30.403095, 29.291620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997684, 30.982058, 29.081652>,  <35.760693, 31.069719, 29.155836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997684, 30.982058, 29.081652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137615, 30.692469, 29.319471>,  <35.221573, 30.518715, 29.462162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137615, 30.692469, 29.319471>,  <34.997684, 30.982058, 29.081652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137615, 30.692469, 29.319471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627618, 0.290052, 0.722472,
		-0.695500, -0.625886, -0.352911,
		0.349823, -0.723973, 0.594548,
		35.242561, 30.475277, 29.497835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414421, 30.669386, 29.308161>,  <34.997684, 30.982058, 29.081652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414421, 30.669386, 29.308161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709236, 30.582445, 29.564138>,  <34.886127, 30.530281, 29.717726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709236, 30.582445, 29.564138>,  <34.414421, 30.669386, 29.308161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709236, 30.582445, 29.564138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615255, 0.176086, 0.768411,
		-0.279701, -0.960079, -0.003945,
		0.737041, -0.217352, 0.639944,
		34.930347, 30.517241, 29.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051533, 30.241154, 29.784855>,  <34.414421, 30.669386, 29.308161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051533, 30.241154, 29.784855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396832, 30.361448, 29.947020>,  <34.604012, 30.433624, 30.044317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396832, 30.361448, 29.947020>,  <34.051533, 30.241154, 29.784855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396832, 30.361448, 29.947020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502179, 0.430310, 0.750100,
		0.051129, -0.851112, 0.522488,
		0.863250, 0.300734, 0.405409,
		34.655807, 30.451668, 30.068642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060749, 29.970434, 30.570232>,  <34.051533, 30.241154, 29.784855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060749, 29.970434, 30.570232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330765, 30.263296, 30.533846>,  <34.492775, 30.439013, 30.512014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330765, 30.263296, 30.533846>,  <34.060749, 29.970434, 30.570232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330765, 30.263296, 30.533846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417690, 0.480886, 0.770898,
		0.608161, -0.482389, 0.630429,
		0.675037, 0.732154, -0.090967,
		34.533276, 30.482943, 30.506556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068470, 30.215042, 31.205519>,  <34.060749, 29.970434, 30.570232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068470, 30.215042, 31.205519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262566, 30.510111, 31.017736>,  <34.379025, 30.687151, 30.905067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262566, 30.510111, 31.017736>,  <34.068470, 30.215042, 31.205519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262566, 30.510111, 31.017736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382661, 0.661908, 0.644553,
		0.786203, -0.133119, 0.603460,
		0.485238, 0.737670, -0.469455,
		34.408138, 30.731411, 30.876900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486626, 30.551605, 31.713043>,  <34.068470, 30.215042, 31.205519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486626, 30.551605, 31.713043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417698, 30.806269, 31.412386>,  <34.376343, 30.959066, 31.231991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417698, 30.806269, 31.412386>,  <34.486626, 30.551605, 31.713043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417698, 30.806269, 31.412386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356970, 0.670829, 0.650046,
		0.918084, 0.380330, 0.111672,
		-0.172319, 0.636661, -0.751644,
		34.366001, 30.997267, 31.186893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661587, 31.235048, 32.013275>,  <34.486626, 30.551605, 31.713043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661587, 31.235048, 32.013275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435249, 31.338100, 31.699986>,  <34.299446, 31.399931, 31.512011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435249, 31.338100, 31.699986>,  <34.661587, 31.235048, 32.013275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435249, 31.338100, 31.699986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309975, 0.813773, 0.491619,
		0.764026, 0.520961, -0.380609,
		-0.565844, 0.257630, -0.783229,
		34.265495, 31.415390, 31.465017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741779, 31.997044, 31.979307>,  <34.661587, 31.235048, 32.013275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741779, 31.997044, 31.979307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416237, 31.916292, 31.761360>,  <34.220913, 31.867842, 31.630592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416237, 31.916292, 31.761360>,  <34.741779, 31.997044, 31.979307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416237, 31.916292, 31.761360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488460, 0.745568, 0.453360,
		0.314711, 0.635116, -0.705396,
		-0.813857, -0.201881, -0.544868,
		34.172081, 31.855728, 31.597900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530724, 32.657703, 31.666424>,  <34.741779, 31.997044, 31.979307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530724, 32.657703, 31.666424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212505, 32.415821, 31.651274>,  <34.021576, 32.270691, 31.642183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212505, 32.415821, 31.651274>,  <34.530724, 32.657703, 31.666424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212505, 32.415821, 31.651274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551535, 0.696874, 0.458449,
		-0.250835, 0.385606, -0.887913,
		-0.795544, -0.604710, -0.037874,
		33.973843, 32.234409, 31.639912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049671, 33.054626, 31.354788>,  <34.530724, 32.657703, 31.666424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049671, 33.054626, 31.354788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840290, 32.789394, 31.568823>,  <33.714661, 32.630257, 31.697243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840290, 32.789394, 31.568823>,  <34.049671, 33.054626, 31.354788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840290, 32.789394, 31.568823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575134, 0.738316, 0.352292,
		-0.628661, -0.123338, -0.767836,
		-0.523455, -0.663081, 0.535087,
		33.683254, 32.590469, 31.729349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410286, 33.296803, 31.317520>,  <34.049671, 33.054626, 31.354788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410286, 33.296803, 31.317520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413742, 33.027061, 31.612864>,  <33.415813, 32.865215, 31.790070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413742, 33.027061, 31.612864>,  <33.410286, 33.296803, 31.317520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413742, 33.027061, 31.612864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418673, 0.668109, 0.615095,
		-0.908096, -0.314443, -0.276564,
		0.008637, -0.674356, 0.738356,
		33.416332, 32.824757, 31.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059666, 33.650337, 31.874130>,  <33.410286, 33.296803, 31.317520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059666, 33.650337, 31.874130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202393, 33.322098, 32.052704>,  <33.288029, 33.125156, 32.159847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202393, 33.322098, 32.052704>,  <33.059666, 33.650337, 31.874130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202393, 33.322098, 32.052704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281641, 0.361159, 0.888956,
		-0.890708, -0.442929, -0.102246,
		0.356817, -0.820596, 0.446434,
		33.309437, 33.075920, 32.186634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306793, 34.419079, 31.699955>,  <33.059666, 33.650337, 31.874130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306793, 34.419079, 31.699955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599617, 34.670555, 31.595007>,  <33.775311, 34.821442, 31.532038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599617, 34.670555, 31.595007>,  <33.306793, 34.419079, 31.699955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599617, 34.670555, 31.595007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083380, -0.299555, -0.950429,
		-0.676118, 0.717648, -0.166872,
		0.732060, 0.628688, -0.262372,
		33.819237, 34.859161, 31.516294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097576, 34.797821, 31.030830>,  <33.306793, 34.419079, 31.699955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097576, 34.797821, 31.030830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489376, 34.740570, 31.087524>,  <33.724457, 34.706219, 31.121540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489376, 34.740570, 31.087524>,  <33.097576, 34.797821, 31.030830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489376, 34.740570, 31.087524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111764, -0.199211, -0.973562,
		0.167582, 0.969447, -0.179131,
		0.979502, -0.143131, 0.141734,
		33.783226, 34.697632, 31.130045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397358, 35.057064, 30.440229>,  <33.097576, 34.797821, 31.030830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397358, 35.057064, 30.440229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684784, 34.831547, 30.603104>,  <33.857239, 34.696236, 30.700829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684784, 34.831547, 30.603104>,  <33.397358, 35.057064, 30.440229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684784, 34.831547, 30.603104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290956, -0.288081, -0.912334,
		0.631671, 0.774045, -0.042966,
		0.718566, -0.563793, 0.407185,
		33.900352, 34.662407, 30.725260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969193, 35.345333, 30.096979>,  <33.397358, 35.057064, 30.440229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969193, 35.345333, 30.096979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036003, 34.986233, 30.260021>,  <34.076088, 34.770771, 30.357847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036003, 34.986233, 30.260021>,  <33.969193, 35.345333, 30.096979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036003, 34.986233, 30.260021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460630, -0.294468, -0.837322,
		0.871735, 0.327609, 0.364348,
		0.167026, -0.897753, 0.407605,
		34.086109, 34.716908, 30.382303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712265, 35.179962, 29.994904>,  <33.969193, 35.345333, 30.096979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712265, 35.179962, 29.994904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541588, 34.823757, 30.058050>,  <34.439182, 34.610035, 30.095938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541588, 34.823757, 30.058050>,  <34.712265, 35.179962, 29.994904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541588, 34.823757, 30.058050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438875, -0.356505, -0.824799,
		0.790773, -0.282653, 0.542941,
		-0.426694, -0.890511, 0.157865,
		34.413578, 34.556602, 30.105410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188854, 34.727215, 29.835733>,  <34.712265, 35.179962, 29.994904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188854, 34.727215, 29.835733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860313, 34.499123, 29.841602>,  <34.663189, 34.362267, 29.845123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860313, 34.499123, 29.841602>,  <35.188854, 34.727215, 29.835733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860313, 34.499123, 29.841602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333173, -0.500458, -0.799086,
		0.463007, -0.651443, 0.601038,
		-0.821353, -0.570232, 0.014672,
		34.613907, 34.328053, 29.846004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415096, 34.043442, 29.692280>,  <35.188854, 34.727215, 29.835733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415096, 34.043442, 29.692280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027042, 34.038307, 29.595387>,  <34.794209, 34.035225, 29.537251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027042, 34.038307, 29.595387>,  <35.415096, 34.043442, 29.692280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027042, 34.038307, 29.595387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224761, -0.423157, -0.877736,
		-0.091236, -0.905966, 0.413404,
		-0.970134, -0.012836, -0.242233,
		34.736004, 34.034458, 29.522717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376701, 33.410122, 29.589914>,  <35.415096, 34.043442, 29.692280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376701, 33.410122, 29.589914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080364, 33.606155, 29.406189>,  <34.902561, 33.723778, 29.295954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080364, 33.606155, 29.406189>,  <35.376701, 33.410122, 29.589914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080364, 33.606155, 29.406189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386725, -0.247884, -0.888255,
		-0.549181, -0.835683, -0.005887,
		-0.740841, 0.490089, -0.459313,
		34.858112, 33.753181, 29.268394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094025, 32.920185, 29.165117>,  <35.376701, 33.410122, 29.589914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094025, 32.920185, 29.165117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972832, 33.265930, 29.004583>,  <34.900116, 33.473377, 28.908262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972832, 33.265930, 29.004583>,  <35.094025, 32.920185, 29.165117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972832, 33.265930, 29.004583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381658, -0.275830, -0.882188,
		-0.873235, -0.420460, -0.246321,
		-0.302982, 0.864368, -0.401336,
		34.881939, 33.525242, 28.884182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875656, 32.687897, 28.443001>,  <35.094025, 32.920185, 29.165117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875656, 32.687897, 28.443001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898003, 33.086269, 28.414709>,  <34.911411, 33.325294, 28.397734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898003, 33.086269, 28.414709>,  <34.875656, 32.687897, 28.443001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898003, 33.086269, 28.414709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429036, -0.087910, -0.899000,
		-0.901558, 0.019876, -0.432201,
		0.055863, 0.995930, -0.070728,
		34.914761, 33.385048, 28.393490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608402, 32.932770, 27.750261>,  <34.875656, 32.687897, 28.443001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608402, 32.932770, 27.750261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839172, 33.240631, 27.859650>,  <34.977634, 33.425346, 27.925283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839172, 33.240631, 27.859650>,  <34.608402, 32.932770, 27.750261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839172, 33.240631, 27.859650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397198, 0.028194, -0.917300,
		-0.713712, 0.637840, -0.289439,
		0.576930, 0.769653, 0.273471,
		35.012253, 33.471527, 27.941690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675728, 33.357449, 27.162600>,  <34.608402, 32.932770, 27.750261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675728, 33.357449, 27.162600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989971, 33.491993, 27.370325>,  <35.178516, 33.572720, 27.494961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989971, 33.491993, 27.370325>,  <34.675728, 33.357449, 27.162600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989971, 33.491993, 27.370325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520623, 0.094173, -0.848577,
		-0.334332, 0.937014, -0.101133,
		0.785604, 0.336359, 0.519316,
		35.225651, 33.592899, 27.526119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925961, 33.906994, 26.772863>,  <34.675728, 33.357449, 27.162600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925961, 33.906994, 26.772863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228897, 33.800404, 27.011333>,  <35.410660, 33.736450, 27.154415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228897, 33.800404, 27.011333>,  <34.925961, 33.906994, 26.772863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228897, 33.800404, 27.011333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642916, 0.144288, -0.752223,
		0.114428, 0.952980, 0.280597,
		0.757341, -0.266476, 0.596176,
		35.456100, 33.720459, 27.190186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457878, 34.273006, 26.411055>,  <34.925961, 33.906994, 26.772863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457878, 34.273006, 26.411055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640358, 33.998940, 26.638186>,  <35.749847, 33.834499, 26.774464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640358, 33.998940, 26.638186>,  <35.457878, 34.273006, 26.411055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640358, 33.998940, 26.638186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675390, -0.148889, -0.722275,
		0.579419, 0.713011, 0.394828,
		0.456204, -0.685163, 0.567829,
		35.777218, 33.793392, 26.808535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169529, 34.478054, 26.400503>,  <35.457878, 34.273006, 26.411055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169529, 34.478054, 26.400503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158203, 34.093166, 26.508827>,  <36.151409, 33.862236, 26.573822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158203, 34.093166, 26.508827>,  <36.169529, 34.478054, 26.400503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158203, 34.093166, 26.508827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722533, -0.206914, -0.659646,
		0.690757, 0.176994, 0.701091,
		-0.028312, -0.962216, 0.270811,
		36.149708, 33.804501, 26.590071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876091, 34.299156, 26.472548>,  <36.169529, 34.478054, 26.400503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876091, 34.299156, 26.472548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699310, 33.941532, 26.443338>,  <36.593243, 33.726955, 26.425814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699310, 33.941532, 26.443338>,  <36.876091, 34.299156, 26.472548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699310, 33.941532, 26.443338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560732, -0.211802, -0.800450,
		0.700187, -0.394703, 0.594935,
		-0.441948, -0.894063, -0.073021,
		36.566727, 33.673313, 26.421432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434864, 33.808605, 26.438618>,  <36.876091, 34.299156, 26.472548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434864, 33.808605, 26.438618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109417, 33.633900, 26.285118>,  <36.914146, 33.529076, 26.193018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109417, 33.633900, 26.285118>,  <37.434864, 33.808605, 26.438618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109417, 33.633900, 26.285118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551524, -0.370955, -0.747137,
		0.183969, -0.819531, 0.542701,
		-0.813620, -0.436762, -0.383747,
		36.865330, 33.502872, 26.169994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691582, 33.233906, 26.249502>,  <37.434864, 33.808605, 26.438618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691582, 33.233906, 26.249502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351238, 33.242695, 26.039528>,  <37.147034, 33.247967, 25.913544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351238, 33.242695, 26.039528>,  <37.691582, 33.233906, 26.249502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351238, 33.242695, 26.039528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454245, -0.471301, -0.756001,
		-0.264011, -0.881699, 0.391031,
		-0.850858, 0.021969, -0.524936,
		37.095982, 33.249287, 25.882048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571762, 32.637890, 25.884100>,  <37.691582, 33.233906, 26.249502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571762, 32.637890, 25.884100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342537, 32.896267, 25.682367>,  <37.205002, 33.051292, 25.561327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342537, 32.896267, 25.682367>,  <37.571762, 32.637890, 25.884100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342537, 32.896267, 25.682367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360015, -0.354410, -0.863008,
		-0.736198, -0.676125, -0.029451,
		-0.573063, 0.645947, -0.504331,
		37.170616, 33.090050, 25.531069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206184, 32.320312, 25.349817>,  <37.571762, 32.637890, 25.884100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206184, 32.320312, 25.349817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221004, 32.688313, 25.193748>,  <37.229897, 32.909111, 25.100107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221004, 32.688313, 25.193748>,  <37.206184, 32.320312, 25.349817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221004, 32.688313, 25.193748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454027, -0.363314, -0.813549,
		-0.890217, -0.147007, -0.431164,
		0.037050, 0.919995, -0.390174,
		37.232121, 32.964310, 25.076696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919781, 32.299095, 24.657089>,  <37.206184, 32.320312, 25.349817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919781, 32.299095, 24.657089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080219, 32.664295, 24.627312>,  <37.176483, 32.883415, 24.609446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080219, 32.664295, 24.627312>,  <36.919781, 32.299095, 24.657089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080219, 32.664295, 24.627312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474799, -0.276710, -0.835463,
		-0.783381, 0.299756, -0.544482,
		0.401098, 0.913005, -0.074446,
		37.200550, 32.938198, 24.604979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701393, 32.469986, 24.071255>,  <36.919781, 32.299095, 24.657089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701393, 32.469986, 24.071255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019405, 32.704124, 24.134888>,  <37.210213, 32.844608, 24.173067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019405, 32.704124, 24.134888>,  <36.701393, 32.469986, 24.071255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019405, 32.704124, 24.134888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330621, -0.198293, -0.922697,
		-0.508549, 0.786164, -0.351174,
		0.795027, 0.585342, 0.159081,
		37.257912, 32.879726, 24.182611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757595, 32.897068, 23.514957>,  <36.701393, 32.469986, 24.071255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757595, 32.897068, 23.514957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127743, 32.934029, 23.662006>,  <37.349831, 32.956203, 23.750237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127743, 32.934029, 23.662006>,  <36.757595, 32.897068, 23.514957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127743, 32.934029, 23.662006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372053, -0.035838, -0.927519,
		-0.072526, 0.995077, -0.067541,
		0.925374, 0.092398, 0.367622,
		37.405354, 32.961750, 23.772293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141682, 33.329025, 23.057907>,  <36.757595, 32.897068, 23.514957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141682, 33.329025, 23.057907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428406, 33.122856, 23.245749>,  <37.600441, 32.999157, 23.358454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428406, 33.122856, 23.245749>,  <37.141682, 33.329025, 23.057907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428406, 33.122856, 23.245749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365177, -0.296233, -0.882548,
		0.593994, 0.804108, -0.024123,
		0.716810, -0.515419, 0.469602,
		37.643448, 32.968231, 23.386629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807453, 33.674702, 22.846428>,  <37.141682, 33.329025, 23.057907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807453, 33.674702, 22.846428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842628, 33.294010, 22.964054>,  <37.863735, 33.065594, 23.034630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842628, 33.294010, 22.964054>,  <37.807453, 33.674702, 22.846428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842628, 33.294010, 22.964054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452233, -0.224888, -0.863082,
		0.887554, 0.208886, 0.410627,
		0.087941, -0.951731, 0.294065,
		37.869011, 33.008492, 23.052273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552429, 33.489971, 22.749723>,  <37.807453, 33.674702, 22.846428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552429, 33.489971, 22.749723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368450, 33.136028, 22.779324>,  <38.258064, 32.923660, 22.797083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368450, 33.136028, 22.779324>,  <38.552429, 33.489971, 22.749723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368450, 33.136028, 22.779324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486424, -0.320804, -0.812697,
		0.742862, -0.337800, 0.577969,
		-0.459944, -0.884859, 0.073999,
		38.230469, 32.870571, 22.801523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071178, 33.024605, 22.869602>,  <38.552429, 33.489971, 22.749723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071178, 33.024605, 22.869602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762562, 32.841728, 22.692650>,  <38.577393, 32.732002, 22.586477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762562, 32.841728, 22.692650>,  <39.071178, 33.024605, 22.869602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762562, 32.841728, 22.692650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601695, -0.298565, -0.740825,
		0.206621, -0.837754, 0.505446,
		-0.771538, -0.457194, -0.442383,
		38.531101, 32.704571, 22.559935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480045, 32.656895, 23.439962>,  <39.071178, 33.024605, 22.869602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480045, 32.656895, 23.439962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860386, 32.725643, 23.542988>,  <40.088593, 32.766891, 23.604803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860386, 32.725643, 23.542988>,  <39.480045, 32.656895, 23.439962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860386, 32.725643, 23.542988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265389, 0.023815, 0.963847,
		0.159524, -0.984831, 0.068257,
		0.950853, 0.171872, 0.257564,
		40.145641, 32.777203, 23.620256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717888, 32.227951, 23.951420>,  <39.480045, 32.656895, 23.439962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717888, 32.227951, 23.951420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.953800, 32.548531, 23.991093>,  <40.095348, 32.740879, 24.014896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.953800, 32.548531, 23.991093>,  <39.717888, 32.227951, 23.951420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953800, 32.548531, 23.991093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159371, -0.004889, 0.987207,
		0.791681, -0.598042, 0.124845,
		0.589781, 0.801450, 0.099181,
		40.130733, 32.788967, 24.020847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150005, 32.088230, 24.542622>,  <39.717888, 32.227951, 23.951420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150005, 32.088230, 24.542622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166058, 32.487892, 24.539232>,  <40.175690, 32.727692, 24.537199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166058, 32.487892, 24.539232>,  <40.150005, 32.088230, 24.542622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166058, 32.487892, 24.539232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096356, 0.012312, 0.995271,
		0.994538, -0.039127, 0.096769,
		0.040133, 0.999158, -0.008475,
		40.178097, 32.787640, 24.536690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556782, 32.296703, 25.095972>,  <40.150005, 32.088230, 24.542622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556782, 32.296703, 25.095972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.381752, 32.641857, 24.994812>,  <40.276733, 32.848949, 24.934116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.381752, 32.641857, 24.994812>,  <40.556782, 32.296703, 25.095972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381752, 32.641857, 24.994812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117319, 0.224066, 0.967487,
		0.891496, 0.453018, 0.003187,
		-0.437575, 0.862884, -0.252902,
		40.250481, 32.900723, 24.918941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980835, 32.882713, 25.395769>,  <40.556782, 32.296703, 25.095972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980835, 32.882713, 25.395769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605331, 33.004414, 25.331059>,  <40.380032, 33.077435, 25.292233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605331, 33.004414, 25.331059>,  <40.980835, 32.882713, 25.395769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605331, 33.004414, 25.331059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040893, 0.367799, 0.929006,
		0.342151, 0.878724, -0.332832,
		-0.938755, 0.304249, -0.161776,
		40.323704, 33.095688, 25.282526>
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
