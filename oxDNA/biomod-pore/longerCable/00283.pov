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
	<24.771999, 34.791065, 35.021183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487007, 34.913055, 35.273964>,  <24.316011, 34.986248, 35.425632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487007, 34.913055, 35.273964>,  <24.771999, 34.791065, 35.021183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487007, 34.913055, 35.273964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457279, -0.884909, -0.088500,
		0.532227, -0.352031, 0.769941,
		-0.712482, 0.304976, 0.631948,
		24.273262, 35.004547, 35.463547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994141, 35.000179, 35.726322>,  <24.771999, 34.791065, 35.021183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994141, 35.000179, 35.726322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354845, 34.870773, 35.611660>,  <25.571268, 34.793129, 35.542862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354845, 34.870773, 35.611660>,  <24.994141, 35.000179, 35.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354845, 34.870773, 35.611660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282338, 0.061292, -0.957355,
		0.327286, 0.944236, -0.036070,
		0.901759, -0.323513, -0.286654,
		25.625372, 34.773720, 35.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342430, 35.411533, 35.357716>,  <24.994141, 35.000179, 35.726322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342430, 35.411533, 35.357716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489685, 35.055569, 35.249989>,  <25.578037, 34.841991, 35.185352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489685, 35.055569, 35.249989>,  <25.342430, 35.411533, 35.357716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489685, 35.055569, 35.249989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362336, 0.129443, -0.923015,
		0.856264, 0.437378, -0.274795,
		0.368137, -0.889913, -0.269315,
		25.600126, 34.788593, 35.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635492, 35.556942, 34.728306>,  <25.342430, 35.411533, 35.357716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635492, 35.556942, 34.728306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548113, 35.166603, 34.727573>,  <25.495686, 34.932400, 34.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548113, 35.166603, 34.727573>,  <25.635492, 35.556942, 34.728306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548113, 35.166603, 34.727573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334128, 0.076563, -0.939413,
		0.916864, -0.204601, -0.342783,
		-0.218449, -0.975847, -0.001835,
		25.482578, 34.873848, 34.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650179, 35.335640, 33.990082>,  <25.635492, 35.556942, 34.728306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650179, 35.335640, 33.990082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479073, 35.010933, 34.149105>,  <25.376408, 34.816109, 34.244518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479073, 35.010933, 34.149105>,  <25.650179, 35.335640, 33.990082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479073, 35.010933, 34.149105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471508, -0.174850, -0.864354,
		0.771165, -0.557195, -0.307959,
		-0.427767, -0.811765, 0.397560,
		25.350742, 34.767403, 34.268372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861303, 34.854568, 33.527008>,  <25.650179, 35.335640, 33.990082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861303, 34.854568, 33.527008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527634, 34.783314, 33.735786>,  <25.327433, 34.740562, 33.861053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527634, 34.783314, 33.735786>,  <25.861303, 34.854568, 33.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527634, 34.783314, 33.735786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473900, -0.252550, -0.843586,
		0.282087, -0.951045, 0.126254,
		-0.834174, -0.178133, 0.521941,
		25.277382, 34.729874, 33.892368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585199, 34.084778, 33.460423>,  <25.861303, 34.854568, 33.527008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585199, 34.084778, 33.460423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337713, 34.396801, 33.497730>,  <25.189222, 34.584015, 33.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337713, 34.396801, 33.497730>,  <25.585199, 34.084778, 33.460423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337713, 34.396801, 33.497730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444671, -0.249855, -0.860140,
		-0.647657, -0.573655, 0.501459,
		-0.618715, 0.780059, 0.093268,
		25.152100, 34.630817, 33.525711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867516, 33.821667, 33.475315>,  <25.585199, 34.084778, 33.460423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867516, 33.821667, 33.475315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890165, 34.185081, 33.309738>,  <24.903755, 34.403130, 33.210392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890165, 34.185081, 33.309738>,  <24.867516, 33.821667, 33.475315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890165, 34.185081, 33.309738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189863, -0.397242, -0.897859,
		-0.980176, 0.129435, 0.150004,
		0.056627, 0.908540, -0.413942,
		24.907154, 34.457642, 33.185555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297915, 33.736435, 33.033058>,  <24.867516, 33.821667, 33.475315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297915, 33.736435, 33.033058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505934, 34.054070, 32.907219>,  <24.630745, 34.244652, 32.831715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505934, 34.054070, 32.907219>,  <24.297915, 33.736435, 33.033058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505934, 34.054070, 32.907219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105166, -0.305988, -0.946209,
		-0.847639, 0.525158, -0.075616,
		0.520046, 0.794091, -0.314596,
		24.661947, 34.292297, 32.812840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918537, 34.115131, 32.435287>,  <24.297915, 33.736435, 33.033058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918537, 34.115131, 32.435287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303555, 34.218559, 32.402653>,  <24.534565, 34.280617, 32.383072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303555, 34.218559, 32.402653>,  <23.918537, 34.115131, 32.435287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303555, 34.218559, 32.402653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070594, -0.051533, -0.996173,
		-0.261784, 0.964617, -0.031350,
		0.962541, 0.258569, -0.081586,
		24.592318, 34.296131, 32.378178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.885178, 34.632587, 31.901339>,  <23.918537, 34.115131, 32.435287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.885178, 34.632587, 31.901339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265209, 34.509335, 31.920950>,  <24.493227, 34.435383, 31.932716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265209, 34.509335, 31.920950>,  <23.885178, 34.632587, 31.901339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265209, 34.509335, 31.920950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031114, -0.062795, -0.997541,
		0.310457, 0.949268, -0.050072,
		0.950078, -0.308136, 0.049030,
		24.550232, 34.416893, 31.935659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339861, 35.133690, 31.592583>,  <23.885178, 34.632587, 31.901339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339861, 35.133690, 31.592583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498676, 34.767445, 31.567226>,  <24.593966, 34.547699, 31.552013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498676, 34.767445, 31.567226>,  <24.339861, 35.133690, 31.592583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498676, 34.767445, 31.567226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177960, -0.009043, -0.983996,
		0.900384, 0.401964, -0.166533,
		0.397037, -0.915611, -0.063391,
		24.617786, 34.492760, 31.548208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430546, 34.660145, 31.156874>,  <24.339861, 35.133690, 31.592583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430546, 34.660145, 31.156874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819578, 34.665020, 31.249775>,  <25.052998, 34.667946, 31.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819578, 34.665020, 31.249775>,  <24.430546, 34.660145, 31.156874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819578, 34.665020, 31.249775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062716, -0.975379, -0.211430,
		0.223959, 0.220199, -0.949397,
		0.972578, 0.012191, 0.232255,
		25.111351, 34.668678, 31.319452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996647, 34.381348, 30.608517>,  <24.430546, 34.660145, 31.156874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996647, 34.381348, 30.608517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108734, 34.318661, 30.987341>,  <25.175985, 34.281048, 31.214636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108734, 34.318661, 30.987341>,  <24.996647, 34.381348, 30.608517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108734, 34.318661, 30.987341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174364, -0.961863, -0.210754,
		0.943968, 0.224190, -0.242205,
		0.280217, -0.156714, 0.947058,
		25.192799, 34.271648, 31.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670673, 34.220104, 30.646744>,  <24.996647, 34.381348, 30.608517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670673, 34.220104, 30.646744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478731, 34.053162, 30.955433>,  <25.363565, 33.952995, 31.140646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478731, 34.053162, 30.955433>,  <25.670673, 34.220104, 30.646744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478731, 34.053162, 30.955433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405556, -0.885508, -0.226715,
		0.777987, 0.204187, 0.594175,
		-0.479854, -0.417352, 0.771723,
		25.334774, 33.927956, 31.186951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077524, 34.005829, 31.274305>,  <25.670673, 34.220104, 30.646744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077524, 34.005829, 31.274305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774319, 33.749592, 31.225225>,  <25.592396, 33.595848, 31.195778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774319, 33.749592, 31.225225>,  <26.077524, 34.005829, 31.274305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774319, 33.749592, 31.225225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650273, -0.727636, -0.218383,
		0.050615, -0.245325, 0.968119,
		-0.758013, -0.640595, -0.122699,
		25.546915, 33.557415, 31.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782074, 33.944023, 31.858793>,  <26.077524, 34.005829, 31.274305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782074, 33.944023, 31.858793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411209, 34.092194, 31.881260>,  <25.188690, 34.181095, 31.894739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411209, 34.092194, 31.881260>,  <25.782074, 33.944023, 31.858793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411209, 34.092194, 31.881260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156173, 0.245848, 0.956644,
		0.340556, 0.895737, -0.285792,
		-0.927163, 0.370424, 0.056165,
		25.133060, 34.203320, 31.898109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835236, 34.564922, 32.201450>,  <25.782074, 33.944023, 31.858793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835236, 34.564922, 32.201450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446554, 34.492886, 32.262581>,  <25.213345, 34.449661, 32.299259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446554, 34.492886, 32.262581>,  <25.835236, 34.564922, 32.201450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446554, 34.492886, 32.262581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065145, 0.417584, 0.906300,
		-0.227039, 0.890612, -0.394036,
		-0.971704, -0.180096, 0.152826,
		25.155043, 34.438858, 32.308430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652767, 35.143818, 32.470394>,  <25.835236, 34.564922, 32.201450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652767, 35.143818, 32.470394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339460, 34.905186, 32.540352>,  <25.151476, 34.762005, 32.582329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339460, 34.905186, 32.540352>,  <25.652767, 35.143818, 32.470394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339460, 34.905186, 32.540352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072226, 0.366745, 0.927514,
		-0.617479, 0.713856, -0.330347,
		-0.783265, -0.596580, 0.174898,
		25.104481, 34.726212, 32.592823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990686, 35.622330, 32.624496>,  <25.652767, 35.143818, 32.470394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990686, 35.622330, 32.624496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973440, 35.269012, 32.811226>,  <24.963093, 35.057022, 32.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973440, 35.269012, 32.811226>,  <24.990686, 35.622330, 32.624496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973440, 35.269012, 32.811226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058659, 0.464216, 0.883777,
		-0.997347, 0.065488, 0.031799,
		-0.043115, -0.883298, 0.466826,
		24.960506, 35.004025, 32.951275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600498, 35.666073, 33.260250>,  <24.990686, 35.622330, 32.624496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600498, 35.666073, 33.260250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831373, 35.347214, 33.331139>,  <24.969898, 35.155899, 33.373672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831373, 35.347214, 33.331139>,  <24.600498, 35.666073, 33.260250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831373, 35.347214, 33.331139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282717, 0.398661, 0.872433,
		-0.766110, -0.453455, 0.455471,
		0.577188, -0.797149, 0.177219,
		25.004530, 35.108070, 33.384304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470716, 35.652538, 33.957344>,  <24.600498, 35.666073, 33.260250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470716, 35.652538, 33.957344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810429, 35.482655, 33.831905>,  <25.014256, 35.380726, 33.756641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810429, 35.482655, 33.831905>,  <24.470716, 35.652538, 33.957344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810429, 35.482655, 33.831905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417635, 0.177089, 0.891191,
		-0.322960, -0.887842, 0.327771,
		0.849281, -0.424707, -0.313601,
		25.065212, 35.355244, 33.737823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.079412, 34.978775, 34.093899>,  <24.470716, 35.652538, 33.957344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.079412, 34.978775, 34.093899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293877, 34.692287, 33.915211>,  <24.422556, 34.520393, 33.807999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293877, 34.692287, 33.915211>,  <24.079412, 34.978775, 34.093899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293877, 34.692287, 33.915211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610120, -0.036902, 0.791449,
		-0.583338, -0.696895, 0.417197,
		0.536161, -0.716223, -0.446716,
		24.454725, 34.477421, 33.781197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128914, 34.346138, 34.515675>,  <24.079412, 34.978775, 34.093899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128914, 34.346138, 34.515675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466938, 34.389648, 34.306278>,  <24.669752, 34.415752, 34.180641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466938, 34.389648, 34.306278>,  <24.128914, 34.346138, 34.515675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466938, 34.389648, 34.306278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532825, -0.089998, 0.841426,
		0.044415, -0.989984, -0.134012,
		0.845059, 0.108777, -0.523491,
		24.720455, 34.422279, 34.149231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673035, 33.799637, 34.716644>,  <24.128914, 34.346138, 34.515675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673035, 33.799637, 34.716644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889202, 34.100346, 34.565498>,  <25.018902, 34.280773, 34.474812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889202, 34.100346, 34.565498>,  <24.673035, 33.799637, 34.716644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889202, 34.100346, 34.565498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686134, -0.133815, 0.715063,
		0.487002, -0.645699, -0.588134,
		0.540416, 0.751775, -0.377868,
		25.051327, 34.325878, 34.452137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350895, 33.559757, 34.733089>,  <24.673035, 33.799637, 34.716644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350895, 33.559757, 34.733089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356775, 33.959450, 34.747669>,  <25.360304, 34.199265, 34.756416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356775, 33.959450, 34.747669>,  <25.350895, 33.559757, 34.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356775, 33.959450, 34.747669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574271, -0.038280, 0.817770,
		0.818533, 0.008909, -0.574390,
		0.014702, 0.999227, 0.036450,
		25.361185, 34.259216, 34.758606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005268, 33.689274, 34.771023>,  <25.350895, 33.559757, 34.733089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005268, 33.689274, 34.771023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808641, 34.009781, 34.907455>,  <25.690666, 34.202084, 34.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808641, 34.009781, 34.907455>,  <26.005268, 33.689274, 34.771023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808641, 34.009781, 34.907455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652819, 0.079831, 0.753296,
		0.576360, 0.592960, -0.562323,
		-0.491565, 0.801265, 0.341084,
		25.661171, 34.250160, 35.009781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441286, 34.220337, 34.854893>,  <26.005268, 33.689274, 34.771023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441286, 34.220337, 34.854893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150099, 34.265751, 35.125351>,  <25.975386, 34.292999, 35.287624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150099, 34.265751, 35.125351>,  <26.441286, 34.220337, 34.854893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150099, 34.265751, 35.125351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684524, 0.064834, 0.726102,
		0.038600, 0.991416, -0.124914,
		-0.727968, 0.113535, 0.676145,
		25.931709, 34.299812, 35.328194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380459, 34.867867, 35.221172>,  <26.441286, 34.220337, 34.854893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380459, 34.867867, 35.221172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241999, 34.584511, 35.467216>,  <26.158922, 34.414497, 35.614841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241999, 34.584511, 35.467216>,  <26.380459, 34.867867, 35.221172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241999, 34.584511, 35.467216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653812, 0.288064, 0.699678,
		-0.672837, 0.644361, 0.363441,
		-0.346151, -0.708391, 0.615111,
		26.138153, 34.371994, 35.651749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465792, 35.252357, 35.852802>,  <26.380459, 34.867867, 35.221172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465792, 35.252357, 35.852802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459305, 34.853535, 35.882786>,  <26.455412, 34.614243, 35.900776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459305, 34.853535, 35.882786>,  <26.465792, 35.252357, 35.852802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459305, 34.853535, 35.882786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585254, 0.051320, 0.809224,
		-0.810688, 0.056995, 0.582698,
		-0.016218, -0.997055, 0.074961,
		26.454439, 34.554417, 35.905273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115311, 35.061779, 36.587688>,  <26.465792, 35.252357, 35.852802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115311, 35.061779, 36.587688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094366, 35.090622, 36.986095>,  <26.081800, 35.107925, 37.225140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094366, 35.090622, 36.986095>,  <26.115311, 35.061779, 36.587688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094366, 35.090622, 36.986095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998244, -0.031447, -0.050200,
		0.027702, -0.996901, 0.073634,
		-0.052360, 0.072114, 0.996021,
		26.078657, 35.112255, 37.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851593, 35.087921, 37.096004>,  <26.115311, 35.061779, 36.587688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851593, 35.087921, 37.096004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960222, 35.321114, 36.789703>,  <27.025400, 35.461029, 36.605923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960222, 35.321114, 36.789703>,  <26.851593, 35.087921, 37.096004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960222, 35.321114, 36.789703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476090, 0.772862, 0.419551,
		0.836413, 0.250629, 0.487440,
		0.271572, 0.582983, -0.765754,
		27.041695, 35.496010, 36.559978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159178, 35.780769, 37.411114>,  <26.851593, 35.087921, 37.096004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159178, 35.780769, 37.411114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108616, 35.875370, 37.025764>,  <27.078278, 35.932129, 36.794556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108616, 35.875370, 37.025764>,  <27.159178, 35.780769, 37.411114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108616, 35.875370, 37.025764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421016, 0.866565, 0.267975,
		0.898202, 0.439470, -0.009969,
		-0.126406, 0.236498, -0.963374,
		27.070694, 35.946320, 36.736752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306770, 36.445950, 37.370625>,  <27.159178, 35.780769, 37.411114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306770, 36.445950, 37.370625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092564, 36.403309, 37.035515>,  <26.964039, 36.377724, 36.834450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092564, 36.403309, 37.035515>,  <27.306770, 36.445950, 37.370625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092564, 36.403309, 37.035515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408193, 0.901102, 0.146266,
		0.739324, 0.420300, -0.526067,
		-0.535516, -0.106599, -0.837770,
		26.931910, 36.371330, 36.784184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381777, 37.040993, 36.982353>,  <27.306770, 36.445950, 37.370625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381777, 37.040993, 36.982353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029760, 36.872654, 36.894344>,  <26.818550, 36.771648, 36.841537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029760, 36.872654, 36.894344>,  <27.381777, 37.040993, 36.982353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029760, 36.872654, 36.894344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467653, 0.848601, 0.247341,
		0.082620, 0.320566, -0.943616,
		-0.880042, -0.420850, -0.220025,
		26.765747, 36.746399, 36.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032396, 37.569908, 36.395248>,  <27.381777, 37.040993, 36.982353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032396, 37.569908, 36.395248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792007, 37.273426, 36.275616>,  <26.647774, 37.095539, 36.203835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792007, 37.273426, 36.275616>,  <27.032396, 37.569908, 36.395248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792007, 37.273426, 36.275616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797064, 0.583550, 0.155430,
		0.059324, 0.331797, -0.941484,
		-0.600974, -0.741202, -0.299082,
		26.611715, 37.051067, 36.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510267, 37.822613, 35.907757>,  <27.032396, 37.569908, 36.395248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510267, 37.822613, 35.907757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366856, 37.492001, 36.081333>,  <26.280807, 37.293633, 36.185478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366856, 37.492001, 36.081333>,  <26.510267, 37.822613, 35.907757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366856, 37.492001, 36.081333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883998, 0.449990, 0.126717,
		-0.300006, -0.338174, -0.891984,
		-0.358531, -0.826527, 0.433945,
		26.259296, 37.244041, 36.211517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777918, 37.609566, 35.705143>,  <26.510267, 37.822613, 35.907757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777918, 37.609566, 35.705143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813833, 37.429596, 36.060558>,  <25.835382, 37.321613, 36.273808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813833, 37.429596, 36.060558>,  <25.777918, 37.609566, 35.705143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813833, 37.429596, 36.060558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731765, 0.575390, 0.365303,
		-0.675617, -0.683003, -0.277577,
		0.089787, -0.449926, 0.888541,
		25.840769, 37.294617, 36.327122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175150, 37.147255, 35.960247>,  <25.777918, 37.609566, 35.705143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175150, 37.147255, 35.960247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387590, 37.345387, 36.235226>,  <25.515055, 37.464268, 36.400211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387590, 37.345387, 36.235226>,  <25.175150, 37.147255, 35.960247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387590, 37.345387, 36.235226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811493, 0.530746, 0.244516,
		-0.243741, -0.687718, 0.683838,
		0.531102, 0.495331, 0.687442,
		25.546921, 37.493984, 36.441460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971367, 37.797016, 36.258911>,  <25.175150, 37.147255, 35.960247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971367, 37.797016, 36.258911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234003, 37.932968, 35.989578>,  <25.391584, 38.014542, 35.827980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234003, 37.932968, 35.989578>,  <24.971367, 37.797016, 36.258911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234003, 37.932968, 35.989578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549334, -0.396229, -0.735686,
		-0.516839, 0.852926, -0.073451,
		0.656589, 0.339883, -0.673328,
		25.430981, 38.034931, 35.787579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916500, 38.211498, 36.844753>,  <24.971367, 37.797016, 36.258911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916500, 38.211498, 36.844753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011923, 37.959805, 37.140633>,  <25.069176, 37.808788, 37.318161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011923, 37.959805, 37.140633>,  <24.916500, 38.211498, 36.844753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011923, 37.959805, 37.140633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847007, -0.237783, -0.475434,
		0.475047, 0.739950, 0.476240,
		0.238555, -0.629232, 0.739701,
		25.083490, 37.771034, 37.362541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766251, 38.261478, 37.077297>,  <24.916500, 38.211498, 36.844753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766251, 38.261478, 37.077297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580452, 37.915966, 37.155407>,  <25.468973, 37.708660, 37.202271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580452, 37.915966, 37.155407>,  <25.766251, 38.261478, 37.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580452, 37.915966, 37.155407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794358, -0.503869, -0.339282,
		0.391455, -0.002480, 0.920194,
		-0.464498, -0.863777, 0.195272,
		25.441103, 37.656834, 37.213989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189859, 37.663811, 37.465763>,  <25.766251, 38.261478, 37.077297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189859, 37.663811, 37.465763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899525, 37.511475, 37.236633>,  <25.725325, 37.420074, 37.099155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899525, 37.511475, 37.236633>,  <26.189859, 37.663811, 37.465763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899525, 37.511475, 37.236633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629622, -0.703193, -0.330297,
		-0.277015, -0.600403, 0.750185,
		-0.725837, -0.380836, -0.572822,
		25.681774, 37.397224, 37.064785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074478, 36.884514, 37.495586>,  <26.189859, 37.663811, 37.465763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074478, 36.884514, 37.495586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988348, 37.010704, 37.125916>,  <25.936670, 37.086418, 36.904114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988348, 37.010704, 37.125916>,  <26.074478, 36.884514, 37.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988348, 37.010704, 37.125916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609206, -0.696250, -0.379611,
		-0.763220, -0.644755, -0.042272,
		-0.215324, 0.315479, -0.924180,
		25.923750, 37.105347, 36.848663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732954, 36.377495, 37.018360>,  <26.074478, 36.884514, 37.495586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732954, 36.377495, 37.018360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951466, 36.637714, 36.807320>,  <26.082573, 36.793846, 36.680695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951466, 36.637714, 36.807320>,  <25.732954, 36.377495, 37.018360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951466, 36.637714, 36.807320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427292, -0.758214, -0.492477,
		-0.720417, 0.043589, -0.692170,
		0.546280, 0.650547, -0.527605,
		26.115349, 36.832878, 36.649036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751749, 36.306408, 36.221325>,  <25.732954, 36.377495, 37.018360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751749, 36.306408, 36.221325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084576, 36.486679, 36.350670>,  <26.284271, 36.594841, 36.428276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084576, 36.486679, 36.350670>,  <25.751749, 36.306408, 36.221325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084576, 36.486679, 36.350670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546341, -0.766588, -0.337423,
		0.095815, 0.457422, -0.884073,
		0.832064, 0.450675, 0.323359,
		26.334194, 36.621883, 36.447678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273317, 36.332100, 35.668659>,  <25.751749, 36.306408, 36.221325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273317, 36.332100, 35.668659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455111, 36.324947, 36.024891>,  <26.564186, 36.320656, 36.238628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455111, 36.324947, 36.024891>,  <26.273317, 36.332100, 35.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455111, 36.324947, 36.024891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553218, -0.777932, -0.297945,
		0.698136, 0.628093, -0.343663,
		0.454484, -0.017885, 0.890575,
		26.591455, 36.319580, 36.292065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871592, 36.169632, 35.480400>,  <26.273317, 36.332100, 35.668659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871592, 36.169632, 35.480400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941565, 36.112854, 35.870117>,  <26.983549, 36.078789, 36.103947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941565, 36.112854, 35.870117>,  <26.871592, 36.169632, 35.480400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941565, 36.112854, 35.870117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644796, -0.731310, -0.222314,
		0.744068, 0.667112, -0.036407,
		0.174933, -0.141941, 0.974295,
		26.994045, 36.070271, 36.162407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639721, 36.211525, 35.567993>,  <26.871592, 36.169632, 35.480400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639721, 36.211525, 35.567993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483452, 36.001610, 35.870510>,  <27.389690, 35.875660, 36.052021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483452, 36.001610, 35.870510>,  <27.639721, 36.211525, 35.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483452, 36.001610, 35.870510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595013, -0.770840, -0.227521,
		0.702378, 0.361116, 0.613400,
		-0.390672, -0.524787, 0.756290,
		27.366251, 35.844173, 36.097397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166531, 35.777561, 35.768986>,  <27.639721, 36.211525, 35.567993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166531, 35.777561, 35.768986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842875, 35.601257, 35.924435>,  <27.648682, 35.495476, 36.017704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842875, 35.601257, 35.924435>,  <28.166531, 35.777561, 35.768986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842875, 35.601257, 35.924435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476716, -0.879046, -0.004427,
		0.343566, 0.181679, 0.921388,
		-0.809138, -0.440762, 0.388619,
		27.600134, 35.469028, 36.041019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177101, 35.426258, 36.289898>,  <28.166531, 35.777561, 35.768986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177101, 35.426258, 36.289898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947430, 35.229992, 36.027733>,  <27.809628, 35.112232, 35.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947430, 35.229992, 36.027733>,  <28.177101, 35.426258, 36.289898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947430, 35.229992, 36.027733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691328, -0.719423, -0.067053,
		-0.438617, -0.491603, 0.752291,
		-0.574179, -0.490670, -0.655410,
		27.775177, 35.082790, 35.831108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021683, 34.768925, 36.491440>,  <28.177101, 35.426258, 36.289898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021683, 34.768925, 36.491440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037451, 34.785698, 36.092102>,  <28.046911, 34.795761, 35.852501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037451, 34.785698, 36.092102>,  <28.021683, 34.768925, 36.491440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037451, 34.785698, 36.092102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594731, -0.803859, -0.010278,
		-0.802958, -0.593340, -0.056628,
		0.039422, 0.041931, -0.998343,
		28.049278, 34.798279, 35.792599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966043, 34.135860, 36.280708>,  <28.021683, 34.768925, 36.491440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966043, 34.135860, 36.280708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190113, 34.378494, 36.055050>,  <28.324554, 34.524075, 35.919655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190113, 34.378494, 36.055050>,  <27.966043, 34.135860, 36.280708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190113, 34.378494, 36.055050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767721, -0.635956, 0.078520,
		-0.311144, -0.477093, -0.821932,
		0.560174, 0.606583, -0.564147,
		28.358166, 34.560471, 35.885807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375595, 33.707260, 35.753216>,  <27.966043, 34.135860, 36.280708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375595, 33.707260, 35.753216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554428, 34.048344, 35.861298>,  <28.661728, 34.252995, 35.926147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554428, 34.048344, 35.861298>,  <28.375595, 33.707260, 35.753216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554428, 34.048344, 35.861298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884454, -0.466542, 0.008879,
		0.133633, 0.235013, -0.962762,
		0.447083, 0.852706, 0.270203,
		28.688553, 34.304157, 35.942360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911430, 33.710289, 35.281750>,  <28.375595, 33.707260, 35.753216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911430, 33.710289, 35.281750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969973, 33.889172, 35.634701>,  <29.005098, 33.996502, 35.846470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969973, 33.889172, 35.634701>,  <28.911430, 33.710289, 35.281750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969973, 33.889172, 35.634701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805909, -0.571170, 0.155807,
		0.573664, 0.688313, -0.443998,
		0.146354, 0.447203, 0.882378,
		29.013880, 34.023331, 35.899414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445974, 33.382656, 35.286526>,  <28.911430, 33.710289, 35.281750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445974, 33.382656, 35.286526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708179, 33.246765, 35.556309>,  <29.865503, 33.165230, 35.718178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708179, 33.246765, 35.556309>,  <29.445974, 33.382656, 35.286526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708179, 33.246765, 35.556309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496755, 0.478709, 0.723928,
		-0.568803, -0.809584, 0.145041,
		0.655513, -0.339723, 0.674456,
		29.904833, 33.144848, 35.758644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002640, 33.108467, 35.904545>,  <29.445974, 33.382656, 35.286526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002640, 33.108467, 35.904545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368889, 33.177181, 36.049942>,  <29.588638, 33.218410, 36.137180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368889, 33.177181, 36.049942>,  <29.002640, 33.108467, 35.904545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368889, 33.177181, 36.049942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401775, 0.423807, 0.811766,
		-0.014602, -0.889313, 0.457066,
		0.915622, 0.171784, 0.363492,
		29.643576, 33.228718, 36.158989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102177, 32.758766, 36.613766>,  <29.002640, 33.108467, 35.904545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102177, 32.758766, 36.613766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357986, 33.065273, 36.588985>,  <29.511473, 33.249180, 36.574116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357986, 33.065273, 36.588985>,  <29.102177, 32.758766, 36.613766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357986, 33.065273, 36.588985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434792, 0.426978, 0.792872,
		0.634008, -0.480124, 0.606231,
		0.639524, 0.766271, -0.061953,
		29.549843, 33.295155, 36.570400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603546, 32.885460, 37.260674>,  <29.102177, 32.758766, 36.613766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603546, 32.885460, 37.260674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538322, 33.216496, 37.045822>,  <29.499187, 33.415115, 36.916912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538322, 33.216496, 37.045822>,  <29.603546, 32.885460, 37.260674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538322, 33.216496, 37.045822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423134, 0.433148, 0.795827,
		0.891274, 0.357048, 0.279550,
		-0.163062, 0.827587, -0.537132,
		29.489405, 33.464771, 36.884682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859482, 33.600529, 37.689228>,  <29.603546, 32.885460, 37.260674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859482, 33.600529, 37.689228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546791, 33.676785, 37.451721>,  <29.359177, 33.722538, 37.309216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546791, 33.676785, 37.451721>,  <29.859482, 33.600529, 37.689228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546791, 33.676785, 37.451721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354889, 0.646927, 0.674936,
		0.512794, 0.738337, -0.438064,
		-0.781726, 0.190639, -0.593769,
		29.312273, 33.733974, 37.273590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904936, 34.280407, 37.434856>,  <29.859482, 33.600529, 37.689228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904936, 34.280407, 37.434856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531599, 34.138409, 37.456200>,  <29.307596, 34.053207, 37.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531599, 34.138409, 37.456200>,  <29.904936, 34.280407, 37.434856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531599, 34.138409, 37.456200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238494, 0.724278, 0.646948,
		-0.268314, 0.591098, -0.760665,
		-0.933343, -0.354999, 0.053360,
		29.251596, 34.031910, 37.472206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902107, 34.554977, 36.644901>,  <29.904936, 34.280407, 37.434856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902107, 34.554977, 36.644901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894882, 34.179718, 36.783199>,  <29.890547, 33.954563, 36.866180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894882, 34.179718, 36.783199>,  <29.902107, 34.554977, 36.644901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894882, 34.179718, 36.783199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406604, -0.322813, -0.854673,
		0.913426, 0.125144, 0.387288,
		-0.018064, -0.938153, 0.345749,
		29.889463, 33.898273, 36.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516823, 34.164730, 36.430294>,  <29.902107, 34.554977, 36.644901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516823, 34.164730, 36.430294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255796, 33.875893, 36.522156>,  <30.099180, 33.702591, 36.577274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255796, 33.875893, 36.522156>,  <30.516823, 34.164730, 36.430294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255796, 33.875893, 36.522156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462134, -0.619467, -0.634581,
		0.600489, -0.307974, 0.737946,
		-0.652567, -0.722089, 0.229658,
		30.060026, 33.659267, 36.591053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796064, 33.467026, 36.681499>,  <30.516823, 34.164730, 36.430294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796064, 33.467026, 36.681499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440004, 33.382534, 36.520000>,  <30.226368, 33.331841, 36.423100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440004, 33.382534, 36.520000>,  <30.796064, 33.467026, 36.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440004, 33.382534, 36.520000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434588, -0.659918, -0.612896,
		-0.136978, -0.721034, 0.679225,
		-0.890152, -0.211230, -0.403747,
		30.172958, 33.319164, 36.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518791, 32.678864, 36.783733>,  <30.796064, 33.467026, 36.681499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518791, 32.678864, 36.783733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362808, 32.844208, 36.454597>,  <30.269218, 32.943413, 36.257114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362808, 32.844208, 36.454597>,  <30.518791, 32.678864, 36.783733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362808, 32.844208, 36.454597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518152, -0.640189, -0.567166,
		-0.761217, -0.647527, 0.035462,
		-0.389957, 0.413362, -0.822840,
		30.245821, 32.968216, 36.207745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233025, 32.141087, 36.340328>,  <30.518791, 32.678864, 36.783733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233025, 32.141087, 36.340328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335346, 32.469307, 36.135872>,  <30.396740, 32.666241, 36.013199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335346, 32.469307, 36.135872>,  <30.233025, 32.141087, 36.340328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335346, 32.469307, 36.135872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321942, -0.570856, -0.755299,
		-0.911546, 0.028654, -0.410198,
		0.255806, 0.820550, -0.511137,
		30.412088, 32.715473, 35.982533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630266, 31.940632, 35.861588>,  <30.233025, 32.141087, 36.340328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630266, 31.940632, 35.861588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526472, 32.289333, 35.695354>,  <30.464195, 32.498554, 35.595615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526472, 32.289333, 35.695354>,  <30.630266, 31.940632, 35.861588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526472, 32.289333, 35.695354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395768, -0.296544, -0.869154,
		-0.880929, -0.390007, -0.268065,
		-0.259483, 0.871755, -0.415586,
		30.448627, 32.550861, 35.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027100, 32.079666, 35.348106>,  <30.630266, 31.940632, 35.861588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027100, 32.079666, 35.348106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316690, 32.315220, 35.204399>,  <30.490444, 32.456551, 35.118176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316690, 32.315220, 35.204399>,  <30.027100, 32.079666, 35.348106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316690, 32.315220, 35.204399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193785, -0.673461, -0.713370,
		-0.662048, 0.446841, -0.601686,
		0.723975, 0.588883, -0.359273,
		30.533882, 32.491886, 35.096619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855761, 32.243954, 34.653358>,  <30.027100, 32.079666, 35.348106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855761, 32.243954, 34.653358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251585, 32.284821, 34.694008>,  <30.489080, 32.309341, 34.718399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251585, 32.284821, 34.694008>,  <29.855761, 32.243954, 34.653358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251585, 32.284821, 34.694008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140994, -0.540864, -0.829209,
		-0.029751, 0.834882, -0.549624,
		0.989563, 0.102164, 0.101622,
		30.548454, 32.315472, 34.724495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095285, 32.390587, 34.020451>,  <29.855761, 32.243954, 34.653358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095285, 32.390587, 34.020451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429285, 32.241058, 34.181957>,  <30.629684, 32.151340, 34.278862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429285, 32.241058, 34.181957>,  <30.095285, 32.390587, 34.020451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429285, 32.241058, 34.181957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089046, -0.632324, -0.769570,
		0.542996, 0.678545, -0.494703,
		0.835001, -0.373822, 0.403771,
		30.679785, 32.128910, 34.303089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460688, 32.223587, 33.452862>,  <30.095285, 32.390587, 34.020451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460688, 32.223587, 33.452862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679621, 32.062630, 33.746395>,  <30.810980, 31.966055, 33.922516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679621, 32.062630, 33.746395>,  <30.460688, 32.223587, 33.452862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679621, 32.062630, 33.746395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395492, -0.648386, -0.650524,
		0.737574, 0.646276, -0.195737,
		0.547331, -0.402397, 0.733829,
		30.843821, 31.941910, 33.966545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120657, 32.240368, 33.200825>,  <30.460688, 32.223587, 33.452862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120657, 32.240368, 33.200825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144165, 31.967482, 33.492340>,  <31.158270, 31.803751, 33.667248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144165, 31.967482, 33.492340>,  <31.120657, 32.240368, 33.200825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144165, 31.967482, 33.492340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353791, -0.668431, -0.654241,
		0.933476, 0.296289, 0.202077,
		0.058770, -0.682212, 0.728789,
		31.161797, 31.762817, 33.710976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678183, 31.826242, 33.110302>,  <31.120657, 32.240368, 33.200825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678183, 31.826242, 33.110302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441799, 31.600075, 33.340454>,  <31.299969, 31.464375, 33.478546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441799, 31.600075, 33.340454>,  <31.678183, 31.826242, 33.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441799, 31.600075, 33.340454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294848, -0.815298, -0.498351,
		0.750888, -0.124854, 0.648521,
		-0.590959, -0.565421, 0.575384,
		31.264511, 31.430449, 33.513069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062557, 31.213488, 33.222645>,  <31.678183, 31.826242, 33.110302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062557, 31.213488, 33.222645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685343, 31.095726, 33.284618>,  <31.459013, 31.025068, 33.321804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685343, 31.095726, 33.284618>,  <32.062557, 31.213488, 33.222645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685343, 31.095726, 33.284618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141801, -0.776996, -0.613327,
		0.300952, -0.556420, 0.774484,
		-0.943038, -0.294404, 0.154938,
		31.402431, 31.007404, 33.331100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170246, 30.535818, 33.198441>,  <32.062557, 31.213488, 33.222645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170246, 30.535818, 33.198441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786577, 30.594526, 33.101734>,  <31.556376, 30.629751, 33.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786577, 30.594526, 33.101734>,  <32.170246, 30.535818, 33.198441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786577, 30.594526, 33.101734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046510, -0.761324, -0.646701,
		-0.278980, -0.631541, 0.723413,
		-0.959170, 0.146771, -0.241767,
		31.498827, 30.638557, 33.029205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926271, 29.878317, 33.288265>,  <32.170246, 30.535818, 33.198441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926271, 29.878317, 33.288265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667421, 30.076103, 33.056152>,  <31.512112, 30.194775, 32.916885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667421, 30.076103, 33.056152>,  <31.926271, 29.878317, 33.288265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667421, 30.076103, 33.056152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059957, -0.725780, -0.685309,
		-0.760023, -0.478273, 0.440023,
		-0.647124, 0.494468, -0.580285,
		31.473284, 30.224443, 32.882065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462811, 29.374161, 33.117012>,  <31.926271, 29.878317, 33.288265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462811, 29.374161, 33.117012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428209, 29.670641, 32.850739>,  <31.407448, 29.848530, 32.690975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428209, 29.670641, 32.850739>,  <31.462811, 29.374161, 33.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428209, 29.670641, 32.850739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037165, -0.670126, -0.741316,
		-0.995558, -0.039387, 0.085516,
		-0.086505, 0.741201, -0.665686,
		31.402258, 29.893002, 32.651031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815922, 29.282682, 32.732449>,  <31.462811, 29.374161, 33.117012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815922, 29.282682, 32.732449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078552, 29.491854, 32.515026>,  <31.236132, 29.617357, 32.384571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078552, 29.491854, 32.515026>,  <30.815922, 29.282682, 32.732449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078552, 29.491854, 32.515026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122136, -0.637427, -0.760769,
		-0.744304, 0.565892, -0.354652,
		0.656578, 0.522928, -0.543555,
		31.275526, 29.648731, 32.351959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562160, 29.131138, 31.991180>,  <30.815922, 29.282682, 32.732449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562160, 29.131138, 31.991180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880238, 29.350025, 31.886703>,  <31.071083, 29.481358, 31.824017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880238, 29.350025, 31.886703>,  <30.562160, 29.131138, 31.991180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880238, 29.350025, 31.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009560, -0.419387, -0.907757,
		-0.606284, 0.724337, -0.328261,
		0.795191, 0.547220, -0.261192,
		31.118795, 29.514191, 31.808346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350863, 29.350838, 31.399605>,  <30.562160, 29.131138, 31.991180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350863, 29.350838, 31.399605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746574, 29.405939, 31.419010>,  <30.984001, 29.438999, 31.430655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746574, 29.405939, 31.419010>,  <30.350863, 29.350838, 31.399605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746574, 29.405939, 31.419010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075947, -0.201485, -0.976543,
		-0.124746, 0.969757, -0.209787,
		0.989278, 0.137753, 0.048516,
		31.043358, 29.447266, 31.433565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557364, 29.844557, 30.879770>,  <30.350863, 29.350838, 31.399605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557364, 29.844557, 30.879770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893652, 29.641626, 30.955460>,  <31.095425, 29.519867, 31.000874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893652, 29.641626, 30.955460>,  <30.557364, 29.844557, 30.879770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893652, 29.641626, 30.955460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125385, -0.157556, -0.979518,
		0.526749, 0.847228, -0.068850,
		0.840722, -0.507327, 0.189223,
		31.145868, 29.489428, 31.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145533, 30.182165, 30.641575>,  <30.557364, 29.844557, 30.879770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145533, 30.182165, 30.641575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293209, 29.810453, 30.646227>,  <31.381815, 29.587425, 30.649017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293209, 29.810453, 30.646227>,  <31.145533, 30.182165, 30.641575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293209, 29.810453, 30.646227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308771, 0.110848, -0.944655,
		0.876562, 0.352348, 0.327859,
		0.369189, -0.929282, 0.011630,
		31.403965, 29.531670, 30.649715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867605, 30.281303, 30.353987>,  <31.145533, 30.182165, 30.641575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867605, 30.281303, 30.353987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719578, 29.917284, 30.279305>,  <31.630760, 29.698872, 30.234495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719578, 29.917284, 30.279305>,  <31.867605, 30.281303, 30.353987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719578, 29.917284, 30.279305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051358, 0.220706, -0.973987,
		0.927583, -0.350854, -0.128415,
		-0.370070, -0.910049, -0.186704,
		31.608557, 29.644270, 30.223293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207798, 29.993670, 29.709581>,  <31.867605, 30.281303, 30.353987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207798, 29.993670, 29.709581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868568, 29.784565, 29.744183>,  <31.665030, 29.659101, 29.764944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868568, 29.784565, 29.744183>,  <32.207798, 29.993670, 29.709581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868568, 29.784565, 29.744183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263283, 0.274065, -0.924970,
		0.459832, -0.807222, -0.370063,
		-0.848078, -0.522762, 0.086504,
		31.614145, 29.627737, 29.770134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098618, 29.585985, 29.113176>,  <32.207798, 29.993670, 29.709581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098618, 29.585985, 29.113176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729334, 29.604040, 29.265835>,  <31.507765, 29.614872, 29.357430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729334, 29.604040, 29.265835>,  <32.098618, 29.585985, 29.113176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729334, 29.604040, 29.265835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378935, 0.058564, -0.923568,
		-0.064040, -0.997263, -0.036962,
		-0.923205, 0.045139, 0.381648,
		31.452372, 29.617580, 29.380329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688824, 29.053785, 28.745779>,  <32.098618, 29.585985, 29.113176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688824, 29.053785, 28.745779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425119, 29.301462, 28.916412>,  <31.266897, 29.450068, 29.018793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425119, 29.301462, 28.916412>,  <31.688824, 29.053785, 28.745779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425119, 29.301462, 28.916412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395134, 0.197385, -0.897167,
		-0.639720, -0.760026, 0.114536,
		-0.659262, 0.619193, 0.426584,
		31.227341, 29.487221, 29.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066772, 28.912825, 28.442146>,  <31.688824, 29.053785, 28.745779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066772, 28.912825, 28.442146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046894, 29.287416, 28.581022>,  <31.034967, 29.512171, 28.664349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046894, 29.287416, 28.581022>,  <31.066772, 28.912825, 28.442146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046894, 29.287416, 28.581022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411556, 0.297533, -0.861450,
		-0.910029, -0.185700, 0.370626,
		-0.049698, 0.936477, 0.347189,
		31.031984, 29.568359, 28.685179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526531, 29.137138, 28.110838>,  <31.066772, 28.912825, 28.442146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526531, 29.137138, 28.110838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697338, 29.477903, 28.232100>,  <30.799822, 29.682362, 28.304857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697338, 29.477903, 28.232100>,  <30.526531, 29.137138, 28.110838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697338, 29.477903, 28.232100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349579, 0.464721, -0.813528,
		-0.833938, 0.241412, 0.496253,
		0.427015, 0.851912, 0.303156,
		30.825443, 29.733477, 28.323046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083736, 29.615211, 28.107737>,  <30.526531, 29.137138, 28.110838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083736, 29.615211, 28.107737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414919, 29.837786, 28.079815>,  <30.613628, 29.971331, 28.063063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414919, 29.837786, 28.079815>,  <30.083736, 29.615211, 28.107737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414919, 29.837786, 28.079815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393984, 0.488572, -0.778507,
		-0.399084, 0.672071, 0.623741,
		0.827955, 0.556434, -0.069804,
		30.663305, 30.004715, 28.058874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908222, 30.340149, 27.944590>,  <30.083736, 29.615211, 28.107737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908222, 30.340149, 27.944590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274153, 30.244448, 27.814449>,  <30.493711, 30.187027, 27.736364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274153, 30.244448, 27.814449>,  <29.908222, 30.340149, 27.944590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274153, 30.244448, 27.814449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216640, 0.389164, -0.895332,
		0.340827, 0.889555, 0.304184,
		0.914825, -0.239254, -0.325351,
		30.548599, 30.172672, 27.716845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112873, 31.008169, 27.634811>,  <29.908222, 30.340149, 27.944590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112873, 31.008169, 27.634811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338943, 30.705023, 27.504452>,  <30.474586, 30.523134, 27.426235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338943, 30.705023, 27.504452>,  <30.112873, 31.008169, 27.634811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338943, 30.705023, 27.504452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057108, 0.430039, -0.901002,
		0.822991, 0.490614, 0.286329,
		0.565177, -0.757868, -0.325900,
		30.508497, 30.477663, 27.406681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525419, 31.401831, 27.168709>,  <30.112873, 31.008169, 27.634811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525419, 31.401831, 27.168709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578804, 31.021601, 27.056572>,  <30.610834, 30.793463, 26.989290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578804, 31.021601, 27.056572>,  <30.525419, 31.401831, 27.168709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578804, 31.021601, 27.056572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113047, 0.266426, -0.957203,
		0.984585, 0.159442, -0.071902,
		0.133462, -0.950576, -0.280343,
		30.618843, 30.736427, 26.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157293, 31.321730, 26.653074>,  <30.525419, 31.401831, 27.168709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157293, 31.321730, 26.653074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928314, 30.999300, 26.593018>,  <30.790926, 30.805841, 26.556984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928314, 30.999300, 26.593018>,  <31.157293, 31.321730, 26.653074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928314, 30.999300, 26.593018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172147, 0.060878, -0.983188,
		0.801665, -0.588672, 0.103914,
		-0.572450, -0.806076, -0.150142,
		30.756578, 30.757477, 26.547976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529140, 31.025621, 26.171814>,  <31.157293, 31.321730, 26.653074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529140, 31.025621, 26.171814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171186, 30.850279, 26.138296>,  <30.956413, 30.745073, 26.118185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171186, 30.850279, 26.138296>,  <31.529140, 31.025621, 26.171814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171186, 30.850279, 26.138296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012738, 0.162598, -0.986610,
		0.446113, -0.883971, -0.139923,
		-0.894886, -0.438357, -0.083797,
		30.902721, 30.718773, 26.113157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631815, 30.479670, 25.739378>,  <31.529140, 31.025621, 26.171814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631815, 30.479670, 25.739378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241060, 30.564857, 25.731995>,  <31.006607, 30.615971, 25.727564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241060, 30.564857, 25.731995>,  <31.631815, 30.479670, 25.739378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241060, 30.564857, 25.731995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008032, -0.049732, -0.998730,
		-0.213618, -0.975792, 0.046872,
		-0.976884, 0.212970, -0.018461,
		30.947994, 30.628748, 25.726456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478388, 30.216393, 25.191605>,  <31.631815, 30.479670, 25.739378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478388, 30.216393, 25.191605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164066, 30.459179, 25.239113>,  <30.975473, 30.604851, 25.267618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164066, 30.459179, 25.239113>,  <31.478388, 30.216393, 25.191605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164066, 30.459179, 25.239113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050339, 0.254163, -0.965850,
		-0.616426, -0.752988, -0.230276,
		-0.785802, 0.606968, 0.118768,
		30.928326, 30.641270, 25.274744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946896, 29.936825, 24.864243>,  <31.478388, 30.216393, 25.191605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946896, 29.936825, 24.864243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856283, 30.325657, 24.888702>,  <30.801916, 30.558956, 24.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856283, 30.325657, 24.888702>,  <30.946896, 29.936825, 24.864243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856283, 30.325657, 24.888702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205987, 0.013549, -0.978461,
		-0.951973, -0.234249, 0.197167,
		-0.226532, 0.972082, 0.061150,
		30.788324, 30.617281, 24.907047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632484, 30.053337, 24.233644>,  <30.946896, 29.936825, 24.864243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632484, 30.053337, 24.233644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735962, 30.421379, 24.351276>,  <30.798048, 30.642204, 24.421856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735962, 30.421379, 24.351276>,  <30.632484, 30.053337, 24.233644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735962, 30.421379, 24.351276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137593, 0.266237, -0.954037,
		-0.956109, 0.287269, -0.057726,
		0.258696, 0.920106, 0.294078,
		30.813570, 30.697411, 24.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071360, 30.541174, 23.966494>,  <30.632484, 30.053337, 24.233644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071360, 30.541174, 23.966494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407059, 30.748409, 24.032520>,  <30.608479, 30.872751, 24.072136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407059, 30.748409, 24.032520>,  <30.071360, 30.541174, 23.966494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407059, 30.748409, 24.032520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035935, 0.355754, -0.933888,
		-0.542561, 0.777831, 0.317183,
		0.839247, 0.518090, 0.165067,
		30.658833, 30.903835, 24.082041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030985, 31.199903, 23.706596>,  <30.071360, 30.541174, 23.966494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030985, 31.199903, 23.706596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429790, 31.170364, 23.715649>,  <30.669073, 31.152641, 23.721081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429790, 31.170364, 23.715649>,  <30.030985, 31.199903, 23.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429790, 31.170364, 23.715649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058174, 0.525178, -0.849002,
		0.050813, 0.847782, 0.527905,
		0.997013, -0.073850, 0.022633,
		30.728895, 31.148209, 23.722439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336292, 31.928719, 23.634626>,  <30.030985, 31.199903, 23.706596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336292, 31.928719, 23.634626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609449, 31.658009, 23.524618>,  <30.773344, 31.495583, 23.458612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609449, 31.658009, 23.524618>,  <30.336292, 31.928719, 23.634626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609449, 31.658009, 23.524618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037839, 0.408736, -0.911868,
		0.729539, 0.612300, 0.304731,
		0.682891, -0.676774, -0.275020,
		30.814318, 31.454977, 23.442112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825027, 32.380005, 23.197741>,  <30.336292, 31.928719, 23.634626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825027, 32.380005, 23.197741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933769, 32.003170, 23.119190>,  <30.999014, 31.777069, 23.072060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933769, 32.003170, 23.119190>,  <30.825027, 32.380005, 23.197741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933769, 32.003170, 23.119190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123697, 0.236578, -0.963706,
		0.954355, 0.237698, 0.180849,
		0.271856, -0.942088, -0.196377,
		31.015326, 31.720543, 23.060278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489761, 32.362087, 22.892189>,  <30.825027, 32.380005, 23.197741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489761, 32.362087, 22.892189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315695, 32.024017, 22.768047>,  <31.211256, 31.821177, 22.693563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315695, 32.024017, 22.768047>,  <31.489761, 32.362087, 22.892189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315695, 32.024017, 22.768047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234673, 0.226313, -0.945363,
		0.869229, -0.484220, 0.099855,
		-0.435165, -0.845171, -0.310352,
		31.185144, 31.770466, 22.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981407, 32.105305, 22.464212>,  <31.489761, 32.362087, 22.892189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981407, 32.105305, 22.464212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636749, 31.939123, 22.347618>,  <31.429955, 31.839415, 22.277660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636749, 31.939123, 22.347618>,  <31.981407, 32.105305, 22.464212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636749, 31.939123, 22.347618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139976, 0.357527, -0.923353,
		0.487829, -0.836403, -0.249906,
		-0.861643, -0.415457, -0.291488,
		31.378256, 31.814486, 22.260172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096455, 31.800524, 21.769596>,  <31.981407, 32.105305, 22.464212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096455, 31.800524, 21.769596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698502, 31.840374, 21.776257>,  <31.459728, 31.864285, 21.780252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698502, 31.840374, 21.776257>,  <32.096455, 31.800524, 21.769596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698502, 31.840374, 21.776257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026652, 0.417907, -0.908099,
		-0.097430, -0.903011, -0.418425,
		-0.994886, 0.099627, 0.016650,
		31.400036, 31.870262, 21.781252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904856, 31.678438, 21.129635>,  <32.096455, 31.800524, 21.769596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904856, 31.678438, 21.129635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562593, 31.848452, 21.247753>,  <31.357237, 31.950460, 21.318624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562593, 31.848452, 21.247753>,  <31.904856, 31.678438, 21.129635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562593, 31.848452, 21.247753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111112, 0.406399, -0.906914,
		-0.505479, -0.808817, -0.300511,
		-0.855655, 0.425036, 0.295295,
		31.305897, 31.975962, 21.336342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391783, 31.485546, 20.567017>,  <31.904856, 31.678438, 21.129635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391783, 31.485546, 20.567017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239479, 31.793722, 20.771544>,  <31.148096, 31.978628, 20.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239479, 31.793722, 20.771544>,  <31.391783, 31.485546, 20.567017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239479, 31.793722, 20.771544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373257, 0.377857, -0.847292,
		-0.845992, -0.513467, 0.143699,
		-0.380759, 0.770439, 0.511319,
		31.125252, 32.024853, 20.924940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669342, 31.623018, 20.284142>,  <31.391783, 31.485546, 20.567017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669342, 31.623018, 20.284142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800676, 31.946228, 20.479811>,  <30.879477, 32.140156, 20.597212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800676, 31.946228, 20.479811>,  <30.669342, 31.623018, 20.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800676, 31.946228, 20.479811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128704, 0.551324, -0.824304,
		-0.935751, 0.207691, 0.285016,
		0.328337, 0.808026, 0.489171,
		30.899178, 32.188637, 20.626562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272335, 32.059509, 20.071362>,  <30.669342, 31.623018, 20.284142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272335, 32.059509, 20.071362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556665, 32.313385, 20.192617>,  <30.727264, 32.465710, 20.265371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556665, 32.313385, 20.192617>,  <30.272335, 32.059509, 20.071362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556665, 32.313385, 20.192617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093953, 0.512798, -0.853353,
		-0.697064, 0.578105, 0.424142,
		0.710827, 0.634691, 0.303138,
		30.769913, 32.503792, 20.283560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044928, 32.765465, 19.773031>,  <30.272335, 32.059509, 20.071362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044928, 32.765465, 19.773031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437654, 32.777431, 19.848011>,  <30.673290, 32.784611, 19.892998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437654, 32.777431, 19.848011>,  <30.044928, 32.765465, 19.773031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437654, 32.777431, 19.848011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153776, 0.453589, -0.877844,
		-0.111284, 0.890709, 0.440742,
		0.981819, 0.029915, 0.187447,
		30.732201, 32.786407, 19.904245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311245, 33.432270, 19.739378>,  <30.044928, 32.765465, 19.773031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311245, 33.432270, 19.739378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357487, 33.764019, 19.520733>,  <30.385231, 33.963066, 19.389545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357487, 33.764019, 19.520733>,  <30.311245, 33.432270, 19.739378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357487, 33.764019, 19.520733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285168, -0.554846, -0.781553,
		-0.951480, -0.065525, -0.300651,
		0.115604, 0.829368, -0.546611,
		30.392168, 34.012829, 19.356749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326473, 33.273266, 19.114946>,  <30.311245, 33.432270, 19.739378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326473, 33.273266, 19.114946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437767, 33.643116, 19.010904>,  <30.504543, 33.865025, 18.948479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437767, 33.643116, 19.010904>,  <30.326473, 33.273266, 19.114946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437767, 33.643116, 19.010904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250488, -0.331277, -0.909676,
		-0.927276, 0.187951, -0.323780,
		0.278235, 0.924624, -0.260106,
		30.521238, 33.920502, 18.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906404, 33.441219, 18.527514>,  <30.326473, 33.273266, 19.114946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906404, 33.441219, 18.527514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251110, 33.644142, 18.526957>,  <30.457933, 33.765896, 18.526623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251110, 33.644142, 18.526957>,  <29.906404, 33.441219, 18.527514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251110, 33.644142, 18.526957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202892, -0.347167, -0.915593,
		-0.464970, 0.788742, -0.402105,
		0.861764, 0.507307, -0.001393,
		30.509640, 33.796333, 18.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958092, 33.835781, 17.875614>,  <29.906404, 33.441219, 18.527514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958092, 33.835781, 17.875614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314133, 33.734425, 18.027145>,  <30.527758, 33.673611, 18.118065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314133, 33.734425, 18.027145>,  <29.958092, 33.835781, 17.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314133, 33.734425, 18.027145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255480, -0.410931, -0.875137,
		0.377422, 0.875745, -0.301036,
		0.890103, -0.253388, 0.378830,
		30.581163, 33.658409, 18.140795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323896, 34.124454, 17.384001>,  <29.958092, 33.835781, 17.875614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323896, 34.124454, 17.384001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540121, 33.842384, 17.567530>,  <30.669855, 33.673141, 17.677647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540121, 33.842384, 17.567530>,  <30.323896, 34.124454, 17.384001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540121, 33.842384, 17.567530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331450, -0.322757, -0.886549,
		0.773262, 0.631311, 0.059261,
		0.540561, -0.705177, 0.458824,
		30.702290, 33.630833, 17.705177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037701, 34.159290, 17.454256>,  <30.323896, 34.124454, 17.384001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037701, 34.159290, 17.454256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959621, 33.770016, 17.405575>,  <30.912773, 33.536453, 17.376366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959621, 33.770016, 17.405575>,  <31.037701, 34.159290, 17.454256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959621, 33.770016, 17.405575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461961, 0.018228, -0.886713,
		0.865153, -0.229308, 0.446014,
		-0.195200, -0.973183, -0.121701,
		30.901062, 33.478062, 17.369064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687010, 33.857628, 17.450182>,  <31.037701, 34.159290, 17.454256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687010, 33.857628, 17.450182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387131, 33.695190, 17.241171>,  <31.207203, 33.597729, 17.115765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387131, 33.695190, 17.241171>,  <31.687010, 33.857628, 17.450182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387131, 33.695190, 17.241171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594436, -0.066208, -0.801413,
		0.290857, -0.911428, 0.291035,
		-0.749699, -0.406098, -0.522528,
		31.162222, 33.573360, 17.084412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769615, 34.020939, 18.285004>,  <31.687010, 33.857628, 17.450182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769615, 34.020939, 18.285004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377531, 33.986267, 18.213816>,  <31.142281, 33.965466, 18.171103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377531, 33.986267, 18.213816>,  <31.769615, 34.020939, 18.285004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377531, 33.986267, 18.213816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193978, 0.241214, 0.950888,
		-0.039493, 0.966594, -0.253254,
		-0.980211, -0.086679, -0.177972,
		31.083467, 33.960262, 18.160423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497833, 34.578545, 18.507082>,  <31.769615, 34.020939, 18.285004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497833, 34.578545, 18.507082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176876, 34.339828, 18.507225>,  <30.984301, 34.196598, 18.507311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176876, 34.339828, 18.507225>,  <31.497833, 34.578545, 18.507082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176876, 34.339828, 18.507225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301751, 0.406221, 0.862514,
		-0.514888, 0.691969, -0.506033,
		-0.802395, -0.596794, 0.000356,
		30.936157, 34.160789, 18.507332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899288, 35.085773, 18.509363>,  <31.497833, 34.578545, 18.507082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899288, 35.085773, 18.509363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801456, 34.722553, 18.645384>,  <30.742758, 34.504623, 18.726995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801456, 34.722553, 18.645384>,  <30.899288, 35.085773, 18.509363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801456, 34.722553, 18.645384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379021, 0.412329, 0.828449,
		-0.892483, 0.073734, -0.445015,
		-0.244578, -0.908046, 0.340050,
		30.728083, 34.450138, 18.747398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196144, 35.097973, 18.709993>,  <30.899288, 35.085773, 18.509363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196144, 35.097973, 18.709993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423059, 34.837341, 18.911440>,  <30.559210, 34.680962, 19.032309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423059, 34.837341, 18.911440>,  <30.196144, 35.097973, 18.709993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423059, 34.837341, 18.911440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330280, 0.380193, 0.863926,
		-0.754386, -0.656431, 0.000477,
		0.567289, -0.651576, 0.503618,
		30.593246, 34.641869, 19.062525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764561, 34.732224, 19.317074>,  <30.196144, 35.097973, 18.709993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764561, 34.732224, 19.317074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154114, 34.680916, 19.392014>,  <30.387846, 34.650131, 19.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154114, 34.680916, 19.392014>,  <29.764561, 34.732224, 19.317074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154114, 34.680916, 19.392014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157294, 0.213906, 0.964107,
		-0.163738, -0.968396, 0.188144,
		0.973883, -0.128267, 0.187348,
		30.446280, 34.642437, 19.448217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840553, 34.430069, 20.031170>,  <29.764561, 34.732224, 19.317074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840553, 34.430069, 20.031170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212641, 34.537575, 19.931200>,  <30.435894, 34.602077, 19.871218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212641, 34.537575, 19.931200>,  <29.840553, 34.430069, 20.031170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212641, 34.537575, 19.931200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245739, 0.049673, 0.968062,
		0.272592, -0.961925, -0.019839,
		0.930218, 0.268761, -0.249923,
		30.491707, 34.618202, 19.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224819, 33.940140, 20.437626>,  <29.840553, 34.430069, 20.031170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224819, 33.940140, 20.437626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414352, 34.287003, 20.376274>,  <30.528072, 34.495121, 20.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414352, 34.287003, 20.376274>,  <30.224819, 33.940140, 20.437626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414352, 34.287003, 20.376274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478325, -0.107200, 0.871615,
		0.739383, -0.486365, -0.465577,
		0.473833, 0.867155, -0.153379,
		30.556501, 34.547150, 20.330261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911423, 33.771896, 20.799292>,  <30.224819, 33.940140, 20.437626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911423, 33.771896, 20.799292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903645, 34.169930, 20.760462>,  <30.898977, 34.408749, 20.737164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903645, 34.169930, 20.760462>,  <30.911423, 33.771896, 20.799292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903645, 34.169930, 20.760462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473928, 0.094664, 0.875460,
		0.880349, -0.028983, -0.473441,
		-0.019444, 0.995087, -0.097074,
		30.897812, 34.468456, 20.731340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575068, 33.992855, 20.916088>,  <30.911423, 33.771896, 20.799292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575068, 33.992855, 20.916088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340693, 34.312218, 20.971537>,  <31.200068, 34.503838, 21.004807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340693, 34.312218, 20.971537>,  <31.575068, 33.992855, 20.916088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340693, 34.312218, 20.971537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421860, 0.154478, 0.893404,
		0.691889, 0.581959, -0.427333,
		-0.585938, 0.798411, 0.138623,
		31.164911, 34.551743, 21.013124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075085, 34.507584, 21.261391>,  <31.575068, 33.992855, 20.916088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075085, 34.507584, 21.261391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704927, 34.645908, 21.323435>,  <31.482834, 34.728905, 21.360662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704927, 34.645908, 21.323435>,  <32.075085, 34.507584, 21.261391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704927, 34.645908, 21.323435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279333, 0.345678, 0.895812,
		0.256168, 0.872306, -0.416486,
		-0.925393, 0.345816, 0.155112,
		31.427309, 34.749653, 21.369968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198032, 35.188755, 21.470554>,  <32.075085, 34.507584, 21.261391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198032, 35.188755, 21.470554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819000, 35.113930, 21.574163>,  <31.591579, 35.069035, 21.636330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819000, 35.113930, 21.574163>,  <32.198032, 35.188755, 21.470554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819000, 35.113930, 21.574163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131864, 0.509473, 0.850323,
		-0.291029, 0.839908, -0.458101,
		-0.947583, -0.187062, 0.259025,
		31.534725, 35.057812, 21.651871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955730, 35.888248, 21.770267>,  <32.198032, 35.188755, 21.470554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955730, 35.888248, 21.770267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740387, 35.585251, 21.917982>,  <31.611181, 35.403454, 22.006611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740387, 35.585251, 21.917982>,  <31.955730, 35.888248, 21.770267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740387, 35.585251, 21.917982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132729, 0.356525, 0.924809,
		-0.832198, 0.546894, -0.091397,
		-0.538358, -0.757493, 0.369289,
		31.578880, 35.358002, 22.028769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554674, 36.205093, 22.211454>,  <31.955730, 35.888248, 21.770267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554674, 36.205093, 22.211454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568470, 35.822498, 22.327351>,  <31.576748, 35.592941, 22.396889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568470, 35.822498, 22.327351>,  <31.554674, 36.205093, 22.211454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568470, 35.822498, 22.327351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003844, 0.290039, 0.957007,
		-0.999398, -0.031894, 0.013681,
		0.034491, -0.956483, 0.289741,
		31.578817, 35.535553, 22.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373232, 36.311050, 22.902023>,  <31.554674, 36.205093, 22.211454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373232, 36.311050, 22.902023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487574, 35.928131, 22.884705>,  <31.556179, 35.698380, 22.874313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487574, 35.928131, 22.884705>,  <31.373232, 36.311050, 22.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487574, 35.928131, 22.884705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132745, -0.005187, 0.991137,
		-0.949034, -0.289069, 0.125594,
		0.285856, -0.957294, -0.043295,
		31.573330, 35.640942, 22.871716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065741, 35.914581, 23.424347>,  <31.373232, 36.311050, 22.902023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065741, 35.914581, 23.424347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384624, 35.685986, 23.346523>,  <31.575954, 35.548828, 23.299829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384624, 35.685986, 23.346523>,  <31.065741, 35.914581, 23.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384624, 35.685986, 23.346523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237724, 0.000933, 0.971332,
		-0.554929, -0.820606, 0.136602,
		0.797208, -0.571494, -0.194559,
		31.623787, 35.514538, 23.288155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102510, 35.594360, 24.025330>,  <31.065741, 35.914581, 23.424347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102510, 35.594360, 24.025330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455105, 35.475811, 23.878279>,  <31.666660, 35.404682, 23.790049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455105, 35.475811, 23.878279>,  <31.102510, 35.594360, 24.025330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455105, 35.475811, 23.878279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274873, -0.310993, 0.909796,
		-0.383969, -0.903021, -0.192670,
		0.881483, -0.296374, -0.367627,
		31.719549, 35.386898, 23.767990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224401, 34.833286, 23.938259>,  <31.102510, 35.594360, 24.025330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224401, 34.833286, 23.938259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553354, 35.044262, 24.023579>,  <31.750725, 35.170849, 24.074770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553354, 35.044262, 24.023579>,  <31.224401, 34.833286, 23.938259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553354, 35.044262, 24.023579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108615, -0.513561, 0.851151,
		0.558474, -0.676803, -0.479631,
		0.822381, 0.527440, 0.213299,
		31.800068, 35.202496, 24.087568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747957, 34.377953, 24.162321>,  <31.224401, 34.833286, 23.938259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747957, 34.377953, 24.162321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868284, 34.732426, 24.303284>,  <31.940481, 34.945110, 24.387861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868284, 34.732426, 24.303284>,  <31.747957, 34.377953, 24.162321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868284, 34.732426, 24.303284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023898, -0.376413, 0.926144,
		0.953382, -0.270178, -0.134410,
		0.300817, 0.886181, 0.352409,
		31.958529, 34.998280, 24.409006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370342, 34.220318, 24.612886>,  <31.747957, 34.377953, 24.162321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370342, 34.220318, 24.612886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232765, 34.567707, 24.755688>,  <32.150219, 34.776142, 24.841368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232765, 34.567707, 24.755688>,  <32.370342, 34.220318, 24.612886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232765, 34.567707, 24.755688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000652, -0.379979, 0.924995,
		0.938990, 0.318380, 0.130126,
		-0.343945, 0.868476, 0.357003,
		32.129581, 34.828251, 24.862789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711163, 34.310810, 25.201065>,  <32.370342, 34.220318, 24.612886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711163, 34.310810, 25.201065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411160, 34.572048, 25.242926>,  <32.231159, 34.728790, 25.268042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411160, 34.572048, 25.242926>,  <32.711163, 34.310810, 25.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411160, 34.572048, 25.242926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070509, -0.236265, 0.969127,
		0.657661, 0.719473, 0.223249,
		-0.750007, 0.653098, 0.104653,
		32.186157, 34.767979, 25.274323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922321, 34.715469, 25.744823>,  <32.711163, 34.310810, 25.201065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922321, 34.715469, 25.744823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526848, 34.775032, 25.737452>,  <32.289566, 34.810772, 25.733028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526848, 34.775032, 25.737452>,  <32.922321, 34.715469, 25.744823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526848, 34.775032, 25.737452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021339, -0.017960, 0.999611,
		0.148520, 0.988688, 0.020934,
		-0.988679, 0.148909, -0.018430,
		32.230244, 34.819706, 25.731922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850426, 35.248775, 26.182034>,  <32.922321, 34.715469, 25.744823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850426, 35.248775, 26.182034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485512, 35.090546, 26.139587>,  <32.266563, 34.995609, 26.114119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485512, 35.090546, 26.139587>,  <32.850426, 35.248775, 26.182034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485512, 35.090546, 26.139587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000888, -0.261011, 0.965335,
		-0.409560, 0.880565, 0.238467,
		-0.912283, -0.395575, -0.106117,
		32.211826, 34.971874, 26.107752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454018, 35.465561, 26.743752>,  <32.850426, 35.248775, 26.182034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454018, 35.465561, 26.743752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264664, 35.133247, 26.626648>,  <32.151051, 34.933861, 26.556387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264664, 35.133247, 26.626648>,  <32.454018, 35.465561, 26.743752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264664, 35.133247, 26.626648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024735, -0.344763, 0.938364,
		-0.880509, 0.436965, 0.183755,
		-0.473384, -0.830783, -0.292758,
		32.122650, 34.884014, 26.538820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823626, 35.397568, 27.207741>,  <32.454018, 35.465561, 26.743752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823626, 35.397568, 27.207741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893955, 35.035191, 27.053675>,  <31.936153, 34.817764, 26.961235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893955, 35.035191, 27.053675>,  <31.823626, 35.397568, 27.207741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893955, 35.035191, 27.053675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055964, -0.399824, 0.914882,
		-0.982830, -0.139302, -0.120999,
		0.175824, -0.905945, -0.385163,
		31.946703, 34.763409, 26.938126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294136, 34.946922, 27.421690>,  <31.823626, 35.397568, 27.207741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294136, 34.946922, 27.421690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596136, 34.698868, 27.336458>,  <31.777336, 34.550034, 27.285318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596136, 34.698868, 27.336458>,  <31.294136, 34.946922, 27.421690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596136, 34.698868, 27.336458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105577, -0.435675, 0.893891,
		-0.647172, -0.652389, -0.394407,
		0.754998, -0.620141, -0.213079,
		31.822636, 34.512825, 27.272535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014193, 34.320953, 27.697956>,  <31.294136, 34.946922, 27.421690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014193, 34.320953, 27.697956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408175, 34.257610, 27.670279>,  <31.644564, 34.219604, 27.653671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408175, 34.257610, 27.670279>,  <31.014193, 34.320953, 27.697956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408175, 34.257610, 27.670279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013177, -0.468069, 0.883594,
		-0.172308, -0.869388, -0.463113,
		0.984955, -0.158353, -0.069196,
		31.703661, 34.210106, 27.649519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176146, 33.630272, 27.942312>,  <31.014193, 34.320953, 27.697956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176146, 33.630272, 27.942312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529785, 33.814568, 27.973537>,  <31.741968, 33.925144, 27.992273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529785, 33.814568, 27.973537>,  <31.176146, 33.630272, 27.942312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529785, 33.814568, 27.973537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136743, -0.414813, 0.899573,
		0.446848, -0.784635, -0.429737,
		0.884097, 0.460736, 0.078065,
		31.795013, 33.952789, 27.996958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628580, 33.183472, 28.157717>,  <31.176146, 33.630272, 27.942312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628580, 33.183472, 28.157717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801304, 33.531265, 28.253668>,  <31.904938, 33.739941, 28.311239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801304, 33.531265, 28.253668>,  <31.628580, 33.183472, 28.157717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801304, 33.531265, 28.253668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199551, -0.351454, 0.914691,
		0.879613, -0.347106, -0.325267,
		0.431811, 0.869482, 0.239878,
		31.930847, 33.792110, 28.325632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128525, 32.956688, 28.648441>,  <31.628580, 33.183472, 28.157717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128525, 32.956688, 28.648441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088654, 33.350212, 28.708017>,  <32.064732, 33.586327, 28.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088654, 33.350212, 28.708017>,  <32.128525, 32.956688, 28.648441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088654, 33.350212, 28.708017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022928, -0.147376, 0.988815,
		0.994756, 0.101975, -0.007867,
		-0.099675, 0.983809, 0.148941,
		32.058750, 33.645355, 28.752699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536705, 33.110527, 29.247587>,  <32.128525, 32.956688, 28.648441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536705, 33.110527, 29.247587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304569, 33.435661, 29.227589>,  <32.165287, 33.630741, 29.215590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304569, 33.435661, 29.227589>,  <32.536705, 33.110527, 29.247587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304569, 33.435661, 29.227589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055517, 0.100735, 0.993363,
		0.812481, 0.573712, -0.103587,
		-0.580339, 0.812839, -0.049995,
		32.130466, 33.679512, 29.212589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860451, 33.743652, 29.563732>,  <32.536705, 33.110527, 29.247587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860451, 33.743652, 29.563732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469276, 33.827206, 29.563227>,  <32.234570, 33.877338, 29.562923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469276, 33.827206, 29.563227>,  <32.860451, 33.743652, 29.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469276, 33.827206, 29.563227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013417, 0.068850, 0.997537,
		0.208456, 0.975514, -0.070133,
		-0.977940, 0.208883, -0.001264,
		32.175896, 33.889870, 29.562847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786217, 34.381805, 30.014221>,  <32.860451, 33.743652, 29.563732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786217, 34.381805, 30.014221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419720, 34.221554, 30.013304>,  <32.199821, 34.125404, 30.012754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419720, 34.221554, 30.013304>,  <32.786217, 34.381805, 30.014221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419720, 34.221554, 30.013304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079566, 0.176353, 0.981106,
		-0.392654, 0.899109, -0.193458,
		-0.916238, -0.400628, -0.002293,
		32.144848, 34.101364, 30.012615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308319, 34.838474, 30.325621>,  <32.786217, 34.381805, 30.014221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308319, 34.838474, 30.325621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079556, 34.511269, 30.350229>,  <31.942299, 34.314945, 30.364994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079556, 34.511269, 30.350229>,  <32.308319, 34.838474, 30.325621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079556, 34.511269, 30.350229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052561, 0.111387, 0.992386,
		-0.818634, 0.564317, -0.106698,
		-0.571905, -0.818010, 0.061524,
		31.907984, 34.265865, 30.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649988, 34.961018, 30.641079>,  <32.308319, 34.838474, 30.325621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649988, 34.961018, 30.641079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708233, 34.568886, 30.694386>,  <31.743179, 34.333607, 30.726370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708233, 34.568886, 30.694386>,  <31.649988, 34.961018, 30.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708233, 34.568886, 30.694386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125262, 0.115349, 0.985395,
		-0.981380, -0.160179, -0.106001,
		0.145612, -0.980325, 0.133266,
		31.751917, 34.274788, 30.734365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161549, 34.787106, 31.183905>,  <31.649988, 34.961018, 30.641079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161549, 34.787106, 31.183905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397083, 34.464012, 31.195471>,  <31.538404, 34.270157, 31.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397083, 34.464012, 31.195471>,  <31.161549, 34.787106, 31.183905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397083, 34.464012, 31.195471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023058, 0.052549, 0.998352,
		-0.807923, -0.587199, 0.049567,
		0.588836, -0.807735, 0.028916,
		31.573734, 34.221691, 31.204145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944279, 34.363201, 31.763659>,  <31.161549, 34.787106, 31.183905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944279, 34.363201, 31.763659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313738, 34.219673, 31.709814>,  <31.535414, 34.133556, 31.677507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313738, 34.219673, 31.709814>,  <30.944279, 34.363201, 31.763659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313738, 34.219673, 31.709814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120784, -0.060794, 0.990816,
		-0.363711, -0.931424, -0.012812,
		0.923648, -0.358823, -0.134613,
		31.590832, 34.112026, 31.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981951, 33.681377, 32.112411>,  <30.944279, 34.363201, 31.763659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981951, 33.681377, 32.112411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346033, 33.839142, 32.061871>,  <31.564482, 33.933800, 32.031544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346033, 33.839142, 32.061871>,  <30.981951, 33.681377, 32.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346033, 33.839142, 32.061871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129660, 0.018384, 0.991388,
		0.393335, -0.918751, -0.034405,
		0.910206, 0.394409, -0.126357,
		31.619095, 33.957466, 32.023964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363245, 33.416271, 32.739868>,  <30.981951, 33.681377, 32.112411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363245, 33.416271, 32.739868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615974, 33.700882, 32.616882>,  <31.767612, 33.871647, 32.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615974, 33.700882, 32.616882>,  <31.363245, 33.416271, 32.739868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615974, 33.700882, 32.616882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380227, 0.061149, 0.922870,
		0.675444, -0.699997, -0.231904,
		0.631825, 0.711523, -0.307460,
		31.805521, 33.914337, 32.524643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992733, 33.251770, 33.047089>,  <31.363245, 33.416271, 32.739868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992733, 33.251770, 33.047089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023861, 33.633900, 32.933033>,  <32.042538, 33.863178, 32.864601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023861, 33.633900, 32.933033>,  <31.992733, 33.251770, 33.047089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023861, 33.633900, 32.933033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294317, 0.251242, 0.922093,
		0.952534, -0.155678, -0.261616,
		0.077821, 0.955323, -0.285135,
		32.047207, 33.920498, 32.847492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614239, 33.407848, 33.418598>,  <31.992733, 33.251770, 33.047089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614239, 33.407848, 33.418598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430565, 33.750889, 33.325939>,  <32.320362, 33.956715, 33.270344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430565, 33.750889, 33.325939>,  <32.614239, 33.407848, 33.418598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430565, 33.750889, 33.325939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217770, 0.361484, 0.906590,
		0.861234, 0.365847, -0.352749,
		-0.459186, 0.857605, -0.231652,
		32.292809, 34.008171, 33.256443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920906, 34.044334, 33.634933>,  <32.614239, 33.407848, 33.418598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920906, 34.044334, 33.634933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550251, 34.194660, 33.630928>,  <32.327858, 34.284855, 33.628525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550251, 34.194660, 33.630928>,  <32.920906, 34.044334, 33.634933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550251, 34.194660, 33.630928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140158, 0.370044, 0.918381,
		0.348847, 0.849605, -0.395571,
		-0.926640, 0.375817, -0.010010,
		32.272259, 34.307404, 33.627926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948875, 34.795696, 33.889439>,  <32.920906, 34.044334, 33.634933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948875, 34.795696, 33.889439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571926, 34.676098, 33.949493>,  <32.345757, 34.604340, 33.985527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571926, 34.676098, 33.949493>,  <32.948875, 34.795696, 33.889439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571926, 34.676098, 33.949493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028007, 0.376681, 0.925920,
		-0.333397, 0.876764, -0.346599,
		-0.942370, -0.298992, 0.150140,
		32.289215, 34.586399, 33.994534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336224, 34.846039, 33.303524>,  <32.948875, 34.795696, 33.889439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336224, 34.846039, 33.303524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650757, 34.613388, 33.386841>,  <33.839478, 34.473797, 33.436832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650757, 34.613388, 33.386841>,  <33.336224, 34.846039, 33.303524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650757, 34.613388, 33.386841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436045, 0.283653, -0.854052,
		0.437658, 0.762396, 0.476663,
		0.786333, -0.581630, 0.208296,
		33.886658, 34.438900, 33.449329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968010, 35.235142, 33.193089>,  <33.336224, 34.846039, 33.303524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968010, 35.235142, 33.193089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077801, 34.852337, 33.155571>,  <34.143677, 34.622654, 33.133060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077801, 34.852337, 33.155571>,  <33.968010, 35.235142, 33.193089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077801, 34.852337, 33.155571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499153, 0.225166, -0.836747,
		0.821892, 0.182855, 0.539497,
		0.274480, -0.957008, -0.093790,
		34.160145, 34.565235, 33.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680061, 35.111927, 33.124832>,  <33.968010, 35.235142, 33.193089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680061, 35.111927, 33.124832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535538, 34.769768, 32.976372>,  <34.448822, 34.564472, 32.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535538, 34.769768, 32.976372>,  <34.680061, 35.111927, 33.124832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535538, 34.769768, 32.976372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667223, 0.040873, -0.743736,
		0.651358, -0.516361, 0.555971,
		-0.361312, -0.855395, -0.371151,
		34.427143, 34.513149, 32.865025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285805, 34.860657, 32.805454>,  <34.680061, 35.111927, 33.124832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285805, 34.860657, 32.805454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997757, 34.635525, 32.643143>,  <34.824928, 34.500446, 32.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997757, 34.635525, 32.643143>,  <35.285805, 34.860657, 32.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997757, 34.635525, 32.643143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441925, 0.078812, -0.893583,
		0.534916, -0.822806, 0.191975,
		-0.720116, -0.562830, -0.405776,
		34.781723, 34.466675, 32.521408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664360, 34.368252, 32.313313>,  <35.285805, 34.860657, 32.805454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664360, 34.368252, 32.313313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280216, 34.366825, 32.201813>,  <35.049732, 34.365971, 32.134914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280216, 34.366825, 32.201813>,  <35.664360, 34.368252, 32.313313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280216, 34.366825, 32.201813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278528, 0.029441, -0.959977,
		0.011613, -0.999560, -0.027285,
		-0.960358, -0.003549, -0.278747,
		34.992107, 34.365757, 32.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721455, 34.060966, 31.645935>,  <35.664360, 34.368252, 32.313313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721455, 34.060966, 31.645935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362247, 34.236938, 31.647827>,  <35.146721, 34.342522, 31.648962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362247, 34.236938, 31.647827>,  <35.721455, 34.060966, 31.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362247, 34.236938, 31.647827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112479, 0.239974, -0.964241,
		-0.425331, -0.865377, -0.264984,
		-0.898021, 0.439927, 0.004731,
		35.092842, 34.368916, 31.649246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486546, 33.847515, 31.016098>,  <35.721455, 34.060966, 31.645935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486546, 33.847515, 31.016098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263363, 34.158882, 31.131165>,  <35.129452, 34.345703, 31.200205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263363, 34.158882, 31.131165>,  <35.486546, 33.847515, 31.016098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263363, 34.158882, 31.131165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033859, 0.367708, -0.929325,
		-0.829177, -0.508785, -0.231522,
		-0.557959, 0.778414, 0.287668,
		35.095974, 34.392406, 31.217464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861778, 33.821552, 30.688618>,  <35.486546, 33.847515, 31.016098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861778, 33.821552, 30.688618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922657, 34.205055, 30.784632>,  <34.959183, 34.435158, 30.842239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922657, 34.205055, 30.784632>,  <34.861778, 33.821552, 30.688618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922657, 34.205055, 30.784632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114806, 0.224071, -0.967787,
		-0.981660, 0.174847, -0.075970,
		0.152192, 0.958760, 0.240035,
		34.968315, 34.492683, 30.856642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515995, 34.200958, 30.118559>,  <34.861778, 33.821552, 30.688618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515995, 34.200958, 30.118559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737125, 34.486732, 30.290121>,  <34.869804, 34.658199, 30.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737125, 34.486732, 30.290121>,  <34.515995, 34.200958, 30.118559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737125, 34.486732, 30.290121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177784, 0.401734, -0.898333,
		-0.814109, 0.572877, 0.095074,
		0.552829, 0.714438, 0.428904,
		34.902973, 34.701065, 30.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205738, 34.851685, 29.960026>,  <34.515995, 34.200958, 30.118559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205738, 34.851685, 29.960026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577606, 34.957649, 30.062431>,  <34.800728, 35.021229, 30.123875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577606, 34.957649, 30.062431>,  <34.205738, 34.851685, 29.960026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577606, 34.957649, 30.062431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169272, 0.310069, -0.935524,
		-0.327211, 0.913061, 0.243419,
		0.929667, 0.264910, 0.256014,
		34.856506, 35.037121, 30.139235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340519, 35.569229, 29.678368>,  <34.205738, 34.851685, 29.960026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340519, 35.569229, 29.678368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685318, 35.374123, 29.733574>,  <34.892197, 35.257061, 29.766697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685318, 35.374123, 29.733574>,  <34.340519, 35.569229, 29.678368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685318, 35.374123, 29.733574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204677, 0.085814, -0.975061,
		0.463753, 0.868749, 0.173805,
		0.861998, -0.487762, 0.138017,
		34.943916, 35.227795, 29.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759872, 36.009010, 29.395889>,  <34.340519, 35.569229, 29.678368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759872, 36.009010, 29.395889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931572, 35.647751, 29.392347>,  <35.034592, 35.430996, 29.390223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931572, 35.647751, 29.392347>,  <34.759872, 36.009010, 29.395889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931572, 35.647751, 29.392347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387878, 0.193185, -0.901238,
		0.815659, 0.383417, 0.433234,
		0.429245, -0.903145, -0.008854,
		35.060345, 35.376808, 29.389690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320560, 36.139896, 29.104460>,  <34.759872, 36.009010, 29.395889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320560, 36.139896, 29.104460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330086, 35.741508, 29.069881>,  <35.335800, 35.502476, 29.049135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330086, 35.741508, 29.069881>,  <35.320560, 36.139896, 29.104460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330086, 35.741508, 29.069881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146102, 0.089008, -0.985257,
		0.988983, 0.010829, 0.147633,
		0.023810, -0.995972, -0.086445,
		35.337227, 35.442719, 29.043947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901337, 36.018875, 28.571487>,  <35.320560, 36.139896, 29.104460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901337, 36.018875, 28.571487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694229, 35.676670, 28.572338>,  <35.569965, 35.471348, 28.572849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694229, 35.676670, 28.572338>,  <35.901337, 36.018875, 28.571487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694229, 35.676670, 28.572338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033271, -0.022619, -0.999190,
		0.854872, -0.517282, 0.040176,
		-0.517771, -0.855516, 0.002126,
		35.538898, 35.420013, 28.572975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076885, 35.680962, 27.948793>,  <35.901337, 36.018875, 28.571487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076885, 35.680962, 27.948793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745487, 35.475285, 28.037529>,  <35.546650, 35.351879, 28.090771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745487, 35.475285, 28.037529>,  <36.076885, 35.680962, 27.948793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745487, 35.475285, 28.037529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178338, -0.133256, -0.974904,
		0.530846, -0.847262, 0.018702,
		-0.828491, -0.514189, 0.221838,
		35.496941, 35.321030, 28.104080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072906, 35.149822, 27.411217>,  <36.076885, 35.680962, 27.948793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072906, 35.149822, 27.411217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691525, 35.164257, 27.530958>,  <35.462692, 35.172916, 27.602802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691525, 35.164257, 27.530958>,  <36.072906, 35.149822, 27.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691525, 35.164257, 27.530958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301289, -0.152905, -0.941193,
		0.011810, -0.987582, 0.156660,
		-0.953460, 0.036085, 0.299354,
		35.405487, 35.175083, 27.620764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666348, 34.467579, 27.170374>,  <36.072906, 35.149822, 27.411217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666348, 34.467579, 27.170374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416199, 34.777020, 27.211262>,  <35.266109, 34.962685, 27.235794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416199, 34.777020, 27.211262>,  <35.666348, 34.467579, 27.170374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416199, 34.777020, 27.211262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343137, -0.154980, -0.926412,
		-0.700832, -0.614428, 0.362372,
		-0.625373, 0.773602, 0.102218,
		35.228588, 35.009102, 27.241928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974586, 34.223133, 26.798706>,  <35.666348, 34.467579, 27.170374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974586, 34.223133, 26.798706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917419, 34.617744, 26.830545>,  <34.883121, 34.854511, 26.849649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917419, 34.617744, 26.830545>,  <34.974586, 34.223133, 26.798706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917419, 34.617744, 26.830545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496681, -0.001922, -0.867931,
		-0.856086, -0.163576, 0.490265,
		-0.142915, 0.986529, 0.079600,
		34.874546, 34.913704, 26.854425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248959, 34.368576, 26.687632>,  <34.974586, 34.223133, 26.798706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248959, 34.368576, 26.687632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462540, 34.701347, 26.627245>,  <34.590691, 34.901009, 26.591013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462540, 34.701347, 26.627245>,  <34.248959, 34.368576, 26.687632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462540, 34.701347, 26.627245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433375, 0.115972, -0.893720,
		-0.726000, 0.542634, 0.422460,
		0.533957, 0.831925, -0.150968,
		34.622726, 34.950924, 26.581955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880878, 34.727852, 26.295673>,  <34.248959, 34.368576, 26.687632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880878, 34.727852, 26.295673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236958, 34.897938, 26.230265>,  <34.450603, 34.999989, 26.191019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236958, 34.897938, 26.230265>,  <33.880878, 34.727852, 26.295673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236958, 34.897938, 26.230265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211376, 0.067546, -0.975068,
		-0.403570, 0.902568, 0.150010,
		0.890197, 0.425217, -0.163522,
		34.504017, 35.025501, 26.181208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580189, 35.246696, 25.928448>,  <33.880878, 34.727852, 26.295673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580189, 35.246696, 25.928448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975517, 35.248760, 25.867521>,  <34.212715, 35.249996, 25.830965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975517, 35.248760, 25.867521>,  <33.580189, 35.246696, 25.928448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975517, 35.248760, 25.867521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150435, 0.193083, -0.969582,
		0.024409, 0.981169, 0.191603,
		0.988319, 0.005157, -0.152315,
		34.272015, 35.250309, 25.821827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826370, 35.944462, 25.596315>,  <33.580189, 35.246696, 25.928448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826370, 35.944462, 25.596315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057152, 35.634071, 25.494341>,  <34.195621, 35.447838, 25.433155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057152, 35.634071, 25.494341>,  <33.826370, 35.944462, 25.596315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057152, 35.634071, 25.494341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120314, 0.227980, -0.966204,
		0.807868, 0.588126, 0.038173,
		0.576953, -0.775972, -0.254938,
		34.230236, 35.401279, 25.417860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100594, 36.212063, 24.937147>,  <33.826370, 35.944462, 25.596315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100594, 36.212063, 24.937147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198421, 35.824257, 24.943165>,  <34.257118, 35.591572, 24.946775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198421, 35.824257, 24.943165>,  <34.100594, 36.212063, 24.937147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198421, 35.824257, 24.943165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112088, 0.012856, -0.993615,
		0.963132, 0.244691, 0.111815,
		0.244567, -0.969516, 0.015045,
		34.271790, 35.533401, 24.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624325, 36.097179, 24.310160>,  <34.100594, 36.212063, 24.937147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624325, 36.097179, 24.310160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490814, 35.737965, 24.424788>,  <34.410709, 35.522434, 24.493565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490814, 35.737965, 24.424788>,  <34.624325, 36.097179, 24.310160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490814, 35.737965, 24.424788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048576, -0.287215, -0.956633,
		0.941399, -0.333223, 0.052243,
		-0.333778, -0.898036, 0.286571,
		34.390682, 35.468555, 24.510759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088066, 35.616665, 24.017076>,  <34.624325, 36.097179, 24.310160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088066, 35.616665, 24.017076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750320, 35.411694, 24.079641>,  <34.547672, 35.288712, 24.117180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750320, 35.411694, 24.079641>,  <35.088066, 35.616665, 24.017076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750320, 35.411694, 24.079641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064314, -0.192883, -0.979112,
		0.531898, -0.836785, 0.129907,
		-0.844363, -0.512432, 0.156411,
		34.497013, 35.257965, 24.126564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989613, 35.296196, 23.334358>,  <35.088066, 35.616665, 24.017076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989613, 35.296196, 23.334358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647774, 35.221161, 23.528048>,  <34.442669, 35.176140, 23.644260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647774, 35.221161, 23.528048>,  <34.989613, 35.296196, 23.334358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647774, 35.221161, 23.528048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404224, -0.345050, -0.847079,
		0.325983, -0.919647, 0.219052,
		-0.854598, -0.187587, 0.484224,
		34.391396, 35.164886, 23.673315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761463, 34.478374, 23.300816>,  <34.989613, 35.296196, 23.334358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761463, 34.478374, 23.300816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463001, 34.744652, 23.296850>,  <34.283924, 34.904419, 23.294470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463001, 34.744652, 23.296850>,  <34.761463, 34.478374, 23.300816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463001, 34.744652, 23.296850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201385, -0.239870, -0.949688,
		-0.634583, -0.706619, 0.313041,
		-0.746156, 0.665697, -0.009915,
		34.239155, 34.944363, 23.293875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288620, 34.199318, 22.760979>,  <34.761463, 34.478374, 23.300816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288620, 34.199318, 22.760979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147709, 34.568970, 22.820150>,  <34.063164, 34.790760, 22.855654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147709, 34.568970, 22.820150>,  <34.288620, 34.199318, 22.760979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147709, 34.568970, 22.820150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443668, -0.025730, -0.895822,
		-0.824051, -0.381209, 0.419071,
		-0.352278, 0.924131, 0.147928,
		34.042027, 34.846210, 22.864529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574947, 34.173069, 22.558252>,  <34.288620, 34.199318, 22.760979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574947, 34.173069, 22.558252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720306, 34.543327, 22.516073>,  <33.807522, 34.765484, 22.490767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720306, 34.543327, 22.516073>,  <33.574947, 34.173069, 22.558252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720306, 34.543327, 22.516073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233989, -0.018873, -0.972056,
		-0.901771, 0.377916, 0.209733,
		0.363397, 0.925647, -0.105447,
		33.829327, 34.821022, 22.484440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108231, 34.492752, 22.011637>,  <33.574947, 34.173069, 22.558252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108231, 34.492752, 22.011637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442265, 34.712498, 22.023214>,  <33.642685, 34.844345, 22.030161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442265, 34.712498, 22.023214>,  <33.108231, 34.492752, 22.011637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442265, 34.712498, 22.023214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112875, 0.222604, -0.968352,
		-0.538417, 0.805389, 0.247902,
		0.835085, 0.549359, 0.028945,
		33.692791, 34.877304, 22.031898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925335, 35.209923, 21.832117>,  <33.108231, 34.492752, 22.011637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925335, 35.209923, 21.832117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306767, 35.117901, 21.754398>,  <33.535625, 35.062687, 21.707767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306767, 35.117901, 21.754398>,  <32.925335, 35.209923, 21.832117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306767, 35.117901, 21.754398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094234, 0.384839, -0.918160,
		0.286004, 0.893852, 0.345297,
		0.953584, -0.230059, -0.194297,
		33.592842, 35.048882, 21.696110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239399, 35.815964, 21.539297>,  <32.925335, 35.209923, 21.832117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239399, 35.815964, 21.539297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495644, 35.529816, 21.427675>,  <33.649391, 35.358128, 21.360703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495644, 35.529816, 21.427675>,  <33.239399, 35.815964, 21.539297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495644, 35.529816, 21.427675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028347, 0.341137, -0.939586,
		0.767345, 0.609817, 0.198257,
		0.640608, -0.715367, -0.279056,
		33.687824, 35.315205, 21.343958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514179, 36.138844, 20.874020>,  <33.239399, 35.815964, 21.539297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514179, 36.138844, 20.874020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643688, 35.760815, 20.891949>,  <33.721394, 35.533997, 20.902706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643688, 35.760815, 20.891949>,  <33.514179, 36.138844, 20.874020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643688, 35.760815, 20.891949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215106, 0.027394, -0.976207,
		0.921358, 0.325710, 0.212160,
		0.323772, -0.945073, 0.044822,
		33.740818, 35.477291, 20.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193718, 36.166809, 20.552744>,  <33.514179, 36.138844, 20.874020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193718, 36.166809, 20.552744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058743, 35.791103, 20.527719>,  <33.977757, 35.565678, 20.512705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058743, 35.791103, 20.527719>,  <34.193718, 36.166809, 20.552744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058743, 35.791103, 20.527719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155514, 0.009922, -0.987784,
		0.928414, -0.343042, 0.142721,
		-0.337435, -0.939268, -0.062559,
		33.957512, 35.509323, 20.508951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648838, 35.787689, 20.082451>,  <34.193718, 36.166809, 20.552744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648838, 35.787689, 20.082451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316677, 35.565540, 20.100292>,  <34.117382, 35.432251, 20.110996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316677, 35.565540, 20.100292>,  <34.648838, 35.787689, 20.082451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316677, 35.565540, 20.100292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111731, -0.244414, -0.963212,
		0.545847, -0.794870, 0.265015,
		-0.830402, -0.555377, 0.044601,
		34.067558, 35.398926, 20.113672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857250, 35.153137, 19.625706>,  <34.648838, 35.787689, 20.082451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857250, 35.153137, 19.625706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459583, 35.167385, 19.666407>,  <34.220982, 35.175934, 19.690828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459583, 35.167385, 19.666407>,  <34.857250, 35.153137, 19.625706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459583, 35.167385, 19.666407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105715, -0.136995, -0.984915,
		-0.021141, -0.989931, 0.139962,
		-0.994172, 0.035618, 0.101754,
		34.161331, 35.178070, 19.696932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587208, 34.605740, 19.066303>,  <34.857250, 35.153137, 19.625706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587208, 34.605740, 19.066303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289986, 34.861771, 19.144444>,  <34.111652, 35.015388, 19.191328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289986, 34.861771, 19.144444>,  <34.587208, 34.605740, 19.066303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289986, 34.861771, 19.144444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197443, 0.069234, -0.977867,
		-0.639438, -0.765183, 0.074934,
		-0.743059, 0.640080, 0.195351,
		34.067066, 35.053795, 19.203049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995800, 34.344887, 18.798946>,  <34.587208, 34.605740, 19.066303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995800, 34.344887, 18.798946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969475, 34.743282, 18.823183>,  <33.953678, 34.982319, 18.837725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969475, 34.743282, 18.823183>,  <33.995800, 34.344887, 18.798946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969475, 34.743282, 18.823183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179274, 0.047932, -0.982631,
		-0.981595, -0.075533, 0.175401,
		-0.065813, 0.995990, 0.060590,
		33.949730, 35.042080, 18.841360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927414, 33.613651, 19.200039>,  <33.995800, 34.344887, 18.798946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927414, 33.613651, 19.200039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128384, 33.283897, 19.095760>,  <34.248966, 33.086044, 19.033194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128384, 33.283897, 19.095760>,  <33.927414, 33.613651, 19.200039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128384, 33.283897, 19.095760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233348, -0.161043, 0.958965,
		-0.832540, -0.542637, 0.111457,
		0.502420, -0.824385, -0.260697,
		34.279110, 33.036583, 19.017551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853207, 33.232441, 19.730848>,  <33.927414, 33.613651, 19.200039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853207, 33.232441, 19.730848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166630, 33.076447, 19.537376>,  <34.354683, 32.982849, 19.421293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166630, 33.076447, 19.537376>,  <33.853207, 33.232441, 19.730848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166630, 33.076447, 19.537376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392456, -0.292858, 0.871901,
		-0.481679, -0.873009, -0.076419,
		0.783558, -0.389985, -0.483682,
		34.401699, 32.959450, 19.392271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001369, 32.638058, 20.141832>,  <33.853207, 33.232441, 19.730848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001369, 32.638058, 20.141832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331722, 32.713867, 19.929420>,  <34.529934, 32.759354, 19.801973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331722, 32.713867, 19.929420>,  <34.001369, 32.638058, 20.141832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331722, 32.713867, 19.929420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561287, -0.186888, 0.806244,
		0.053562, -0.963926, -0.260728,
		0.825886, 0.189527, -0.531029,
		34.579487, 32.770725, 19.770111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506084, 32.038155, 20.219637>,  <34.001369, 32.638058, 20.141832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506084, 32.038155, 20.219637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727264, 32.355984, 20.119312>,  <34.859974, 32.546680, 20.059118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727264, 32.355984, 20.119312>,  <34.506084, 32.038155, 20.219637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727264, 32.355984, 20.119312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703606, -0.284044, 0.651351,
		0.446303, -0.536635, -0.716126,
		0.552949, 0.794570, -0.250810,
		34.893150, 32.594357, 20.044069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147358, 31.830687, 20.221737>,  <34.506084, 32.038155, 20.219637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147358, 31.830687, 20.221737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192101, 32.225132, 20.270844>,  <35.218945, 32.461800, 20.300306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192101, 32.225132, 20.270844>,  <35.147358, 31.830687, 20.221737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192101, 32.225132, 20.270844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620571, -0.165807, 0.766420,
		0.776131, -0.009544, -0.630499,
		0.111856, 0.986112, 0.122766,
		35.225658, 32.520966, 20.307673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818432, 31.842741, 20.584587>,  <35.147358, 31.830687, 20.221737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818432, 31.842741, 20.584587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656742, 32.198177, 20.671318>,  <35.559731, 32.411438, 20.723356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656742, 32.198177, 20.671318>,  <35.818432, 31.842741, 20.584587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656742, 32.198177, 20.671318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309437, -0.090228, 0.946629,
		0.860729, 0.449742, -0.238490,
		-0.404220, 0.888589, 0.216829,
		35.535477, 32.464756, 20.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272739, 32.211292, 20.885931>,  <35.818432, 31.842741, 20.584587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272739, 32.211292, 20.885931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944702, 32.391239, 21.027388>,  <35.747879, 32.499207, 21.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944702, 32.391239, 21.027388>,  <36.272739, 32.211292, 20.885931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944702, 32.391239, 21.027388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373153, -0.048098, 0.926522,
		0.433820, 0.891800, -0.128423,
		-0.820096, 0.449865, 0.353644,
		35.698673, 32.526199, 21.133480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572701, 32.686012, 21.424694>,  <36.272739, 32.211292, 20.885931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572701, 32.686012, 21.424694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181396, 32.673439, 21.506680>,  <35.946613, 32.665894, 21.555870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181396, 32.673439, 21.506680>,  <36.572701, 32.686012, 21.424694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181396, 32.673439, 21.506680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199211, 0.131908, 0.971038,
		-0.057562, 0.990763, -0.122779,
		-0.978265, -0.031436, 0.204964,
		35.887917, 32.664009, 21.568169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564407, 33.189957, 22.005550>,  <36.572701, 32.686012, 21.424694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564407, 33.189957, 22.005550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204948, 33.015442, 22.023840>,  <35.989273, 32.910732, 22.034815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204948, 33.015442, 22.023840>,  <36.564407, 33.189957, 22.005550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204948, 33.015442, 22.023840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014326, 0.133367, 0.990963,
		-0.438441, 0.889870, -0.126100,
		-0.898646, -0.436285, 0.045725,
		35.935356, 32.884556, 22.037558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013435, 33.639393, 22.469759>,  <36.564407, 33.189957, 22.005550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013435, 33.639393, 22.469759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901669, 33.255634, 22.454380>,  <35.834606, 33.025379, 22.445152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901669, 33.255634, 22.454380>,  <36.013435, 33.639393, 22.469759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901669, 33.255634, 22.454380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171907, 0.010590, 0.985056,
		-0.944654, 0.281856, -0.167887,
		-0.279422, -0.959398, -0.038449,
		35.817841, 32.967815, 22.442844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499866, 33.657379, 22.944454>,  <36.013435, 33.639393, 22.469759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499866, 33.657379, 22.944454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602436, 33.275177, 22.886135>,  <35.663979, 33.045856, 22.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602436, 33.275177, 22.886135>,  <35.499866, 33.657379, 22.944454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602436, 33.275177, 22.886135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207558, -0.201758, 0.957191,
		-0.944015, -0.215188, -0.250059,
		0.256427, -0.955504, -0.145799,
		35.679363, 32.988525, 22.842396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991295, 33.232079, 23.225370>,  <35.499866, 33.657379, 22.944454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991295, 33.232079, 23.225370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330536, 33.020447, 23.236732>,  <35.534081, 32.893467, 23.243549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330536, 33.020447, 23.236732>,  <34.991295, 33.232079, 23.225370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330536, 33.020447, 23.236732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189202, -0.252335, 0.948962,
		-0.494906, -0.810188, -0.314107,
		0.848098, -0.529077, 0.028407,
		35.584965, 32.861725, 23.245255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821602, 32.572445, 23.510111>,  <34.991295, 33.232079, 23.225370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821602, 32.572445, 23.510111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190258, 32.717503, 23.565334>,  <35.411453, 32.804539, 23.598469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190258, 32.717503, 23.565334>,  <34.821602, 32.572445, 23.510111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190258, 32.717503, 23.565334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073935, -0.185156, 0.979924,
		0.380929, -0.913348, -0.143836,
		0.921644, 0.362647, 0.138060,
		35.466751, 32.826298, 23.606752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082314, 32.158272, 23.971088>,  <34.821602, 32.572445, 23.510111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082314, 32.158272, 23.971088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350491, 32.454220, 23.993362>,  <35.511398, 32.631790, 24.006727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350491, 32.454220, 23.993362>,  <35.082314, 32.158272, 23.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350491, 32.454220, 23.993362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090688, -0.156201, 0.983553,
		0.736399, -0.654365, -0.171821,
		0.670441, 0.739870, 0.055683,
		35.551624, 32.676182, 24.010067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732357, 31.945274, 24.350288>,  <35.082314, 32.158272, 23.971088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732357, 31.945274, 24.350288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745403, 32.343082, 24.390024>,  <35.753231, 32.581768, 24.413866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745403, 32.343082, 24.390024>,  <35.732357, 31.945274, 24.350288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745403, 32.343082, 24.390024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215967, -0.104058, 0.970840,
		0.975856, -0.010208, -0.218177,
		0.032613, 0.994519, 0.099341,
		35.755188, 32.641438, 24.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289604, 32.052689, 24.824532>,  <35.732357, 31.945274, 24.350288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289604, 32.052689, 24.824532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103012, 32.406490, 24.821583>,  <35.991058, 32.618771, 24.819813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103012, 32.406490, 24.821583>,  <36.289604, 32.052689, 24.824532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103012, 32.406490, 24.821583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176426, 0.101208, 0.979097,
		0.866760, 0.455426, -0.203261,
		-0.466477, 0.884502, -0.007374,
		35.963070, 32.671841, 24.819370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721817, 32.627190, 25.169226>,  <36.289604, 32.052689, 24.824532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721817, 32.627190, 25.169226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345081, 32.761501, 25.174646>,  <36.119038, 32.842091, 25.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345081, 32.761501, 25.174646>,  <36.721817, 32.627190, 25.169226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345081, 32.761501, 25.174646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008750, -0.015805, 0.999837,
		0.335942, 0.941807, 0.011948,
		-0.941842, 0.335783, 0.013550,
		36.062531, 32.862236, 25.178711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745636, 33.205460, 25.539545>,  <36.721817, 32.627190, 25.169226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745636, 33.205460, 25.539545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367981, 33.084583, 25.592144>,  <36.141388, 33.012058, 25.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367981, 33.084583, 25.592144>,  <36.745636, 33.205460, 25.539545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367981, 33.084583, 25.592144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065060, 0.220251, 0.973271,
		-0.323074, 0.927454, -0.188286,
		-0.944135, -0.302189, 0.131498,
		36.084740, 32.993927, 25.631594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413361, 33.670547, 26.001114>,  <36.745636, 33.205460, 25.539545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413361, 33.670547, 26.001114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173092, 33.351330, 26.020393>,  <36.028931, 33.159798, 26.031961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173092, 33.351330, 26.020393>,  <36.413361, 33.670547, 26.001114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173092, 33.351330, 26.020393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039073, 0.089517, 0.995219,
		-0.798542, 0.595915, -0.084952,
		-0.600670, -0.798043, 0.048199,
		35.992889, 33.111916, 26.034853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825970, 33.765865, 26.511543>,  <36.413361, 33.670547, 26.001114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825970, 33.765865, 26.511543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884369, 33.371059, 26.484739>,  <35.919411, 33.134178, 26.468657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884369, 33.371059, 26.484739>,  <35.825970, 33.765865, 26.511543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884369, 33.371059, 26.484739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092795, -0.053772, 0.994232,
		-0.984923, -0.151377, 0.083740,
		0.146001, -0.987013, -0.067008,
		35.928169, 33.074955, 26.464638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460518, 33.528442, 27.086136>,  <35.825970, 33.765865, 26.511543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460518, 33.528442, 27.086136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690708, 33.217430, 26.984730>,  <35.828823, 33.030823, 26.923885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690708, 33.217430, 26.984730>,  <35.460518, 33.528442, 27.086136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690708, 33.217430, 26.984730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181581, -0.180773, 0.966618,
		-0.797404, -0.602301, 0.037154,
		0.575479, -0.777531, -0.253515,
		35.863350, 32.984169, 26.908674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187183, 33.016682, 27.459854>,  <35.460518, 33.528442, 27.086136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187183, 33.016682, 27.459854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557613, 32.896996, 27.367893>,  <35.779873, 32.825184, 27.312717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557613, 32.896996, 27.367893>,  <35.187183, 33.016682, 27.459854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557613, 32.896996, 27.367893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226700, -0.045872, 0.972884,
		-0.301646, -0.953083, 0.025351,
		0.926076, -0.299214, -0.229901,
		35.835438, 32.807232, 27.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289135, 32.442337, 27.818558>,  <35.187183, 33.016682, 27.459854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289135, 32.442337, 27.818558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657379, 32.586056, 27.757381>,  <35.878326, 32.672287, 27.720676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657379, 32.586056, 27.757381>,  <35.289135, 32.442337, 27.818558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657379, 32.586056, 27.757381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180066, -0.043069, 0.982711,
		0.346497, -0.932229, -0.104346,
		0.920606, 0.359296, -0.152939,
		35.933559, 32.693844, 27.711500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698917, 32.129581, 28.432701>,  <35.289135, 32.442337, 27.818558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698917, 32.129581, 28.432701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958515, 32.364452, 28.239191>,  <36.114273, 32.505375, 28.123085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958515, 32.364452, 28.239191>,  <35.698917, 32.129581, 28.432701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958515, 32.364452, 28.239191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482271, 0.174284, 0.858510,
		0.588409, -0.790475, -0.170069,
		0.648991, 0.587174, -0.483774,
		36.153214, 32.540604, 28.094059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452221, 32.044418, 28.692593>,  <35.698917, 32.129581, 28.432701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452221, 32.044418, 28.692593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426113, 32.406086, 28.523727>,  <36.410450, 32.623085, 28.422409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426113, 32.406086, 28.523727>,  <36.452221, 32.044418, 28.692593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426113, 32.406086, 28.523727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495993, 0.396496, 0.772516,
		0.865870, -0.158969, -0.474339,
		-0.065268, 0.904168, -0.422162,
		36.406532, 32.677338, 28.397079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095814, 32.273575, 28.766073>,  <36.452221, 32.044418, 28.692593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095814, 32.273575, 28.766073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871975, 32.604309, 28.743483>,  <36.737671, 32.802750, 28.729929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871975, 32.604309, 28.743483>,  <37.095814, 32.273575, 28.766073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871975, 32.604309, 28.743483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501475, 0.392071, 0.771235,
		0.659830, 0.403257, -0.634040,
		-0.559595, 0.826840, -0.056477,
		36.704098, 32.852360, 28.726540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588722, 32.909088, 28.776188>,  <37.095814, 32.273575, 28.766073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588722, 32.909088, 28.776188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217205, 32.983582, 28.904346>,  <36.994293, 33.028278, 28.981241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217205, 32.983582, 28.904346>,  <37.588722, 32.909088, 28.776188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217205, 32.983582, 28.904346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364630, 0.304804, 0.879852,
		0.066202, 0.934029, -0.351008,
		-0.928796, 0.186235, 0.320396,
		36.938564, 33.039452, 29.000465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626064, 33.524681, 29.151754>,  <37.588722, 32.909088, 28.776188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626064, 33.524681, 29.151754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276562, 33.378178, 29.279755>,  <37.066860, 33.290276, 29.356556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276562, 33.378178, 29.279755>,  <37.626064, 33.524681, 29.151754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276562, 33.378178, 29.279755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226355, 0.276119, 0.934089,
		-0.430474, 0.888603, -0.158358,
		-0.873759, -0.366255, 0.320002,
		37.014435, 33.268299, 29.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276932, 34.037022, 29.558018>,  <37.626064, 33.524681, 29.151754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276932, 34.037022, 29.558018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119633, 33.689049, 29.677069>,  <37.025253, 33.480267, 29.748499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119633, 33.689049, 29.677069>,  <37.276932, 34.037022, 29.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119633, 33.689049, 29.677069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053842, 0.301364, 0.951988,
		-0.917856, 0.390389, -0.071672,
		-0.393245, -0.869929, 0.297628,
		37.001659, 33.428070, 29.766357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877411, 34.267235, 30.106356>,  <37.276932, 34.037022, 29.558018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877411, 34.267235, 30.106356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936153, 33.872139, 30.127512>,  <36.971397, 33.635082, 30.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936153, 33.872139, 30.127512>,  <36.877411, 34.267235, 30.106356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936153, 33.872139, 30.127512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272106, 0.091746, 0.957883,
		-0.950996, -0.126276, 0.282244,
		0.146852, -0.987743, 0.052889,
		36.980209, 33.575817, 30.143379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612000, 34.071243, 30.753954>,  <36.877411, 34.267235, 30.106356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612000, 34.071243, 30.753954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835381, 33.751217, 30.666298>,  <36.969410, 33.559200, 30.613705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835381, 33.751217, 30.666298>,  <36.612000, 34.071243, 30.753954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835381, 33.751217, 30.666298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313351, -0.041142, 0.948746,
		-0.768074, -0.598501, 0.227725,
		0.558456, -0.800065, -0.219141,
		37.002918, 33.511196, 30.600555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422401, 33.564915, 31.236389>,  <36.612000, 34.071243, 30.753954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422401, 33.564915, 31.236389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781296, 33.445782, 31.105995>,  <36.996632, 33.374302, 31.027760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781296, 33.445782, 31.105995>,  <36.422401, 33.564915, 31.236389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781296, 33.445782, 31.105995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281395, -0.183246, 0.941933,
		-0.340274, -0.936865, -0.080605,
		0.897235, -0.297834, -0.325983,
		37.050465, 33.356430, 31.008200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681679, 33.071613, 31.736549>,  <36.422401, 33.564915, 31.236389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681679, 33.071613, 31.736549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018383, 33.168316, 31.543468>,  <37.220406, 33.226337, 31.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018383, 33.168316, 31.543468>,  <36.681679, 33.071613, 31.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018383, 33.168316, 31.543468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531657, -0.215969, 0.818962,
		0.093741, -0.945997, -0.310325,
		0.841756, 0.241757, -0.482701,
		37.270908, 33.240845, 31.398659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065708, 32.476582, 31.800598>,  <36.681679, 33.071613, 31.736549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065708, 32.476582, 31.800598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304981, 32.782810, 31.705875>,  <37.448547, 32.966545, 31.649042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304981, 32.782810, 31.705875>,  <37.065708, 32.476582, 31.800598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304981, 32.782810, 31.705875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649007, -0.289486, 0.703553,
		0.470067, -0.574544, -0.670027,
		0.598186, 0.765569, -0.236805,
		37.484436, 33.012482, 31.634834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749680, 32.150288, 31.828861>,  <37.065708, 32.476582, 31.800598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749680, 32.150288, 31.828861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801655, 32.542362, 31.888649>,  <37.832840, 32.777607, 31.924522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801655, 32.542362, 31.888649>,  <37.749680, 32.150288, 31.828861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801655, 32.542362, 31.888649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628090, -0.198017, 0.752524,
		0.767215, -0.003900, -0.641378,
		0.129939, 0.980191, 0.149472,
		37.840637, 32.836418, 31.933491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415611, 32.229496, 31.974138>,  <37.749680, 32.150288, 31.828861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415611, 32.229496, 31.974138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282078, 32.577190, 32.120007>,  <38.201958, 32.785809, 32.207527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282078, 32.577190, 32.120007>,  <38.415611, 32.229496, 31.974138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282078, 32.577190, 32.120007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465156, -0.184571, 0.865774,
		0.819868, 0.458655, -0.342713,
		-0.333837, 0.869235, 0.364670,
		38.181927, 32.837959, 32.229408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001884, 32.547073, 32.212601>,  <38.415611, 32.229496, 31.974138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001884, 32.547073, 32.212601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706680, 32.749886, 32.390705>,  <38.529556, 32.871574, 32.497566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706680, 32.749886, 32.390705>,  <39.001884, 32.547073, 32.212601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706680, 32.749886, 32.390705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477001, -0.074732, 0.875720,
		0.477295, 0.858680, -0.186702,
		-0.738010, 0.507034, 0.445260,
		38.485275, 32.901997, 32.524284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310455, 33.000866, 32.713818>,  <39.001884, 32.547073, 32.212601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310455, 33.000866, 32.713818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932636, 32.958908, 32.838287>,  <38.705944, 32.933731, 32.912971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932636, 32.958908, 32.838287>,  <39.310455, 33.000866, 32.713818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932636, 32.958908, 32.838287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326963, -0.212373, 0.920865,
		-0.030511, 0.971542, 0.234894,
		-0.944545, -0.104898, 0.311179,
		38.649273, 32.927441, 32.931641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353481, 33.214989, 33.386757>,  <39.310455, 33.000866, 32.713818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353481, 33.214989, 33.386757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020466, 32.994228, 33.367641>,  <38.820656, 32.861771, 33.356174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020466, 32.994228, 33.367641>,  <39.353481, 33.214989, 33.386757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020466, 32.994228, 33.367641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255360, -0.458890, 0.851006,
		-0.491602, 0.696291, 0.522978,
		-0.832537, -0.551904, -0.047786,
		38.770706, 32.828655, 33.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096729, 33.163692, 34.053406>,  <39.353481, 33.214989, 33.386757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096729, 33.163692, 34.053406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943314, 32.851643, 33.855701>,  <38.851265, 32.664413, 33.737080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943314, 32.851643, 33.855701>,  <39.096729, 33.163692, 34.053406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943314, 32.851643, 33.855701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265308, -0.605710, 0.750152,
		-0.884595, 0.156581, 0.439288,
		-0.383541, -0.780127, -0.494265,
		38.828251, 32.617603, 33.707420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549614, 32.838097, 34.440292>,  <39.096729, 33.163692, 34.053406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549614, 32.838097, 34.440292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743240, 32.570034, 34.215233>,  <38.859417, 32.409199, 34.080196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743240, 32.570034, 34.215233>,  <38.549614, 32.838097, 34.440292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743240, 32.570034, 34.215233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330281, -0.455507, 0.826697,
		-0.810303, -0.586011, 0.000841,
		0.484070, -0.670153, -0.562647,
		38.888462, 32.368988, 34.046440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395840, 32.079365, 34.687077>,  <38.549614, 32.838097, 34.440292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395840, 32.079365, 34.687077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742153, 32.088280, 34.487106>,  <38.949940, 32.093628, 34.367123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742153, 32.088280, 34.487106>,  <38.395840, 32.079365, 34.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742153, 32.088280, 34.487106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434536, -0.528964, 0.728955,
		-0.248198, -0.848352, -0.467650,
		0.865781, 0.022286, -0.499927,
		39.001888, 32.094967, 34.337128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762463, 31.354734, 34.697643>,  <38.395840, 32.079365, 34.687077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762463, 31.354734, 34.697643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058933, 31.611542, 34.619186>,  <39.236816, 31.765627, 34.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058933, 31.611542, 34.619186>,  <38.762463, 31.354734, 34.697643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058933, 31.611542, 34.619186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542551, -0.400812, 0.738233,
		0.395345, -0.653576, -0.645400,
		0.741175, 0.642019, -0.196139,
		39.281284, 31.804148, 34.560345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328152, 30.968954, 34.555347>,  <38.762463, 31.354734, 34.697643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328152, 30.968954, 34.555347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470821, 31.316244, 34.693314>,  <39.556423, 31.524618, 34.776093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470821, 31.316244, 34.693314>,  <39.328152, 30.968954, 34.555347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470821, 31.316244, 34.693314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606269, -0.496006, 0.621623,
		0.710791, -0.012604, -0.703290,
		0.356671, 0.868227, 0.344916,
		39.577824, 31.576712, 34.796787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039391, 30.874481, 34.538635>,  <39.328152, 30.968954, 34.555347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039391, 30.874481, 34.538635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995678, 31.209431, 34.752872>,  <39.969448, 31.410400, 34.881416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995678, 31.209431, 34.752872>,  <40.039391, 30.874481, 34.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995678, 31.209431, 34.752872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595080, -0.376482, 0.710029,
		0.796201, 0.396317, -0.457161,
		-0.109284, 0.837373, 0.535596,
		39.962894, 31.460642, 34.913551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692917, 31.307617, 34.643528>,  <40.039391, 30.874481, 34.538635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692917, 31.307617, 34.643528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455788, 31.340485, 34.963982>,  <40.313511, 31.360205, 35.156254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455788, 31.340485, 34.963982>,  <40.692917, 31.307617, 34.643528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455788, 31.340485, 34.963982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746030, -0.318642, 0.584728,
		0.303322, 0.944307, 0.127596,
		-0.592820, 0.082170, 0.801132,
		40.277943, 31.365135, 35.204323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216595, 31.378298, 35.115505>,  <40.692917, 31.307617, 34.643528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216595, 31.378298, 35.115505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888767, 31.385559, 35.344582>,  <40.692070, 31.389915, 35.482025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888767, 31.385559, 35.344582>,  <41.216595, 31.378298, 35.115505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888767, 31.385559, 35.344582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567056, -0.117618, 0.815238,
		0.082157, 0.992893, 0.086103,
		-0.819571, 0.018153, 0.572689,
		40.642895, 31.391005, 35.516388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327522, 31.752483, 35.666180>,  <41.216595, 31.378298, 35.115505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327522, 31.752483, 35.666180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018982, 31.530619, 35.790993>,  <40.833858, 31.397501, 35.865883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018982, 31.530619, 35.790993>,  <41.327522, 31.752483, 35.666180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018982, 31.530619, 35.790993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459937, -0.146979, 0.875703,
		-0.439855, 0.818992, 0.368482,
		-0.771353, -0.554661, 0.312035,
		40.787575, 31.364220, 35.884602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085854, 32.059643, 36.229298>,  <41.327522, 31.752483, 35.666180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085854, 32.059643, 36.229298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981861, 31.673796, 36.246853>,  <40.919464, 31.442287, 36.257385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981861, 31.673796, 36.246853>,  <41.085854, 32.059643, 36.229298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981861, 31.673796, 36.246853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532743, -0.105378, 0.839691,
		-0.805353, 0.241687, 0.541289,
		-0.259982, -0.964616, 0.043890,
		40.903866, 31.384411, 36.260021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948170, 31.915821, 36.859768>,  <41.085854, 32.059643, 36.229298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948170, 31.915821, 36.859768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017208, 31.543612, 36.730560>,  <41.058632, 31.320286, 36.653038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017208, 31.543612, 36.730560>,  <40.948170, 31.915821, 36.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017208, 31.543612, 36.730560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216680, -0.284035, 0.934010,
		-0.960864, -0.231197, 0.152603,
		0.172596, -0.930523, -0.323015,
		41.068985, 31.264454, 36.633656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569641, 31.307741, 37.048374>,  <40.948170, 31.915821, 36.859768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569641, 31.307741, 37.048374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534897, 30.936596, 36.903309>,  <40.514050, 30.713909, 36.816269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534897, 30.936596, 36.903309>,  <40.569641, 31.307741, 37.048374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534897, 30.936596, 36.903309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646786, -0.329412, 0.687863,
		-0.757709, -0.174816, 0.628742,
		-0.086865, -0.927862, -0.362667,
		40.508839, 30.658237, 36.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350906, 30.787066, 37.525772>,  <40.569641, 31.307741, 37.048374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350906, 30.787066, 37.525772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607906, 30.635406, 37.259407>,  <40.762108, 30.544411, 37.099590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607906, 30.635406, 37.259407>,  <40.350906, 30.787066, 37.525772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607906, 30.635406, 37.259407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569028, -0.345957, 0.746003,
		-0.513221, -0.858232, -0.006534,
		0.642504, -0.379147, -0.665911,
		40.800659, 30.521662, 37.059635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506908, 30.055281, 37.654922>,  <40.350906, 30.787066, 37.525772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506908, 30.055281, 37.654922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821663, 30.207760, 37.460808>,  <41.010513, 30.299248, 37.344341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821663, 30.207760, 37.460808>,  <40.506908, 30.055281, 37.654922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821663, 30.207760, 37.460808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604822, -0.320320, 0.729099,
		0.122487, -0.867226, -0.482613,
		0.786884, 0.381200, -0.485282,
		41.057728, 30.322121, 37.315224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883873, 29.516956, 37.259377>,  <40.506908, 30.055281, 37.654922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883873, 29.516956, 37.259377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119968, 29.829401, 37.340847>,  <41.261627, 30.016867, 37.389729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119968, 29.829401, 37.340847>,  <40.883873, 29.516956, 37.259377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119968, 29.829401, 37.340847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587003, -0.588527, 0.555935,
		0.554115, -0.208577, -0.805886,
		0.590240, 0.781109, 0.203676,
		41.297039, 30.063734, 37.401951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579956, 29.351509, 37.131207>,  <40.883873, 29.516956, 37.259377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579956, 29.351509, 37.131207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566525, 29.651318, 37.395657>,  <41.558468, 29.831203, 37.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566525, 29.651318, 37.395657>,  <41.579956, 29.351509, 37.131207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566525, 29.651318, 37.395657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756289, -0.413396, 0.507080,
		0.653375, 0.517028, -0.552976,
		-0.033576, 0.749523, 0.661126,
		41.556450, 29.876175, 37.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225372, 29.748224, 37.237400>,  <41.579956, 29.351509, 37.131207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225372, 29.748224, 37.237400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050209, 29.787436, 37.594864>,  <41.945110, 29.810963, 37.809341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050209, 29.787436, 37.594864>,  <42.225372, 29.748224, 37.237400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050209, 29.787436, 37.594864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723077, -0.552280, 0.414905,
		0.534222, 0.827875, 0.170967,
		-0.437911, 0.098030, 0.893658,
		41.918835, 29.816845, 37.862961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679340, 29.333374, 37.536453>,  <42.225372, 29.748224, 37.237400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679340, 29.333374, 37.536453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457237, 29.475039, 37.837452>,  <42.323975, 29.560038, 38.018051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457237, 29.475039, 37.837452>,  <42.679340, 29.333374, 37.536453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457237, 29.475039, 37.837452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529648, -0.547011, 0.648268,
		0.641219, 0.758516, 0.116150,
		-0.555258, 0.354163, 0.752501,
		42.290661, 29.581287, 38.063202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199810, 29.496946, 38.059429>,  <42.679340, 29.333374, 37.536453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199810, 29.496946, 38.059429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852306, 29.437107, 38.248272>,  <42.643806, 29.401203, 38.361576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852306, 29.437107, 38.248272>,  <43.199810, 29.496946, 38.059429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852306, 29.437107, 38.248272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471682, -0.540474, 0.696709,
		0.150936, 0.827954, 0.540102,
		-0.868755, -0.149598, 0.472108,
		42.591679, 29.392227, 38.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386185, 29.595505, 38.673805>,  <43.199810, 29.496946, 38.059429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386185, 29.595505, 38.673805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040020, 29.397285, 38.703465>,  <42.832321, 29.278353, 38.721260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040020, 29.397285, 38.703465>,  <43.386185, 29.595505, 38.673805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040020, 29.397285, 38.703465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398676, -0.591343, 0.700979,
		-0.303522, 0.636195, 0.709317,
		-0.865409, -0.495550, 0.074150,
		42.780396, 29.248621, 38.725708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087170, 29.636492, 39.318516>,  <43.386185, 29.595505, 38.673805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087170, 29.636492, 39.318516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015076, 29.298204, 39.117607>,  <42.971821, 29.095232, 38.997063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015076, 29.298204, 39.117607>,  <43.087170, 29.636492, 39.318516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015076, 29.298204, 39.117607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484248, -0.520759, 0.703075,
		-0.856166, -0.116508, 0.503395,
		-0.180234, -0.845716, -0.502274,
		42.961006, 29.044489, 38.966927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754196, 29.064581, 39.819736>,  <43.087170, 29.636492, 39.318516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754196, 29.064581, 39.819736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976120, 28.951744, 39.506657>,  <43.109272, 28.884041, 39.318810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976120, 28.951744, 39.506657>,  <42.754196, 29.064581, 39.819736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976120, 28.951744, 39.506657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551689, -0.579448, 0.599899,
		-0.622762, -0.764632, -0.165850,
		0.554803, -0.282097, -0.782697,
		43.142563, 28.867115, 39.271847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760708, 28.235683, 39.763302>,  <42.754196, 29.064581, 39.819736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760708, 28.235683, 39.763302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056602, 28.483009, 39.657116>,  <43.234138, 28.631405, 39.593403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056602, 28.483009, 39.657116>,  <42.760708, 28.235683, 39.763302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056602, 28.483009, 39.657116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596571, -0.420147, 0.683798,
		0.311268, -0.664201, -0.679668,
		0.739740, 0.618314, -0.265465,
		43.278526, 28.668503, 39.577477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429409, 27.932014, 39.523994>,  <42.760708, 28.235683, 39.763302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429409, 27.932014, 39.523994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485252, 28.281101, 39.711128>,  <43.518757, 28.490553, 39.823410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485252, 28.281101, 39.711128>,  <43.429409, 27.932014, 39.523994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485252, 28.281101, 39.711128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592286, -0.452225, 0.666851,
		0.793541, 0.183997, -0.580033,
		0.139607, 0.872718, 0.467838,
		43.527134, 28.542917, 39.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605564, 28.183130, 38.803112>,  <43.429409, 27.932014, 39.523994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605564, 28.183130, 38.803112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268787, 28.093018, 38.999226>,  <43.066719, 28.038950, 39.116894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268787, 28.093018, 38.999226>,  <43.605564, 28.183130, 38.803112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268787, 28.093018, 38.999226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422929, 0.839798, -0.340397,
		-0.335053, -0.493950, -0.802342,
		-0.841945, -0.225283, 0.490283,
		43.016205, 28.025433, 39.146309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075478, 28.307493, 38.383354>,  <43.605564, 28.183130, 38.803112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075478, 28.307493, 38.383354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877258, 28.291302, 38.730412>,  <42.758327, 28.281586, 38.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877258, 28.291302, 38.730412>,  <43.075478, 28.307493, 38.383354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877258, 28.291302, 38.730412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653524, 0.675364, -0.341745,
		-0.572139, -0.736373, -0.361127,
		-0.495544, -0.040480, 0.867639,
		42.728596, 28.279158, 38.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300636, 28.127211, 38.484463>,  <43.075478, 28.307493, 38.383354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300636, 28.127211, 38.484463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450768, 28.405750, 38.729160>,  <42.540844, 28.572874, 38.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450768, 28.405750, 38.729160>,  <42.300636, 28.127211, 38.484463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450768, 28.405750, 38.729160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612578, 0.681663, -0.400104,
		-0.695614, -0.224571, 0.682414,
		0.375325, 0.696350, 0.611742,
		42.563366, 28.614655, 38.912682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739574, 28.504967, 38.760010>,  <42.300636, 28.127211, 38.484463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739574, 28.504967, 38.760010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054146, 28.751846, 38.750237>,  <42.242889, 28.899975, 38.744373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054146, 28.751846, 38.750237>,  <41.739574, 28.504967, 38.760010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054146, 28.751846, 38.750237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554635, 0.688193, -0.467728,
		-0.271866, 0.381386, 0.883534,
		0.786428, 0.617199, -0.024434,
		42.290073, 28.937006, 38.742905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418114, 29.107521, 38.980747>,  <41.739574, 28.504967, 38.760010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418114, 29.107521, 38.980747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762558, 29.196739, 38.797997>,  <41.969223, 29.250271, 38.688347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762558, 29.196739, 38.797997>,  <41.418114, 29.107521, 38.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762558, 29.196739, 38.797997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437234, 0.783463, -0.441602,
		0.259451, 0.580032, 0.772171,
		0.861111, 0.223046, -0.456880,
		42.020889, 29.263653, 38.660934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491222, 29.802397, 39.099098>,  <41.418114, 29.107521, 38.980747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491222, 29.802397, 39.099098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714355, 29.711201, 38.779888>,  <41.848236, 29.656483, 38.588364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714355, 29.711201, 38.779888>,  <41.491222, 29.802397, 39.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714355, 29.711201, 38.779888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438029, 0.735832, -0.516412,
		0.704950, 0.637629, 0.310603,
		0.557831, -0.227991, -0.798025,
		41.881706, 29.642803, 38.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156181, 30.284954, 38.703957>,  <41.491222, 29.802397, 39.099098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156181, 30.284954, 38.703957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442188, 30.125654, 38.474121>,  <41.613792, 30.030073, 38.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442188, 30.125654, 38.474121>,  <41.156181, 30.284954, 38.703957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442188, 30.125654, 38.474121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243335, 0.628722, -0.738577,
		0.655396, 0.667910, 0.352636,
		0.715013, -0.398252, -0.574588,
		41.656693, 30.006178, 38.301746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659554, 30.843378, 38.420856>,  <41.156181, 30.284954, 38.703957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659554, 30.843378, 38.420856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617268, 30.542980, 38.160141>,  <41.591896, 30.362741, 38.003712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617268, 30.542980, 38.160141>,  <41.659554, 30.843378, 38.420856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617268, 30.542980, 38.160141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188308, 0.658723, -0.728439,
		0.976404, 0.045731, -0.211055,
		-0.105715, -0.750994, -0.651791,
		41.585552, 30.317682, 37.964603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973625, 31.151091, 37.858635>,  <41.659554, 30.843378, 38.420856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973625, 31.151091, 37.858635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736450, 30.855680, 37.730259>,  <41.594147, 30.678434, 37.653233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736450, 30.855680, 37.730259>,  <41.973625, 31.151091, 37.858635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736450, 30.855680, 37.730259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360378, 0.599796, -0.714404,
		0.720107, -0.307936, -0.621790,
		-0.592937, -0.738526, -0.320944,
		41.558567, 30.634123, 37.633976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311398, 30.879934, 37.248276>,  <41.973625, 31.151091, 37.858635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311398, 30.879934, 37.248276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017952, 30.614094, 37.305008>,  <41.841885, 30.454590, 37.339046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017952, 30.614094, 37.305008>,  <42.311398, 30.879934, 37.248276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017952, 30.614094, 37.305008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634034, 0.594273, -0.494813,
		0.244566, -0.452928, -0.857347,
		-0.733613, -0.664602, 0.141833,
		41.797867, 30.414713, 37.347557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002831, 30.794487, 36.629677>,  <42.311398, 30.879934, 37.248276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002831, 30.794487, 36.629677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709362, 30.656832, 36.864040>,  <41.533279, 30.574238, 37.004658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709362, 30.656832, 36.864040>,  <42.002831, 30.794487, 36.629677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709362, 30.656832, 36.864040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679112, 0.400466, -0.615170,
		-0.022933, -0.849233, -0.527521,
		-0.733676, -0.344138, 0.585908,
		41.489258, 30.553591, 37.039814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661877, 30.265827, 36.339050>,  <42.002831, 30.794487, 36.629677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661877, 30.265827, 36.339050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416080, 30.472662, 36.577385>,  <41.268604, 30.596764, 36.720387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416080, 30.472662, 36.577385>,  <41.661877, 30.265827, 36.339050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416080, 30.472662, 36.577385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561829, 0.243386, -0.790640,
		-0.553850, -0.820598, 0.140957,
		-0.614491, 0.517090, 0.595835,
		41.231731, 30.627789, 36.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975201, 30.020636, 36.170895>,  <41.661877, 30.265827, 36.339050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975201, 30.020636, 36.170895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988731, 30.384192, 36.337162>,  <40.996849, 30.602325, 36.436920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988731, 30.384192, 36.337162>,  <40.975201, 30.020636, 36.170895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988731, 30.384192, 36.337162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764612, 0.291368, -0.574868,
		-0.643602, -0.298376, 0.704804,
		0.033830, 0.908888, 0.415667,
		40.998882, 30.656858, 36.461861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303139, 30.219124, 36.266640>,  <40.975201, 30.020636, 36.170895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303139, 30.219124, 36.266640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474831, 30.580050, 36.282578>,  <40.577847, 30.796606, 36.292141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474831, 30.580050, 36.282578>,  <40.303139, 30.219124, 36.266640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474831, 30.580050, 36.282578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632792, 0.331910, -0.699579,
		-0.644466, 0.275066, 0.713444,
		0.429229, 0.902316, 0.039845,
		40.603600, 30.850744, 36.294533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248970, 30.441845, 35.627769>,  <40.303139, 30.219124, 36.266640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248970, 30.441845, 35.627769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292831, 30.592041, 35.995895>,  <40.319149, 30.682159, 36.216770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292831, 30.592041, 35.995895>,  <40.248970, 30.441845, 35.627769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292831, 30.592041, 35.995895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413196, 0.859326, -0.301376,
		-0.904016, -0.347225, 0.249378,
		0.109651, 0.375491, 0.920317,
		40.325726, 30.704689, 36.271992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756660, 30.658979, 36.147121>,  <40.248970, 30.441845, 35.627769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756660, 30.658979, 36.147121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070377, 30.905401, 36.117825>,  <40.258606, 31.053255, 36.100246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070377, 30.905401, 36.117825>,  <39.756660, 30.658979, 36.147121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070377, 30.905401, 36.117825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557312, 0.647753, -0.519442,
		-0.272564, 0.448210, 0.851361,
		0.784291, 0.616055, -0.073238,
		40.305664, 31.090218, 36.095852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513714, 31.300945, 36.228081>,  <39.756660, 30.658979, 36.147121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513714, 31.300945, 36.228081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859066, 31.367342, 36.037495>,  <40.066277, 31.407181, 35.923141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859066, 31.367342, 36.037495>,  <39.513714, 31.300945, 36.228081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859066, 31.367342, 36.037495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471128, 0.603226, -0.643550,
		0.180593, 0.780106, 0.599017,
		0.863380, 0.165993, -0.476468,
		40.118080, 31.417139, 35.894554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557137, 31.967291, 35.942890>,  <39.513714, 31.300945, 36.228081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557137, 31.967291, 35.942890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860943, 31.808577, 35.736710>,  <40.043228, 31.713348, 35.612999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860943, 31.808577, 35.736710>,  <39.557137, 31.967291, 35.942890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860943, 31.808577, 35.736710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297687, 0.492544, -0.817791,
		0.578371, 0.774572, 0.255978,
		0.759519, -0.396785, -0.515453,
		40.088799, 31.689541, 35.582073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790562, 32.532356, 35.576958>,  <39.557137, 31.967291, 35.942890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790562, 32.532356, 35.576958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871040, 32.193909, 35.379536>,  <39.919327, 31.990839, 35.261082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871040, 32.193909, 35.379536>,  <39.790562, 32.532356, 35.576958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871040, 32.193909, 35.379536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231669, 0.448464, -0.863255,
		0.951762, 0.288023, -0.105792,
		0.201194, -0.846122, -0.493557,
		39.931396, 31.940071, 35.231468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173725, 32.766064, 34.989746>,  <39.790562, 32.532356, 35.576958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173725, 32.766064, 34.989746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019886, 32.405479, 34.910290>,  <39.927582, 32.189129, 34.862617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019886, 32.405479, 34.910290>,  <40.173725, 32.766064, 34.989746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019886, 32.405479, 34.910290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186616, 0.286681, -0.939674,
		0.904022, -0.324331, -0.278484,
		-0.384602, -0.901456, -0.198641,
		39.904507, 32.135044, 34.850697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272648, 32.598709, 34.342373>,  <40.173725, 32.766064, 34.989746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272648, 32.598709, 34.342373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972710, 32.340141, 34.398758>,  <39.792747, 32.184998, 34.432590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972710, 32.340141, 34.398758>,  <40.272648, 32.598709, 34.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972710, 32.340141, 34.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433808, 0.319497, -0.842456,
		0.499547, -0.692861, -0.519997,
		-0.749842, -0.646425, 0.140965,
		39.747757, 32.146214, 34.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176094, 32.270775, 33.743843>,  <40.272648, 32.598709, 34.342373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176094, 32.270775, 33.743843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831337, 32.237431, 33.943920>,  <39.624481, 32.217422, 34.063965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831337, 32.237431, 33.943920>,  <40.176094, 32.270775, 33.743843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831337, 32.237431, 33.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485876, 0.418078, -0.767552,
		-0.145136, -0.904578, -0.400841,
		-0.861893, -0.083360, 0.500191,
		39.572769, 32.212421, 34.093979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763348, 32.026913, 33.272995>,  <40.176094, 32.270775, 33.743843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763348, 32.026913, 33.272995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487122, 32.191673, 33.510803>,  <39.321384, 32.290531, 33.653488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487122, 32.191673, 33.510803>,  <39.763348, 32.026913, 33.272995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487122, 32.191673, 33.510803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308637, 0.575572, -0.757272,
		-0.654114, -0.706436, -0.270340,
		-0.690564, 0.411905, 0.594522,
		39.279953, 32.315247, 33.689159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268532, 31.970709, 32.738892>,  <39.763348, 32.026913, 33.272995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268532, 31.970709, 32.738892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265671, 31.708088, 32.437195>,  <40.263954, 31.550514, 32.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265671, 31.708088, 32.437195>,  <40.268532, 31.970709, 32.738892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265671, 31.708088, 32.437195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671469, -0.562077, 0.482907,
		-0.740998, -0.502998, 0.444876,
		-0.007153, -0.656554, -0.754245,
		40.263523, 31.511122, 32.210922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381428, 31.304499, 33.063957>,  <40.268532, 31.970709, 32.738892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381428, 31.304499, 33.063957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553204, 31.338137, 32.704288>,  <40.656269, 31.358320, 32.488487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553204, 31.338137, 32.704288>,  <40.381428, 31.304499, 33.063957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553204, 31.338137, 32.704288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733787, -0.612889, 0.293128,
		-0.526443, -0.785681, -0.324905,
		0.429436, 0.084095, -0.899173,
		40.682034, 31.363365, 32.434536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754742, 30.703396, 33.116375>,  <40.381428, 31.304499, 33.063957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754742, 30.703396, 33.116375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900448, 30.928688, 32.819706>,  <40.987873, 31.063864, 32.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900448, 30.928688, 32.819706>,  <40.754742, 30.703396, 33.116375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900448, 30.928688, 32.819706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899138, -0.420163, 0.122527,
		-0.242612, -0.711500, -0.659475,
		0.364265, 0.563233, -0.741673,
		41.009727, 31.097658, 32.597202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401234, 31.052944, 33.280811>,  <40.754742, 30.703396, 33.116375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401234, 31.052944, 33.280811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404106, 30.809992, 32.963062>,  <41.405830, 30.664221, 32.772411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404106, 30.809992, 32.963062>,  <41.401234, 31.052944, 33.280811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404106, 30.809992, 32.963062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420904, -0.722435, 0.548569,
		-0.907077, 0.330415, -0.260841,
		0.007185, -0.607383, -0.794377,
		41.406261, 30.627777, 32.724751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755398, 31.628799, 33.463017>,  <41.401234, 31.052944, 33.280811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755398, 31.628799, 33.463017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750469, 31.688307, 33.067497>,  <41.747513, 31.724010, 32.830185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750469, 31.688307, 33.067497>,  <41.755398, 31.628799, 33.463017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750469, 31.688307, 33.067497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386200, 0.912845, 0.132529,
		0.922333, -0.380239, -0.068702,
		-0.012322, 0.148768, -0.988795,
		41.746773, 31.732937, 32.770859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293079, 31.698778, 34.011379>,  <41.755398, 31.628799, 33.463017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293079, 31.698778, 34.011379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305859, 31.845867, 34.383133>,  <42.313526, 31.934120, 34.606186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305859, 31.845867, 34.383133>,  <42.293079, 31.698778, 34.011379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305859, 31.845867, 34.383133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667207, 0.684499, -0.293762,
		-0.744187, 0.629478, -0.223479,
		0.031946, 0.367721, 0.929387,
		42.315441, 31.956184, 34.661949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163670, 32.458717, 33.994633>,  <42.293079, 31.698778, 34.011379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163670, 32.458717, 33.994633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431286, 32.314575, 34.254639>,  <42.591854, 32.228088, 34.410645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431286, 32.314575, 34.254639>,  <42.163670, 32.458717, 33.994633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431286, 32.314575, 34.254639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729869, 0.483621, -0.483117,
		-0.140267, 0.797654, 0.586578,
		0.669042, -0.360360, 0.650018,
		42.632000, 32.206467, 34.449646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573544, 33.009701, 34.110237>,  <42.163670, 32.458717, 33.994633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573544, 33.009701, 34.110237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782917, 32.679855, 34.196056>,  <42.908543, 32.481949, 34.247547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782917, 32.679855, 34.196056>,  <42.573544, 33.009701, 34.110237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782917, 32.679855, 34.196056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836413, 0.449230, -0.314014,
		0.162560, 0.343816, 0.924859,
		0.523438, -0.824611, 0.214545,
		42.939949, 32.432472, 34.260422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112961, 33.083858, 34.598103>,  <42.573544, 33.009701, 34.110237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112961, 33.083858, 34.598103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241779, 32.799366, 34.348164>,  <43.319069, 32.628670, 34.198200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241779, 32.799366, 34.348164>,  <43.112961, 33.083858, 34.598103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241779, 32.799366, 34.348164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733704, 0.604607, -0.310047,
		0.598304, -0.358607, 0.716543,
		0.322042, -0.711232, -0.624850,
		43.338390, 32.585995, 34.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833282, 33.047703, 34.661499>,  <43.112961, 33.083858, 34.598103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833282, 33.047703, 34.661499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842819, 32.834465, 34.323212>,  <43.848541, 32.706524, 34.120239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842819, 32.834465, 34.323212>,  <43.833282, 33.047703, 34.661499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842819, 32.834465, 34.323212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972256, 0.209275, -0.104508,
		0.232700, -0.819767, 0.523290,
		0.023840, -0.533091, -0.845722,
		43.849972, 32.674538, 34.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405365, 32.811462, 34.414871>,  <43.833282, 33.047703, 34.661499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405365, 32.811462, 34.414871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410831, 32.510918, 34.150970>,  <44.414112, 32.330593, 33.992630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410831, 32.510918, 34.150970>,  <44.405365, 32.811462, 34.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410831, 32.510918, 34.150970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957757, -0.179716, 0.224509,
		-0.287255, -0.634950, 0.717163,
		0.013667, -0.751359, -0.659752,
		44.414932, 32.285511, 33.953045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457199, 32.004055, 34.684742>,  <44.405365, 32.811462, 34.414871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457199, 32.004055, 34.684742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639671, 32.136375, 34.354294>,  <44.749153, 32.215767, 34.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639671, 32.136375, 34.354294>,  <44.457199, 32.004055, 34.684742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639671, 32.136375, 34.354294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863811, 0.058486, 0.500410,
		0.213851, -0.941888, -0.259067,
		0.456179, 0.330798, -0.826120,
		44.776524, 32.235615, 34.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035400, 31.536995, 34.747936>,  <44.457199, 32.004055, 34.684742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035400, 31.536995, 34.747936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070759, 31.880789, 34.546555>,  <45.091972, 32.087067, 34.425724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070759, 31.880789, 34.546555>,  <45.035400, 31.536995, 34.747936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070759, 31.880789, 34.546555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921942, 0.120755, 0.368022,
		0.377105, -0.496690, -0.781723,
		0.088396, 0.859487, -0.503456,
		45.097279, 32.138634, 34.395519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716740, 31.505724, 34.482525>,  <45.035400, 31.536995, 34.747936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716740, 31.505724, 34.482525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628105, 31.895163, 34.460571>,  <45.574924, 32.128826, 34.447399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628105, 31.895163, 34.460571>,  <45.716740, 31.505724, 34.482525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628105, 31.895163, 34.460571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907631, 0.226491, 0.353422,
		0.356520, 0.028501, -0.933853,
		-0.221582, 0.973596, -0.054880,
		45.561630, 32.187241, 34.444107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215584, 31.905716, 34.021942>,  <45.716740, 31.505724, 34.482525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215584, 31.905716, 34.021942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044186, 32.151905, 34.286545>,  <45.941349, 32.299618, 34.445305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044186, 32.151905, 34.286545>,  <46.215584, 31.905716, 34.021942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044186, 32.151905, 34.286545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902368, 0.254140, 0.348057,
		0.046104, 0.746062, -0.664279,
		-0.428492, 0.615471, 0.661505,
		45.915638, 32.336548, 34.484997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621006, 32.428883, 33.936459>,  <46.215584, 31.905716, 34.021942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621006, 32.428883, 33.936459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445595, 32.526100, 34.282551>,  <46.340347, 32.584431, 34.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445595, 32.526100, 34.282551>,  <46.621006, 32.428883, 33.936459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445595, 32.526100, 34.282551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815078, 0.513134, 0.268964,
		-0.378609, 0.823179, -0.423122,
		-0.438524, 0.243046, 0.865231,
		46.314037, 32.599014, 34.542122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721004, 33.144554, 33.982479>,  <46.621006, 32.428883, 33.936459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721004, 33.144554, 33.982479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685444, 32.981705, 34.346096>,  <46.664108, 32.883995, 34.564266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685444, 32.981705, 34.346096>,  <46.721004, 33.144554, 33.982479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685444, 32.981705, 34.346096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893820, 0.370120, 0.253174,
		-0.439525, 0.835023, 0.330989,
		-0.088900, -0.407120, 0.909038,
		46.658775, 32.859570, 34.618809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254864, 33.538216, 34.108173>,  <46.721004, 33.144554, 33.982479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254864, 33.538216, 34.108173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001381, 33.815975, 34.244541>,  <46.849289, 33.982632, 34.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001381, 33.815975, 34.244541>,  <47.254864, 33.538216, 34.108173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.001381, 33.815975, 34.244541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681909, 0.293353, 0.670033,
		0.365257, 0.657085, -0.659414,
		-0.633710, 0.694394, 0.340923,
		46.811268, 34.024292, 34.346817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589371, 34.134884, 33.995754>,  <47.254864, 33.538216, 34.108173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589371, 34.134884, 33.995754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316833, 34.218319, 34.276402>,  <47.153313, 34.268379, 34.444790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316833, 34.218319, 34.276402>,  <47.589371, 34.134884, 33.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316833, 34.218319, 34.276402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731246, 0.236428, 0.639829,
		-0.032419, 0.948995, -0.313620,
		-0.681343, 0.208591, 0.701614,
		47.112431, 34.280895, 34.486885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.075741, 34.420128, 34.509129>,  <47.589371, 34.134884, 33.995754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.075741, 34.420128, 34.509129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697460, 34.491367, 34.617886>,  <47.470490, 34.534111, 34.683140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697460, 34.491367, 34.617886>,  <48.075741, 34.420128, 34.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697460, 34.491367, 34.617886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325031, 0.518438, 0.790935,
		-0.000093, 0.836363, -0.548176,
		-0.945704, 0.178100, 0.271892,
		47.413750, 34.544796, 34.699451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865868, 35.162151, 34.740364>,  <48.075741, 34.420128, 34.509129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865868, 35.162151, 34.740364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610508, 34.933849, 34.946930>,  <47.457291, 34.796867, 35.070869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610508, 34.933849, 34.946930>,  <47.865868, 35.162151, 34.740364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610508, 34.933849, 34.946930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319366, 0.414026, 0.852401,
		-0.700323, 0.709096, -0.082033,
		-0.638398, -0.570758, 0.516413,
		47.418987, 34.762623, 35.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.700630, 28.841698, 26.492128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323318, 28.719847, 26.439325>,  <33.096931, 28.646736, 26.407644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323318, 28.719847, 26.439325>,  <33.700630, 28.841698, 26.492128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323318, 28.719847, 26.439325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095722, -0.131181, 0.986726,
		-0.317903, 0.943394, 0.094581,
		-0.943279, -0.304629, -0.132006,
		33.040337, 28.628458, 26.399723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274986, 29.311352, 26.884214>,  <33.700630, 28.841698, 26.492128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274986, 29.311352, 26.884214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065960, 28.974781, 26.829193>,  <32.940544, 28.772839, 26.796181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065960, 28.974781, 26.829193>,  <33.274986, 29.311352, 26.884214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065960, 28.974781, 26.829193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256590, 0.001355, 0.966519,
		-0.813069, 0.540369, -0.216610,
		-0.522570, -0.841427, -0.137551,
		32.909187, 28.722353, 26.787928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506836, 29.495752, 27.129337>,  <33.274986, 29.311352, 26.884214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506836, 29.495752, 27.129337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614349, 29.111221, 27.153351>,  <32.678856, 28.880503, 27.167759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614349, 29.111221, 27.153351>,  <32.506836, 29.495752, 27.129337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614349, 29.111221, 27.153351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203063, 0.004373, 0.979156,
		-0.941553, -0.275370, -0.194035,
		0.268782, -0.961329, 0.060035,
		32.694984, 28.822823, 27.171362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214981, 29.330587, 27.748882>,  <32.506836, 29.495752, 27.129337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214981, 29.330587, 27.748882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.420910, 28.996359, 27.672173>,  <32.544468, 28.795822, 27.626146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.420910, 28.996359, 27.672173>,  <32.214981, 29.330587, 27.748882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420910, 28.996359, 27.672173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043483, -0.248861, 0.967563,
		-0.856192, -0.489785, -0.164453,
		0.514824, -0.835571, -0.191776,
		32.575356, 28.745687, 27.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885851, 28.617691, 28.041737>,  <32.214981, 29.330587, 27.748882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885851, 28.617691, 28.041737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.280056, 28.555008, 28.015802>,  <32.516579, 28.517399, 28.000242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.280056, 28.555008, 28.015802>,  <31.885851, 28.617691, 28.041737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280056, 28.555008, 28.015802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033648, -0.194031, 0.980418,
		-0.166206, -0.968400, -0.185948,
		0.985517, -0.156695, -0.064834,
		32.575710, 28.507996, 27.996351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944788, 28.137268, 28.585274>,  <31.885851, 28.617691, 28.041737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944788, 28.137268, 28.585274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.324356, 28.244230, 28.518286>,  <32.552097, 28.308407, 28.478092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.324356, 28.244230, 28.518286>,  <31.944788, 28.137268, 28.585274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324356, 28.244230, 28.518286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159929, 0.049896, 0.985867,
		0.271981, -0.962292, 0.004582,
		0.948920, 0.267404, -0.167469,
		32.609032, 28.324451, 28.468044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481564, 27.641304, 28.878332>,  <31.944788, 28.137268, 28.585274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481564, 27.641304, 28.878332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675331, 27.990965, 28.864515>,  <32.791592, 28.200762, 28.856224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675331, 27.990965, 28.864515>,  <32.481564, 27.641304, 28.878332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675331, 27.990965, 28.864515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436222, -0.207132, 0.875675,
		0.758320, -0.439262, -0.481663,
		0.484419, 0.874154, -0.034544,
		32.820656, 28.253212, 28.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053577, 27.513830, 29.349213>,  <32.481564, 27.641304, 28.878332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053577, 27.513830, 29.349213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077225, 27.905075, 29.269413>,  <33.091412, 28.139822, 29.221533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077225, 27.905075, 29.269413>,  <33.053577, 27.513830, 29.349213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077225, 27.905075, 29.269413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499982, 0.143965, 0.853986,
		0.864016, -0.150232, -0.480528,
		0.059117, 0.978113, -0.199501,
		33.094959, 28.198509, 29.209562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771519, 27.699059, 29.609007>,  <33.053577, 27.513830, 29.349213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771519, 27.699059, 29.609007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.554123, 28.031544, 29.562176>,  <33.423687, 28.231035, 29.534077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.554123, 28.031544, 29.562176>,  <33.771519, 27.699059, 29.609007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554123, 28.031544, 29.562176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341060, 0.346108, 0.874006,
		0.767006, 0.435082, -0.471599,
		-0.543488, 0.831212, -0.117078,
		33.391075, 28.280907, 29.527052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241096, 28.293470, 29.770880>,  <33.771519, 27.699059, 29.609007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241096, 28.293470, 29.770880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870155, 28.437815, 29.810461>,  <33.647591, 28.524422, 29.834209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870155, 28.437815, 29.810461>,  <34.241096, 28.293470, 29.770880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870155, 28.437815, 29.810461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262348, 0.438479, 0.859599,
		0.266804, 0.823114, -0.501296,
		-0.927356, 0.360859, 0.098954,
		33.591949, 28.546072, 29.840147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433979, 28.895573, 29.895594>,  <34.241096, 28.293470, 29.770880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433979, 28.895573, 29.895594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049534, 28.905899, 30.005571>,  <33.818867, 28.912094, 30.071558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049534, 28.905899, 30.005571>,  <34.433979, 28.895573, 29.895594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049534, 28.905899, 30.005571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226380, 0.643855, 0.730892,
		-0.158155, 0.764712, -0.624662,
		-0.961113, 0.025817, 0.274945,
		33.761200, 28.913645, 30.088055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100586, 29.623966, 29.983177>,  <34.433979, 28.895573, 29.895594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100586, 29.623966, 29.983177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.905273, 29.367563, 30.220053>,  <33.788086, 29.213722, 30.362179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.905273, 29.367563, 30.220053>,  <34.100586, 29.623966, 29.983177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905273, 29.367563, 30.220053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413734, 0.427441, 0.803815,
		-0.768377, 0.637500, 0.056494,
		-0.488284, -0.641006, 0.592191,
		33.758789, 29.175261, 30.397711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761570, 30.046593, 30.471497>,  <34.100586, 29.623966, 29.983177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761570, 30.046593, 30.471497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743023, 29.690378, 30.652515>,  <33.731895, 29.476650, 30.761126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743023, 29.690378, 30.652515>,  <33.761570, 30.046593, 30.471497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743023, 29.690378, 30.652515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508560, 0.368881, 0.778006,
		-0.859777, 0.266224, 0.435785,
		-0.046371, -0.890535, 0.452546,
		33.729111, 29.423218, 30.788279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422668, 30.178972, 31.085880>,  <33.761570, 30.046593, 30.471497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422668, 30.178972, 31.085880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620533, 29.832884, 31.118618>,  <33.739254, 29.625231, 31.138260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620533, 29.832884, 31.118618>,  <33.422668, 30.178972, 31.085880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620533, 29.832884, 31.118618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398353, 0.309423, 0.863465,
		-0.772414, -0.394522, 0.497724,
		0.494664, -0.865222, 0.081844,
		33.768932, 29.573317, 31.143171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421322, 30.057634, 31.745775>,  <33.422668, 30.178972, 31.085880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421322, 30.057634, 31.745775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727966, 29.822748, 31.641859>,  <33.911953, 29.681816, 31.579510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727966, 29.822748, 31.641859>,  <33.421322, 30.057634, 31.745775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727966, 29.822748, 31.641859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459313, 0.218750, 0.860918,
		-0.448715, -0.779312, 0.437411,
		0.766608, -0.587215, -0.259791,
		33.957947, 29.646584, 31.563921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546871, 29.674034, 32.392933>,  <33.421322, 30.057634, 31.745775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546871, 29.674034, 32.392933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868790, 29.631996, 32.159264>,  <34.061943, 29.606773, 32.019062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868790, 29.631996, 32.159264>,  <33.546871, 29.674034, 32.392933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868790, 29.631996, 32.159264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548617, -0.243926, 0.799700,
		-0.226533, -0.964084, -0.138658,
		0.804800, -0.105088, -0.584169,
		34.110229, 29.600468, 31.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848885, 29.016964, 32.465656>,  <33.546871, 29.674034, 32.392933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848885, 29.016964, 32.465656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110104, 29.296375, 32.348633>,  <34.266834, 29.464022, 32.278419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110104, 29.296375, 32.348633>,  <33.848885, 29.016964, 32.465656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110104, 29.296375, 32.348633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490273, -0.095517, 0.866319,
		0.577203, -0.709180, -0.404846,
		0.653046, 0.698527, -0.292559,
		34.306019, 29.505934, 32.260864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415169, 28.877516, 32.835979>,  <33.848885, 29.016964, 32.465656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415169, 28.877516, 32.835979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521416, 29.242182, 32.710556>,  <34.585163, 29.460981, 32.635303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521416, 29.242182, 32.710556>,  <34.415169, 28.877516, 32.835979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521416, 29.242182, 32.710556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490346, 0.152277, 0.858122,
		0.830066, -0.381682, -0.406583,
		0.265616, 0.911664, -0.313556,
		34.601101, 29.515680, 32.616489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072918, 28.886309, 33.003700>,  <34.415169, 28.877516, 32.835979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072918, 28.886309, 33.003700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952309, 29.266678, 32.975906>,  <34.879944, 29.494900, 32.959232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952309, 29.266678, 32.975906>,  <35.072918, 28.886309, 33.003700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952309, 29.266678, 32.975906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378419, 0.186241, 0.906704,
		0.875148, 0.247097, -0.416004,
		-0.301521, 0.950924, -0.069482,
		34.861851, 29.551954, 32.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596729, 29.283278, 33.099728>,  <35.072918, 28.886309, 33.003700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596729, 29.283278, 33.099728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287716, 29.519131, 33.193977>,  <35.102306, 29.660643, 33.250526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287716, 29.519131, 33.193977>,  <35.596729, 29.283278, 33.099728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287716, 29.519131, 33.193977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344746, 0.077859, 0.935461,
		0.533231, 0.803911, -0.263422,
		-0.772538, 0.589631, 0.235629,
		35.055954, 29.696020, 33.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902214, 29.937288, 33.478104>,  <35.596729, 29.283278, 33.099728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902214, 29.937288, 33.478104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519150, 29.892479, 33.584183>,  <35.289310, 29.865593, 33.647831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519150, 29.892479, 33.584183>,  <35.902214, 29.937288, 33.478104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519150, 29.892479, 33.584183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274725, -0.080205, 0.958172,
		-0.086065, 0.990464, 0.107584,
		-0.957663, -0.112021, 0.265202,
		35.231850, 29.858873, 33.663742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802017, 30.263531, 34.000130>,  <35.902214, 29.937288, 33.478104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802017, 30.263531, 34.000130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529156, 29.971127, 34.007004>,  <35.365440, 29.795685, 34.011127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529156, 29.971127, 34.007004>,  <35.802017, 30.263531, 34.000130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529156, 29.971127, 34.007004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244946, -0.206298, 0.947335,
		-0.688964, 0.650436, 0.319784,
		-0.682151, -0.731009, 0.017190,
		35.324509, 29.751823, 34.012161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491989, 30.098688, 34.162682>,  <35.802017, 30.263531, 34.000130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491989, 30.098688, 34.162682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840179, 30.274593, 34.074249>,  <37.049095, 30.380136, 34.021191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840179, 30.274593, 34.074249>,  <36.491989, 30.098688, 34.162682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840179, 30.274593, 34.074249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266473, 0.043396, -0.962865,
		-0.413840, 0.897064, 0.154961,
		0.870476, 0.439765, -0.221084,
		37.101322, 30.406523, 34.007923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452866, 30.784805, 33.626705>,  <36.491989, 30.098688, 34.162682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452866, 30.784805, 33.626705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816082, 30.629744, 33.563213>,  <37.034012, 30.536707, 33.525120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816082, 30.629744, 33.563213>,  <36.452866, 30.784805, 33.626705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816082, 30.629744, 33.563213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119717, 0.122956, -0.985165,
		0.401418, 0.913568, 0.065240,
		0.908037, -0.387652, -0.158726,
		37.088493, 30.513449, 33.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912720, 31.233408, 33.076550>,  <36.452866, 30.784805, 33.626705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912720, 31.233408, 33.076550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068027, 30.865099, 33.091652>,  <37.161213, 30.644114, 33.100712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068027, 30.865099, 33.091652>,  <36.912720, 31.233408, 33.076550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068027, 30.865099, 33.091652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062438, -0.014590, -0.997942,
		0.919429, 0.389827, 0.051826,
		0.388268, -0.920773, 0.037754,
		37.184509, 30.588867, 33.102978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267750, 31.176247, 32.445606>,  <36.912720, 31.233408, 33.076550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267750, 31.176247, 32.445606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 30.790791, 32.551289>,  <37.242180, 30.559517, 32.614700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 30.790791, 32.551289>,  <37.267750, 31.176247, 32.445606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251770, 30.790791, 32.551289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107980, -0.267034, -0.957619,
		0.993350, -0.009729, 0.114722,
		-0.039951, -0.963638, 0.264208,
		37.239784, 30.501699, 32.630550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831318, 30.852236, 32.082386>,  <37.267750, 31.176247, 32.445606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831318, 30.852236, 32.082386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560837, 30.570982, 32.170334>,  <37.398548, 30.402229, 32.223103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560837, 30.570982, 32.170334>,  <37.831318, 30.852236, 32.082386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560837, 30.570982, 32.170334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002543, -0.296223, -0.955115,
		0.736708, -0.646414, 0.198520,
		-0.676206, -0.703137, 0.219873,
		37.357975, 30.360041, 32.236298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060856, 30.350103, 31.627245>,  <37.831318, 30.852236, 32.082386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060856, 30.350103, 31.627245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677593, 30.275412, 31.714024>,  <37.447636, 30.230597, 31.766090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677593, 30.275412, 31.714024>,  <38.060856, 30.350103, 31.627245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677593, 30.275412, 31.714024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182617, -0.184855, -0.965650,
		0.220421, -0.964863, 0.143020,
		-0.958158, -0.186731, 0.216946,
		37.390144, 30.219393, 31.779108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009678, 29.662769, 31.319807>,  <38.060856, 30.350103, 31.627245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009678, 29.662769, 31.319807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643429, 29.812496, 31.378479>,  <37.423679, 29.902332, 31.413683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643429, 29.812496, 31.378479>,  <38.009678, 29.662769, 31.319807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643429, 29.812496, 31.378479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326316, -0.478846, -0.815000,
		-0.234831, -0.794099, 0.560589,
		-0.915627, 0.374316, 0.146679,
		37.368740, 29.924791, 31.422483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642902, 29.078501, 31.237665>,  <38.009678, 29.662769, 31.319807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642902, 29.078501, 31.237665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386574, 29.379845, 31.178619>,  <37.232777, 29.560652, 31.143192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386574, 29.379845, 31.178619>,  <37.642902, 29.078501, 31.237665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386574, 29.379845, 31.178619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323248, -0.439204, -0.838218,
		-0.696314, -0.489435, 0.524976,
		-0.640825, 0.753361, -0.147615,
		37.194324, 29.605852, 31.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194096, 28.765833, 30.733046>,  <37.642902, 29.078501, 31.237665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194096, 28.765833, 30.733046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051010, 29.138170, 30.762892>,  <36.965157, 29.361572, 30.780800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051010, 29.138170, 30.762892>,  <37.194096, 28.765833, 30.733046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051010, 29.138170, 30.762892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487520, -0.118005, -0.865101,
		-0.796469, -0.345838, 0.496018,
		-0.357717, 0.930844, 0.074615,
		36.943695, 29.417423, 30.785276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399532, 28.742950, 30.617920>,  <37.194096, 28.765833, 30.733046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399532, 28.742950, 30.617920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582870, 29.082136, 30.511427>,  <36.692871, 29.285646, 30.447531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582870, 29.082136, 30.511427>,  <36.399532, 28.742950, 30.617920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582870, 29.082136, 30.511427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206705, -0.189634, -0.959850,
		-0.864404, 0.494973, 0.088361,
		0.458343, 0.847963, -0.266234,
		36.720375, 29.336525, 30.431557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894234, 29.101532, 30.252384>,  <36.399532, 28.742950, 30.617920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894234, 29.101532, 30.252384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249607, 29.237417, 30.128912>,  <36.462830, 29.318949, 30.054829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249607, 29.237417, 30.128912>,  <35.894234, 29.101532, 30.252384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249607, 29.237417, 30.128912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314929, -0.038101, -0.948350,
		-0.333929, 0.939757, 0.073136,
		0.888432, 0.339715, -0.308679,
		36.516136, 29.339331, 30.036308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693008, 29.657961, 29.842348>,  <35.894234, 29.101532, 30.252384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693008, 29.657961, 29.842348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065971, 29.553947, 29.741953>,  <36.289749, 29.491539, 29.681715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065971, 29.553947, 29.741953>,  <35.693008, 29.657961, 29.842348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065971, 29.553947, 29.741953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198945, 0.210487, -0.957140,
		0.301717, 0.942379, 0.144528,
		0.932410, -0.260032, -0.250989,
		36.345695, 29.475937, 29.666656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897793, 30.178385, 29.478399>,  <35.693008, 29.657961, 29.842348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897793, 30.178385, 29.478399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133644, 29.871391, 29.377756>,  <36.275154, 29.687195, 29.317371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133644, 29.871391, 29.377756>,  <35.897793, 30.178385, 29.478399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133644, 29.871391, 29.377756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111771, 0.230987, -0.966516,
		0.799903, 0.598008, 0.050414,
		0.589628, -0.767484, -0.251607,
		36.310532, 29.641146, 29.302275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376060, 30.446564, 28.904621>,  <35.897793, 30.178385, 29.478399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376060, 30.446564, 28.904621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411518, 30.049616, 28.870344>,  <36.432793, 29.811447, 28.849779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411518, 30.049616, 28.870344>,  <36.376060, 30.446564, 28.904621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411518, 30.049616, 28.870344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299342, 0.055512, -0.952530,
		0.950019, 0.110086, -0.292137,
		0.088643, -0.992370, -0.085691,
		36.438110, 29.751905, 28.844637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872643, 30.387518, 28.310230>,  <36.376060, 30.446564, 28.904621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872643, 30.387518, 28.310230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680843, 30.038729, 28.349714>,  <36.565765, 29.829454, 28.373404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680843, 30.038729, 28.349714>,  <36.872643, 30.387518, 28.310230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680843, 30.038729, 28.349714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158502, -0.024576, -0.987053,
		0.863112, -0.488932, -0.126426,
		-0.479495, -0.871975, 0.098709,
		36.536995, 29.777136, 28.379328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127407, 29.867252, 27.754778>,  <36.872643, 30.387518, 28.310230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127407, 29.867252, 27.754778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766109, 29.730652, 27.858717>,  <36.549332, 29.648691, 27.921082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766109, 29.730652, 27.858717>,  <37.127407, 29.867252, 27.754778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766109, 29.730652, 27.858717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248134, -0.078390, -0.965549,
		0.350108, -0.936606, -0.013934,
		-0.903246, -0.341503, 0.259849,
		36.495136, 29.628201, 27.936672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049728, 29.377895, 27.322559>,  <37.127407, 29.867252, 27.754778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049728, 29.377895, 27.322559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674133, 29.437931, 27.446352>,  <36.448776, 29.473953, 27.520628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674133, 29.437931, 27.446352>,  <37.049728, 29.377895, 27.322559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674133, 29.437931, 27.446352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309526, 0.023669, -0.950596,
		-0.149998, -0.988389, 0.024231,
		-0.938985, 0.150088, 0.309482,
		36.392437, 29.482958, 27.539196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601021, 28.818756, 27.190878>,  <37.049728, 29.377895, 27.322559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601021, 28.818756, 27.190878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397068, 29.161650, 27.219633>,  <36.274696, 29.367386, 27.236885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397068, 29.161650, 27.219633>,  <36.601021, 28.818756, 27.190878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397068, 29.161650, 27.219633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296935, -0.096954, -0.949963,
		-0.807372, -0.505714, 0.303978,
		-0.509882, 0.857236, 0.071886,
		36.244102, 29.418819, 27.241199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.994038, 28.615309, 26.804831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942352, 29.010633, 26.837181>,  <35.911343, 29.247829, 26.856590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942352, 29.010633, 26.837181>,  <35.994038, 28.615309, 26.804831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942352, 29.010633, 26.837181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741432, -0.042133, -0.669705,
		-0.658470, -0.146498, 0.738211,
		-0.129213, 0.988314, 0.080875,
		35.903587, 29.307127, 26.861444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269867, 28.787542, 26.956881>,  <35.994038, 28.615309, 26.804831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269867, 28.787542, 26.956881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436745, 29.092703, 26.759321>,  <35.536873, 29.275799, 26.640785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436745, 29.092703, 26.759321>,  <35.269867, 28.787542, 26.956881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436745, 29.092703, 26.759321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659636, -0.119645, -0.742001,
		-0.625164, 0.635350, 0.453321,
		0.417193, 0.762899, -0.493897,
		35.561901, 29.321573, 26.611153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732910, 29.125652, 26.709358>,  <35.269867, 28.787542, 26.956881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732910, 29.125652, 26.709358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039574, 29.274672, 26.500189>,  <35.223572, 29.364082, 26.374687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039574, 29.274672, 26.500189>,  <34.732910, 29.125652, 26.709358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039574, 29.274672, 26.500189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599119, 0.122245, -0.791273,
		-0.230862, 0.919926, 0.316920,
		0.766655, 0.372547, -0.522923,
		35.269569, 29.386436, 26.343311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472000, 29.592777, 26.188921>,  <34.732910, 29.125652, 26.709358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472000, 29.592777, 26.188921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841583, 29.532621, 26.048248>,  <35.063335, 29.496529, 25.963844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841583, 29.532621, 26.048248>,  <34.472000, 29.592777, 26.188921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841583, 29.532621, 26.048248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327739, 0.162738, -0.930647,
		0.197190, 0.975141, 0.101076,
		0.923961, -0.150387, -0.351682,
		35.118771, 29.487505, 25.942743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703072, 30.177399, 25.787457>,  <34.472000, 29.592777, 26.188921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703072, 30.177399, 25.787457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907246, 29.861244, 25.651957>,  <35.029751, 29.671551, 25.570658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907246, 29.861244, 25.651957>,  <34.703072, 30.177399, 25.787457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907246, 29.861244, 25.651957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363615, 0.158597, -0.917950,
		0.779259, 0.591724, -0.206443,
		0.510431, -0.790386, -0.338748,
		35.060375, 29.624128, 25.550333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043022, 30.475557, 25.156694>,  <34.703072, 30.177399, 25.787457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043022, 30.475557, 25.156694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040741, 30.077753, 25.114901>,  <35.039371, 29.839071, 25.089825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040741, 30.077753, 25.114901>,  <35.043022, 30.475557, 25.156694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040741, 30.077753, 25.114901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197548, 0.103550, -0.974809,
		0.980277, 0.015078, -0.197054,
		-0.005706, -0.994510, -0.104486,
		35.039028, 29.779400, 25.083555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246365, 30.377113, 24.453474>,  <35.043022, 30.475557, 25.156694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246365, 30.377113, 24.453474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110405, 30.011076, 24.540258>,  <35.028828, 29.791454, 24.592329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110405, 30.011076, 24.540258>,  <35.246365, 30.377113, 24.453474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110405, 30.011076, 24.540258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218862, -0.147393, -0.964559,
		0.914640, -0.375338, -0.150180,
		-0.339901, -0.915094, 0.216959,
		35.008434, 29.736547, 24.605347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608025, 29.955746, 24.045301>,  <35.246365, 30.377113, 24.453474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608025, 29.955746, 24.045301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256409, 29.791681, 24.142513>,  <35.045441, 29.693243, 24.200840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256409, 29.791681, 24.142513>,  <35.608025, 29.955746, 24.045301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256409, 29.791681, 24.142513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302849, 0.086695, -0.949087,
		0.368208, -0.907884, -0.200424,
		-0.879037, -0.410160, 0.243030,
		34.992699, 29.668634, 24.215422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470444, 29.398260, 23.687706>,  <35.608025, 29.955746, 24.045301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470444, 29.398260, 23.687706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099903, 29.517460, 23.779856>,  <34.877579, 29.588980, 23.835146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099903, 29.517460, 23.779856>,  <35.470444, 29.398260, 23.687706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099903, 29.517460, 23.779856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226616, 0.047609, -0.972820,
		-0.300869, -0.953378, 0.023430,
		-0.926349, 0.298001, 0.230375,
		34.821999, 29.606859, 23.848969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016033, 29.052423, 23.224798>,  <35.470444, 29.398260, 23.687706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016033, 29.052423, 23.224798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824429, 29.372744, 23.368614>,  <34.709465, 29.564936, 23.454903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824429, 29.372744, 23.368614>,  <35.016033, 29.052423, 23.224798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824429, 29.372744, 23.368614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100355, 0.356943, -0.928720,
		-0.872053, -0.480950, -0.090615,
		-0.479012, 0.800799, 0.359539,
		34.680725, 29.612984, 23.476477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298485, 29.039808, 22.879353>,  <35.016033, 29.052423, 23.224798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298485, 29.039808, 22.879353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378227, 29.407772, 23.014420>,  <34.426075, 29.628551, 23.095459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378227, 29.407772, 23.014420>,  <34.298485, 29.039808, 22.879353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378227, 29.407772, 23.014420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073793, 0.357700, -0.930916,
		-0.977144, 0.160670, 0.139194,
		0.199360, 0.919911, 0.337668,
		34.438034, 29.683744, 23.115721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765228, 29.356297, 22.612835>,  <34.298485, 29.039808, 22.879353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765228, 29.356297, 22.612835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055901, 29.625542, 22.667757>,  <34.230305, 29.787088, 22.700710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055901, 29.625542, 22.667757>,  <33.765228, 29.356297, 22.612835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055901, 29.625542, 22.667757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292512, 0.484019, -0.824720,
		-0.621589, 0.559145, 0.548621,
		0.726681, 0.673115, 0.137304,
		34.273903, 29.827477, 22.708948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565746, 29.918526, 22.326366>,  <33.765228, 29.356297, 22.612835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565746, 29.918526, 22.326366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.948490, 30.029524, 22.360809>,  <34.178135, 30.096123, 22.381475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.948490, 30.029524, 22.360809>,  <33.565746, 29.918526, 22.326366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948490, 30.029524, 22.360809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059535, 0.477327, -0.876707,
		-0.284384, 0.833759, 0.473256,
		0.956860, 0.277496, 0.086106,
		34.235550, 30.112772, 22.386641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582203, 30.757915, 22.139833>,  <33.565746, 29.918526, 22.326366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582203, 30.757915, 22.139833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946232, 30.594479, 22.112055>,  <34.164650, 30.496416, 22.095388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946232, 30.594479, 22.112055>,  <33.582203, 30.757915, 22.139833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946232, 30.594479, 22.112055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121261, 0.422737, -0.898103,
		0.396315, 0.808917, 0.434267,
		0.910072, -0.408591, -0.069447,
		34.219254, 30.471901, 22.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086372, 31.324268, 21.928059>,  <33.582203, 30.757915, 22.139833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086372, 31.324268, 21.928059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236134, 30.968071, 21.824644>,  <34.325993, 30.754353, 21.762596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236134, 30.968071, 21.824644>,  <34.086372, 31.324268, 21.928059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236134, 30.968071, 21.824644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083121, 0.309923, -0.947121,
		0.923532, 0.333118, 0.190056,
		0.374406, -0.890494, -0.258535,
		34.348454, 30.700922, 21.747084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588737, 31.498562, 21.407337>,  <34.086372, 31.324268, 21.928059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588737, 31.498562, 21.407337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493748, 31.110838, 21.381899>,  <34.436756, 30.878202, 21.366636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493748, 31.110838, 21.381899>,  <34.588737, 31.498562, 21.407337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493748, 31.110838, 21.381899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040686, 0.075338, -0.996328,
		0.970542, -0.234011, -0.057328,
		-0.237470, -0.969311, -0.063598,
		34.422508, 30.820045, 21.362820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834774, 31.335499, 20.832407>,  <34.588737, 31.498562, 21.407337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834774, 31.335499, 20.832407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582146, 31.031372, 20.893120>,  <34.430569, 30.848896, 20.929548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582146, 31.031372, 20.893120>,  <34.834774, 31.335499, 20.832407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582146, 31.031372, 20.893120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232700, -0.000854, -0.972548,
		0.739576, -0.649550, -0.176387,
		-0.631568, -0.760318, 0.151782,
		34.392673, 30.803276, 20.938654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020172, 30.884872, 20.300426>,  <34.834774, 31.335499, 20.832407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020172, 30.884872, 20.300426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652229, 30.785961, 20.422228>,  <34.431465, 30.726614, 20.495308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652229, 30.785961, 20.422228>,  <35.020172, 30.884872, 20.300426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652229, 30.785961, 20.422228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246313, -0.240032, -0.938997,
		0.305286, -0.938742, 0.159885,
		-0.919853, -0.247281, 0.304503,
		34.376274, 30.711777, 20.513578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767452, 30.310432, 19.842226>,  <35.020172, 30.884872, 20.300426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767452, 30.310432, 19.842226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436562, 30.444216, 20.022820>,  <34.238029, 30.524487, 20.131176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436562, 30.444216, 20.022820>,  <34.767452, 30.310432, 19.842226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436562, 30.444216, 20.022820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522373, -0.161836, -0.837219,
		-0.206945, -0.928412, 0.308585,
		-0.827225, 0.334454, 0.451486,
		34.188393, 30.544554, 20.158264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179707, 29.802969, 19.708551>,  <34.767452, 30.310432, 19.842226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179707, 29.802969, 19.708551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010536, 30.153347, 19.801374>,  <33.909035, 30.363575, 19.857069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010536, 30.153347, 19.801374>,  <34.179707, 29.802969, 19.708551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010536, 30.153347, 19.801374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605398, -0.082580, -0.791627,
		-0.674260, -0.475288, 0.565221,
		-0.422927, 0.875946, 0.232058,
		33.883659, 30.416130, 19.870993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492485, 29.661343, 19.589668>,  <34.179707, 29.802969, 19.708551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492485, 29.661343, 19.589668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502197, 30.060886, 19.606115>,  <33.508026, 30.300613, 19.615984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502197, 30.060886, 19.606115>,  <33.492485, 29.661343, 19.589668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502197, 30.060886, 19.606115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701927, 0.046318, -0.710741,
		-0.711835, -0.011603, 0.702251,
		0.024281, 0.998859, 0.041115,
		33.509483, 30.360544, 19.618450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815723, 29.834351, 19.723295>,  <33.492485, 29.661343, 19.589668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815723, 29.834351, 19.723295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015270, 30.119860, 19.526661>,  <33.134998, 30.291166, 19.408680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015270, 30.119860, 19.526661>,  <32.815723, 29.834351, 19.723295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015270, 30.119860, 19.526661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677620, -0.032392, -0.734698,
		-0.540332, 0.699627, 0.467508,
		0.498871, 0.713773, -0.491584,
		33.164932, 30.333992, 19.379187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324226, 30.289942, 19.377270>,  <32.815723, 29.834351, 19.723295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324226, 30.289942, 19.377270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674728, 30.289047, 19.184536>,  <32.885033, 30.288509, 19.068895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674728, 30.289047, 19.184536>,  <32.324226, 30.289942, 19.377270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674728, 30.289047, 19.184536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468912, -0.234037, -0.851674,
		-0.110861, 0.972225, -0.206126,
		0.876260, -0.002237, -0.481834,
		32.937607, 30.288376, 19.039986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248459, 30.597210, 18.772549>,  <32.324226, 30.289942, 19.377270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248459, 30.597210, 18.772549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566532, 30.359169, 18.726015>,  <32.757378, 30.216345, 18.698095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566532, 30.359169, 18.726015>,  <32.248459, 30.597210, 18.772549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566532, 30.359169, 18.726015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394757, -0.362440, -0.844277,
		0.460266, 0.717281, -0.523128,
		0.795186, -0.595101, -0.116333,
		32.805088, 30.180639, 18.691114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522476, 30.699314, 18.682640>,  <32.248459, 30.597210, 18.772549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522476, 30.699314, 18.682640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174139, 30.502787, 18.688812>,  <30.965136, 30.384871, 18.692516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174139, 30.502787, 18.688812>,  <31.522476, 30.699314, 18.682640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174139, 30.502787, 18.688812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081976, -0.114204, 0.990069,
		-0.484676, 0.863461, 0.139730,
		-0.870844, -0.491317, 0.015432,
		30.912886, 30.355391, 18.693441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076870, 31.043148, 19.120918>,  <31.522476, 30.699314, 18.682640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076870, 31.043148, 19.120918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973928, 30.656731, 19.111761>,  <30.912163, 30.424879, 19.106268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973928, 30.656731, 19.111761>,  <31.076870, 31.043148, 19.120918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973928, 30.656731, 19.111761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044166, -0.035425, 0.998396,
		-0.965307, 0.255931, 0.051783,
		-0.257355, -0.966046, -0.022892,
		30.896723, 30.366917, 19.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578606, 31.032307, 19.635958>,  <31.076870, 31.043148, 19.120918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578606, 31.032307, 19.635958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700094, 30.654118, 19.588911>,  <30.772987, 30.427204, 19.560682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700094, 30.654118, 19.588911>,  <30.578606, 31.032307, 19.635958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700094, 30.654118, 19.588911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146125, -0.075762, 0.986361,
		-0.941489, -0.316765, 0.115147,
		0.303720, -0.945474, -0.117616,
		30.791210, 30.370476, 19.553627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528612, 30.681170, 20.301342>,  <30.578606, 31.032307, 19.635958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528612, 30.681170, 20.301342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687181, 30.352936, 20.136665>,  <30.782324, 30.155996, 20.037859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687181, 30.352936, 20.136665>,  <30.528612, 30.681170, 20.301342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687181, 30.352936, 20.136665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138147, -0.390011, 0.910388,
		-0.907614, -0.417774, -0.041249,
		0.396424, -0.820583, -0.411694,
		30.806108, 30.106760, 20.013157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305613, 30.177841, 20.766794>,  <30.528612, 30.681170, 20.301342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305613, 30.177841, 20.766794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613483, 30.024782, 20.562372>,  <30.798206, 29.932947, 20.439718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613483, 30.024782, 20.562372>,  <30.305613, 30.177841, 20.766794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613483, 30.024782, 20.562372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400999, -0.333136, 0.853358,
		-0.496788, -0.861742, -0.102964,
		0.769676, -0.382650, -0.511056,
		30.844387, 29.909988, 20.409056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339838, 29.530588, 21.024385>,  <30.305613, 30.177841, 20.766794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339838, 29.530588, 21.024385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708158, 29.589787, 20.880041>,  <30.929152, 29.625305, 20.793434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708158, 29.589787, 20.880041>,  <30.339838, 29.530588, 21.024385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708158, 29.589787, 20.880041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389799, -0.381044, 0.838368,
		-0.013427, -0.912635, -0.408556,
		0.920802, 0.147998, -0.360861,
		30.984400, 29.634186, 20.771782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649775, 28.850683, 21.078243>,  <30.339838, 29.530588, 21.024385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649775, 28.850683, 21.078243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924908, 29.140085, 21.054838>,  <31.089989, 29.313726, 21.040794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924908, 29.140085, 21.054838>,  <30.649775, 28.850683, 21.078243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924908, 29.140085, 21.054838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411506, -0.322270, 0.852528,
		0.597952, -0.610477, -0.519395,
		0.687835, 0.723505, -0.058513,
		31.131258, 29.357138, 21.037285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259645, 28.516716, 21.386248>,  <30.649775, 28.850683, 21.078243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259645, 28.516716, 21.386248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294659, 28.914938, 21.372328>,  <31.315666, 29.153872, 21.363976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294659, 28.914938, 21.372328>,  <31.259645, 28.516716, 21.386248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294659, 28.914938, 21.372328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530020, -0.016969, 0.847815,
		0.843455, -0.092657, -0.529149,
		0.087535, 0.995554, -0.034797,
		31.320919, 29.213604, 21.361889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953739, 28.643980, 21.460175>,  <31.259645, 28.516716, 21.386248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953739, 28.643980, 21.460175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764233, 28.973984, 21.583403>,  <31.650528, 29.171986, 21.657339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764233, 28.973984, 21.583403>,  <31.953739, 28.643980, 21.460175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764233, 28.973984, 21.583403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542917, -0.001815, 0.839785,
		0.693388, 0.565118, -0.447050,
		-0.473766, 0.825008, 0.308071,
		31.622103, 29.221487, 21.675823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426018, 29.153210, 21.591852>,  <31.953739, 28.643980, 21.460175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426018, 29.153210, 21.591852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099800, 29.283537, 21.783157>,  <31.904070, 29.361732, 21.897940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099800, 29.283537, 21.783157>,  <32.426018, 29.153210, 21.591852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099800, 29.283537, 21.783157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457589, -0.142858, 0.877612,
		0.354264, 0.934578, -0.032583,
		-0.815542, 0.325816, 0.478262,
		31.855137, 29.381281, 21.926636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630753, 29.683830, 22.034687>,  <32.426018, 29.153210, 21.591852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630753, 29.683830, 22.034687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285046, 29.553135, 22.187672>,  <32.077621, 29.474718, 22.279463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285046, 29.553135, 22.187672>,  <32.630753, 29.683830, 22.034687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285046, 29.553135, 22.187672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370922, 0.099626, 0.923305,
		-0.339784, 0.939849, 0.035091,
		-0.864271, -0.326740, 0.382462,
		32.025764, 29.455112, 22.302410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522911, 30.134226, 22.724619>,  <32.630753, 29.683830, 22.034687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522911, 30.134226, 22.724619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299583, 29.802462, 22.732199>,  <32.165588, 29.603403, 22.736746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299583, 29.802462, 22.732199>,  <32.522911, 30.134226, 22.724619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299583, 29.802462, 22.732199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215207, -0.122732, 0.968825,
		-0.801227, 0.544992, 0.247018,
		-0.558319, -0.829410, 0.018950,
		32.132088, 29.553638, 22.737885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219215, 30.150606, 23.374292>,  <32.522911, 30.134226, 22.724619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219215, 30.150606, 23.374292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170643, 29.773205, 23.250969>,  <32.141499, 29.546764, 23.176975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170643, 29.773205, 23.250969>,  <32.219215, 30.150606, 23.374292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170643, 29.773205, 23.250969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209663, -0.327979, 0.921125,
		-0.970204, 0.047214, 0.237645,
		-0.121432, -0.943504, -0.308308,
		32.134212, 29.490154, 23.158476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687654, 29.808432, 23.808632>,  <32.219215, 30.150606, 23.374292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687654, 29.808432, 23.808632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.910625, 29.512447, 23.658041>,  <32.044407, 29.334858, 23.567686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.910625, 29.512447, 23.658041>,  <31.687654, 29.808432, 23.808632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910625, 29.512447, 23.658041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207171, -0.315141, 0.926156,
		-0.803961, -0.594261, -0.022370,
		0.557428, -0.739959, -0.376475,
		32.077854, 29.290459, 23.545099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526272, 29.273678, 24.221130>,  <31.687654, 29.808432, 23.808632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526272, 29.273678, 24.221130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872080, 29.156738, 24.057602>,  <32.079567, 29.086575, 23.959484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872080, 29.156738, 24.057602>,  <31.526272, 29.273678, 24.221130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872080, 29.156738, 24.057602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274263, -0.407223, 0.871177,
		-0.421185, -0.865271, -0.271865,
		0.864514, -0.292364, -0.408827,
		32.131435, 29.069035, 23.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566139, 28.565281, 24.331442>,  <31.526272, 29.273678, 24.221130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566139, 28.565281, 24.331442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948778, 28.672106, 24.284790>,  <32.178360, 28.736200, 24.256800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948778, 28.672106, 24.284790>,  <31.566139, 28.565281, 24.331442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948778, 28.672106, 24.284790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215295, -0.377935, 0.900451,
		0.196398, -0.886478, -0.419029,
		0.956596, 0.267062, -0.116629,
		32.235756, 28.752224, 24.249802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064861, 27.986086, 24.366938>,  <31.566139, 28.565281, 24.331442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064861, 27.986086, 24.366938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284473, 28.301901, 24.476620>,  <32.416241, 28.491390, 24.542429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284473, 28.301901, 24.476620>,  <32.064861, 27.986086, 24.366938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284473, 28.301901, 24.476620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319935, -0.501619, 0.803754,
		0.772142, -0.353561, -0.528008,
		0.549035, 0.789540, 0.274204,
		32.449184, 28.538763, 24.558882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709473, 27.752953, 24.746128>,  <32.064861, 27.986086, 24.366938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709473, 27.752953, 24.746128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675262, 28.136261, 24.855234>,  <32.654736, 28.366247, 24.920698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675262, 28.136261, 24.855234>,  <32.709473, 27.752953, 24.746128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675262, 28.136261, 24.855234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326177, -0.231752, 0.916460,
		0.941432, 0.167347, -0.292746,
		-0.085522, 0.958272, 0.272764,
		32.649605, 28.423742, 24.937063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184242, 27.748409, 25.214970>,  <32.709473, 27.752953, 24.746128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184242, 27.748409, 25.214970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008545, 28.091763, 25.320980>,  <32.903126, 28.297775, 25.384586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008545, 28.091763, 25.320980>,  <33.184242, 27.748409, 25.214970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008545, 28.091763, 25.320980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261201, -0.160238, 0.951892,
		0.859556, 0.487341, -0.153827,
		-0.439247, 0.858383, 0.265028,
		32.876770, 28.349277, 25.400488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692207, 28.080349, 25.608065>,  <33.184242, 27.748409, 25.214970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692207, 28.080349, 25.608065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330673, 28.228025, 25.694586>,  <33.113754, 28.316631, 25.746498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330673, 28.228025, 25.694586>,  <33.692207, 28.080349, 25.608065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330673, 28.228025, 25.694586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234729, 0.005145, 0.972047,
		0.357760, 0.929338, -0.091310,
		-0.903831, 0.369193, 0.216302,
		33.059525, 28.338783, 25.759476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.586647, 29.305191, 29.395954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199329, 29.379969, 29.462242>,  <36.966938, 29.424835, 29.502014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199329, 29.379969, 29.462242>,  <37.586647, 29.305191, 29.395954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199329, 29.379969, 29.462242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207175, 0.230205, 0.950834,
		0.139603, 0.955017, -0.261635,
		-0.968292, 0.186944, 0.165718,
		36.908840, 29.436052, 29.511957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624107, 29.965218, 29.754877>,  <37.586647, 29.305191, 29.395954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624107, 29.965218, 29.754877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278755, 29.776104, 29.825350>,  <37.071545, 29.662636, 29.867634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278755, 29.776104, 29.825350>,  <37.624107, 29.965218, 29.754877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278755, 29.776104, 29.825350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129485, 0.129867, 0.983040,
		-0.487648, 0.871555, -0.050907,
		-0.863385, -0.472786, 0.176182,
		37.019741, 29.634268, 29.878204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190590, 30.447521, 30.040062>,  <37.624107, 29.965218, 29.754877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190590, 30.447521, 30.040062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024437, 30.110317, 30.176758>,  <36.924744, 29.907995, 30.258776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024437, 30.110317, 30.176758>,  <37.190590, 30.447521, 30.040062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024437, 30.110317, 30.176758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220620, 0.271103, 0.936926,
		-0.882486, 0.464580, 0.073373,
		-0.415385, -0.843012, 0.341740,
		36.899822, 29.857414, 30.279280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746563, 30.715250, 30.573706>,  <37.190590, 30.447521, 30.040062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746563, 30.715250, 30.573706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739552, 30.323339, 30.653437>,  <36.735344, 30.088194, 30.701275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739552, 30.323339, 30.653437>,  <36.746563, 30.715250, 30.573706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739552, 30.323339, 30.653437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010307, 0.199524, 0.979839,
		-0.999793, 0.015117, -0.013595,
		-0.017524, -0.979777, 0.199327,
		36.734295, 30.029406, 30.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270462, 30.618284, 31.051615>,  <36.746563, 30.715250, 30.573706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270462, 30.618284, 31.051615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543598, 30.328043, 31.085619>,  <36.707481, 30.153898, 31.106022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543598, 30.328043, 31.085619>,  <36.270462, 30.618284, 31.051615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543598, 30.328043, 31.085619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172696, 0.273380, 0.946277,
		-0.709863, -0.631475, 0.311984,
		0.682840, -0.725605, 0.085009,
		36.748451, 30.110361, 31.111122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177208, 30.376444, 31.723667>,  <36.270462, 30.618284, 31.051615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177208, 30.376444, 31.723667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539082, 30.229927, 31.636602>,  <36.756207, 30.142017, 31.584364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539082, 30.229927, 31.636602>,  <36.177208, 30.376444, 31.723667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539082, 30.229927, 31.636602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294464, 0.168268, 0.940732,
		-0.307957, -0.915159, 0.260089,
		0.904684, -0.366292, -0.217663,
		36.810486, 30.120039, 31.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230659, 29.701532, 32.034595>,  <36.177208, 30.376444, 31.723667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230659, 29.701532, 32.034595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588207, 29.869179, 31.970924>,  <36.802734, 29.969767, 31.932722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588207, 29.869179, 31.970924>,  <36.230659, 29.701532, 32.034595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588207, 29.869179, 31.970924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180496, -0.011433, 0.983509,
		0.410386, -0.907860, -0.085869,
		0.893871, 0.419117, -0.159173,
		36.856369, 29.994913, 31.923172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492725, 29.476587, 32.593559>,  <36.230659, 29.701532, 32.034595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492725, 29.476587, 32.593559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756451, 29.753447, 32.476093>,  <36.914684, 29.919563, 32.405613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756451, 29.753447, 32.476093>,  <36.492725, 29.476587, 32.593559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756451, 29.753447, 32.476093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290278, 0.125975, 0.948614,
		0.693578, -0.710675, -0.117860,
		0.659309, 0.692150, -0.293667,
		36.954243, 29.961092, 32.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105518, 29.271265, 32.982449>,  <36.492725, 29.476587, 32.593559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105518, 29.271265, 32.982449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.155304, 29.652739, 32.872910>,  <37.185177, 29.881622, 32.807186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.155304, 29.652739, 32.872910>,  <37.105518, 29.271265, 32.982449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155304, 29.652739, 32.872910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232403, 0.240297, 0.942468,
		0.964622, -0.180951, -0.191730,
		0.124469, 0.953685, -0.273849,
		37.192646, 29.938845, 32.790756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730484, 29.418047, 33.099876>,  <37.105518, 29.271265, 32.982449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730484, 29.418047, 33.099876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553501, 29.776670, 33.108002>,  <37.447311, 29.991844, 33.112877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553501, 29.776670, 33.108002>,  <37.730484, 29.418047, 33.099876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553501, 29.776670, 33.108002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337975, 0.145724, 0.929805,
		0.830664, 0.418267, -0.367491,
		-0.442459, 0.896558, 0.020316,
		37.420765, 30.045637, 33.114098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172798, 29.875093, 33.471004>,  <37.730484, 29.418047, 33.099876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172798, 29.875093, 33.471004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821594, 30.064095, 33.501572>,  <37.610870, 30.177494, 33.519913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821594, 30.064095, 33.501572>,  <38.172798, 29.875093, 33.471004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821594, 30.064095, 33.501572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258452, 0.333641, 0.906579,
		0.402864, 0.815736, -0.415060,
		-0.878011, 0.472501, 0.076417,
		37.558189, 30.205845, 33.524498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259457, 30.612720, 33.514656>,  <38.172798, 29.875093, 33.471004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259457, 30.612720, 33.514656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913658, 30.514383, 33.690018>,  <37.706177, 30.455381, 33.795235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913658, 30.514383, 33.690018>,  <38.259457, 30.612720, 33.514656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913658, 30.514383, 33.690018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250384, 0.545663, 0.799725,
		-0.435828, 0.801133, -0.410171,
		-0.864501, -0.245842, 0.438406,
		37.654308, 30.440630, 33.821541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292332, 30.365347, 32.759300>,  <38.259457, 30.612720, 33.514656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292332, 30.365347, 32.759300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.584160, 30.321957, 33.029400>,  <38.759258, 30.295923, 33.191460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.584160, 30.321957, 33.029400>,  <38.292332, 30.365347, 32.759300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584160, 30.321957, 33.029400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643686, 0.442496, -0.624392,
		-0.231062, 0.890186, 0.392658,
		0.729574, -0.108475, 0.675244,
		38.803032, 30.289413, 33.231972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486931, 30.990040, 32.825172>,  <38.292332, 30.365347, 32.759300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486931, 30.990040, 32.825172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759274, 30.703037, 32.883984>,  <38.922680, 30.530836, 32.919270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759274, 30.703037, 32.883984>,  <38.486931, 30.990040, 32.825172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759274, 30.703037, 32.883984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630390, 0.471890, -0.616384,
		0.372878, 0.512355, 0.773598,
		0.680860, -0.717504, 0.147026,
		38.963531, 30.487785, 32.928093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225998, 31.676228, 33.063610>,  <38.486931, 30.990040, 32.825172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225998, 31.676228, 33.063610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397102, 31.965328, 33.280739>,  <38.499763, 32.138790, 33.411015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397102, 31.965328, 33.280739>,  <38.225998, 31.676228, 33.063610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397102, 31.965328, 33.280739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389110, 0.689280, -0.611135,
		-0.815854, 0.050201, 0.576075,
		0.427757, 0.722754, 0.542818,
		38.525429, 32.182156, 33.443584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644100, 32.116039, 33.251472>,  <38.225998, 31.676228, 33.063610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644100, 32.116039, 33.251472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984432, 32.325657, 33.266773>,  <38.188633, 32.451427, 33.275951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984432, 32.325657, 33.266773>,  <37.644100, 32.116039, 33.251472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984432, 32.325657, 33.266773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388676, 0.676687, -0.625321,
		-0.353580, 0.517176, 0.779430,
		0.850831, 0.524046, 0.038249,
		38.239681, 32.482872, 33.278248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405697, 32.770214, 33.232128>,  <37.644100, 32.116039, 33.251472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405697, 32.770214, 33.232128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792999, 32.823654, 33.147621>,  <38.025379, 32.855721, 33.096916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792999, 32.823654, 33.147621>,  <37.405697, 32.770214, 33.232128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792999, 32.823654, 33.147621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249471, 0.569590, -0.783155,
		0.015703, 0.810998, 0.584838,
		0.968255, 0.133602, -0.211264,
		38.083477, 32.863735, 33.084244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549526, 33.485195, 33.076881>,  <37.405697, 32.770214, 33.232128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549526, 33.485195, 33.076881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832581, 33.277100, 32.885635>,  <38.002415, 33.152241, 32.770885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832581, 33.277100, 32.885635>,  <37.549526, 33.485195, 33.076881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832581, 33.277100, 32.885635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146940, 0.553523, -0.819768,
		0.691130, 0.650353, 0.315248,
		0.707636, -0.520244, -0.478120,
		38.044872, 33.121025, 32.742199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919388, 33.957561, 32.789082>,  <37.549526, 33.485195, 33.076881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919388, 33.957561, 32.789082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.958843, 33.608398, 32.597958>,  <37.982517, 33.398899, 32.483284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.958843, 33.608398, 32.597958>,  <37.919388, 33.957561, 32.789082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958843, 33.608398, 32.597958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265473, 0.439666, -0.858031,
		0.959059, 0.211482, -0.188365,
		0.098641, -0.872908, -0.477809,
		37.988434, 33.346527, 32.454617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934662, 34.090492, 32.084957>,  <37.919388, 33.957561, 32.789082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934662, 34.090492, 32.084957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.912178, 33.693512, 32.041351>,  <37.898689, 33.455322, 32.015186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.912178, 33.693512, 32.041351>,  <37.934662, 34.090492, 32.084957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912178, 33.693512, 32.041351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352165, 0.121882, -0.927968,
		0.934249, -0.013769, -0.356357,
		-0.056210, -0.992449, -0.109019,
		37.895313, 33.395779, 32.008644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241581, 34.087078, 31.486040>,  <37.934662, 34.090492, 32.084957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241581, 34.087078, 31.486040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.015545, 33.758919, 31.520935>,  <37.879921, 33.562023, 31.541872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.015545, 33.758919, 31.520935>,  <38.241581, 34.087078, 31.486040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015545, 33.758919, 31.520935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319513, 0.120134, -0.939936,
		0.760646, -0.559024, -0.330016,
		-0.565093, -0.820402, 0.087236,
		37.846016, 33.512798, 31.547106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325142, 33.715290, 30.806847>,  <38.241581, 34.087078, 31.486040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325142, 33.715290, 30.806847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021122, 33.527958, 30.987061>,  <37.838711, 33.415558, 31.095188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021122, 33.527958, 30.987061>,  <38.325142, 33.715290, 30.806847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021122, 33.527958, 30.987061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407221, -0.197053, -0.891819,
		0.506449, -0.861298, -0.040945,
		-0.760053, -0.468334, 0.450536,
		37.793106, 33.387459, 31.122221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217758, 32.949036, 30.667742>,  <38.325142, 33.715290, 30.806847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217758, 32.949036, 30.667742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857742, 33.085300, 30.776457>,  <37.641731, 33.167061, 30.841686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857742, 33.085300, 30.776457>,  <38.217758, 32.949036, 30.667742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857742, 33.085300, 30.776457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365050, -0.248701, -0.897155,
		-0.238042, -0.906692, 0.348203,
		-0.900041, 0.340672, 0.271787,
		37.587730, 33.187500, 30.857994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708244, 32.428188, 30.577425>,  <38.217758, 32.949036, 30.667742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708244, 32.428188, 30.577425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506855, 32.773415, 30.561239>,  <37.386021, 32.980549, 30.551527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506855, 32.773415, 30.561239>,  <37.708244, 32.428188, 30.577425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506855, 32.773415, 30.561239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370363, -0.257889, -0.892370,
		-0.780609, -0.434294, 0.449486,
		-0.503469, 0.863065, -0.040464,
		37.355816, 33.032333, 30.549101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006451, 32.258389, 30.330946>,  <37.708244, 32.428188, 30.577425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006451, 32.258389, 30.330946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006012, 32.654690, 30.276672>,  <37.005749, 32.892471, 30.244108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006012, 32.654690, 30.276672>,  <37.006451, 32.258389, 30.330946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006012, 32.654690, 30.276672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552248, -0.113721, -0.825887,
		-0.833679, 0.074024, 0.547266,
		-0.001100, 0.990751, -0.135686,
		37.005680, 32.951916, 30.235966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325161, 32.379219, 29.996462>,  <37.006451, 32.258389, 30.330946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325161, 32.379219, 29.996462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.517391, 32.724693, 29.935675>,  <36.632729, 32.931980, 29.899202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.517391, 32.724693, 29.935675>,  <36.325161, 32.379219, 29.996462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517391, 32.724693, 29.935675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407651, 0.066583, -0.910707,
		-0.776448, 0.499611, 0.384081,
		0.480572, 0.863687, -0.151969,
		36.661564, 32.983799, 29.890083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827675, 32.776806, 29.712759>,  <36.325161, 32.379219, 29.996462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827675, 32.776806, 29.712759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188305, 32.927635, 29.627920>,  <36.404682, 33.018131, 29.577017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188305, 32.927635, 29.627920>,  <35.827675, 32.776806, 29.712759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188305, 32.927635, 29.627920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259751, 0.079736, -0.962378,
		-0.345976, 0.922745, 0.169833,
		0.901571, 0.377074, -0.212098,
		36.458775, 33.040756, 29.564291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793839, 33.543461, 29.358643>,  <35.827675, 32.776806, 29.712759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793839, 33.543461, 29.358643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135586, 33.367374, 29.248180>,  <36.340633, 33.261723, 29.181904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135586, 33.367374, 29.248180>,  <35.793839, 33.543461, 29.358643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135586, 33.367374, 29.248180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264161, 0.089727, -0.960296,
		0.447520, 0.893396, -0.039629,
		0.854368, -0.440220, -0.276155,
		36.391895, 33.235310, 29.165335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737015, 34.272110, 29.424109>,  <35.793839, 33.543461, 29.358643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737015, 34.272110, 29.424109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.540001, 34.619869, 29.408367>,  <35.421791, 34.828526, 29.398922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.540001, 34.619869, 29.408367>,  <35.737015, 34.272110, 29.424109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540001, 34.619869, 29.408367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051535, 0.074275, 0.995905,
		0.868766, 0.488489, -0.081388,
		-0.492534, 0.869403, -0.039353,
		35.392242, 34.880692, 29.396561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019352, 34.568493, 30.030052>,  <35.737015, 34.272110, 29.424109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019352, 34.568493, 30.030052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694035, 34.780411, 29.933825>,  <35.498844, 34.907562, 29.876087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694035, 34.780411, 29.933825>,  <36.019352, 34.568493, 30.030052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694035, 34.780411, 29.933825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250361, 0.054588, 0.966612,
		0.525241, 0.846365, 0.088245,
		-0.813290, 0.529798, -0.240568,
		35.450047, 34.939350, 29.861654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090107, 35.197269, 30.443830>,  <36.019352, 34.568493, 30.030052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090107, 35.197269, 30.443830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707012, 35.143593, 30.342064>,  <35.477154, 35.111385, 30.281004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707012, 35.143593, 30.342064>,  <36.090107, 35.197269, 30.443830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707012, 35.143593, 30.342064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241338, -0.106353, 0.964596,
		-0.156498, 0.985232, 0.069473,
		-0.957739, -0.134191, -0.254418,
		35.419689, 35.103336, 30.265738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627934, 35.659252, 30.947947>,  <36.090107, 35.197269, 30.443830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627934, 35.659252, 30.947947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.387333, 35.388985, 30.777456>,  <35.242973, 35.226822, 30.675161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.387333, 35.388985, 30.777456>,  <35.627934, 35.659252, 30.947947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387333, 35.388985, 30.777456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462640, -0.140346, 0.875367,
		-0.651279, 0.723721, -0.228175,
		-0.601498, -0.675671, -0.426226,
		35.206882, 35.186283, 30.649588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901039, 35.759472, 31.067663>,  <35.627934, 35.659252, 30.947947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901039, 35.759472, 31.067663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953079, 35.367081, 31.010046>,  <34.984303, 35.131645, 30.975475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953079, 35.367081, 31.010046>,  <34.901039, 35.759472, 31.067663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953079, 35.367081, 31.010046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258421, -0.173806, 0.950268,
		-0.957231, -0.086406, -0.276119,
		0.130100, -0.980982, -0.144043,
		34.992111, 35.072784, 30.966833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360474, 35.446362, 31.414961>,  <34.901039, 35.759472, 31.067663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360474, 35.446362, 31.414961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.603989, 35.130974, 31.379898>,  <34.750099, 34.941742, 31.358860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.603989, 35.130974, 31.379898>,  <34.360474, 35.446362, 31.414961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603989, 35.130974, 31.379898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360728, -0.373531, 0.854605,
		-0.706575, -0.488656, -0.511827,
		0.608791, -0.788473, -0.087656,
		34.786625, 34.894432, 31.353601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927856, 34.909718, 31.563887>,  <34.360474, 35.446362, 31.414961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927856, 34.909718, 31.563887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.287170, 34.736652, 31.594595>,  <34.502758, 34.632812, 31.613020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.287170, 34.736652, 31.594595>,  <33.927856, 34.909718, 31.563887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287170, 34.736652, 31.594595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274006, -0.414941, 0.867608,
		-0.343523, -0.800394, -0.491286,
		0.898283, -0.432659, 0.076771,
		34.556656, 34.606853, 31.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756901, 34.226849, 31.688225>,  <33.927856, 34.909718, 31.563887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756901, 34.226849, 31.688225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.124420, 34.311821, 31.821304>,  <34.344933, 34.362804, 31.901152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.124420, 34.311821, 31.821304>,  <33.756901, 34.226849, 31.688225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124420, 34.311821, 31.821304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239792, -0.369129, 0.897911,
		0.313555, -0.904774, -0.288214,
		0.918794, 0.212433, 0.332700,
		34.400059, 34.375549, 31.921114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931080, 33.607418, 32.060650>,  <33.756901, 34.226849, 31.688225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931080, 33.607418, 32.060650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.161354, 33.900059, 32.206715>,  <34.299519, 34.075642, 32.294353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.161354, 33.900059, 32.206715>,  <33.931080, 33.607418, 32.060650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161354, 33.900059, 32.206715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126397, -0.361598, 0.923726,
		0.807842, -0.577932, -0.115695,
		0.575687, 0.731602, 0.365163,
		34.334061, 34.119537, 32.316265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217384, 33.275387, 32.591751>,  <33.931080, 33.607418, 32.060650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217384, 33.275387, 32.591751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.262802, 33.664967, 32.670261>,  <34.290054, 33.898716, 32.717369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.262802, 33.664967, 32.670261>,  <34.217384, 33.275387, 32.591751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262802, 33.664967, 32.670261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151053, -0.178333, 0.972307,
		0.981983, -0.140046, 0.126870,
		0.113543, 0.973953, 0.196275,
		34.296864, 33.957153, 32.729145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644081, 33.343384, 33.180393>,  <34.217384, 33.275387, 32.591751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644081, 33.343384, 33.180393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.531021, 33.726608, 33.161526>,  <34.463184, 33.956543, 33.150208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.531021, 33.726608, 33.161526>,  <34.644081, 33.343384, 33.180393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531021, 33.726608, 33.161526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165865, -0.000386, 0.986148,
		0.944775, 0.286554, 0.159018,
		-0.282646, 0.958064, -0.047165,
		34.446228, 34.014027, 33.147377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966171, 33.705944, 33.674122>,  <34.644081, 33.343384, 33.180393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966171, 33.705944, 33.674122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638813, 33.928005, 33.614735>,  <34.442398, 34.061241, 33.579102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638813, 33.928005, 33.614735>,  <34.966171, 33.705944, 33.674122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638813, 33.928005, 33.614735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199084, -0.031542, 0.979475,
		0.539072, 0.831152, 0.136335,
		-0.818393, 0.555150, -0.148466,
		34.393295, 34.094551, 33.570194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.535091, 35.112431, 25.609106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139599, 35.134960, 25.664579>,  <34.902302, 35.148479, 25.697863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139599, 35.134960, 25.664579>,  <35.535091, 35.112431, 25.609106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139599, 35.134960, 25.664579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142848, 0.078238, 0.986648,
		0.044722, 0.995342, -0.085402,
		-0.988734, 0.056325, 0.138683,
		34.842979, 35.151859, 25.706184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606602, 35.681793, 26.016994>,  <35.535091, 35.112431, 25.609106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606602, 35.681793, 26.016994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261925, 35.488384, 26.078552>,  <35.055119, 35.372337, 26.115488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261925, 35.488384, 26.078552>,  <35.606602, 35.681793, 26.016994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261925, 35.488384, 26.078552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061377, 0.201741, 0.977514,
		-0.503699, 0.851766, -0.144162,
		-0.861696, -0.483524, 0.153895,
		35.003414, 35.343327, 26.124722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192047, 36.116001, 26.484060>,  <35.606602, 35.681793, 26.016994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192047, 36.116001, 26.484060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030712, 35.750633, 26.505875>,  <34.933910, 35.531410, 26.518963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030712, 35.750633, 26.505875>,  <35.192047, 36.116001, 26.484060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030712, 35.750633, 26.505875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070220, 0.028526, 0.997124,
		-0.912352, 0.406010, 0.052635,
		-0.403340, -0.913424, 0.054536,
		34.909710, 35.476604, 26.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677872, 36.193428, 26.955654>,  <35.192047, 36.116001, 26.484060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677872, 36.193428, 26.955654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720425, 35.796158, 26.936523>,  <34.745956, 35.557796, 26.925045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720425, 35.796158, 26.936523>,  <34.677872, 36.193428, 26.955654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720425, 35.796158, 26.936523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101750, -0.036975, 0.994123,
		-0.989105, -0.110627, 0.097122,
		0.106386, -0.993174, -0.047828,
		34.752342, 35.498207, 26.922174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398193, 35.954273, 27.485865>,  <34.677872, 36.193428, 26.955654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398193, 35.954273, 27.485865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645481, 35.649952, 27.406881>,  <34.793854, 35.467358, 27.359491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645481, 35.649952, 27.406881>,  <34.398193, 35.954273, 27.485865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645481, 35.649952, 27.406881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278827, -0.022609, 0.960075,
		-0.734891, -0.648590, 0.198155,
		0.618215, -0.760802, -0.197460,
		34.830944, 35.421711, 27.347643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160107, 35.402180, 27.885508>,  <34.398193, 35.954273, 27.485865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160107, 35.402180, 27.885508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546185, 35.330326, 27.809465>,  <34.777832, 35.287216, 27.763840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546185, 35.330326, 27.809465>,  <34.160107, 35.402180, 27.885508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546185, 35.330326, 27.809465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167103, -0.135626, 0.976567,
		-0.201206, -0.974340, -0.100888,
		0.965190, -0.179632, -0.190104,
		34.835743, 35.276436, 27.752434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310528, 34.912830, 28.314646>,  <34.160107, 35.402180, 27.885508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310528, 34.912830, 28.314646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685997, 35.028980, 28.240273>,  <34.911278, 35.098671, 28.195648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685997, 35.028980, 28.240273>,  <34.310528, 34.912830, 28.314646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685997, 35.028980, 28.240273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235069, -0.144421, 0.961190,
		0.252251, -0.945953, -0.203822,
		0.938676, 0.290373, -0.185933,
		34.967598, 35.116093, 28.184492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799313, 34.404564, 28.467392>,  <34.310528, 34.912830, 28.314646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799313, 34.404564, 28.467392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031990, 34.726948, 28.511335>,  <35.171597, 34.920376, 28.537701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031990, 34.726948, 28.511335>,  <34.799313, 34.404564, 28.467392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031990, 34.726948, 28.511335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170532, -0.252893, 0.952347,
		0.795333, -0.535237, -0.284547,
		0.581691, 0.805957, 0.109859,
		35.206497, 34.968735, 28.544292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274265, 34.093136, 28.889606>,  <34.799313, 34.404564, 28.467392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274265, 34.093136, 28.889606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291374, 34.490108, 28.935665>,  <35.301640, 34.728291, 28.963301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291374, 34.490108, 28.935665>,  <35.274265, 34.093136, 28.889606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291374, 34.490108, 28.935665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063937, -0.117736, 0.990984,
		0.997037, -0.035025, -0.068489,
		0.042772, 0.992427, 0.115148,
		35.304207, 34.787838, 28.970209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871925, 33.819614, 28.657118>,  <35.274265, 34.093136, 28.889606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871925, 33.819614, 28.657118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135174, 33.519196, 28.678337>,  <36.293121, 33.338943, 28.691069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135174, 33.519196, 28.678337>,  <35.871925, 33.819614, 28.657118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135174, 33.519196, 28.678337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193168, -0.236525, -0.952230,
		0.727715, 0.616431, -0.300739,
		0.658117, -0.751045, 0.053048,
		36.332607, 33.293880, 28.694252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106709, 33.885532, 28.023291>,  <35.871925, 33.819614, 28.657118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106709, 33.885532, 28.023291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213165, 33.523842, 28.156883>,  <36.277039, 33.306828, 28.237038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213165, 33.523842, 28.156883>,  <36.106709, 33.885532, 28.023291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213165, 33.523842, 28.156883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144480, -0.379981, -0.913641,
		0.953045, 0.194903, -0.231771,
		0.266139, -0.904227, 0.333980,
		36.293007, 33.252575, 28.257076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737389, 33.666103, 27.645855>,  <36.106709, 33.885532, 28.023291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737389, 33.666103, 27.645855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562523, 33.330200, 27.774666>,  <36.457603, 33.128658, 27.851952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562523, 33.330200, 27.774666>,  <36.737389, 33.666103, 27.645855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562523, 33.330200, 27.774666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028691, -0.344849, -0.938220,
		0.898923, -0.419397, 0.126662,
		-0.437166, -0.839753, 0.322026,
		36.431374, 33.078274, 27.871273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107224, 33.037231, 27.452633>,  <36.737389, 33.666103, 27.645855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107224, 33.037231, 27.452633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722672, 32.945210, 27.513056>,  <36.491940, 32.889996, 27.549309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722672, 32.945210, 27.513056>,  <37.107224, 33.037231, 27.452633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722672, 32.945210, 27.513056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105225, -0.199911, -0.974147,
		0.254307, -0.952423, 0.167983,
		-0.961382, -0.230057, 0.151058,
		36.434258, 32.876194, 27.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050175, 32.430210, 27.089094>,  <37.107224, 33.037231, 27.452633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050175, 32.430210, 27.089094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681877, 32.572521, 27.153162>,  <36.460899, 32.657906, 27.191603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681877, 32.572521, 27.153162>,  <37.050175, 32.430210, 27.089094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681877, 32.572521, 27.153162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233430, -0.173367, -0.956794,
		-0.312637, -0.918350, 0.242675,
		-0.920744, 0.355777, 0.160170,
		36.405655, 32.679253, 27.201214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652744, 32.004894, 26.514795>,  <37.050175, 32.430210, 27.089094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652744, 32.004894, 26.514795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419018, 32.303822, 26.641340>,  <36.278782, 32.483177, 26.717268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419018, 32.303822, 26.641340>,  <36.652744, 32.004894, 26.514795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419018, 32.303822, 26.641340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448614, 0.027399, -0.893305,
		-0.676251, -0.663902, 0.319248,
		-0.584320, 0.747317, 0.316364,
		36.243721, 32.528015, 26.736250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977703, 31.773993, 26.446184>,  <36.652744, 32.004894, 26.514795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977703, 31.773993, 26.446184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971508, 32.173428, 26.425865>,  <35.967793, 32.413090, 26.413673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971508, 32.173428, 26.425865>,  <35.977703, 31.773993, 26.446184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971508, 32.173428, 26.425865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512701, -0.051546, -0.857018,
		-0.858427, 0.012774, 0.512776,
		-0.015484, 0.998589, -0.050798,
		35.966862, 32.473003, 26.410625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247784, 32.076889, 26.110872>,  <35.977703, 31.773993, 26.446184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247784, 32.076889, 26.110872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496986, 32.387306, 26.071632>,  <35.646507, 32.573555, 26.048088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496986, 32.387306, 26.071632>,  <35.247784, 32.076889, 26.110872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496986, 32.387306, 26.071632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338063, 0.154035, -0.928432,
		-0.705391, 0.611583, 0.358315,
		0.623006, 0.776041, -0.098099,
		35.683887, 32.620117, 26.042202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921009, 32.556007, 25.682447>,  <35.247784, 32.076889, 26.110872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921009, 32.556007, 25.682447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293049, 32.700359, 25.655100>,  <35.516273, 32.786972, 25.638691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293049, 32.700359, 25.655100>,  <34.921009, 32.556007, 25.682447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293049, 32.700359, 25.655100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189030, 0.310708, -0.931519,
		-0.314924, 0.879333, 0.357207,
		0.930102, 0.360881, -0.068371,
		35.572079, 32.808624, 25.634588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837513, 33.242500, 25.267471>,  <34.921009, 32.556007, 25.682447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837513, 33.242500, 25.267471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218704, 33.122189, 25.252684>,  <35.447418, 33.050003, 25.243811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218704, 33.122189, 25.252684>,  <34.837513, 33.242500, 25.267471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218704, 33.122189, 25.252684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049932, 0.276171, -0.959811,
		0.298896, 0.912833, 0.278203,
		0.952978, -0.300775, -0.036967,
		35.504597, 33.031956, 25.241594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226837, 33.781761, 24.983950>,  <34.837513, 33.242500, 25.267471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226837, 33.781761, 24.983950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440422, 33.450397, 24.916283>,  <35.568573, 33.251579, 24.875683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440422, 33.450397, 24.916283>,  <35.226837, 33.781761, 24.983950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440422, 33.450397, 24.916283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063684, 0.238913, -0.968950,
		0.843105, 0.506612, 0.180328,
		0.533964, -0.828411, -0.169166,
		35.600613, 33.201874, 24.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685135, 33.906269, 24.491533>,  <35.226837, 33.781761, 24.983950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685135, 33.906269, 24.491533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686249, 33.506458, 24.479282>,  <35.686916, 33.266571, 24.471931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686249, 33.506458, 24.479282>,  <35.685135, 33.906269, 24.491533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686249, 33.506458, 24.479282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051387, 0.030732, -0.998206,
		0.998675, 0.001208, 0.051448,
		0.002787, -0.999527, -0.030630,
		35.687084, 33.206600, 24.470093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183090, 33.776527, 24.018745>,  <35.685135, 33.906269, 24.491533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183090, 33.776527, 24.018745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996883, 33.423866, 24.049686>,  <35.885159, 33.212269, 24.068251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996883, 33.423866, 24.049686>,  <36.183090, 33.776527, 24.018745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996883, 33.423866, 24.049686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170462, -0.175080, -0.969685,
		0.868468, -0.438220, 0.231791,
		-0.465518, -0.881652, 0.077351,
		35.857227, 33.159370, 24.072891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675240, 33.259182, 23.930861>,  <36.183090, 33.776527, 24.018745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675240, 33.259182, 23.930861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305836, 33.154030, 23.819128>,  <36.084194, 33.090939, 23.752089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305836, 33.154030, 23.819128>,  <36.675240, 33.259182, 23.930861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305836, 33.154030, 23.819128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305777, -0.064875, -0.949890,
		0.231585, -0.962645, 0.140295,
		-0.923509, -0.262879, -0.279330,
		36.028782, 33.075165, 23.735329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.700581, 30.885435, 25.739386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.078634, 30.756100, 25.720728>,  <30.305466, 30.678499, 25.709534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.078634, 30.756100, 25.720728>,  <29.700581, 30.885435, 25.739386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078634, 30.756100, 25.720728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073756, -0.350285, 0.933734,
		-0.318247, -0.879064, -0.354915,
		0.945135, -0.323335, -0.046640,
		30.362175, 30.659098, 25.706736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737118, 30.130156, 26.013409>,  <29.700581, 30.885435, 25.739386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737118, 30.130156, 26.013409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.089432, 30.316465, 26.047518>,  <30.300819, 30.428251, 26.067984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.089432, 30.316465, 26.047518>,  <29.737118, 30.130156, 26.013409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089432, 30.316465, 26.047518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094971, -0.350191, 0.931851,
		0.463895, -0.812662, -0.352678,
		0.880785, 0.465775, 0.085273,
		30.353666, 30.456198, 26.073099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089159, 29.671261, 26.326944>,  <29.737118, 30.130156, 26.013409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089159, 29.671261, 26.326944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.276819, 30.017099, 26.398914>,  <30.389416, 30.224602, 26.442097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.276819, 30.017099, 26.398914>,  <30.089159, 29.671261, 26.326944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276819, 30.017099, 26.398914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204357, -0.304496, 0.930333,
		0.859149, -0.399696, -0.319540,
		0.469150, 0.864595, 0.179927,
		30.417564, 30.276478, 26.452892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735109, 29.498550, 26.606016>,  <30.089159, 29.671261, 26.326944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735109, 29.498550, 26.606016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.713064, 29.880466, 26.722870>,  <30.699837, 30.109615, 26.792982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.713064, 29.880466, 26.722870>,  <30.735109, 29.498550, 26.606016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713064, 29.880466, 26.722870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398994, -0.247142, 0.883020,
		0.915296, 0.165227, -0.367333,
		-0.055115, 0.954788, 0.292133,
		30.696529, 30.166903, 26.810509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383156, 29.673641, 26.912571>,  <30.735109, 29.498550, 26.606016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383156, 29.673641, 26.912571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.111279, 29.936937, 27.042023>,  <30.948153, 30.094915, 27.119694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.111279, 29.936937, 27.042023>,  <31.383156, 29.673641, 26.912571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111279, 29.936937, 27.042023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420045, -0.012403, 0.907418,
		0.601312, 0.752707, -0.268060,
		-0.679695, 0.658239, 0.323629,
		30.907370, 30.134409, 27.139111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822079, 30.158918, 27.325397>,  <31.383156, 29.673641, 26.912571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822079, 30.158918, 27.325397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.439739, 30.173319, 27.442053>,  <31.210335, 30.181959, 27.512047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.439739, 30.173319, 27.442053>,  <31.822079, 30.158918, 27.325397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439739, 30.173319, 27.442053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288752, -0.069058, 0.954910,
		0.054516, 0.996963, 0.055614,
		-0.955851, 0.035999, 0.291639,
		31.152985, 30.184118, 27.529545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765905, 30.612717, 27.944397>,  <31.822079, 30.158918, 27.325397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765905, 30.612717, 27.944397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.426498, 30.402750, 27.971165>,  <31.222855, 30.276770, 27.987225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.426498, 30.402750, 27.971165>,  <31.765905, 30.612717, 27.944397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426498, 30.402750, 27.971165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132493, -0.088311, 0.987242,
		-0.512312, 0.846558, 0.144481,
		-0.848517, -0.524919, 0.066920,
		31.171944, 30.245274, 27.991241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487871, 30.795059, 28.629906>,  <31.765905, 30.612717, 27.944397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487871, 30.795059, 28.629906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.291538, 30.457792, 28.542133>,  <31.173738, 30.255432, 28.489470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.291538, 30.457792, 28.542133>,  <31.487871, 30.795059, 28.629906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291538, 30.457792, 28.542133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131538, -0.320685, 0.938008,
		-0.861266, 0.431543, 0.268312,
		-0.490835, -0.843168, -0.219431,
		31.144287, 30.204842, 28.476303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916780, 30.730768, 29.136253>,  <31.487871, 30.795059, 28.629906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916780, 30.730768, 29.136253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.989271, 30.374689, 28.969063>,  <31.032766, 30.161041, 28.868748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.989271, 30.374689, 28.969063>,  <30.916780, 30.730768, 29.136253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989271, 30.374689, 28.969063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081489, -0.409962, 0.908455,
		-0.980059, -0.198698, -0.001755,
		0.181228, -0.890197, -0.417979,
		31.043640, 30.107630, 28.843670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466124, 30.324310, 29.588509>,  <30.916780, 30.730768, 29.136253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466124, 30.324310, 29.588509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.695538, 30.054901, 29.401995>,  <30.833185, 29.893255, 29.290087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.695538, 30.054901, 29.401995>,  <30.466124, 30.324310, 29.588509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695538, 30.054901, 29.401995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133113, -0.485021, 0.864313,
		-0.808293, -0.557783, -0.188522,
		0.573535, -0.673523, -0.466287,
		30.867598, 29.852844, 29.262108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279512, 29.674936, 29.940390>,  <30.466124, 30.324310, 29.588509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279512, 29.674936, 29.940390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.629837, 29.647133, 29.749342>,  <30.840033, 29.630451, 29.634714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.629837, 29.647133, 29.749342>,  <30.279512, 29.674936, 29.940390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629837, 29.647133, 29.749342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424169, -0.361311, 0.830382,
		-0.230287, -0.929851, -0.286958,
		0.875813, -0.069507, -0.477619,
		30.892580, 29.626280, 29.606056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559881, 28.869551, 30.052565>,  <30.279512, 29.674936, 29.940390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559881, 28.869551, 30.052565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.863573, 29.112917, 29.960133>,  <31.045788, 29.258938, 29.904675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.863573, 29.112917, 29.960133>,  <30.559881, 28.869551, 30.052565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863573, 29.112917, 29.960133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484806, -0.291832, 0.824499,
		0.434203, -0.738013, -0.516531,
		0.759231, 0.608417, -0.231079,
		31.091343, 29.295443, 29.890808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106096, 28.500097, 29.992706>,  <30.559881, 28.869551, 30.052565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106096, 28.500097, 29.992706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.252911, 28.859621, 30.088560>,  <31.341000, 29.075336, 30.146072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.252911, 28.859621, 30.088560>,  <31.106096, 28.500097, 29.992706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252911, 28.859621, 30.088560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510927, -0.410070, 0.755510,
		0.777328, -0.154862, -0.609737,
		0.367035, 0.898811, 0.239635,
		31.363022, 29.129265, 30.160450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797106, 28.390064, 30.179310>,  <31.106096, 28.500097, 29.992706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797106, 28.390064, 30.179310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.628872, 28.703451, 30.362303>,  <31.527931, 28.891483, 30.472097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.628872, 28.703451, 30.362303>,  <31.797106, 28.390064, 30.179310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628872, 28.703451, 30.362303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375617, -0.308631, 0.873875,
		0.825845, 0.539376, -0.164478,
		-0.420584, 0.783467, 0.457481,
		31.502697, 28.938492, 30.499546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350399, 28.852919, 30.149096>,  <31.797106, 28.390064, 30.179310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350399, 28.852919, 30.149096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.726242, 28.759624, 30.048897>,  <32.951748, 28.703648, 29.988777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.726242, 28.759624, 30.048897>,  <32.350399, 28.852919, 30.149096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726242, 28.759624, 30.048897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308075, -0.257459, -0.915863,
		0.149118, 0.937719, -0.313763,
		0.939603, -0.233234, -0.250496,
		33.008121, 28.689655, 29.973747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619606, 29.319719, 29.691576>,  <32.350399, 28.852919, 30.149096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619606, 29.319719, 29.691576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825439, 28.980017, 29.644306>,  <32.948940, 28.776196, 29.615944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825439, 28.980017, 29.644306>,  <32.619606, 29.319719, 29.691576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825439, 28.980017, 29.644306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186680, 0.023553, -0.982138,
		0.836872, 0.527452, -0.146420,
		0.514582, -0.849258, -0.118176,
		32.979813, 28.725239, 29.608854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967999, 29.502726, 29.090940>,  <32.619606, 29.319719, 29.691576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967999, 29.502726, 29.090940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017220, 29.108791, 29.139856>,  <33.046753, 28.872431, 29.169205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017220, 29.108791, 29.139856>,  <32.967999, 29.502726, 29.090940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017220, 29.108791, 29.139856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002010, -0.122978, -0.992408,
		0.992398, 0.122368, -0.013154,
		0.123057, -0.984836, 0.122289,
		33.054138, 28.813341, 29.176542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543663, 29.280499, 28.706291>,  <32.967999, 29.502726, 29.090940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543663, 29.280499, 28.706291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.330479, 28.945702, 28.755924>,  <33.202568, 28.744823, 28.785704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.330479, 28.945702, 28.755924>,  <33.543663, 29.280499, 28.706291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330479, 28.945702, 28.755924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110942, -0.076258, -0.990897,
		0.838834, -0.541877, -0.052215,
		-0.532963, -0.836991, 0.124085,
		33.170589, 28.694605, 28.793150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807461, 28.801872, 28.244244>,  <33.543663, 29.280499, 28.706291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807461, 28.801872, 28.244244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.447308, 28.641264, 28.311291>,  <33.231216, 28.544899, 28.351519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.447308, 28.641264, 28.311291>,  <33.807461, 28.801872, 28.244244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447308, 28.641264, 28.311291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091856, -0.201137, -0.975247,
		0.425298, -0.893489, 0.144217,
		-0.900380, -0.401523, 0.167616,
		33.177193, 28.520807, 28.361576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826714, 28.222780, 27.865696>,  <33.807461, 28.801872, 28.244244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826714, 28.222780, 27.865696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437096, 28.305553, 27.902370>,  <33.203323, 28.355217, 27.924376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437096, 28.305553, 27.902370>,  <33.826714, 28.222780, 27.865696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437096, 28.305553, 27.902370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116599, -0.111570, -0.986892,
		-0.193992, -0.971973, 0.132803,
		-0.974049, 0.206934, 0.091688,
		33.144882, 28.367634, 27.929876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415649, 27.694553, 27.506847>,  <33.826714, 28.222780, 27.865696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415649, 27.694553, 27.506847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161293, 28.002413, 27.529764>,  <33.008678, 28.187128, 27.543514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161293, 28.002413, 27.529764>,  <33.415649, 27.694553, 27.506847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161293, 28.002413, 27.529764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242779, -0.129018, -0.961464,
		-0.732598, -0.625297, 0.268896,
		-0.635893, 0.769649, 0.057291,
		32.970524, 28.233307, 27.546951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777729, 27.513889, 27.267252>,  <33.415649, 27.694553, 27.506847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777729, 27.513889, 27.267252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781986, 27.912001, 27.228670>,  <32.784542, 28.150867, 27.205521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781986, 27.912001, 27.228670>,  <32.777729, 27.513889, 27.267252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781986, 27.912001, 27.228670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249206, -0.090775, -0.964187,
		-0.968392, 0.034300, 0.247063,
		0.010644, 0.995281, -0.096454,
		32.785179, 28.210585, 27.199734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106758, 27.729790, 26.833254>,  <32.777729, 27.513889, 27.267252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106758, 27.729790, 26.833254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366764, 28.030340, 26.787790>,  <32.522766, 28.210670, 26.760511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366764, 28.030340, 26.787790>,  <32.106758, 27.729790, 26.833254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366764, 28.030340, 26.787790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211204, 0.034950, -0.976817,
		-0.729984, 0.658949, 0.181411,
		0.650013, 0.751376, -0.113659,
		32.561768, 28.255753, 26.753693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878084, 28.090919, 26.258179>,  <32.106758, 27.729790, 26.833254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878084, 28.090919, 26.258179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244522, 28.250549, 26.273699>,  <32.464386, 28.346327, 26.283010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244522, 28.250549, 26.273699>,  <31.878084, 28.090919, 26.258179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244522, 28.250549, 26.273699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032974, 0.171422, -0.984646,
		-0.399599, 0.900751, 0.170198,
		0.916097, 0.399075, 0.038799,
		32.519352, 28.370272, 26.285339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901985, 28.795372, 26.035583>,  <31.878084, 28.090919, 26.258179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901985, 28.795372, 26.035583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.267353, 28.650795, 25.960726>,  <32.486572, 28.564049, 25.915812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.267353, 28.650795, 25.960726>,  <31.901985, 28.795372, 26.035583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267353, 28.650795, 25.960726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002524, 0.454750, -0.890616,
		0.407010, 0.813979, 0.414465,
		0.913420, -0.361443, -0.187142,
		32.541378, 28.542362, 25.904583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196327, 29.362122, 25.727425>,  <31.901985, 28.795372, 26.035583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196327, 29.362122, 25.727425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405495, 29.041952, 25.610205>,  <32.530994, 28.849852, 25.539873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405495, 29.041952, 25.610205>,  <32.196327, 29.362122, 25.727425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405495, 29.041952, 25.610205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002145, 0.345034, -0.938588,
		0.852377, 0.490181, 0.182144,
		0.522923, -0.800421, -0.293048,
		32.562370, 28.801826, 25.522291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667191, 29.640955, 25.298264>,  <32.196327, 29.362122, 25.727425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667191, 29.640955, 25.298264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654465, 29.257648, 25.184624>,  <32.646828, 29.027664, 25.116440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654465, 29.257648, 25.184624>,  <32.667191, 29.640955, 25.298264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654465, 29.257648, 25.184624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089478, 0.280372, -0.955712,
		0.995481, -0.055826, 0.076824,
		-0.031814, -0.958267, -0.284100,
		32.644920, 28.970169, 25.099394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196545, 29.561892, 24.760439>,  <32.667191, 29.640955, 25.298264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196545, 29.561892, 24.760439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970474, 29.240028, 24.687660>,  <32.834831, 29.046911, 24.643993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970474, 29.240028, 24.687660>,  <33.196545, 29.561892, 24.760439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970474, 29.240028, 24.687660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099636, 0.285513, -0.953181,
		0.818934, -0.520583, -0.241537,
		-0.565172, -0.804658, -0.181947,
		32.800922, 28.998631, 24.633076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892399, 29.141161, 24.647930>,  <33.196545, 29.561892, 24.760439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892399, 29.141161, 24.647930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.226894, 29.314083, 24.512980>,  <34.427589, 29.417835, 24.432009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.226894, 29.314083, 24.512980>,  <33.892399, 29.141161, 24.647930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226894, 29.314083, 24.512980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485321, -0.297030, 0.822336,
		0.255289, -0.851403, -0.458193,
		0.836236, 0.432304, -0.337375,
		34.477764, 29.443775, 24.411766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408012, 28.659412, 24.957592>,  <33.892399, 29.141161, 24.647930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408012, 28.659412, 24.957592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594818, 28.992023, 24.837290>,  <34.706902, 29.191589, 24.765108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594818, 28.992023, 24.837290>,  <34.408012, 28.659412, 24.957592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594818, 28.992023, 24.837290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706393, -0.146248, 0.692547,
		0.531887, -0.535884, -0.655686,
		0.467018, 0.831528, -0.300757,
		34.734924, 29.241482, 24.747063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155334, 28.526985, 24.896069>,  <34.408012, 28.659412, 24.957592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155334, 28.526985, 24.896069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126236, 28.920856, 24.959455>,  <35.108776, 29.157179, 24.997488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126236, 28.920856, 24.959455>,  <35.155334, 28.526985, 24.896069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126236, 28.920856, 24.959455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645586, -0.074617, 0.760033,
		0.760214, 0.157597, -0.630268,
		-0.072750, 0.984681, 0.158467,
		35.104412, 29.216261, 25.006996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858799, 28.791090, 24.943584>,  <35.155334, 28.526985, 24.896069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858799, 28.791090, 24.943584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605633, 29.034998, 25.134415>,  <35.453732, 29.181343, 25.248913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605633, 29.034998, 25.134415>,  <35.858799, 28.791090, 24.943584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605633, 29.034998, 25.134415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570455, -0.049325, 0.819847,
		0.523448, 0.791044, -0.316627,
		-0.632917, 0.609768, 0.477074,
		35.415756, 29.217928, 25.277536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246880, 29.251751, 25.395100>,  <35.858799, 28.791090, 24.943584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246880, 29.251751, 25.395100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901882, 29.350281, 25.571928>,  <35.694885, 29.409399, 25.678026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901882, 29.350281, 25.571928>,  <36.246880, 29.251751, 25.395100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901882, 29.350281, 25.571928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471504, 0.073850, 0.878767,
		0.183813, 0.966370, -0.179838,
		-0.862495, 0.246323, 0.442072,
		35.643135, 29.424177, 25.704550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329182, 29.857132, 25.726948>,  <36.246880, 29.251751, 25.395100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329182, 29.857132, 25.726948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016281, 29.704268, 25.923738>,  <35.828541, 29.612549, 26.041813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016281, 29.704268, 25.923738>,  <36.329182, 29.857132, 25.726948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016281, 29.704268, 25.923738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478220, 0.137741, 0.867371,
		-0.399241, 0.913773, 0.075010,
		-0.782248, -0.382161, 0.491976,
		35.781605, 29.589619, 26.071331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292042, 30.349007, 26.216240>,  <36.329182, 29.857132, 25.726948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292042, 30.349007, 26.216240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036018, 30.060564, 26.322319>,  <35.882404, 29.887499, 26.385967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036018, 30.060564, 26.322319>,  <36.292042, 30.349007, 26.216240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036018, 30.060564, 26.322319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365591, 0.017746, 0.930607,
		-0.675770, 0.692599, 0.252271,
		-0.640061, -0.721104, 0.265200,
		35.844002, 29.844233, 26.401878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752495, 30.592718, 26.777628>,  <36.292042, 30.349007, 26.216240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752495, 30.592718, 26.777628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819897, 30.198679, 26.791407>,  <35.860336, 29.962255, 26.799675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819897, 30.198679, 26.791407>,  <35.752495, 30.592718, 26.777628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819897, 30.198679, 26.791407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131772, 0.057146, 0.989631,
		-0.976853, -0.162218, 0.139437,
		0.168504, -0.985099, 0.034448,
		35.870449, 29.903149, 26.801741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449863, 30.392893, 27.382111>,  <35.752495, 30.592718, 26.777628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449863, 30.392893, 27.382111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672855, 30.065243, 27.328066>,  <35.806648, 29.868652, 27.295639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672855, 30.065243, 27.328066>,  <35.449863, 30.392893, 27.382111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672855, 30.065243, 27.328066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005841, -0.166612, 0.986005,
		-0.830172, -0.548886, -0.097667,
		0.557478, -0.819124, -0.135110,
		35.840099, 29.819506, 27.287533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202427, 29.922670, 27.869293>,  <35.449863, 30.392893, 27.382111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202427, 29.922670, 27.869293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567837, 29.778173, 27.794493>,  <35.787083, 29.691475, 27.749613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567837, 29.778173, 27.794493>,  <35.202427, 29.922670, 27.869293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567837, 29.778173, 27.794493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100797, -0.244348, 0.964435,
		-0.394088, -0.899888, -0.186807,
		0.913529, -0.361242, -0.187000,
		35.841896, 29.669802, 27.738392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354462, 29.189922, 28.286406>,  <35.202427, 29.922670, 27.869293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354462, 29.189922, 28.286406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714931, 29.325518, 28.178354>,  <35.931213, 29.406876, 28.113523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714931, 29.325518, 28.178354>,  <35.354462, 29.189922, 28.286406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714931, 29.325518, 28.178354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372337, -0.286332, 0.882825,
		0.221921, -0.896159, -0.384253,
		0.901175, 0.338989, -0.270130,
		35.985283, 29.427214, 28.097315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828392, 28.698719, 28.528326>,  <35.354462, 29.189922, 28.286406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828392, 28.698719, 28.528326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050663, 29.028994, 28.489412>,  <36.184025, 29.227158, 28.466064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050663, 29.028994, 28.489412>,  <35.828392, 28.698719, 28.528326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050663, 29.028994, 28.489412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409331, -0.169853, 0.896436,
		0.723652, -0.537950, -0.432363,
		0.555676, 0.825687, -0.097285,
		36.217365, 29.276699, 28.460226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451984, 28.452755, 28.812618>,  <35.828392, 28.698719, 28.528326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451984, 28.452755, 28.812618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464252, 28.852154, 28.794453>,  <36.471611, 29.091793, 28.783554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464252, 28.852154, 28.794453>,  <36.451984, 28.452755, 28.812618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464252, 28.852154, 28.794453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359080, 0.031394, 0.932779,
		0.932803, -0.044913, -0.357577,
		0.030668, 0.998498, -0.045412,
		36.473454, 29.151703, 28.780828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153503, 28.666065, 29.047924>,  <36.451984, 28.452755, 28.812618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153503, 28.666065, 29.047924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.894341, 28.964838, 29.107668>,  <36.738842, 29.144102, 29.143515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.894341, 28.964838, 29.107668>,  <37.153503, 28.666065, 29.047924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894341, 28.964838, 29.107668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257143, 0.029903, 0.965911,
		0.717005, 0.664226, -0.211443,
		-0.647906, 0.746934, 0.149361,
		36.699970, 29.188919, 29.152475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.676754, 32.219276, 23.196537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312485, 32.381916, 23.225775>,  <36.093922, 32.479500, 23.243317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312485, 32.381916, 23.225775>,  <36.676754, 32.219276, 23.196537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312485, 32.381916, 23.225775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051253, 0.064367, -0.996609,
		-0.409930, -0.911335, -0.037777,
		-0.910676, 0.406603, 0.073095,
		36.039284, 32.503899, 23.247704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262379, 31.844217, 22.693344>,  <36.676754, 32.219276, 23.196537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262379, 31.844217, 22.693344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054192, 32.180424, 22.753540>,  <35.929279, 32.382149, 22.789658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054192, 32.180424, 22.753540>,  <36.262379, 31.844217, 22.693344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054192, 32.180424, 22.753540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137096, 0.091698, -0.986304,
		-0.842806, -0.533967, 0.067506,
		-0.520464, 0.840518, 0.150488,
		35.898052, 32.432579, 22.798687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555401, 31.673136, 22.448166>,  <36.262379, 31.844217, 22.693344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555401, 31.673136, 22.448166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648003, 32.062061, 22.435446>,  <35.703564, 32.295418, 22.427814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648003, 32.062061, 22.435446>,  <35.555401, 31.673136, 22.448166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648003, 32.062061, 22.435446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178787, 0.010394, -0.983833,
		-0.956263, 0.233451, 0.176244,
		0.231509, 0.972313, -0.031798,
		35.717457, 32.353756, 22.425907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912598, 31.994860, 22.147085>,  <35.555401, 31.673136, 22.448166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912598, 31.994860, 22.147085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214493, 32.253754, 22.104261>,  <35.395630, 32.409092, 22.078568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214493, 32.253754, 22.104261>,  <34.912598, 31.994860, 22.147085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214493, 32.253754, 22.104261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334075, 0.238738, -0.911810,
		-0.564598, 0.723940, 0.396409,
		0.754734, 0.647237, -0.107059,
		35.440914, 32.447926, 22.072144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620594, 32.553104, 22.009644>,  <34.912598, 31.994860, 22.147085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620594, 32.553104, 22.009644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987053, 32.606880, 21.858597>,  <35.206928, 32.639145, 21.767969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987053, 32.606880, 21.858597>,  <34.620594, 32.553104, 22.009644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987053, 32.606880, 21.858597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400401, 0.350656, -0.846593,
		0.018598, 0.926804, 0.375083,
		0.916151, 0.134439, -0.377615,
		35.261898, 32.647213, 21.745312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626049, 33.159546, 21.513916>,  <34.620594, 32.553104, 22.009644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626049, 33.159546, 21.513916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.963734, 32.976849, 21.401703>,  <35.166344, 32.867229, 21.334375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.963734, 32.976849, 21.401703>,  <34.626049, 33.159546, 21.513916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963734, 32.976849, 21.401703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190799, 0.233023, -0.953570,
		0.500907, 0.858537, 0.109574,
		0.844208, -0.456743, -0.280531,
		35.216995, 32.839825, 21.317543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999905, 33.608913, 20.991274>,  <34.626049, 33.159546, 21.513916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999905, 33.608913, 20.991274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139904, 33.244034, 20.906040>,  <35.223904, 33.025108, 20.854900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139904, 33.244034, 20.906040>,  <34.999905, 33.608913, 20.991274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139904, 33.244034, 20.906040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256683, 0.125374, -0.958329,
		0.900898, 0.390106, -0.190264,
		0.349996, -0.912194, -0.213083,
		35.244904, 32.970375, 20.842115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447685, 33.773975, 20.442148>,  <34.999905, 33.608913, 20.991274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447685, 33.773975, 20.442148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390179, 33.379642, 20.407591>,  <35.355675, 33.143044, 20.386856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390179, 33.379642, 20.407591>,  <35.447685, 33.773975, 20.442148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390179, 33.379642, 20.407591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169529, 0.110543, -0.979306,
		0.974982, -0.126148, -0.183019,
		-0.143769, -0.985833, -0.086392,
		35.347050, 33.083893, 20.381674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555302, 33.752457, 19.750385>,  <35.447685, 33.773975, 20.442148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555302, 33.752457, 19.750385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357883, 33.418537, 19.847975>,  <35.239433, 33.218185, 19.906528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357883, 33.418537, 19.847975>,  <35.555302, 33.752457, 19.750385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357883, 33.418537, 19.847975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374845, -0.048950, -0.925794,
		0.784795, -0.548374, -0.288761,
		-0.493547, -0.834799, 0.243972,
		35.209820, 33.168098, 19.921165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672932, 33.241196, 19.145731>,  <35.555302, 33.752457, 19.750385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672932, 33.241196, 19.145731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354450, 33.074635, 19.321302>,  <35.163361, 32.974697, 19.426645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354450, 33.074635, 19.321302>,  <35.672932, 33.241196, 19.145731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354450, 33.074635, 19.321302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457875, -0.059503, -0.887023,
		0.395478, -0.907230, -0.143284,
		-0.796208, -0.416404, 0.438930,
		35.115589, 32.949715, 19.452982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530384, 32.592968, 18.822462>,  <35.672932, 33.241196, 19.145731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530384, 32.592968, 18.822462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188198, 32.721142, 18.985193>,  <34.982887, 32.798046, 19.082832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188198, 32.721142, 18.985193>,  <35.530384, 32.592968, 18.822462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188198, 32.721142, 18.985193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465907, -0.133247, -0.874743,
		-0.226090, -0.937852, 0.263280,
		-0.855461, 0.320435, 0.406826,
		34.931561, 32.817272, 19.107241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060810, 32.137234, 18.527784>,  <35.530384, 32.592968, 18.822462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060810, 32.137234, 18.527784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830853, 32.443832, 18.642317>,  <34.692879, 32.627792, 18.711037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830853, 32.443832, 18.642317>,  <35.060810, 32.137234, 18.527784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830853, 32.443832, 18.642317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614544, -0.173436, -0.769582,
		-0.540221, -0.618388, 0.570752,
		-0.574889, 0.766496, 0.286333,
		34.658386, 32.673782, 18.728216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066673, 31.356564, 18.644606>,  <35.060810, 32.137234, 18.527784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066673, 31.356564, 18.644606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010483, 31.469145, 19.024302>,  <34.976768, 31.536694, 19.252119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010483, 31.469145, 19.024302>,  <35.066673, 31.356564, 18.644606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010483, 31.469145, 19.024302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712632, -0.694315, 0.100408,
		0.687330, -0.662353, 0.298105,
		-0.140473, 0.281453, 0.949237,
		34.968342, 31.553581, 19.309072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441936, 30.986513, 18.794243>,  <35.066673, 31.356564, 18.644606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441936, 30.986513, 18.794243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814823, 30.966068, 18.937548>,  <35.038555, 30.953802, 19.023531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814823, 30.966068, 18.937548>,  <34.441936, 30.986513, 18.794243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814823, 30.966068, 18.937548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121273, -0.888611, -0.442338,
		0.340964, 0.455805, -0.822183,
		0.932221, -0.051113, 0.358262,
		35.094490, 30.950735, 19.045027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786919, 31.310783, 18.936413>,  <34.441936, 30.986513, 18.794243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786919, 31.310783, 18.936413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545650, 31.028971, 19.085979>,  <33.400890, 30.859882, 19.175720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545650, 31.028971, 19.085979>,  <33.786919, 31.310783, 18.936413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545650, 31.028971, 19.085979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399875, 0.138517, 0.906042,
		-0.690130, 0.696022, 0.198175,
		-0.603175, -0.704533, 0.373917,
		33.364697, 30.817612, 19.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369225, 31.624756, 19.507095>,  <33.786919, 31.310783, 18.936413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369225, 31.624756, 19.507095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403549, 31.229986, 19.561668>,  <33.424145, 30.993124, 19.594412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403549, 31.229986, 19.561668>,  <33.369225, 31.624756, 19.507095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403549, 31.229986, 19.561668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463421, 0.160764, 0.871433,
		-0.881973, -0.011557, 0.471158,
		0.085816, -0.986925, 0.136434,
		33.429295, 30.933908, 19.602598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265381, 31.489614, 20.195778>,  <33.369225, 31.624756, 19.507095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265381, 31.489614, 20.195778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450611, 31.147585, 20.102478>,  <33.561749, 30.942368, 20.046497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450611, 31.147585, 20.102478>,  <33.265381, 31.489614, 20.195778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450611, 31.147585, 20.102478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384762, -0.043136, 0.922007,
		-0.798447, -0.516707, 0.309025,
		0.463078, -0.855075, -0.233251,
		33.589535, 30.891062, 20.032503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140816, 31.072460, 20.762560>,  <33.265381, 31.489614, 20.195778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140816, 31.072460, 20.762560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448685, 30.923489, 20.555138>,  <33.633408, 30.834106, 20.430685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448685, 30.923489, 20.555138>,  <33.140816, 31.072460, 20.762560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448685, 30.923489, 20.555138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478830, -0.200496, 0.854706,
		-0.422285, -0.906145, 0.024013,
		0.769673, -0.372428, -0.518556,
		33.679588, 30.811760, 20.399570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214336, 30.302288, 20.912203>,  <33.140816, 31.072460, 20.762560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214336, 30.302288, 20.912203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563873, 30.458839, 20.796806>,  <33.773594, 30.552771, 20.727570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563873, 30.458839, 20.796806>,  <33.214336, 30.302288, 20.912203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563873, 30.458839, 20.796806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383003, -0.188572, 0.904295,
		0.299521, -0.900702, -0.314681,
		0.873840, 0.391378, -0.288490,
		33.826027, 30.576252, 20.710258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535118, 29.810865, 21.206137>,  <33.214336, 30.302288, 20.912203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535118, 29.810865, 21.206137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805084, 30.093443, 21.120886>,  <33.967064, 30.262989, 21.069735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805084, 30.093443, 21.120886>,  <33.535118, 29.810865, 21.206137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805084, 30.093443, 21.120886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505873, -0.232701, 0.830628,
		0.537198, -0.668419, -0.514426,
		0.674915, 0.706446, -0.213129,
		34.007557, 30.305376, 21.056948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248947, 29.568884, 21.128452>,  <33.535118, 29.810865, 21.206137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248947, 29.568884, 21.128452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293278, 29.955395, 21.221430>,  <34.319874, 30.187302, 21.277216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293278, 29.955395, 21.221430>,  <34.248947, 29.568884, 21.128452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293278, 29.955395, 21.221430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450858, -0.257314, 0.854703,
		0.885690, 0.010079, -0.464169,
		0.110822, 0.966275, 0.232444,
		34.326523, 30.245277, 21.291162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976547, 29.661533, 21.277983>,  <34.248947, 29.568884, 21.128452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976547, 29.661533, 21.277983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759293, 29.949085, 21.451515>,  <34.628941, 30.121616, 21.555635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759293, 29.949085, 21.451515>,  <34.976547, 29.661533, 21.277983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759293, 29.949085, 21.451515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369631, -0.259214, 0.892290,
		0.753904, 0.644997, -0.124930,
		-0.543141, 0.718879, 0.433833,
		34.596352, 30.164749, 21.581665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389629, 29.919954, 21.903013>,  <34.976547, 29.661533, 21.277983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389629, 29.919954, 21.903013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029839, 30.088646, 21.948759>,  <34.813965, 30.189861, 21.976208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029839, 30.088646, 21.948759>,  <35.389629, 29.919954, 21.903013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029839, 30.088646, 21.948759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125527, -0.001308, 0.992089,
		0.418540, 0.906722, -0.051761,
		-0.899482, 0.421727, 0.114366,
		34.759995, 30.215164, 21.983068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464458, 30.431005, 22.470560>,  <35.389629, 29.919954, 21.903013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464458, 30.431005, 22.470560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075718, 30.338217, 22.454056>,  <34.842476, 30.282543, 22.444153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075718, 30.338217, 22.454056>,  <35.464458, 30.431005, 22.470560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075718, 30.338217, 22.454056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010722, -0.218485, 0.975781,
		-0.235366, 0.947868, 0.214821,
		-0.971848, -0.231969, -0.041261,
		34.784164, 30.268625, 22.441677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151661, 30.768267, 23.092556>,  <35.464458, 30.431005, 22.470560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151661, 30.768267, 23.092556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877693, 30.503796, 22.970095>,  <34.713314, 30.345114, 22.896618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877693, 30.503796, 22.970095>,  <35.151661, 30.768267, 23.092556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877693, 30.503796, 22.970095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169940, -0.263632, 0.949536,
		-0.708523, 0.702383, 0.068207,
		-0.684920, -0.661177, -0.306152,
		34.672218, 30.305443, 22.878248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592712, 30.930717, 23.504835>,  <35.151661, 30.768267, 23.092556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592712, 30.930717, 23.504835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531849, 30.550253, 23.397402>,  <34.495331, 30.321974, 23.332943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531849, 30.550253, 23.397402>,  <34.592712, 30.930717, 23.504835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531849, 30.550253, 23.397402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052808, -0.263533, 0.963204,
		-0.986944, 0.160745, -0.010130,
		-0.152161, -0.951163, -0.268581,
		34.486202, 30.264904, 23.316828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014843, 30.662466, 23.949369>,  <34.592712, 30.930717, 23.504835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014843, 30.662466, 23.949369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214104, 30.346949, 23.805338>,  <34.333660, 30.157639, 23.718920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214104, 30.346949, 23.805338>,  <34.014843, 30.662466, 23.949369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214104, 30.346949, 23.805338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034644, -0.433046, 0.900706,
		-0.866400, -0.436209, -0.243048,
		0.498147, -0.788792, -0.360079,
		34.363548, 30.110312, 23.697313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659622, 30.021908, 24.221586>,  <34.014843, 30.662466, 23.949369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659622, 30.021908, 24.221586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026356, 29.901939, 24.116161>,  <34.246395, 29.829958, 24.052906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026356, 29.901939, 24.116161>,  <33.659622, 30.021908, 24.221586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026356, 29.901939, 24.116161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141417, -0.373387, 0.916833,
		-0.373387, -0.877856, -0.299920,
		-0.916833, 0.299920, 0.263561,
		34.301407, 29.811964, 24.037092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415337, 29.240927, 24.072197>,  <33.659622, 30.021908, 24.221586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415337, 29.240927, 24.072197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055134, 29.079342, 24.136581>,  <32.839012, 28.982391, 24.175213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055134, 29.079342, 24.136581>,  <33.415337, 29.240927, 24.072197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055134, 29.079342, 24.136581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237554, 0.146955, -0.960194,
		0.364228, -0.902895, -0.228296,
		-0.900503, -0.403962, 0.160961,
		32.784981, 28.958153, 24.184870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315926, 28.724007, 23.527580>,  <33.415337, 29.240927, 24.072197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315926, 28.724007, 23.527580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950321, 28.826094, 23.653725>,  <32.730961, 28.887346, 23.729410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950321, 28.826094, 23.653725>,  <33.315926, 28.724007, 23.527580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950321, 28.826094, 23.653725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338285, -0.050366, -0.939695,
		-0.223944, -0.965571, 0.132371,
		-0.914009, 0.255219, 0.315359,
		32.676117, 28.902658, 23.748333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820843, 28.380793, 23.128063>,  <33.315926, 28.724007, 23.527580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820843, 28.380793, 23.128063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561188, 28.648655, 23.272385>,  <32.405396, 28.809372, 23.358978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561188, 28.648655, 23.272385>,  <32.820843, 28.380793, 23.128063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561188, 28.648655, 23.272385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501014, -0.019495, -0.865219,
		-0.572365, -0.742417, 0.348161,
		-0.649140, 0.669655, 0.360803,
		32.366444, 28.849552, 23.380625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083618, 28.194653, 23.008667>,  <32.820843, 28.380793, 23.128063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083618, 28.194653, 23.008667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071102, 28.592970, 23.043106>,  <32.063595, 28.831961, 23.063770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071102, 28.592970, 23.043106>,  <32.083618, 28.194653, 23.008667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071102, 28.592970, 23.043106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559343, 0.053944, -0.827179,
		-0.828345, -0.074039, 0.555304,
		-0.031288, 0.995795, 0.086098,
		32.061714, 28.891708, 23.068935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470011, 28.452250, 22.836733>,  <32.083618, 28.194653, 23.008667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470011, 28.452250, 22.836733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647232, 28.810179, 22.814840>,  <31.753565, 29.024937, 22.801704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647232, 28.810179, 22.814840>,  <31.470011, 28.452250, 22.836733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647232, 28.810179, 22.814840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548968, 0.222529, -0.805677,
		-0.708759, 0.387004, 0.589821,
		0.443052, 0.894823, -0.054733,
		31.780148, 29.078627, 22.798420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896996, 29.085447, 22.786873>,  <31.470011, 28.452250, 22.836733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896996, 29.085447, 22.786873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252392, 29.190491, 22.636343>,  <31.465630, 29.253517, 22.546024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252392, 29.190491, 22.636343>,  <30.896996, 29.085447, 22.786873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252392, 29.190491, 22.636343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452217, 0.361659, -0.815293,
		-0.078001, 0.894561, 0.440086,
		0.888491, 0.262608, -0.376326,
		31.518940, 29.269274, 22.523445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989889, 29.830080, 22.692232>,  <30.896996, 29.085447, 22.786873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989889, 29.830080, 22.692232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229849, 29.625624, 22.446026>,  <31.373825, 29.502951, 22.298302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229849, 29.625624, 22.446026>,  <30.989889, 29.830080, 22.692232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229849, 29.625624, 22.446026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568830, 0.268522, -0.777386,
		0.562632, 0.816475, -0.129666,
		0.599898, -0.511140, -0.615515,
		31.409819, 29.472282, 22.261372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255720, 30.462082, 22.711901>,  <30.989889, 29.830080, 22.692232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255720, 30.462082, 22.711901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157587, 30.833635, 22.822887>,  <31.098707, 31.056568, 22.889479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157587, 30.833635, 22.822887>,  <31.255720, 30.462082, 22.711901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157587, 30.833635, 22.822887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196093, -0.232749, 0.952563,
		0.949399, 0.288104, -0.125046,
		-0.245333, 0.928883, 0.277467,
		31.083988, 31.112301, 22.906128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850643, 30.729774, 23.151697>,  <31.255720, 30.462082, 22.711901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850643, 30.729774, 23.151697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504526, 30.916456, 23.224857>,  <31.296856, 31.028465, 23.268753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504526, 30.916456, 23.224857>,  <31.850643, 30.729774, 23.151697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504526, 30.916456, 23.224857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107943, -0.182827, 0.977201,
		0.489504, 0.865310, 0.107821,
		-0.865294, 0.466706, 0.182899,
		31.244938, 31.056467, 23.279726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984150, 31.171055, 23.829700>,  <31.850643, 30.729774, 23.151697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984150, 31.171055, 23.829700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587395, 31.151226, 23.782887>,  <31.349340, 31.139330, 23.754799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587395, 31.151226, 23.782887>,  <31.984150, 31.171055, 23.829700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587395, 31.151226, 23.782887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121935, 0.111324, 0.986275,
		-0.035861, 0.992547, -0.116465,
		-0.991890, -0.049570, -0.117034,
		31.289827, 31.136354, 23.747776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668104, 31.644453, 24.406483>,  <31.984150, 31.171055, 23.829700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668104, 31.644453, 24.406483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354815, 31.421125, 24.297056>,  <31.166840, 31.287128, 24.231401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354815, 31.421125, 24.297056>,  <31.668104, 31.644453, 24.406483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354815, 31.421125, 24.297056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267492, -0.094598, 0.958905,
		-0.561254, 0.824215, -0.075255,
		-0.783226, -0.558319, -0.273564,
		31.119846, 31.253630, 24.214987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166342, 31.877361, 24.861807>,  <31.668104, 31.644453, 24.406483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166342, 31.877361, 24.861807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069386, 31.513571, 24.726690>,  <31.011211, 31.295298, 24.645620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069386, 31.513571, 24.726690>,  <31.166342, 31.877361, 24.861807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069386, 31.513571, 24.726690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254908, -0.276239, 0.926668,
		-0.936092, 0.310720, -0.164875,
		-0.242390, -0.909475, -0.337790,
		30.996668, 31.240728, 24.625353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414585, 31.788574, 24.888357>,  <31.166342, 31.877361, 24.861807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414585, 31.788574, 24.888357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581242, 31.426497, 24.921896>,  <30.681236, 31.209249, 24.942019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581242, 31.426497, 24.921896>,  <30.414585, 31.788574, 24.888357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581242, 31.426497, 24.921896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387599, -0.093458, 0.917078,
		-0.822300, -0.414591, -0.389791,
		0.416642, -0.905196, 0.083845,
		30.706234, 31.154938, 24.947050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032396, 31.499205, 25.453323>,  <30.414585, 31.788574, 24.888357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032396, 31.499205, 25.453323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303614, 31.211645, 25.392078>,  <30.466345, 31.039110, 25.355331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303614, 31.211645, 25.392078>,  <30.032396, 31.499205, 25.453323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303614, 31.211645, 25.392078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389213, -0.527873, 0.754893,
		-0.623516, -0.452255, -0.637725,
		0.678042, -0.718898, -0.153114,
		30.507027, 30.995975, 25.346144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.610229, 36.218834, 19.187658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649685, 35.839622, 19.066652>,  <33.673359, 35.612095, 18.994049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649685, 35.839622, 19.066652>,  <33.610229, 36.218834, 19.187658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649685, 35.839622, 19.066652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346625, -0.252225, 0.903456,
		-0.932803, -0.193976, 0.303731,
		0.098640, -0.948027, -0.302513,
		33.679276, 35.555214, 18.975899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079281, 35.917847, 19.500263>,  <33.610229, 36.218834, 19.187658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079281, 35.917847, 19.500263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364845, 35.648762, 19.422503>,  <33.536182, 35.487312, 19.375847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364845, 35.648762, 19.422503>,  <33.079281, 35.917847, 19.500263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364845, 35.648762, 19.422503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147509, -0.126913, 0.980884,
		-0.684523, -0.728940, 0.008626,
		0.713911, -0.672710, -0.194400,
		33.579018, 35.446949, 19.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901237, 35.331043, 19.947355>,  <33.079281, 35.917847, 19.500263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901237, 35.331043, 19.947355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.284058, 35.283176, 19.841722>,  <33.513748, 35.254456, 19.778343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.284058, 35.283176, 19.841722>,  <32.901237, 35.331043, 19.947355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284058, 35.283176, 19.841722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218575, -0.300627, 0.928358,
		-0.190488, -0.946204, -0.261558,
		0.957047, -0.119671, -0.264082,
		33.571171, 35.247276, 19.762497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965485, 34.728752, 20.283064>,  <32.901237, 35.331043, 19.947355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965485, 34.728752, 20.283064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.315041, 34.913277, 20.221725>,  <33.524773, 35.023991, 20.184921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.315041, 34.913277, 20.221725>,  <32.965485, 34.728752, 20.283064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315041, 34.913277, 20.221725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264659, -0.186873, 0.946063,
		0.407770, -0.867337, -0.285395,
		0.873888, 0.461308, -0.153347,
		33.577206, 35.051670, 20.175722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484406, 34.260422, 20.533480>,  <32.965485, 34.728752, 20.283064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484406, 34.260422, 20.533480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.621689, 34.635834, 20.518700>,  <33.704060, 34.861080, 20.509830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.621689, 34.635834, 20.518700>,  <33.484406, 34.260422, 20.533480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621689, 34.635834, 20.518700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312047, -0.076827, 0.946955,
		0.885910, -0.336531, -0.319234,
		0.343205, 0.938533, -0.036951,
		33.724651, 34.917393, 20.507614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316872, 34.264961, 20.723274>,  <33.484406, 34.260422, 20.533480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316872, 34.264961, 20.723274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.136677, 34.620262, 20.759211>,  <34.028561, 34.833443, 20.780771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.136677, 34.620262, 20.759211>,  <34.316872, 34.264961, 20.723274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136677, 34.620262, 20.759211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410351, 0.116639, 0.904438,
		0.792888, 0.444305, -0.417039,
		-0.450489, 0.888250, 0.089839,
		34.001530, 34.886738, 20.786161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741421, 34.718708, 20.949024>,  <34.316872, 34.264961, 20.723274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741421, 34.718708, 20.949024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.394051, 34.868130, 21.079435>,  <34.185627, 34.957783, 21.157682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.394051, 34.868130, 21.079435>,  <34.741421, 34.718708, 20.949024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394051, 34.868130, 21.079435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319560, -0.081076, 0.944091,
		0.379104, 0.924058, -0.048965,
		-0.868425, 0.373556, 0.326028,
		34.133522, 34.980198, 21.177244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921829, 35.053085, 21.600119>,  <34.741421, 34.718708, 20.949024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921829, 35.053085, 21.600119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523167, 35.040642, 21.630320>,  <34.283970, 35.033176, 21.648439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523167, 35.040642, 21.630320>,  <34.921829, 35.053085, 21.600119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523167, 35.040642, 21.630320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074961, 0.018224, 0.997020,
		-0.032397, 0.999350, -0.015831,
		-0.996660, -0.031114, 0.075503,
		34.224167, 35.031307, 21.652971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769321, 35.614769, 22.088816>,  <34.921829, 35.053085, 21.600119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769321, 35.614769, 22.088816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428337, 35.405766, 22.081869>,  <34.223747, 35.280365, 22.077702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428337, 35.405766, 22.081869>,  <34.769321, 35.614769, 22.088816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428337, 35.405766, 22.081869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001020, -0.034885, 0.999391,
		-0.522794, 0.851921, 0.030271,
		-0.852458, -0.522506, -0.017368,
		34.172600, 35.249012, 22.076658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183445, 36.024025, 22.530981>,  <34.769321, 35.614769, 22.088816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183445, 36.024025, 22.530981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.051151, 35.647228, 22.508133>,  <33.971775, 35.421150, 22.494425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.051151, 35.647228, 22.508133>,  <34.183445, 36.024025, 22.530981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051151, 35.647228, 22.508133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221653, 0.018705, 0.974946,
		-0.917325, 0.335109, -0.214982,
		-0.330734, -0.941994, -0.057120,
		33.951931, 35.364632, 22.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558167, 36.068661, 22.917982>,  <34.183445, 36.024025, 22.530981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558167, 36.068661, 22.917982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696857, 35.693848, 22.901241>,  <33.780071, 35.468960, 22.891197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696857, 35.693848, 22.901241>,  <33.558167, 36.068661, 22.917982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696857, 35.693848, 22.901241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181165, -0.110684, 0.977204,
		-0.920305, -0.331239, -0.208135,
		0.346725, -0.937033, -0.041854,
		33.800877, 35.412739, 22.888685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274216, 35.780624, 23.466780>,  <33.558167, 36.068661, 22.917982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274216, 35.780624, 23.466780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585732, 35.536949, 23.406948>,  <33.772640, 35.390743, 23.371048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585732, 35.536949, 23.406948>,  <33.274216, 35.780624, 23.466780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585732, 35.536949, 23.406948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232088, 0.058295, 0.970946,
		-0.582770, -0.790880, 0.186784,
		0.778791, -0.609188, -0.149581,
		33.819370, 35.354191, 23.362074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912697, 35.081352, 23.358980>,  <33.274216, 35.780624, 23.466780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912697, 35.081352, 23.358980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.539436, 35.148376, 23.486193>,  <32.315479, 35.188591, 23.562521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.539436, 35.148376, 23.486193>,  <32.912697, 35.081352, 23.358980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539436, 35.148376, 23.486193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328711, -0.039655, -0.943598,
		-0.145495, -0.985064, 0.092082,
		-0.933156, 0.167557, 0.318032,
		32.259491, 35.198643, 23.581602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558342, 34.677067, 22.971550>,  <32.912697, 35.081352, 23.358980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558342, 34.677067, 22.971550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283539, 34.947170, 23.078917>,  <32.118656, 35.109230, 23.143337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283539, 34.947170, 23.078917>,  <32.558342, 34.677067, 22.971550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283539, 34.947170, 23.078917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380157, -0.019194, -0.924723,
		-0.619271, -0.737336, 0.269889,
		-0.687011, 0.675254, 0.268417,
		32.077435, 35.149746, 23.159441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951262, 34.384705, 22.757534>,  <32.558342, 34.677067, 22.971550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951262, 34.384705, 22.757534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.858786, 34.772636, 22.788492>,  <31.803301, 35.005394, 22.807068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.858786, 34.772636, 22.788492>,  <31.951262, 34.384705, 22.757534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858786, 34.772636, 22.788492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551715, -0.065163, -0.831483,
		-0.801350, -0.234931, 0.550133,
		-0.231189, 0.969826, 0.077397,
		31.789429, 35.063583, 22.811710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262165, 34.422768, 22.891808>,  <31.951262, 34.384705, 22.757534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262165, 34.422768, 22.891808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385637, 34.762562, 22.720652>,  <31.459721, 34.966438, 22.617958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385637, 34.762562, 22.720652>,  <31.262165, 34.422768, 22.891808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385637, 34.762562, 22.720652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664281, -0.129442, -0.736190,
		-0.680770, 0.511486, 0.524341,
		0.308679, 0.849486, -0.427891,
		31.478241, 35.017406, 22.592285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754663, 34.515205, 22.574635>,  <31.262165, 34.422768, 22.891808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754663, 34.515205, 22.574635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.992662, 34.783649, 22.397730>,  <31.135462, 34.944714, 22.291588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.992662, 34.783649, 22.397730>,  <30.754663, 34.515205, 22.574635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992662, 34.783649, 22.397730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471290, -0.154408, -0.868357,
		-0.651049, 0.725103, 0.224413,
		0.594997, 0.671106, -0.442261,
		31.171162, 34.984982, 22.265051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378216, 34.756237, 22.089867>,  <30.754663, 34.515205, 22.574635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378216, 34.756237, 22.089867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730253, 34.872566, 21.939741>,  <30.941475, 34.942364, 21.849667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730253, 34.872566, 21.939741>,  <30.378216, 34.756237, 22.089867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730253, 34.872566, 21.939741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343099, -0.156871, -0.926107,
		-0.328205, 0.943831, -0.038281,
		0.880093, 0.290819, -0.375313,
		30.994282, 34.959812, 21.827147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246489, 35.191231, 21.634838>,  <30.378216, 34.756237, 22.089867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246489, 35.191231, 21.634838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615694, 35.062435, 21.550581>,  <30.837217, 34.985157, 21.500027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615694, 35.062435, 21.550581>,  <30.246489, 35.191231, 21.634838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615694, 35.062435, 21.550581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216498, 0.017951, -0.976118,
		0.318085, 0.946572, -0.053142,
		0.923012, -0.321994, -0.210641,
		30.892597, 34.965836, 21.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505304, 35.643574, 21.213703>,  <30.246489, 35.191231, 21.634838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505304, 35.643574, 21.213703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714479, 35.306801, 21.160498>,  <30.839985, 35.104736, 21.128574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714479, 35.306801, 21.160498>,  <30.505304, 35.643574, 21.213703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714479, 35.306801, 21.160498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175940, 0.046073, -0.983322,
		0.834016, 0.537618, -0.124036,
		0.522937, -0.841929, -0.133014,
		30.871361, 35.054222, 21.120594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810234, 35.772549, 20.576597>,  <30.505304, 35.643574, 21.213703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810234, 35.772549, 20.576597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844868, 35.377403, 20.628180>,  <30.865648, 35.140316, 20.659128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844868, 35.377403, 20.628180>,  <30.810234, 35.772549, 20.576597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844868, 35.377403, 20.628180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008094, -0.130135, -0.991463,
		0.996212, 0.084799, -0.019263,
		0.086582, -0.987863, 0.128956,
		30.870842, 35.081043, 20.666866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990713, 35.637756, 19.896629>,  <30.810234, 35.772549, 20.576597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990713, 35.637756, 19.896629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912271, 35.269455, 20.031536>,  <30.865206, 35.048473, 20.112480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912271, 35.269455, 20.031536>,  <30.990713, 35.637756, 19.896629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912271, 35.269455, 20.031536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033976, -0.350119, -0.936089,
		0.979994, -0.172112, 0.099943,
		-0.196104, -0.920757, 0.337267,
		30.853439, 34.993229, 20.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578985, 35.223770, 19.756039>,  <30.990713, 35.637756, 19.896629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578985, 35.223770, 19.756039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242270, 35.011719, 19.796738>,  <31.040239, 34.884487, 19.821157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242270, 35.011719, 19.796738>,  <31.578985, 35.223770, 19.756039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242270, 35.011719, 19.796738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179791, -0.453073, -0.873155,
		0.508986, -0.716719, 0.476704,
		-0.841789, -0.530132, 0.101748,
		30.989733, 34.852680, 19.827263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727089, 34.470219, 19.642374>,  <31.578985, 35.223770, 19.756039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727089, 34.470219, 19.642374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.332397, 34.515774, 19.596077>,  <31.095583, 34.543106, 19.568298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.332397, 34.515774, 19.596077>,  <31.727089, 34.470219, 19.642374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332397, 34.515774, 19.596077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036876, -0.537015, -0.842766,
		-0.158136, -0.835849, 0.525689,
		-0.986728, 0.113887, -0.115744,
		31.036379, 34.549938, 19.561354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397406, 33.766850, 19.520807>,  <31.727089, 34.470219, 19.642374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397406, 33.766850, 19.520807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140104, 34.043137, 19.388668>,  <30.985723, 34.208908, 19.309385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140104, 34.043137, 19.388668>,  <31.397406, 33.766850, 19.520807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140104, 34.043137, 19.388668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145481, -0.533859, -0.832964,
		-0.751705, -0.487748, 0.443894,
		-0.643253, 0.690721, -0.330347,
		30.947128, 34.250355, 19.289564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799406, 33.247162, 19.977669>,  <31.397406, 33.766850, 19.520807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799406, 33.247162, 19.977669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420000, 33.198212, 20.094526>,  <31.192356, 33.168842, 20.164640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420000, 33.198212, 20.094526>,  <31.799406, 33.247162, 19.977669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420000, 33.198212, 20.094526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301203, -0.633793, 0.712449,
		0.097975, 0.763761, 0.638020,
		-0.948513, -0.122371, 0.292143,
		31.135447, 33.161499, 20.182169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686546, 33.301231, 20.689480>,  <31.799406, 33.247162, 19.977669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686546, 33.301231, 20.689480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381229, 33.064659, 20.585485>,  <31.198040, 32.922714, 20.523088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381229, 33.064659, 20.585485>,  <31.686546, 33.301231, 20.689480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381229, 33.064659, 20.585485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111497, -0.516976, 0.848707,
		-0.636360, 0.618823, 0.460547,
		-0.763291, -0.591433, -0.259987,
		31.152243, 32.887230, 20.507490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251825, 33.282215, 21.312349>,  <31.686546, 33.301231, 20.689480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251825, 33.282215, 21.312349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156080, 32.960533, 21.094742>,  <31.098633, 32.767525, 20.964178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156080, 32.960533, 21.094742>,  <31.251825, 33.282215, 21.312349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156080, 32.960533, 21.094742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104437, -0.535729, 0.837907,
		-0.965297, 0.257380, 0.044245,
		-0.239364, -0.804208, -0.544017,
		31.084270, 32.719273, 20.931536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635317, 33.015682, 21.576872>,  <31.251825, 33.282215, 21.312349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635317, 33.015682, 21.576872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.802588, 32.708679, 21.382528>,  <30.902950, 32.524479, 21.265923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.802588, 32.708679, 21.382528>,  <30.635317, 33.015682, 21.576872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802588, 32.708679, 21.382528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152425, -0.586576, 0.795421,
		-0.895485, -0.258571, -0.362281,
		0.418178, -0.767508, -0.485858,
		30.928041, 32.478428, 21.236771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209332, 32.542068, 21.681263>,  <30.635317, 33.015682, 21.576872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209332, 32.542068, 21.681263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565393, 32.381153, 21.595671>,  <30.779032, 32.284603, 21.544315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565393, 32.381153, 21.595671>,  <30.209332, 32.542068, 21.681263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565393, 32.381153, 21.595671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, -0.570512, 0.819024,
		-0.451561, -0.716018, -0.532364,
		0.890156, -0.402286, -0.213980,
		30.832439, 32.260468, 21.531477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073080, 31.815390, 21.794266>,  <30.209332, 32.542068, 21.681263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073080, 31.815390, 21.794266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469934, 31.862705, 21.810631>,  <30.708048, 31.891094, 21.820450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469934, 31.862705, 21.810631>,  <30.073080, 31.815390, 21.794266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469934, 31.862705, 21.810631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046358, -0.650904, 0.757743,
		0.116264, -0.749887, -0.651269,
		0.992136, 0.118290, 0.040914,
		30.767574, 31.898191, 21.822905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346035, 31.130541, 21.769159>,  <30.073080, 31.815390, 21.794266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346035, 31.130541, 21.769159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640511, 31.342079, 21.938084>,  <30.817196, 31.469002, 22.039438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640511, 31.342079, 21.938084>,  <30.346035, 31.130541, 21.769159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640511, 31.342079, 21.938084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179063, -0.449563, 0.875117,
		0.652656, -0.719873, -0.236268,
		0.736191, 0.528844, 0.422312,
		30.861368, 31.500732, 22.064777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615696, 30.670942, 22.226679>,  <30.346035, 31.130541, 21.769159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615696, 30.670942, 22.226679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776552, 31.010126, 22.364807>,  <30.873066, 31.213636, 22.447683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776552, 31.010126, 22.364807>,  <30.615696, 30.670942, 22.226679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776552, 31.010126, 22.364807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100834, -0.415884, 0.903811,
		0.910009, -0.328638, -0.252746,
		0.402140, 0.847961, 0.345320,
		30.897194, 31.264515, 22.468403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198036, 30.452614, 21.966833>,  <30.615696, 30.670942, 22.226679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198036, 30.452614, 21.966833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325237, 30.083389, 21.880270>,  <31.401558, 29.861855, 21.828333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325237, 30.083389, 21.880270>,  <31.198036, 30.452614, 21.966833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325237, 30.083389, 21.880270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396847, 0.077704, -0.914590,
		0.861038, 0.376724, -0.341603,
		0.318004, -0.923061, -0.216408,
		31.420639, 29.806471, 21.815348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523594, 30.556242, 21.403994>,  <31.198036, 30.452614, 21.966833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523594, 30.556242, 21.403994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465031, 30.160553, 21.403929>,  <31.429893, 29.923140, 21.403891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465031, 30.160553, 21.403929>,  <31.523594, 30.556242, 21.403994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465031, 30.160553, 21.403929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288589, 0.042868, -0.956493,
		0.946193, -0.139990, -0.291755,
		-0.146406, -0.989225, -0.000162,
		31.421108, 29.863785, 21.403881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762455, 30.447252, 20.803600>,  <31.523594, 30.556242, 21.403994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762455, 30.447252, 20.803600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.618944, 30.083145, 20.886246>,  <31.532837, 29.864681, 20.935833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.618944, 30.083145, 20.886246>,  <31.762455, 30.447252, 20.803600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618944, 30.083145, 20.886246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167513, -0.154965, -0.973614,
		0.918269, -0.383921, -0.096884,
		-0.358778, -0.910269, 0.206611,
		31.511311, 29.810064, 20.948229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142349, 29.974249, 20.347292>,  <31.762455, 30.447252, 20.803600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142349, 29.974249, 20.347292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.780605, 29.843927, 20.457556>,  <31.563560, 29.765734, 20.523714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.780605, 29.843927, 20.457556>,  <32.142349, 29.974249, 20.347292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780605, 29.843927, 20.457556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334688, 0.140648, -0.931774,
		0.264808, -0.934916, -0.236240,
		-0.904357, -0.325808, 0.275661,
		31.509298, 29.746185, 20.540255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933050, 29.545971, 19.848680>,  <32.142349, 29.974249, 20.347292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933050, 29.545971, 19.848680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583406, 29.641306, 20.017977>,  <31.373621, 29.698507, 20.119555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583406, 29.641306, 20.017977>,  <31.933050, 29.545971, 19.848680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583406, 29.641306, 20.017977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426238, 0.041479, -0.903659,
		-0.232932, -0.970296, 0.065332,
		-0.874107, 0.238339, 0.423239,
		31.321175, 29.712807, 20.144949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459064, 29.083065, 19.620647>,  <31.933050, 29.545971, 19.848680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459064, 29.083065, 19.620647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251888, 29.405781, 19.734369>,  <31.127583, 29.599409, 19.802603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251888, 29.405781, 19.734369>,  <31.459064, 29.083065, 19.620647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251888, 29.405781, 19.734369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382987, 0.078474, -0.920414,
		-0.764890, -0.585606, 0.268344,
		-0.517942, 0.806788, 0.284303,
		31.096506, 29.647818, 19.819660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037199, 29.168676, 19.101370>,  <31.459064, 29.083065, 19.620647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037199, 29.168676, 19.101370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948055, 29.505636, 19.297611>,  <30.894569, 29.707813, 19.415356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948055, 29.505636, 19.297611>,  <31.037199, 29.168676, 19.101370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948055, 29.505636, 19.297611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522876, 0.321453, -0.789474,
		-0.822760, -0.432468, 0.368832,
		-0.222860, 0.842401, 0.490606,
		30.881197, 29.758356, 19.444794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375717, 29.202127, 19.032646>,  <31.037199, 29.168676, 19.101370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375717, 29.202127, 19.032646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548775, 29.562153, 19.053432>,  <30.652609, 29.778168, 19.065905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548775, 29.562153, 19.053432>,  <30.375717, 29.202127, 19.032646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548775, 29.562153, 19.053432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395247, 0.241164, -0.886352,
		-0.810308, 0.362935, 0.460086,
		0.432644, 0.900065, 0.051968,
		30.678568, 29.832172, 19.069023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821867, 29.599762, 18.812140>,  <30.375717, 29.202127, 19.032646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821867, 29.599762, 18.812140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146444, 29.828047, 18.761782>,  <30.341190, 29.965017, 18.731567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146444, 29.828047, 18.761782>,  <29.821867, 29.599762, 18.812140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146444, 29.828047, 18.761782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326733, 0.264395, -0.907381,
		-0.484567, 0.777422, 0.401012,
		0.811443, 0.570711, -0.125893,
		30.389877, 29.999260, 18.724014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.337334, 29.480370, 34.247849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114872, 29.694677, 34.501980>,  <33.981396, 29.823261, 34.654461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114872, 29.694677, 34.501980>,  <34.337334, 29.480370, 34.247849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114872, 29.694677, 34.501980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614343, -0.779878, 0.119887,
		0.559713, -0.323636, 0.762876,
		-0.556151, 0.535770, 0.635332,
		33.948025, 29.855408, 34.692581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983047, 29.974895, 33.841370>,  <34.337334, 29.480370, 34.247849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983047, 29.974895, 33.841370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380638, 29.958418, 33.800758>,  <34.619194, 29.948530, 33.776390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380638, 29.958418, 33.800758>,  <33.983047, 29.974895, 33.841370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380638, 29.958418, 33.800758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096906, 0.101849, -0.990069,
		0.051127, 0.993947, 0.097243,
		0.993980, -0.041195, -0.101527,
		34.678833, 29.946060, 33.770302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121433, 30.527874, 33.434990>,  <33.983047, 29.974895, 33.841370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121433, 30.527874, 33.434990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421715, 30.266901, 33.393456>,  <34.601883, 30.110317, 33.368534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421715, 30.266901, 33.393456>,  <34.121433, 30.527874, 33.434990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421715, 30.266901, 33.393456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068470, 0.079491, -0.994481,
		0.657084, 0.753668, 0.015002,
		0.750701, -0.652431, -0.103836,
		34.646927, 30.071173, 33.362305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541443, 30.809282, 32.899441>,  <34.121433, 30.527874, 33.434990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541443, 30.809282, 32.899441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614452, 30.416033, 32.904320>,  <34.658257, 30.180082, 32.907246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614452, 30.416033, 32.904320>,  <34.541443, 30.809282, 32.899441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614452, 30.416033, 32.904320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051622, -0.021969, -0.998425,
		0.981845, 0.181607, -0.054761,
		0.182524, -0.983126, 0.012196,
		34.669209, 30.121096, 32.907978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928097, 30.704649, 32.257164>,  <34.541443, 30.809282, 32.899441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928097, 30.704649, 32.257164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815620, 30.335863, 32.363686>,  <34.748135, 30.114592, 32.427597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815620, 30.335863, 32.363686>,  <34.928097, 30.704649, 32.257164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815620, 30.335863, 32.363686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164464, -0.227098, -0.959885,
		0.945455, -0.313706, -0.087772,
		-0.281189, -0.921963, 0.266304,
		34.731262, 30.059275, 32.443577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278721, 30.202751, 31.790447>,  <34.928097, 30.704649, 32.257164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278721, 30.202751, 31.790447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974812, 29.997332, 31.949951>,  <34.792465, 29.874081, 32.045654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974812, 29.997332, 31.949951>,  <35.278721, 30.202751, 31.790447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974812, 29.997332, 31.949951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325436, -0.230574, -0.917021,
		0.562878, -0.826501, 0.008057,
		-0.759776, -0.513548, 0.398758,
		34.746880, 29.843267, 32.069580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212029, 29.597561, 31.243052>,  <35.278721, 30.202751, 31.790447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212029, 29.597561, 31.243052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882210, 29.590879, 31.469269>,  <34.684319, 29.586870, 31.605000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882210, 29.590879, 31.469269>,  <35.212029, 29.597561, 31.243052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882210, 29.590879, 31.469269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510183, -0.410180, -0.755954,
		0.244602, -0.911852, 0.329691,
		-0.824550, -0.016705, 0.565542,
		34.634846, 29.585869, 31.638931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994579, 28.904499, 31.286554>,  <35.212029, 29.597561, 31.243052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994579, 28.904499, 31.286554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668510, 29.127121, 31.350733>,  <34.472870, 29.260695, 31.389240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668510, 29.127121, 31.350733>,  <34.994579, 28.904499, 31.286554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668510, 29.127121, 31.350733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463757, -0.461169, -0.756474,
		-0.347023, -0.691066, 0.634037,
		-0.815172, 0.556553, 0.160450,
		34.423958, 29.294086, 31.398867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436825, 28.389496, 31.151245>,  <34.994579, 28.904499, 31.286554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436825, 28.389496, 31.151245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245762, 28.739981, 31.176846>,  <34.131123, 28.950272, 31.192205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245762, 28.739981, 31.176846>,  <34.436825, 28.389496, 31.151245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245762, 28.739981, 31.176846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695460, -0.332595, -0.636958,
		-0.536825, -0.348757, 0.768237,
		-0.477655, 0.876213, 0.064001,
		34.102467, 29.002844, 31.196047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728222, 28.289951, 31.369907>,  <34.436825, 28.389496, 31.151245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728222, 28.289951, 31.369907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735950, 28.632830, 31.164055>,  <33.740589, 28.838556, 31.040545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735950, 28.632830, 31.164055>,  <33.728222, 28.289951, 31.369907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735950, 28.632830, 31.164055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689832, -0.361151, -0.627456,
		-0.723711, 0.367135, 0.584341,
		0.019326, 0.857194, -0.514630,
		33.741749, 28.889988, 31.009666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111671, 28.358711, 31.150545>,  <33.728222, 28.289951, 31.369907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111671, 28.358711, 31.150545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306606, 28.610254, 30.908209>,  <33.423569, 28.761179, 30.762806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306606, 28.610254, 30.908209>,  <33.111671, 28.358711, 31.150545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306606, 28.610254, 30.908209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591855, -0.272249, -0.758676,
		-0.642037, 0.728300, 0.239515,
		0.487336, 0.628856, -0.605842,
		33.452808, 28.798910, 30.726456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592937, 28.673553, 30.833313>,  <33.111671, 28.358711, 31.150545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592937, 28.673553, 30.833313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906601, 28.704514, 30.587029>,  <33.094799, 28.723089, 30.439259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906601, 28.704514, 30.587029>,  <32.592937, 28.673553, 30.833313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906601, 28.704514, 30.587029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553183, -0.362431, -0.750088,
		-0.281209, 0.928791, -0.241389,
		0.784162, 0.077399, -0.615710,
		33.141850, 28.727734, 30.402315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104027, 28.759687, 31.393467>,  <32.592937, 28.673553, 30.833313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104027, 28.759687, 31.393467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813496, 28.997419, 31.255352>,  <31.639177, 29.140059, 31.172483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813496, 28.997419, 31.255352>,  <32.104027, 28.759687, 31.393467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813496, 28.997419, 31.255352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032593, 0.531561, 0.846392,
		0.686578, 0.603502, -0.405457,
		-0.726325, 0.594330, -0.345288,
		31.595598, 29.175718, 31.151766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342701, 29.516022, 31.414251>,  <32.104027, 28.759687, 31.393467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342701, 29.516022, 31.414251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943274, 29.497444, 31.424904>,  <31.703617, 29.486298, 31.431295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943274, 29.497444, 31.424904>,  <32.342701, 29.516022, 31.414251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943274, 29.497444, 31.424904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007015, 0.606663, 0.794928,
		-0.053078, 0.793601, -0.606119,
		-0.998566, -0.046445, 0.026634,
		31.643703, 29.483511, 31.432894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272945, 30.124109, 31.689108>,  <32.342701, 29.516022, 31.414251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272945, 30.124109, 31.689108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911358, 29.954893, 31.714029>,  <31.694407, 29.853363, 31.728983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911358, 29.954893, 31.714029>,  <32.272945, 30.124109, 31.689108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911358, 29.954893, 31.714029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256402, 0.652860, 0.712764,
		-0.342203, 0.628340, -0.698632,
		-0.903967, -0.423040, 0.062303,
		31.640167, 29.827982, 31.732719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875414, 30.672173, 31.617403>,  <32.272945, 30.124109, 31.689108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875414, 30.672173, 31.617403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681890, 30.380690, 31.811274>,  <31.565777, 30.205799, 31.927597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681890, 30.380690, 31.811274>,  <31.875414, 30.672173, 31.617403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681890, 30.380690, 31.811274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380104, 0.673810, 0.633641,
		-0.788320, 0.122333, -0.602981,
		-0.483810, -0.728707, 0.484679,
		31.536747, 30.162077, 31.956676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161970, 30.775520, 31.716534>,  <31.875414, 30.672173, 31.617403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161970, 30.775520, 31.716534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.235777, 30.523886, 32.018581>,  <31.280062, 30.372906, 32.199810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.235777, 30.523886, 32.018581>,  <31.161970, 30.775520, 31.716534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235777, 30.523886, 32.018581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352410, 0.674874, 0.648346,
		-0.917475, -0.385744, -0.097169,
		0.184518, -0.629084, 0.755120,
		31.291132, 30.335161, 32.245117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570993, 30.782249, 32.172844>,  <31.161970, 30.775520, 31.716534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570993, 30.782249, 32.172844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868114, 30.626146, 32.390446>,  <31.046387, 30.532484, 32.521008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868114, 30.626146, 32.390446>,  <30.570993, 30.782249, 32.172844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868114, 30.626146, 32.390446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316440, 0.511414, 0.798950,
		-0.590008, -0.765608, 0.256388,
		0.742803, -0.390256, 0.544007,
		31.090956, 30.509069, 32.553646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256390, 30.529581, 32.808868>,  <30.570993, 30.782249, 32.172844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256390, 30.529581, 32.808868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647211, 30.581594, 32.876350>,  <30.881704, 30.612803, 32.916840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647211, 30.581594, 32.876350>,  <30.256390, 30.529581, 32.808868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647211, 30.581594, 32.876350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212136, 0.522767, 0.825659,
		0.019170, -0.842500, 0.538356,
		0.977052, 0.130033, 0.168703,
		30.940327, 30.620604, 32.926960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227121, 30.570379, 33.597317>,  <30.256390, 30.529581, 32.808868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227121, 30.570379, 33.597317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.587130, 30.701860, 33.482834>,  <30.803135, 30.780750, 33.414143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.587130, 30.701860, 33.482834>,  <30.227121, 30.570379, 33.597317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587130, 30.701860, 33.482834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086874, 0.508200, 0.856846,
		0.427098, -0.796044, 0.428836,
		0.900022, 0.328703, -0.286206,
		30.857136, 30.800472, 33.396973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447926, 30.775457, 34.241669>,  <30.227121, 30.570379, 33.597317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447926, 30.775457, 34.241669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719334, 30.974617, 34.025631>,  <30.882179, 31.094112, 33.896008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719334, 30.974617, 34.025631>,  <30.447926, 30.775457, 34.241669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719334, 30.974617, 34.025631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111350, 0.657036, 0.745590,
		0.726092, -0.566039, 0.390372,
		0.678522, 0.497898, -0.540097,
		30.922890, 31.123987, 33.863602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063534, 30.841438, 34.673138>,  <30.447926, 30.775457, 34.241669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063534, 30.841438, 34.673138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102831, 31.112583, 34.381699>,  <31.126410, 31.275270, 34.206837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102831, 31.112583, 34.381699>,  <31.063534, 30.841438, 34.673138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102831, 31.112583, 34.381699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081847, 0.724153, 0.684766,
		0.991791, -0.126906, 0.015661,
		0.098242, 0.677863, -0.728595,
		31.132303, 31.315943, 34.163120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428602, 31.317522, 34.954510>,  <31.063534, 30.841438, 34.673138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428602, 31.317522, 34.954510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246565, 31.499317, 34.648220>,  <31.137342, 31.608395, 34.464447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246565, 31.499317, 34.648220>,  <31.428602, 31.317522, 34.954510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246565, 31.499317, 34.648220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072670, 0.838107, 0.540643,
		0.887474, 0.301687, -0.348389,
		-0.455092, 0.454490, -0.765722,
		31.110037, 31.635664, 34.418503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950668, 31.860123, 34.641727>,  <31.428602, 31.317522, 34.954510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950668, 31.860123, 34.641727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570889, 31.943333, 34.547688>,  <31.343021, 31.993258, 34.491264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570889, 31.943333, 34.547688>,  <31.950668, 31.860123, 34.641727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570889, 31.943333, 34.547688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082583, 0.888049, 0.452271,
		0.302860, 0.409994, -0.860338,
		-0.949450, 0.208024, -0.235096,
		31.286053, 32.005741, 34.477158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869379, 32.597763, 34.597126>,  <31.950668, 31.860123, 34.641727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869379, 32.597763, 34.597126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481184, 32.508255, 34.633083>,  <31.248266, 32.454552, 34.654655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481184, 32.508255, 34.633083>,  <31.869379, 32.597763, 34.597126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481184, 32.508255, 34.633083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114366, 0.755268, 0.645361,
		-0.212301, 0.616035, -0.758570,
		-0.970489, -0.223766, 0.089890,
		31.190037, 32.441124, 34.660049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520302, 33.234310, 34.757126>,  <31.869379, 32.597763, 34.597126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520302, 33.234310, 34.757126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.216379, 32.989914, 34.846020>,  <31.034025, 32.843277, 34.899357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.216379, 32.989914, 34.846020>,  <31.520302, 33.234310, 34.757126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216379, 32.989914, 34.846020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309322, 0.640376, 0.703020,
		-0.571851, 0.465417, -0.675554,
		-0.759807, -0.610987, 0.222236,
		30.988438, 32.806618, 34.912689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970787, 33.627430, 34.895782>,  <31.520302, 33.234310, 34.757126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970787, 33.627430, 34.895782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890732, 33.297825, 35.107803>,  <30.842699, 33.100063, 35.235016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890732, 33.297825, 35.107803>,  <30.970787, 33.627430, 34.895782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890732, 33.297825, 35.107803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390550, 0.563251, 0.728162,
		-0.898563, -0.061279, -0.434544,
		-0.200137, -0.824011, 0.530049,
		30.830690, 33.050621, 35.266819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431877, 34.055695, 34.572178>,  <30.970787, 33.627430, 34.895782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431877, 34.055695, 34.572178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704584, 34.330616, 34.471935>,  <31.868208, 34.495567, 34.411789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704584, 34.330616, 34.471935>,  <31.431877, 34.055695, 34.572178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704584, 34.330616, 34.471935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332131, -0.014428, -0.943123,
		-0.651828, 0.726227, 0.218438,
		0.681769, 0.687304, -0.250607,
		31.909115, 34.536808, 34.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026449, 34.366871, 34.036839>,  <31.431877, 34.055695, 34.572178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026449, 34.366871, 34.036839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417334, 34.448021, 34.011871>,  <31.651865, 34.496712, 33.996891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417334, 34.448021, 34.011871>,  <31.026449, 34.366871, 34.036839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417334, 34.448021, 34.011871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063826, 0.000404, -0.997961,
		-0.202439, 0.979204, 0.013344,
		0.977213, 0.202878, -0.062417,
		31.710497, 34.508884, 33.993145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121666, 34.904175, 33.522316>,  <31.026449, 34.366871, 34.036839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121666, 34.904175, 33.522316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477055, 34.721264, 33.537903>,  <31.690287, 34.611519, 33.547256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477055, 34.721264, 33.537903>,  <31.121666, 34.904175, 33.522316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477055, 34.721264, 33.537903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068605, 0.048373, -0.996470,
		0.453777, 0.888008, 0.074350,
		0.888470, -0.457276, 0.038971,
		31.743595, 34.584080, 33.549595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594412, 35.172836, 33.024876>,  <31.121666, 34.904175, 33.522316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594412, 35.172836, 33.024876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774364, 34.820995, 33.086731>,  <31.882336, 34.609890, 33.123844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774364, 34.820995, 33.086731>,  <31.594412, 35.172836, 33.024876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774364, 34.820995, 33.086731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108547, -0.118015, -0.987061,
		0.886467, 0.460847, 0.042385,
		0.449882, -0.879598, 0.154640,
		31.909328, 34.557117, 33.133121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285946, 35.197998, 32.705147>,  <31.594412, 35.172836, 33.024876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285946, 35.197998, 32.705147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186832, 34.812351, 32.743282>,  <32.127365, 34.580963, 32.766163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186832, 34.812351, 32.743282>,  <32.285946, 35.197998, 32.705147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186832, 34.812351, 32.743282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165973, -0.139194, -0.976257,
		0.954493, -0.226077, 0.194507,
		-0.247784, -0.964113, 0.095336,
		32.112499, 34.523117, 32.771885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551788, 34.933220, 32.216290>,  <32.285946, 35.197998, 32.705147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551788, 34.933220, 32.216290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329750, 34.614014, 32.310135>,  <32.196526, 34.422489, 32.366444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329750, 34.614014, 32.310135>,  <32.551788, 34.933220, 32.216290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329750, 34.614014, 32.310135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057184, -0.318007, -0.946362,
		0.829816, -0.511908, 0.222158,
		-0.555099, -0.798011, 0.234614,
		32.163219, 34.374611, 32.380520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869213, 34.359257, 31.935827>,  <32.551788, 34.933220, 32.216290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869213, 34.359257, 31.935827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483421, 34.256325, 31.959732>,  <32.251945, 34.194565, 31.974075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483421, 34.256325, 31.959732>,  <32.869213, 34.359257, 31.935827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483421, 34.256325, 31.959732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015143, -0.279701, -0.959968,
		0.263741, -0.924960, 0.273661,
		-0.964475, -0.257327, 0.059762,
		32.194080, 34.179127, 31.977661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800259, 33.758789, 31.346424>,  <32.869213, 34.359257, 31.935827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800259, 33.758789, 31.346424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427185, 33.850262, 31.457993>,  <32.203339, 33.905148, 31.524933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427185, 33.850262, 31.457993>,  <32.800259, 33.758789, 31.346424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427185, 33.850262, 31.457993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348464, -0.371724, -0.860461,
		-0.093091, -0.899736, 0.426390,
		-0.932688, 0.228683, 0.278922,
		32.147377, 33.918865, 31.541668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420658, 33.270950, 31.204407>,  <32.800259, 33.758789, 31.346424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420658, 33.270950, 31.204407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154388, 33.569328, 31.196060>,  <31.994625, 33.748356, 31.191051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154388, 33.569328, 31.196060>,  <32.420658, 33.270950, 31.204407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154388, 33.569328, 31.196060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307045, -0.299277, -0.903414,
		-0.680144, -0.594976, 0.428261,
		-0.665678, 0.745947, -0.020867,
		31.954685, 33.793114, 31.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794962, 33.029015, 30.945082>,  <32.420658, 33.270950, 31.204407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794962, 33.029015, 30.945082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765364, 33.422523, 30.879711>,  <31.747604, 33.658630, 30.840488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765364, 33.422523, 30.879711>,  <31.794962, 33.029015, 30.945082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765364, 33.422523, 30.879711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209013, -0.175535, -0.962030,
		-0.975109, -0.037029, 0.218612,
		-0.073997, 0.983777, -0.163426,
		31.743164, 33.717655, 30.830683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392725, 33.083099, 30.345535>,  <31.794962, 33.029015, 30.945082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392725, 33.083099, 30.345535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521191, 33.461529, 30.362497>,  <31.598270, 33.688587, 30.372675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521191, 33.461529, 30.362497>,  <31.392725, 33.083099, 30.345535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521191, 33.461529, 30.362497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010972, 0.041058, -0.999097,
		-0.946959, 0.321341, 0.002806,
		0.321166, 0.946073, 0.042406,
		31.617540, 33.745350, 30.375219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005999, 33.469398, 29.905901>,  <31.392725, 33.083099, 30.345535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005999, 33.469398, 29.905901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352400, 33.665962, 29.942900>,  <31.560240, 33.783901, 29.965099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352400, 33.665962, 29.942900>,  <31.005999, 33.469398, 29.905901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352400, 33.665962, 29.942900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092363, 0.024601, -0.995421,
		-0.491435, 0.870581, -0.024084,
		0.866003, 0.491410, 0.092499,
		31.612200, 33.813385, 29.970650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913656, 34.111599, 29.556381>,  <31.005999, 33.469398, 29.905901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913656, 34.111599, 29.556381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.307596, 34.042236, 29.555927>,  <31.543961, 34.000618, 29.555655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.307596, 34.042236, 29.555927>,  <30.913656, 34.111599, 29.556381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307596, 34.042236, 29.555927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040776, 0.237947, -0.970422,
		0.168549, 0.955673, 0.241413,
		0.984850, -0.173408, -0.001137,
		31.603050, 33.990215, 29.555586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264568, 34.685471, 29.214054>,  <30.913656, 34.111599, 29.556381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264568, 34.685471, 29.214054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547686, 34.402954, 29.219465>,  <31.717556, 34.233444, 29.222712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547686, 34.402954, 29.219465>,  <31.264568, 34.685471, 29.214054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547686, 34.402954, 29.219465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211192, 0.193291, -0.958142,
		0.674114, 0.681021, 0.285973,
		0.707791, -0.706292, 0.013526,
		31.760023, 34.191067, 29.223522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948807, 34.970016, 28.970118>,  <31.264568, 34.685471, 29.214054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948807, 34.970016, 28.970118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000179, 34.578461, 28.906527>,  <32.031002, 34.343525, 28.868372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000179, 34.578461, 28.906527>,  <31.948807, 34.970016, 28.970118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000179, 34.578461, 28.906527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306936, 0.191667, -0.932231,
		0.943025, 0.070931, 0.325073,
		0.128430, -0.978893, -0.158976,
		32.038708, 34.284794, 28.858833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614723, 34.913132, 28.497553>,  <31.948807, 34.970016, 28.970118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614723, 34.913132, 28.497553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430553, 34.559975, 28.460642>,  <32.320053, 34.348080, 28.438496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430553, 34.559975, 28.460642>,  <32.614723, 34.913132, 28.497553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430553, 34.559975, 28.460642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023445, 0.091819, -0.995500,
		0.887391, -0.460513, -0.021576,
		-0.460421, -0.882892, -0.092276,
		32.292427, 34.295109, 28.432959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005596, 34.416645, 28.050995>,  <32.614723, 34.913132, 28.497553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005596, 34.416645, 28.050995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626087, 34.292751, 28.026030>,  <32.398380, 34.218414, 28.011051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626087, 34.292751, 28.026030>,  <33.005596, 34.416645, 28.050995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626087, 34.292751, 28.026030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058947, 0.020542, -0.998050,
		0.310413, -0.950601, -0.001232,
		-0.948772, -0.309735, -0.062412,
		32.341454, 34.199833, 28.007305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976997, 33.890949, 27.456993>,  <33.005596, 34.416645, 28.050995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976997, 33.890949, 27.456993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596294, 34.001282, 27.510780>,  <32.367874, 34.067482, 27.543053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596294, 34.001282, 27.510780>,  <32.976997, 33.890949, 27.456993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596294, 34.001282, 27.510780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122800, 0.059230, -0.990662,
		-0.281220, -0.959380, -0.022501,
		-0.951754, 0.275831, 0.134469,
		32.310768, 34.084030, 27.551121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655945, 33.646683, 26.875200>,  <32.976997, 33.890949, 27.456993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655945, 33.646683, 26.875200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.380112, 33.902615, 27.010906>,  <32.214611, 34.056171, 27.092329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.380112, 33.902615, 27.010906>,  <32.655945, 33.646683, 26.875200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380112, 33.902615, 27.010906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167264, 0.315088, -0.934207,
		-0.704628, -0.700958, -0.110259,
		-0.689581, 0.639826, 0.339265,
		32.173237, 34.094563, 27.112686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044178, 33.570831, 26.395348>,  <32.655945, 33.646683, 26.875200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044178, 33.570831, 26.395348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035938, 33.931328, 26.568480>,  <32.030994, 34.147625, 26.672359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035938, 33.931328, 26.568480>,  <32.044178, 33.570831, 26.395348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035938, 33.931328, 26.568480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049715, 0.431462, -0.900760,
		-0.998551, -0.040077, 0.035915,
		-0.020604, 0.901240, 0.432829,
		32.029758, 34.201698, 26.698328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444473, 33.881218, 26.087488>,  <32.044178, 33.570831, 26.395348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444473, 33.881218, 26.087488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650219, 34.179329, 26.257191>,  <31.773666, 34.358196, 26.359013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650219, 34.179329, 26.257191>,  <31.444473, 33.881218, 26.087488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650219, 34.179329, 26.257191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141061, 0.561510, -0.815358,
		-0.845890, 0.359546, 0.393951,
		0.514366, 0.745274, 0.424258,
		31.804529, 34.402912, 26.384468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973410, 34.458153, 26.104713>,  <31.444473, 33.881218, 26.087488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973410, 34.458153, 26.104713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352657, 34.584732, 26.092510>,  <31.580206, 34.660679, 26.085188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352657, 34.584732, 26.092510>,  <30.973410, 34.458153, 26.104713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352657, 34.584732, 26.092510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217703, 0.576335, -0.787682,
		-0.231677, 0.753459, 0.615326,
		0.948120, 0.316446, -0.030507,
		31.637093, 34.679665, 26.083359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969030, 35.030693, 25.711187>,  <30.973410, 34.458153, 26.104713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969030, 35.030693, 25.711187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366032, 34.990337, 25.738785>,  <31.604233, 34.966122, 25.755344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366032, 34.990337, 25.738785>,  <30.969030, 35.030693, 25.711187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366032, 34.990337, 25.738785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115454, 0.588547, -0.800177,
		0.040126, 0.802143, 0.595782,
		0.992502, -0.100893, 0.068995,
		31.663782, 34.960068, 25.759483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191036, 35.651031, 25.369059>,  <30.969030, 35.030693, 25.711187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191036, 35.651031, 25.369059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500824, 35.398003, 25.366228>,  <31.686697, 35.246185, 25.364531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500824, 35.398003, 25.366228>,  <31.191036, 35.651031, 25.369059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500824, 35.398003, 25.366228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261326, 0.330094, -0.907054,
		0.576110, 0.700638, 0.420955,
		0.774471, -0.632570, -0.007076,
		31.733166, 35.208233, 25.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563242, 36.031403, 24.985847>,  <31.191036, 35.651031, 25.369059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563242, 36.031403, 24.985847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741982, 35.673611, 24.979710>,  <31.849226, 35.458935, 24.976027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741982, 35.673611, 24.979710>,  <31.563242, 36.031403, 24.985847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741982, 35.673611, 24.979710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295235, 0.163635, -0.941307,
		0.844489, 0.416094, 0.337201,
		0.446850, -0.894477, -0.015343,
		31.876036, 35.405266, 24.975107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348141, 36.128834, 24.895950>,  <31.563242, 36.031403, 24.985847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348141, 36.128834, 24.895950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206795, 35.783905, 24.750879>,  <32.121986, 35.576946, 24.663837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206795, 35.783905, 24.750879>,  <32.348141, 36.128834, 24.895950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206795, 35.783905, 24.750879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319390, 0.253184, -0.913175,
		0.879274, -0.438521, 0.185950,
		-0.353366, -0.862321, -0.362677,
		32.100784, 35.525208, 24.642076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831253, 35.765316, 24.509251>,  <32.348141, 36.128834, 24.895950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831253, 35.765316, 24.509251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477913, 35.646080, 24.364565>,  <32.265907, 35.574539, 24.277754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477913, 35.646080, 24.364565>,  <32.831253, 35.765316, 24.509251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477913, 35.646080, 24.364565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340046, 0.123554, -0.932257,
		0.322585, -0.946508, -0.007778,
		-0.883350, -0.298087, -0.361713,
		32.212906, 35.556656, 24.256050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163609, 35.301834, 23.996870>,  <32.831253, 35.765316, 24.509251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163609, 35.301834, 23.996870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544285, 35.222099, 23.903450>,  <33.772690, 35.174259, 23.847399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544285, 35.222099, 23.903450>,  <33.163609, 35.301834, 23.996870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544285, 35.222099, 23.903450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183995, -0.238703, 0.953502,
		-0.245833, -0.950410, -0.190491,
		0.951689, -0.199353, -0.233551,
		33.829792, 35.162300, 23.833385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332916, 34.835281, 24.430450>,  <33.163609, 35.301834, 23.996870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332916, 34.835281, 24.430450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705746, 34.922024, 24.314373>,  <33.929443, 34.974072, 24.244726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705746, 34.922024, 24.314373>,  <33.332916, 34.835281, 24.430450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705746, 34.922024, 24.314373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313679, -0.082363, 0.945950,
		0.181236, -0.972722, -0.144792,
		0.932072, 0.216859, -0.290196,
		33.985367, 34.987080, 24.227314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751728, 34.378548, 24.813601>,  <33.332916, 34.835281, 24.430450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751728, 34.378548, 24.813601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958454, 34.708870, 24.723322>,  <34.082489, 34.907063, 24.669155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958454, 34.708870, 24.723322>,  <33.751728, 34.378548, 24.813601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958454, 34.708870, 24.723322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377030, 0.017136, 0.926042,
		0.768601, -0.563691, -0.302499,
		0.516818, 0.825808, -0.225699,
		34.113499, 34.956612, 24.655613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475632, 34.227100, 24.859001>,  <33.751728, 34.378548, 24.813601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475632, 34.227100, 24.859001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441471, 34.624390, 24.890532>,  <34.420975, 34.862762, 24.909451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441471, 34.624390, 24.890532>,  <34.475632, 34.227100, 24.859001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441471, 34.624390, 24.890532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425199, -0.035221, 0.904415,
		0.901062, 0.110753, -0.419309,
		-0.085398, 0.993224, 0.078828,
		34.415852, 34.922356, 24.914181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101849, 34.475582, 25.157875>,  <34.475632, 34.227100, 24.859001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101849, 34.475582, 25.157875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850677, 34.777103, 25.235323>,  <34.699974, 34.958015, 25.281792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850677, 34.777103, 25.235323>,  <35.101849, 34.475582, 25.157875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850677, 34.777103, 25.235323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222767, -0.064289, 0.972750,
		0.745712, 0.653945, -0.127554,
		-0.627925, 0.753806, 0.193619,
		34.662300, 35.003246, 25.293409>
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
