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
	<23.926905, 34.910755, 34.835178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165516, 35.143188, 35.056629>,  <24.308681, 35.282650, 35.189499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165516, 35.143188, 35.056629>,  <23.926905, 34.910755, 34.835178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.165516, 35.143188, 35.056629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665151, -0.743948, 0.064152,
		0.449145, 0.329975, -0.830293,
		0.596526, 0.581084, 0.553623,
		24.344473, 35.317513, 35.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595865, 35.194534, 34.496899>,  <23.926905, 34.910755, 34.835178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595865, 35.194534, 34.496899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621780, 35.132908, 34.891273>,  <24.637329, 35.095932, 35.127899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621780, 35.132908, 34.891273>,  <24.595865, 35.194534, 34.496899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621780, 35.132908, 34.891273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643775, -0.748458, -0.159261,
		0.762468, 0.645037, 0.050695,
		0.064786, -0.154068, 0.985934,
		24.641216, 35.086689, 35.187054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337431, 35.306824, 34.720535>,  <24.595865, 35.194534, 34.496899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337431, 35.306824, 34.720535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094032, 35.058826, 34.918663>,  <24.947992, 34.910027, 35.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094032, 35.058826, 34.918663>,  <25.337431, 35.306824, 34.720535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094032, 35.058826, 34.918663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480873, -0.784608, -0.391346,
		0.631263, 0.000053, 0.775569,
		-0.608496, -0.619993, 0.495319,
		24.911484, 34.872829, 35.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723650, 34.737350, 35.108704>,  <25.337431, 35.306824, 34.720535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723650, 34.737350, 35.108704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362707, 34.617744, 34.984550>,  <25.146141, 34.545982, 34.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362707, 34.617744, 34.984550>,  <25.723650, 34.737350, 35.108704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362707, 34.617744, 34.984550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421376, -0.763318, -0.489681,
		-0.090501, -0.572657, 0.814784,
		-0.902359, -0.299014, -0.310385,
		25.091999, 34.528042, 34.891434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113770, 34.139198, 35.167271>,  <25.723650, 34.737350, 35.108704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113770, 34.139198, 35.167271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427181, 33.972298, 35.351437>,  <26.615229, 33.872158, 35.461937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427181, 33.972298, 35.351437>,  <26.113770, 34.139198, 35.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427181, 33.972298, 35.351437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549165, -0.118379, 0.827287,
		-0.290684, -0.901048, -0.321894,
		0.783531, -0.417252, 0.460413,
		26.662241, 33.847122, 35.489559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944176, 33.466202, 35.354309>,  <26.113770, 34.139198, 35.167271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944176, 33.466202, 35.354309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231728, 33.595345, 35.600552>,  <26.404259, 33.672832, 35.748299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231728, 33.595345, 35.600552>,  <25.944176, 33.466202, 35.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231728, 33.595345, 35.600552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609961, -0.131776, 0.781398,
		0.333405, -0.937228, 0.102201,
		0.718880, 0.322861, 0.615608,
		26.447392, 33.692204, 35.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763847, 33.251751, 35.977798>,  <25.944176, 33.466202, 35.354309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763847, 33.251751, 35.977798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052101, 33.510277, 36.078167>,  <26.225054, 33.665394, 36.138390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052101, 33.510277, 36.078167>,  <25.763847, 33.251751, 35.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052101, 33.510277, 36.078167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250853, -0.094338, 0.963417,
		0.646344, -0.757216, 0.094147,
		0.720634, 0.646316, 0.250925,
		26.268291, 33.704170, 36.153446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140724, 32.955357, 36.646999>,  <25.763847, 33.251751, 35.977798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140724, 32.955357, 36.646999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185837, 33.352257, 36.626137>,  <26.212904, 33.590397, 36.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185837, 33.352257, 36.626137>,  <26.140724, 32.955357, 36.646999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185837, 33.352257, 36.626137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152955, 0.069201, 0.985808,
		0.981777, -0.103203, 0.159574,
		0.112781, 0.992250, -0.052155,
		26.219671, 33.649933, 36.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559145, 33.262211, 37.169617>,  <26.140724, 32.955357, 36.646999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559145, 33.262211, 37.169617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323643, 33.573048, 37.080631>,  <26.182343, 33.759552, 37.027241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323643, 33.573048, 37.080631>,  <26.559145, 33.262211, 37.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323643, 33.573048, 37.080631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126121, 0.183536, 0.974889,
		0.798412, 0.602027, -0.010049,
		-0.588754, 0.777096, -0.222466,
		26.147017, 33.806175, 37.013893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840672, 33.800392, 37.422363>,  <26.559145, 33.262211, 37.169617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840672, 33.800392, 37.422363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453268, 33.895000, 37.391254>,  <26.220825, 33.951767, 37.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453268, 33.895000, 37.391254>,  <26.840672, 33.800392, 37.422363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453268, 33.895000, 37.391254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020924, 0.388573, 0.921181,
		0.248097, 0.890545, -0.381285,
		-0.968509, 0.236520, -0.077770,
		26.162716, 33.965958, 37.367924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834450, 34.399914, 37.769199>,  <26.840672, 33.800392, 37.422363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834450, 34.399914, 37.769199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451874, 34.288948, 37.732849>,  <26.222328, 34.222366, 37.711037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451874, 34.288948, 37.732849>,  <26.834450, 34.399914, 37.769199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451874, 34.288948, 37.732849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217760, 0.470662, 0.855020,
		-0.194425, 0.837566, -0.510571,
		-0.956441, -0.277419, -0.090879,
		26.164942, 34.205723, 37.705585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316971, 34.034298, 38.131100>,  <26.834450, 34.399914, 37.769199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316971, 34.034298, 38.131100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599756, 33.769192, 38.229851>,  <27.769426, 33.610126, 38.289101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599756, 33.769192, 38.229851>,  <27.316971, 34.034298, 38.131100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599756, 33.769192, 38.229851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611991, -0.398293, 0.683249,
		-0.354502, -0.634119, -0.687184,
		0.706962, -0.662764, 0.246879,
		27.811844, 33.570362, 38.303913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591393, 33.718437, 38.407948>,  <27.316971, 34.034298, 38.131100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591393, 33.718437, 38.407948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601912, 33.368473, 38.214523>,  <26.608223, 33.158493, 38.098469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601912, 33.368473, 38.214523>,  <26.591393, 33.718437, 38.407948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601912, 33.368473, 38.214523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182454, -0.479807, 0.858193,
		-0.982862, 0.065658, -0.172251,
		0.026299, -0.874914, -0.483564,
		26.609802, 33.105999, 38.069454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153273, 33.800262, 39.082748>,  <26.591393, 33.718437, 38.407948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153273, 33.800262, 39.082748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849178, 34.041115, 38.985199>,  <25.666721, 34.185627, 38.926670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849178, 34.041115, 38.985199>,  <26.153273, 33.800262, 39.082748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849178, 34.041115, 38.985199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229105, -0.102772, -0.967961,
		-0.607907, -0.791752, -0.059821,
		-0.760237, 0.602135, -0.243870,
		25.621107, 34.221756, 38.912037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701365, 33.467113, 38.637714>,  <26.153273, 33.800262, 39.082748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701365, 33.467113, 38.637714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649498, 33.854126, 38.550926>,  <25.618378, 34.086334, 38.498856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649498, 33.854126, 38.550926>,  <25.701365, 33.467113, 38.637714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649498, 33.854126, 38.550926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158509, -0.195774, -0.967754,
		-0.978806, -0.159877, -0.127977,
		-0.129667, 0.967529, -0.216967,
		25.610598, 34.144386, 38.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136600, 33.536373, 38.095703>,  <25.701365, 33.467113, 38.637714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136600, 33.536373, 38.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354856, 33.869411, 38.057632>,  <25.485809, 34.069237, 38.034790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354856, 33.869411, 38.057632>,  <25.136600, 33.536373, 38.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354856, 33.869411, 38.057632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030683, -0.133347, -0.990594,
		-0.837459, 0.537586, -0.098306,
		0.545638, 0.832598, -0.095178,
		25.518547, 34.119190, 38.029079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896187, 33.962944, 37.556168>,  <25.136600, 33.536373, 38.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896187, 33.962944, 37.556168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280739, 34.062634, 37.602882>,  <25.511471, 34.122448, 37.630909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280739, 34.062634, 37.602882>,  <24.896187, 33.962944, 37.556168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280739, 34.062634, 37.602882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089335, 0.118781, -0.988893,
		-0.260325, 0.961135, 0.091929,
		0.961379, 0.249221, 0.116785,
		25.569153, 34.137402, 37.637917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969616, 34.480423, 37.104458>,  <24.896187, 33.962944, 37.556168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969616, 34.480423, 37.104458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328091, 34.317955, 37.175865>,  <25.543177, 34.220474, 37.218712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328091, 34.317955, 37.175865>,  <24.969616, 34.480423, 37.104458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328091, 34.317955, 37.175865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222408, 0.063113, -0.972909,
		0.383902, 0.911614, 0.146898,
		0.896189, -0.406173, 0.178521,
		25.596947, 34.196102, 37.229420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368671, 34.710732, 36.619698>,  <24.969616, 34.480423, 37.104458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368671, 34.710732, 36.619698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626802, 34.435196, 36.751793>,  <25.781681, 34.269875, 36.831051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626802, 34.435196, 36.751793>,  <25.368671, 34.710732, 36.619698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626802, 34.435196, 36.751793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552402, 0.122200, -0.824572,
		0.527641, 0.714542, 0.459374,
		0.645327, -0.688838, 0.330236,
		25.820400, 34.228546, 36.850864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170259, 34.925381, 36.526649>,  <25.368671, 34.710732, 36.619698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170259, 34.925381, 36.526649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175558, 34.526070, 36.549534>,  <26.178738, 34.286484, 36.563267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175558, 34.526070, 36.549534>,  <26.170259, 34.925381, 36.526649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175558, 34.526070, 36.549534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501710, -0.042859, -0.863974,
		0.864935, 0.040151, 0.500276,
		0.013248, -0.998274, 0.057214,
		26.179533, 34.226589, 36.566700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859589, 34.725288, 36.324936>,  <26.170259, 34.925381, 36.526649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859589, 34.725288, 36.324936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616285, 34.410587, 36.282902>,  <26.470304, 34.221767, 36.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616285, 34.410587, 36.282902>,  <26.859589, 34.725288, 36.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616285, 34.410587, 36.282902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444990, -0.228374, -0.865927,
		0.657273, -0.573466, 0.489008,
		-0.608257, -0.786754, -0.105082,
		26.433807, 34.174561, 36.251377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281126, 34.128235, 36.237823>,  <26.859589, 34.725288, 36.324936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281126, 34.128235, 36.237823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929173, 34.143337, 36.048347>,  <26.718000, 34.152397, 35.934662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929173, 34.143337, 36.048347>,  <27.281126, 34.128235, 36.237823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929173, 34.143337, 36.048347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473240, -0.020626, -0.880692,
		-0.043033, -0.999074, 0.000274,
		-0.879882, 0.037769, -0.473690,
		26.665207, 34.154663, 35.906242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141945, 33.505852, 35.757950>,  <27.281126, 34.128235, 36.237823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141945, 33.505852, 35.757950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972073, 33.846577, 35.635265>,  <26.870150, 34.051010, 35.561657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972073, 33.846577, 35.635265>,  <27.141945, 33.505852, 35.757950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972073, 33.846577, 35.635265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448705, -0.096207, -0.888487,
		-0.786328, -0.514944, -0.341353,
		-0.424680, 0.851808, -0.306708,
		26.844669, 34.102119, 35.543255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095432, 32.999504, 35.184368>,  <27.141945, 33.505852, 35.757950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095432, 32.999504, 35.184368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119663, 32.845051, 34.816189>,  <27.134201, 32.752380, 34.595280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119663, 32.845051, 34.816189>,  <27.095432, 32.999504, 35.184368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119663, 32.845051, 34.816189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452110, 0.811516, -0.370188,
		0.889903, 0.438570, -0.125416,
		0.060576, -0.386133, -0.920452,
		27.137836, 32.729210, 34.540054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307623, 33.215660, 34.538712>,  <27.095432, 32.999504, 35.184368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307623, 33.215660, 34.538712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477060, 33.157482, 34.181072>,  <27.578722, 33.122574, 33.966488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477060, 33.157482, 34.181072>,  <27.307623, 33.215660, 34.538712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477060, 33.157482, 34.181072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848669, -0.408850, -0.335563,
		-0.316746, 0.900937, -0.296621,
		0.423594, -0.145445, -0.894099,
		27.604139, 33.113850, 33.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874939, 33.487114, 33.866142>,  <27.307623, 33.215660, 34.538712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874939, 33.487114, 33.866142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102951, 33.160301, 33.831440>,  <27.239758, 32.964214, 33.810619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102951, 33.160301, 33.831440>,  <26.874939, 33.487114, 33.866142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102951, 33.160301, 33.831440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794693, -0.521447, -0.310734,
		0.208640, 0.246073, -0.946529,
		0.570028, -0.817032, -0.086758,
		27.273960, 32.915192, 33.805412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001009, 33.951965, 33.230042>,  <26.874939, 33.487114, 33.866142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001009, 33.951965, 33.230042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324932, 33.720051, 33.265961>,  <27.519285, 33.580902, 33.287510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324932, 33.720051, 33.265961>,  <27.001009, 33.951965, 33.230042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324932, 33.720051, 33.265961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574035, 0.751365, -0.325476,
		0.121239, 0.315118, 0.941277,
		0.809806, -0.579786, 0.089794,
		27.567873, 33.546116, 33.292900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577303, 34.362560, 33.660072>,  <27.001009, 33.951965, 33.230042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577303, 34.362560, 33.660072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749308, 34.107845, 33.404076>,  <27.852510, 33.955017, 33.250477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749308, 34.107845, 33.404076>,  <27.577303, 34.362560, 33.660072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749308, 34.107845, 33.404076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546714, 0.747791, -0.376713,
		0.718467, -0.187902, 0.669700,
		0.430010, -0.636790, -0.639992,
		27.878311, 33.916809, 33.212078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328688, 34.477554, 33.672318>,  <27.577303, 34.362560, 33.660072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328688, 34.477554, 33.672318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201197, 34.370667, 33.308559>,  <28.124702, 34.306534, 33.090305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201197, 34.370667, 33.308559>,  <28.328688, 34.477554, 33.672318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201197, 34.370667, 33.308559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255331, 0.899765, -0.353877,
		0.912809, -0.344987, -0.218548,
		-0.318725, -0.267220, -0.909400,
		28.105579, 34.290501, 33.035740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930222, 34.715557, 33.162609>,  <28.328688, 34.477554, 33.672318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930222, 34.715557, 33.162609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553446, 34.692604, 33.030270>,  <28.327381, 34.678833, 32.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553446, 34.692604, 33.030270>,  <28.930222, 34.715557, 33.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553446, 34.692604, 33.030270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132362, 0.842068, -0.522878,
		0.308600, -0.536310, -0.785581,
		-0.941938, -0.057379, -0.330849,
		28.270864, 34.675392, 32.931015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377247, 34.284336, 33.520325>,  <28.930222, 34.715557, 33.162609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377247, 34.284336, 33.520325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341991, 33.967579, 33.762032>,  <29.320837, 33.777527, 33.907055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341991, 33.967579, 33.762032>,  <29.377247, 34.284336, 33.520325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341991, 33.967579, 33.762032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533521, 0.474748, 0.699978,
		-0.841182, 0.384086, 0.380646,
		-0.088140, -0.791891, 0.604268,
		29.315550, 33.730011, 33.943314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076263, 34.433647, 34.225937>,  <29.377247, 34.284336, 33.520325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076263, 34.433647, 34.225937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321421, 34.118797, 34.253635>,  <29.468515, 33.929886, 34.270256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321421, 34.118797, 34.253635>,  <29.076263, 34.433647, 34.225937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321421, 34.118797, 34.253635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533816, 0.477073, 0.698170,
		-0.582583, -0.390938, 0.712575,
		0.612892, -0.787126, 0.069246,
		29.505289, 33.882660, 34.274410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117661, 34.260506, 34.869427>,  <29.076263, 34.433647, 34.225937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117661, 34.260506, 34.869427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462563, 34.118660, 34.724785>,  <29.669504, 34.033550, 34.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462563, 34.118660, 34.724785>,  <29.117661, 34.260506, 34.869427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462563, 34.118660, 34.724785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500658, 0.488942, 0.714337,
		-0.076511, -0.796983, 0.599135,
		0.862257, -0.354617, -0.361607,
		29.721239, 34.012276, 34.616302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434212, 33.943756, 35.374691>,  <29.117661, 34.260506, 34.869427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434212, 33.943756, 35.374691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736683, 34.059238, 35.139797>,  <29.918165, 34.128529, 34.998859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736683, 34.059238, 35.139797>,  <29.434212, 33.943756, 35.374691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736683, 34.059238, 35.139797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477440, 0.370280, 0.796834,
		0.447492, -0.882917, 0.142157,
		0.756176, 0.288705, -0.587237,
		29.963535, 34.145851, 34.963627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852875, 34.234692, 35.915298>,  <29.434212, 33.943756, 35.374691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852875, 34.234692, 35.915298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998770, 34.357346, 35.563629>,  <30.086308, 34.430939, 35.352627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998770, 34.357346, 35.563629>,  <29.852875, 34.234692, 35.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998770, 34.357346, 35.563629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561546, 0.680734, 0.470392,
		0.742720, -0.665264, 0.076099,
		0.364738, 0.306636, -0.879171,
		30.108191, 34.449337, 35.299877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120111, 34.895256, 36.204494>,  <29.852875, 34.234692, 35.915298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120111, 34.895256, 36.204494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454559, 35.076931, 36.081455>,  <30.655228, 35.185936, 36.007629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454559, 35.076931, 36.081455>,  <30.120111, 34.895256, 36.204494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454559, 35.076931, 36.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043728, -0.503785, -0.862722,
		-0.546798, 0.734791, -0.401365,
		0.836122, 0.454184, -0.307600,
		30.705397, 35.213184, 35.989174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005196, 35.298752, 35.605473>,  <30.120111, 34.895256, 36.204494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005196, 35.298752, 35.605473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364227, 35.122425, 35.607731>,  <30.579647, 35.016628, 35.609085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364227, 35.122425, 35.607731>,  <30.005196, 35.298752, 35.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364227, 35.122425, 35.607731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203032, -0.424717, -0.882266,
		0.391314, 0.790758, -0.470717,
		0.897581, -0.440814, 0.005648,
		30.633501, 34.990181, 35.609425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376980, 35.418392, 34.905136>,  <30.005196, 35.298752, 35.605473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376980, 35.418392, 34.905136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476877, 35.080894, 35.095173>,  <30.536816, 34.878395, 35.209194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476877, 35.080894, 35.095173>,  <30.376980, 35.418392, 34.905136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476877, 35.080894, 35.095173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362370, -0.536431, -0.762188,
		0.897951, 0.018193, -0.439720,
		0.249746, -0.843748, 0.475096,
		30.551802, 34.827770, 35.237701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621687, 35.009037, 34.427658>,  <30.376980, 35.418392, 34.905136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621687, 35.009037, 34.427658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573774, 34.724930, 34.705124>,  <30.545027, 34.554466, 34.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573774, 34.724930, 34.705124>,  <30.621687, 35.009037, 34.427658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573774, 34.724930, 34.705124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331862, -0.629864, -0.702238,
		0.935692, -0.314316, -0.160265,
		-0.119779, -0.710265, 0.693669,
		30.537840, 34.511848, 34.913223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932886, 34.395203, 34.174698>,  <30.621687, 35.009037, 34.427658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932886, 34.395203, 34.174698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629787, 34.303345, 34.419018>,  <30.447927, 34.248230, 34.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629787, 34.303345, 34.419018>,  <30.932886, 34.395203, 34.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629787, 34.303345, 34.419018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400701, -0.575020, -0.713296,
		0.515030, -0.785248, 0.343701,
		-0.757749, -0.229647, 0.610802,
		30.402462, 34.234451, 34.602257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832321, 33.611992, 34.049042>,  <30.932886, 34.395203, 34.174698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832321, 33.611992, 34.049042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495359, 33.756283, 34.209160>,  <30.293182, 33.842857, 34.305229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495359, 33.756283, 34.209160>,  <30.832321, 33.611992, 34.049042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495359, 33.756283, 34.209160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536976, -0.623853, -0.567860,
		0.044881, -0.693314, 0.719236,
		-0.842403, 0.360726, 0.400292,
		30.242638, 33.864502, 34.329247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394718, 32.932243, 34.257530>,  <30.832321, 33.611992, 34.049042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394718, 32.932243, 34.257530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139675, 33.238640, 34.224766>,  <29.986650, 33.422478, 34.205109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139675, 33.238640, 34.224766>,  <30.394718, 32.932243, 34.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139675, 33.238640, 34.224766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665227, -0.601087, -0.442908,
		-0.388499, -0.227914, 0.892818,
		-0.637606, 0.765996, -0.081907,
		29.948393, 33.468437, 34.200191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784883, 32.767075, 34.717812>,  <30.394718, 32.932243, 34.257530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784883, 32.767075, 34.717812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706724, 32.992733, 34.396923>,  <29.659828, 33.128128, 34.204391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706724, 32.992733, 34.396923>,  <29.784883, 32.767075, 34.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706724, 32.992733, 34.396923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668946, -0.674831, -0.311630,
		-0.717169, 0.475750, 0.509246,
		-0.195397, 0.564150, -0.802219,
		29.648106, 33.161980, 34.156258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893320, 33.311863, 35.244030>,  <29.784883, 32.767075, 34.717812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893320, 33.311863, 35.244030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117954, 33.597248, 35.076416>,  <30.252735, 33.768478, 34.975845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117954, 33.597248, 35.076416>,  <29.893320, 33.311863, 35.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117954, 33.597248, 35.076416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130398, 0.423795, 0.896322,
		0.817079, -0.558003, 0.144963,
		0.561586, 0.713463, -0.419037,
		30.286430, 33.811287, 34.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408056, 33.481693, 35.679218>,  <29.893320, 33.311863, 35.244030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408056, 33.481693, 35.679218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426048, 33.811226, 35.453197>,  <30.436844, 34.008945, 35.317585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426048, 33.811226, 35.453197>,  <30.408056, 33.481693, 35.679218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426048, 33.811226, 35.453197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356693, 0.515094, 0.779390,
		0.933138, -0.236605, -0.270687,
		0.044978, 0.823830, -0.565049,
		30.439541, 34.058376, 35.283684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944054, 33.785595, 35.933979>,  <30.408056, 33.481693, 35.679218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944054, 33.785595, 35.933979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812035, 34.091717, 35.712936>,  <30.732822, 34.275391, 35.580311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812035, 34.091717, 35.712936>,  <30.944054, 33.785595, 35.933979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812035, 34.091717, 35.712936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447487, 0.642298, 0.622261,
		0.831158, -0.041908, -0.554454,
		-0.330047, 0.765309, -0.552604,
		30.713020, 34.321308, 35.547153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509924, 34.283009, 35.878155>,  <30.944054, 33.785595, 35.933979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509924, 34.283009, 35.878155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164650, 34.477818, 35.824905>,  <30.957485, 34.594704, 35.792957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164650, 34.477818, 35.824905>,  <31.509924, 34.283009, 35.878155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164650, 34.477818, 35.824905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301190, 0.708325, 0.638404,
		0.405212, 0.510965, -0.758102,
		-0.863185, 0.487021, -0.133124,
		30.905695, 34.623924, 35.784969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548801, 34.937408, 36.011684>,  <31.509924, 34.283009, 35.878155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548801, 34.937408, 36.011684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156513, 34.887550, 36.071880>,  <30.921141, 34.857635, 36.107998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156513, 34.887550, 36.071880>,  <31.548801, 34.937408, 36.011684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156513, 34.887550, 36.071880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019825, 0.702694, 0.711216,
		-0.194404, 0.700488, -0.686676,
		-0.980721, -0.124650, 0.150494,
		30.862297, 34.850155, 36.117027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219704, 34.805000, 35.595524>,  <31.548801, 34.937408, 36.011684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219704, 34.805000, 35.595524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589581, 34.653038, 35.585533>,  <32.811504, 34.561863, 35.579536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589581, 34.653038, 35.585533>,  <32.219704, 34.805000, 35.595524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589581, 34.653038, 35.585533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057610, 0.074764, 0.995536,
		-0.376340, -0.922000, 0.091020,
		0.924689, -0.379904, -0.024980,
		32.866985, 34.539066, 35.578041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259705, 34.410152, 36.084572>,  <32.219704, 34.805000, 35.595524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259705, 34.410152, 36.084572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656956, 34.417698, 36.038383>,  <32.895306, 34.422226, 36.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656956, 34.417698, 36.038383>,  <32.259705, 34.410152, 36.084572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656956, 34.417698, 36.038383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116367, -0.056801, 0.991581,
		0.012152, -0.998207, -0.058607,
		0.993132, 0.018870, -0.115468,
		32.954895, 34.423359, 36.003742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506367, 33.830353, 36.391842>,  <32.259705, 34.410152, 36.084572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506367, 33.830353, 36.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798504, 34.103016, 36.409489>,  <32.973785, 34.266613, 36.420078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798504, 34.103016, 36.409489>,  <32.506367, 33.830353, 36.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798504, 34.103016, 36.409489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076305, -0.145601, 0.986396,
		0.678807, -0.717039, -0.158352,
		0.730341, 0.681656, 0.044121,
		33.017605, 34.307514, 36.422726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964493, 33.577503, 36.825039>,  <32.506367, 33.830353, 36.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964493, 33.577503, 36.825039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056915, 33.965790, 36.798729>,  <33.112370, 34.198761, 36.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056915, 33.965790, 36.798729>,  <32.964493, 33.577503, 36.825039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056915, 33.965790, 36.798729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232895, 0.010460, 0.972446,
		0.944655, -0.240007, -0.223658,
		0.231055, 0.970715, -0.065778,
		33.126232, 34.257004, 36.778996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500153, 33.715149, 37.282005>,  <32.964493, 33.577503, 36.825039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500153, 33.715149, 37.282005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316795, 34.065994, 37.224659>,  <33.206779, 34.276501, 37.190250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316795, 34.065994, 37.224659>,  <33.500153, 33.715149, 37.282005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316795, 34.065994, 37.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047792, 0.185402, 0.981500,
		0.887464, 0.443060, -0.126906,
		-0.458392, 0.877111, -0.143363,
		33.179279, 34.329128, 37.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953491, 33.537636, 36.752838>,  <33.500153, 33.715149, 37.282005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953491, 33.537636, 36.752838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911045, 33.935368, 36.755775>,  <33.885578, 34.174007, 36.757538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911045, 33.935368, 36.755775>,  <33.953491, 33.537636, 36.752838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911045, 33.935368, 36.755775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288749, 0.023746, 0.957110,
		0.951506, 0.103688, -0.289630,
		-0.106118, 0.994326, 0.007345,
		33.879211, 34.233665, 36.757980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551968, 33.719765, 36.915916>,  <33.953491, 33.537636, 36.752838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551968, 33.719765, 36.915916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303436, 34.018505, 37.010712>,  <34.154316, 34.197750, 37.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303436, 34.018505, 37.010712>,  <34.551968, 33.719765, 36.915916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303436, 34.018505, 37.010712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393628, 0.035995, 0.918565,
		0.677499, 0.664019, -0.316346,
		-0.621331, 0.746849, 0.236990,
		34.117039, 34.242561, 37.081810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983574, 34.173023, 37.351746>,  <34.551968, 33.719765, 36.915916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983574, 34.173023, 37.351746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601738, 34.265800, 37.426537>,  <34.372635, 34.321468, 37.471413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601738, 34.265800, 37.426537>,  <34.983574, 34.173023, 37.351746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601738, 34.265800, 37.426537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218238, 0.117163, 0.968837,
		0.202808, 0.965647, -0.162462,
		-0.954589, 0.231943, 0.186980,
		34.315361, 34.335384, 37.482632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958870, 34.676216, 37.836666>,  <34.983574, 34.173023, 37.351746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958870, 34.676216, 37.836666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601006, 34.498905, 37.858879>,  <34.386288, 34.392517, 37.872208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601006, 34.498905, 37.858879>,  <34.958870, 34.676216, 37.836666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601006, 34.498905, 37.858879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054816, 0.014439, 0.998392,
		-0.443371, 0.896266, 0.011381,
		-0.894661, -0.443282, 0.055532,
		34.332607, 34.365921, 37.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895954, 34.210728, 38.463039>,  <34.958870, 34.676216, 37.836666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895954, 34.210728, 38.463039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548748, 34.374683, 38.575142>,  <34.340424, 34.473057, 38.642403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548748, 34.374683, 38.575142>,  <34.895954, 34.210728, 38.463039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548748, 34.374683, 38.575142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380747, -0.187141, -0.905544,
		-0.318725, -0.892731, 0.318505,
		-0.868013, 0.409889, 0.280259,
		34.288345, 34.497650, 38.659218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129398, 33.810577, 38.510387>,  <34.895954, 34.210728, 38.463039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129398, 33.810577, 38.510387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125393, 34.197132, 38.407627>,  <34.122990, 34.429066, 38.345970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125393, 34.197132, 38.407627>,  <34.129398, 33.810577, 38.510387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125393, 34.197132, 38.407627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508902, -0.226078, -0.830606,
		-0.860766, 0.122415, 0.494061,
		-0.010018, 0.966387, -0.256898,
		34.122387, 34.487049, 38.330559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475346, 34.024807, 38.321068>,  <34.129398, 33.810577, 38.510387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475346, 34.024807, 38.321068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716034, 34.271275, 38.117790>,  <33.860447, 34.419155, 37.995823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716034, 34.271275, 38.117790>,  <33.475346, 34.024807, 38.321068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716034, 34.271275, 38.117790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583788, -0.094939, -0.806337,
		-0.545089, 0.781869, 0.302586,
		0.601723, 0.616171, -0.508195,
		33.896549, 34.456127, 37.965332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013344, 34.456318, 37.824974>,  <33.475346, 34.024807, 38.321068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013344, 34.456318, 37.824974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397423, 34.420036, 37.719299>,  <33.627869, 34.398266, 37.655895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397423, 34.420036, 37.719299>,  <33.013344, 34.456318, 37.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397423, 34.420036, 37.719299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263699, 0.017587, -0.964445,
		0.092126, 0.995722, -0.007032,
		0.960195, -0.090705, -0.264191,
		33.685482, 34.392826, 37.640041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110043, 34.945202, 37.273540>,  <33.013344, 34.456318, 37.824974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110043, 34.945202, 37.273540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406498, 34.682301, 37.218784>,  <33.584370, 34.524559, 37.185932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406498, 34.682301, 37.218784>,  <33.110043, 34.945202, 37.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406498, 34.682301, 37.218784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228644, -0.055402, -0.971932,
		0.631218, 0.751634, -0.191336,
		0.741138, -0.657250, -0.136886,
		33.628838, 34.485126, 37.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678234, 35.277054, 36.973358>,  <33.110043, 34.945202, 37.273540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678234, 35.277054, 36.973358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612671, 34.893909, 36.879002>,  <33.573334, 34.664024, 36.822388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612671, 34.893909, 36.879002>,  <33.678234, 35.277054, 36.973358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612671, 34.893909, 36.879002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273148, 0.273844, -0.922171,
		0.947905, -0.086722, -0.306523,
		-0.163911, -0.957857, -0.235890,
		33.563496, 34.606552, 36.808235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038231, 35.148445, 36.407101>,  <33.678234, 35.277054, 36.973358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038231, 35.148445, 36.407101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745056, 34.876328, 36.408081>,  <33.569153, 34.713055, 36.408669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745056, 34.876328, 36.408081>,  <34.038231, 35.148445, 36.407101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745056, 34.876328, 36.408081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062207, -0.070608, -0.995563,
		0.677452, -0.729527, 0.094070,
		-0.732932, -0.680298, 0.002452,
		33.525177, 34.672237, 36.408817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246777, 34.606831, 35.883522>,  <34.038231, 35.148445, 36.407101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246777, 34.606831, 35.883522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856205, 34.544342, 35.943085>,  <33.621861, 34.506851, 35.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856205, 34.544342, 35.943085>,  <34.246777, 34.606831, 35.883522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856205, 34.544342, 35.943085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146945, -0.024095, -0.988851,
		0.158066, -0.987428, 0.000571,
		-0.976433, -0.156220, 0.148907,
		33.563274, 34.497475, 35.987755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022793, 33.929832, 35.621658>,  <34.246777, 34.606831, 35.883522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022793, 33.929832, 35.621658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748676, 34.220280, 35.599285>,  <33.584206, 34.394547, 35.585861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748676, 34.220280, 35.599285>,  <34.022793, 33.929832, 35.621658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748676, 34.220280, 35.599285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153710, -0.219281, -0.963477,
		-0.711865, -0.651664, 0.261883,
		-0.685289, 0.726120, -0.055931,
		33.543091, 34.438114, 35.582504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281311, 33.733063, 35.415741>,  <34.022793, 33.929832, 35.621658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281311, 33.733063, 35.415741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321564, 34.106636, 35.278549>,  <33.345715, 34.330780, 35.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321564, 34.106636, 35.278549>,  <33.281311, 33.733063, 35.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321564, 34.106636, 35.278549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311719, -0.297780, -0.902308,
		-0.944830, 0.197717, 0.261159,
		0.100634, 0.933935, -0.342983,
		33.351753, 34.386818, 35.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694435, 33.831001, 35.108986>,  <33.281311, 33.733063, 35.415741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694435, 33.831001, 35.108986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956554, 34.098869, 34.969196>,  <33.113827, 34.259590, 34.885323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956554, 34.098869, 34.969196>,  <32.694435, 33.831001, 35.108986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956554, 34.098869, 34.969196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296151, -0.197839, -0.934428,
		-0.694893, 0.715826, 0.068678,
		0.655300, 0.669666, -0.349469,
		33.153145, 34.299770, 34.864357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326347, 34.341366, 34.733349>,  <32.694435, 33.831001, 35.108986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326347, 34.341366, 34.733349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703659, 34.381004, 34.606606>,  <32.930046, 34.404785, 34.530560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703659, 34.381004, 34.606606>,  <32.326347, 34.341366, 34.733349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703659, 34.381004, 34.606606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329238, 0.156462, -0.931194,
		-0.042699, 0.982700, 0.180213,
		0.943281, 0.099094, -0.316862,
		32.986645, 34.410732, 34.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238533, 34.910664, 34.244198>,  <32.326347, 34.341366, 34.733349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238533, 34.910664, 34.244198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595711, 34.749523, 34.163841>,  <32.810017, 34.652840, 34.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595711, 34.749523, 34.163841>,  <32.238533, 34.910664, 34.244198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595711, 34.749523, 34.163841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176974, 0.096189, -0.979504,
		0.413917, 0.910197, 0.014598,
		0.892946, -0.402850, -0.200896,
		32.863594, 34.628670, 34.103573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657024, 35.427219, 33.791580>,  <32.238533, 34.910664, 34.244198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657024, 35.427219, 33.791580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795437, 35.055241, 33.741856>,  <32.878487, 34.832054, 33.712021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795437, 35.055241, 33.741856>,  <32.657024, 35.427219, 33.791580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795437, 35.055241, 33.741856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185267, 0.062161, -0.980720,
		0.919749, 0.362393, -0.150779,
		0.346033, -0.929950, -0.124312,
		32.899246, 34.776257, 33.704563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064522, 35.371983, 33.169460>,  <32.657024, 35.427219, 33.791580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064522, 35.371983, 33.169460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999790, 34.979073, 33.207294>,  <32.960953, 34.743328, 33.229996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999790, 34.979073, 33.207294>,  <33.064522, 35.371983, 33.169460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999790, 34.979073, 33.207294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085909, -0.081466, -0.992967,
		0.983072, -0.168817, -0.071203,
		-0.161829, -0.982275, 0.094590,
		32.951241, 34.684391, 33.235672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186874, 35.029301, 32.508430>,  <33.064522, 35.371983, 33.169460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186874, 35.029301, 32.508430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014290, 34.715569, 32.686718>,  <32.910740, 34.527328, 32.793690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014290, 34.715569, 32.686718>,  <33.186874, 35.029301, 32.508430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014290, 34.715569, 32.686718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414977, -0.266144, -0.870035,
		0.801022, -0.560349, -0.210649,
		-0.431461, -0.784332, 0.445719,
		32.884853, 34.480270, 32.820435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214996, 34.481197, 32.044937>,  <33.186874, 35.029301, 32.508430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214996, 34.481197, 32.044937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890400, 34.410839, 32.267841>,  <32.695641, 34.368626, 32.401585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890400, 34.410839, 32.267841>,  <33.214996, 34.481197, 32.044937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890400, 34.410839, 32.267841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532998, -0.168145, -0.829241,
		0.239560, -0.969942, 0.042697,
		-0.811495, -0.175896, 0.557258,
		32.646950, 34.358070, 32.435020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842972, 33.815418, 31.799639>,  <33.214996, 34.481197, 32.044937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842972, 33.815418, 31.799639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566010, 34.017826, 32.005367>,  <32.399834, 34.139271, 32.128803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566010, 34.017826, 32.005367>,  <32.842972, 33.815418, 31.799639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566010, 34.017826, 32.005367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634359, -0.087323, -0.768091,
		-0.343757, -0.858090, 0.381460,
		-0.692401, 0.506020, 0.514319,
		32.358288, 34.169632, 32.159664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328220, 33.428120, 31.789366>,  <32.842972, 33.815418, 31.799639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328220, 33.428120, 31.789366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172752, 33.788353, 31.867224>,  <32.079472, 34.004494, 31.913939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172752, 33.788353, 31.867224>,  <32.328220, 33.428120, 31.789366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172752, 33.788353, 31.867224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434049, 0.007378, -0.900859,
		-0.812733, -0.434624, 0.388029,
		-0.388672, 0.900581, 0.194645,
		32.056152, 34.058529, 31.925617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707220, 33.401115, 31.568972>,  <32.328220, 33.428120, 31.789366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707220, 33.401115, 31.568972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768028, 33.796463, 31.570499>,  <31.804512, 34.033672, 31.571415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768028, 33.796463, 31.570499>,  <31.707220, 33.401115, 31.568972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768028, 33.796463, 31.570499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339218, 0.055802, -0.939052,
		-0.928343, 0.141459, 0.343756,
		0.152020, 0.988370, 0.003818,
		31.813635, 34.092976, 31.571646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137669, 33.694164, 31.222589>,  <31.707220, 33.401115, 31.568972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137669, 33.694164, 31.222589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384315, 34.008850, 31.210825>,  <31.532303, 34.197662, 31.203766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384315, 34.008850, 31.210825>,  <31.137669, 33.694164, 31.222589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384315, 34.008850, 31.210825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242432, 0.154208, -0.957834,
		-0.749008, 0.597745, 0.285812,
		0.616615, 0.786715, -0.029410,
		31.569300, 34.244865, 31.202002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825132, 34.105686, 30.820778>,  <31.137669, 33.694164, 31.222589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825132, 34.105686, 30.820778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173922, 34.301067, 30.833902>,  <31.383194, 34.418297, 30.841778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173922, 34.301067, 30.833902>,  <30.825132, 34.105686, 30.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173922, 34.301067, 30.833902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105315, 0.252612, -0.961819,
		-0.478094, 0.835224, 0.271712,
		0.871972, 0.488455, 0.032811,
		31.435513, 34.447605, 30.843746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676640, 34.695339, 30.550369>,  <30.825132, 34.105686, 30.820778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676640, 34.695339, 30.550369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074570, 34.673550, 30.516073>,  <31.313328, 34.660477, 30.495497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074570, 34.673550, 30.516073>,  <30.676640, 34.695339, 30.550369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074570, 34.673550, 30.516073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093218, -0.154230, -0.983628,
		0.040359, 0.986532, -0.158511,
		0.994827, -0.054475, -0.085738,
		31.373018, 34.657207, 30.490353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917557, 35.198116, 29.973221>,  <30.676640, 34.695339, 30.550369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917557, 35.198116, 29.973221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208317, 34.929531, 30.030855>,  <31.382772, 34.768379, 30.065435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208317, 34.929531, 30.030855>,  <30.917557, 35.198116, 29.973221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208317, 34.929531, 30.030855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150344, -0.049127, -0.987413,
		0.670086, 0.739411, 0.065240,
		0.726899, -0.671459, 0.144085,
		31.426386, 34.728092, 30.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510408, 35.535328, 29.791462>,  <30.917557, 35.198116, 29.973221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510408, 35.535328, 29.791462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632172, 35.155075, 29.767324>,  <31.705229, 34.926926, 29.752842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632172, 35.155075, 29.767324>,  <31.510408, 35.535328, 29.791462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632172, 35.155075, 29.767324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203602, 0.126821, -0.970805,
		0.930528, 0.283233, 0.232156,
		0.304407, -0.950629, -0.060343,
		31.723494, 34.869888, 29.749222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216228, 35.555271, 29.581909>,  <31.510408, 35.535328, 29.791462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216228, 35.555271, 29.581909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022720, 35.218910, 29.484880>,  <31.906614, 35.017094, 29.426662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022720, 35.218910, 29.484880>,  <32.216228, 35.555271, 29.581909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022720, 35.218910, 29.484880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029997, 0.292934, -0.955662,
		0.874679, -0.455047, -0.166938,
		-0.483773, -0.840906, -0.242573,
		31.877588, 34.966637, 29.412109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359024, 35.444763, 28.967779>,  <32.216228, 35.555271, 29.581909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359024, 35.444763, 28.967779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058952, 35.180389, 28.975672>,  <31.878908, 35.021763, 28.980408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058952, 35.180389, 28.975672>,  <32.359024, 35.444763, 28.967779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058952, 35.180389, 28.975672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159591, 0.152023, -0.975407,
		0.641685, -0.734880, -0.219525,
		-0.750180, -0.660939, 0.019730,
		31.833899, 34.982109, 28.981590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532959, 34.858887, 28.530163>,  <32.359024, 35.444763, 28.967779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532959, 34.858887, 28.530163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133568, 34.868130, 28.550198>,  <31.893932, 34.873676, 28.562218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133568, 34.868130, 28.550198>,  <32.532959, 34.858887, 28.530163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133568, 34.868130, 28.550198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050302, -0.008890, -0.998694,
		-0.022643, -0.999693, 0.010039,
		-0.998477, 0.023118, 0.050086,
		31.834024, 34.875061, 28.565224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351475, 34.552391, 27.863510>,  <32.532959, 34.858887, 28.530163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351475, 34.552391, 27.863510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026592, 34.750755, 27.986403>,  <31.831663, 34.869774, 28.060139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026592, 34.750755, 27.986403>,  <32.351475, 34.552391, 27.863510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026592, 34.750755, 27.986403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272847, 0.142572, -0.951435,
		-0.515629, -0.856590, 0.019510,
		-0.812208, 0.495910, 0.307232,
		31.782930, 34.899529, 28.078571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921669, 34.314552, 27.365971>,  <32.351475, 34.552391, 27.863510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921669, 34.314552, 27.365971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752457, 34.647236, 27.509808>,  <31.650928, 34.846844, 27.596109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752457, 34.647236, 27.509808>,  <31.921669, 34.314552, 27.365971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752457, 34.647236, 27.509808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295468, 0.248543, -0.922456,
		-0.856587, -0.496477, 0.140601,
		-0.423033, 0.831707, 0.359591,
		31.625547, 34.896748, 27.617685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256975, 34.376568, 27.011829>,  <31.921669, 34.314552, 27.365971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256975, 34.376568, 27.011829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320147, 34.749104, 27.143074>,  <31.358049, 34.972626, 27.221821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320147, 34.749104, 27.143074>,  <31.256975, 34.376568, 27.011829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320147, 34.749104, 27.143074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448138, 0.363693, -0.816639,
		-0.879904, -0.018069, 0.474808,
		0.157928, 0.931344, 0.328113,
		31.367525, 35.028507, 27.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618162, 34.657124, 26.996914>,  <31.256975, 34.376568, 27.011829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618162, 34.657124, 26.996914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882496, 34.957085, 26.984657>,  <31.041096, 35.137062, 26.977304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882496, 34.957085, 26.984657>,  <30.618162, 34.657124, 26.996914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882496, 34.957085, 26.984657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382844, 0.301696, -0.873161,
		-0.645544, 0.588746, 0.486468,
		0.660835, 0.749906, -0.030640,
		31.080746, 35.182056, 26.975466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221638, 35.324276, 26.736183>,  <30.618162, 34.657124, 26.996914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221638, 35.324276, 26.736183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609215, 35.409325, 26.685684>,  <30.841761, 35.460354, 26.655384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609215, 35.409325, 26.685684>,  <30.221638, 35.324276, 26.736183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609215, 35.409325, 26.685684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212728, 0.456439, -0.863950,
		-0.126073, 0.863976, 0.487495,
		0.968944, 0.212625, -0.126247,
		30.899899, 35.473110, 26.647810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263962, 36.101852, 26.585485>,  <30.221638, 35.324276, 26.736183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263962, 36.101852, 26.585485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595675, 35.930981, 26.441372>,  <30.794703, 35.828457, 26.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595675, 35.930981, 26.441372>,  <30.263962, 36.101852, 26.585485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595675, 35.930981, 26.441372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175853, 0.412478, -0.893833,
		0.530441, 0.804597, 0.266939,
		0.829282, -0.427183, -0.360286,
		30.844460, 35.802826, 26.333286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590954, 36.694138, 26.302343>,  <30.263962, 36.101852, 26.585485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590954, 36.694138, 26.302343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780552, 36.371212, 26.161732>,  <30.894310, 36.177456, 26.077364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780552, 36.371212, 26.161732>,  <30.590954, 36.694138, 26.302343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780552, 36.371212, 26.161732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214484, 0.493058, -0.843143,
		0.854006, 0.324248, 0.406863,
		0.473994, -0.807315, -0.351528,
		30.922750, 36.129017, 26.056273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088390, 37.090813, 26.019766>,  <30.590954, 36.694138, 26.302343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088390, 37.090813, 26.019766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063721, 36.717148, 25.879173>,  <31.048918, 36.492950, 25.794817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063721, 36.717148, 25.879173>,  <31.088390, 37.090813, 26.019766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063721, 36.717148, 25.879173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283214, 0.321298, -0.903636,
		0.957072, -0.155276, 0.244751,
		-0.061675, -0.934161, -0.351482,
		31.045218, 36.436901, 25.773729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604534, 37.036587, 25.450890>,  <31.088390, 37.090813, 26.019766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604534, 37.036587, 25.450890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342796, 36.738991, 25.396765>,  <31.185753, 36.560432, 25.364290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342796, 36.738991, 25.396765>,  <31.604534, 37.036587, 25.450890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342796, 36.738991, 25.396765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094803, 0.096819, -0.990777,
		0.750229, -0.661140, 0.007180,
		-0.654347, -0.743990, -0.135314,
		31.146492, 36.515793, 25.356171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964739, 36.554058, 25.133087>,  <31.604534, 37.036587, 25.450890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964739, 36.554058, 25.133087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576487, 36.519032, 25.043457>,  <31.343534, 36.498016, 24.989679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576487, 36.519032, 25.043457>,  <31.964739, 36.554058, 25.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576487, 36.519032, 25.043457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198490, 0.234791, -0.951564,
		0.135938, -0.968094, -0.210514,
		-0.970630, -0.087568, -0.224074,
		31.285297, 36.492760, 24.976234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916077, 36.153534, 24.552084>,  <31.964739, 36.554058, 25.133087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916077, 36.153534, 24.552084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569468, 36.352165, 24.572271>,  <31.361502, 36.471344, 24.584383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569468, 36.352165, 24.572271>,  <31.916077, 36.153534, 24.552084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569468, 36.352165, 24.572271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092910, 0.259812, -0.961179,
		-0.490415, -0.828194, -0.271270,
		-0.866522, 0.496581, 0.050469,
		31.309511, 36.501141, 24.587412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717543, 35.906124, 24.025202>,  <31.916077, 36.153534, 24.552084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717543, 35.906124, 24.025202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487570, 36.227535, 24.086905>,  <31.349586, 36.420383, 24.123926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487570, 36.227535, 24.086905>,  <31.717543, 35.906124, 24.025202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487570, 36.227535, 24.086905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103424, 0.258390, -0.960488,
		-0.811639, -0.536261, -0.231660,
		-0.574931, 0.803529, 0.154257,
		31.315090, 36.468594, 24.133183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261442, 35.920528, 23.426325>,  <31.717543, 35.906124, 24.025202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261442, 35.920528, 23.426325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289255, 36.288170, 23.581455>,  <31.305943, 36.508755, 23.674534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289255, 36.288170, 23.581455>,  <31.261442, 35.920528, 23.426325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289255, 36.288170, 23.581455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175813, 0.371392, -0.911679,
		-0.981965, 0.131577, -0.135766,
		0.069533, 0.919106, 0.387827,
		31.310116, 36.563900, 23.697803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838381, 36.422386, 23.026865>,  <31.261442, 35.920528, 23.426325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838381, 36.422386, 23.026865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078045, 36.665440, 23.235401>,  <31.221844, 36.811272, 23.360523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078045, 36.665440, 23.235401>,  <30.838381, 36.422386, 23.026865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078045, 36.665440, 23.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080013, 0.602456, -0.794132,
		-0.796623, 0.517524, 0.312348,
		0.599158, 0.607631, 0.521338,
		31.257792, 36.847729, 23.391802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703682, 37.168785, 22.868677>,  <30.838381, 36.422386, 23.026865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703682, 37.168785, 22.868677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069159, 37.186565, 23.030268>,  <31.288445, 37.197231, 23.127222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069159, 37.186565, 23.030268>,  <30.703682, 37.168785, 22.868677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069159, 37.186565, 23.030268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262205, 0.694988, -0.669508,
		-0.310517, 0.717646, 0.623348,
		0.913689, 0.044449, 0.403976,
		31.343266, 37.199902, 23.151461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869507, 37.830444, 22.689947>,  <30.703682, 37.168785, 22.868677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869507, 37.830444, 22.689947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218498, 37.665802, 22.795294>,  <31.427893, 37.567017, 22.858501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218498, 37.665802, 22.795294>,  <30.869507, 37.830444, 22.689947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218498, 37.665802, 22.795294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474376, 0.584129, -0.658604,
		0.117244, 0.699554, 0.704896,
		0.872480, -0.411604, 0.263366,
		31.480242, 37.542320, 22.874304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398722, 38.348354, 22.953461>,  <30.869507, 37.830444, 22.689947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398722, 38.348354, 22.953461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594515, 38.025650, 22.821068>,  <31.711990, 37.832027, 22.741632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594515, 38.025650, 22.821068>,  <31.398722, 38.348354, 22.953461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594515, 38.025650, 22.821068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353427, 0.530530, -0.770472,
		0.797179, 0.260157, 0.544815,
		0.489484, -0.806757, -0.330981,
		31.741360, 37.783623, 22.721773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158150, 38.571201, 22.689611>,  <31.398722, 38.348354, 22.953461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158150, 38.571201, 22.689611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072365, 38.230270, 22.498806>,  <32.020893, 38.025711, 22.384323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072365, 38.230270, 22.498806>,  <32.158150, 38.571201, 22.689611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072365, 38.230270, 22.498806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316084, 0.401533, -0.859571,
		0.924174, -0.335120, 0.183295,
		-0.214460, -0.852330, -0.477012,
		32.008026, 37.974571, 22.355701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743374, 38.413013, 22.407070>,  <32.158150, 38.571201, 22.689611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743374, 38.413013, 22.407070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494823, 38.198441, 22.178638>,  <32.345692, 38.069698, 22.041578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494823, 38.198441, 22.178638>,  <32.743374, 38.413013, 22.407070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494823, 38.198441, 22.178638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510575, 0.275637, -0.814456,
		0.594309, -0.797664, 0.102613,
		-0.621378, -0.536430, -0.571081,
		32.308411, 38.037514, 22.007315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208141, 38.107212, 21.837618>,  <32.743374, 38.413013, 22.407070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208141, 38.107212, 21.837618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832172, 38.064720, 21.707838>,  <32.606590, 38.039227, 21.629971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832172, 38.064720, 21.707838>,  <33.208141, 38.107212, 21.837618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832172, 38.064720, 21.707838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290002, 0.253021, -0.922973,
		0.180136, -0.961612, -0.207013,
		-0.939920, -0.106226, -0.324448,
		32.550198, 38.032852, 21.610504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207607, 37.757252, 21.135916>,  <33.208141, 38.107212, 21.837618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207607, 37.757252, 21.135916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865253, 37.964115, 21.135248>,  <32.659840, 38.088234, 21.134848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865253, 37.964115, 21.135248>,  <33.207607, 37.757252, 21.135916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865253, 37.964115, 21.135248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207460, 0.340385, -0.917114,
		-0.473728, -0.785292, -0.398621,
		-0.855887, 0.517161, -0.001667,
		32.608486, 38.119263, 21.134748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045124, 37.748470, 20.509277>,  <33.207607, 37.757252, 21.135916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045124, 37.748470, 20.509277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817585, 38.046921, 20.647673>,  <32.681061, 38.225990, 20.730709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817585, 38.046921, 20.647673>,  <33.045124, 37.748470, 20.509277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817585, 38.046921, 20.647673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197916, 0.532504, -0.822963,
		-0.798276, -0.399662, -0.450583,
		-0.568845, 0.746130, 0.345986,
		32.646931, 38.270760, 20.751469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637444, 37.921413, 19.979614>,  <33.045124, 37.748470, 20.509277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637444, 37.921413, 19.979614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640324, 38.231140, 20.232719>,  <32.642052, 38.416977, 20.384583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640324, 38.231140, 20.232719>,  <32.637444, 37.921413, 19.979614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640324, 38.231140, 20.232719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172401, 0.622343, -0.763523,
		-0.985001, 0.114586, -0.129012,
		0.007199, 0.774312, 0.632763,
		32.642483, 38.463432, 20.422548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283657, 38.414528, 19.550558>,  <32.637444, 37.921413, 19.979614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283657, 38.414528, 19.550558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451447, 38.639576, 19.835516>,  <32.552120, 38.774605, 20.006491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451447, 38.639576, 19.835516>,  <32.283657, 38.414528, 19.550558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451447, 38.639576, 19.835516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161044, 0.726206, -0.668348,
		-0.893369, 0.395080, 0.214017,
		0.419472, 0.562615, 0.712395,
		32.577290, 38.808361, 20.049234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941368, 39.093922, 19.500845>,  <32.283657, 38.414528, 19.550558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941368, 39.093922, 19.500845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302876, 39.123535, 19.669474>,  <32.519779, 39.141304, 19.770651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302876, 39.123535, 19.669474>,  <31.941368, 39.093922, 19.500845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302876, 39.123535, 19.669474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292200, 0.612993, -0.734070,
		-0.312765, 0.786612, 0.532372,
		0.903768, 0.074033, 0.421571,
		32.574005, 39.145744, 19.795944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099689, 39.765873, 19.741764>,  <31.941368, 39.093922, 19.500845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099689, 39.765873, 19.741764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433132, 39.578880, 19.624083>,  <32.633198, 39.466686, 19.553473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433132, 39.578880, 19.624083>,  <32.099689, 39.765873, 19.741764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433132, 39.578880, 19.624083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165015, 0.719091, -0.675040,
		0.527127, 0.514172, 0.676583,
		0.833611, -0.467478, -0.294206,
		32.683216, 39.438637, 19.535820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627247, 40.216053, 19.723331>,  <32.099689, 39.765873, 19.741764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627247, 40.216053, 19.723331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730263, 39.924126, 19.470018>,  <32.792072, 39.748970, 19.318031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730263, 39.924126, 19.470018>,  <32.627247, 40.216053, 19.723331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730263, 39.924126, 19.470018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251777, 0.683433, -0.685221,
		0.932890, 0.017024, 0.359760,
		0.257537, -0.729815, -0.633281,
		32.807526, 39.705181, 19.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198246, 40.516689, 19.836849>,  <32.627247, 40.216053, 19.723331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198246, 40.516689, 19.836849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524448, 40.717339, 19.952316>,  <33.720169, 40.837727, 20.021597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524448, 40.717339, 19.952316>,  <33.198246, 40.516689, 19.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524448, 40.717339, 19.952316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116204, 0.630533, -0.767415,
		-0.566966, 0.592285, 0.572492,
		0.815503, 0.501624, 0.288665,
		33.769100, 40.867825, 20.038916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885330, 41.244991, 19.889059>,  <33.198246, 40.516689, 19.836849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885330, 41.244991, 19.889059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279953, 41.211960, 19.832651>,  <33.516727, 41.192142, 19.798807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279953, 41.211960, 19.832651>,  <32.885330, 41.244991, 19.889059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279953, 41.211960, 19.832651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070234, 0.564926, -0.822147,
		0.147556, 0.820999, 0.551532,
		0.986557, -0.082577, -0.141020,
		33.575920, 41.187187, 19.790344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037071, 41.940804, 19.736376>,  <32.885330, 41.244991, 19.889059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037071, 41.940804, 19.736376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290066, 41.670727, 19.584545>,  <33.441864, 41.508682, 19.493446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290066, 41.670727, 19.584545>,  <33.037071, 41.940804, 19.736376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290066, 41.670727, 19.584545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131063, 0.389692, -0.911572,
		0.763401, 0.626306, 0.157983,
		0.632488, -0.675189, -0.379577,
		33.479813, 41.468170, 19.470673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545135, 42.154175, 19.288157>,  <33.037071, 41.940804, 19.736376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545135, 42.154175, 19.288157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501652, 41.779686, 19.154484>,  <33.475559, 41.554993, 19.074280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501652, 41.779686, 19.154484>,  <33.545135, 42.154175, 19.288157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501652, 41.779686, 19.154484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174858, 0.312923, -0.933544,
		0.978574, -0.159923, 0.129686,
		-0.108714, -0.936218, -0.334182,
		33.469036, 41.498821, 19.054230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000622, 41.574699, 18.873804>,  <33.545135, 42.154175, 19.288157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000622, 41.574699, 18.873804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113407, 41.827282, 19.162735>,  <34.181080, 41.978832, 19.336094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113407, 41.827282, 19.162735>,  <34.000622, 41.574699, 18.873804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113407, 41.827282, 19.162735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109958, -0.769183, 0.629498,
		0.953103, -0.098070, -0.286316,
		0.281964, 0.631459, 0.722327,
		34.197998, 42.016720, 19.379433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552433, 41.307041, 19.225685>,  <34.000622, 41.574699, 18.873804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552433, 41.307041, 19.225685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367676, 41.566093, 19.468082>,  <34.256821, 41.721523, 19.613522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367676, 41.566093, 19.468082>,  <34.552433, 41.307041, 19.225685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367676, 41.566093, 19.468082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189438, -0.739516, 0.645933,
		0.866469, 0.183553, 0.464263,
		-0.461893, 0.647630, 0.605996,
		34.229107, 41.760384, 19.649881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856144, 41.279781, 19.946352>,  <34.552433, 41.307041, 19.225685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856144, 41.279781, 19.946352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477650, 41.409092, 19.950851>,  <34.250553, 41.486679, 19.953552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477650, 41.409092, 19.950851>,  <34.856144, 41.279781, 19.946352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477650, 41.409092, 19.950851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196946, -0.603352, 0.772773,
		0.256610, 0.729011, 0.634582,
		-0.946236, 0.323280, 0.011250,
		34.193779, 41.506077, 19.954226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578014, 41.744751, 20.463434>,  <34.856144, 41.279781, 19.946352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578014, 41.744751, 20.463434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318130, 41.467434, 20.338707>,  <34.162201, 41.301044, 20.263870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318130, 41.467434, 20.338707>,  <34.578014, 41.744751, 20.463434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318130, 41.467434, 20.338707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043592, -0.443491, 0.895218,
		-0.758935, 0.568035, 0.318361,
		-0.649705, -0.693291, -0.311819,
		34.123219, 41.259445, 20.245161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085918, 41.700474, 21.012985>,  <34.578014, 41.744751, 20.463434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085918, 41.700474, 21.012985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046814, 41.362705, 20.802315>,  <34.023350, 41.160042, 20.675913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046814, 41.362705, 20.802315>,  <34.085918, 41.700474, 21.012985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046814, 41.362705, 20.802315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118213, -0.515611, 0.848629,
		-0.988164, 0.145225, -0.049414,
		-0.097764, -0.844426, -0.526676,
		34.017487, 41.109379, 20.644312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641800, 41.343517, 21.358793>,  <34.085918, 41.700474, 21.012985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641800, 41.343517, 21.358793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801292, 41.050949, 21.137510>,  <33.896988, 40.875408, 21.004742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801292, 41.050949, 21.137510>,  <33.641800, 41.343517, 21.358793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801292, 41.050949, 21.137510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001701, -0.603824, 0.797116,
		-0.917065, -0.316897, -0.242009,
		0.398735, -0.731419, -0.553206,
		33.920914, 40.831524, 20.971548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242599, 40.706165, 21.590071>,  <33.641800, 41.343517, 21.358793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242599, 40.706165, 21.590071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585102, 40.578453, 21.427645>,  <33.790604, 40.501827, 21.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585102, 40.578453, 21.427645>,  <33.242599, 40.706165, 21.590071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585102, 40.578453, 21.427645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111175, -0.653772, 0.748480,
		-0.504447, -0.686034, -0.524300,
		0.856255, -0.319280, -0.406063,
		33.841980, 40.482670, 21.305826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115189, 39.979744, 21.579401>,  <33.242599, 40.706165, 21.590071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115189, 39.979744, 21.579401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507286, 39.993927, 21.501558>,  <33.742542, 40.002438, 21.454853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507286, 39.993927, 21.501558>,  <33.115189, 39.979744, 21.579401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507286, 39.993927, 21.501558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181483, -0.552635, 0.813424,
		-0.078701, -0.832668, -0.548151,
		0.980240, 0.035462, -0.194608,
		33.801357, 40.004566, 21.443176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439888, 39.295647, 21.625628>,  <33.115189, 39.979744, 21.579401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439888, 39.295647, 21.625628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724495, 39.568649, 21.692484>,  <33.895260, 39.732449, 21.732597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724495, 39.568649, 21.692484>,  <33.439888, 39.295647, 21.625628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724495, 39.568649, 21.692484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457882, -0.630767, 0.626480,
		0.533000, -0.369220, -0.761306,
		0.711516, 0.682503, 0.167140,
		33.937950, 39.773399, 21.742626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140984, 38.953918, 21.699100>,  <33.439888, 39.295647, 21.625628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140984, 38.953918, 21.699100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181736, 39.313709, 21.869068>,  <34.206188, 39.529583, 21.971048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181736, 39.313709, 21.869068>,  <34.140984, 38.953918, 21.699100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181736, 39.313709, 21.869068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453417, -0.422183, 0.784968,
		0.885456, 0.112691, -0.450852,
		0.101884, 0.899479, 0.424920,
		34.212299, 39.583553, 21.996544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812263, 39.003582, 22.047653>,  <34.140984, 38.953918, 21.699100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812263, 39.003582, 22.047653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655251, 39.329617, 22.218090>,  <34.561043, 39.525238, 22.320353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655251, 39.329617, 22.218090>,  <34.812263, 39.003582, 22.047653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655251, 39.329617, 22.218090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415689, -0.256032, 0.872726,
		0.820438, 0.519698, -0.238319,
		-0.392536, 0.815084, 0.426091,
		34.537491, 39.574142, 22.345917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343494, 39.312531, 22.554182>,  <34.812263, 39.003582, 22.047653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343494, 39.312531, 22.554182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982418, 39.443302, 22.666082>,  <34.765770, 39.521767, 22.733223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982418, 39.443302, 22.666082>,  <35.343494, 39.312531, 22.554182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982418, 39.443302, 22.666082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196735, -0.264620, 0.944072,
		0.382674, 0.907244, 0.174552,
		-0.902694, 0.326931, 0.279750,
		34.711609, 39.541382, 22.750008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500965, 39.787342, 23.126181>,  <35.343494, 39.312531, 22.554182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500965, 39.787342, 23.126181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114414, 39.698288, 23.177649>,  <34.882484, 39.644855, 23.208529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114414, 39.698288, 23.177649>,  <35.500965, 39.787342, 23.126181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114414, 39.698288, 23.177649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194161, -0.303694, 0.932776,
		-0.168591, 0.926393, 0.336709,
		-0.966374, -0.222634, 0.128669,
		34.824501, 39.631496, 23.216249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356701, 40.125862, 23.709299>,  <35.500965, 39.787342, 23.126181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356701, 40.125862, 23.709299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064240, 39.856270, 23.667040>,  <34.888763, 39.694515, 23.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064240, 39.856270, 23.667040>,  <35.356701, 40.125862, 23.709299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064240, 39.856270, 23.667040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043186, -0.200272, 0.978788,
		-0.680846, 0.711080, 0.175536,
		-0.731152, -0.673985, -0.105646,
		34.844894, 39.654076, 23.635345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775517, 40.212502, 24.180613>,  <35.356701, 40.125862, 23.709299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775517, 40.212502, 24.180613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758133, 39.829540, 24.066429>,  <34.747704, 39.599762, 23.997919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758133, 39.829540, 24.066429>,  <34.775517, 40.212502, 24.180613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758133, 39.829540, 24.066429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000852, -0.285765, 0.958299,
		-0.999055, 0.041401, 0.013234,
		-0.043456, -0.957405, -0.285460,
		34.745094, 39.542320, 23.980791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274181, 39.939781, 24.618755>,  <34.775517, 40.212502, 24.180613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274181, 39.939781, 24.618755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449203, 39.617611, 24.458839>,  <34.554218, 39.424309, 24.362890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449203, 39.617611, 24.458839>,  <34.274181, 39.939781, 24.618755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449203, 39.617611, 24.458839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078488, -0.477126, 0.875323,
		-0.895758, -0.351626, -0.271987,
		0.437558, -0.805425, -0.399791,
		34.580471, 39.375984, 24.338902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865532, 39.410114, 24.880411>,  <34.274181, 39.939781, 24.618755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865532, 39.410114, 24.880411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211208, 39.246807, 24.762774>,  <34.418613, 39.148823, 24.692190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211208, 39.246807, 24.762774>,  <33.865532, 39.410114, 24.880411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211208, 39.246807, 24.762774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086162, -0.455781, 0.885912,
		-0.495739, -0.790934, -0.358702,
		0.864187, -0.408275, -0.294097,
		34.470467, 39.124325, 24.674545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885857, 38.716400, 24.865328>,  <33.865532, 39.410114, 24.880411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885857, 38.716400, 24.865328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268375, 38.805023, 24.941654>,  <34.497887, 38.858196, 24.987450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268375, 38.805023, 24.941654>,  <33.885857, 38.716400, 24.865328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268375, 38.805023, 24.941654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034312, -0.563038, 0.825718,
		0.290382, -0.796178, -0.530829,
		0.956295, 0.221560, 0.190815,
		34.555264, 38.871490, 24.998899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214104, 38.059620, 25.145571>,  <33.885857, 38.716400, 24.865328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214104, 38.059620, 25.145571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471508, 38.341640, 25.264761>,  <34.625950, 38.510853, 25.336275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471508, 38.341640, 25.264761>,  <34.214104, 38.059620, 25.145571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471508, 38.341640, 25.264761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148433, -0.496846, 0.855051,
		0.750905, -0.506007, -0.424380,
		0.643513, 0.705054, 0.297976,
		34.664562, 38.553158, 25.354155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769661, 37.679424, 25.405039>,  <34.214104, 38.059620, 25.145571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769661, 37.679424, 25.405039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815887, 38.041931, 25.567678>,  <34.843624, 38.259434, 25.665262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815887, 38.041931, 25.567678>,  <34.769661, 37.679424, 25.405039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815887, 38.041931, 25.567678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106390, -0.418281, 0.902066,
		0.987585, -0.060994, -0.144759,
		0.115570, 0.906267, 0.406599,
		34.850559, 38.313812, 25.689659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357464, 37.662323, 25.756411>,  <34.769661, 37.679424, 25.405039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357464, 37.662323, 25.756411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174831, 37.978897, 25.918978>,  <35.065254, 38.168842, 26.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174831, 37.978897, 25.918978>,  <35.357464, 37.662323, 25.756411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174831, 37.978897, 25.918978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116372, -0.399759, 0.909203,
		0.882040, 0.462417, 0.090420,
		-0.456577, 0.791431, 0.406416,
		35.037857, 38.216328, 26.040903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713680, 37.796566, 26.398500>,  <35.357464, 37.662323, 25.756411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713680, 37.796566, 26.398500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355156, 37.969280, 26.438869>,  <35.140041, 38.072906, 26.463091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355156, 37.969280, 26.438869>,  <35.713680, 37.796566, 26.398500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355156, 37.969280, 26.438869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029220, -0.284619, 0.958195,
		0.442455, 0.855896, 0.267725,
		-0.896315, 0.431781, 0.100922,
		35.086262, 38.098816, 26.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678608, 38.197433, 27.002375>,  <35.713680, 37.796566, 26.398500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678608, 38.197433, 27.002375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293224, 38.098362, 26.961594>,  <35.061993, 38.038921, 26.937124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293224, 38.098362, 26.961594>,  <35.678608, 38.197433, 27.002375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293224, 38.098362, 26.961594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048805, -0.211937, 0.976064,
		-0.263356, 0.945378, 0.192106,
		-0.963463, -0.247676, -0.101954,
		35.004185, 38.024059, 26.931007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490517, 38.276588, 27.665934>,  <35.678608, 38.197433, 27.002375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490517, 38.276588, 27.665934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207161, 38.056305, 27.489344>,  <35.037148, 37.924133, 27.383389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207161, 38.056305, 27.489344>,  <35.490517, 38.276588, 27.665934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207161, 38.056305, 27.489344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298669, -0.332839, 0.894436,
		-0.639516, 0.765465, 0.071300,
		-0.708390, -0.550711, -0.441476,
		34.994644, 37.891090, 27.356901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932327, 38.374332, 28.062782>,  <35.490517, 38.276588, 27.665934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932327, 38.374332, 28.062782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843151, 38.046581, 27.851530>,  <34.789646, 37.849930, 27.724779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843151, 38.046581, 27.851530>,  <34.932327, 38.374332, 28.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843151, 38.046581, 27.851530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357147, -0.435446, 0.826337,
		-0.907052, 0.372845, -0.195558,
		-0.222941, -0.819374, -0.528132,
		34.776268, 37.800770, 27.693090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131149, 38.259743, 28.194855>,  <34.932327, 38.374332, 28.062782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131149, 38.259743, 28.194855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320953, 37.921307, 28.097727>,  <34.434837, 37.718243, 28.039450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320953, 37.921307, 28.097727>,  <34.131149, 38.259743, 28.194855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320953, 37.921307, 28.097727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294657, -0.412617, 0.861931,
		-0.829466, -0.337449, -0.445100,
		0.474514, -0.846094, -0.242820,
		34.463306, 37.667477, 28.024881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709671, 37.747150, 28.689028>,  <34.131149, 38.259743, 28.194855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709671, 37.747150, 28.689028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001259, 37.527561, 28.525454>,  <34.176212, 37.395809, 28.427309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001259, 37.527561, 28.525454>,  <33.709671, 37.747150, 28.689028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001259, 37.527561, 28.525454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080642, -0.524357, 0.847671,
		-0.679778, -0.650905, -0.337971,
		0.728972, -0.548973, -0.408936,
		34.219952, 37.362869, 28.402773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537216, 37.117912, 28.665339>,  <33.709671, 37.747150, 28.689028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537216, 37.117912, 28.665339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935787, 37.142555, 28.688421>,  <34.174931, 37.157341, 28.702271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935787, 37.142555, 28.688421>,  <33.537216, 37.117912, 28.665339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935787, 37.142555, 28.688421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018265, -0.510036, 0.859959,
		0.082415, -0.857944, -0.507090,
		0.996431, 0.061612, 0.057705,
		34.234718, 37.161037, 28.705732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665344, 36.609207, 29.052011>,  <33.537216, 37.117912, 28.665339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665344, 36.609207, 29.052011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023300, 36.787136, 29.066479>,  <34.238071, 36.893894, 29.075159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023300, 36.787136, 29.066479>,  <33.665344, 36.609207, 29.052011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023300, 36.787136, 29.066479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104530, -0.287701, 0.951999,
		0.433877, -0.848152, -0.303957,
		0.894888, 0.444823, 0.036169,
		34.291767, 36.920582, 29.077330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073071, 36.080273, 29.389904>,  <33.665344, 36.609207, 29.052011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073071, 36.080273, 29.389904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239948, 36.443359, 29.407778>,  <34.340076, 36.661213, 29.418503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239948, 36.443359, 29.407778>,  <34.073071, 36.080273, 29.389904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239948, 36.443359, 29.407778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241114, -0.157957, 0.957556,
		0.876249, -0.388712, -0.284762,
		0.417194, 0.907718, 0.044686,
		34.365105, 36.715675, 29.421183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621071, 35.951973, 29.912355>,  <34.073071, 36.080273, 29.389904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621071, 35.951973, 29.912355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563061, 36.345375, 29.869116>,  <34.528255, 36.581417, 29.843172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563061, 36.345375, 29.869116>,  <34.621071, 35.951973, 29.912355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563061, 36.345375, 29.869116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056838, 0.117357, 0.991462,
		0.987795, 0.137639, -0.072920,
		-0.145022, 0.983505, -0.108101,
		34.519554, 36.640427, 29.836685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195194, 36.290516, 30.238499>,  <34.621071, 35.951973, 29.912355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195194, 36.290516, 30.238499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886341, 36.544422, 30.250431>,  <34.701031, 36.696766, 30.257591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886341, 36.544422, 30.250431>,  <35.195194, 36.290516, 30.238499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886341, 36.544422, 30.250431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055400, 0.020472, 0.998254,
		0.633045, 0.772435, -0.050973,
		-0.772130, 0.634764, 0.029833,
		34.654701, 36.734852, 30.259380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289425, 36.733822, 30.771812>,  <35.195194, 36.290516, 30.238499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289425, 36.733822, 30.771812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905224, 36.817146, 30.698019>,  <34.674702, 36.867142, 30.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905224, 36.817146, 30.698019>,  <35.289425, 36.733822, 30.771812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905224, 36.817146, 30.698019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094714, 0.378653, 0.920680,
		0.261640, 0.901793, -0.343969,
		-0.960507, 0.208308, -0.184483,
		34.617073, 36.879639, 30.642673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206772, 37.401894, 30.907108>,  <35.289425, 36.733822, 30.771812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206772, 37.401894, 30.907108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845016, 37.234295, 30.939394>,  <34.627964, 37.133736, 30.958765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845016, 37.234295, 30.939394>,  <35.206772, 37.401894, 30.907108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845016, 37.234295, 30.939394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033484, 0.118892, 0.992342,
		-0.425388, 0.900169, -0.093495,
		-0.904391, -0.419000, 0.080716,
		34.573700, 37.108593, 30.963610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761143, 37.845367, 31.407316>,  <35.206772, 37.401894, 30.907108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761143, 37.845367, 31.407316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590103, 37.484112, 31.422831>,  <34.487480, 37.267361, 31.432138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590103, 37.484112, 31.422831>,  <34.761143, 37.845367, 31.407316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590103, 37.484112, 31.422831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093553, 0.086888, 0.991816,
		-0.899113, 0.420473, -0.121645,
		-0.427602, -0.903135, 0.038786,
		34.461823, 37.213173, 31.434465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419289, 37.819611, 31.995945>,  <34.761143, 37.845367, 31.407316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419289, 37.819611, 31.995945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397232, 37.425430, 31.931637>,  <34.383999, 37.188923, 31.893051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397232, 37.425430, 31.931637>,  <34.419289, 37.819611, 31.995945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397232, 37.425430, 31.931637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015411, -0.161836, 0.986697,
		-0.998360, 0.051930, 0.024111,
		-0.055141, -0.985450, -0.160770,
		34.380692, 37.129795, 31.883406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952621, 37.535217, 32.461700>,  <34.419289, 37.819611, 31.995945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952621, 37.535217, 32.461700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184437, 37.227264, 32.354801>,  <34.323524, 37.042492, 32.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184437, 37.227264, 32.354801>,  <33.952621, 37.535217, 32.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184437, 37.227264, 32.354801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053548, -0.363201, 0.930171,
		-0.813184, -0.524759, -0.251714,
		0.579538, -0.769879, -0.267250,
		34.358299, 36.996300, 32.274628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691982, 37.030140, 32.911449>,  <33.952621, 37.535217, 32.461700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691982, 37.030140, 32.911449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046452, 36.917122, 32.764549>,  <34.259132, 36.849312, 32.676411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046452, 36.917122, 32.764549>,  <33.691982, 37.030140, 32.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046452, 36.917122, 32.764549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155159, -0.565884, 0.809753,
		-0.436611, -0.774561, -0.457631,
		0.886170, -0.282542, -0.367251,
		34.312302, 36.832359, 32.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821808, 36.423656, 33.134342>,  <33.691982, 37.030140, 32.911449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821808, 36.423656, 33.134342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187889, 36.544415, 33.027569>,  <34.407539, 36.616871, 32.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187889, 36.544415, 33.027569>,  <33.821808, 36.423656, 33.134342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187889, 36.544415, 33.027569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361822, -0.323949, 0.874152,
		0.177433, -0.896612, -0.405714,
		0.915206, 0.301900, -0.266934,
		34.462452, 36.634983, 32.947487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231762, 35.909840, 33.339081>,  <33.821808, 36.423656, 33.134342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231762, 35.909840, 33.339081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469406, 36.227482, 33.287819>,  <34.611992, 36.418068, 33.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469406, 36.227482, 33.287819>,  <34.231762, 35.909840, 33.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469406, 36.227482, 33.287819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539402, -0.275124, 0.795834,
		0.596718, -0.541944, -0.591797,
		0.594115, 0.794106, -0.128154,
		34.647640, 36.465714, 33.249374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768974, 35.649750, 33.565975>,  <34.231762, 35.909840, 33.339081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768974, 35.649750, 33.565975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844532, 36.042549, 33.565868>,  <34.889866, 36.278229, 33.565804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844532, 36.042549, 33.565868>,  <34.768974, 35.649750, 33.565975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844532, 36.042549, 33.565868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466992, -0.089592, 0.879711,
		0.863850, -0.166297, -0.475509,
		0.188895, 0.981997, -0.000265,
		34.901199, 36.337147, 33.565788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491776, 35.827484, 33.752026>,  <34.768974, 35.649750, 33.565975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491776, 35.827484, 33.752026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257961, 36.138447, 33.844944>,  <35.117672, 36.325024, 33.900696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257961, 36.138447, 33.844944>,  <35.491776, 35.827484, 33.752026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257961, 36.138447, 33.844944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330391, -0.033427, 0.943252,
		0.741053, 0.628112, -0.237309,
		-0.584536, 0.777404, 0.232294,
		35.082600, 36.371670, 33.914631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869579, 36.341476, 34.022091>,  <35.491776, 35.827484, 33.752026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869579, 36.341476, 34.022091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511311, 36.440563, 34.169827>,  <35.296349, 36.500015, 34.258469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511311, 36.440563, 34.169827>,  <35.869579, 36.341476, 34.022091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511311, 36.440563, 34.169827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342991, -0.143849, 0.928259,
		0.283077, 0.958093, 0.043875,
		-0.895670, 0.247720, 0.369337,
		35.242611, 36.514881, 34.280628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069397, 36.471062, 33.313976>,  <35.869579, 36.341476, 34.022091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069397, 36.471062, 33.313976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411503, 36.296429, 33.425629>,  <36.616768, 36.191650, 33.492622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411503, 36.296429, 33.425629>,  <36.069397, 36.471062, 33.313976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411503, 36.296429, 33.425629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424525, 0.281432, -0.860566,
		0.297152, 0.854512, 0.426040,
		0.855266, -0.436583, 0.279134,
		36.668083, 36.165455, 33.509369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588951, 37.030602, 33.280235>,  <36.069397, 36.471062, 33.313976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588951, 37.030602, 33.280235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762371, 36.670177, 33.284859>,  <36.866425, 36.453922, 33.287632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762371, 36.670177, 33.284859>,  <36.588951, 37.030602, 33.280235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762371, 36.670177, 33.284859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529317, 0.244262, -0.812502,
		0.729286, 0.358377, 0.582844,
		0.433548, -0.901056, 0.011558,
		36.892437, 36.399860, 33.288326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261185, 37.085457, 33.168159>,  <36.588951, 37.030602, 33.280235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261185, 37.085457, 33.168159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215992, 36.703953, 33.056747>,  <37.188877, 36.475052, 32.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215992, 36.703953, 33.056747>,  <37.261185, 37.085457, 33.168159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215992, 36.703953, 33.056747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577685, 0.165023, -0.799405,
		0.808403, -0.251222, 0.532327,
		-0.112982, -0.953758, -0.278532,
		37.182098, 36.417824, 32.973186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956223, 36.837730, 32.922771>,  <37.261185, 37.085457, 33.168159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956223, 36.837730, 32.922771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708820, 36.566109, 32.764610>,  <37.560379, 36.403137, 32.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708820, 36.566109, 32.764610>,  <37.956223, 36.837730, 32.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708820, 36.566109, 32.764610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462999, 0.091640, -0.881609,
		0.634891, -0.728350, 0.257720,
		-0.618502, -0.679050, -0.395407,
		37.523270, 36.362392, 32.645988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421288, 36.511200, 32.595718>,  <37.956223, 36.837730, 32.922771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421288, 36.511200, 32.595718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083096, 36.385670, 32.422897>,  <37.880180, 36.310352, 32.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083096, 36.385670, 32.422897>,  <38.421288, 36.511200, 32.595718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083096, 36.385670, 32.422897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436907, 0.058657, -0.897592,
		0.307035, -0.947665, 0.087521,
		-0.845483, -0.313831, -0.432052,
		37.829449, 36.291519, 32.293282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661743, 36.013126, 32.144482>,  <38.421288, 36.511200, 32.595718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661743, 36.013126, 32.144482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304901, 36.161072, 32.040668>,  <38.090797, 36.249840, 31.978382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304901, 36.161072, 32.040668>,  <38.661743, 36.013126, 32.144482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304901, 36.161072, 32.040668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362975, 0.244585, -0.899126,
		-0.269076, -0.896315, -0.352446,
		-0.892102, 0.369862, -0.259528,
		38.037270, 36.272030, 31.962811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518185, 35.826591, 31.470739>,  <38.661743, 36.013126, 32.144482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518185, 35.826591, 31.470739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293240, 36.151432, 31.533016>,  <38.158272, 36.346336, 31.570383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293240, 36.151432, 31.533016>,  <38.518185, 35.826591, 31.470739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293240, 36.151432, 31.533016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131208, 0.273541, -0.952869,
		-0.816412, -0.515433, -0.260384,
		-0.562366, 0.812099, 0.155694,
		38.124531, 36.395061, 31.579723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252995, 35.794899, 30.855268>,  <38.518185, 35.826591, 31.470739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252995, 35.794899, 30.855268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191769, 36.157822, 31.011919>,  <38.155033, 36.375576, 31.105909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191769, 36.157822, 31.011919>,  <38.252995, 35.794899, 30.855268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191769, 36.157822, 31.011919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134053, 0.411696, -0.901408,
		-0.979082, -0.085472, -0.184642,
		-0.153061, 0.907304, 0.391627,
		38.145851, 36.430012, 31.129408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849270, 36.013939, 30.365980>,  <38.252995, 35.794899, 30.855268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849270, 36.013939, 30.365980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958054, 36.357204, 30.540152>,  <38.023323, 36.563164, 30.644653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958054, 36.357204, 30.540152>,  <37.849270, 36.013939, 30.365980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958054, 36.357204, 30.540152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148604, 0.409602, -0.900079,
		-0.950765, 0.309494, -0.016130,
		0.271962, 0.858161, 0.435427,
		38.039642, 36.614651, 30.670780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437855, 36.552807, 30.100885>,  <37.849270, 36.013939, 30.365980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437855, 36.552807, 30.100885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758057, 36.743542, 30.246109>,  <37.950180, 36.857983, 30.333242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758057, 36.743542, 30.246109>,  <37.437855, 36.552807, 30.100885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758057, 36.743542, 30.246109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142442, 0.437051, -0.888086,
		-0.582148, 0.762635, 0.281942,
		0.800509, 0.476837, 0.363059,
		37.998211, 36.886593, 30.355026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365891, 37.173771, 29.771559>,  <37.437855, 36.552807, 30.100885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365891, 37.173771, 29.771559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750084, 37.170822, 29.882858>,  <37.980598, 37.169052, 29.949638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750084, 37.170822, 29.882858>,  <37.365891, 37.173771, 29.771559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750084, 37.170822, 29.882858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220369, 0.630821, -0.743978,
		-0.170039, 0.775894, 0.607516,
		0.960481, -0.007372, 0.278247,
		38.038227, 37.168610, 29.966331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498249, 37.808460, 29.782181>,  <37.365891, 37.173771, 29.771559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498249, 37.808460, 29.782181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846668, 37.615528, 29.745005>,  <38.055717, 37.499767, 29.722698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846668, 37.615528, 29.745005>,  <37.498249, 37.808460, 29.782181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846668, 37.615528, 29.745005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285158, 0.650594, -0.703855,
		0.399958, 0.586587, 0.704237,
		0.871045, -0.482331, -0.092940,
		38.107983, 37.470829, 29.717123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924385, 38.302452, 29.706453>,  <37.498249, 37.808460, 29.782181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924385, 38.302452, 29.706453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127930, 37.984310, 29.574718>,  <38.250057, 37.793423, 29.495678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127930, 37.984310, 29.574718>,  <37.924385, 38.302452, 29.706453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127930, 37.984310, 29.574718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365435, 0.545976, -0.753902,
		0.779432, 0.263281, 0.568479,
		0.508864, -0.795357, -0.329339,
		38.280590, 37.745705, 29.475916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620224, 38.588604, 29.484535>,  <37.924385, 38.302452, 29.706453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620224, 38.588604, 29.484535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501213, 38.260868, 29.288509>,  <38.429806, 38.064228, 29.170895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501213, 38.260868, 29.288509>,  <38.620224, 38.588604, 29.484535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501213, 38.260868, 29.288509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273160, 0.418795, -0.866022,
		0.914801, -0.391532, 0.099207,
		-0.297528, -0.819337, -0.490065,
		38.411953, 38.015068, 29.141489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877827, 38.696842, 28.856430>,  <38.620224, 38.588604, 29.484535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877827, 38.696842, 28.856430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610168, 38.404160, 28.804516>,  <38.449574, 38.228550, 28.773367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610168, 38.404160, 28.804516>,  <38.877827, 38.696842, 28.856430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610168, 38.404160, 28.804516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256546, 0.391368, -0.883751,
		0.697442, -0.558064, -0.449600,
		-0.669148, -0.731708, -0.129787,
		38.409424, 38.184647, 28.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007565, 38.411747, 28.159266>,  <38.877827, 38.696842, 28.856430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007565, 38.411747, 28.159266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631088, 38.317936, 28.256559>,  <38.405205, 38.261650, 28.314936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631088, 38.317936, 28.256559>,  <39.007565, 38.411747, 28.159266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631088, 38.317936, 28.256559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322749, 0.410957, -0.852612,
		0.100005, -0.880971, -0.462482,
		-0.941187, -0.234531, 0.243235,
		38.348732, 38.247578, 28.329529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872711, 38.128483, 27.564507>,  <39.007565, 38.411747, 28.159266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872711, 38.128483, 27.564507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534225, 38.222809, 27.755632>,  <38.331135, 38.279404, 27.870308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534225, 38.222809, 27.755632>,  <38.872711, 38.128483, 27.564507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534225, 38.222809, 27.755632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407508, 0.291341, -0.865481,
		-0.343298, -0.927099, -0.150443,
		-0.846217, 0.235812, 0.477817,
		38.280361, 38.293552, 27.898977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313110, 37.840347, 27.186285>,  <38.872711, 38.128483, 27.564507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313110, 37.840347, 27.186285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147930, 38.135891, 27.399288>,  <38.048824, 38.313217, 27.527090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147930, 38.135891, 27.399288>,  <38.313110, 37.840347, 27.186285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147930, 38.135891, 27.399288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452457, 0.341006, -0.824013,
		-0.790416, -0.581211, 0.193483,
		-0.412947, 0.738856, 0.532510,
		38.024048, 38.357548, 27.559042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564026, 37.820564, 27.007420>,  <38.313110, 37.840347, 27.186285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564026, 37.820564, 27.007420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654644, 38.177547, 27.163469>,  <37.709015, 38.391735, 27.257099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654644, 38.177547, 27.163469>,  <37.564026, 37.820564, 27.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654644, 38.177547, 27.163469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496741, 0.450402, -0.741880,
		-0.837809, -0.025719, 0.545357,
		0.226549, 0.892455, 0.390126,
		37.722610, 38.445286, 27.280508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940086, 38.116631, 26.871635>,  <37.564026, 37.820564, 27.007420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940086, 38.116631, 26.871635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185047, 38.422588, 26.951542>,  <37.332024, 38.606163, 26.999485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185047, 38.422588, 26.951542>,  <36.940086, 38.116631, 26.871635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185047, 38.422588, 26.951542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229194, 0.413622, -0.881128,
		-0.756595, 0.493819, 0.428611,
		0.612401, 0.764892, 0.199764,
		37.368767, 38.652058, 27.011471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539577, 38.687881, 26.837172>,  <36.940086, 38.116631, 26.871635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539577, 38.687881, 26.837172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921177, 38.779251, 26.759487>,  <37.150135, 38.834072, 26.712877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921177, 38.779251, 26.759487>,  <36.539577, 38.687881, 26.837172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921177, 38.779251, 26.759487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276578, 0.420378, -0.864168,
		-0.115752, 0.878127, 0.464214,
		0.953995, 0.228420, -0.194211,
		37.207375, 38.847778, 26.701223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498882, 39.407749, 26.474213>,  <36.539577, 38.687881, 26.837172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498882, 39.407749, 26.474213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854214, 39.232887, 26.417965>,  <37.067413, 39.127972, 26.384216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854214, 39.232887, 26.417965>,  <36.498882, 39.407749, 26.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854214, 39.232887, 26.417965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035744, 0.239468, -0.970246,
		0.457823, 0.866920, 0.197099,
		0.888324, -0.437156, -0.140621,
		37.120712, 39.101742, 26.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669846, 39.712772, 25.905792>,  <36.498882, 39.407749, 26.474213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669846, 39.712772, 25.905792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935112, 39.413597, 25.917173>,  <37.094269, 39.234093, 25.924002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935112, 39.413597, 25.917173>,  <36.669846, 39.712772, 25.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935112, 39.413597, 25.917173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017547, -0.022470, -0.999594,
		0.748271, 0.663391, -0.001777,
		0.663161, -0.747935, 0.028454,
		37.134060, 39.189217, 25.925709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015568, 39.820534, 25.252197>,  <36.669846, 39.712772, 25.905792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015568, 39.820534, 25.252197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114864, 39.447983, 25.358707>,  <37.174442, 39.224453, 25.422613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114864, 39.447983, 25.358707>,  <37.015568, 39.820534, 25.252197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114864, 39.447983, 25.358707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119134, -0.243441, -0.962571,
		0.961344, 0.270676, 0.050527,
		0.248244, -0.931381, 0.266277,
		37.189339, 39.168568, 25.438591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668591, 39.654308, 24.878790>,  <37.015568, 39.820534, 25.252197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668591, 39.654308, 24.878790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519703, 39.296726, 24.978621>,  <37.430370, 39.082176, 25.038519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519703, 39.296726, 24.978621>,  <37.668591, 39.654308, 24.878790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519703, 39.296726, 24.978621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145624, -0.321820, -0.935535,
		0.916649, -0.311881, 0.249970,
		-0.372221, -0.893959, 0.249578,
		37.408035, 39.028538, 25.053493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095009, 39.150684, 24.566790>,  <37.668591, 39.654308, 24.878790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095009, 39.150684, 24.566790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756413, 38.951878, 24.643126>,  <37.553253, 38.832592, 24.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756413, 38.951878, 24.643126>,  <38.095009, 39.150684, 24.566790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756413, 38.951878, 24.643126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046740, -0.426441, -0.903307,
		0.530342, -0.755724, 0.384211,
		-0.846494, -0.497019, 0.190838,
		37.502464, 38.802773, 24.700377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117096, 38.373714, 24.385071>,  <38.095009, 39.150684, 24.566790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117096, 38.373714, 24.385071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736732, 38.496696, 24.371010>,  <37.508514, 38.570488, 24.362574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736732, 38.496696, 24.371010>,  <38.117096, 38.373714, 24.385071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736732, 38.496696, 24.371010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129506, -0.498542, -0.857137,
		-0.281060, -0.810509, 0.513888,
		-0.950912, 0.307459, -0.035154,
		37.451458, 38.588936, 24.360464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731709, 37.827442, 24.128954>,  <38.117096, 38.373714, 24.385071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731709, 37.827442, 24.128954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515369, 38.154915, 24.051756>,  <37.385567, 38.351398, 24.005438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515369, 38.154915, 24.051756>,  <37.731709, 37.827442, 24.128954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515369, 38.154915, 24.051756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195695, -0.345626, -0.917740,
		-0.818042, -0.458585, 0.347142,
		-0.540843, 0.818683, -0.192994,
		37.353115, 38.400520, 23.993858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119907, 37.550842, 23.763290>,  <37.731709, 37.827442, 24.128954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119907, 37.550842, 23.763290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149750, 37.938858, 23.670807>,  <37.167656, 38.171669, 23.615316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149750, 37.938858, 23.670807>,  <37.119907, 37.550842, 23.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149750, 37.938858, 23.670807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123463, -0.221086, -0.967408,
		-0.989541, 0.100723, 0.103269,
		0.074609, 0.970039, -0.231209,
		37.172131, 38.229870, 23.601444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480949, 37.636040, 23.535786>,  <37.119907, 37.550842, 23.763290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480949, 37.636040, 23.535786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702869, 37.935894, 23.391428>,  <36.836021, 38.115807, 23.304813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702869, 37.935894, 23.391428>,  <36.480949, 37.636040, 23.535786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702869, 37.935894, 23.391428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258716, -0.256824, -0.931186,
		-0.790738, 0.609988, 0.051458,
		0.554797, 0.749637, -0.360894,
		36.869308, 38.160786, 23.283159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959499, 38.045918, 23.242712>,  <36.480949, 37.636040, 23.535786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959499, 38.045918, 23.242712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324139, 38.104866, 23.089211>,  <36.542923, 38.140236, 22.997108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324139, 38.104866, 23.089211>,  <35.959499, 38.045918, 23.242712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324139, 38.104866, 23.089211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375486, -0.081468, -0.923240,
		-0.167323, 0.985720, -0.018931,
		0.911599, 0.147371, -0.383756,
		36.597618, 38.149078, 22.974083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878883, 38.510021, 22.791292>,  <35.959499, 38.045918, 23.242712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878883, 38.510021, 22.791292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244480, 38.393162, 22.678673>,  <36.463837, 38.323048, 22.611101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244480, 38.393162, 22.678673>,  <35.878883, 38.510021, 22.791292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244480, 38.393162, 22.678673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283335, 0.037115, -0.958302,
		0.290417, 0.955652, -0.048854,
		0.913991, -0.292150, -0.281549,
		36.518677, 38.305515, 22.594208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143555, 39.027187, 22.296339>,  <35.878883, 38.510021, 22.791292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143555, 39.027187, 22.296339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359863, 38.701050, 22.213602>,  <36.489647, 38.505367, 22.163960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359863, 38.701050, 22.213602>,  <36.143555, 39.027187, 22.296339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359863, 38.701050, 22.213602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327618, 0.022329, -0.944546,
		0.774746, 0.578550, -0.255046,
		0.540772, -0.815341, -0.206843,
		36.522095, 38.456448, 22.151548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631248, 39.270779, 21.803728>,  <36.143555, 39.027187, 22.296339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631248, 39.270779, 21.803728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644665, 38.872677, 21.767187>,  <36.652714, 38.633816, 21.745262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644665, 38.872677, 21.767187>,  <36.631248, 39.270779, 21.803728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644665, 38.872677, 21.767187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035892, 0.090147, -0.995282,
		0.998793, 0.036657, -0.032698,
		0.033537, -0.995254, -0.091354,
		36.654724, 38.574100, 21.739780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085350, 39.206802, 21.275686>,  <36.631248, 39.270779, 21.803728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085350, 39.206802, 21.275686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840107, 38.895527, 21.330128>,  <36.692963, 38.708763, 21.362793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840107, 38.895527, 21.330128>,  <37.085350, 39.206802, 21.275686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840107, 38.895527, 21.330128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334114, 0.099307, -0.937286,
		0.715871, -0.620128, -0.320890,
		-0.613104, -0.778189, 0.136103,
		36.656174, 38.662071, 21.370958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240070, 38.604149, 20.801645>,  <37.085350, 39.206802, 21.275686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240070, 38.604149, 20.801645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853989, 38.614056, 20.905777>,  <36.622341, 38.619999, 20.968256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853989, 38.614056, 20.905777>,  <37.240070, 38.604149, 20.801645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853989, 38.614056, 20.905777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256172, 0.110465, -0.960299,
		-0.052540, -0.993571, -0.100276,
		-0.965202, 0.024766, 0.260329,
		36.564426, 38.621487, 20.983875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739456, 38.166580, 20.356670>,  <37.240070, 38.604149, 20.801645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739456, 38.166580, 20.356670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525902, 38.462364, 20.520702>,  <36.397770, 38.639835, 20.619122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525902, 38.462364, 20.520702>,  <36.739456, 38.166580, 20.356670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525902, 38.462364, 20.520702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328152, 0.265773, -0.906466,
		-0.779285, -0.618515, 0.100765,
		-0.533882, 0.739462, 0.410080,
		36.365738, 38.684204, 20.643726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752529, 37.577324, 19.802114>,  <36.739456, 38.166580, 20.356670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752529, 37.577324, 19.802114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603245, 37.209557, 19.752487>,  <36.513676, 36.988895, 19.722712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603245, 37.209557, 19.752487>,  <36.752529, 37.577324, 19.802114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603245, 37.209557, 19.752487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421446, -0.287149, 0.860191,
		-0.826497, 0.268744, 0.494650,
		-0.373210, -0.919414, -0.124067,
		36.491283, 36.933731, 19.715267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449223, 37.412029, 20.407566>,  <36.752529, 37.577324, 19.802114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449223, 37.412029, 20.407566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554253, 37.072456, 20.224106>,  <36.617271, 36.868713, 20.114029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554253, 37.072456, 20.224106>,  <36.449223, 37.412029, 20.407566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554253, 37.072456, 20.224106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251354, -0.398740, 0.881945,
		-0.931598, -0.346862, 0.108684,
		0.262577, -0.848936, -0.458650,
		36.633026, 36.817776, 20.086512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088272, 36.849270, 20.791504>,  <36.449223, 37.412029, 20.407566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088272, 36.849270, 20.791504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373196, 36.648933, 20.594822>,  <36.544151, 36.528732, 20.476812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373196, 36.648933, 20.594822>,  <36.088272, 36.849270, 20.791504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373196, 36.648933, 20.594822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120588, -0.602818, 0.788714,
		-0.691428, -0.621102, -0.368997,
		0.712310, -0.500842, -0.491703,
		36.586887, 36.498680, 20.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003872, 36.117691, 20.961691>,  <36.088272, 36.849270, 20.791504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003872, 36.117691, 20.961691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369728, 36.138523, 20.801329>,  <36.589241, 36.151020, 20.705112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369728, 36.138523, 20.801329>,  <36.003872, 36.117691, 20.961691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369728, 36.138523, 20.801329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326382, -0.680297, 0.656255,
		-0.238558, -0.731084, -0.639223,
		0.914639, 0.052076, -0.400903,
		36.644119, 36.154144, 20.681057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201881, 35.418522, 20.793854>,  <36.003872, 36.117691, 20.961691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201881, 35.418522, 20.793854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525909, 35.647087, 20.846436>,  <36.720325, 35.784225, 20.877985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525909, 35.647087, 20.846436>,  <36.201881, 35.418522, 20.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525909, 35.647087, 20.846436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347941, -0.648925, 0.676634,
		0.471941, -0.502380, -0.724490,
		0.810067, 0.571411, 0.131455,
		36.768929, 35.818512, 20.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842300, 34.896385, 20.875036>,  <36.201881, 35.418522, 20.793854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842300, 34.896385, 20.875036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950531, 35.246986, 21.034304>,  <37.015469, 35.457348, 21.129864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950531, 35.246986, 21.034304>,  <36.842300, 34.896385, 20.875036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950531, 35.246986, 21.034304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564801, -0.479462, 0.671651,
		0.779609, 0.043155, -0.624778,
		0.270572, 0.876501, 0.398167,
		37.031704, 35.509937, 21.153753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501118, 34.736710, 21.247911>,  <36.842300, 34.896385, 20.875036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501118, 34.736710, 21.247911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435162, 35.099651, 21.402578>,  <37.395588, 35.317417, 21.495378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435162, 35.099651, 21.402578>,  <37.501118, 34.736710, 21.247911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435162, 35.099651, 21.402578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617863, -0.210553, 0.757570,
		0.768802, 0.363823, -0.525905,
		-0.164891, 0.907359, 0.386666,
		37.385693, 35.371861, 21.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205990, 35.042004, 21.474268>,  <37.501118, 34.736710, 21.247911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205990, 35.042004, 21.474268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912777, 35.245129, 21.655285>,  <37.736851, 35.367004, 21.763895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912777, 35.245129, 21.655285>,  <38.205990, 35.042004, 21.474268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912777, 35.245129, 21.655285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490960, -0.065468, 0.868719,
		0.470772, 0.858978, -0.201324,
		-0.733030, 0.507810, 0.452544,
		37.692867, 35.397472, 21.791048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555328, 35.396748, 22.026901>,  <38.205990, 35.042004, 21.474268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555328, 35.396748, 22.026901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178776, 35.403969, 22.161644>,  <37.952843, 35.408302, 22.242489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178776, 35.403969, 22.161644>,  <38.555328, 35.396748, 22.026901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178776, 35.403969, 22.161644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332271, -0.122818, 0.935153,
		0.058250, 0.992265, 0.109622,
		-0.941384, 0.018048, 0.336855,
		37.896362, 35.409382, 22.262701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458839, 35.913185, 22.591677>,  <38.555328, 35.396748, 22.026901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458839, 35.913185, 22.591677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156498, 35.657005, 22.646111>,  <37.975094, 35.503300, 22.678770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156498, 35.657005, 22.646111>,  <38.458839, 35.913185, 22.591677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156498, 35.657005, 22.646111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204782, -0.033828, 0.978223,
		-0.621896, 0.767257, 0.156721,
		-0.755850, -0.640447, 0.136083,
		37.929745, 35.464870, 22.686935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086124, 36.193855, 23.223576>,  <38.458839, 35.913185, 22.591677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086124, 36.193855, 23.223576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984127, 35.809265, 23.182495>,  <37.922928, 35.578510, 23.157846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984127, 35.809265, 23.182495>,  <38.086124, 36.193855, 23.223576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984127, 35.809265, 23.182495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077451, -0.085560, 0.993318,
		-0.963837, 0.261241, -0.052650,
		-0.254990, -0.961474, -0.102700,
		37.907631, 35.520824, 23.151686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656719, 36.046833, 23.735018>,  <38.086124, 36.193855, 23.223576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656719, 36.046833, 23.735018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762398, 35.673538, 23.637636>,  <37.825806, 35.449562, 23.579206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762398, 35.673538, 23.637636>,  <37.656719, 36.046833, 23.735018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762398, 35.673538, 23.637636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021268, -0.246726, 0.968852,
		-0.964235, -0.261141, -0.045335,
		0.264193, -0.933237, -0.243456,
		37.841656, 35.393566, 23.564600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203625, 35.547512, 24.048229>,  <37.656719, 36.046833, 23.735018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203625, 35.547512, 24.048229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542713, 35.349361, 23.972368>,  <37.746166, 35.230473, 23.926851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542713, 35.349361, 23.972368>,  <37.203625, 35.547512, 24.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542713, 35.349361, 23.972368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061104, -0.263959, 0.962597,
		-0.526908, -0.827604, -0.193494,
		0.847723, -0.495376, -0.189652,
		37.797031, 35.200748, 23.915472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264233, 34.898445, 24.416021>,  <37.203625, 35.547512, 24.048229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264233, 34.898445, 24.416021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643986, 34.997055, 24.338152>,  <37.871838, 35.056221, 24.291431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643986, 34.997055, 24.338152>,  <37.264233, 34.898445, 24.416021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643986, 34.997055, 24.338152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250084, -0.218179, 0.943322,
		0.190082, -0.944257, -0.268788,
		0.949382, 0.246528, -0.194672,
		37.928799, 35.071014, 24.279751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694572, 34.459286, 24.866341>,  <37.264233, 34.898445, 24.416021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694572, 34.459286, 24.866341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951015, 34.745312, 24.754864>,  <38.104881, 34.916927, 24.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951015, 34.745312, 24.754864>,  <37.694572, 34.459286, 24.866341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951015, 34.745312, 24.754864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441263, -0.046344, 0.896180,
		0.627909, -0.697523, -0.345242,
		0.641106, 0.715063, -0.278691,
		38.143349, 34.959831, 24.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375248, 34.252735, 25.073559>,  <37.694572, 34.459286, 24.866341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375248, 34.252735, 25.073559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427925, 34.648148, 25.044003>,  <38.459530, 34.885395, 25.026268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427925, 34.648148, 25.044003>,  <38.375248, 34.252735, 25.073559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427925, 34.648148, 25.044003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505812, -0.002904, 0.862639,
		0.852532, -0.150979, -0.500395,
		0.131694, 0.988533, -0.073891,
		38.467434, 34.944706, 25.021835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036949, 34.356968, 25.252501>,  <38.375248, 34.252735, 25.073559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036949, 34.356968, 25.252501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855473, 34.704685, 25.330984>,  <38.746586, 34.913315, 25.378075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855473, 34.704685, 25.330984>,  <39.036949, 34.356968, 25.252501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855473, 34.704685, 25.330984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497103, 0.064130, 0.865318,
		0.739631, 0.490122, -0.461223,
		-0.453690, 0.869292, 0.196208,
		38.719364, 34.965473, 25.389847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517273, 34.853085, 25.472809>,  <39.036949, 34.356968, 25.252501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517273, 34.853085, 25.472809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181019, 35.035172, 25.590185>,  <38.979267, 35.144424, 25.660610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181019, 35.035172, 25.590185>,  <39.517273, 34.853085, 25.472809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181019, 35.035172, 25.590185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467533, 0.336446, 0.817445,
		0.273389, 0.824367, -0.495658,
		-0.840638, 0.455217, 0.293438,
		38.928829, 35.171738, 25.678217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646744, 35.562614, 25.727631>,  <39.517273, 34.853085, 25.472809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646744, 35.562614, 25.727631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310757, 35.418056, 25.889542>,  <39.109165, 35.331322, 25.986689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310757, 35.418056, 25.889542>,  <39.646744, 35.562614, 25.727631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310757, 35.418056, 25.889542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343047, 0.224314, 0.912141,
		-0.420442, 0.905028, -0.064441,
		-0.839968, -0.361397, 0.404779,
		39.058765, 35.309639, 26.010975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619175, 35.860035, 26.409874>,  <39.646744, 35.562614, 25.727631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619175, 35.860035, 26.409874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300159, 35.621632, 26.447206>,  <39.108749, 35.478592, 26.469606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300159, 35.621632, 26.447206>,  <39.619175, 35.860035, 26.409874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300159, 35.621632, 26.447206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040920, 0.100906, 0.994054,
		-0.601878, 0.796616, -0.056088,
		-0.797539, -0.596004, 0.093330,
		39.060898, 35.442829, 26.475206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031456, 36.251320, 26.601244>,  <39.619175, 35.860035, 26.409874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031456, 36.251320, 26.601244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987122, 35.873901, 26.726097>,  <38.960522, 35.647449, 26.801008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987122, 35.873901, 26.726097>,  <39.031456, 36.251320, 26.601244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987122, 35.873901, 26.726097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149291, 0.294697, 0.943857,
		-0.982562, 0.151214, 0.108200,
		-0.110839, -0.943551, 0.312133,
		38.953869, 35.590836, 26.819736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668823, 36.209515, 27.175631>,  <39.031456, 36.251320, 26.601244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668823, 36.209515, 27.175631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783344, 35.826965, 27.198906>,  <38.852058, 35.597435, 27.212872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783344, 35.826965, 27.198906>,  <38.668823, 36.209515, 27.175631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783344, 35.826965, 27.198906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003147, 0.061667, 0.998092,
		-0.958133, -0.285576, 0.020665,
		0.286305, -0.956370, 0.058187,
		38.869236, 35.540054, 27.216362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454632, 36.046967, 27.740692>,  <38.668823, 36.209515, 27.175631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454632, 36.046967, 27.740692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705730, 35.743996, 27.668865>,  <38.856388, 35.562214, 27.625769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705730, 35.743996, 27.668865>,  <38.454632, 36.046967, 27.740692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705730, 35.743996, 27.668865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149533, -0.109049, 0.982725,
		-0.763920, -0.643753, 0.044804,
		0.627747, -0.757423, -0.179567,
		38.894054, 35.516769, 27.614996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234890, 35.573463, 28.248850>,  <38.454632, 36.046967, 27.740692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234890, 35.573463, 28.248850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613449, 35.494297, 28.146740>,  <38.840584, 35.446796, 28.085474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613449, 35.494297, 28.146740>,  <38.234890, 35.573463, 28.248850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613449, 35.494297, 28.146740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212484, -0.213778, 0.953493,
		-0.243297, -0.956621, -0.160260,
		0.946392, -0.197930, -0.255278,
		38.897366, 35.434921, 28.070158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454910, 35.005817, 28.626202>,  <38.234890, 35.573463, 28.248850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454910, 35.005817, 28.626202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803955, 35.166653, 28.515297>,  <39.013382, 35.263153, 28.448755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803955, 35.166653, 28.515297>,  <38.454910, 35.005817, 28.626202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803955, 35.166653, 28.515297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377907, -0.196221, 0.904811,
		0.309407, -0.894329, -0.323176,
		0.872613, 0.402085, -0.277261,
		39.065739, 35.287277, 28.432119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017887, 34.552246, 28.821346>,  <38.454910, 35.005817, 28.626202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017887, 34.552246, 28.821346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211712, 34.897648, 28.765409>,  <39.328007, 35.104889, 28.731848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211712, 34.897648, 28.765409>,  <39.017887, 34.552246, 28.821346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211712, 34.897648, 28.765409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425136, -0.092758, 0.900364,
		0.764499, -0.495735, -0.412054,
		0.484563, 0.863506, -0.139841,
		39.357082, 35.156700, 28.723457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682388, 34.433319, 29.170059>,  <39.017887, 34.552246, 28.821346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682388, 34.433319, 29.170059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644608, 34.828712, 29.122778>,  <39.621937, 35.065948, 29.094410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644608, 34.828712, 29.122778>,  <39.682388, 34.433319, 29.170059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644608, 34.828712, 29.122778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266093, 0.139481, 0.953802,
		0.959308, 0.058640, -0.276205,
		-0.094456, 0.988487, -0.118201,
		39.616272, 35.125259, 29.087318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323833, 34.784138, 29.420885>,  <39.682388, 34.433319, 29.170059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323833, 34.784138, 29.420885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048481, 35.074257, 29.424187>,  <39.883270, 35.248329, 29.426168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048481, 35.074257, 29.424187>,  <40.323833, 34.784138, 29.420885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048481, 35.074257, 29.424187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257265, 0.233498, 0.937706,
		0.678189, 0.647628, -0.347331,
		-0.688386, 0.725298, 0.008256,
		39.841965, 35.291847, 29.426664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647762, 35.433662, 29.701279>,  <40.323833, 34.784138, 29.420885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647762, 35.433662, 29.701279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254040, 35.490547, 29.743082>,  <40.017807, 35.524677, 29.768164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254040, 35.490547, 29.743082>,  <40.647762, 35.433662, 29.701279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254040, 35.490547, 29.743082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131052, 0.192357, 0.972535,
		0.118205, 0.970965, -0.207975,
		-0.984303, 0.142214, 0.104510,
		39.958748, 35.533211, 29.774435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599480, 35.998947, 30.093487>,  <40.647762, 35.433662, 29.701279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599480, 35.998947, 30.093487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242252, 35.820896, 30.119692>,  <40.027916, 35.714066, 30.135416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242252, 35.820896, 30.119692>,  <40.599480, 35.998947, 30.093487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242252, 35.820896, 30.119692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015625, 0.176210, 0.984229,
		-0.449651, 0.877959, -0.164323,
		-0.893068, -0.445127, 0.065515,
		39.974331, 35.687359, 30.139347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182995, 36.440060, 30.489643>,  <40.599480, 35.998947, 30.093487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182995, 36.440060, 30.489643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077187, 36.055225, 30.516254>,  <40.013702, 35.824326, 30.532221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077187, 36.055225, 30.516254>,  <40.182995, 36.440060, 30.489643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077187, 36.055225, 30.516254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121248, 0.101614, 0.987408,
		-0.956727, 0.253126, -0.143530,
		-0.264523, -0.962082, 0.066526,
		39.997829, 35.766602, 30.536213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950958, 36.341419, 31.164837>,  <40.182995, 36.440060, 30.489643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950958, 36.341419, 31.164837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967815, 35.954807, 31.063602>,  <39.977928, 35.722839, 31.002863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967815, 35.954807, 31.063602>,  <39.950958, 36.341419, 31.164837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967815, 35.954807, 31.063602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088168, -0.248723, 0.964553,
		-0.995214, -0.062962, 0.074736,
		0.042142, -0.966526, -0.253084,
		39.980457, 35.664848, 30.987677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536339, 35.999950, 31.539438>,  <39.950958, 36.341419, 31.164837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536339, 35.999950, 31.539438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766998, 35.693092, 31.427031>,  <39.905396, 35.508980, 31.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766998, 35.693092, 31.427031>,  <39.536339, 35.999950, 31.539438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766998, 35.693092, 31.427031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038630, -0.317982, 0.947310,
		-0.816080, -0.557119, -0.153729,
		0.576647, -0.767142, -0.281020,
		39.939991, 35.462952, 31.342724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177044, 35.435627, 31.750431>,  <39.536339, 35.999950, 31.539438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177044, 35.435627, 31.750431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556099, 35.313175, 31.714079>,  <39.783531, 35.239704, 31.692268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556099, 35.313175, 31.714079>,  <39.177044, 35.435627, 31.750431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556099, 35.313175, 31.714079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067163, -0.469292, 0.880485,
		-0.312194, -0.828281, -0.465281,
		0.947642, -0.306131, -0.090880,
		39.840393, 35.221336, 31.686815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173908, 34.756790, 31.933588>,  <39.177044, 35.435627, 31.750431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173908, 34.756790, 31.933588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562222, 34.841949, 31.977854>,  <39.795212, 34.893047, 32.004414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562222, 34.841949, 31.977854>,  <39.173908, 34.756790, 31.933588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562222, 34.841949, 31.977854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041386, -0.602863, 0.796771,
		0.236349, -0.768914, -0.594062,
		0.970787, 0.212901, 0.110664,
		39.853458, 34.905819, 32.011051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427662, 34.097923, 32.239414>,  <39.173908, 34.756790, 31.933588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427662, 34.097923, 32.239414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708118, 34.376408, 32.300991>,  <39.876392, 34.543499, 32.337936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708118, 34.376408, 32.300991>,  <39.427662, 34.097923, 32.239414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708118, 34.376408, 32.300991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266727, -0.456321, 0.848898,
		0.661256, -0.554136, -0.505642,
		0.701140, 0.696207, 0.153942,
		39.918461, 34.585270, 32.347176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980949, 33.765778, 32.274269>,  <39.427662, 34.097923, 32.239414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980949, 33.765778, 32.274269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105785, 34.088799, 32.474453>,  <40.180687, 34.282612, 32.594563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105785, 34.088799, 32.474453>,  <39.980949, 33.765778, 32.274269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105785, 34.088799, 32.474453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360586, -0.588038, 0.724009,
		0.878966, -0.045494, -0.474710,
		0.312085, 0.807553, 0.500461,
		40.199409, 34.331066, 32.624592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571060, 33.548256, 32.660427>,  <39.980949, 33.765778, 32.274269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571060, 33.548256, 32.660427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477554, 33.901093, 32.824020>,  <40.421452, 34.112797, 32.922176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477554, 33.901093, 32.824020>,  <40.571060, 33.548256, 32.660427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477554, 33.901093, 32.824020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348458, -0.316685, 0.882206,
		0.907707, 0.348740, -0.233343,
		-0.233764, 0.882095, 0.408979,
		40.407425, 34.165722, 32.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175182, 33.765686, 32.933392>,  <40.571060, 33.548256, 32.660427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175182, 33.765686, 32.933392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869560, 33.930923, 33.131611>,  <40.686188, 34.030067, 33.250542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869560, 33.930923, 33.131611>,  <41.175182, 33.765686, 32.933392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869560, 33.930923, 33.131611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439061, -0.229834, 0.868563,
		0.472693, 0.881208, -0.005768,
		-0.764060, 0.413097, 0.495545,
		40.640343, 34.054852, 33.280273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504810, 34.101433, 33.403667>,  <41.175182, 33.765686, 32.933392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504810, 34.101433, 33.403667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140041, 34.087269, 33.567200>,  <40.921181, 34.078770, 33.665318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140041, 34.087269, 33.567200>,  <41.504810, 34.101433, 33.403667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140041, 34.087269, 33.567200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402011, -0.277022, 0.872723,
		0.082355, 0.960211, 0.266856,
		-0.911924, -0.035406, 0.408830,
		40.866463, 34.076649, 33.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654812, 34.387474, 33.960625>,  <41.504810, 34.101433, 33.403667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654812, 34.387474, 33.960625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310143, 34.199547, 34.037350>,  <41.103340, 34.086792, 34.083385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310143, 34.199547, 34.037350>,  <41.654812, 34.387474, 33.960625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310143, 34.199547, 34.037350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349488, -0.275353, 0.895566,
		-0.367935, 0.838722, 0.401459,
		-0.861674, -0.469815, 0.191811,
		41.051640, 34.058601, 34.094894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420639, 34.536980, 34.647400>,  <41.654812, 34.387474, 33.960625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420639, 34.536980, 34.647400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241234, 34.186497, 34.576855>,  <41.133591, 33.976208, 34.534527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241234, 34.186497, 34.576855>,  <41.420639, 34.536980, 34.647400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241234, 34.186497, 34.576855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360087, -0.357747, 0.861600,
		-0.818031, 0.322931, 0.475963,
		-0.448512, -0.876204, -0.176365,
		41.106682, 33.923637, 34.523945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031120, 34.403923, 35.240959>,  <41.420639, 34.536980, 34.647400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031120, 34.403923, 35.240959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072327, 34.057323, 35.045586>,  <41.097050, 33.849361, 34.928364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072327, 34.057323, 35.045586>,  <41.031120, 34.403923, 35.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072327, 34.057323, 35.045586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159694, -0.470266, 0.867956,
		-0.981777, -0.167411, 0.089930,
		0.103015, -0.866501, -0.488431,
		41.103230, 33.797375, 34.899055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738869, 33.949005, 35.635670>,  <41.031120, 34.403923, 35.240959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738869, 33.949005, 35.635670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 33.704868, 35.409294>,  <41.093594, 33.558388, 35.273468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 33.704868, 35.409294>,  <40.738869, 33.949005, 35.635670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960571, 33.704868, 35.409294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303518, -0.484914, 0.820205,
		-0.775035, -0.626375, -0.083517,
		0.554255, -0.610338, -0.565941,
		41.126846, 33.521767, 35.239513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835239, 33.392292, 36.063461>,  <40.738869, 33.949005, 35.635670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835239, 33.392292, 36.063461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071373, 33.305553, 35.752464>,  <41.213051, 33.253510, 35.565868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071373, 33.305553, 35.752464>,  <40.835239, 33.392292, 36.063461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071373, 33.305553, 35.752464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410339, -0.748856, 0.520419,
		-0.695077, -0.626253, -0.353093,
		0.590330, -0.216844, -0.777489,
		41.248470, 33.240501, 35.519218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749748, 32.690113, 35.997009>,  <40.835239, 33.392292, 36.063461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749748, 32.690113, 35.997009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104321, 32.779945, 35.835117>,  <41.317062, 32.833843, 35.737984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104321, 32.779945, 35.835117>,  <40.749748, 32.690113, 35.997009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104321, 32.779945, 35.835117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436789, -0.695198, 0.570890,
		-0.153154, -0.682834, -0.714340,
		0.886431, 0.224582, -0.404727,
		41.370251, 32.847321, 35.713699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990509, 32.006573, 35.948391>,  <40.749748, 32.690113, 35.997009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990509, 32.006573, 35.948391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307140, 32.245384, 35.896301>,  <41.497120, 32.388672, 35.865047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307140, 32.245384, 35.896301>,  <40.990509, 32.006573, 35.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307140, 32.245384, 35.896301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555911, -0.615102, 0.559117,
		0.253708, -0.514979, -0.818797,
		0.791578, 0.597031, -0.130226,
		41.544613, 32.424492, 35.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481670, 31.679012, 35.760971>,  <40.990509, 32.006573, 35.948391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481670, 31.679012, 35.760971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675480, 31.983591, 35.933220>,  <41.791763, 32.166340, 36.036572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675480, 31.983591, 35.933220>,  <41.481670, 31.679012, 35.760971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675480, 31.983591, 35.933220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612990, -0.646728, 0.453857,
		0.624085, 0.044065, -0.780113,
		0.484522, 0.761447, 0.430625,
		41.820835, 32.212025, 36.062408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247440, 31.797697, 35.560883>,  <41.481670, 31.679012, 35.760971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247440, 31.797697, 35.560883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251617, 31.960644, 35.926163>,  <42.254124, 32.058411, 36.145332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251617, 31.960644, 35.926163>,  <42.247440, 31.797697, 35.560883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251617, 31.960644, 35.926163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477687, -0.804341, 0.353342,
		0.878468, 0.432535, -0.202996,
		0.010446, 0.407368, 0.913204,
		42.254749, 32.082855, 36.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006119, 31.987137, 35.711842>,  <42.247440, 31.797697, 35.560883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006119, 31.987137, 35.711842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789036, 31.946766, 36.045376>,  <42.658787, 31.922543, 36.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789036, 31.946766, 36.045376>,  <43.006119, 31.987137, 35.711842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789036, 31.946766, 36.045376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755689, -0.491993, 0.432293,
		0.366610, 0.864729, 0.343279,
		-0.542708, -0.100929, 0.833836,
		42.626225, 31.916487, 36.295528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508579, 32.293419, 36.232635>,  <43.006119, 31.987137, 35.711842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508579, 32.293419, 36.232635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231720, 32.049240, 36.386669>,  <43.065605, 31.902733, 36.479088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231720, 32.049240, 36.386669>,  <43.508579, 32.293419, 36.232635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231720, 32.049240, 36.386669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697682, -0.429222, 0.573592,
		-0.184861, 0.665676, 0.722982,
		-0.692146, -0.610446, 0.385084,
		43.024075, 31.866106, 36.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550625, 32.323997, 37.008343>,  <43.508579, 32.293419, 36.232635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550625, 32.323997, 37.008343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413208, 31.969194, 36.884930>,  <43.330757, 31.756311, 36.810883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413208, 31.969194, 36.884930>,  <43.550625, 32.323997, 37.008343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413208, 31.969194, 36.884930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561646, -0.457350, 0.689482,
		-0.752685, 0.063579, 0.655304,
		-0.343539, -0.887011, -0.308531,
		43.310146, 31.703091, 36.792370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462379, 31.976961, 37.585629>,  <43.550625, 32.323997, 37.008343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462379, 31.976961, 37.585629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456329, 31.669624, 37.329685>,  <43.452698, 31.485222, 37.176121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456329, 31.669624, 37.329685>,  <43.462379, 31.976961, 37.585629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456329, 31.669624, 37.329685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409966, -0.588435, 0.696902,
		-0.911975, -0.251778, 0.323896,
		-0.015127, -0.768344, -0.639859,
		43.451790, 31.439121, 37.137726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751534, 31.473164, 37.986805>,  <43.462379, 31.976961, 37.585629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751534, 31.473164, 37.986805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704380, 31.269976, 37.645496>,  <43.676086, 31.148064, 37.440712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704380, 31.269976, 37.645496>,  <43.751534, 31.473164, 37.986805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704380, 31.269976, 37.645496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574597, -0.735699, 0.358590,
		-0.809902, -0.448013, 0.378606,
		-0.117886, -0.507968, -0.853271,
		43.669014, 31.117584, 37.389515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571217, 30.794586, 38.121193>,  <43.751534, 31.473164, 37.986805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571217, 30.794586, 38.121193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729153, 30.785244, 37.753811>,  <43.823914, 30.779638, 37.533382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729153, 30.785244, 37.753811>,  <43.571217, 30.794586, 38.121193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729153, 30.785244, 37.753811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771515, -0.534375, 0.345265,
		-0.498860, -0.844925, -0.192978,
		0.394845, -0.023353, -0.918450,
		43.847607, 30.778238, 37.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714157, 30.193245, 38.152908>,  <43.571217, 30.794586, 38.121193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714157, 30.193245, 38.152908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926895, 30.327768, 37.842030>,  <44.054539, 30.408484, 37.655502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926895, 30.327768, 37.842030>,  <43.714157, 30.193245, 38.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926895, 30.327768, 37.842030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722014, -0.659675, 0.208627,
		-0.442534, -0.672105, -0.593666,
		0.531845, 0.336310, -0.777197,
		44.086449, 30.428661, 37.608871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028889, 29.678652, 37.990349>,  <43.714157, 30.193245, 38.152908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028889, 29.678652, 37.990349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247589, 29.924324, 37.762718>,  <44.378811, 30.071728, 37.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247589, 29.924324, 37.762718>,  <44.028889, 29.678652, 37.990349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247589, 29.924324, 37.762718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752707, -0.658232, 0.012774,
		-0.366736, -0.435329, -0.822188,
		0.546751, 0.614182, -0.569073,
		44.411613, 30.108578, 37.591995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356937, 29.333332, 37.334503>,  <44.028889, 29.678652, 37.990349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356937, 29.333332, 37.334503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589325, 29.650349, 37.408646>,  <44.728756, 29.840559, 37.453129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589325, 29.650349, 37.408646>,  <44.356937, 29.333332, 37.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589325, 29.650349, 37.408646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804587, -0.593611, 0.016303,
		0.122949, 0.139662, -0.982536,
		0.580968, 0.792540, 0.185354,
		44.763615, 29.888111, 37.464252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738949, 29.476126, 36.751774>,  <44.356937, 29.333332, 37.334503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738949, 29.476126, 36.751774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927464, 29.641493, 37.063408>,  <45.040573, 29.740713, 37.250389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927464, 29.641493, 37.063408>,  <44.738949, 29.476126, 36.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927464, 29.641493, 37.063408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737353, -0.669372, -0.090842,
		0.483941, 0.617273, -0.620302,
		0.471287, 0.413420, 0.779085,
		45.068851, 29.765518, 37.297134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417065, 29.591385, 36.518909>,  <44.738949, 29.476126, 36.751774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417065, 29.591385, 36.518909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458038, 29.609629, 36.916386>,  <45.482620, 29.620575, 37.154873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458038, 29.609629, 36.916386>,  <45.417065, 29.591385, 36.518909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458038, 29.609629, 36.916386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807935, -0.586571, -0.056359,
		0.580301, 0.808613, -0.096935,
		0.102432, 0.045612, 0.993694,
		45.488770, 29.623312, 37.214493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985012, 29.775227, 36.741222>,  <45.417065, 29.591385, 36.518909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985012, 29.775227, 36.741222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901810, 29.557516, 37.066307>,  <45.851887, 29.426889, 37.261356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901810, 29.557516, 37.066307>,  <45.985012, 29.775227, 36.741222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901810, 29.557516, 37.066307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874187, -0.476175, -0.095158,
		0.438785, 0.690668, 0.574845,
		-0.208004, -0.544275, 0.812711,
		45.839409, 29.394234, 37.310120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392830, 29.549925, 36.265949>,  <45.985012, 29.775227, 36.741222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392830, 29.549925, 36.265949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778027, 29.640520, 36.324402>,  <47.009144, 29.694878, 36.359474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778027, 29.640520, 36.324402>,  <46.392830, 29.549925, 36.265949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778027, 29.640520, 36.324402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139932, -0.043298, 0.989214,
		0.230373, -0.973051, -0.010003,
		0.962989, 0.226489, 0.146136,
		47.066925, 29.708466, 36.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771336, 28.969635, 36.671703>,  <46.392830, 29.549925, 36.265949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771336, 28.969635, 36.671703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.955151, 29.316504, 36.748474>,  <47.065441, 29.524626, 36.794537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.955151, 29.316504, 36.748474>,  <46.771336, 28.969635, 36.671703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.955151, 29.316504, 36.748474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002555, -0.217389, 0.976082,
		0.888155, -0.448055, -0.102114,
		0.459537, 0.867173, 0.191930,
		47.093010, 29.576656, 36.806053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437447, 28.378105, 36.875629>,  <46.771336, 28.969635, 36.671703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437447, 28.378105, 36.875629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529621, 28.401388, 37.264168>,  <46.584927, 28.415358, 37.497292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529621, 28.401388, 37.264168>,  <46.437447, 28.378105, 36.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529621, 28.401388, 37.264168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429508, 0.901794, 0.047853,
		-0.873168, -0.428228, 0.232808,
		0.230437, 0.058209, 0.971345,
		46.598751, 28.418850, 37.555573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826691, 28.450731, 37.224407>,  <46.437447, 28.378105, 36.875629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826691, 28.450731, 37.224407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109333, 28.588810, 37.471485>,  <46.278919, 28.671658, 37.619732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109333, 28.588810, 37.471485>,  <45.826691, 28.450731, 37.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109333, 28.588810, 37.471485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549874, 0.817286, 0.172288,
		-0.445359, -0.461393, 0.767314,
		0.706607, 0.345196, 0.617694,
		46.321316, 28.692369, 37.656792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604839, 28.574789, 37.936138>,  <45.826691, 28.450731, 37.224407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604839, 28.574789, 37.936138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893375, 28.826874, 37.821247>,  <46.066498, 28.978125, 37.752312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893375, 28.826874, 37.821247>,  <45.604839, 28.574789, 37.936138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893375, 28.826874, 37.821247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609630, 0.774574, 0.168484,
		0.328662, 0.053570, 0.942927,
		0.721341, 0.630211, -0.287231,
		46.109779, 29.015938, 37.735077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701283, 29.157045, 38.492863>,  <45.604839, 28.574789, 37.936138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701283, 29.157045, 38.492863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782593, 29.231670, 38.108391>,  <45.831379, 29.276445, 37.877708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782593, 29.231670, 38.108391>,  <45.701283, 29.157045, 38.492863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782593, 29.231670, 38.108391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684055, 0.729423, -0.003088,
		0.700533, 0.658130, 0.275896,
		0.203277, 0.186565, -0.961182,
		45.843575, 29.287640, 37.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744987, 29.855566, 38.498821>,  <45.701283, 29.157045, 38.492863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744987, 29.855566, 38.498821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680008, 29.778387, 38.111755>,  <45.641022, 29.732080, 37.879517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680008, 29.778387, 38.111755>,  <45.744987, 29.855566, 38.498821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680008, 29.778387, 38.111755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579867, 0.812147, -0.064590,
		0.798352, 0.550626, -0.243814,
		-0.162448, -0.192945, -0.967669,
		45.631275, 29.720503, 37.821453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610992, 30.416162, 38.331020>,  <45.744987, 29.855566, 38.498821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610992, 30.416162, 38.331020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470364, 30.225473, 38.008743>,  <45.385986, 30.111061, 37.815376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470364, 30.225473, 38.008743>,  <45.610992, 30.416162, 38.331020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470364, 30.225473, 38.008743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654064, 0.740818, -0.152930,
		0.669775, 0.473207, -0.572256,
		-0.351570, -0.476721, -0.805689,
		45.364891, 30.082457, 37.767036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547443, 30.932199, 37.828392>,  <45.610992, 30.416162, 38.331020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547443, 30.932199, 37.828392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320591, 30.614946, 37.739574>,  <45.184479, 30.424595, 37.686283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320591, 30.614946, 37.739574>,  <45.547443, 30.932199, 37.828392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320591, 30.614946, 37.739574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748701, 0.608799, -0.262317,
		0.343233, 0.017476, -0.939088,
		-0.567131, -0.793132, -0.222044,
		45.150452, 30.377007, 37.672962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913853, 31.226898, 37.478481>,  <45.547443, 30.932199, 37.828392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913853, 31.226898, 37.478481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798634, 30.847628, 37.424835>,  <44.729504, 30.620066, 37.392647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798634, 30.847628, 37.424835>,  <44.913853, 31.226898, 37.478481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798634, 30.847628, 37.424835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750627, 0.310523, -0.583210,
		0.594632, -0.067325, -0.801174,
		-0.288048, -0.948178, -0.134111,
		44.712219, 30.563173, 37.384602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892597, 30.990759, 36.701408>,  <44.913853, 31.226898, 37.478481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892597, 30.990759, 36.701408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645344, 30.833212, 36.973518>,  <44.496990, 30.738684, 37.136784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645344, 30.833212, 36.973518>,  <44.892597, 30.990759, 36.701408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645344, 30.833212, 36.973518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785987, 0.297111, -0.542172,
		0.011428, -0.869823, -0.493232,
		-0.618138, -0.393870, 0.680274,
		44.459904, 30.715052, 37.177601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377113, 30.670210, 36.269882>,  <44.892597, 30.990759, 36.701408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377113, 30.670210, 36.269882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205791, 30.694998, 36.630486>,  <44.102997, 30.709871, 36.846848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205791, 30.694998, 36.630486>,  <44.377113, 30.670210, 36.269882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205791, 30.694998, 36.630486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787018, 0.464636, -0.405852,
		-0.444025, -0.883330, -0.150232,
		-0.428305, 0.061973, 0.901507,
		44.077301, 30.713589, 36.900936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889488, 31.041698, 36.028839>,  <44.377113, 30.670210, 36.269882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889488, 31.041698, 36.028839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784420, 30.918179, 36.394493>,  <43.721378, 30.844067, 36.613888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784420, 30.918179, 36.394493>,  <43.889488, 31.041698, 36.028839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784420, 30.918179, 36.394493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745012, 0.666957, 0.011228,
		-0.613158, -0.678095, -0.405247,
		-0.262669, -0.308798, 0.914138,
		43.705620, 30.825539, 36.668736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113747, 30.861578, 35.983158>,  <43.889488, 31.041698, 36.028839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113747, 30.861578, 35.983158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219448, 30.969412, 36.353561>,  <43.282871, 31.034113, 36.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219448, 30.969412, 36.353561>,  <43.113747, 30.861578, 35.983158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219448, 30.969412, 36.353561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745832, 0.665864, 0.018987,
		-0.611477, -0.695664, 0.377025,
		0.264256, 0.269587, 0.926009,
		43.298725, 31.050287, 36.631363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685432, 30.603968, 36.564526>,  <43.113747, 30.861578, 35.983158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685432, 30.603968, 36.564526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849895, 30.965872, 36.608986>,  <42.948574, 31.183014, 36.635662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849895, 30.965872, 36.608986>,  <42.685432, 30.603968, 36.564526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849895, 30.965872, 36.608986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883075, 0.425582, -0.197633,
		-0.226115, -0.016897, 0.973954,
		0.411158, 0.904762, 0.111151,
		42.973244, 31.237301, 36.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204960, 30.903368, 37.029671>,  <42.685432, 30.603968, 36.564526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204960, 30.903368, 37.029671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419834, 31.185032, 36.843945>,  <42.548759, 31.354031, 36.732510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419834, 31.185032, 36.843945>,  <42.204960, 30.903368, 37.029671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419834, 31.185032, 36.843945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838728, 0.504194, -0.205725,
		0.089244, 0.499950, 0.861444,
		0.537187, 0.704157, -0.464319,
		42.580990, 31.396278, 36.704647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926987, 31.506611, 37.309261>,  <42.204960, 30.903368, 37.029671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926987, 31.506611, 37.309261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102943, 31.610907, 36.965515>,  <42.208519, 31.673485, 36.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102943, 31.610907, 36.965515>,  <41.926987, 31.506611, 37.309261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102943, 31.610907, 36.965515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771804, 0.599009, -0.213325,
		0.459145, 0.757102, 0.464739,
		0.439891, 0.260741, -0.859366,
		42.234909, 31.689129, 36.707706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644539, 32.142086, 37.310669>,  <41.926987, 31.506611, 37.309261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644539, 32.142086, 37.310669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974846, 32.095062, 37.090019>,  <42.173031, 32.066849, 36.957630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974846, 32.095062, 37.090019>,  <41.644539, 32.142086, 37.310669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974846, 32.095062, 37.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297748, 0.739789, -0.603373,
		0.479019, 0.662490, 0.575889,
		0.825765, -0.117557, -0.551628,
		42.222576, 32.059795, 36.924530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894791, 32.823532, 37.151203>,  <41.644539, 32.142086, 37.310669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894791, 32.823532, 37.151203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047791, 32.571930, 36.880489>,  <42.139591, 32.420967, 36.718060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047791, 32.571930, 36.880489>,  <41.894791, 32.823532, 37.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047791, 32.571930, 36.880489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290507, 0.613468, -0.734345,
		0.877097, 0.477498, 0.051919,
		0.382499, -0.629009, -0.676788,
		42.162540, 32.383228, 36.677452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433353, 33.150799, 36.700134>,  <41.894791, 32.823532, 37.151203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433353, 33.150799, 36.700134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256393, 32.874256, 36.471642>,  <42.150215, 32.708332, 36.334545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256393, 32.874256, 36.471642>,  <42.433353, 33.150799, 36.700134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256393, 32.874256, 36.471642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248467, 0.706512, -0.662649,
		0.861709, -0.151226, -0.484343,
		-0.442404, -0.691354, -0.571234,
		42.123672, 32.666851, 36.300270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417950, 33.411495, 35.910946>,  <42.433353, 33.150799, 36.700134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417950, 33.411495, 35.910946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208958, 33.080200, 35.829910>,  <42.083565, 32.881424, 35.781288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208958, 33.080200, 35.829910>,  <42.417950, 33.411495, 35.910946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208958, 33.080200, 35.829910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555395, 0.510864, -0.656167,
		0.646958, -0.230313, -0.726912,
		-0.522476, -0.828235, -0.202593,
		42.052216, 32.831730, 35.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537102, 33.116333, 35.218811>,  <42.417950, 33.411495, 35.910946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537102, 33.116333, 35.218811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173523, 33.036255, 35.365093>,  <41.955376, 32.988209, 35.452862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173523, 33.036255, 35.365093>,  <42.537102, 33.116333, 35.218811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173523, 33.036255, 35.365093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416768, 0.459418, -0.784372,
		-0.010983, -0.865366, -0.501021,
		-0.908947, -0.200195, 0.365703,
		41.900841, 32.976196, 35.474804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162449, 33.377525, 34.731632>,  <42.537102, 33.116333, 35.218811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162449, 33.377525, 34.731632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876198, 33.214809, 34.958752>,  <41.704445, 33.117180, 35.095024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876198, 33.214809, 34.958752>,  <42.162449, 33.377525, 34.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876198, 33.214809, 34.958752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671067, 0.174927, -0.720465,
		0.193757, -0.896616, -0.398168,
		-0.715631, -0.406792, 0.567796,
		41.661507, 33.092773, 35.129089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856705, 32.837631, 34.395096>,  <42.162449, 33.377525, 34.731632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856705, 32.837631, 34.395096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640800, 33.045723, 34.659824>,  <41.511257, 33.170578, 34.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640800, 33.045723, 34.659824>,  <41.856705, 32.837631, 34.395096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640800, 33.045723, 34.659824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592037, 0.324314, -0.737776,
		-0.598455, -0.790049, 0.132945,
		-0.539763, 0.520234, 0.661825,
		41.478870, 33.201794, 34.858372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268772, 32.770790, 34.061558>,  <41.856705, 32.837631, 34.395096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268772, 32.770790, 34.061558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201019, 33.054932, 34.334824>,  <41.160366, 33.225414, 34.498783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201019, 33.054932, 34.334824>,  <41.268772, 32.770790, 34.061558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201019, 33.054932, 34.334824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772473, 0.334783, -0.539635,
		-0.612041, -0.619130, 0.492020,
		-0.169384, 0.710351, 0.683162,
		41.150204, 33.268036, 34.539772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509041, 32.814743, 34.284531>,  <41.268772, 32.770790, 34.061558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509041, 32.814743, 34.284531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681038, 33.168018, 34.359459>,  <40.784237, 33.379982, 34.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681038, 33.168018, 34.359459>,  <40.509041, 32.814743, 34.284531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681038, 33.168018, 34.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696477, 0.456519, -0.553634,
		-0.574477, 0.107595, 0.811418,
		0.429996, 0.883184, 0.187322,
		40.810036, 33.432972, 34.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715801, 32.140347, 34.166733>,  <40.509041, 32.814743, 34.284531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715801, 32.140347, 34.166733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873219, 31.879234, 33.907810>,  <40.967670, 31.722569, 33.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873219, 31.879234, 33.907810>,  <40.715801, 32.140347, 34.166733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873219, 31.879234, 33.907810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916087, 0.219616, 0.335490,
		-0.076842, -0.725018, 0.684429,
		0.393548, -0.652777, -0.647304,
		40.991283, 31.683401, 33.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088718, 31.616924, 34.516102>,  <40.715801, 32.140347, 34.166733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088718, 31.616924, 34.516102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239536, 31.642935, 34.146538>,  <41.330025, 31.658541, 33.924801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239536, 31.642935, 34.146538>,  <41.088718, 31.616924, 34.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239536, 31.642935, 34.146538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920612, 0.083060, 0.381543,
		0.101550, -0.994421, -0.028547,
		0.377043, 0.065026, -0.923910,
		41.352650, 31.662443, 33.869366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792889, 31.467457, 34.538761>,  <41.088718, 31.616924, 34.516102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792889, 31.467457, 34.538761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778004, 31.599247, 34.161388>,  <41.769073, 31.678322, 33.934963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778004, 31.599247, 34.161388>,  <41.792889, 31.467457, 34.538761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778004, 31.599247, 34.161388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961803, 0.268023, 0.055663,
		0.271201, -0.905323, -0.326864,
		-0.037214, 0.329475, -0.943431,
		41.766838, 31.698090, 33.878361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270317, 31.136057, 34.105553>,  <41.792889, 31.467457, 34.538761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270317, 31.136057, 34.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200504, 31.521217, 34.023224>,  <42.158615, 31.752314, 33.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200504, 31.521217, 34.023224>,  <42.270317, 31.136057, 34.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200504, 31.521217, 34.023224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957806, 0.214503, 0.191304,
		0.228355, -0.163743, -0.959710,
		-0.174536, 0.962900, -0.205817,
		42.148144, 31.810087, 33.961479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790974, 31.478466, 33.638351>,  <42.270317, 31.136057, 34.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790974, 31.478466, 33.638351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645077, 31.769442, 33.870834>,  <42.557537, 31.944027, 34.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645077, 31.769442, 33.870834>,  <42.790974, 31.478466, 33.638351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645077, 31.769442, 33.870834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914299, 0.161742, 0.371343,
		0.176124, 0.666838, -0.724091,
		-0.364742, 0.727438, 0.581203,
		42.535656, 31.987673, 34.045197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331650, 31.680855, 33.973873>,  <42.790974, 31.478466, 33.638351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331650, 31.680855, 33.973873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067093, 31.961763, 34.079235>,  <42.908360, 32.130310, 34.142452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067093, 31.961763, 34.079235>,  <43.331650, 31.680855, 33.973873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067093, 31.961763, 34.079235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686860, 0.426013, 0.588844,
		0.301314, 0.570377, -0.764121,
		-0.661388, 0.702270, 0.263406,
		42.868675, 32.172443, 34.158257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475163, 32.388332, 33.738922>,  <43.331650, 31.680855, 33.973873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475163, 32.388332, 33.738922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264790, 32.390549, 34.079124>,  <43.138565, 32.391880, 34.283245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264790, 32.390549, 34.079124>,  <43.475163, 32.388332, 33.738922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264790, 32.390549, 34.079124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726178, 0.523520, 0.445637,
		-0.442790, 0.851995, -0.279359,
		-0.525930, 0.005541, 0.850510,
		43.107010, 32.392212, 34.334278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266033, 32.955116, 34.063881>,  <43.475163, 32.388332, 33.738922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266033, 32.955116, 34.063881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334064, 32.703194, 34.367043>,  <43.374882, 32.552040, 34.548939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334064, 32.703194, 34.367043>,  <43.266033, 32.955116, 34.063881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334064, 32.703194, 34.367043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722655, 0.602602, 0.338587,
		-0.669958, 0.490116, 0.557622,
		0.170077, -0.629807, 0.757903,
		43.385086, 32.514252, 34.594414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332066, 33.303429, 34.790211>,  <43.266033, 32.955116, 34.063881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332066, 33.303429, 34.790211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563869, 32.989544, 34.702221>,  <43.702950, 32.801212, 34.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563869, 32.989544, 34.702221>,  <43.332066, 33.303429, 34.790211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563869, 32.989544, 34.702221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812643, 0.576774, 0.083324,
		0.061492, -0.227051, 0.971940,
		0.579508, -0.784716, -0.219979,
		43.737720, 32.754128, 34.636227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820694, 33.310246, 35.282818>,  <43.332066, 33.303429, 34.790211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820694, 33.310246, 35.282818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956963, 33.149857, 34.942661>,  <44.038723, 33.053623, 34.738567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956963, 33.149857, 34.942661>,  <43.820694, 33.310246, 35.282818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956963, 33.149857, 34.942661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870977, 0.475196, 0.124853,
		0.354039, -0.783203, 0.511125,
		0.340670, -0.400975, -0.850390,
		44.059162, 33.029564, 34.687546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421265, 32.878738, 35.448502>,  <43.820694, 33.310246, 35.282818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421265, 32.878738, 35.448502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408005, 33.039841, 35.082619>,  <44.400047, 33.136501, 34.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408005, 33.039841, 35.082619>,  <44.421265, 32.878738, 35.448502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408005, 33.039841, 35.082619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845844, 0.498830, 0.188988,
		0.532399, -0.767433, -0.357208,
		-0.033150, 0.402759, -0.914706,
		44.398060, 33.160667, 34.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977169, 32.666176, 35.026054>,  <44.421265, 32.878738, 35.448502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977169, 32.666176, 35.026054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848595, 33.029964, 34.920574>,  <44.771450, 33.248238, 34.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848595, 33.029964, 34.920574>,  <44.977169, 32.666176, 35.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848595, 33.029964, 34.920574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835824, 0.403383, 0.372399,
		0.445057, -0.100700, -0.889822,
		-0.321438, 0.909473, -0.263696,
		44.752163, 33.302807, 34.841465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468723, 32.924767, 34.559326>,  <44.977169, 32.666176, 35.026054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468723, 32.924767, 34.559326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271290, 33.218613, 34.745537>,  <45.152832, 33.394920, 34.857265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271290, 33.218613, 34.745537>,  <45.468723, 32.924767, 34.559326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271290, 33.218613, 34.745537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844059, 0.275608, 0.460006,
		0.209623, 0.619985, -0.756093,
		-0.493582, 0.734615, 0.465530,
		45.123215, 33.438995, 34.885197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909191, 33.439575, 34.759521>,  <45.468723, 32.924767, 34.559326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909191, 33.439575, 34.759521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606926, 33.605644, 34.962147>,  <45.425568, 33.705284, 35.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606926, 33.605644, 34.962147>,  <45.909191, 33.439575, 34.759521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606926, 33.605644, 34.962147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652425, 0.545188, 0.526414,
		-0.057621, 0.728287, -0.682846,
		-0.755659, 0.415173, 0.506567,
		45.380230, 33.730198, 35.114117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759026, 34.230911, 34.670212>,  <45.909191, 33.439575, 34.759521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759026, 34.230911, 34.670212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770958, 34.107983, 35.050667>,  <45.778118, 34.034225, 35.278942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770958, 34.107983, 35.050667>,  <45.759026, 34.230911, 34.670212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770958, 34.107983, 35.050667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703746, 0.682200, 0.198354,
		-0.709825, 0.663444, 0.236621,
		0.029826, -0.307318, 0.951139,
		45.779907, 34.015789, 35.336010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624638, 34.756046, 35.271896>,  <45.759026, 34.230911, 34.670212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624638, 34.756046, 35.271896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889782, 34.471493, 35.365314>,  <46.048870, 34.300758, 35.421364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889782, 34.471493, 35.365314>,  <45.624638, 34.756046, 35.271896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889782, 34.471493, 35.365314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634162, 0.699240, 0.330002,
		-0.398061, -0.070642, 0.914635,
		0.662862, -0.711388, 0.233542,
		46.088642, 34.258076, 35.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608124, 34.313957, 35.822220>,  <45.624638, 34.756046, 35.271896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608124, 34.313957, 35.822220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956440, 34.117603, 35.833260>,  <46.165428, 33.999790, 35.839882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956440, 34.117603, 35.833260>,  <45.608124, 34.313957, 35.822220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956440, 34.117603, 35.833260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491264, -0.870967, 0.008773,
		0.019729, -0.021197, -0.999581,
		0.870787, -0.490884, 0.027597,
		46.217678, 33.970337, 35.841537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025906, 35.056210, 35.784203>,  <45.608124, 34.313957, 35.822220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025906, 35.056210, 35.784203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270702, 34.811012, 35.584324>,  <46.417580, 34.663895, 35.464397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270702, 34.811012, 35.584324>,  <46.025906, 35.056210, 35.784203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270702, 34.811012, 35.584324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555617, 0.782899, -0.279928,
		0.562806, -0.106324, 0.819722,
		0.611997, -0.612996, -0.499696,
		46.454300, 34.627113, 35.434414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738850, 34.937485, 36.078922>,  <46.025906, 35.056210, 35.784203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738850, 34.937485, 36.078922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752937, 34.896313, 35.681297>,  <46.761391, 34.871609, 35.442722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752937, 34.896313, 35.681297>,  <46.738850, 34.937485, 36.078922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752937, 34.896313, 35.681297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631495, 0.773231, -0.057690,
		0.774580, -0.625715, 0.092234,
		0.035221, -0.102931, -0.994065,
		46.763504, 34.865433, 35.383080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449211, 34.893257, 35.768803>,  <46.738850, 34.937485, 36.078922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449211, 34.893257, 35.768803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215076, 35.064228, 35.493214>,  <47.074596, 35.166809, 35.327858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215076, 35.064228, 35.493214>,  <47.449211, 34.893257, 35.768803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215076, 35.064228, 35.493214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762485, 0.579112, -0.288524,
		0.275671, -0.694217, -0.664882,
		-0.585339, 0.427425, -0.688974,
		47.039474, 35.192455, 35.286522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.801620, 34.801773, 34.987392>,  <47.449211, 34.893257, 35.768803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.801620, 34.801773, 34.987392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540352, 35.101555, 35.030624>,  <47.383591, 35.281425, 35.056564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540352, 35.101555, 35.030624>,  <47.801620, 34.801773, 34.987392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540352, 35.101555, 35.030624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721993, 0.659440, -0.209442,
		-0.228240, -0.058769, -0.971830,
		-0.653172, 0.749457, 0.108080,
		47.344398, 35.326393, 35.063049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.798550, 32.853321, 25.586025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433208, 32.999477, 25.657875>,  <33.214005, 33.087173, 25.700985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433208, 32.999477, 25.657875>,  <33.798550, 32.853321, 25.586025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433208, 32.999477, 25.657875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103347, -0.218669, 0.970311,
		0.393824, 0.904804, 0.161961,
		-0.913357, 0.365394, 0.179626,
		33.159203, 33.109097, 25.711763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825798, 33.309090, 26.281494>,  <33.798550, 32.853321, 25.586025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825798, 33.309090, 26.281494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450115, 33.190453, 26.212297>,  <33.224705, 33.119270, 26.170780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450115, 33.190453, 26.212297>,  <33.825798, 33.309090, 26.281494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450115, 33.190453, 26.212297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161092, -0.064295, 0.984843,
		-0.303222, 0.952837, 0.012607,
		-0.939205, -0.296595, -0.172990,
		33.168354, 33.101475, 26.160400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366257, 33.778416, 26.683083>,  <33.825798, 33.309090, 26.281494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366257, 33.778416, 26.683083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184338, 33.430225, 26.607786>,  <33.075188, 33.221313, 26.562609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184338, 33.430225, 26.607786>,  <33.366257, 33.778416, 26.683083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184338, 33.430225, 26.607786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323599, -0.035400, 0.945532,
		-0.829725, 0.490940, -0.265585,
		-0.454798, -0.870474, -0.188240,
		33.047897, 33.169083, 26.551313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824959, 33.875317, 27.027187>,  <33.366257, 33.778416, 26.683083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824959, 33.875317, 27.027187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795197, 33.480309, 26.971666>,  <32.777340, 33.243305, 26.938354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795197, 33.480309, 26.971666>,  <32.824959, 33.875317, 27.027187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795197, 33.480309, 26.971666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122538, -0.129080, 0.984034,
		-0.989671, 0.090230, -0.111404,
		-0.074410, -0.987521, -0.138803,
		32.772873, 33.184052, 26.930025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312057, 33.617119, 27.429632>,  <32.824959, 33.875317, 27.027187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312057, 33.617119, 27.429632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.537399, 33.289474, 27.386400>,  <32.672604, 33.092888, 27.360460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.537399, 33.289474, 27.386400>,  <32.312057, 33.617119, 27.429632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537399, 33.289474, 27.386400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006569, -0.135253, 0.990789,
		-0.826187, -0.557458, -0.081577,
		0.563357, -0.819113, -0.108082,
		32.706406, 33.043739, 27.353975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084305, 33.267632, 27.885574>,  <32.312057, 33.617119, 27.429632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084305, 33.267632, 27.885574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416004, 33.054512, 27.818087>,  <32.615025, 32.926640, 27.777594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416004, 33.054512, 27.818087>,  <32.084305, 33.267632, 27.885574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416004, 33.054512, 27.818087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075088, -0.192934, 0.978334,
		-0.553810, -0.823953, -0.119983,
		0.829250, -0.532802, -0.168718,
		32.664780, 32.894672, 27.767471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992073, 32.682724, 28.276871>,  <32.084305, 33.267632, 27.885574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992073, 32.682724, 28.276871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.384930, 32.719875, 28.211428>,  <32.620644, 32.742168, 28.172161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.384930, 32.719875, 28.211428>,  <31.992073, 32.682724, 28.276871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384930, 32.719875, 28.211428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179555, -0.203120, 0.962550,
		0.056171, -0.974738, -0.216170,
		0.982143, 0.092882, -0.163609,
		32.679573, 32.747738, 28.162344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365681, 32.018223, 28.376282>,  <31.992073, 32.682724, 28.276871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365681, 32.018223, 28.376282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630795, 32.310635, 28.441170>,  <32.789864, 32.486080, 28.480103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630795, 32.310635, 28.441170>,  <32.365681, 32.018223, 28.376282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630795, 32.310635, 28.441170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093791, -0.295974, 0.950580,
		0.742913, -0.614816, -0.264731,
		0.662785, 0.731027, 0.162219,
		32.829632, 32.529942, 28.489836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754585, 31.700165, 28.819874>,  <32.365681, 32.018223, 28.376282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754585, 31.700165, 28.819874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886372, 32.074711, 28.868326>,  <32.965443, 32.299438, 28.897398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886372, 32.074711, 28.868326>,  <32.754585, 31.700165, 28.819874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886372, 32.074711, 28.868326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223066, -0.201856, 0.953675,
		0.917438, -0.287186, -0.275376,
		0.329468, 0.936364, 0.121129,
		32.985210, 32.355621, 28.904665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392540, 31.670883, 29.087660>,  <32.754585, 31.700165, 28.819874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392540, 31.670883, 29.087660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.256882, 32.032940, 29.190187>,  <33.175488, 32.250175, 29.251705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.256882, 32.032940, 29.190187>,  <33.392540, 31.670883, 29.087660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256882, 32.032940, 29.190187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287703, -0.159619, 0.944325,
		0.895661, 0.394006, -0.206278,
		-0.339144, 0.905141, 0.256321,
		33.155140, 32.304482, 29.267084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945045, 32.075569, 29.370863>,  <33.392540, 31.670883, 29.087660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945045, 32.075569, 29.370863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610847, 32.223873, 29.533092>,  <33.410328, 32.312855, 29.630430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610847, 32.223873, 29.533092>,  <33.945045, 32.075569, 29.370863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610847, 32.223873, 29.533092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401547, -0.091905, 0.911216,
		0.375120, 0.924168, -0.072093,
		-0.835491, 0.370764, 0.405572,
		33.360199, 32.335102, 29.654764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240730, 32.415619, 29.892345>,  <33.945045, 32.075569, 29.370863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240730, 32.415619, 29.892345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850945, 32.406784, 29.981731>,  <33.617073, 32.401485, 30.035362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850945, 32.406784, 29.981731>,  <34.240730, 32.415619, 29.892345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850945, 32.406784, 29.981731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224048, -0.028857, 0.974151,
		-0.015065, 0.999340, 0.033068,
		-0.974462, -0.022085, 0.223466,
		33.558605, 32.400158, 30.048771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126526, 33.023205, 30.353857>,  <34.240730, 32.415619, 29.892345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126526, 33.023205, 30.353857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.833477, 32.758251, 30.416487>,  <33.657650, 32.599277, 30.454063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.833477, 32.758251, 30.416487>,  <34.126526, 33.023205, 30.353857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833477, 32.758251, 30.416487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164641, 0.050745, 0.985047,
		-0.660426, 0.747443, 0.071879,
		-0.732619, -0.662386, 0.156573,
		33.613693, 32.559536, 30.463459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702450, 33.236893, 30.805796>,  <34.126526, 33.023205, 30.353857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702450, 33.236893, 30.805796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640663, 32.842258, 30.826893>,  <33.603592, 32.605476, 30.839550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640663, 32.842258, 30.826893>,  <33.702450, 33.236893, 30.805796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640663, 32.842258, 30.826893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247620, 0.013019, 0.968770,
		-0.956464, 0.162705, 0.242288,
		-0.154470, -0.986589, 0.052741,
		33.594322, 32.546280, 30.842714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286278, 33.128113, 31.372797>,  <33.702450, 33.236893, 30.805796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286278, 33.128113, 31.372797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457436, 32.770981, 31.316561>,  <33.560131, 32.556702, 31.282820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457436, 32.770981, 31.316561>,  <33.286278, 33.128113, 31.372797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457436, 32.770981, 31.316561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134606, -0.090865, 0.986724,
		-0.893752, -0.441133, 0.081300,
		0.427890, -0.892830, -0.140590,
		33.585804, 32.503132, 31.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064659, 32.784313, 31.984064>,  <33.286278, 33.128113, 31.372797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064659, 32.784313, 31.984064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.366543, 32.566475, 31.837734>,  <33.547672, 32.435772, 31.749935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.366543, 32.566475, 31.837734>,  <33.064659, 32.784313, 31.984064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366543, 32.566475, 31.837734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325136, -0.173837, 0.929552,
		-0.569825, -0.820485, 0.045871,
		0.754709, -0.544596, -0.365826,
		33.592957, 32.403095, 31.727987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088367, 32.162739, 32.390175>,  <33.064659, 32.784313, 31.984064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088367, 32.162739, 32.390175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.447636, 32.242226, 32.233303>,  <33.663197, 32.289917, 32.139179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.447636, 32.242226, 32.233303>,  <33.088367, 32.162739, 32.390175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447636, 32.242226, 32.233303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425996, -0.172768, 0.888076,
		0.108723, -0.964708, -0.239829,
		0.898168, 0.198720, -0.392179,
		33.717087, 32.301842, 32.115650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474617, 31.660561, 32.740299>,  <33.088367, 32.162739, 32.390175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474617, 31.660561, 32.740299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728836, 31.937134, 32.602894>,  <33.881367, 32.103077, 32.520451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728836, 31.937134, 32.602894>,  <33.474617, 31.660561, 32.740299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728836, 31.937134, 32.602894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566658, -0.115556, 0.815809,
		0.524385, -0.713137, -0.465249,
		0.635546, 0.691435, -0.343509,
		33.919498, 32.144566, 32.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094585, 31.463318, 33.051147>,  <33.474617, 31.660561, 32.740299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094585, 31.463318, 33.051147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206463, 31.835566, 32.956730>,  <34.273590, 32.058914, 32.900078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206463, 31.835566, 32.956730>,  <34.094585, 31.463318, 33.051147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206463, 31.835566, 32.956730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593014, 0.025896, 0.804776,
		0.755053, -0.365069, -0.544628,
		0.279695, 0.930620, -0.236044,
		34.290371, 32.114750, 32.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863686, 31.547419, 33.325745>,  <34.094585, 31.463318, 33.051147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863686, 31.547419, 33.325745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721371, 31.919674, 33.291508>,  <34.635983, 32.143028, 33.270966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721371, 31.919674, 33.291508>,  <34.863686, 31.547419, 33.325745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721371, 31.919674, 33.291508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501371, 0.267359, 0.822889,
		0.788695, 0.249864, -0.561719,
		-0.355791, 0.930638, -0.085590,
		34.614632, 32.198864, 33.265831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458664, 31.965324, 33.285046>,  <34.863686, 31.547419, 33.325745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458664, 31.965324, 33.285046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150566, 32.171070, 33.435856>,  <34.965706, 32.294518, 33.526344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150566, 32.171070, 33.435856>,  <35.458664, 31.965324, 33.285046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150566, 32.171070, 33.435856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557108, 0.254932, 0.790342,
		0.310407, 0.818803, -0.482917,
		-0.770246, 0.514365, 0.377029,
		34.919491, 32.325378, 33.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669727, 32.696323, 33.438999>,  <35.458664, 31.965324, 33.285046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669727, 32.696323, 33.438999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383541, 32.507675, 33.645176>,  <35.211830, 32.394485, 33.768883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383541, 32.507675, 33.645176>,  <35.669727, 32.696323, 33.438999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383541, 32.507675, 33.645176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534761, 0.105104, 0.838441,
		-0.449603, 0.875515, 0.177007,
		-0.715463, -0.471622, 0.515446,
		35.168903, 32.366188, 33.799809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166489, 32.779331, 34.021271>,  <35.669727, 32.696323, 33.438999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166489, 32.779331, 34.021271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524513, 32.956753, 34.039722>,  <36.739326, 33.063206, 34.050793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524513, 32.956753, 34.039722>,  <36.166489, 32.779331, 34.021271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524513, 32.956753, 34.039722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036601, 0.176156, -0.983682,
		-0.444439, 0.878767, 0.173905,
		0.895061, 0.443552, 0.046127,
		36.793030, 33.089817, 34.053562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152363, 33.544151, 33.747944>,  <36.166489, 32.779331, 34.021271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152363, 33.544151, 33.747944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497944, 33.346668, 33.708267>,  <36.705292, 33.228176, 33.684460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497944, 33.346668, 33.708267>,  <36.152363, 33.544151, 33.747944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497944, 33.346668, 33.708267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063397, 0.088778, -0.994032,
		0.499572, 0.865082, 0.045399,
		0.863950, -0.493712, -0.099194,
		36.757130, 33.198555, 33.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600117, 33.963295, 33.373486>,  <36.152363, 33.544151, 33.747944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600117, 33.963295, 33.373486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.764961, 33.605408, 33.304607>,  <36.863869, 33.390675, 33.263283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.764961, 33.605408, 33.304607>,  <36.600117, 33.963295, 33.373486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764961, 33.605408, 33.304607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118337, 0.239945, -0.963547,
		0.903415, 0.376714, 0.204762,
		0.412114, -0.894714, -0.172191,
		36.888596, 33.336994, 33.252949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140377, 34.083984, 32.823734>,  <36.600117, 33.963295, 33.373486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140377, 34.083984, 32.823734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027836, 33.700798, 32.801281>,  <36.960312, 33.470886, 32.787807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027836, 33.700798, 32.801281>,  <37.140377, 34.083984, 32.823734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027836, 33.700798, 32.801281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005840, 0.056788, -0.998369,
		0.959588, -0.281218, -0.010383,
		-0.281349, -0.957962, -0.056136,
		36.943432, 33.413410, 32.784439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505943, 33.802471, 32.212242>,  <37.140377, 34.083984, 32.823734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505943, 33.802471, 32.212242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211624, 33.538673, 32.273781>,  <37.035030, 33.380394, 32.310703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211624, 33.538673, 32.273781>,  <37.505943, 33.802471, 32.212242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211624, 33.538673, 32.273781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265222, 0.071602, -0.961525,
		0.623102, -0.748294, -0.227596,
		-0.735800, -0.659492, 0.153849,
		36.990883, 33.340824, 32.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639896, 33.160118, 31.839499>,  <37.505943, 33.802471, 32.212242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639896, 33.160118, 31.839499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245144, 33.158463, 31.904047>,  <37.008293, 33.157471, 31.942776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245144, 33.158463, 31.904047>,  <37.639896, 33.160118, 31.839499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245144, 33.158463, 31.904047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161009, -0.046524, -0.985856,
		0.011590, -0.998909, 0.045247,
		-0.986885, -0.004141, 0.161372,
		36.949078, 33.157223, 31.952459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379230, 32.686600, 31.457363>,  <37.639896, 33.160118, 31.839499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379230, 32.686600, 31.457363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036789, 32.880409, 31.529284>,  <36.831326, 32.996693, 31.572435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036789, 32.880409, 31.529284>,  <37.379230, 32.686600, 31.457363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036789, 32.880409, 31.529284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229795, -0.045253, -0.972186,
		-0.462910, -0.873607, 0.150082,
		-0.856101, 0.484523, 0.179802,
		36.779957, 33.025764, 31.583223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996216, 32.554680, 30.835484>,  <37.379230, 32.686600, 31.457363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996216, 32.554680, 30.835484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798801, 32.864529, 30.993666>,  <36.680351, 33.050438, 31.088575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798801, 32.864529, 30.993666>,  <36.996216, 32.554680, 30.835484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798801, 32.864529, 30.993666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321166, 0.260233, -0.910567,
		-0.808254, -0.576405, 0.120347,
		-0.493537, 0.774621, 0.395456,
		36.650742, 33.096916, 31.112303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311192, 32.537533, 30.471861>,  <36.996216, 32.554680, 30.835484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311192, 32.537533, 30.471861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361973, 32.896225, 30.641451>,  <36.392441, 33.111443, 30.743204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361973, 32.896225, 30.641451>,  <36.311192, 32.537533, 30.471861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361973, 32.896225, 30.641451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417412, 0.436042, -0.797267,
		-0.899805, -0.075754, 0.429665,
		0.126955, 0.896733, 0.423973,
		36.400059, 33.165245, 30.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614754, 32.875954, 30.404646>,  <36.311192, 32.537533, 30.471861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614754, 32.875954, 30.404646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927219, 33.124615, 30.427727>,  <36.114700, 33.273811, 30.441576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927219, 33.124615, 30.427727>,  <35.614754, 32.875954, 30.404646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927219, 33.124615, 30.427727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311673, 0.468387, -0.826725,
		-0.540960, 0.627826, 0.559640,
		0.781167, 0.621650, 0.057702,
		36.161568, 33.311111, 30.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289459, 33.602573, 30.154516>,  <35.614754, 32.875954, 30.404646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289459, 33.602573, 30.154516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678940, 33.689323, 30.126616>,  <35.912628, 33.741375, 30.109875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678940, 33.689323, 30.126616>,  <35.289459, 33.602573, 30.154516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678940, 33.689323, 30.126616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195055, 0.635470, -0.747082,
		-0.117698, 0.741042, 0.661062,
		0.973705, 0.216874, -0.069750,
		35.971050, 33.754387, 30.105690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369308, 34.376919, 30.008448>,  <35.289459, 33.602573, 30.154516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369308, 34.376919, 30.008448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722843, 34.217072, 29.911169>,  <35.934963, 34.121162, 29.852802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722843, 34.217072, 29.911169>,  <35.369308, 34.376919, 30.008448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722843, 34.217072, 29.911169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033912, 0.573241, -0.818685,
		0.466568, 0.715335, 0.520202,
		0.883835, -0.399613, -0.243198,
		35.987995, 34.097187, 29.838209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630909, 34.957584, 29.667845>,  <35.369308, 34.376919, 30.008448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630909, 34.957584, 29.667845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837620, 34.626678, 29.579687>,  <35.961647, 34.428135, 29.526793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837620, 34.626678, 29.579687>,  <35.630909, 34.957584, 29.667845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837620, 34.626678, 29.579687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006666, 0.253536, -0.967303,
		0.856092, 0.501352, 0.125508,
		0.516780, -0.827264, -0.220393,
		35.992653, 34.378498, 29.513569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250946, 35.182392, 29.313303>,  <35.630909, 34.957584, 29.667845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250946, 35.182392, 29.313303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180523, 34.801128, 29.214918>,  <36.138268, 34.572372, 29.155888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180523, 34.801128, 29.214918>,  <36.250946, 35.182392, 29.313303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180523, 34.801128, 29.214918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075669, 0.236020, -0.968798,
		0.981466, -0.189180, 0.030570,
		-0.176062, -0.953156, -0.245961,
		36.127705, 34.515182, 29.141130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548687, 35.115425, 28.655092>,  <36.250946, 35.182392, 29.313303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548687, 35.115425, 28.655092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352528, 34.767254, 28.672359>,  <36.234833, 34.558350, 28.682720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352528, 34.767254, 28.672359>,  <36.548687, 35.115425, 28.655092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352528, 34.767254, 28.672359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121475, 0.019222, -0.992408,
		0.862990, -0.491921, -0.115162,
		-0.490400, -0.870427, 0.043168,
		36.205406, 34.506126, 28.685310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917980, 34.635719, 28.221354>,  <36.548687, 35.115425, 28.655092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917980, 34.635719, 28.221354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533878, 34.529171, 28.254728>,  <36.303417, 34.465244, 28.274754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533878, 34.529171, 28.254728>,  <36.917980, 34.635719, 28.221354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533878, 34.529171, 28.254728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118997, 0.120257, -0.985585,
		0.252497, -0.956339, -0.147175,
		-0.960253, -0.266371, 0.083437,
		36.245804, 34.449261, 28.279760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772484, 34.136387, 27.646486>,  <36.917980, 34.635719, 28.221354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772484, 34.136387, 27.646486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414589, 34.264736, 27.770735>,  <36.199852, 34.341747, 27.845284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414589, 34.264736, 27.770735>,  <36.772484, 34.136387, 27.646486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414589, 34.264736, 27.770735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306817, 0.063748, -0.949631,
		-0.324513, -0.944974, 0.041412,
		-0.894737, 0.320874, 0.310621,
		36.146168, 34.361000, 27.863922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214188, 33.657646, 27.384148>,  <36.772484, 34.136387, 27.646486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214188, 33.657646, 27.384148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019363, 34.004765, 27.423540>,  <35.902470, 34.213036, 27.447176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019363, 34.004765, 27.423540>,  <36.214188, 33.657646, 27.384148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019363, 34.004765, 27.423540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227332, -0.017098, -0.973667,
		-0.843264, -0.496620, 0.205607,
		-0.487058, 0.867799, 0.098479,
		35.873245, 34.265106, 27.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.414608, 33.562439, 26.959230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513912, 33.946976, 27.006889>,  <35.573494, 34.177696, 27.035484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513912, 33.946976, 27.006889>,  <35.414608, 33.562439, 26.959230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513912, 33.946976, 27.006889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333966, 0.200398, -0.921036,
		-0.909304, 0.188863, 0.370805,
		0.248258, 0.961338, 0.119149,
		35.588390, 34.235378, 27.042635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847771, 33.919662, 26.733709>,  <35.414608, 33.562439, 26.959230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847771, 33.919662, 26.733709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146248, 34.184612, 26.707001>,  <35.325333, 34.343582, 26.690975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146248, 34.184612, 26.707001>,  <34.847771, 33.919662, 26.733709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146248, 34.184612, 26.707001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350789, 0.305957, -0.885063,
		-0.565814, 0.683849, 0.460656,
		0.746191, 0.662375, -0.066772,
		35.370106, 34.383324, 26.686970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520683, 34.456238, 26.526665>,  <34.847771, 33.919662, 26.733709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520683, 34.456238, 26.526665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906853, 34.531555, 26.454557>,  <35.138554, 34.576744, 26.411293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906853, 34.531555, 26.454557>,  <34.520683, 34.456238, 26.526665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906853, 34.531555, 26.454557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215890, 0.189983, -0.957757,
		-0.146092, 0.963562, 0.224065,
		0.965427, 0.188295, -0.180268,
		35.196480, 34.588043, 26.400476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521690, 34.960808, 26.046373>,  <34.520683, 34.456238, 26.526665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521690, 34.960808, 26.046373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875751, 34.776146, 26.023104>,  <35.088188, 34.665348, 26.009142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875751, 34.776146, 26.023104>,  <34.521690, 34.960808, 26.046373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875751, 34.776146, 26.023104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002208, 0.120859, -0.992667,
		0.465303, 0.878787, 0.105959,
		0.885149, -0.461657, -0.058176,
		35.141296, 34.637650, 26.005651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910942, 35.420376, 25.713583>,  <34.521690, 34.960808, 26.046373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910942, 35.420376, 25.713583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078163, 35.062778, 25.649086>,  <35.178497, 34.848221, 25.610388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078163, 35.062778, 25.649086>,  <34.910942, 35.420376, 25.713583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078163, 35.062778, 25.649086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050889, 0.200265, -0.978419,
		0.906996, 0.400826, 0.129216,
		0.418054, -0.893998, -0.161242,
		35.203579, 34.794579, 25.600714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238926, 35.518604, 25.136192>,  <34.910942, 35.420376, 25.713583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238926, 35.518604, 25.136192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296520, 35.123409, 25.158625>,  <35.331078, 34.886292, 25.172085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296520, 35.123409, 25.158625>,  <35.238926, 35.518604, 25.136192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296520, 35.123409, 25.158625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126176, -0.037879, -0.991284,
		0.981503, 0.149807, 0.119207,
		0.143986, -0.987989, 0.056081,
		35.339718, 34.827011, 25.175449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780418, 35.403183, 24.677792>,  <35.238926, 35.518604, 25.136192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780418, 35.403183, 24.677792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610687, 35.041851, 24.702915>,  <35.508850, 34.825050, 24.717989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610687, 35.041851, 24.702915>,  <35.780418, 35.403183, 24.677792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610687, 35.041851, 24.702915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121859, -0.125697, -0.984556,
		0.897273, -0.410118, 0.163415,
		-0.424325, -0.903329, 0.062808,
		35.483391, 34.770851, 24.721758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212994, 34.989815, 24.174280>,  <35.780418, 35.403183, 24.677792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212994, 34.989815, 24.174280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873718, 34.789902, 24.244465>,  <35.670151, 34.669952, 24.286575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873718, 34.789902, 24.244465>,  <36.212994, 34.989815, 24.174280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873718, 34.789902, 24.244465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023030, -0.296141, -0.954867,
		0.529190, -0.813950, 0.239674,
		-0.848190, -0.499786, 0.175460,
		35.619263, 34.639965, 24.297102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352921, 34.234119, 23.870724>,  <36.212994, 34.989815, 24.174280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352921, 34.234119, 23.870724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967346, 34.332184, 23.912130>,  <35.736000, 34.391022, 23.936974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967346, 34.332184, 23.912130>,  <36.352921, 34.234119, 23.870724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967346, 34.332184, 23.912130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180427, -0.316147, -0.931395,
		-0.195612, -0.916487, 0.348980,
		-0.963941, 0.245157, 0.103517,
		35.678165, 34.405731, 23.943186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981152, 33.660355, 23.592148>,  <36.352921, 34.234119, 23.870724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981152, 33.660355, 23.592148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734673, 33.975388, 23.593315>,  <35.586784, 34.164406, 23.594015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734673, 33.975388, 23.593315>,  <35.981152, 33.660355, 23.592148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734673, 33.975388, 23.593315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399850, -0.309642, -0.862695,
		-0.678540, -0.532760, 0.505717,
		-0.616201, 0.787584, 0.002920,
		35.549812, 34.211662, 23.594191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381863, 33.375786, 23.426504>,  <35.981152, 33.660355, 23.592148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381863, 33.375786, 23.426504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332890, 33.761967, 23.334501>,  <35.303505, 33.993675, 23.279301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332890, 33.761967, 23.334501>,  <35.381863, 33.375786, 23.426504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332890, 33.761967, 23.334501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341233, -0.258570, -0.903715,
		-0.931971, -0.032162, 0.361104,
		-0.122436, 0.965457, -0.230005,
		35.296158, 34.051605, 23.265499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717365, 33.388699, 23.250761>,  <35.381863, 33.375786, 23.426504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717365, 33.388699, 23.250761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893269, 33.708454, 23.087013>,  <34.998810, 33.900307, 22.988764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893269, 33.708454, 23.087013>,  <34.717365, 33.388699, 23.250761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893269, 33.708454, 23.087013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510714, -0.152361, -0.846142,
		-0.738772, 0.581170, 0.341259,
		0.439758, 0.799392, -0.409372,
		35.025196, 33.948273, 22.964201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262703, 33.761116, 22.669327>,  <34.717365, 33.388699, 23.250761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262703, 33.761116, 22.669327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626778, 33.894325, 22.570818>,  <34.845222, 33.974251, 22.511713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626778, 33.894325, 22.570818>,  <34.262703, 33.761116, 22.669327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626778, 33.894325, 22.570818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263592, 0.007095, -0.964608,
		-0.319492, 0.942891, 0.094240,
		0.910189, 0.333026, -0.246272,
		34.899834, 33.994232, 22.496937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117176, 34.333694, 22.153198>,  <34.262703, 33.761116, 22.669327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117176, 34.333694, 22.153198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503399, 34.231091, 22.135723>,  <34.735130, 34.169529, 22.125238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503399, 34.231091, 22.135723>,  <34.117176, 34.333694, 22.153198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503399, 34.231091, 22.135723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017614, 0.103082, -0.994517,
		0.259604, 0.961030, 0.095013,
		0.965554, -0.256507, -0.043688,
		34.793064, 34.154137, 22.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417389, 34.904995, 21.842337>,  <34.117176, 34.333694, 22.153198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417389, 34.904995, 21.842337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644943, 34.581070, 21.784962>,  <34.781475, 34.386715, 21.750536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644943, 34.581070, 21.784962>,  <34.417389, 34.904995, 21.842337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644943, 34.581070, 21.784962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097177, 0.239376, -0.966052,
		0.816658, 0.535630, 0.214873,
		0.568881, -0.809815, -0.143438,
		34.815609, 34.338127, 21.741930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079128, 35.114597, 21.552153>,  <34.417389, 34.904995, 21.842337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079128, 35.114597, 21.552153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083374, 34.723064, 21.470404>,  <35.085922, 34.488144, 21.421354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083374, 34.723064, 21.470404>,  <35.079128, 35.114597, 21.552153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083374, 34.723064, 21.470404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141650, 0.203797, -0.968712,
		0.989860, -0.018665, 0.140815,
		0.010617, -0.978835, -0.204374,
		35.086559, 34.429413, 21.409092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596775, 35.049530, 21.005608>,  <35.079128, 35.114597, 21.552153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596775, 35.049530, 21.005608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421383, 34.692039, 20.967680>,  <35.316147, 34.477547, 20.944923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421383, 34.692039, 20.967680>,  <35.596775, 35.049530, 21.005608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421383, 34.692039, 20.967680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024033, 0.117123, -0.992827,
		0.898420, -0.433054, -0.072835,
		-0.438478, -0.893726, -0.094818,
		35.289841, 34.423923, 20.939234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019070, 34.666138, 20.534273>,  <35.596775, 35.049530, 21.005608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019070, 34.666138, 20.534273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652721, 34.506844, 20.513895>,  <35.432911, 34.411266, 20.501669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652721, 34.506844, 20.513895>,  <36.019070, 34.666138, 20.534273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652721, 34.506844, 20.513895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041112, 0.033198, -0.998603,
		0.399367, -0.916684, -0.014033,
		-0.915869, -0.398232, -0.050945,
		35.377960, 34.387375, 20.498611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041386, 34.088173, 20.059320>,  <36.019070, 34.666138, 20.534273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041386, 34.088173, 20.059320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658802, 34.201466, 20.087513>,  <35.429253, 34.269444, 20.104429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658802, 34.201466, 20.087513>,  <36.041386, 34.088173, 20.059320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658802, 34.201466, 20.087513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033939, 0.131918, -0.990679,
		-0.289893, -0.949934, -0.116561,
		-0.956457, 0.283235, 0.070482,
		35.371864, 34.286434, 20.108658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905888, 34.044575, 19.434063>,  <36.041386, 34.088173, 20.059320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905888, 34.044575, 19.434063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568523, 34.220669, 19.557255>,  <35.366104, 34.326324, 19.631170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568523, 34.220669, 19.557255>,  <35.905888, 34.044575, 19.434063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568523, 34.220669, 19.557255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200911, 0.273215, -0.940738,
		-0.498295, -0.855303, -0.141982,
		-0.843408, 0.440239, 0.307982,
		35.315502, 34.352741, 19.649649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362930, 33.764076, 19.129879>,  <35.905888, 34.044575, 19.434063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362930, 33.764076, 19.129879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262112, 34.141056, 19.217758>,  <35.201622, 34.367245, 19.270485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262112, 34.141056, 19.217758>,  <35.362930, 33.764076, 19.129879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262112, 34.141056, 19.217758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318030, 0.133748, -0.938599,
		-0.913964, -0.306442, 0.266015,
		-0.252047, 0.942446, 0.219698,
		35.186497, 34.423790, 19.283669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777214, 33.792828, 18.860716>,  <35.362930, 33.764076, 19.129879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777214, 33.792828, 18.860716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916767, 34.167492, 18.873001>,  <35.000500, 34.392292, 18.880371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916767, 34.167492, 18.873001>,  <34.777214, 33.792828, 18.860716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916767, 34.167492, 18.873001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076090, 0.060974, -0.995235,
		-0.934071, 0.344886, 0.092544,
		0.348886, 0.936662, 0.030712,
		35.021431, 34.448490, 18.882215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314182, 34.171776, 18.521004>,  <34.777214, 33.792828, 18.860716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314182, 34.171776, 18.521004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638813, 34.402927, 18.486610>,  <34.833591, 34.541618, 18.465975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638813, 34.402927, 18.486610>,  <34.314182, 34.171776, 18.521004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638813, 34.402927, 18.486610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036416, -0.096850, -0.994632,
		-0.583106, 0.810354, -0.057557,
		0.811579, 0.577881, -0.085984,
		34.882286, 34.576290, 18.460815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767532, 34.697388, 18.459780>,  <34.314182, 34.171776, 18.521004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767532, 34.697388, 18.459780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582535, 34.999638, 18.274252>,  <33.471535, 35.180988, 18.162935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582535, 34.999638, 18.274252>,  <33.767532, 34.697388, 18.459780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582535, 34.999638, 18.274252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490180, 0.217994, 0.843921,
		0.738797, 0.617665, 0.269570,
		-0.462496, 0.755625, -0.463820,
		33.443787, 35.226326, 18.135105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027229, 35.435795, 18.611525>,  <33.767532, 34.697388, 18.459780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027229, 35.435795, 18.611525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638893, 35.378990, 18.534264>,  <33.405891, 35.344910, 18.487907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638893, 35.378990, 18.534264>,  <34.027229, 35.435795, 18.611525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638893, 35.378990, 18.534264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216789, 0.176056, 0.960212,
		-0.102353, 0.974083, -0.201707,
		-0.970838, -0.142008, -0.193151,
		33.347641, 35.336388, 18.476318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673954, 35.816830, 19.150789>,  <34.027229, 35.435795, 18.611525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673954, 35.816830, 19.150789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363995, 35.592537, 19.034090>,  <33.178020, 35.457962, 18.964071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363995, 35.592537, 19.034090>,  <33.673954, 35.816830, 19.150789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363995, 35.592537, 19.034090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350513, -0.002899, 0.936553,
		-0.525997, 0.827996, -0.194296,
		-0.774899, -0.560727, -0.291748,
		33.131523, 35.424320, 18.946566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047741, 36.119366, 19.402777>,  <33.673954, 35.816830, 19.150789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047741, 36.119366, 19.402777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943245, 35.742023, 19.320967>,  <32.880547, 35.515617, 19.271881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943245, 35.742023, 19.320967>,  <33.047741, 36.119366, 19.402777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943245, 35.742023, 19.320967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523381, -0.039600, 0.851178,
		-0.811064, 0.329409, -0.483390,
		-0.261244, -0.943357, -0.204524,
		32.864872, 35.459015, 19.259609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273548, 36.041988, 19.448963>,  <33.047741, 36.119366, 19.402777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273548, 36.041988, 19.448963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433342, 35.678989, 19.500898>,  <32.529217, 35.461189, 19.532059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433342, 35.678989, 19.500898>,  <32.273548, 36.041988, 19.448963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433342, 35.678989, 19.500898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526750, -0.111311, 0.842701,
		-0.750297, -0.405040, -0.522492,
		0.399486, -0.907499, 0.129839,
		32.553188, 35.406738, 19.539850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695404, 35.664715, 19.738066>,  <32.273548, 36.041988, 19.448963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695404, 35.664715, 19.738066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024578, 35.458588, 19.833752>,  <32.222084, 35.334911, 19.891163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024578, 35.458588, 19.833752>,  <31.695404, 35.664715, 19.738066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024578, 35.458588, 19.833752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332025, -0.094562, 0.938519,
		-0.461016, -0.851766, -0.248917,
		0.822936, -0.515319, 0.239213,
		32.271458, 35.303993, 19.905516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444712, 34.997749, 20.099995>,  <31.695404, 35.664715, 19.738066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444712, 34.997749, 20.099995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827663, 35.062599, 20.195610>,  <32.057434, 35.101509, 20.252979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827663, 35.062599, 20.195610>,  <31.444712, 34.997749, 20.099995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827663, 35.062599, 20.195610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223389, -0.108995, 0.968616,
		0.183097, -0.980731, -0.068131,
		0.957378, 0.162131, 0.239041,
		32.114876, 35.111237, 20.267323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662605, 34.485714, 20.594963>,  <31.444712, 34.997749, 20.099995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662605, 34.485714, 20.594963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931299, 34.779400, 20.634354>,  <32.092514, 34.955612, 20.657988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931299, 34.779400, 20.634354>,  <31.662605, 34.485714, 20.594963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931299, 34.779400, 20.634354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000370, -0.133269, 0.991080,
		0.740793, -0.665705, -0.089793,
		0.671733, 0.734218, 0.098478,
		32.132820, 34.999664, 20.663897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979286, 34.238125, 21.221109>,  <31.662605, 34.485714, 20.594963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979286, 34.238125, 21.221109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135086, 34.606220, 21.205849>,  <32.228565, 34.827076, 21.196692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135086, 34.606220, 21.205849>,  <31.979286, 34.238125, 21.221109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135086, 34.606220, 21.205849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250796, -0.066112, 0.965780,
		0.886223, -0.385740, -0.256542,
		0.389500, 0.920236, -0.038152,
		32.251938, 34.882290, 21.194403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528568, 34.313446, 21.666828>,  <31.979286, 34.238125, 21.221109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528568, 34.313446, 21.666828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501980, 34.711761, 21.641579>,  <32.486027, 34.950752, 21.626429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501980, 34.711761, 21.641579>,  <32.528568, 34.313446, 21.666828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501980, 34.711761, 21.641579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389091, 0.084123, 0.917350,
		0.918798, 0.036418, -0.393045,
		-0.066472, 0.995790, -0.063122,
		32.482037, 35.010498, 21.622643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137058, 34.743118, 21.789322>,  <32.528568, 34.313446, 21.666828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137058, 34.743118, 21.789322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858734, 35.013950, 21.885164>,  <32.691738, 35.176449, 21.942669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858734, 35.013950, 21.885164>,  <33.137058, 34.743118, 21.789322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858734, 35.013950, 21.885164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357029, 0.036605, 0.933376,
		0.623198, 0.735000, -0.267206,
		-0.695812, 0.677078, 0.239604,
		32.649990, 35.217075, 21.957047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483665, 35.267433, 22.244406>,  <33.137058, 34.743118, 21.789322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483665, 35.267433, 22.244406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098286, 35.332802, 22.329317>,  <32.867058, 35.372025, 22.380264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098286, 35.332802, 22.329317>,  <33.483665, 35.267433, 22.244406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098286, 35.332802, 22.329317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213399, -0.010887, 0.976905,
		0.161959, 0.986496, -0.024385,
		-0.963447, 0.163422, 0.212280,
		32.809250, 35.381828, 22.393002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575512, 35.634171, 22.937679>,  <33.483665, 35.267433, 22.244406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575512, 35.634171, 22.937679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197239, 35.523151, 22.869980>,  <32.970276, 35.456539, 22.829361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197239, 35.523151, 22.869980>,  <33.575512, 35.634171, 22.937679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197239, 35.523151, 22.869980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076520, -0.315949, 0.945685,
		-0.315949, 0.907272, 0.277550,
		-0.945685, -0.277550, -0.169249,
		32.913532, 35.439888, 22.819204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179401, 35.970917, 23.460676>,  <33.575512, 35.634171, 22.937679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179401, 35.970917, 23.460676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988213, 35.634399, 23.359667>,  <32.873501, 35.432487, 23.299061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988213, 35.634399, 23.359667>,  <33.179401, 35.970917, 23.460676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988213, 35.634399, 23.359667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019967, -0.277008, 0.960660,
		-0.878149, 0.464208, 0.115603,
		-0.477970, -0.841295, -0.252523,
		32.844822, 35.382011, 23.283911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845840, 35.743038, 24.059406>,  <33.179401, 35.970917, 23.460676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845840, 35.743038, 24.059406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790588, 35.403236, 23.855736>,  <32.757439, 35.199356, 23.733534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790588, 35.403236, 23.855736>,  <32.845840, 35.743038, 24.059406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790588, 35.403236, 23.855736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000103, -0.514116, 0.857721,
		-0.990414, 0.118424, 0.071102,
		-0.138129, -0.849506, -0.509176,
		32.749149, 35.148384, 23.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288319, 35.323181, 24.399906>,  <32.845840, 35.743038, 24.059406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288319, 35.323181, 24.399906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475529, 35.057911, 24.166273>,  <32.587856, 34.898750, 24.026094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475529, 35.057911, 24.166273>,  <32.288319, 35.323181, 24.399906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475529, 35.057911, 24.166273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005319, -0.658812, 0.752288,
		-0.883698, -0.355198, -0.304815,
		0.468028, -0.663175, -0.584081,
		32.615936, 34.858959, 23.991049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938576, 34.709782, 24.569942>,  <32.288319, 35.323181, 24.399906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938576, 34.709782, 24.569942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275661, 34.592667, 24.389229>,  <32.477913, 34.522400, 24.280800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275661, 34.592667, 24.389229>,  <31.938576, 34.709782, 24.569942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275661, 34.592667, 24.389229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047919, -0.795061, 0.604634,
		-0.536224, -0.531183, -0.655980,
		0.842715, -0.292785, -0.451784,
		32.528477, 34.504829, 24.253695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997952, 33.985172, 24.372646>,  <31.938576, 34.709782, 24.569942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997952, 33.985172, 24.372646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390663, 34.048462, 24.414743>,  <32.626289, 34.086437, 24.440001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390663, 34.048462, 24.414743>,  <31.997952, 33.985172, 24.372646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390663, 34.048462, 24.414743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096527, -0.892289, 0.441025,
		0.163687, -0.422830, -0.891303,
		0.981778, 0.158225, 0.105242,
		32.685196, 34.095928, 24.446316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288097, 33.303085, 24.300114>,  <31.997952, 33.985172, 24.372646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288097, 33.303085, 24.300114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544270, 33.558361, 24.471022>,  <32.697975, 33.711525, 24.573566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544270, 33.558361, 24.471022>,  <32.288097, 33.303085, 24.300114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544270, 33.558361, 24.471022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324575, -0.729115, 0.602530,
		0.696058, -0.247198, -0.674089,
		0.640433, 0.638189, 0.427272,
		32.736401, 33.749817, 24.599203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960175, 32.951229, 24.453274>,  <32.288097, 33.303085, 24.300114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960175, 32.951229, 24.453274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902424, 33.240658, 24.723269>,  <32.867775, 33.414314, 24.885265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902424, 33.240658, 24.723269>,  <32.960175, 32.951229, 24.453274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902424, 33.240658, 24.723269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112084, -0.665785, 0.737677,
		0.983155, 0.182156, 0.015021,
		-0.144374, 0.723567, 0.674987,
		32.859112, 33.457729, 24.925764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465721, 32.814857, 24.912497>,  <32.960175, 32.951229, 24.453274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465721, 32.814857, 24.912497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212524, 33.052097, 25.111515>,  <33.060604, 33.194439, 25.230927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212524, 33.052097, 25.111515>,  <33.465721, 32.814857, 24.912497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212524, 33.052097, 25.111515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217089, -0.480921, 0.849463,
		0.743096, 0.645716, 0.175665,
		-0.632993, 0.593098, 0.497548,
		33.022625, 33.230026, 25.260780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.103443, 33.646862, 29.502337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748341, 33.794025, 29.612993>,  <36.535278, 33.882324, 29.679388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748341, 33.794025, 29.612993>,  <37.103443, 33.646862, 29.502337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748341, 33.794025, 29.612993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211980, -0.206710, 0.955163,
		0.408598, 0.906595, 0.105518,
		-0.887757, 0.367910, 0.276641,
		36.482014, 33.904400, 29.695986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251850, 33.988411, 30.089611>,  <37.103443, 33.646862, 29.502337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251850, 33.988411, 30.089611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.858177, 33.917812, 30.095818>,  <36.621975, 33.875454, 30.099543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.858177, 33.917812, 30.095818>,  <37.251850, 33.988411, 30.089611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858177, 33.917812, 30.095818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069285, -0.302777, 0.950540,
		-0.163068, 0.936576, 0.310215,
		-0.984179, -0.176496, 0.015517,
		36.562923, 33.864864, 30.100473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082222, 34.303593, 30.689379>,  <37.251850, 33.988411, 30.089611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082222, 34.303593, 30.689379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812054, 34.023766, 30.596073>,  <36.649952, 33.855869, 30.540091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812054, 34.023766, 30.596073>,  <37.082222, 34.303593, 30.689379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812054, 34.023766, 30.596073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088031, -0.237571, 0.967373,
		-0.732157, 0.673921, 0.098878,
		-0.675424, -0.699564, -0.233265,
		36.609428, 33.813896, 30.526094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567001, 34.396744, 31.114700>,  <37.082222, 34.303593, 30.689379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567001, 34.396744, 31.114700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526371, 34.012451, 31.011406>,  <36.501991, 33.781876, 30.949429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526371, 34.012451, 31.011406>,  <36.567001, 34.396744, 31.114700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526371, 34.012451, 31.011406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050619, -0.254252, 0.965813,
		-0.993539, 0.111174, -0.022806,
		-0.101575, -0.960727, -0.258237,
		36.495899, 33.724232, 30.933935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156067, 34.205914, 31.590866>,  <36.567001, 34.396744, 31.114700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156067, 34.205914, 31.590866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306496, 33.859818, 31.458241>,  <36.396751, 33.652161, 31.378666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306496, 33.859818, 31.458241>,  <36.156067, 34.205914, 31.590866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306496, 33.859818, 31.458241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053092, -0.337120, 0.939964,
		-0.925070, -0.371094, -0.080843,
		0.376069, -0.865240, -0.331562,
		36.419315, 33.600246, 31.358772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701962, 33.692383, 31.868143>,  <36.156067, 34.205914, 31.590866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701962, 33.692383, 31.868143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045235, 33.505447, 31.783186>,  <36.251198, 33.393284, 31.732212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045235, 33.505447, 31.783186>,  <35.701962, 33.692383, 31.868143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045235, 33.505447, 31.783186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035223, -0.359165, 0.932609,
		-0.512134, -0.807831, -0.291768,
		0.858183, -0.467344, -0.212394,
		36.302689, 33.365246, 31.719467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689297, 33.108978, 32.209946>,  <35.701962, 33.692383, 31.868143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689297, 33.108978, 32.209946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.081100, 33.112019, 32.129440>,  <36.316181, 33.113842, 32.081139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.081100, 33.112019, 32.129440>,  <35.689297, 33.108978, 32.209946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081100, 33.112019, 32.129440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184358, -0.436211, 0.880756,
		-0.081098, -0.899812, -0.428674,
		0.979508, 0.007602, -0.201263,
		36.374954, 33.114300, 32.069061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018650, 32.435249, 32.371666>,  <35.689297, 33.108978, 32.209946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018650, 32.435249, 32.371666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303970, 32.715565, 32.375683>,  <36.475163, 32.883755, 32.378094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303970, 32.715565, 32.375683>,  <36.018650, 32.435249, 32.371666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303970, 32.715565, 32.375683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267179, -0.285146, 0.920493,
		0.647932, -0.653905, -0.390631,
		0.713301, 0.700785, 0.010045,
		36.517960, 32.925800, 32.378696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621002, 32.167049, 32.634338>,  <36.018650, 32.435249, 32.371666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621002, 32.167049, 32.634338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718040, 32.550705, 32.692593>,  <36.776264, 32.780899, 32.727543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718040, 32.550705, 32.692593>,  <36.621002, 32.167049, 32.634338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718040, 32.550705, 32.692593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273797, -0.211705, 0.938198,
		0.930690, -0.187726, -0.313966,
		0.242592, 0.959135, 0.145633,
		36.790817, 32.838444, 32.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188358, 32.099049, 32.962025>,  <36.621002, 32.167049, 32.634338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188358, 32.099049, 32.962025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.099373, 32.478031, 33.053974>,  <37.045982, 32.705421, 33.109142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.099373, 32.478031, 33.053974>,  <37.188358, 32.099049, 32.962025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099373, 32.478031, 33.053974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339924, -0.145604, 0.929113,
		0.913762, 0.284834, -0.289671,
		-0.222466, 0.947454, 0.229870,
		37.032635, 32.762268, 33.122936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791218, 32.389763, 33.364407>,  <37.188358, 32.099049, 32.962025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791218, 32.389763, 33.364407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477573, 32.617702, 33.462749>,  <37.289387, 32.754467, 33.521755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477573, 32.617702, 33.462749>,  <37.791218, 32.389763, 33.364407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477573, 32.617702, 33.462749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257862, -0.061191, 0.964242,
		0.564516, 0.819468, -0.098962,
		-0.784110, 0.569849, 0.245853,
		37.242340, 32.788658, 33.536507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953705, 32.875340, 33.874481>,  <37.791218, 32.389763, 33.364407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953705, 32.875340, 33.874481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558456, 32.829155, 33.915058>,  <37.321308, 32.801445, 33.939404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558456, 32.829155, 33.915058>,  <37.953705, 32.875340, 33.874481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558456, 32.829155, 33.915058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105885, -0.032998, 0.993831,
		-0.111401, 0.992764, 0.044831,
		-0.988119, -0.115460, 0.101443,
		37.262020, 32.794518, 33.945492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628117, 32.910652, 34.262924>,  <37.953705, 32.875340, 33.874481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628117, 32.910652, 34.262924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.802834, 32.569946, 34.378658>,  <38.907665, 32.365524, 34.448101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.802834, 32.569946, 34.378658>,  <38.628117, 32.910652, 34.262924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802834, 32.569946, 34.378658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819141, 0.243675, -0.519259,
		0.371780, 0.463817, 0.804148,
		0.436792, -0.851761, 0.289338,
		38.933872, 32.314419, 34.465458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392704, 32.943901, 34.479847>,  <38.628117, 32.910652, 34.262924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392704, 32.943901, 34.479847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345699, 32.582783, 34.314365>,  <39.317497, 32.366112, 34.215076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345699, 32.582783, 34.314365>,  <39.392704, 32.943901, 34.479847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345699, 32.582783, 34.314365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894994, 0.084240, -0.438051,
		0.430321, -0.421739, 0.798097,
		-0.117512, -0.902795, -0.413705,
		39.310448, 32.311943, 34.190254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942978, 33.431549, 34.429756>,  <39.392704, 32.943901, 34.479847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942978, 33.431549, 34.429756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269173, 33.631214, 34.312580>,  <40.464890, 33.751015, 34.242275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269173, 33.631214, 34.312580>,  <39.942978, 33.431549, 34.429756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269173, 33.631214, 34.312580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556976, 0.539222, -0.631678,
		-0.157350, 0.678287, 0.717752,
		0.815487, 0.499165, -0.292943,
		40.513817, 33.780964, 34.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633121, 33.866913, 34.130123>,  <39.942978, 33.431549, 34.429756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633121, 33.866913, 34.130123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005894, 33.939758, 34.004684>,  <40.229557, 33.983467, 33.929420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005894, 33.939758, 34.004684>,  <39.633121, 33.866913, 34.130123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005894, 33.939758, 34.004684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360055, 0.567786, -0.740256,
		0.043247, 0.802779, 0.594707,
		0.931928, 0.182113, -0.313600,
		40.285473, 33.994392, 33.910606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652012, 34.583862, 34.001022>,  <39.633121, 33.866913, 34.130123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652012, 34.583862, 34.001022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.950134, 34.419975, 33.790630>,  <40.129005, 34.321644, 33.664394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.950134, 34.419975, 33.790630>,  <39.652012, 34.583862, 34.001022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950134, 34.419975, 33.790630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247923, 0.562024, -0.789090,
		0.618916, 0.718514, 0.317300,
		0.745303, -0.409715, -0.525982,
		40.173725, 34.297062, 33.632835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029503, 35.139496, 33.671860>,  <39.652012, 34.583862, 34.001022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029503, 35.139496, 33.671860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144501, 34.841015, 33.431686>,  <40.213501, 34.661926, 33.287582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144501, 34.841015, 33.431686>,  <40.029503, 35.139496, 33.671860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144501, 34.841015, 33.431686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055739, 0.612803, -0.788268,
		0.956158, 0.260092, 0.134586,
		0.287497, -0.746207, -0.600434,
		40.230751, 34.617153, 33.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479912, 35.490040, 33.226654>,  <40.029503, 35.139496, 33.671860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479912, 35.490040, 33.226654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378948, 35.144371, 33.052528>,  <40.318371, 34.936970, 32.948051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378948, 35.144371, 33.052528>,  <40.479912, 35.490040, 33.226654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378948, 35.144371, 33.052528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020549, 0.454568, -0.890475,
		0.967401, -0.215823, -0.132497,
		-0.252414, -0.864169, -0.435315,
		40.303223, 34.885120, 32.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984898, 35.414066, 32.791885>,  <40.479912, 35.490040, 33.226654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984898, 35.414066, 32.791885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700630, 35.165203, 32.660519>,  <40.530067, 35.015884, 32.581699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700630, 35.165203, 32.660519>,  <40.984898, 35.414066, 32.791885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700630, 35.165203, 32.660519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132555, 0.340044, -0.931020,
		0.690924, -0.705183, -0.159189,
		-0.710671, -0.622163, -0.328420,
		40.487431, 34.978554, 32.561993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133827, 35.190365, 32.037971>,  <40.984898, 35.414066, 32.791885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133827, 35.190365, 32.037971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747654, 35.086361, 32.030716>,  <40.515949, 35.023956, 32.026363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747654, 35.086361, 32.030716>,  <41.133827, 35.190365, 32.037971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747654, 35.086361, 32.030716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063856, 0.303412, -0.950717,
		0.252695, -0.916699, -0.309528,
		-0.965436, -0.260007, -0.018134,
		40.458023, 35.008358, 32.025276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011555, 34.827667, 31.447664>,  <41.133827, 35.190365, 32.037971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011555, 34.827667, 31.447664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.632828, 34.922920, 31.534225>,  <40.405590, 34.980072, 31.586163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.632828, 34.922920, 31.534225>,  <41.011555, 34.827667, 31.447664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632828, 34.922920, 31.534225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157457, 0.243626, -0.957002,
		-0.280619, -0.940180, -0.193173,
		-0.946816, 0.238136, 0.216404,
		40.348782, 34.994362, 31.599146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607010, 34.443672, 30.891642>,  <41.011555, 34.827667, 31.447664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607010, 34.443672, 30.891642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394394, 34.755550, 31.024033>,  <40.266827, 34.942677, 31.103466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394394, 34.755550, 31.024033>,  <40.607010, 34.443672, 30.891642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394394, 34.755550, 31.024033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153438, 0.295650, -0.942893,
		-0.833022, -0.551967, -0.037515,
		-0.531538, 0.779694, 0.330976,
		40.234932, 34.989460, 31.123325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003723, 34.427528, 30.497459>,  <40.607010, 34.443672, 30.891642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003723, 34.427528, 30.497459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987976, 34.795372, 30.653801>,  <39.978527, 35.016079, 30.747606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987976, 34.795372, 30.653801>,  <40.003723, 34.427528, 30.497459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987976, 34.795372, 30.653801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392393, 0.345509, -0.852438,
		-0.918955, -0.186924, 0.347248,
		-0.039364, 0.919610, 0.390855,
		39.976166, 35.071255, 30.771057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336601, 34.689938, 30.578356>,  <40.003723, 34.427528, 30.497459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336601, 34.689938, 30.578356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558029, 35.019917, 30.532707>,  <39.690887, 35.217903, 30.505318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558029, 35.019917, 30.532707>,  <39.336601, 34.689938, 30.578356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558029, 35.019917, 30.532707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348320, 0.104878, -0.931490,
		-0.756459, 0.555398, 0.345402,
		0.553573, 0.824945, -0.114120,
		39.724102, 35.267399, 30.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826157, 35.173866, 30.266146>,  <39.336601, 34.689938, 30.578356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826157, 35.173866, 30.266146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190796, 35.334366, 30.230385>,  <39.409580, 35.430668, 30.208927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190796, 35.334366, 30.230385>,  <38.826157, 35.173866, 30.266146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190796, 35.334366, 30.230385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222715, 0.299251, -0.927818,
		-0.345534, 0.865706, 0.362160,
		0.911594, 0.401251, -0.089404,
		39.464275, 35.454742, 30.203564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724972, 35.743469, 29.931969>,  <38.826157, 35.173866, 30.266146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724972, 35.743469, 29.931969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118561, 35.692162, 29.882404>,  <39.354713, 35.661377, 29.852665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118561, 35.692162, 29.882404>,  <38.724972, 35.743469, 29.931969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118561, 35.692162, 29.882404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106267, 0.136299, -0.984952,
		0.143223, 0.982329, 0.120484,
		0.983969, -0.128265, -0.123911,
		39.413750, 35.653683, 29.845232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931435, 36.206039, 29.424730>,  <38.724972, 35.743469, 29.931969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931435, 36.206039, 29.424730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.208366, 35.917419, 29.422148>,  <39.374527, 35.744247, 29.420599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.208366, 35.917419, 29.422148>,  <38.931435, 36.206039, 29.424730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208366, 35.917419, 29.422148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058959, -0.047652, -0.997122,
		0.719165, 0.690721, -0.075533,
		0.692333, -0.721549, -0.006455,
		39.416065, 35.700954, 29.420212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252644, 36.893482, 29.546459>,  <38.931435, 36.206039, 29.424730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252644, 36.893482, 29.546459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896816, 37.060673, 29.620174>,  <38.683319, 37.160988, 29.664404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896816, 37.060673, 29.620174>,  <39.252644, 36.893482, 29.546459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896816, 37.060673, 29.620174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053852, -0.496574, 0.866322,
		0.453618, 0.760728, 0.464245,
		-0.889568, 0.417980, 0.184288,
		38.629948, 37.186066, 29.675461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262184, 37.024891, 30.237495>,  <39.252644, 36.893482, 29.546459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262184, 37.024891, 30.237495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872494, 37.090004, 30.175028>,  <38.638680, 37.129070, 30.137547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872494, 37.090004, 30.175028>,  <39.262184, 37.024891, 30.237495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872494, 37.090004, 30.175028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208182, -0.382179, 0.900333,
		0.086869, 0.909639, 0.406216,
		-0.974225, 0.162778, -0.156171,
		38.580227, 37.138836, 30.128176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091721, 37.503151, 30.724310>,  <39.262184, 37.024891, 30.237495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091721, 37.503151, 30.724310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755684, 37.314117, 30.617802>,  <38.554062, 37.200695, 30.553896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755684, 37.314117, 30.617802>,  <39.091721, 37.503151, 30.724310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755684, 37.314117, 30.617802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150550, -0.268456, 0.951455,
		-0.521128, 0.839400, 0.154380,
		-0.840095, -0.472588, -0.266271,
		38.503654, 37.172340, 30.537920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539413, 37.739014, 31.199394>,  <39.091721, 37.503151, 30.724310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539413, 37.739014, 31.199394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401352, 37.400646, 31.036770>,  <38.318516, 37.197628, 30.939196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401352, 37.400646, 31.036770>,  <38.539413, 37.739014, 31.199394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401352, 37.400646, 31.036770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266286, -0.327117, 0.906690,
		-0.899977, 0.421211, -0.112349,
		-0.345157, -0.845917, -0.406561,
		38.297806, 37.146870, 30.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865726, 37.650944, 31.506571>,  <38.539413, 37.739014, 31.199394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865726, 37.650944, 31.506571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949429, 37.273708, 31.403185>,  <37.999649, 37.047367, 31.341154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949429, 37.273708, 31.403185>,  <37.865726, 37.650944, 31.506571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949429, 37.273708, 31.403185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497330, -0.330220, 0.802258,
		-0.841947, -0.039335, -0.538124,
		0.209256, -0.943085, -0.258465,
		38.012207, 36.990784, 31.325645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193466, 37.289917, 31.572107>,  <37.865726, 37.650944, 31.506571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193466, 37.289917, 31.572107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467247, 36.998478, 31.561724>,  <37.631516, 36.823616, 31.555492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467247, 36.998478, 31.561724>,  <37.193466, 37.289917, 31.572107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467247, 36.998478, 31.561724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421176, -0.424225, 0.801651,
		-0.595091, -0.537759, -0.597229,
		0.684454, -0.728593, -0.025961,
		37.672585, 36.779900, 31.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795738, 36.635578, 31.553556>,  <37.193466, 37.289917, 31.572107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795738, 36.635578, 31.553556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170929, 36.539909, 31.653950>,  <37.396046, 36.482510, 31.714186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170929, 36.539909, 31.653950>,  <36.795738, 36.635578, 31.553556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170929, 36.539909, 31.653950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343233, -0.538645, 0.769449,
		-0.048838, -0.807873, -0.587329,
		0.937980, -0.239169, 0.250982,
		37.452324, 36.468159, 31.729244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739872, 36.067009, 31.711575>,  <36.795738, 36.635578, 31.553556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739872, 36.067009, 31.711575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089161, 36.128632, 31.896507>,  <37.298733, 36.165604, 32.007465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089161, 36.128632, 31.896507>,  <36.739872, 36.067009, 31.711575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089161, 36.128632, 31.896507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358944, -0.438353, 0.824018,
		0.329607, -0.885502, -0.327484,
		0.873223, 0.154054, 0.462330,
		37.351128, 36.174847, 32.035206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695805, 35.509377, 32.188168>,  <36.739872, 36.067009, 31.711575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695805, 35.509377, 32.188168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972427, 35.759964, 32.331997>,  <37.138401, 35.910316, 32.418293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972427, 35.759964, 32.331997>,  <36.695805, 35.509377, 32.188168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972427, 35.759964, 32.331997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243276, -0.266710, 0.932568,
		0.680124, -0.732397, -0.032040,
		0.691555, 0.626467, 0.359571,
		37.179893, 35.947903, 32.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003708, 35.153526, 32.809475>,  <36.695805, 35.509377, 32.188168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003708, 35.153526, 32.809475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066471, 35.546638, 32.848511>,  <37.104130, 35.782505, 32.871933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066471, 35.546638, 32.848511>,  <37.003708, 35.153526, 32.809475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066471, 35.546638, 32.848511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238984, -0.058095, 0.969284,
		0.958263, -0.175407, 0.225753,
		0.156904, 0.982780, 0.097590,
		37.113541, 35.841473, 32.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489651, 35.241203, 33.233772>,  <37.003708, 35.153526, 32.809475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489651, 35.241203, 33.233772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.285728, 35.584686, 33.254627>,  <37.163376, 35.790775, 33.267139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.285728, 35.584686, 33.254627>,  <37.489651, 35.241203, 33.233772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285728, 35.584686, 33.254627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306938, -0.238167, 0.921448,
		0.803672, 0.453756, 0.384989,
		-0.509804, 0.858709, 0.052133,
		37.132786, 35.842300, 33.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810238, 35.592060, 33.764675>,  <37.489651, 35.241203, 33.233772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810238, 35.592060, 33.764675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.447014, 35.750591, 33.710495>,  <37.229080, 35.845711, 33.677986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.447014, 35.750591, 33.710495>,  <37.810238, 35.592060, 33.764675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447014, 35.750591, 33.710495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271138, -0.309774, 0.911331,
		0.319230, 0.864270, 0.388754,
		-0.908062, 0.396330, -0.135447,
		37.174595, 35.869492, 33.669861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.429951, 39.441475, 26.539555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090168, 39.243053, 26.611507>,  <37.886299, 39.124001, 26.654680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090168, 39.243053, 26.611507>,  <38.429951, 39.441475, 26.539555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090168, 39.243053, 26.611507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109133, 0.168372, 0.979664,
		-0.516255, 0.851810, -0.088889,
		-0.849453, -0.496056, 0.179883,
		37.835331, 39.094238, 26.665472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266762, 39.646805, 27.188358>,  <38.429951, 39.441475, 26.539555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266762, 39.646805, 27.188358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000744, 39.352600, 27.136614>,  <37.841133, 39.176075, 27.105566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000744, 39.352600, 27.136614>,  <38.266762, 39.646805, 27.188358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000744, 39.352600, 27.136614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127244, -0.282289, 0.950853,
		-0.735886, 0.615897, 0.281324,
		-0.665042, -0.735516, -0.129363,
		37.801231, 39.131947, 27.097805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805458, 39.600979, 27.803259>,  <38.266762, 39.646805, 27.188358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805458, 39.600979, 27.803259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781265, 39.232456, 27.649614>,  <37.766750, 39.011345, 27.557428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781265, 39.232456, 27.649614>,  <37.805458, 39.600979, 27.803259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781265, 39.232456, 27.649614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001471, -0.384896, 0.922959,
		-0.998168, 0.055253, 0.024633,
		-0.060478, -0.921305, -0.384110,
		37.763123, 38.956066, 27.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461788, 39.278942, 28.306627>,  <37.805458, 39.600979, 27.803259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461788, 39.278942, 28.306627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640137, 39.003605, 28.077761>,  <37.747147, 38.838402, 27.940441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640137, 39.003605, 28.077761>,  <37.461788, 39.278942, 28.306627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640137, 39.003605, 28.077761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126774, -0.584218, 0.801634,
		-0.886073, -0.429963, -0.173222,
		0.445873, -0.688346, -0.572168,
		37.773899, 38.797100, 27.906111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194759, 38.613567, 28.507580>,  <37.461788, 39.278942, 28.306627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194759, 38.613567, 28.507580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527550, 38.513458, 28.309517>,  <37.727222, 38.453392, 28.190680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527550, 38.513458, 28.309517>,  <37.194759, 38.613567, 28.507580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527550, 38.513458, 28.309517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179837, -0.722644, 0.667417,
		-0.524856, -0.644323, -0.556215,
		0.831976, -0.250269, -0.495157,
		37.777142, 38.438377, 28.160969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174332, 37.977478, 28.698578>,  <37.194759, 38.613567, 28.507580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174332, 37.977478, 28.698578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542187, 38.054993, 28.561928>,  <37.762901, 38.101501, 28.479939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542187, 38.054993, 28.561928>,  <37.174332, 37.977478, 28.698578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542187, 38.054993, 28.561928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370898, -0.714641, 0.593062,
		-0.129211, -0.672112, -0.729089,
		0.919641, 0.193787, -0.341624,
		37.818077, 38.113129, 28.459440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538448, 37.313030, 28.388298>,  <37.174332, 37.977478, 28.698578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538448, 37.313030, 28.388298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798550, 37.575920, 28.540737>,  <37.954609, 37.733654, 28.632200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798550, 37.575920, 28.540737>,  <37.538448, 37.313030, 28.388298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798550, 37.575920, 28.540737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340356, -0.700481, 0.627283,
		0.679215, -0.278182, -0.679177,
		0.650249, 0.657222, 0.381097,
		37.993626, 37.773087, 28.655066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122589, 36.951691, 28.485916>,  <37.538448, 37.313030, 28.388298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122589, 36.951691, 28.485916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209293, 37.262459, 28.722357>,  <38.261318, 37.448921, 28.864222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209293, 37.262459, 28.722357>,  <38.122589, 36.951691, 28.485916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209293, 37.262459, 28.722357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357983, -0.626579, 0.692277,
		0.908219, 0.061543, -0.413945,
		0.216764, 0.776924, 0.591102,
		38.274323, 37.495537, 28.899687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679581, 36.757000, 28.835548>,  <38.122589, 36.951691, 28.485916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679581, 36.757000, 28.835548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506535, 37.046112, 29.051115>,  <38.402706, 37.219582, 29.180454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506535, 37.046112, 29.051115>,  <38.679581, 36.757000, 28.835548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506535, 37.046112, 29.051115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143313, -0.535017, 0.832597,
		0.890116, 0.437427, 0.127872,
		-0.432615, 0.722782, 0.538916,
		38.376751, 37.262947, 29.212790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409283, 36.395618, 28.914106>,  <38.679581, 36.757000, 28.835548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409283, 36.395618, 28.914106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485142, 36.005451, 28.958994>,  <39.530659, 35.771351, 28.985926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485142, 36.005451, 28.958994>,  <39.409283, 36.395618, 28.914106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485142, 36.005451, 28.958994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147759, -0.141344, -0.978871,
		0.970670, 0.169061, -0.170933,
		0.189649, -0.975418, 0.112218,
		39.542038, 35.712826, 28.992659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026737, 36.278725, 28.529552>,  <39.409283, 36.395618, 28.914106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026737, 36.278725, 28.529552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807838, 35.949425, 28.589914>,  <39.676498, 35.751842, 28.626131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807838, 35.949425, 28.589914>,  <40.026737, 36.278725, 28.529552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807838, 35.949425, 28.589914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224353, -0.029409, -0.974064,
		0.806338, -0.566913, -0.168605,
		-0.547251, -0.823252, 0.150903,
		39.643661, 35.702450, 28.635185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221653, 35.748528, 28.015205>,  <40.026737, 36.278725, 28.529552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221653, 35.748528, 28.015205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861359, 35.640133, 28.150997>,  <39.645184, 35.575096, 28.232471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861359, 35.640133, 28.150997>,  <40.221653, 35.748528, 28.015205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861359, 35.640133, 28.150997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313274, -0.136116, -0.939857,
		0.300893, -0.952912, 0.037712,
		-0.900735, -0.270983, 0.339479,
		39.591137, 35.558838, 28.252840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125862, 35.083427, 27.775049>,  <40.221653, 35.748528, 28.015205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125862, 35.083427, 27.775049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753319, 35.210033, 27.847036>,  <39.529793, 35.285995, 27.890228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753319, 35.210033, 27.847036>,  <40.125862, 35.083427, 27.775049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753319, 35.210033, 27.847036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259836, -0.231531, -0.937485,
		-0.255068, -0.919895, 0.297882,
		-0.931357, 0.316523, 0.179966,
		39.473911, 35.304989, 27.901028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677608, 34.577686, 27.592569>,  <40.125862, 35.083427, 27.775049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677608, 34.577686, 27.592569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449783, 34.906368, 27.584614>,  <39.313087, 35.103577, 27.579842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449783, 34.906368, 27.584614>,  <39.677608, 34.577686, 27.592569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449783, 34.906368, 27.584614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375871, -0.281899, -0.882754,
		-0.730971, -0.495310, 0.469415,
		-0.569564, 0.821707, -0.019887,
		39.278915, 35.152882, 27.578648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241573, 34.327435, 27.230606>,  <39.677608, 34.577686, 27.592569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241573, 34.327435, 27.230606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132889, 34.712257, 27.240526>,  <39.067680, 34.943153, 27.246479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132889, 34.712257, 27.240526>,  <39.241573, 34.327435, 27.230606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132889, 34.712257, 27.240526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632117, -0.158973, -0.758390,
		-0.725674, -0.221738, 0.651329,
		-0.271708, 0.962060, 0.024802,
		39.051376, 35.000874, 27.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553490, 34.390911, 27.037464>,  <39.241573, 34.327435, 27.230606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553490, 34.390911, 27.037464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703766, 34.756130, 26.973957>,  <38.793930, 34.975262, 26.935852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703766, 34.756130, 26.973957>,  <38.553490, 34.390911, 27.037464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703766, 34.756130, 26.973957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389456, 0.000089, -0.921045,
		-0.840942, 0.407858, 0.355625,
		0.375687, 0.913045, -0.158768,
		38.816471, 35.030045, 26.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148823, 34.531254, 26.536154>,  <38.553490, 34.390911, 27.037464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148823, 34.531254, 26.536154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421337, 34.824028, 26.531820>,  <38.584846, 34.999691, 26.529221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421337, 34.824028, 26.531820>,  <38.148823, 34.531254, 26.536154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421337, 34.824028, 26.531820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147790, 0.123039, -0.981336,
		-0.716942, 0.670173, 0.191998,
		0.681288, 0.731936, -0.010832,
		38.625725, 35.043610, 26.528570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809456, 35.099674, 26.374535>,  <38.148823, 34.531254, 26.536154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809456, 35.099674, 26.374535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191418, 35.189850, 26.297243>,  <38.420593, 35.243954, 26.250868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191418, 35.189850, 26.297243>,  <37.809456, 35.099674, 26.374535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191418, 35.189850, 26.297243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254235, 0.284639, -0.924308,
		-0.153375, 0.931750, 0.329117,
		0.954903, 0.225439, -0.193227,
		38.477890, 35.257481, 26.239275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941658, 35.840336, 26.059612>,  <37.809456, 35.099674, 26.374535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941658, 35.840336, 26.059612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234634, 35.591499, 25.948954>,  <38.410419, 35.442196, 25.882559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234634, 35.591499, 25.948954>,  <37.941658, 35.840336, 26.059612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234634, 35.591499, 25.948954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194854, 0.197801, -0.960680,
		0.652353, 0.757546, 0.023660,
		0.732439, -0.622092, -0.276647,
		38.454365, 35.404873, 25.865959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248859, 36.118988, 25.411976>,  <37.941658, 35.840336, 26.059612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248859, 36.118988, 25.411976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409599, 35.752773, 25.419046>,  <38.506042, 35.533043, 25.423288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409599, 35.752773, 25.419046>,  <38.248859, 36.118988, 25.411976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409599, 35.752773, 25.419046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031402, -0.005516, -0.999492,
		0.915168, 0.402199, 0.026533,
		0.401849, -0.915536, 0.017678,
		38.530155, 35.478111, 25.424349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612621, 36.207592, 24.816206>,  <38.248859, 36.118988, 25.411976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612621, 36.207592, 24.816206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591743, 35.815468, 24.892380>,  <38.579216, 35.580193, 24.938084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591743, 35.815468, 24.892380>,  <38.612621, 36.207592, 24.816206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591743, 35.815468, 24.892380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149191, -0.180902, -0.972119,
		0.987430, -0.079146, -0.136813,
		-0.052190, -0.980311, 0.190436,
		38.576088, 35.521374, 24.949511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966919, 35.975788, 24.321096>,  <38.612621, 36.207592, 24.816206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966919, 35.975788, 24.321096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744442, 35.661446, 24.429226>,  <38.610954, 35.472839, 24.494104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744442, 35.661446, 24.429226>,  <38.966919, 35.975788, 24.321096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744442, 35.661446, 24.429226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104415, -0.256622, -0.960855,
		0.824467, -0.562648, 0.060676,
		-0.556194, -0.785858, 0.270325,
		38.577583, 35.425690, 24.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193932, 35.387852, 23.953739>,  <38.966919, 35.975788, 24.321096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193932, 35.387852, 23.953739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817398, 35.300400, 24.056580>,  <38.591480, 35.247929, 24.118284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817398, 35.300400, 24.056580>,  <39.193932, 35.387852, 23.953739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817398, 35.300400, 24.056580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171176, -0.347252, -0.922017,
		0.290857, -0.911931, 0.289455,
		-0.941329, -0.218628, 0.257102,
		38.535000, 35.234810, 24.133711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.054726, 36.204605, 24.806936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.436699, 36.311325, 24.858959>,  <30.665884, 36.375359, 24.890173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.436699, 36.311325, 24.858959>,  <30.054726, 36.204605, 24.806936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436699, 36.311325, 24.858959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038241, -0.545120, 0.837486,
		0.294341, -0.794771, -0.530757,
		0.954935, 0.266803, 0.130058,
		30.723179, 36.391365, 24.897976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263723, 35.633759, 25.059343>,  <30.054726, 36.204605, 24.806936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263723, 35.633759, 25.059343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.544735, 35.902550, 25.153061>,  <30.713343, 36.063824, 25.209291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.544735, 35.902550, 25.153061>,  <30.263723, 35.633759, 25.059343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544735, 35.902550, 25.153061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107823, -0.425929, 0.898309,
		0.703439, -0.605826, -0.371683,
		0.702529, 0.671982, 0.234293,
		30.755493, 36.104145, 25.223349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753408, 35.252300, 25.368004>,  <30.263723, 35.633759, 25.059343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753408, 35.252300, 25.368004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.887449, 35.616425, 25.465193>,  <30.967873, 35.834900, 25.523506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.887449, 35.616425, 25.465193>,  <30.753408, 35.252300, 25.368004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887449, 35.616425, 25.465193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337452, -0.356736, 0.871129,
		0.879679, -0.209923, -0.426729,
		0.335100, 0.910314, 0.242974,
		30.987980, 35.889519, 25.538084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507414, 35.198021, 25.426830>,  <30.753408, 35.252300, 25.368004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507414, 35.198021, 25.426830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.328375, 35.487129, 25.637451>,  <31.220951, 35.660595, 25.763824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.328375, 35.487129, 25.637451>,  <31.507414, 35.198021, 25.426830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328375, 35.487129, 25.637451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398872, -0.365639, 0.840957,
		0.800348, 0.586438, -0.124633,
		-0.447599, 0.722771, 0.526552,
		31.194096, 35.703960, 25.795418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984724, 35.294266, 25.916458>,  <31.507414, 35.198021, 25.426830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984724, 35.294266, 25.916458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643595, 35.455200, 26.049616>,  <31.438917, 35.551762, 26.129511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643595, 35.455200, 26.049616>,  <31.984724, 35.294266, 25.916458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643595, 35.455200, 26.049616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279717, -0.186361, 0.941821,
		0.440964, 0.896325, 0.046394,
		-0.852824, 0.402332, 0.332896,
		31.387747, 35.575901, 26.149485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186256, 35.647381, 26.553885>,  <31.984724, 35.294266, 25.916458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186256, 35.647381, 26.553885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.790640, 35.596672, 26.584162>,  <31.553270, 35.566246, 26.602327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.790640, 35.596672, 26.584162>,  <32.186256, 35.647381, 26.553885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790640, 35.596672, 26.584162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105315, -0.246380, 0.963434,
		-0.103492, 0.960846, 0.257031,
		-0.989039, -0.126777, 0.075693,
		31.493929, 35.558640, 26.606871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984516, 36.174572, 27.122087>,  <32.186256, 35.647381, 26.553885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984516, 36.174572, 27.122087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.711414, 35.884666, 27.085070>,  <31.547552, 35.710724, 27.062859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.711414, 35.884666, 27.085070>,  <31.984516, 36.174572, 27.122087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711414, 35.884666, 27.085070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040056, -0.089339, 0.995196,
		-0.729548, 0.683182, 0.031965,
		-0.682756, -0.724762, -0.092543,
		31.506588, 35.667236, 27.057306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502249, 36.298538, 27.652796>,  <31.984516, 36.174572, 27.122087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502249, 36.298538, 27.652796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.466940, 35.914005, 27.548458>,  <31.445755, 35.683285, 27.485855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.466940, 35.914005, 27.548458>,  <31.502249, 36.298538, 27.652796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466940, 35.914005, 27.548458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052149, -0.257047, 0.964991,
		-0.994731, 0.098783, -0.027443,
		-0.088271, -0.961337, -0.260844,
		31.440458, 35.625603, 27.470205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065311, 36.001549, 28.110891>,  <31.502249, 36.298538, 27.652796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065311, 36.001549, 28.110891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.242537, 35.675903, 27.960733>,  <31.348871, 35.480518, 27.870638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.242537, 35.675903, 27.960733>,  <31.065311, 36.001549, 28.110891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242537, 35.675903, 27.960733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065629, -0.447070, 0.892088,
		-0.894086, -0.370614, -0.251508,
		0.443062, -0.814110, -0.375396,
		31.375456, 35.431671, 27.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686888, 35.565651, 28.500937>,  <31.065311, 36.001549, 28.110891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686888, 35.565651, 28.500937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998234, 35.345661, 28.379822>,  <31.185041, 35.213669, 28.307154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998234, 35.345661, 28.379822>,  <30.686888, 35.565651, 28.500937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998234, 35.345661, 28.379822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047737, -0.429043, 0.902022,
		-0.625996, -0.716555, -0.307697,
		0.778364, -0.549973, -0.302785,
		31.231743, 35.180668, 28.288986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584160, 34.881519, 28.794479>,  <30.686888, 35.565651, 28.500937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584160, 34.881519, 28.794479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.971277, 34.860516, 28.695993>,  <31.203547, 34.847912, 28.636902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.971277, 34.860516, 28.695993>,  <30.584160, 34.881519, 28.794479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971277, 34.860516, 28.695993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191024, -0.483856, 0.854045,
		-0.163976, -0.873571, -0.458242,
		0.967792, -0.052508, -0.246214,
		31.261616, 34.844765, 28.622129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778822, 34.201836, 28.997055>,  <30.584160, 34.881519, 28.794479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778822, 34.201836, 28.997055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099392, 34.440849, 28.986702>,  <31.291735, 34.584259, 28.980490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099392, 34.440849, 28.986702>,  <30.778822, 34.201836, 28.997055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099392, 34.440849, 28.986702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362451, -0.450790, 0.815731,
		0.475759, -0.663130, -0.577851,
		0.801425, 0.597535, -0.025884,
		31.339819, 34.620110, 28.978937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296553, 33.793015, 29.195637>,  <30.778822, 34.201836, 28.997055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296553, 33.793015, 29.195637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.458889, 34.149696, 29.275785>,  <31.556292, 34.363705, 29.323875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.458889, 34.149696, 29.275785>,  <31.296553, 33.793015, 29.195637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458889, 34.149696, 29.275785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378039, -0.363392, 0.851489,
		0.832093, -0.269822, -0.484580,
		0.405843, 0.891708, 0.200373,
		31.580643, 34.417210, 29.335897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967237, 33.608913, 29.489590>,  <31.296553, 33.793015, 29.195637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967237, 33.608913, 29.489590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.860786, 33.983311, 29.581764>,  <31.796917, 34.207947, 29.637068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.860786, 33.983311, 29.581764>,  <31.967237, 33.608913, 29.489590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860786, 33.983311, 29.581764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163038, -0.191905, 0.967776,
		0.950050, 0.295121, -0.101531,
		-0.266127, 0.935989, 0.230435,
		31.780949, 34.264107, 29.650894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638763, 33.494064, 29.516993>,  <31.967237, 33.608913, 29.489590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638763, 33.494064, 29.516993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786774, 33.126289, 29.463764>,  <32.875580, 32.905624, 29.431828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786774, 33.126289, 29.463764>,  <32.638763, 33.494064, 29.516993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786774, 33.126289, 29.463764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082218, 0.175083, -0.981115,
		0.925376, 0.352097, 0.140380,
		0.370026, -0.919442, -0.133069,
		32.897781, 32.850456, 29.423843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309578, 33.607597, 29.066198>,  <32.638763, 33.494064, 29.516993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309578, 33.607597, 29.066198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186947, 33.228432, 29.031635>,  <33.113369, 33.000931, 29.010897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186947, 33.228432, 29.031635>,  <33.309578, 33.607597, 29.066198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186947, 33.228432, 29.031635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182485, 0.030563, -0.982733,
		0.934190, -0.317050, 0.163611,
		-0.306575, -0.947916, -0.086409,
		33.094975, 32.944057, 29.005713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848587, 33.303905, 28.614641>,  <33.309578, 33.607597, 29.066198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848587, 33.303905, 28.614641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526199, 33.070648, 28.573948>,  <33.332767, 32.930695, 28.549532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526199, 33.070648, 28.573948>,  <33.848587, 33.303905, 28.614641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526199, 33.070648, 28.573948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008278, 0.160737, -0.986962,
		0.591898, -0.796305, -0.124722,
		-0.805971, -0.583148, -0.101732,
		33.284409, 32.895702, 28.543428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976906, 32.989418, 28.026342>,  <33.848587, 33.303905, 28.614641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976906, 32.989418, 28.026342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588692, 32.900078, 28.062517>,  <33.355762, 32.846474, 28.084223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588692, 32.900078, 28.062517>,  <33.976906, 32.989418, 28.026342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588692, 32.900078, 28.062517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074457, -0.078987, -0.994091,
		0.229179, -0.971532, 0.060029,
		-0.970532, -0.223355, 0.090439,
		33.297531, 32.833073, 28.089649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808659, 32.314064, 27.612892>,  <33.976906, 32.989418, 28.026342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808659, 32.314064, 27.612892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470337, 32.519543, 27.670486>,  <33.267345, 32.642830, 27.705044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470337, 32.519543, 27.670486>,  <33.808659, 32.314064, 27.612892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470337, 32.519543, 27.670486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169545, -0.002922, -0.985518,
		-0.505841, -0.857964, 0.089567,
		-0.845801, 0.513701, 0.143986,
		33.216595, 32.673653, 27.713682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366623, 31.975746, 27.043407>,  <33.808659, 32.314064, 27.612892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366623, 31.975746, 27.043407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204426, 32.326538, 27.146549>,  <33.107109, 32.537014, 27.208433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204426, 32.326538, 27.146549>,  <33.366623, 31.975746, 27.043407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204426, 32.326538, 27.146549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299192, 0.139215, -0.943983,
		-0.863749, -0.459922, 0.205935,
		-0.405489, 0.876978, 0.257852,
		33.082779, 32.589630, 27.223906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711662, 31.917900, 26.769958>,  <33.366623, 31.975746, 27.043407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711662, 31.917900, 26.769958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.753963, 32.313274, 26.813435>,  <32.779346, 32.550499, 26.839520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.753963, 32.313274, 26.813435>,  <32.711662, 31.917900, 26.769958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753963, 32.313274, 26.813435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346223, 0.139065, -0.927788,
		-0.932172, 0.060488, 0.356926,
		0.105756, 0.988434, 0.108690,
		32.785690, 32.609806, 26.846041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249180, 32.205585, 26.261887>,  <32.711662, 31.917900, 26.769958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249180, 32.205585, 26.261887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502415, 32.501678, 26.352451>,  <32.654354, 32.679333, 26.406790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502415, 32.501678, 26.352451>,  <32.249180, 32.205585, 26.261887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502415, 32.501678, 26.352451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144294, 0.400215, -0.904990,
		-0.760514, 0.540267, 0.360181,
		0.633086, 0.740229, 0.226411,
		32.692341, 32.723747, 26.420374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946115, 32.683292, 25.903263>,  <32.249180, 32.205585, 26.261887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946115, 32.683292, 25.903263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315998, 32.818829, 25.972666>,  <32.537926, 32.900150, 26.014307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315998, 32.818829, 25.972666>,  <31.946115, 32.683292, 25.903263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315998, 32.818829, 25.972666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010300, 0.477882, -0.878363,
		-0.380545, 0.810440, 0.445391,
		0.924705, 0.338844, 0.173508,
		32.593410, 32.920483, 26.024717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898602, 33.384750, 25.741360>,  <31.946115, 32.683292, 25.903263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898602, 33.384750, 25.741360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.294346, 33.334274, 25.770321>,  <32.531792, 33.303989, 25.787699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.294346, 33.334274, 25.770321>,  <31.898602, 33.384750, 25.741360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294346, 33.334274, 25.770321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142396, 0.737889, -0.659730,
		0.029823, 0.663020, 0.748007,
		0.989360, -0.126188, 0.072405,
		32.591152, 33.296417, 25.792042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166668, 34.060043, 25.912434>,  <31.898602, 33.384750, 25.741360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166668, 34.060043, 25.912434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433880, 33.821388, 25.734554>,  <32.594208, 33.678196, 25.627827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433880, 33.821388, 25.734554>,  <32.166668, 34.060043, 25.912434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433880, 33.821388, 25.734554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159146, 0.698332, -0.697858,
		0.726914, 0.395421, 0.561462,
		0.668034, -0.596636, -0.444697,
		32.634289, 33.642399, 25.601145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644753, 34.497040, 25.655680>,  <32.166668, 34.060043, 25.912434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644753, 34.497040, 25.655680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.726280, 34.171486, 25.438038>,  <32.775196, 33.976154, 25.307453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.726280, 34.171486, 25.438038>,  <32.644753, 34.497040, 25.655680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726280, 34.171486, 25.438038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250598, 0.580625, -0.774646,
		0.946393, 0.021534, 0.322298,
		0.203815, -0.813887, -0.544103,
		32.787426, 33.927319, 25.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335247, 34.629059, 25.358551>,  <32.644753, 34.497040, 25.655680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335247, 34.629059, 25.358551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155640, 34.358543, 25.124964>,  <33.047874, 34.196236, 24.984812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155640, 34.358543, 25.124964>,  <33.335247, 34.629059, 25.358551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155640, 34.358543, 25.124964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146999, 0.588739, -0.794845,
		0.881348, -0.442741, -0.164940,
		-0.449017, -0.676289, -0.583966,
		33.020935, 34.155655, 24.949774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882256, 34.251553, 24.889828>,  <33.335247, 34.629059, 25.358551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882256, 34.251553, 24.889828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506153, 34.282978, 24.757320>,  <33.280491, 34.301834, 24.677816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506153, 34.282978, 24.757320>,  <33.882256, 34.251553, 24.889828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506153, 34.282978, 24.757320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302473, 0.639390, -0.706888,
		0.156275, -0.764858, -0.624956,
		-0.940260, 0.078564, -0.331270,
		33.224075, 34.306545, 24.657940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422680, 34.158630, 24.530092>,  <33.882256, 34.251553, 24.889828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422680, 34.158630, 24.530092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787048, 34.303379, 24.450829>,  <35.005669, 34.390228, 24.403271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787048, 34.303379, 24.450829>,  <34.422680, 34.158630, 24.530092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787048, 34.303379, 24.450829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260114, -0.130903, 0.956664,
		0.320252, -0.922991, -0.213371,
		0.910922, 0.361874, -0.198161,
		35.060326, 34.411942, 24.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888874, 33.632694, 24.821861>,  <34.422680, 34.158630, 24.530092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888874, 33.632694, 24.821861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049614, 33.998951, 24.817501>,  <35.146057, 34.218704, 24.814886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049614, 33.998951, 24.817501>,  <34.888874, 33.632694, 24.821861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049614, 33.998951, 24.817501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332386, -0.134765, 0.933466,
		0.853249, -0.378738, -0.358502,
		0.401852, 0.915640, -0.010899,
		35.170170, 34.273643, 24.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445866, 33.539238, 25.174215>,  <34.888874, 33.632694, 24.821861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445866, 33.539238, 25.174215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423740, 33.938614, 25.177500>,  <35.410465, 34.178238, 25.179470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423740, 33.938614, 25.177500>,  <35.445866, 33.539238, 25.174215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423740, 33.938614, 25.177500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317712, 0.009804, 0.948137,
		0.946572, 0.055057, -0.317757,
		-0.055317, 0.998435, 0.008212,
		35.407146, 34.238144, 25.179964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031429, 33.723354, 25.539425>,  <35.445866, 33.539238, 25.174215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031429, 33.723354, 25.539425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787430, 34.040314, 25.538683>,  <35.641029, 34.230488, 25.538239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787430, 34.040314, 25.538683>,  <36.031429, 33.723354, 25.539425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787430, 34.040314, 25.538683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322714, 0.250567, 0.912728,
		0.723709, 0.556166, -0.408564,
		-0.610001, 0.792399, -0.001855,
		35.604431, 34.278034, 25.538126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427010, 34.295628, 25.837368>,  <36.031429, 33.723354, 25.539425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427010, 34.295628, 25.837368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040936, 34.381004, 25.897850>,  <35.809292, 34.432232, 25.934139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040936, 34.381004, 25.897850>,  <36.427010, 34.295628, 25.837368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040936, 34.381004, 25.897850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179296, 0.118951, 0.976578,
		0.190457, 0.969687, -0.153079,
		-0.965183, 0.213443, 0.151206,
		35.751381, 34.445038, 25.943213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485607, 34.828453, 26.185476>,  <36.427010, 34.295628, 25.837368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485607, 34.828453, 26.185476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101288, 34.730106, 26.236742>,  <35.870697, 34.671101, 26.267502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101288, 34.730106, 26.236742>,  <36.485607, 34.828453, 26.185476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101288, 34.730106, 26.236742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064078, 0.252832, 0.965386,
		-0.269758, 0.935749, -0.227165,
		-0.960794, -0.245864, 0.128164,
		35.813049, 34.656345, 26.275190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161755, 35.409740, 26.630297>,  <36.485607, 34.828453, 26.185476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161755, 35.409740, 26.630297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962624, 35.063519, 26.652163>,  <35.843143, 34.855785, 26.665281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962624, 35.063519, 26.652163>,  <36.161755, 35.409740, 26.630297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962624, 35.063519, 26.652163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050535, 0.033971, 0.998145,
		-0.865801, 0.499669, 0.026828,
		-0.497830, -0.865550, 0.054663,
		35.813274, 34.803852, 26.668562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781860, 35.519203, 27.131021>,  <36.161755, 35.409740, 26.630297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781860, 35.519203, 27.131021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732784, 35.123016, 27.105946>,  <35.703339, 34.885303, 27.090900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732784, 35.123016, 27.105946>,  <35.781860, 35.519203, 27.131021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732784, 35.123016, 27.105946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095929, -0.051036, 0.994079,
		-0.987799, 0.127973, -0.088753,
		-0.122686, -0.990464, -0.062690,
		35.695980, 34.825878, 27.087139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210522, 35.381466, 27.594196>,  <35.781860, 35.519203, 27.131021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210522, 35.381466, 27.594196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424877, 35.047272, 27.545549>,  <35.553490, 34.846756, 27.516361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424877, 35.047272, 27.545549>,  <35.210522, 35.381466, 27.594196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424877, 35.047272, 27.545549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008191, -0.149186, 0.988775,
		-0.844250, -0.528875, -0.086790,
		0.535886, -0.835485, -0.121618,
		35.585644, 34.796627, 27.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975708, 34.846935, 28.094990>,  <35.210522, 35.381466, 27.594196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975708, 34.846935, 28.094990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350269, 34.720764, 28.033461>,  <35.575005, 34.645061, 27.996544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350269, 34.720764, 28.033461>,  <34.975708, 34.846935, 28.094990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350269, 34.720764, 28.033461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125468, -0.108438, 0.986154,
		-0.327740, -0.942734, -0.061966,
		0.936400, -0.315427, -0.153822,
		35.631187, 34.626137, 27.987314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003349, 34.121155, 28.397905>,  <34.975708, 34.846935, 28.094990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003349, 34.121155, 28.397905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387348, 34.222324, 28.349859>,  <35.617748, 34.283024, 28.321032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387348, 34.222324, 28.349859>,  <35.003349, 34.121155, 28.397905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387348, 34.222324, 28.349859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218791, -0.409931, 0.885487,
		0.174719, -0.876349, -0.448871,
		0.960002, 0.252921, -0.120114,
		35.675350, 34.298203, 28.313826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304287, 33.606499, 28.672235>,  <35.003349, 34.121155, 28.397905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304287, 33.606499, 28.672235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610317, 33.863480, 28.689737>,  <35.793938, 34.017666, 28.700237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610317, 33.863480, 28.689737>,  <35.304287, 33.606499, 28.672235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610317, 33.863480, 28.689737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385221, -0.511079, 0.768377,
		0.516005, -0.571013, -0.638500,
		0.765078, 0.642450, 0.043753,
		35.839840, 34.056213, 28.702864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901241, 33.230022, 28.910627>,  <35.304287, 33.606499, 28.672235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901241, 33.230022, 28.910627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984268, 33.617191, 28.967258>,  <36.034084, 33.849491, 29.001238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984268, 33.617191, 28.967258>,  <35.901241, 33.230022, 28.910627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984268, 33.617191, 28.967258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330195, -0.205562, 0.921258,
		0.920807, -0.144478, -0.362271,
		0.207570, 0.967921, 0.141577,
		36.046539, 33.907566, 29.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556591, 33.285629, 29.152096>,  <35.901241, 33.230022, 28.910627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556591, 33.285629, 29.152096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382294, 33.626431, 29.268175>,  <36.277714, 33.830910, 29.337824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382294, 33.626431, 29.268175>,  <36.556591, 33.285629, 29.152096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382294, 33.626431, 29.268175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329708, -0.148913, 0.932265,
		0.837506, 0.501913, -0.216024,
		-0.435747, 0.852002, 0.290201,
		36.251568, 33.882030, 29.355236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.881641, 34.635231, 23.578985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541580, 34.806187, 23.702003>,  <38.337543, 34.908760, 23.775814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541580, 34.806187, 23.702003>,  <38.881641, 34.635231, 23.578985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541580, 34.806187, 23.702003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357014, -0.038560, -0.933303,
		-0.387025, -0.903245, 0.185366,
		-0.850149, 0.427390, 0.307547,
		38.286537, 34.934402, 23.794268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218750, 34.228161, 23.337324>,  <38.881641, 34.635231, 23.578985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218750, 34.228161, 23.337324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130222, 34.613163, 23.400053>,  <38.077106, 34.844166, 23.437691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130222, 34.613163, 23.400053>,  <38.218750, 34.228161, 23.337324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130222, 34.613163, 23.400053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434420, 0.046665, -0.899501,
		-0.873095, -0.267208, 0.407805,
		-0.221324, 0.962508, 0.156824,
		38.063824, 34.901917, 23.447100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556973, 34.223785, 23.040051>,  <38.218750, 34.228161, 23.337324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556973, 34.223785, 23.040051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654045, 34.609554, 23.081991>,  <37.712288, 34.841015, 23.107157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654045, 34.609554, 23.081991>,  <37.556973, 34.223785, 23.040051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654045, 34.609554, 23.081991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454948, 0.208603, -0.865741,
		-0.856814, 0.162394, 0.489386,
		0.242678, 0.964424, 0.104853,
		37.726849, 34.898880, 23.113447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905865, 34.638248, 22.790106>,  <37.556973, 34.223785, 23.040051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905865, 34.638248, 22.790106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225540, 34.877750, 22.768995>,  <37.417347, 35.021454, 22.756329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225540, 34.877750, 22.768995>,  <36.905865, 34.638248, 22.790106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225540, 34.877750, 22.768995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364096, 0.412370, -0.835096,
		-0.478258, 0.686614, 0.547568,
		0.799189, 0.598759, -0.052774,
		37.465298, 35.057377, 22.753162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683655, 35.344055, 22.740288>,  <36.905865, 34.638248, 22.790106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683655, 35.344055, 22.740288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051540, 35.365189, 22.584681>,  <37.272270, 35.377869, 22.491316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051540, 35.365189, 22.584681>,  <36.683655, 35.344055, 22.740288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051540, 35.365189, 22.584681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369832, 0.449054, -0.813372,
		0.131716, 0.891941, 0.432541,
		0.919714, 0.052833, -0.389017,
		37.327454, 35.381039, 22.467976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663692, 35.953030, 22.422535>,  <36.683655, 35.344055, 22.740288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663692, 35.953030, 22.422535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001080, 35.808647, 22.263407>,  <37.203514, 35.722015, 22.167929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001080, 35.808647, 22.263407>,  <36.663692, 35.953030, 22.422535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001080, 35.808647, 22.263407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199870, 0.476525, -0.856140,
		0.498605, 0.801643, 0.329790,
		0.843472, -0.360961, -0.397822,
		37.254120, 35.700359, 22.144060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955296, 36.486080, 22.044243>,  <36.663692, 35.953030, 22.422535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955296, 36.486080, 22.044243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089340, 36.137772, 21.900324>,  <37.169769, 35.928787, 21.813972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089340, 36.137772, 21.900324>,  <36.955296, 36.486080, 22.044243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089340, 36.137772, 21.900324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114693, 0.341337, -0.932917,
		0.935171, 0.353900, 0.014515,
		0.335114, -0.870772, -0.359798,
		37.189873, 35.876541, 21.792385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544895, 36.657402, 21.599611>,  <36.955296, 36.486080, 22.044243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544895, 36.657402, 21.599611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.403477, 36.307373, 21.467402>,  <37.318626, 36.097355, 21.388077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.403477, 36.307373, 21.467402>,  <37.544895, 36.657402, 21.599611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403477, 36.307373, 21.467402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221034, 0.421491, -0.879482,
		0.908926, -0.237884, -0.342439,
		-0.353550, -0.875075, -0.330523,
		37.297413, 36.044849, 21.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905888, 36.480530, 21.022507>,  <37.544895, 36.657402, 21.599611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905888, 36.480530, 21.022507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551537, 36.298080, 20.988657>,  <37.338924, 36.188610, 20.968348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551537, 36.298080, 20.988657>,  <37.905888, 36.480530, 21.022507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551537, 36.298080, 20.988657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153614, 0.460541, -0.874245,
		0.437733, -0.761482, -0.478053,
		-0.885885, -0.456122, -0.084620,
		37.285770, 36.161243, 20.963270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814598, 36.470821, 20.249445>,  <37.905888, 36.480530, 21.022507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814598, 36.470821, 20.249445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449989, 36.378895, 20.385860>,  <37.231224, 36.323738, 20.467709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449989, 36.378895, 20.385860>,  <37.814598, 36.470821, 20.249445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449989, 36.378895, 20.385860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408352, 0.407650, -0.816744,
		0.048675, -0.883746, -0.465428,
		-0.911526, -0.229814, 0.341037,
		37.176533, 36.309952, 20.488171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611893, 36.054634, 19.689692>,  <37.814598, 36.470821, 20.249445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611893, 36.054634, 19.689692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306473, 36.179085, 19.916033>,  <37.123219, 36.253757, 20.051838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306473, 36.179085, 19.916033>,  <37.611893, 36.054634, 19.689692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306473, 36.179085, 19.916033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493307, 0.284413, -0.822044,
		-0.416698, -0.906812, -0.063682,
		-0.763551, 0.311129, 0.565851,
		37.077408, 36.272423, 20.085789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997620, 35.707088, 19.394405>,  <37.611893, 36.054634, 19.689692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997620, 35.707088, 19.394405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.881966, 36.036018, 19.590435>,  <36.812572, 36.233376, 19.708054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.881966, 36.036018, 19.590435>,  <36.997620, 35.707088, 19.394405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881966, 36.036018, 19.590435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588378, 0.251170, -0.768586,
		-0.755124, -0.510576, 0.411218,
		-0.289136, 0.822329, 0.490076,
		36.795223, 36.282719, 19.737457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286243, 35.672737, 19.462433>,  <36.997620, 35.707088, 19.394405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286243, 35.672737, 19.462433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353821, 36.063564, 19.514271>,  <36.394367, 36.298061, 19.545374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353821, 36.063564, 19.514271>,  <36.286243, 35.672737, 19.462433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353821, 36.063564, 19.514271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597296, 0.206081, -0.775092,
		-0.784026, 0.053537, 0.618415,
		0.168940, 0.977069, 0.129595,
		36.404503, 36.356686, 19.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648712, 36.095833, 19.498867>,  <36.286243, 35.672737, 19.462433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648712, 36.095833, 19.498867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955051, 36.314693, 19.363752>,  <36.138855, 36.446011, 19.282684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955051, 36.314693, 19.363752>,  <35.648712, 36.095833, 19.498867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955051, 36.314693, 19.363752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590682, 0.391038, -0.705821,
		-0.254104, 0.740077, 0.622669,
		0.765849, 0.547152, -0.337786,
		36.184807, 36.478840, 19.262417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329094, 35.658142, 19.045776>,  <35.648712, 36.095833, 19.498867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329094, 35.658142, 19.045776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188206, 35.289341, 18.981455>,  <35.103672, 35.068062, 18.942862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188206, 35.289341, 18.981455>,  <35.329094, 35.658142, 19.045776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188206, 35.289341, 18.981455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194474, -0.095963, 0.976202,
		-0.915489, 0.375110, -0.145505,
		-0.352221, -0.922000, -0.160802,
		35.082539, 35.012741, 18.933214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778919, 35.605503, 19.546717>,  <35.329094, 35.658142, 19.045776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778919, 35.605503, 19.546717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920650, 35.242355, 19.457079>,  <35.005692, 35.024467, 19.403297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920650, 35.242355, 19.457079>,  <34.778919, 35.605503, 19.546717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920650, 35.242355, 19.457079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123363, -0.282928, 0.951175,
		-0.926947, -0.309385, -0.212248,
		0.354331, -0.907873, -0.224093,
		35.026951, 34.969994, 19.389851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359806, 35.172489, 20.043350>,  <34.778919, 35.605503, 19.546717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359806, 35.172489, 20.043350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656799, 34.928452, 19.932709>,  <34.834995, 34.782028, 19.866323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656799, 34.928452, 19.932709>,  <34.359806, 35.172489, 20.043350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656799, 34.928452, 19.932709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034197, -0.446907, 0.893926,
		-0.668991, -0.654267, -0.352684,
		0.742483, -0.610089, -0.276603,
		34.879543, 34.745426, 19.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159447, 34.626606, 20.335110>,  <34.359806, 35.172489, 20.043350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159447, 34.626606, 20.335110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522488, 34.498932, 20.226021>,  <34.740314, 34.422329, 20.160568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522488, 34.498932, 20.226021>,  <34.159447, 34.626606, 20.335110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522488, 34.498932, 20.226021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061801, -0.540954, 0.838778,
		-0.415251, -0.778134, -0.471247,
		0.907605, -0.319180, -0.272722,
		34.794769, 34.403179, 20.144203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177959, 33.959560, 20.540495>,  <34.159447, 34.626606, 20.335110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177959, 33.959560, 20.540495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562363, 34.069630, 20.529585>,  <34.793003, 34.135670, 20.523039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562363, 34.069630, 20.529585>,  <34.177959, 33.959560, 20.540495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562363, 34.069630, 20.529585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145823, -0.420505, 0.895495,
		0.234944, -0.864556, -0.444235,
		0.961008, 0.275170, -0.027277,
		34.850666, 34.152180, 20.521402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554054, 33.364994, 20.757843>,  <34.177959, 33.959560, 20.540495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554054, 33.364994, 20.757843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785107, 33.684734, 20.824022>,  <34.923737, 33.876579, 20.863729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785107, 33.684734, 20.824022>,  <34.554054, 33.364994, 20.757843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785107, 33.684734, 20.824022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216391, -0.345377, 0.913176,
		0.787095, -0.491676, -0.372473,
		0.577631, 0.799355, 0.165450,
		34.958397, 33.924541, 20.873657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120140, 33.157997, 21.076124>,  <34.554054, 33.364994, 20.757843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120140, 33.157997, 21.076124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090820, 33.540401, 21.189730>,  <35.073231, 33.769844, 21.257893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090820, 33.540401, 21.189730>,  <35.120140, 33.157997, 21.076124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090820, 33.540401, 21.189730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055865, -0.280396, 0.958258,
		0.995744, 0.086103, -0.032856,
		-0.073296, 0.956015, 0.284013,
		35.068832, 33.827206, 21.274933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653923, 33.348129, 21.578753>,  <35.120140, 33.157997, 21.076124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653923, 33.348129, 21.578753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379887, 33.636925, 21.617502>,  <35.215466, 33.810200, 21.640753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379887, 33.636925, 21.617502>,  <35.653923, 33.348129, 21.578753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379887, 33.636925, 21.617502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066924, -0.070043, 0.995297,
		0.725375, 0.688354, -0.000332,
		-0.685093, 0.721985, 0.096875,
		35.174358, 33.853519, 21.646564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010994, 33.913765, 21.882814>,  <35.653923, 33.348129, 21.578753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010994, 33.913765, 21.882814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625999, 33.986382, 21.963478>,  <35.395004, 34.029953, 22.011875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625999, 33.986382, 21.963478>,  <36.010994, 33.913765, 21.882814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625999, 33.986382, 21.963478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212068, 0.039682, 0.976449,
		0.169267, 0.982582, -0.076693,
		-0.962484, 0.181545, 0.201657,
		35.337254, 34.040844, 22.023975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039162, 34.540611, 22.211378>,  <36.010994, 33.913765, 21.882814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039162, 34.540611, 22.211378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689671, 34.372509, 22.309343>,  <35.479977, 34.271648, 22.368122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689671, 34.372509, 22.309343>,  <36.039162, 34.540611, 22.211378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689671, 34.372509, 22.309343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113310, 0.313804, 0.942702,
		-0.473028, 0.851419, -0.226562,
		-0.873731, -0.420253, 0.244912,
		35.427551, 34.246433, 22.382816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621677, 35.091721, 22.448673>,  <36.039162, 34.540611, 22.211378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621677, 35.091721, 22.448673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447937, 34.766514, 22.603765>,  <35.343693, 34.571388, 22.696821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447937, 34.766514, 22.603765>,  <35.621677, 35.091721, 22.448673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447937, 34.766514, 22.603765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129651, 0.369544, 0.920124,
		-0.891364, 0.449927, -0.055103,
		-0.434352, -0.813021, 0.387731,
		35.317631, 34.522606, 22.720085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124775, 35.271534, 22.969980>,  <35.621677, 35.091721, 22.448673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124775, 35.271534, 22.969980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160767, 34.880718, 23.047232>,  <35.182362, 34.646229, 23.093582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160767, 34.880718, 23.047232>,  <35.124775, 35.271534, 22.969980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160767, 34.880718, 23.047232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050068, 0.198109, 0.978900,
		-0.994684, -0.078411, 0.066744,
		0.089979, -0.977039, 0.193130,
		35.187759, 34.587608, 23.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780537, 35.188297, 23.641619>,  <35.124775, 35.271534, 22.969980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780537, 35.188297, 23.641619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004528, 34.857677, 23.618826>,  <35.138924, 34.659306, 23.605150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004528, 34.857677, 23.618826>,  <34.780537, 35.188297, 23.641619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004528, 34.857677, 23.618826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004049, -0.066046, 0.997808,
		-0.828499, -0.558979, -0.033637,
		0.559976, -0.826547, -0.056983,
		35.172520, 34.609715, 23.601730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399990, 34.662987, 24.025015>,  <34.780537, 35.188297, 23.641619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399990, 34.662987, 24.025015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787212, 34.565907, 23.999802>,  <35.019547, 34.507660, 23.984674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787212, 34.565907, 23.999802>,  <34.399990, 34.662987, 24.025015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787212, 34.565907, 23.999802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008323, -0.282336, 0.959279,
		-0.250600, -0.928111, -0.275337,
		0.968055, -0.242687, -0.063029,
		35.077629, 34.493099, 23.980892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768002, 34.248760, 23.820742>,  <34.399990, 34.662987, 24.025015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768002, 34.248760, 23.820742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392872, 34.297657, 23.950691>,  <33.167793, 34.326996, 24.028662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392872, 34.297657, 23.950691>,  <33.768002, 34.248760, 23.820742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392872, 34.297657, 23.950691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183551, 0.619735, -0.763045,
		-0.294609, -0.775233, -0.558766,
		-0.937825, 0.122238, 0.324874,
		33.111523, 34.334328, 24.048153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262844, 33.980598, 23.213409>,  <33.768002, 34.248760, 23.820742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262844, 33.980598, 23.213409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043606, 34.231277, 23.434982>,  <32.912064, 34.381683, 23.567926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043606, 34.231277, 23.434982>,  <33.262844, 33.980598, 23.213409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043606, 34.231277, 23.434982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222285, 0.529317, -0.818788,
		-0.806338, -0.571904, -0.150810,
		-0.548095, 0.626697, 0.553934,
		32.879177, 34.419285, 23.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605927, 34.140961, 22.968512>,  <33.262844, 33.980598, 23.213409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605927, 34.140961, 22.968512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656757, 34.471416, 23.188091>,  <32.687256, 34.669689, 23.319839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656757, 34.471416, 23.188091>,  <32.605927, 34.140961, 22.968512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656757, 34.471416, 23.188091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291036, 0.560132, -0.775597,
		-0.948234, -0.061200, 0.311618,
		0.127081, 0.826140, 0.548948,
		32.694881, 34.719257, 23.352776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006367, 34.483765, 22.969549>,  <32.605927, 34.140961, 22.968512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006367, 34.483765, 22.969549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271008, 34.771393, 23.054609>,  <32.429790, 34.943970, 23.105646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271008, 34.771393, 23.054609>,  <32.006367, 34.483765, 22.969549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271008, 34.771393, 23.054609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233409, 0.466985, -0.852904,
		-0.712602, 0.514650, 0.476796,
		0.661604, 0.719069, 0.212650,
		32.469490, 34.987114, 23.118404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684389, 35.097874, 22.956957>,  <32.006367, 34.483765, 22.969549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684389, 35.097874, 22.956957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068001, 35.191166, 22.892624>,  <32.298168, 35.247143, 22.854025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068001, 35.191166, 22.892624>,  <31.684389, 35.097874, 22.956957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068001, 35.191166, 22.892624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235693, 0.341814, -0.909732,
		-0.157207, 0.910365, 0.382781,
		0.959028, 0.233235, -0.160831,
		32.355709, 35.261135, 22.844374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603149, 35.644028, 22.615147>,  <31.684389, 35.097874, 22.956957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603149, 35.644028, 22.615147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986057, 35.562752, 22.532831>,  <32.215801, 35.513985, 22.483442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986057, 35.562752, 22.532831>,  <31.603149, 35.644028, 22.615147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986057, 35.562752, 22.532831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134115, 0.318538, -0.938375,
		0.256222, 0.925876, 0.277675,
		0.957269, -0.203192, -0.205790,
		32.273239, 35.501793, 22.471094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785152, 36.156887, 22.214947>,  <31.603149, 35.644028, 22.615147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785152, 36.156887, 22.214947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046547, 35.867420, 22.126171>,  <32.203384, 35.693741, 22.072906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046547, 35.867420, 22.126171>,  <31.785152, 36.156887, 22.214947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046547, 35.867420, 22.126171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216232, 0.102514, -0.970945,
		0.725396, 0.682490, -0.089489,
		0.653486, -0.723670, -0.221939,
		32.242592, 35.650318, 22.059589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349876, 36.675209, 22.404947>,  <31.785152, 36.156887, 22.214947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349876, 36.675209, 22.404947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182724, 37.031700, 22.475481>,  <32.082432, 37.245594, 22.517801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182724, 37.031700, 22.475481>,  <32.349876, 36.675209, 22.404947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182724, 37.031700, 22.475481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117679, -0.245560, 0.962212,
		0.900847, 0.381342, 0.207494,
		-0.417884, 0.891223, 0.176336,
		32.057358, 37.299068, 22.528381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656300, 37.071018, 22.975863>,  <32.349876, 36.675209, 22.404947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656300, 37.071018, 22.975863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270187, 37.173828, 22.957190>,  <32.038521, 37.235512, 22.945986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270187, 37.173828, 22.957190>,  <32.656300, 37.071018, 22.975863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270187, 37.173828, 22.957190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130197, -0.318420, 0.938966,
		0.226469, 0.912441, 0.340827,
		-0.965278, 0.257021, -0.046685,
		31.980604, 37.250935, 22.943184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484680, 37.382710, 23.647312>,  <32.656300, 37.071018, 22.975863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484680, 37.382710, 23.647312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131504, 37.306164, 23.475822>,  <31.919600, 37.260235, 23.372929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131504, 37.306164, 23.475822>,  <32.484680, 37.382710, 23.647312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131504, 37.306164, 23.475822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362470, -0.302524, 0.881530,
		-0.298396, 0.933733, 0.197744,
		-0.882936, -0.191369, -0.428722,
		31.866623, 37.248753, 23.347206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992743, 37.659786, 24.062151>,  <32.484680, 37.382710, 23.647312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992743, 37.659786, 24.062151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763487, 37.405472, 23.855354>,  <31.625933, 37.252884, 23.731276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763487, 37.405472, 23.855354>,  <31.992743, 37.659786, 24.062151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763487, 37.405472, 23.855354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445021, -0.288265, 0.847856,
		-0.688088, 0.716014, -0.117723,
		-0.573141, -0.635788, -0.516994,
		31.591545, 37.214737, 23.700256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245819, 37.835438, 24.151815>,  <31.992743, 37.659786, 24.062151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245819, 37.835438, 24.151815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263746, 37.452019, 24.039257>,  <31.274504, 37.221970, 23.971722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263746, 37.452019, 24.039257>,  <31.245819, 37.835438, 24.151815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263746, 37.452019, 24.039257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381871, -0.276724, 0.881815,
		-0.923128, 0.067934, -0.378443,
		0.044820, -0.958545, -0.281393,
		31.277193, 37.164455, 23.954840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617186, 37.507954, 24.410761>,  <31.245819, 37.835438, 24.151815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617186, 37.507954, 24.410761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838833, 37.185879, 24.326258>,  <30.971821, 36.992634, 24.275555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838833, 37.185879, 24.326258>,  <30.617186, 37.507954, 24.410761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838833, 37.185879, 24.326258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321796, -0.441247, 0.837704,
		-0.767724, -0.396205, -0.503608,
		0.554118, -0.805185, -0.211259,
		31.005068, 36.944324, 24.262880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152605, 36.982849, 24.729067>,  <30.617186, 37.507954, 24.410761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152605, 36.982849, 24.729067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519903, 36.835918, 24.669880>,  <30.740282, 36.747761, 24.634367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519903, 36.835918, 24.669880>,  <30.152605, 36.982849, 24.729067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519903, 36.835918, 24.669880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119034, -0.612392, 0.781541,
		-0.377694, -0.700034, -0.606052,
		0.918247, -0.367325, -0.147969,
		30.795378, 36.725719, 24.625488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.777782, 38.753490, 20.248198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716515, 38.382397, 20.384342>,  <35.679752, 38.159740, 20.466028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716515, 38.382397, 20.384342>,  <35.777782, 38.753490, 20.248198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716515, 38.382397, 20.384342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547925, 0.206902, 0.810536,
		-0.822385, 0.310643, 0.476638,
		-0.153171, -0.927735, 0.340362,
		35.670563, 38.104076, 20.486450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524658, 38.724056, 20.947720>,  <35.777782, 38.753490, 20.248198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524658, 38.724056, 20.947720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.683617, 38.359787, 20.902561>,  <35.778992, 38.141224, 20.875467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.683617, 38.359787, 20.902561>,  <35.524658, 38.724056, 20.947720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683617, 38.359787, 20.902561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527364, 0.125968, 0.840249,
		-0.750973, -0.393451, 0.530317,
		0.397400, -0.910675, -0.112894,
		35.802837, 38.086586, 20.868692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498333, 38.230743, 21.496052>,  <35.524658, 38.724056, 20.947720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498333, 38.230743, 21.496052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.830372, 38.182369, 21.278315>,  <36.029594, 38.153343, 21.147673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.830372, 38.182369, 21.278315>,  <35.498333, 38.230743, 21.496052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830372, 38.182369, 21.278315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551411, 0.032787, 0.833589,
		-0.082968, -0.992118, 0.093905,
		0.830098, -0.120941, -0.544345,
		36.079403, 38.146088, 21.115011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892994, 37.562111, 21.503439>,  <35.498333, 38.230743, 21.496052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892994, 37.562111, 21.503439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.127972, 37.880054, 21.442636>,  <36.268959, 38.070820, 21.406155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.127972, 37.880054, 21.442636>,  <35.892994, 37.562111, 21.503439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127972, 37.880054, 21.442636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471739, -0.183721, 0.862386,
		0.657547, -0.578314, -0.482892,
		0.587447, 0.794858, -0.152008,
		36.304207, 38.118511, 21.397034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445862, 37.266472, 21.604633>,  <35.892994, 37.562111, 21.503439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445862, 37.266472, 21.604633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500782, 37.660072, 21.650063>,  <36.533733, 37.896233, 21.677320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500782, 37.660072, 21.650063>,  <36.445862, 37.266472, 21.604633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500782, 37.660072, 21.650063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496738, -0.167598, 0.851565,
		0.856972, -0.060503, -0.511799,
		0.137299, 0.983997, 0.113573,
		36.541973, 37.955273, 21.684134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157318, 37.313824, 21.997795>,  <36.445862, 37.266472, 21.604633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157318, 37.313824, 21.997795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962269, 37.658840, 22.051828>,  <36.845238, 37.865849, 22.084248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962269, 37.658840, 22.051828>,  <37.157318, 37.313824, 21.997795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962269, 37.658840, 22.051828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461185, 0.123109, 0.878722,
		0.741302, 0.490787, -0.457821,
		-0.487627, 0.862538, 0.135083,
		36.815979, 37.917603, 22.092354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667755, 37.854279, 22.236168>,  <37.157318, 37.313824, 21.997795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667755, 37.854279, 22.236168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309090, 37.987144, 22.353243>,  <37.093891, 38.066864, 22.423487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309090, 37.987144, 22.353243>,  <37.667755, 37.854279, 22.236168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309090, 37.987144, 22.353243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387013, 0.267074, 0.882549,
		0.214979, 0.904622, -0.368026,
		-0.896663, 0.332160, 0.292686,
		37.040092, 38.086792, 22.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688507, 38.692200, 22.347662>,  <37.667755, 37.854279, 22.236168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688507, 38.692200, 22.347662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380859, 38.524113, 22.540277>,  <37.196270, 38.423260, 22.655846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380859, 38.524113, 22.540277>,  <37.688507, 38.692200, 22.347662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380859, 38.524113, 22.540277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267086, 0.473173, 0.839507,
		-0.580625, 0.774291, -0.251692,
		-0.769116, -0.420216, 0.481538,
		37.150124, 38.398048, 22.684738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478123, 39.181381, 22.765919>,  <37.688507, 38.692200, 22.347662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478123, 39.181381, 22.765919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.290180, 38.865597, 22.923897>,  <37.177414, 38.676125, 23.018684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.290180, 38.865597, 22.923897>,  <37.478123, 39.181381, 22.765919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290180, 38.865597, 22.923897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070492, 0.412423, 0.908261,
		-0.879924, 0.454592, -0.138129,
		-0.469856, -0.789464, 0.394946,
		37.149223, 38.628757, 23.042381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027851, 39.476807, 23.298347>,  <37.478123, 39.181381, 22.765919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027851, 39.476807, 23.298347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072647, 39.095417, 23.410307>,  <37.099525, 38.866585, 23.477482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072647, 39.095417, 23.410307>,  <37.027851, 39.476807, 23.298347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072647, 39.095417, 23.410307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046083, 0.276385, 0.959942,
		-0.992641, -0.120401, -0.012988,
		0.111988, -0.953476, 0.279899,
		37.106243, 38.809376, 23.494276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574635, 39.393646, 23.854317>,  <37.027851, 39.476807, 23.298347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574635, 39.393646, 23.854317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813416, 39.075905, 23.899296>,  <36.956684, 38.885258, 23.926283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813416, 39.075905, 23.899296>,  <36.574635, 39.393646, 23.854317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813416, 39.075905, 23.899296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108126, 0.059223, 0.992372,
		-0.794958, -0.604555, -0.050537,
		0.596951, -0.794358, 0.112448,
		36.992500, 38.837597, 23.933031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305332, 39.051998, 24.482016>,  <36.574635, 39.393646, 23.854317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305332, 39.051998, 24.482016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670238, 38.891384, 24.449663>,  <36.889183, 38.795017, 24.430252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670238, 38.891384, 24.449663>,  <36.305332, 39.051998, 24.482016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670238, 38.891384, 24.449663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216269, 0.304505, 0.927634,
		-0.347848, -0.863740, 0.364629,
		0.912266, -0.401534, -0.080879,
		36.943920, 38.770924, 24.425400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719070, 38.626236, 24.441822>,  <36.305332, 39.051998, 24.482016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719070, 38.626236, 24.441822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360176, 38.788239, 24.512169>,  <35.144840, 38.885441, 24.554377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360176, 38.788239, 24.512169>,  <35.719070, 38.626236, 24.441822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360176, 38.788239, 24.512169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173128, 0.043716, -0.983929,
		-0.406187, -0.913268, 0.030894,
		-0.897240, 0.405007, 0.175869,
		35.091003, 38.909740, 24.564930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332886, 38.464012, 23.845522>,  <35.719070, 38.626236, 24.441822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332886, 38.464012, 23.845522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086632, 38.719913, 24.029570>,  <34.938881, 38.873455, 24.139997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086632, 38.719913, 24.029570>,  <35.332886, 38.464012, 23.845522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086632, 38.719913, 24.029570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400478, 0.248868, -0.881863,
		-0.678685, -0.727172, 0.102996,
		-0.615633, 0.639754, 0.460119,
		34.901943, 38.911839, 24.167606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651611, 38.316051, 23.566294>,  <35.332886, 38.464012, 23.845522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651611, 38.316051, 23.566294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.652489, 38.692337, 23.701967>,  <34.653015, 38.918110, 23.783371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.652489, 38.692337, 23.701967>,  <34.651611, 38.316051, 23.566294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652489, 38.692337, 23.701967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308693, 0.323254, -0.894548,
		-0.951159, -0.102745, 0.291100,
		0.002189, 0.940718, 0.339183,
		34.653145, 38.974552, 23.803722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020065, 38.628235, 23.353083>,  <34.651611, 38.316051, 23.566294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020065, 38.628235, 23.353083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240726, 38.941856, 23.466885>,  <34.373123, 39.130028, 23.535166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240726, 38.941856, 23.466885>,  <34.020065, 38.628235, 23.353083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240726, 38.941856, 23.466885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286708, 0.498575, -0.818060,
		-0.783247, 0.369716, 0.499834,
		0.551654, 0.784049, 0.284507,
		34.406223, 39.177071, 23.552237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572960, 39.243004, 23.373726>,  <34.020065, 38.628235, 23.353083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572960, 39.243004, 23.373726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.953754, 39.350086, 23.314323>,  <34.182232, 39.414337, 23.278681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.953754, 39.350086, 23.314323>,  <33.572960, 39.243004, 23.373726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953754, 39.350086, 23.314323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252244, 0.411031, -0.876029,
		-0.173479, 0.871428, 0.458824,
		0.951986, 0.267708, -0.148508,
		34.239349, 39.430397, 23.269772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527374, 39.886234, 23.129805>,  <33.572960, 39.243004, 23.373726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527374, 39.886234, 23.129805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905464, 39.800220, 23.031572>,  <34.132317, 39.748611, 22.972633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905464, 39.800220, 23.031572>,  <33.527374, 39.886234, 23.129805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905464, 39.800220, 23.031572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144601, 0.398650, -0.905632,
		0.292645, 0.891537, 0.345719,
		0.945225, -0.215037, -0.245580,
		34.189034, 39.735710, 22.957899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764099, 40.523544, 22.858681>,  <33.527374, 39.886234, 23.129805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764099, 40.523544, 22.858681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.989716, 40.226894, 22.713440>,  <34.125088, 40.048904, 22.626295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.989716, 40.226894, 22.713440>,  <33.764099, 40.523544, 22.858681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989716, 40.226894, 22.713440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124179, 0.358543, -0.925217,
		0.816354, 0.566953, 0.110140,
		0.564045, -0.741627, -0.363102,
		34.158928, 40.004406, 22.604509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407372, 40.810936, 22.502522>,  <33.764099, 40.523544, 22.858681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407372, 40.810936, 22.502522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322498, 40.441742, 22.374098>,  <34.271572, 40.220226, 22.297045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322498, 40.441742, 22.374098>,  <34.407372, 40.810936, 22.502522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322498, 40.441742, 22.374098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131438, 0.352509, -0.926532,
		0.968350, -0.154399, -0.196112,
		-0.212187, -0.922984, -0.321058,
		34.258842, 40.164848, 22.277781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845497, 40.684753, 21.936462>,  <34.407372, 40.810936, 22.502522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845497, 40.684753, 21.936462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558895, 40.409824, 21.888779>,  <34.386936, 40.244865, 21.860168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558895, 40.409824, 21.888779>,  <34.845497, 40.684753, 21.936462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558895, 40.409824, 21.888779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066541, 0.237453, -0.969117,
		0.694405, -0.686441, -0.215871,
		-0.716501, -0.687324, -0.119212,
		34.343945, 40.203629, 21.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027744, 40.282604, 21.348858>,  <34.845497, 40.684753, 21.936462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027744, 40.282604, 21.348858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634186, 40.216606, 21.376373>,  <34.398052, 40.177006, 21.392883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634186, 40.216606, 21.376373>,  <35.027744, 40.282604, 21.348858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634186, 40.216606, 21.376373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100679, 0.193478, -0.975925,
		0.147711, -0.967132, -0.206973,
		-0.983893, -0.164993, 0.068791,
		34.339020, 40.167107, 21.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834377, 39.928062, 20.700413>,  <35.027744, 40.282604, 21.348858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834377, 39.928062, 20.700413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514923, 40.096272, 20.872618>,  <34.323250, 40.197197, 20.975941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514923, 40.096272, 20.872618>,  <34.834377, 39.928062, 20.700413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514923, 40.096272, 20.872618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306092, 0.332083, -0.892204,
		-0.518155, -0.844325, -0.136497,
		-0.798639, 0.420520, 0.430511,
		34.275330, 40.222427, 21.001772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300755, 39.816067, 20.263634>,  <34.834377, 39.928062, 20.700413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300755, 39.816067, 20.263634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185177, 40.129494, 20.483644>,  <34.115829, 40.317551, 20.615650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185177, 40.129494, 20.483644>,  <34.300755, 39.816067, 20.263634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185177, 40.129494, 20.483644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148330, 0.530952, -0.834319,
		-0.945786, -0.322654, -0.037186,
		-0.288941, 0.783572, 0.550027,
		34.098495, 40.364567, 20.648653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763298, 39.995071, 20.037003>,  <34.300755, 39.816067, 20.263634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763298, 39.995071, 20.037003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887836, 40.331512, 20.213911>,  <33.962559, 40.533379, 20.320055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887836, 40.331512, 20.213911>,  <33.763298, 39.995071, 20.037003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887836, 40.331512, 20.213911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169777, 0.507148, -0.844972,
		-0.935007, 0.187993, 0.300700,
		0.311348, 0.841106, 0.442270,
		33.981239, 40.583843, 20.346592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760330, 39.293423, 20.269520>,  <33.763298, 39.995071, 20.037003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760330, 39.293423, 20.269520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392708, 39.238323, 20.121807>,  <33.172134, 39.205261, 20.033178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392708, 39.238323, 20.121807>,  <33.760330, 39.293423, 20.269520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392708, 39.238323, 20.121807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314312, -0.309163, 0.897567,
		-0.237809, 0.940980, 0.240840,
		-0.919051, -0.137751, -0.369283,
		33.116993, 39.196999, 20.011023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337605, 39.522034, 20.876015>,  <33.760330, 39.293423, 20.269520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337605, 39.522034, 20.876015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.109356, 39.301380, 20.632675>,  <32.972408, 39.168987, 20.486671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.109356, 39.301380, 20.632675>,  <33.337605, 39.522034, 20.876015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109356, 39.301380, 20.632675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443464, -0.416507, 0.793638,
		-0.691183, 0.722646, -0.006964,
		-0.570619, -0.551637, -0.608350,
		32.938171, 39.135887, 20.450171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720867, 39.510784, 21.193663>,  <33.337605, 39.522034, 20.876015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720867, 39.510784, 21.193663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.647251, 39.194969, 20.959480>,  <32.603081, 39.005482, 20.818970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.647251, 39.194969, 20.959480>,  <32.720867, 39.510784, 21.193663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647251, 39.194969, 20.959480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324240, -0.513524, 0.794456,
		-0.927899, 0.336042, -0.161490,
		-0.184041, -0.789537, -0.585457,
		32.592037, 38.958107, 20.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935318, 39.257538, 21.288513>,  <32.720867, 39.510784, 21.193663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935318, 39.257538, 21.288513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.141800, 38.953190, 21.131229>,  <32.265690, 38.770580, 21.036860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.141800, 38.953190, 21.131229>,  <31.935318, 39.257538, 21.288513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141800, 38.953190, 21.131229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407921, -0.622105, 0.668270,
		-0.753084, -0.184565, -0.631507,
		0.516203, -0.760869, -0.393210,
		32.296661, 38.724930, 21.013266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503149, 38.702637, 21.255587>,  <31.935318, 39.257538, 21.288513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503149, 38.702637, 21.255587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843334, 38.499390, 21.201141>,  <32.047443, 38.377441, 21.168474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843334, 38.499390, 21.201141>,  <31.503149, 38.702637, 21.255587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843334, 38.499390, 21.201141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268814, -0.642218, 0.717840,
		-0.452164, -0.573907, -0.682773,
		0.850462, -0.508120, -0.136114,
		32.098473, 38.346954, 21.160307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364012, 38.004662, 21.113352>,  <31.503149, 38.702637, 21.255587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364012, 38.004662, 21.113352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720974, 38.044453, 21.289404>,  <31.935152, 38.068329, 21.395035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720974, 38.044453, 21.289404>,  <31.364012, 38.004662, 21.113352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720974, 38.044453, 21.289404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320240, -0.547542, 0.773075,
		0.317896, -0.830844, -0.456772,
		0.892406, 0.099481, 0.440131,
		31.988695, 38.074295, 21.421444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434000, 37.368477, 21.335150>,  <31.364012, 38.004662, 21.113352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434000, 37.368477, 21.335150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.688694, 37.588924, 21.550867>,  <31.841511, 37.721195, 21.680298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.688694, 37.588924, 21.550867>,  <31.434000, 37.368477, 21.335150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688694, 37.588924, 21.550867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231622, -0.530391, 0.815497,
		0.735474, -0.644167, -0.210066,
		0.636733, 0.551121, 0.539292,
		31.879715, 37.754261, 21.712654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845610, 36.851982, 21.768982>,  <31.434000, 37.368477, 21.335150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845610, 36.851982, 21.768982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861538, 37.206570, 21.953407>,  <31.871096, 37.419323, 22.064064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861538, 37.206570, 21.953407>,  <31.845610, 36.851982, 21.768982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861538, 37.206570, 21.953407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018118, -0.460715, 0.887363,
		0.999043, -0.043689, -0.002285,
		0.039821, 0.886472, 0.461066,
		31.873484, 37.472511, 22.091726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170727, 36.245819, 21.534210>,  <31.845610, 36.851982, 21.768982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170727, 36.245819, 21.534210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267822, 35.858261, 21.553473>,  <32.326080, 35.625725, 21.565029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267822, 35.858261, 21.553473>,  <32.170727, 36.245819, 21.534210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267822, 35.858261, 21.553473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145427, -0.012735, -0.989287,
		0.959128, 0.247146, 0.137812,
		0.242743, -0.968894, 0.048156,
		32.340645, 35.567593, 21.567919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671764, 36.106232, 21.028076>,  <32.170727, 36.245819, 21.534210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671764, 36.106232, 21.028076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.558346, 35.726662, 21.083420>,  <32.490295, 35.498920, 21.116627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.558346, 35.726662, 21.083420>,  <32.671764, 36.106232, 21.028076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558346, 35.726662, 21.083420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018873, -0.138732, -0.990150,
		0.958773, -0.283364, 0.021428,
		-0.283546, -0.948925, 0.138360,
		32.473282, 35.441986, 21.124928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172409, 35.748940, 20.777761>,  <32.671764, 36.106232, 21.028076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172409, 35.748940, 20.777761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.847252, 35.518112, 20.746262>,  <32.652157, 35.379616, 20.727362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.847252, 35.518112, 20.746262>,  <33.172409, 35.748940, 20.777761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847252, 35.518112, 20.746262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093202, 0.004576, -0.995637,
		0.574907, -0.816686, 0.050064,
		-0.812893, -0.577065, -0.078748,
		32.603382, 35.344994, 20.722637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409645, 35.328316, 20.390844>,  <33.172409, 35.748940, 20.777761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409645, 35.328316, 20.390844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.017456, 35.254829, 20.362768>,  <32.782143, 35.210735, 20.345922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.017456, 35.254829, 20.362768>,  <33.409645, 35.328316, 20.390844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017456, 35.254829, 20.362768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106238, -0.194403, -0.975152,
		0.165511, -0.963563, 0.210125,
		-0.980469, -0.183721, -0.070192,
		32.723316, 35.199715, 20.341711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406750, 34.695621, 20.095020>,  <33.409645, 35.328316, 20.390844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406750, 34.695621, 20.095020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032478, 34.825436, 20.039616>,  <32.807915, 34.903324, 20.006372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032478, 34.825436, 20.039616>,  <33.406750, 34.695621, 20.095020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032478, 34.825436, 20.039616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146967, 0.001565, -0.989140,
		-0.320792, -0.945873, -0.049160,
		-0.935678, 0.324533, -0.138510,
		32.751774, 34.922794, 19.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023624, 34.191154, 19.662411>,  <33.406750, 34.695621, 20.095020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023624, 34.191154, 19.662411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.866608, 34.557209, 19.625664>,  <32.772396, 34.776840, 19.603615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.866608, 34.557209, 19.625664>,  <33.023624, 34.191154, 19.662411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866608, 34.557209, 19.625664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329458, 0.046652, -0.943017,
		-0.858701, -0.400442, -0.319811,
		-0.392544, 0.915134, -0.091868,
		32.748844, 34.831749, 19.598103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613434, 34.186543, 19.046371>,  <33.023624, 34.191154, 19.662411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613434, 34.186543, 19.046371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696915, 34.569725, 19.125122>,  <32.747002, 34.799633, 19.172373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696915, 34.569725, 19.125122>,  <32.613434, 34.186543, 19.046371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696915, 34.569725, 19.125122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255626, 0.140878, -0.956456,
		-0.943980, 0.249942, -0.215477,
		0.208703, 0.957957, 0.196878,
		32.759525, 34.857113, 19.184185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349232, 34.563412, 18.537733>,  <32.613434, 34.186543, 19.046371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349232, 34.563412, 18.537733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566475, 34.874271, 18.664898>,  <32.696823, 35.060787, 18.741198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566475, 34.874271, 18.664898>,  <32.349232, 34.563412, 18.537733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566475, 34.874271, 18.664898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336918, 0.145102, -0.930286,
		-0.769101, 0.612359, -0.183029,
		0.543111, 0.777149, 0.317913,
		32.729408, 35.107418, 18.760271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118195, 35.188721, 18.182938>,  <32.349232, 34.563412, 18.537733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118195, 35.188721, 18.182938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.504013, 35.190414, 18.288485>,  <32.735504, 35.191433, 18.351812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.504013, 35.190414, 18.288485>,  <32.118195, 35.188721, 18.182938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504013, 35.190414, 18.288485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262144, -0.130630, -0.956147,
		0.030419, 0.991422, -0.127109,
		0.964549, 0.004236, 0.263869,
		32.793377, 35.191685, 18.367645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.214310, 32.784351, 34.357845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519928, 32.817104, 34.101868>,  <34.703300, 32.836754, 33.948280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519928, 32.817104, 34.101868>,  <34.214310, 32.784351, 34.357845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519928, 32.817104, 34.101868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613222, -0.216075, -0.759783,
		-0.200486, 0.972937, -0.114881,
		0.764045, 0.081878, -0.639947,
		34.749142, 32.841667, 33.909885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907879, 33.095032, 33.758301>,  <34.214310, 32.784351, 34.357845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907879, 33.095032, 33.758301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249218, 32.911724, 33.658875>,  <34.454021, 32.801739, 33.599220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249218, 32.911724, 33.658875>,  <33.907879, 33.095032, 33.758301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249218, 32.911724, 33.658875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403605, -0.278925, -0.871380,
		0.329991, 0.843916, -0.422979,
		0.853351, -0.458265, -0.248566,
		34.505222, 32.774246, 33.584305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108860, 33.341846, 33.142014>,  <33.907879, 33.095032, 33.758301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108860, 33.341846, 33.142014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291164, 32.987400, 33.175655>,  <34.400547, 32.774731, 33.195839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291164, 32.987400, 33.175655>,  <34.108860, 33.341846, 33.142014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291164, 32.987400, 33.175655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277389, -0.231181, -0.932529,
		0.845775, 0.401683, -0.351163,
		0.455763, -0.886119, 0.084104,
		34.427895, 32.721565, 33.200886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592228, 33.315762, 32.556187>,  <34.108860, 33.341846, 33.142014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592228, 33.315762, 32.556187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504345, 32.941013, 32.664997>,  <34.451614, 32.716164, 32.730282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504345, 32.941013, 32.664997>,  <34.592228, 33.315762, 32.556187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504345, 32.941013, 32.664997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245861, -0.216662, -0.944780,
		0.944076, -0.274457, -0.182738,
		-0.219709, -0.936873, 0.272023,
		34.438431, 32.659950, 32.746605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842415, 32.869225, 32.020588>,  <34.592228, 33.315762, 32.556187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842415, 32.869225, 32.020588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551807, 32.651993, 32.188988>,  <34.377445, 32.521656, 32.290028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551807, 32.651993, 32.188988>,  <34.842415, 32.869225, 32.020588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551807, 32.651993, 32.188988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420802, -0.132730, -0.897390,
		0.543232, -0.829125, -0.132098,
		-0.726515, -0.543078, 0.421001,
		34.333851, 32.489071, 32.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900360, 32.214397, 31.670694>,  <34.842415, 32.869225, 32.020588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900360, 32.214397, 31.670694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534245, 32.281200, 31.817316>,  <34.314575, 32.321281, 31.905289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534245, 32.281200, 31.817316>,  <34.900360, 32.214397, 31.670694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534245, 32.281200, 31.817316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398451, -0.241930, -0.884707,
		-0.059074, -0.955813, 0.287980,
		-0.915285, 0.167009, 0.366553,
		34.259659, 32.331303, 31.927282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600040, 31.696781, 31.316160>,  <34.900360, 32.214397, 31.670694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600040, 31.696781, 31.316160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294292, 31.916813, 31.450708>,  <34.110844, 32.048832, 31.531437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294292, 31.916813, 31.450708>,  <34.600040, 31.696781, 31.316160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294292, 31.916813, 31.450708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535947, -0.252014, -0.805760,
		-0.358466, -0.796176, 0.487449,
		-0.764371, 0.550084, 0.336370,
		34.064980, 32.081837, 31.551620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024929, 31.305246, 31.107721>,  <34.600040, 31.696781, 31.316160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024929, 31.305246, 31.107721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882442, 31.675219, 31.160814>,  <33.796951, 31.897202, 31.192671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882442, 31.675219, 31.160814>,  <34.024929, 31.305246, 31.107721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882442, 31.675219, 31.160814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482103, -0.060241, -0.874041,
		-0.800430, -0.375338, 0.467369,
		-0.356215, 0.924929, 0.132733,
		33.775578, 31.952698, 31.200634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307034, 31.278389, 30.884140>,  <34.024929, 31.305246, 31.107721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307034, 31.278389, 30.884140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400677, 31.667112, 30.872927>,  <33.456863, 31.900347, 30.866198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400677, 31.667112, 30.872927>,  <33.307034, 31.278389, 30.884140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400677, 31.667112, 30.872927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616859, 0.126188, -0.776892,
		-0.751451, 0.199168, 0.629009,
		0.234105, 0.971807, -0.028035,
		33.470909, 31.958654, 30.864517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665855, 31.694675, 30.662863>,  <33.307034, 31.278389, 30.884140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665855, 31.694675, 30.662863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965462, 31.949865, 30.591345>,  <33.145226, 32.102978, 30.548435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965462, 31.949865, 30.591345>,  <32.665855, 31.694675, 30.662863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965462, 31.949865, 30.591345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382655, 0.196245, -0.902809,
		-0.540880, 0.744634, 0.391113,
		0.749016, 0.637972, -0.178793,
		33.190166, 32.141258, 30.537706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341415, 32.364777, 30.418734>,  <32.665855, 31.694675, 30.662863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341415, 32.364777, 30.418734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719414, 32.412407, 30.296873>,  <32.946213, 32.440987, 30.223757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719414, 32.412407, 30.296873>,  <32.341415, 32.364777, 30.418734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719414, 32.412407, 30.296873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324939, 0.235005, -0.916072,
		-0.037492, 0.964672, 0.260771,
		0.944991, 0.119080, -0.304649,
		33.002911, 32.448132, 30.205479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295834, 32.996696, 30.052528>,  <32.341415, 32.364777, 30.418734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295834, 32.996696, 30.052528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632530, 32.817936, 29.931364>,  <32.834549, 32.710682, 29.858665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632530, 32.817936, 29.931364>,  <32.295834, 32.996696, 30.052528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632530, 32.817936, 29.931364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191550, 0.277354, -0.941479,
		0.504759, 0.850504, 0.147857,
		0.841740, -0.446899, -0.302911,
		32.885052, 32.683865, 29.840490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301514, 33.837269, 30.195435>,  <32.295834, 32.996696, 30.052528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301514, 33.837269, 30.195435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027294, 34.121662, 30.132795>,  <31.862762, 34.292297, 30.095213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027294, 34.121662, 30.132795>,  <32.301514, 33.837269, 30.195435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027294, 34.121662, 30.132795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099018, 0.122041, 0.987574,
		0.721260, 0.692537, -0.013265,
		-0.685550, 0.710984, -0.156597,
		31.821629, 34.334957, 30.085815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646629, 34.386978, 30.461079>,  <32.301514, 33.837269, 30.195435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646629, 34.386978, 30.461079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258163, 34.481358, 30.447359>,  <32.025085, 34.537983, 30.439127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258163, 34.481358, 30.447359>,  <32.646629, 34.386978, 30.461079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258163, 34.481358, 30.447359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025618, 0.246285, 0.968859,
		0.237045, 0.940039, -0.245227,
		-0.971161, 0.235945, -0.034298,
		31.966816, 34.552139, 30.437069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523163, 35.102470, 30.755533>,  <32.646629, 34.386978, 30.461079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523163, 35.102470, 30.755533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.194950, 34.877037, 30.793676>,  <31.998022, 34.741776, 30.816563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.194950, 34.877037, 30.793676>,  <32.523163, 35.102470, 30.755533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194950, 34.877037, 30.793676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028452, 0.206888, 0.977951,
		-0.570886, 0.799731, -0.185794,
		-0.820536, -0.563585, 0.095356,
		31.948790, 34.707962, 30.822283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185822, 35.471630, 31.274900>,  <32.523163, 35.102470, 30.755533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185822, 35.471630, 31.274900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034103, 35.104015, 31.231981>,  <31.943073, 34.883446, 31.206230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034103, 35.104015, 31.231981>,  <32.185822, 35.471630, 31.274900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034103, 35.104015, 31.231981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111003, -0.069931, 0.991357,
		-0.918593, 0.387928, -0.075491,
		-0.379296, -0.919033, -0.107300,
		31.920315, 34.828304, 31.199791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091076, 35.393002, 31.917553>,  <32.185822, 35.471630, 31.274900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091076, 35.393002, 31.917553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983089, 35.030476, 31.787502>,  <31.918297, 34.812962, 31.709471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983089, 35.030476, 31.787502>,  <32.091076, 35.393002, 31.917553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983089, 35.030476, 31.787502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007811, -0.335594, 0.941974,
		-0.962838, 0.256842, 0.083520,
		-0.269967, -0.906316, -0.325129,
		31.902100, 34.758579, 31.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530363, 35.170399, 32.292961>,  <32.091076, 35.393002, 31.917553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530363, 35.170399, 32.292961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703861, 34.831940, 32.169094>,  <31.807961, 34.628864, 32.094772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703861, 34.831940, 32.169094>,  <31.530363, 35.170399, 32.292961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703861, 34.831940, 32.169094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126519, -0.283079, 0.950715,
		-0.892108, -0.451547, -0.015730,
		0.433746, -0.846151, -0.309666,
		31.833984, 34.578094, 32.076195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305630, 34.627987, 32.861889>,  <31.530363, 35.170399, 32.292961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305630, 34.627987, 32.861889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613234, 34.485390, 32.649647>,  <31.797796, 34.399830, 32.522301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613234, 34.485390, 32.649647>,  <31.305630, 34.627987, 32.861889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613234, 34.485390, 32.649647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461782, -0.264157, 0.846746,
		-0.442024, -0.896176, -0.038515,
		0.769008, -0.356496, -0.530602,
		31.843937, 34.378441, 32.490467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602974, 34.065903, 33.200935>,  <31.305630, 34.627987, 32.861889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602974, 34.065903, 33.200935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908794, 34.186043, 32.972813>,  <32.092285, 34.258129, 32.835938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908794, 34.186043, 32.972813>,  <31.602974, 34.065903, 33.200935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908794, 34.186043, 32.972813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628163, -0.148880, 0.763706,
		0.144474, -0.942137, -0.302496,
		0.764551, 0.300353, -0.570307,
		32.138161, 34.276150, 32.801720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172756, 33.562218, 33.364086>,  <31.602974, 34.065903, 33.200935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172756, 33.562218, 33.364086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357998, 33.880527, 33.208000>,  <32.469143, 34.071514, 33.114349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357998, 33.880527, 33.208000>,  <32.172756, 33.562218, 33.364086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357998, 33.880527, 33.208000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657470, -0.013199, 0.753365,
		0.594362, -0.605443, -0.529314,
		0.463106, 0.795779, -0.390216,
		32.496929, 34.119263, 33.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870914, 33.405979, 33.462986>,  <32.172756, 33.562218, 33.364086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870914, 33.405979, 33.462986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868332, 33.801315, 33.402138>,  <32.866783, 34.038517, 33.365627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868332, 33.801315, 33.402138>,  <32.870914, 33.405979, 33.462986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868332, 33.801315, 33.402138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561456, 0.129464, 0.817316,
		0.827481, -0.080131, -0.555746,
		-0.006456, 0.988341, -0.152119,
		32.866394, 34.097816, 33.356503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516323, 33.656017, 33.388870>,  <32.870914, 33.405979, 33.462986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516323, 33.656017, 33.388870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287041, 33.956059, 33.520794>,  <33.149471, 34.136086, 33.599949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287041, 33.956059, 33.520794>,  <33.516323, 33.656017, 33.388870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287041, 33.956059, 33.520794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540669, 0.043791, 0.840095,
		0.615718, 0.659865, -0.430661,
		-0.573209, 0.750107, 0.329805,
		33.115078, 34.181091, 33.619736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982208, 33.995476, 33.805843>,  <33.516323, 33.656017, 33.388870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982208, 33.995476, 33.805843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642048, 34.188423, 33.889877>,  <33.437950, 34.304192, 33.940300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642048, 34.188423, 33.889877>,  <33.982208, 33.995476, 33.805843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642048, 34.188423, 33.889877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383289, 0.294449, 0.875437,
		0.360421, 0.824998, -0.435286,
		-0.850404, 0.482366, 0.210087,
		33.386929, 34.333134, 33.952904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283157, 34.393139, 34.262890>,  <33.982208, 33.995476, 33.805843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283157, 34.393139, 34.262890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885624, 34.419590, 34.298504>,  <33.647106, 34.435463, 34.319874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885624, 34.419590, 34.298504>,  <34.283157, 34.393139, 34.262890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885624, 34.419590, 34.298504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109807, 0.473731, 0.873797,
		0.015606, 0.878183, -0.478070,
		-0.993830, 0.066132, 0.089038,
		33.587475, 34.439430, 34.325214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197819, 35.018433, 34.523113>,  <34.283157, 34.393139, 34.262890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197819, 35.018433, 34.523113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873352, 34.811707, 34.632591>,  <33.678673, 34.687672, 34.698280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873352, 34.811707, 34.632591>,  <34.197819, 35.018433, 34.523113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873352, 34.811707, 34.632591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169113, 0.240718, 0.955749,
		-0.559831, 0.821556, -0.107862,
		-0.811166, -0.516817, 0.273698,
		33.630001, 34.656662, 34.714699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120918, 35.674355, 34.825634>,  <34.197819, 35.018433, 34.523113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120918, 35.674355, 34.825634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075573, 35.546684, 34.449276>,  <34.048367, 35.470081, 34.223461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075573, 35.546684, 34.449276>,  <34.120918, 35.674355, 34.825634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075573, 35.546684, 34.449276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651233, 0.691331, -0.312981,
		0.750364, -0.648218, 0.129490,
		-0.113359, -0.319178, -0.940891,
		34.041565, 35.450932, 34.167007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009739, 36.335369, 34.604366>,  <34.120918, 35.674355, 34.825634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009739, 36.335369, 34.604366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378017, 36.472168, 34.679577>,  <34.598984, 36.554249, 34.724705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378017, 36.472168, 34.679577>,  <34.009739, 36.335369, 34.604366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378017, 36.472168, 34.679577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056251, 0.360458, -0.931078,
		-0.386204, 0.867817, 0.312635,
		0.920697, 0.342000, 0.188026,
		34.654228, 36.574768, 34.735985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010513, 37.025761, 34.361031>,  <34.009739, 36.335369, 34.604366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010513, 37.025761, 34.361031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380096, 36.872829, 34.356483>,  <34.601845, 36.781071, 34.353756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380096, 36.872829, 34.356483>,  <34.010513, 37.025761, 34.361031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380096, 36.872829, 34.356483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129299, 0.340157, -0.931437,
		0.359977, 0.859140, 0.363725,
		0.923958, -0.382325, -0.011363,
		34.657284, 36.758133, 34.353073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602581, 37.522076, 34.181118>,  <34.010513, 37.025761, 34.361031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602581, 37.522076, 34.181118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749844, 37.159695, 34.097492>,  <34.838203, 36.942265, 34.047318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749844, 37.159695, 34.097492>,  <34.602581, 37.522076, 34.181118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749844, 37.159695, 34.097492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037112, 0.239001, -0.970310,
		0.929021, 0.349470, 0.121612,
		0.368160, -0.905952, -0.209068,
		34.860291, 36.887909, 34.034771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076336, 37.681110, 33.704857>,  <34.602581, 37.522076, 34.181118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076336, 37.681110, 33.704857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025852, 37.289066, 33.643597>,  <34.995564, 37.053841, 33.606838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025852, 37.289066, 33.643597>,  <35.076336, 37.681110, 33.704857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025852, 37.289066, 33.643597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012674, 0.152783, -0.988178,
		0.991923, -0.126655, -0.006860,
		-0.126205, -0.980110, -0.153154,
		34.987991, 36.995033, 33.597649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473309, 37.485748, 33.152020>,  <35.076336, 37.681110, 33.704857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473309, 37.485748, 33.152020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228249, 37.170006, 33.167919>,  <35.081211, 36.980560, 33.177460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228249, 37.170006, 33.167919>,  <35.473309, 37.485748, 33.152020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228249, 37.170006, 33.167919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051326, -0.010456, -0.998627,
		0.788686, -0.613849, -0.034109,
		-0.612650, -0.789354, 0.039752,
		35.044453, 36.933201, 33.179844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701019, 36.947884, 32.648766>,  <35.473309, 37.485748, 33.152020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701019, 36.947884, 32.648766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317886, 36.864147, 32.727486>,  <35.088005, 36.813908, 32.774715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317886, 36.864147, 32.727486>,  <35.701019, 36.947884, 32.648766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317886, 36.864147, 32.727486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170553, -0.136957, -0.975784,
		0.231221, -0.968205, 0.095479,
		-0.957835, -0.209338, 0.196798,
		35.030537, 36.801346, 32.786526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519833, 36.461090, 32.180027>,  <35.701019, 36.947884, 32.648766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519833, 36.461090, 32.180027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155029, 36.562832, 32.308743>,  <34.936150, 36.623875, 32.385971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155029, 36.562832, 32.308743>,  <35.519833, 36.461090, 32.180027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155029, 36.562832, 32.308743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350092, -0.073911, -0.933795,
		-0.213727, -0.964284, 0.156454,
		-0.912007, 0.254351, 0.321791,
		34.881428, 36.639137, 32.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064800, 35.985405, 31.851250>,  <35.519833, 36.461090, 32.180027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064800, 35.985405, 31.851250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839172, 36.286022, 31.988075>,  <34.703796, 36.466393, 32.070171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839172, 36.286022, 31.988075>,  <35.064800, 35.985405, 31.851250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839172, 36.286022, 31.988075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427976, 0.088176, -0.899478,
		-0.706156, -0.653767, 0.271904,
		-0.564074, 0.751541, 0.342063,
		34.669949, 36.511486, 32.090694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411938, 35.852352, 31.604664>,  <35.064800, 35.985405, 31.851250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411938, 35.852352, 31.604664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400963, 36.241127, 31.698120>,  <34.394379, 36.474392, 31.754194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400963, 36.241127, 31.698120>,  <34.411938, 35.852352, 31.604664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400963, 36.241127, 31.698120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337567, 0.210989, -0.917351,
		-0.940902, -0.104035, 0.322306,
		-0.027434, 0.971936, 0.233639,
		34.392735, 36.532707, 31.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815075, 36.092506, 31.482014>,  <34.411938, 35.852352, 31.604664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815075, 36.092506, 31.482014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030949, 36.428543, 31.460135>,  <34.160473, 36.630165, 31.447006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030949, 36.428543, 31.460135>,  <33.815075, 36.092506, 31.482014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030949, 36.428543, 31.460135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263762, 0.107028, -0.958632,
		-0.799482, 0.531785, 0.279345,
		0.539684, 0.840089, -0.054698,
		34.192852, 36.680569, 31.443726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363102, 36.637856, 31.121389>,  <33.815075, 36.092506, 31.482014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363102, 36.637856, 31.121389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746288, 36.737720, 31.064867>,  <33.976200, 36.797638, 31.030954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746288, 36.737720, 31.064867>,  <33.363102, 36.637856, 31.121389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746288, 36.737720, 31.064867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159585, 0.054453, -0.985681,
		-0.238389, 0.966802, 0.092006,
		0.957968, 0.249658, -0.141306,
		34.033680, 36.812618, 31.022476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366989, 37.050262, 30.549404>,  <33.363102, 36.637856, 31.121389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366989, 37.050262, 30.549404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762466, 36.995468, 30.573769>,  <33.999752, 36.962589, 30.588387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762466, 36.995468, 30.573769>,  <33.366989, 37.050262, 30.549404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762466, 36.995468, 30.573769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104573, 0.339017, -0.934950,
		0.107429, 0.930753, 0.349511,
		0.988698, -0.136990, 0.060912,
		34.059074, 36.954372, 30.592043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701019, 37.658794, 30.198526>,  <33.366989, 37.050262, 30.549404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701019, 37.658794, 30.198526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978725, 37.371220, 30.211960>,  <34.145348, 37.198677, 30.220020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978725, 37.371220, 30.211960>,  <33.701019, 37.658794, 30.198526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978725, 37.371220, 30.211960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286913, 0.233669, -0.929021,
		0.660058, 0.654623, 0.368500,
		0.694265, -0.718935, 0.033584,
		34.187004, 37.155540, 30.222034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288342, 37.887890, 29.848354>,  <33.701019, 37.658794, 30.198526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288342, 37.887890, 29.848354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393063, 37.501842, 29.847521>,  <34.455894, 37.270214, 29.847021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393063, 37.501842, 29.847521>,  <34.288342, 37.887890, 29.848354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393063, 37.501842, 29.847521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295092, 0.082103, -0.951935,
		0.918902, 0.248603, 0.306294,
		0.261801, -0.965120, -0.002084,
		34.471603, 37.212307, 29.846895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977398, 37.854519, 29.602465>,  <34.288342, 37.887890, 29.848354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977398, 37.854519, 29.602465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781357, 37.512760, 29.533415>,  <34.663734, 37.307705, 29.491985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781357, 37.512760, 29.533415>,  <34.977398, 37.854519, 29.602465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781357, 37.512760, 29.533415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316352, 0.010190, -0.948587,
		0.812233, -0.519514, 0.265297,
		-0.490101, -0.854401, -0.172626,
		34.634327, 37.256439, 29.481627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376678, 37.599003, 29.173338>,  <34.977398, 37.854519, 29.602465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376678, 37.599003, 29.173338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048660, 37.373993, 29.131231>,  <34.851849, 37.238987, 29.105967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048660, 37.373993, 29.131231>,  <35.376678, 37.599003, 29.173338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048660, 37.373993, 29.131231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241961, -0.174103, -0.954538,
		0.518627, -0.808239, 0.278883,
		-0.820049, -0.562528, -0.105268,
		34.802647, 37.205235, 29.099651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533604, 37.167126, 28.648535>,  <35.376678, 37.599003, 29.173338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533604, 37.167126, 28.648535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134109, 37.179405, 28.664507>,  <34.894413, 37.186775, 28.674089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134109, 37.179405, 28.664507>,  <35.533604, 37.167126, 28.648535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134109, 37.179405, 28.664507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043040, -0.108406, -0.993175,
		-0.026163, -0.993632, 0.109590,
		-0.998731, 0.030701, 0.039930,
		34.834492, 37.188614, 28.676485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210773, 36.585083, 28.204990>,  <35.533604, 37.167126, 28.648535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210773, 36.585083, 28.204990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932613, 36.871788, 28.225677>,  <34.765717, 37.043812, 28.238089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932613, 36.871788, 28.225677>,  <35.210773, 36.585083, 28.204990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932613, 36.871788, 28.225677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163144, -0.087375, -0.982726,
		-0.699863, -0.691820, 0.177696,
		-0.695396, 0.716764, 0.051716,
		34.723995, 37.086819, 28.241192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971466, 36.515652, 27.547329>,  <35.210773, 36.585083, 28.204990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971466, 36.515652, 27.547329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804214, 36.847881, 27.694469>,  <34.703861, 37.047218, 27.782753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804214, 36.847881, 27.694469>,  <34.971466, 36.515652, 27.547329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804214, 36.847881, 27.694469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050830, 0.382922, -0.922381,
		-0.906963, -0.404376, -0.117894,
		-0.418133, 0.830573, 0.367850,
		34.678776, 37.097054, 27.804825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471573, 36.738544, 27.077171>,  <34.971466, 36.515652, 27.547329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471573, 36.738544, 27.077171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527012, 37.075039, 27.286213>,  <34.560276, 37.276936, 27.411638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527012, 37.075039, 27.286213>,  <34.471573, 36.738544, 27.077171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527012, 37.075039, 27.286213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126684, 0.538423, -0.833098,
		-0.982213, 0.049258, 0.181195,
		0.138597, 0.841234, 0.522606,
		34.568592, 37.327408, 27.442995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046169, 37.240227, 26.716927>,  <34.471573, 36.738544, 27.077171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046169, 37.240227, 26.716927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312347, 37.441193, 26.937750>,  <34.472054, 37.561771, 27.070244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312347, 37.441193, 26.937750>,  <34.046169, 37.240227, 26.716927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312347, 37.441193, 26.937750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132213, 0.648553, -0.749599,
		-0.734646, 0.571805, 0.365150,
		0.665443, 0.502412, 0.552057,
		34.511982, 37.591915, 27.103367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822151, 38.027103, 26.576715>,  <34.046169, 37.240227, 26.716927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822151, 38.027103, 26.576715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193069, 38.028465, 26.726439>,  <34.415623, 38.029282, 26.816273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193069, 38.028465, 26.726439>,  <33.822151, 38.027103, 26.576715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193069, 38.028465, 26.726439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280449, 0.655986, -0.700736,
		-0.247924, 0.754766, 0.607340,
		0.927298, 0.003402, 0.374308,
		34.471260, 38.029488, 26.838732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966537, 38.655487, 26.603369>,  <33.822151, 38.027103, 26.576715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966537, 38.655487, 26.603369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330044, 38.490707, 26.576702>,  <34.548149, 38.391838, 26.560701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330044, 38.490707, 26.576702>,  <33.966537, 38.655487, 26.603369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330044, 38.490707, 26.576702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187342, 0.545484, -0.816915,
		0.372893, 0.729894, 0.572892,
		0.908765, -0.411949, -0.066667,
		34.602673, 38.367123, 26.556702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303730, 39.261765, 26.415318>,  <33.966537, 38.655487, 26.603369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303730, 39.261765, 26.415318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522060, 38.940533, 26.319700>,  <34.653057, 38.747795, 26.262329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522060, 38.940533, 26.319700>,  <34.303730, 39.261765, 26.415318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522060, 38.940533, 26.319700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298049, 0.452718, -0.840365,
		0.783097, 0.387447, 0.486462,
		0.545826, -0.803076, -0.239044,
		34.685810, 38.699608, 26.247988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032887, 39.528526, 26.160227>,  <34.303730, 39.261765, 26.415318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032887, 39.528526, 26.160227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987885, 39.154984, 26.024435>,  <34.960884, 38.930859, 25.942959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987885, 39.154984, 26.024435>,  <35.032887, 39.528526, 26.160227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987885, 39.154984, 26.024435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180162, 0.316816, -0.931219,
		0.977182, -0.165928, 0.132603,
		-0.112505, -0.933860, -0.339481,
		34.954132, 38.874825, 25.922590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561211, 39.353931, 25.735931>,  <35.032887, 39.528526, 26.160227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561211, 39.353931, 25.735931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271172, 39.106697, 25.614471>,  <35.097149, 38.958359, 25.541595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271172, 39.106697, 25.614471>,  <35.561211, 39.353931, 25.735931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271172, 39.106697, 25.614471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098768, 0.343037, -0.934115,
		0.681523, -0.707318, -0.187690,
		-0.725101, -0.618083, -0.303648,
		35.053642, 38.921272, 25.523376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791626, 38.980042, 25.120640>,  <35.561211, 39.353931, 25.735931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791626, 38.980042, 25.120640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394218, 39.021221, 25.101358>,  <35.155773, 39.045929, 25.089790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394218, 39.021221, 25.101358>,  <35.791626, 38.980042, 25.120640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394218, 39.021221, 25.101358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083599, 0.374383, -0.923498,
		-0.077024, -0.921542, -0.380563,
		-0.993518, 0.102946, -0.048203,
		35.096165, 39.052105, 25.086897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287865, 38.461952, 24.895414>,  <35.791626, 38.980042, 25.120640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287865, 38.461952, 24.895414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669907, 38.553097, 24.819683>,  <36.899132, 38.607784, 24.774244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669907, 38.553097, 24.819683>,  <36.287865, 38.461952, 24.895414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669907, 38.553097, 24.819683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129777, 0.252686, 0.958805,
		0.266328, -0.940331, 0.211769,
		0.955106, 0.227874, -0.189331,
		36.956440, 38.621456, 24.762884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720528, 38.050312, 25.474602>,  <36.287865, 38.461952, 24.895414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720528, 38.050312, 25.474602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920807, 38.360699, 25.321144>,  <37.040974, 38.546928, 25.229071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920807, 38.360699, 25.321144>,  <36.720528, 38.050312, 25.474602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920807, 38.360699, 25.321144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189093, 0.334448, 0.923249,
		0.844715, -0.534814, 0.020729,
		0.500699, 0.775963, -0.383643,
		37.071018, 38.593487, 25.206051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384674, 37.966522, 25.766130>,  <36.720528, 38.050312, 25.474602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384674, 37.966522, 25.766130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352726, 38.347229, 25.647636>,  <37.333557, 38.575653, 25.576540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352726, 38.347229, 25.647636>,  <37.384674, 37.966522, 25.766130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352726, 38.347229, 25.647636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294657, 0.306448, 0.905134,
		0.952259, -0.014991, -0.304923,
		-0.079874, 0.951769, -0.296235,
		37.328762, 38.632759, 25.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031757, 38.234051, 25.978638>,  <37.384674, 37.966522, 25.766130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031757, 38.234051, 25.978638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758858, 38.526089, 25.963158>,  <37.595119, 38.701313, 25.953871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758858, 38.526089, 25.963158>,  <38.031757, 38.234051, 25.978638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758858, 38.526089, 25.963158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247348, 0.280298, 0.927498,
		0.688011, 0.623210, -0.371820,
		-0.682247, 0.730097, -0.038698,
		37.554184, 38.745117, 25.951548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366474, 38.789078, 26.218117>,  <38.031757, 38.234051, 25.978638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366474, 38.789078, 26.218117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971214, 38.827274, 26.266174>,  <37.734058, 38.850193, 26.295010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971214, 38.827274, 26.266174>,  <38.366474, 38.789078, 26.218117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971214, 38.827274, 26.266174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138546, 0.218271, 0.966004,
		0.066025, 0.971205, -0.228916,
		-0.988153, 0.095496, 0.120145,
		37.674770, 38.855923, 26.302217>
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
