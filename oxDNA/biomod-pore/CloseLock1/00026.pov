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
	<24.401014, 34.996315, 34.920765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198299, 35.330837, 35.004440>,  <24.076670, 35.531551, 35.054646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198299, 35.330837, 35.004440>,  <24.401014, 34.996315, 34.920765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198299, 35.330837, 35.004440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676511, 0.235418, 0.697790,
		0.534320, 0.495148, -0.685077,
		-0.506789, 0.836305, 0.209185,
		24.046263, 35.581730, 35.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831352, 35.570396, 34.906330>,  <24.401014, 34.996315, 34.920765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831352, 35.570396, 34.906330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522560, 35.629936, 35.153519>,  <24.337284, 35.665661, 35.301830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522560, 35.629936, 35.153519>,  <24.831352, 35.570396, 34.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522560, 35.629936, 35.153519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628616, 0.322946, 0.707494,
		-0.094261, 0.934639, -0.342878,
		-0.771982, 0.148849, 0.617970,
		24.290966, 35.674591, 35.338909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962835, 36.233925, 35.149803>,  <24.831352, 35.570396, 34.906330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962835, 36.233925, 35.149803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733858, 35.996231, 35.375793>,  <24.596472, 35.853615, 35.511387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733858, 35.996231, 35.375793>,  <24.962835, 36.233925, 35.149803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733858, 35.996231, 35.375793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533799, 0.252939, 0.806896,
		-0.622389, 0.763483, 0.172410,
		-0.572442, -0.594235, 0.564973,
		24.562126, 35.817959, 35.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053509, 36.906975, 35.393642>,  <24.962835, 36.233925, 35.149803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053509, 36.906975, 35.393642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415632, 37.029774, 35.276226>,  <25.632906, 37.103455, 35.205776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415632, 37.029774, 35.276226>,  <25.053509, 36.906975, 35.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415632, 37.029774, 35.276226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180209, 0.903419, 0.389049,
		0.384631, -0.299310, 0.873197,
		0.905309, 0.306998, -0.293544,
		25.687225, 37.121872, 35.188164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259035, 37.248428, 36.000252>,  <25.053509, 36.906975, 35.393642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259035, 37.248428, 36.000252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480946, 37.378460, 35.693909>,  <25.614092, 37.456478, 35.510101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480946, 37.378460, 35.693909>,  <25.259035, 37.248428, 36.000252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480946, 37.378460, 35.693909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143065, 0.944070, 0.297092,
		0.819606, -0.055252, 0.570257,
		0.554778, 0.325082, -0.765861,
		25.647379, 37.475983, 35.464149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505972, 37.777382, 36.310871>,  <25.259035, 37.248428, 36.000252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505972, 37.777382, 36.310871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892012, 37.805325, 36.209911>,  <26.123636, 37.822090, 36.149338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892012, 37.805325, 36.209911>,  <25.505972, 37.777382, 36.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892012, 37.805325, 36.209911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190029, 0.849972, -0.491361,
		0.180203, 0.522175, 0.833583,
		0.965099, 0.069860, -0.252397,
		26.181541, 37.826283, 36.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961071, 38.247021, 36.787521>,  <25.505972, 37.777382, 36.310871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961071, 38.247021, 36.787521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094028, 38.224899, 36.410915>,  <26.173803, 38.211628, 36.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094028, 38.224899, 36.410915>,  <25.961071, 38.247021, 36.787521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094028, 38.224899, 36.410915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114451, 0.988537, -0.098467,
		0.936170, 0.140487, 0.322254,
		0.332394, -0.055300, -0.941518,
		26.193747, 38.208309, 36.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573734, 38.636265, 36.684052>,  <25.961071, 38.247021, 36.787521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573734, 38.636265, 36.684052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406708, 38.604664, 36.321968>,  <26.306492, 38.585705, 36.104717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406708, 38.604664, 36.321968>,  <26.573734, 38.636265, 36.684052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406708, 38.604664, 36.321968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030362, 0.996870, -0.072994,
		0.908140, -0.002996, -0.418657,
		-0.417565, -0.079000, -0.905206,
		26.281439, 38.580963, 36.050407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855579, 39.226036, 36.198158>,  <26.573734, 38.636265, 36.684052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855579, 39.226036, 36.198158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540432, 39.096050, 35.988911>,  <26.351343, 39.018059, 35.863361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540432, 39.096050, 35.988911>,  <26.855579, 39.226036, 36.198158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540432, 39.096050, 35.988911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232210, 0.943504, -0.236386,
		0.570384, -0.064768, -0.818821,
		-0.787871, -0.324969, -0.523120,
		26.304071, 38.998558, 35.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906433, 39.559258, 35.574020>,  <26.855579, 39.226036, 36.198158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906433, 39.559258, 35.574020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518774, 39.468670, 35.612923>,  <26.286179, 39.414318, 35.636265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518774, 39.468670, 35.612923>,  <26.906433, 39.559258, 35.574020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518774, 39.468670, 35.612923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245703, 0.918902, -0.308626,
		-0.019477, -0.323002, -0.946198,
		-0.969149, -0.226473, 0.097260,
		26.228029, 39.400726, 35.642101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628429, 39.885502, 35.009190>,  <26.906433, 39.559258, 35.574020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628429, 39.885502, 35.009190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310923, 39.818592, 35.243095>,  <26.120419, 39.778446, 35.383438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310923, 39.818592, 35.243095>,  <26.628429, 39.885502, 35.009190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310923, 39.818592, 35.243095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367236, 0.898214, -0.241556,
		-0.484840, -0.406487, -0.774402,
		-0.793768, -0.167272, 0.584767,
		26.072792, 39.768410, 35.418526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039913, 40.092491, 34.611080>,  <26.628429, 39.885502, 35.009190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039913, 40.092491, 34.611080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936310, 40.105293, 34.997219>,  <25.874147, 40.112976, 35.228901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936310, 40.105293, 34.997219>,  <26.039913, 40.092491, 34.611080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936310, 40.105293, 34.997219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405625, 0.903441, -0.138787,
		-0.876575, -0.427515, -0.221015,
		-0.259008, 0.032008, 0.965345,
		25.858608, 40.114895, 35.286823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227627, 40.341274, 34.648087>,  <26.039913, 40.092491, 34.611080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227627, 40.341274, 34.648087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373928, 40.398724, 35.015911>,  <25.461708, 40.433193, 35.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373928, 40.398724, 35.015911>,  <25.227627, 40.341274, 34.648087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373928, 40.398724, 35.015911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193264, 0.978206, -0.075909,
		-0.910426, -0.149955, 0.385537,
		0.365752, 0.143620, 0.919564,
		25.483654, 40.441811, 35.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673841, 40.602726, 35.034885>,  <25.227627, 40.341274, 34.648087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673841, 40.602726, 35.034885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028309, 40.735653, 35.164047>,  <25.240990, 40.815407, 35.241547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028309, 40.735653, 35.164047>,  <24.673841, 40.602726, 35.034885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028309, 40.735653, 35.164047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325671, 0.942415, -0.076111,
		-0.329606, -0.037715, 0.943365,
		0.886170, 0.332313, 0.322909,
		25.294161, 40.835346, 35.260921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419983, 41.115730, 35.465157>,  <24.673841, 40.602726, 35.034885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419983, 41.115730, 35.465157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808250, 41.210995, 35.452007>,  <25.041210, 41.268154, 35.444118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808250, 41.210995, 35.452007>,  <24.419983, 41.115730, 35.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808250, 41.210995, 35.452007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240375, 0.964119, -0.112670,
		0.004862, 0.117268, 0.993088,
		0.970668, 0.238165, -0.032876,
		25.099451, 41.282444, 35.442146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543858, 41.670536, 36.006969>,  <24.419983, 41.115730, 35.465157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543858, 41.670536, 36.006969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827618, 41.686222, 35.725483>,  <24.997873, 41.695633, 35.556591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827618, 41.686222, 35.725483>,  <24.543858, 41.670536, 36.006969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827618, 41.686222, 35.725483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097112, 0.994367, -0.042480,
		0.698086, 0.098475, 0.709210,
		0.709398, 0.039218, -0.703716,
		25.040438, 41.697987, 35.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875782, 42.360992, 36.067116>,  <24.543858, 41.670536, 36.006969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875782, 42.360992, 36.067116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019464, 42.240257, 35.713875>,  <25.105675, 42.167816, 35.501930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019464, 42.240257, 35.713875>,  <24.875782, 42.360992, 36.067116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019464, 42.240257, 35.713875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048332, 0.951000, -0.305388,
		0.932005, 0.067016, 0.356195,
		0.359208, -0.301839, -0.883099,
		25.127226, 42.149704, 35.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587107, 42.664864, 35.938904>,  <24.875782, 42.360992, 36.067116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587107, 42.664864, 35.938904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406689, 42.571114, 35.594433>,  <25.298439, 42.514862, 35.387749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406689, 42.571114, 35.594433>,  <25.587107, 42.664864, 35.938904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406689, 42.571114, 35.594433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177745, 0.921985, -0.344021,
		0.874624, -0.308239, -0.374195,
		-0.451043, -0.234378, -0.861178,
		25.271376, 42.500801, 35.336079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070597, 42.892258, 35.517345>,  <25.587107, 42.664864, 35.938904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070597, 42.892258, 35.517345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720930, 42.856819, 35.326355>,  <25.511129, 42.835556, 35.211761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720930, 42.856819, 35.326355>,  <26.070597, 42.892258, 35.517345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720930, 42.856819, 35.326355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110241, 0.921342, -0.372795,
		0.472949, -0.378523, -0.795638,
		-0.874166, -0.088601, -0.477476,
		25.458681, 42.830238, 35.183113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079187, 43.241993, 34.915539>,  <26.070597, 42.892258, 35.517345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079187, 43.241993, 34.915539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681875, 43.195995, 34.920795>,  <25.443489, 43.168396, 34.923950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681875, 43.195995, 34.920795>,  <26.079187, 43.241993, 34.915539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681875, 43.195995, 34.920795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112314, 0.930163, -0.349547,
		0.027976, -0.348674, -0.936827,
		-0.993279, -0.114997, 0.013138,
		25.383892, 43.161495, 34.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732771, 43.432449, 34.221657>,  <26.079187, 43.241993, 34.915539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732771, 43.432449, 34.221657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442850, 43.465496, 34.495251>,  <25.268898, 43.485325, 34.659409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442850, 43.465496, 34.495251>,  <25.732771, 43.432449, 34.221657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442850, 43.465496, 34.495251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277208, 0.873903, -0.399312,
		-0.630726, -0.479028, -0.610505,
		-0.724803, 0.082620, 0.683984,
		25.225409, 43.490284, 34.700447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247837, 43.680206, 33.803242>,  <25.732771, 43.432449, 34.221657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247837, 43.680206, 33.803242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145903, 43.760479, 34.181614>,  <25.084742, 43.808643, 34.408638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145903, 43.760479, 34.181614>,  <25.247837, 43.680206, 33.803242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145903, 43.760479, 34.181614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254045, 0.929972, -0.265733,
		-0.933016, -0.308028, -0.186009,
		-0.254837, 0.200679, 0.945931,
		25.069452, 43.820683, 34.465393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709406, 43.906025, 33.756519>,  <25.247837, 43.680206, 33.803242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709406, 43.906025, 33.756519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836584, 44.052311, 34.106415>,  <24.912891, 44.140083, 34.316353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836584, 44.052311, 34.106415>,  <24.709406, 43.906025, 33.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836584, 44.052311, 34.106415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287018, 0.916448, -0.278824,
		-0.903621, -0.162414, 0.396348,
		0.317948, 0.365710, 0.874737,
		24.931969, 44.162025, 34.368835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132948, 44.054829, 34.300556>,  <24.709406, 43.906025, 33.756519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132948, 44.054829, 34.300556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456518, 44.288498, 34.327061>,  <24.650660, 44.428699, 34.342964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456518, 44.288498, 34.327061>,  <24.132948, 44.054829, 34.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456518, 44.288498, 34.327061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564828, 0.803479, -0.188122,
		-0.163132, 0.114752, 0.979908,
		0.808923, 0.584169, 0.066258,
		24.699196, 44.463749, 34.346939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.001835, 44.583553, 34.716232>,  <24.132948, 44.054829, 34.300556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.001835, 44.583553, 34.716232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265150, 44.711777, 34.443790>,  <24.423140, 44.788712, 34.280327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265150, 44.711777, 34.443790>,  <24.001835, 44.583553, 34.716232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265150, 44.711777, 34.443790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509570, 0.855735, -0.089753,
		0.554070, 0.406152, 0.726668,
		0.658289, 0.320558, -0.681100,
		24.462637, 44.807945, 34.239460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226587, 45.248264, 34.915131>,  <24.001835, 44.583553, 34.716232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226587, 45.248264, 34.915131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259224, 45.195305, 34.519997>,  <24.278807, 45.163528, 34.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259224, 45.195305, 34.519997>,  <24.226587, 45.248264, 34.915131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259224, 45.195305, 34.519997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580017, 0.799703, -0.155096,
		0.810508, 0.585614, -0.011546,
		0.081593, -0.132403, -0.987832,
		24.283703, 45.155582, 34.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421997, 45.853493, 34.635841>,  <24.226587, 45.248264, 34.915131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421997, 45.853493, 34.635841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228456, 45.644505, 34.355011>,  <24.112331, 45.519112, 34.186512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228456, 45.644505, 34.355011>,  <24.421997, 45.853493, 34.635841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228456, 45.644505, 34.355011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558074, 0.802163, -0.212341,
		0.674122, 0.289069, -0.679705,
		-0.483853, -0.522469, -0.702077,
		24.083302, 45.487762, 34.144386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301044, 46.331245, 34.174419>,  <24.421997, 45.853493, 34.635841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301044, 46.331245, 34.174419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.044237, 46.050419, 34.051186>,  <23.890152, 45.881924, 33.977245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.044237, 46.050419, 34.051186>,  <24.301044, 46.331245, 34.174419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.044237, 46.050419, 34.051186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661074, 0.710443, -0.241355,
		0.388322, 0.048711, -0.920235,
		-0.642018, -0.702067, -0.308082,
		23.851631, 45.839798, 33.958759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275274, 46.572029, 33.550068>,  <24.301044, 46.331245, 34.174419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275274, 46.572029, 33.550068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644262, 46.500694, 33.413105>,  <24.865656, 46.457893, 33.330929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644262, 46.500694, 33.413105>,  <24.275274, 46.572029, 33.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644262, 46.500694, 33.413105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310937, 0.182510, -0.932742,
		0.228836, 0.966895, 0.112908,
		0.922471, -0.178338, -0.342408,
		24.921003, 46.447193, 33.310383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460545, 47.109188, 32.942307>,  <24.275274, 46.572029, 33.550068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460545, 47.109188, 32.942307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720186, 46.805000, 32.934734>,  <24.875971, 46.622490, 32.930191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720186, 46.805000, 32.934734>,  <24.460545, 47.109188, 32.942307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720186, 46.805000, 32.934734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155461, -0.108258, -0.981892,
		0.744646, 0.640291, -0.188493,
		0.649103, -0.760465, -0.018927,
		24.914917, 46.576862, 32.929058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056046, 47.274197, 32.525238>,  <24.460545, 47.109188, 32.942307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056046, 47.274197, 32.525238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003223, 46.878174, 32.505829>,  <24.971531, 46.640560, 32.494183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003223, 46.878174, 32.505829>,  <25.056046, 47.274197, 32.525238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003223, 46.878174, 32.505829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017070, 0.051215, -0.998542,
		0.991095, -0.131034, -0.023664,
		-0.132055, -0.990054, -0.048522,
		24.963608, 46.581158, 32.491272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560247, 46.996189, 31.908829>,  <25.056046, 47.274197, 32.525238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560247, 46.996189, 31.908829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259901, 46.741470, 31.978903>,  <25.079693, 46.588638, 32.020947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259901, 46.741470, 31.978903>,  <25.560247, 46.996189, 31.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259901, 46.741470, 31.978903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008612, -0.274669, -0.961500,
		0.660399, -0.720449, 0.211724,
		-0.750866, -0.636797, 0.175186,
		25.034641, 46.550430, 32.031460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927452, 46.700710, 32.604984>,  <25.560247, 46.996189, 31.908829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927452, 46.700710, 32.604984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234028, 46.957062, 32.622131>,  <26.417974, 47.110874, 32.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234028, 46.957062, 32.622131>,  <25.927452, 46.700710, 32.604984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234028, 46.957062, 32.622131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611228, -0.707208, -0.355328,
		-0.197406, 0.298540, -0.933758,
		0.766441, 0.640883, 0.042869,
		26.463961, 47.149326, 32.634991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191420, 46.687977, 31.948956>,  <25.927452, 46.700710, 32.604984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191420, 46.687977, 31.948956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421309, 46.773182, 32.265011>,  <26.559242, 46.824303, 32.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421309, 46.773182, 32.265011>,  <26.191420, 46.687977, 31.948956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421309, 46.773182, 32.265011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562616, -0.803998, -0.192486,
		0.594269, 0.555171, -0.581919,
		0.574724, 0.213009, 0.790139,
		26.593725, 46.837086, 32.502052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889658, 46.638275, 31.730913>,  <26.191420, 46.687977, 31.948956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889658, 46.638275, 31.730913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820734, 46.570625, 32.119080>,  <26.779379, 46.530037, 32.351978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820734, 46.570625, 32.119080>,  <26.889658, 46.638275, 31.730913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820734, 46.570625, 32.119080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512504, -0.856703, -0.058304,
		0.841219, 0.487295, 0.234295,
		-0.172310, -0.169124, 0.970416,
		26.769041, 46.519890, 32.410206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495916, 46.347404, 32.014023>,  <26.889658, 46.638275, 31.730913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495916, 46.347404, 32.014023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233068, 46.239315, 32.295498>,  <27.075359, 46.174461, 32.464382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233068, 46.239315, 32.295498>,  <27.495916, 46.347404, 32.014023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233068, 46.239315, 32.295498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470097, -0.876662, 0.102341,
		0.589242, 0.398051, 0.703100,
		-0.657117, -0.270222, 0.703688,
		27.035933, 46.158249, 32.506603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849257, 45.962761, 32.446285>,  <27.495916, 46.347404, 32.014023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849257, 45.962761, 32.446285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473871, 45.838238, 32.506123>,  <27.248640, 45.763523, 32.542023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473871, 45.838238, 32.506123>,  <27.849257, 45.962761, 32.446285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473871, 45.838238, 32.506123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296399, -0.948247, -0.113907,
		0.177309, -0.062559, 0.982165,
		-0.938461, -0.311310, 0.149590,
		27.192333, 45.744846, 32.550999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897537, 45.499310, 33.018986>,  <27.849257, 45.962761, 32.446285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897537, 45.499310, 33.018986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534018, 45.405090, 32.881229>,  <27.315907, 45.348560, 32.798576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534018, 45.405090, 32.881229>,  <27.897537, 45.499310, 33.018986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534018, 45.405090, 32.881229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206315, -0.971128, 0.119769,
		-0.362656, 0.037793, 0.931156,
		-0.908799, -0.235547, -0.344388,
		27.261377, 45.334427, 32.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590158, 45.037834, 33.457729>,  <27.897537, 45.499310, 33.018986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590158, 45.037834, 33.457729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384762, 44.996273, 33.117016>,  <27.261524, 44.971336, 32.912590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384762, 44.996273, 33.117016>,  <27.590158, 45.037834, 33.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384762, 44.996273, 33.117016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099443, -0.993160, 0.061199,
		-0.852313, -0.053278, 0.520312,
		-0.513492, -0.103902, -0.851781,
		27.230715, 44.965103, 32.861481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063976, 44.606117, 33.590569>,  <27.590158, 45.037834, 33.457729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063976, 44.606117, 33.590569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143688, 44.560677, 33.201233>,  <27.191515, 44.533413, 32.967632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143688, 44.560677, 33.201233>,  <27.063976, 44.606117, 33.590569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143688, 44.560677, 33.201233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058913, -0.992850, 0.103821,
		-0.978170, 0.036652, -0.204549,
		0.199281, -0.113605, -0.973335,
		27.203472, 44.526596, 32.909233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587757, 44.110130, 33.373573>,  <27.063976, 44.606117, 33.590569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587757, 44.110130, 33.373573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872742, 44.131790, 33.093723>,  <27.043732, 44.144787, 32.925816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872742, 44.131790, 33.093723>,  <26.587757, 44.110130, 33.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872742, 44.131790, 33.093723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156448, -0.984180, 0.083144,
		-0.684050, -0.168691, -0.709661,
		0.712460, 0.054151, -0.699620,
		27.086479, 44.148037, 32.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415749, 43.560490, 33.003490>,  <26.587757, 44.110130, 33.373573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415749, 43.560490, 33.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790627, 43.631168, 32.883194>,  <27.015553, 43.673576, 32.811016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790627, 43.631168, 32.883194>,  <26.415749, 43.560490, 33.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790627, 43.631168, 32.883194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213642, -0.972334, 0.094471,
		-0.275728, -0.152788, -0.949015,
		0.937193, 0.176701, -0.300742,
		27.071785, 43.684177, 32.792973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538305, 43.168182, 32.473740>,  <26.415749, 43.560490, 33.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538305, 43.168182, 32.473740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900642, 43.238007, 32.628128>,  <27.118046, 43.279903, 32.720760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900642, 43.238007, 32.628128>,  <26.538305, 43.168182, 32.473740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900642, 43.238007, 32.628128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203613, -0.978413, -0.035356,
		0.371466, 0.110615, -0.921834,
		0.905845, 0.174564, 0.385970,
		27.172396, 43.290375, 32.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039324, 42.937408, 31.966776>,  <26.538305, 43.168182, 32.473740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039324, 42.937408, 31.966776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212105, 42.933723, 32.327515>,  <27.315773, 42.931511, 32.543957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212105, 42.933723, 32.327515>,  <27.039324, 42.937408, 31.966776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212105, 42.933723, 32.327515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322896, -0.932086, -0.164178,
		0.842113, 0.362120, -0.399643,
		0.431954, -0.009213, 0.901849,
		27.341690, 42.930958, 32.598068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448191, 42.445904, 31.932720>,  <27.039324, 42.937408, 31.966776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448191, 42.445904, 31.932720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501301, 42.505535, 32.324669>,  <27.533167, 42.541313, 32.559837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501301, 42.505535, 32.324669>,  <27.448191, 42.445904, 31.932720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501301, 42.505535, 32.324669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430707, -0.899078, 0.078422,
		0.892671, 0.411625, -0.183582,
		0.132774, 0.149076, 0.979871,
		27.541134, 42.550259, 32.618629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131357, 42.164516, 31.976110>,  <27.448191, 42.445904, 31.932720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131357, 42.164516, 31.976110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947353, 42.157890, 32.331215>,  <27.836952, 42.153915, 32.544277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947353, 42.157890, 32.331215>,  <28.131357, 42.164516, 31.976110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947353, 42.157890, 32.331215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302637, -0.942882, 0.139227,
		0.834748, 0.332715, 0.438745,
		-0.460008, -0.016561, 0.887761,
		27.809351, 42.152924, 32.597542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499910, 41.805531, 32.433540>,  <28.131357, 42.164516, 31.976110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499910, 41.805531, 32.433540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154633, 41.774296, 32.633060>,  <27.947466, 41.755554, 32.752773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154633, 41.774296, 32.633060>,  <28.499910, 41.805531, 32.433540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154633, 41.774296, 32.633060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225097, -0.943859, 0.241788,
		0.451916, 0.320988, 0.832310,
		-0.863194, -0.078082, 0.498798,
		27.895674, 41.750870, 32.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788914, 41.456402, 32.988270>,  <28.499910, 41.805531, 32.433540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788914, 41.456402, 32.988270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392183, 41.410530, 32.965897>,  <28.154144, 41.383007, 32.952473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392183, 41.410530, 32.965897>,  <28.788914, 41.456402, 32.988270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392183, 41.410530, 32.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095265, -0.957193, 0.273325,
		-0.084880, 0.265763, 0.960295,
		-0.991827, -0.114682, -0.055929,
		28.094635, 41.376125, 32.949120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624966, 41.042656, 33.562019>,  <28.788914, 41.456402, 32.988270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624966, 41.042656, 33.562019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316391, 40.999184, 33.311237>,  <28.131247, 40.973103, 33.160767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316391, 40.999184, 33.311237>,  <28.624966, 41.042656, 33.562019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316391, 40.999184, 33.311237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063262, -0.967326, 0.245518,
		-0.633154, 0.229064, 0.739355,
		-0.771436, -0.108678, -0.626957,
		28.084961, 40.966579, 33.123150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982126, 40.917458, 33.908401>,  <28.624966, 41.042656, 33.562019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982126, 40.917458, 33.908401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911892, 40.777534, 33.540314>,  <27.869751, 40.693581, 33.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911892, 40.777534, 33.540314>,  <27.982126, 40.917458, 33.908401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911892, 40.777534, 33.540314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220345, -0.897064, 0.383046,
		-0.959488, 0.270024, 0.080435,
		-0.175587, -0.349804, -0.920221,
		27.859215, 40.672592, 33.264248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432022, 40.493473, 33.923336>,  <27.982126, 40.917458, 33.908401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432022, 40.493473, 33.923336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656540, 40.378433, 33.612919>,  <27.791250, 40.309410, 33.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656540, 40.378433, 33.612919>,  <27.432022, 40.493473, 33.923336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656540, 40.378433, 33.612919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005208, -0.938889, 0.344182,
		-0.827601, -0.189145, -0.528489,
		0.561293, -0.287598, -0.776040,
		27.824928, 40.292152, 33.380108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056110, 39.942799, 33.760513>,  <27.432022, 40.493473, 33.923336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056110, 39.942799, 33.760513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385170, 39.854927, 33.550755>,  <27.582605, 39.802204, 33.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385170, 39.854927, 33.550755>,  <27.056110, 39.942799, 33.760513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385170, 39.854927, 33.550755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102742, -0.964592, 0.242913,
		-0.559190, -0.145955, -0.816090,
		0.822648, -0.219681, -0.524395,
		27.631964, 39.789024, 33.393436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885975, 39.461994, 33.405109>,  <27.056110, 39.942799, 33.760513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885975, 39.461994, 33.405109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284470, 39.427471, 33.408333>,  <27.523565, 39.406757, 33.410267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284470, 39.427471, 33.408333>,  <26.885975, 39.461994, 33.405109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284470, 39.427471, 33.408333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086401, -0.981125, 0.172999,
		-0.007022, -0.173044, -0.984889,
		0.996236, -0.086310, 0.008061,
		27.583340, 39.401577, 33.410751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982351, 38.856590, 33.092960>,  <26.885975, 39.461994, 33.405109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982351, 38.856590, 33.092960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341547, 38.924126, 33.255493>,  <27.557064, 38.964645, 33.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341547, 38.924126, 33.255493>,  <26.982351, 38.856590, 33.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341547, 38.924126, 33.255493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105186, -0.979050, 0.174348,
		0.427259, -0.113822, -0.896936,
		0.897990, 0.168837, 0.406335,
		27.610945, 38.974777, 33.377396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307625, 38.352558, 32.849354>,  <26.982351, 38.856590, 33.092960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307625, 38.352558, 32.849354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548712, 38.453529, 33.152145>,  <27.693363, 38.514114, 33.333820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548712, 38.453529, 33.152145>,  <27.307625, 38.352558, 32.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548712, 38.453529, 33.152145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267914, -0.957592, 0.106013,
		0.751635, 0.138909, -0.644785,
		0.602715, 0.252431, 0.756976,
		27.729527, 38.529259, 33.379238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975302, 38.001629, 32.827442>,  <27.307625, 38.352558, 32.849354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975302, 38.001629, 32.827442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958731, 38.076954, 33.219936>,  <27.948788, 38.122150, 33.455433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958731, 38.076954, 33.219936>,  <27.975302, 38.001629, 32.827442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958731, 38.076954, 33.219936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418242, -0.888625, 0.188202,
		0.907390, 0.418190, -0.041947,
		-0.041429, 0.188317, 0.981234,
		27.946302, 38.133450, 33.514305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664478, 37.820629, 33.234955>,  <27.975302, 38.001629, 32.827442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664478, 37.820629, 33.234955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354162, 37.801476, 33.486622>,  <28.167973, 37.789986, 33.637623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354162, 37.801476, 33.486622>,  <28.664478, 37.820629, 33.234955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354162, 37.801476, 33.486622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245825, -0.941269, 0.231480,
		0.581134, 0.334246, 0.742000,
		-0.775792, -0.047882, 0.629169,
		28.121424, 37.787109, 33.675373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841234, 37.721123, 33.977512>,  <28.664478, 37.820629, 33.234955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841234, 37.721123, 33.977512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507145, 37.529903, 33.868801>,  <28.306690, 37.415173, 33.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507145, 37.529903, 33.868801>,  <28.841234, 37.721123, 33.977512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507145, 37.529903, 33.868801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411224, -0.871100, 0.268476,
		-0.365095, 0.112474, 0.924151,
		-0.835225, -0.478052, -0.271782,
		28.256577, 37.386486, 33.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593800, 37.260815, 34.411591>,  <28.841234, 37.721123, 33.977512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593800, 37.260815, 34.411591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470961, 37.145302, 34.048866>,  <28.397257, 37.075996, 33.831234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470961, 37.145302, 34.048866>,  <28.593800, 37.260815, 34.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470961, 37.145302, 34.048866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438580, -0.888579, 0.134444,
		-0.844594, -0.356420, 0.399532,
		-0.307097, -0.288778, -0.906807,
		28.378832, 37.058670, 33.776825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201771, 36.632347, 34.561554>,  <28.593800, 37.260815, 34.411591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201771, 36.632347, 34.561554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373819, 36.662651, 34.201721>,  <28.477049, 36.680836, 33.985821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373819, 36.662651, 34.201721>,  <28.201771, 36.632347, 34.561554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373819, 36.662651, 34.201721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611595, -0.757415, 0.228634,
		-0.664038, -0.648523, -0.372118,
		0.430122, 0.075764, -0.899586,
		28.502855, 36.685379, 33.931847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315201, 36.028893, 34.221970>,  <28.201771, 36.632347, 34.561554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315201, 36.028893, 34.221970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605650, 36.273640, 34.096519>,  <28.779921, 36.420486, 34.021248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605650, 36.273640, 34.096519>,  <28.315201, 36.028893, 34.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605650, 36.273640, 34.096519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687034, -0.663561, 0.296091,
		-0.026944, -0.430473, -0.902201,
		0.726125, 0.611866, -0.313628,
		28.823488, 36.457199, 34.002430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781384, 35.703270, 33.736549>,  <28.315201, 36.028893, 34.221970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781384, 35.703270, 33.736549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993727, 35.990429, 33.916687>,  <29.121134, 36.162724, 34.024773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993727, 35.990429, 33.916687>,  <28.781384, 35.703270, 33.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993727, 35.990429, 33.916687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757556, -0.640191, 0.127531,
		0.379863, 0.273464, -0.883698,
		0.530860, 0.717895, 0.450349,
		29.152985, 36.205799, 34.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510387, 35.866764, 33.412754>,  <28.781384, 35.703270, 33.736549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510387, 35.866764, 33.412754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504333, 35.895309, 33.811687>,  <29.500702, 35.912437, 34.051048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504333, 35.895309, 33.811687>,  <29.510387, 35.866764, 33.412754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504333, 35.895309, 33.811687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870527, -0.489749, 0.048252,
		0.491888, 0.868938, -0.054708,
		-0.015135, 0.071359, 0.997336,
		29.499792, 35.916718, 34.110889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138968, 36.177525, 33.719013>,  <29.510387, 35.866764, 33.412754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138968, 36.177525, 33.719013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950562, 35.943298, 33.982910>,  <29.837519, 35.802761, 34.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950562, 35.943298, 33.982910>,  <30.138968, 36.177525, 33.719013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950562, 35.943298, 33.982910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836451, -0.534013, 0.123204,
		0.280167, 0.609873, 0.741324,
		-0.471016, -0.585564, 0.659742,
		29.809258, 35.767628, 34.180832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862780, 36.127457, 33.925713>,  <30.138968, 36.177525, 33.719013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862780, 36.127457, 33.925713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144560, 35.854660, 34.004337>,  <31.313629, 35.690983, 34.051514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144560, 35.854660, 34.004337>,  <30.862780, 36.127457, 33.925713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144560, 35.854660, 34.004337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705661, -0.643307, 0.296984,
		-0.076087, -0.347920, -0.934432,
		0.704452, -0.681988, 0.196566,
		31.355896, 35.650063, 34.063309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523434, 35.456566, 33.843006>,  <30.862780, 36.127457, 33.925713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523434, 35.456566, 33.843006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856363, 35.374508, 34.048977>,  <31.056120, 35.325272, 34.172562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856363, 35.374508, 34.048977>,  <30.523434, 35.456566, 33.843006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856363, 35.374508, 34.048977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471127, -0.751264, 0.462214,
		0.292027, -0.627309, -0.721945,
		0.832322, -0.205149, 0.514931,
		31.106060, 35.312962, 34.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525492, 34.756870, 33.877769>,  <30.523434, 35.456566, 33.843006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525492, 34.756870, 33.877769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770214, 34.879917, 34.169266>,  <30.917048, 34.953747, 34.344166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770214, 34.879917, 34.169266>,  <30.525492, 34.756870, 33.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770214, 34.879917, 34.169266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439447, -0.633850, 0.636491,
		0.657710, -0.709652, -0.252610,
		0.611804, 0.307618, 0.728743,
		30.953756, 34.972202, 34.387890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549318, 34.200470, 34.257713>,  <30.525492, 34.756870, 33.877769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549318, 34.200470, 34.257713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727407, 34.457695, 34.506950>,  <30.834261, 34.612030, 34.656494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727407, 34.457695, 34.506950>,  <30.549318, 34.200470, 34.257713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727407, 34.457695, 34.506950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307165, -0.543956, 0.780872,
		0.841087, -0.539054, -0.044654,
		0.445222, 0.643065, 0.623093,
		30.860973, 34.650616, 34.693878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226604, 33.904736, 34.682537>,  <30.549318, 34.200470, 34.257713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226604, 33.904736, 34.682537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015505, 34.192699, 34.862854>,  <30.888845, 34.365479, 34.971043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015505, 34.192699, 34.862854>,  <31.226604, 33.904736, 34.682537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015505, 34.192699, 34.862854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213098, -0.625963, 0.750173,
		0.822233, 0.299842, 0.483763,
		-0.527751, 0.719906, 0.450792,
		30.857180, 34.408672, 34.998093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438917, 33.815434, 35.379158>,  <31.226604, 33.904736, 34.682537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438917, 33.815434, 35.379158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108509, 34.038521, 35.411762>,  <30.910265, 34.172375, 35.431324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108509, 34.038521, 35.411762>,  <31.438917, 33.815434, 35.379158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108509, 34.038521, 35.411762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196931, -0.421073, 0.885390,
		0.528120, 0.715296, 0.457646,
		-0.826019, 0.557717, 0.081513,
		30.860703, 34.205837, 35.436214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510298, 34.091854, 36.105274>,  <31.438917, 33.815434, 35.379158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510298, 34.091854, 36.105274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126062, 34.137337, 36.003815>,  <30.895521, 34.164627, 35.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126062, 34.137337, 36.003815>,  <31.510298, 34.091854, 36.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126062, 34.137337, 36.003815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276772, -0.475992, 0.834763,
		-0.025816, 0.872067, 0.488704,
		-0.960589, 0.113709, -0.253652,
		30.837885, 34.171448, 35.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185034, 34.186127, 36.752331>,  <31.510298, 34.091854, 36.105274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185034, 34.186127, 36.752331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858402, 34.104675, 36.536282>,  <30.662424, 34.055805, 36.406651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858402, 34.104675, 36.536282>,  <31.185034, 34.186127, 36.752331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858402, 34.104675, 36.536282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448092, -0.366260, 0.815517,
		-0.363888, 0.907959, 0.207835,
		-0.816577, -0.203628, -0.540127,
		30.613428, 34.043587, 36.374245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628647, 34.492310, 37.109406>,  <31.185034, 34.186127, 36.752331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628647, 34.492310, 37.109406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475199, 34.201107, 36.882126>,  <30.383131, 34.026386, 36.745758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475199, 34.201107, 36.882126>,  <30.628647, 34.492310, 37.109406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475199, 34.201107, 36.882126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393239, -0.427932, 0.813779,
		-0.835584, 0.535619, -0.122116,
		-0.383618, -0.728002, -0.568200,
		30.360113, 33.982708, 36.711666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017643, 34.410191, 37.413479>,  <30.628647, 34.492310, 37.109406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017643, 34.410191, 37.413479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101233, 34.084324, 37.197090>,  <30.151386, 33.888805, 37.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101233, 34.084324, 37.197090>,  <30.017643, 34.410191, 37.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101233, 34.084324, 37.197090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233707, -0.578758, 0.781294,
		-0.949585, -0.036839, -0.311338,
		0.208972, -0.814667, -0.540971,
		30.163923, 33.839924, 37.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421614, 33.968224, 37.531101>,  <30.017643, 34.410191, 37.413479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421614, 33.968224, 37.531101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705956, 33.721027, 37.396774>,  <29.876560, 33.572708, 37.316177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705956, 33.721027, 37.396774>,  <29.421614, 33.968224, 37.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705956, 33.721027, 37.396774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247719, -0.666850, 0.702812,
		-0.658267, -0.416413, -0.627124,
		0.710859, -0.617989, -0.335812,
		29.919212, 33.535629, 37.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094709, 33.319958, 37.398872>,  <29.421614, 33.968224, 37.531101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094709, 33.319958, 37.398872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484592, 33.250744, 37.455444>,  <29.718523, 33.209217, 37.489388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484592, 33.250744, 37.455444>,  <29.094709, 33.319958, 37.398872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484592, 33.250744, 37.455444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217709, -0.592302, 0.775746,
		-0.050456, -0.786917, -0.614992,
		0.974709, -0.173030, 0.141434,
		29.777004, 33.198833, 37.497875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153717, 32.588169, 37.334370>,  <29.094709, 33.319958, 37.398872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153717, 32.588169, 37.334370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480919, 32.718506, 37.523979>,  <29.677240, 32.796707, 37.637745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480919, 32.718506, 37.523979>,  <29.153717, 32.588169, 37.334370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480919, 32.718506, 37.523979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070887, -0.760695, 0.645227,
		0.570828, -0.561400, -0.599154,
		0.818004, 0.325841, 0.474022,
		29.726320, 32.816257, 37.666187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665363, 31.967405, 37.299194>,  <29.153717, 32.588169, 37.334370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665363, 31.967405, 37.299194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747654, 32.220661, 37.597672>,  <29.797028, 32.372616, 37.776760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747654, 32.220661, 37.597672>,  <29.665363, 31.967405, 37.299194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747654, 32.220661, 37.597672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039244, -0.756556, 0.652750,
		0.977823, -0.163571, -0.130796,
		0.205725, 0.633141, 0.746197,
		29.809372, 32.410603, 37.821529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857466, 31.473112, 37.733471>,  <29.665363, 31.967405, 37.299194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857466, 31.473112, 37.733471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836618, 31.787277, 37.980183>,  <29.824110, 31.975777, 38.128208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836618, 31.787277, 37.980183>,  <29.857466, 31.473112, 37.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836618, 31.787277, 37.980183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276427, -0.604829, 0.746840,
		0.959621, -0.131568, 0.248633,
		-0.052121, 0.785412, 0.616775,
		29.820982, 32.022900, 38.165215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153337, 31.178719, 38.299141>,  <29.857466, 31.473112, 37.733471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153337, 31.178719, 38.299141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937464, 31.492792, 38.420616>,  <29.807940, 31.681236, 38.493500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937464, 31.492792, 38.420616>,  <30.153337, 31.178719, 38.299141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937464, 31.492792, 38.420616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312919, -0.521976, 0.793487,
		0.781551, 0.333204, 0.527402,
		-0.539685, 0.785185, 0.303686,
		29.775558, 31.728348, 38.511723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348103, 31.430063, 38.928066>,  <30.153337, 31.178719, 38.299141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348103, 31.430063, 38.928066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961830, 31.528938, 38.896164>,  <29.730066, 31.588263, 38.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961830, 31.528938, 38.896164>,  <30.348103, 31.430063, 38.928066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961830, 31.528938, 38.896164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193425, -0.479470, 0.855976,
		0.173348, 0.842025, 0.510827,
		-0.965680, 0.247188, -0.079753,
		29.672127, 31.603094, 38.872238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094044, 31.477690, 39.629639>,  <30.348103, 31.430063, 38.928066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094044, 31.477690, 39.629639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747328, 31.448971, 39.432247>,  <29.539299, 31.431740, 39.313812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747328, 31.448971, 39.432247>,  <30.094044, 31.477690, 39.629639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747328, 31.448971, 39.432247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353113, -0.610380, 0.709047,
		-0.352118, 0.788848, 0.503718,
		-0.866790, -0.071799, -0.493478,
		29.487291, 31.427431, 39.284203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670599, 31.466293, 40.163952>,  <30.094044, 31.477690, 39.629639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670599, 31.466293, 40.163952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442339, 31.331982, 39.864189>,  <29.305384, 31.251394, 39.684330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442339, 31.331982, 39.864189>,  <29.670599, 31.466293, 40.163952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442339, 31.331982, 39.864189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487314, -0.596066, 0.638146,
		-0.660972, 0.729355, 0.176517,
		-0.570650, -0.335777, -0.749408,
		29.271143, 31.231249, 39.639366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929539, 31.630159, 40.298893>,  <29.670599, 31.466293, 40.163952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929539, 31.630159, 40.298893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914724, 31.328238, 40.036930>,  <28.905836, 31.147085, 39.879753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914724, 31.328238, 40.036930>,  <28.929539, 31.630159, 40.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914724, 31.328238, 40.036930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624161, -0.494331, 0.605029,
		-0.780418, 0.431173, -0.452811,
		-0.037034, -0.754803, -0.654906,
		28.903614, 31.101797, 39.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236832, 31.428444, 40.278503>,  <28.929539, 31.630159, 40.298893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236832, 31.428444, 40.278503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431795, 31.113800, 40.126884>,  <28.548773, 30.925014, 40.035912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431795, 31.113800, 40.126884>,  <28.236832, 31.428444, 40.278503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431795, 31.113800, 40.126884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666366, -0.615619, 0.420677,
		-0.564259, 0.047545, -0.824228,
		0.487409, -0.786608, -0.379051,
		28.578018, 30.877817, 40.013168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663942, 30.931725, 40.095322>,  <28.236832, 31.428444, 40.278503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663942, 30.931725, 40.095322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009909, 30.730963, 40.093864>,  <28.217489, 30.610506, 40.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009909, 30.730963, 40.093864>,  <27.663942, 30.931725, 40.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009909, 30.730963, 40.093864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400558, -0.694612, 0.597551,
		-0.302445, -0.515371, -0.801823,
		0.864916, -0.501903, -0.003646,
		28.269384, 30.580391, 40.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429070, 30.228937, 40.183868>,  <27.663942, 30.931725, 40.095322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429070, 30.228937, 40.183868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816372, 30.242146, 40.282974>,  <28.048754, 30.250071, 40.342438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816372, 30.242146, 40.282974>,  <27.429070, 30.228937, 40.183868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816372, 30.242146, 40.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142908, -0.740118, 0.657117,
		0.205075, -0.671666, -0.711905,
		0.968257, 0.033021, 0.247767,
		28.106850, 30.252052, 40.357304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594303, 29.426014, 40.094650>,  <27.429070, 30.228937, 40.183868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594303, 29.426014, 40.094650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818502, 29.634476, 40.352097>,  <27.953022, 29.759552, 40.506565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818502, 29.634476, 40.352097>,  <27.594303, 29.426014, 40.094650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818502, 29.634476, 40.352097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258990, -0.627878, 0.733957,
		0.786615, -0.578073, -0.216953,
		0.560501, 0.521153, 0.643614,
		27.986652, 29.790821, 40.545181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995920, 28.877485, 40.588673>,  <27.594303, 29.426014, 40.094650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995920, 28.877485, 40.588673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036615, 29.233500, 40.766434>,  <28.061033, 29.447107, 40.873089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036615, 29.233500, 40.766434>,  <27.995920, 28.877485, 40.588673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036615, 29.233500, 40.766434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247848, -0.409952, 0.877787,
		0.963442, -0.199449, 0.178885,
		0.101739, 0.890033, 0.444398,
		28.067137, 29.500509, 40.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477137, 28.849392, 41.072926>,  <27.995920, 28.877485, 40.588673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477137, 28.849392, 41.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285637, 29.176855, 41.199795>,  <28.170736, 29.373333, 41.275917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285637, 29.176855, 41.199795>,  <28.477137, 28.849392, 41.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285637, 29.176855, 41.199795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077767, -0.399392, 0.913476,
		0.874501, 0.412660, 0.254873,
		-0.478749, 0.818656, 0.317177,
		28.142012, 29.422451, 41.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880800, 29.172020, 41.628147>,  <28.477137, 28.849392, 41.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880800, 29.172020, 41.628147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498997, 29.284531, 41.667736>,  <28.269915, 29.352037, 41.691490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498997, 29.284531, 41.667736>,  <28.880800, 29.172020, 41.628147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498997, 29.284531, 41.667736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007386, -0.309525, 0.950862,
		0.298090, 0.908338, 0.293367,
		-0.954509, 0.281276, 0.098975,
		28.212645, 29.368914, 41.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794724, 29.560425, 42.330540>,  <28.880800, 29.172020, 41.628147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794724, 29.560425, 42.330540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464844, 29.398298, 42.172760>,  <28.266916, 29.301022, 42.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464844, 29.398298, 42.172760>,  <28.794724, 29.560425, 42.330540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464844, 29.398298, 42.172760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183438, -0.468035, 0.864461,
		-0.534994, 0.785278, 0.311639,
		-0.824701, -0.405316, -0.394446,
		28.217434, 29.276703, 42.054424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266781, 29.714550, 42.816105>,  <28.794724, 29.560425, 42.330540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266781, 29.714550, 42.816105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115822, 29.406429, 42.610500>,  <28.025248, 29.221558, 42.487137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115822, 29.406429, 42.610500>,  <28.266781, 29.714550, 42.816105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115822, 29.406429, 42.610500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366280, -0.385629, 0.846835,
		-0.850536, 0.507865, -0.136611,
		-0.377397, -0.770301, -0.514012,
		28.002604, 29.175339, 42.456295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505590, 29.745539, 42.924435>,  <28.266781, 29.714550, 42.816105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505590, 29.745539, 42.924435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605406, 29.363068, 42.863174>,  <27.665295, 29.133585, 42.826420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605406, 29.363068, 42.863174>,  <27.505590, 29.745539, 42.924435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605406, 29.363068, 42.863174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482506, -0.259893, 0.836447,
		-0.839594, -0.134830, -0.526215,
		0.249538, -0.956178, -0.153149,
		27.680267, 29.076214, 42.817230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900154, 29.335598, 42.938580>,  <27.505590, 29.745539, 42.924435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900154, 29.335598, 42.938580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185488, 29.057495, 42.973831>,  <27.356688, 28.890633, 42.994984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185488, 29.057495, 42.973831>,  <26.900154, 29.335598, 42.938580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185488, 29.057495, 42.973831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484130, -0.397938, 0.779271,
		-0.506726, -0.598547, -0.620460,
		0.713335, -0.695260, 0.088129,
		27.399488, 28.848917, 43.000271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544859, 28.815697, 43.017284>,  <26.900154, 29.335598, 42.938580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544859, 28.815697, 43.017284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889601, 28.706614, 43.188324>,  <27.096445, 28.641163, 43.290947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889601, 28.706614, 43.188324>,  <26.544859, 28.815697, 43.017284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889601, 28.706614, 43.188324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506253, -0.512971, 0.693231,
		0.030295, -0.813935, -0.580165,
		0.861852, -0.272709, 0.427598,
		27.148157, 28.624802, 43.316605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281040, 28.278662, 43.313042>,  <26.544859, 28.815697, 43.017284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281040, 28.278662, 43.313042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637529, 28.361786, 43.474304>,  <26.851423, 28.411661, 43.571060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637529, 28.361786, 43.474304>,  <26.281040, 28.278662, 43.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637529, 28.361786, 43.474304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274618, -0.460179, 0.844287,
		0.360976, -0.863162, -0.353054,
		0.891224, 0.207812, 0.403153,
		26.904898, 28.424129, 43.595249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357038, 27.761164, 43.710121>,  <26.281040, 28.278662, 43.313042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357038, 27.761164, 43.710121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631798, 28.017475, 43.847275>,  <26.796654, 28.171263, 43.929569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631798, 28.017475, 43.847275>,  <26.357038, 27.761164, 43.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631798, 28.017475, 43.847275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032581, -0.444183, 0.895343,
		0.726022, -0.626182, -0.284231,
		0.686899, 0.640778, 0.342889,
		26.837868, 28.209709, 43.950142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912018, 27.321121, 44.040154>,  <26.357038, 27.761164, 43.710121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912018, 27.321121, 44.040154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938740, 27.690201, 44.192028>,  <26.954773, 27.911650, 44.283154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938740, 27.690201, 44.192028>,  <26.912018, 27.321121, 44.040154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938740, 27.690201, 44.192028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070107, -0.375254, 0.924267,
		0.995300, -0.088366, 0.039618,
		0.066807, 0.922700, 0.379685,
		26.958782, 27.967010, 44.305935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421038, 27.266392, 44.670109>,  <26.912018, 27.321121, 44.040154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421038, 27.266392, 44.670109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222288, 27.609694, 44.721508>,  <27.103039, 27.815676, 44.752350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222288, 27.609694, 44.721508>,  <27.421038, 27.266392, 44.670109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222288, 27.609694, 44.721508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047635, -0.174823, 0.983447,
		0.866514, 0.482528, 0.127748,
		-0.496874, 0.858256, 0.128501,
		27.073225, 27.867170, 44.760059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755722, 27.578434, 45.221470>,  <27.421038, 27.266392, 44.670109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755722, 27.578434, 45.221470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390421, 27.741205, 45.229202>,  <27.171240, 27.838869, 45.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390421, 27.741205, 45.229202>,  <27.755722, 27.578434, 45.221470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390421, 27.741205, 45.229202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003037, -0.040643, 0.999169,
		0.407377, 0.912555, 0.035882,
		-0.913255, 0.406930, 0.019328,
		27.116444, 27.863285, 45.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763428, 28.033495, 45.765892>,  <27.755722, 27.578434, 45.221470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763428, 28.033495, 45.765892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376900, 27.967476, 45.686916>,  <27.144983, 27.927864, 45.639530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376900, 27.967476, 45.686916>,  <27.763428, 28.033495, 45.765892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376900, 27.967476, 45.686916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163501, -0.198725, 0.966321,
		-0.198725, 0.966058, 0.165047,
		-0.966321, -0.165047, -0.197443,
		27.087004, 27.917961, 45.627682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378183, 28.397959, 46.279110>,  <27.763428, 28.033495, 45.765892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378183, 28.397959, 46.279110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115488, 28.134655, 46.131931>,  <26.957870, 27.976673, 46.043625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115488, 28.134655, 46.131931>,  <27.378183, 28.397959, 46.279110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115488, 28.134655, 46.131931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222377, -0.297180, 0.928565,
		-0.720584, 0.691649, 0.048788,
		-0.656739, -0.658260, -0.367950,
		26.918467, 27.937178, 46.021545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713827, 28.613607, 46.617748>,  <27.378183, 28.397959, 46.279110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713827, 28.613607, 46.617748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692209, 28.230614, 46.504395>,  <26.679239, 28.000818, 46.436382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692209, 28.230614, 46.504395>,  <26.713827, 28.613607, 46.617748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692209, 28.230614, 46.504395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083760, -0.278452, 0.956791,
		-0.995019, 0.075446, -0.065149,
		-0.054045, -0.957482, -0.283384,
		26.675995, 27.943369, 46.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279243, 28.304441, 47.027424>,  <26.713827, 28.613607, 46.617748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279243, 28.304441, 47.027424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447456, 27.970713, 46.884842>,  <26.548384, 27.770475, 46.799294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447456, 27.970713, 46.884842>,  <26.279243, 28.304441, 47.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447456, 27.970713, 46.884842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162132, -0.455666, 0.875261,
		-0.892673, -0.310283, -0.326893,
		0.420532, -0.834322, -0.356454,
		26.573616, 27.720417, 46.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704870, 27.684326, 46.934147>,  <26.279243, 28.304441, 47.027424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704870, 27.684326, 46.934147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086809, 27.594608, 47.012077>,  <26.315973, 27.540777, 47.058834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086809, 27.594608, 47.012077>,  <25.704870, 27.684326, 46.934147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086809, 27.594608, 47.012077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269980, -0.381411, 0.884102,
		-0.123989, -0.896782, -0.424745,
		0.954850, -0.224291, 0.194823,
		26.373264, 27.527321, 47.070522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748594, 26.987055, 47.111740>,  <25.704870, 27.684326, 46.934147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748594, 26.987055, 47.111740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051296, 27.189039, 47.277794>,  <26.232918, 27.310230, 47.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051296, 27.189039, 47.277794>,  <25.748594, 26.987055, 47.111740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051296, 27.189039, 47.277794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380478, -0.176166, 0.907856,
		0.531564, -0.844974, 0.058812,
		0.756753, 0.504960, 0.415137,
		26.278322, 27.340527, 47.402336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859737, 26.685211, 47.762348>,  <25.748594, 26.987055, 47.111740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859737, 26.685211, 47.762348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007175, 27.057009, 47.757080>,  <26.095638, 27.280088, 47.753918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007175, 27.057009, 47.757080>,  <25.859737, 26.685211, 47.762348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007175, 27.057009, 47.757080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191461, 0.089777, 0.977385,
		0.909659, -0.357738, 0.211054,
		0.368596, 0.929496, -0.013174,
		26.117754, 27.335857, 47.753128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387844, 26.690416, 48.229794>,  <25.859737, 26.685211, 47.762348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387844, 26.690416, 48.229794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235964, 27.058882, 48.195644>,  <26.144836, 27.279961, 48.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235964, 27.058882, 48.195644>,  <26.387844, 26.690416, 48.229794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235964, 27.058882, 48.195644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061086, 0.067118, 0.995873,
		0.923091, 0.383349, 0.030785,
		-0.379700, 0.921162, -0.085373,
		26.122053, 27.335230, 48.170033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727551, 27.255915, 48.747753>,  <26.387844, 26.690416, 48.229794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727551, 27.255915, 48.747753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334112, 27.308840, 48.698715>,  <26.098049, 27.340595, 48.669292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334112, 27.308840, 48.698715>,  <26.727551, 27.255915, 48.747753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334112, 27.308840, 48.698715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041350, 0.496143, 0.867256,
		0.175573, 0.858100, -0.482534,
		-0.983598, 0.132314, -0.122591,
		26.039032, 27.348534, 48.661938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197384, 27.207695, 48.232246>,  <26.727551, 27.255915, 48.747753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197384, 27.207695, 48.232246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338280, 26.921989, 47.990337>,  <27.422817, 26.750566, 47.845192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338280, 26.921989, 47.990337>,  <27.197384, 27.207695, 48.232246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338280, 26.921989, 47.990337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857315, 0.505450, -0.097627,
		0.375415, -0.484096, 0.790389,
		0.352241, -0.714263, -0.604776,
		27.443953, 26.707710, 47.808903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936672, 26.968506, 48.422779>,  <27.197384, 27.207695, 48.232246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936672, 26.968506, 48.422779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870066, 26.979084, 48.028507>,  <27.830101, 26.985430, 47.791943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870066, 26.979084, 48.028507>,  <27.936672, 26.968506, 48.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870066, 26.979084, 48.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838252, 0.530195, -0.127386,
		0.519236, -0.847463, -0.110454,
		-0.166518, 0.026445, -0.985684,
		27.820110, 26.987017, 47.732803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899591, 26.364252, 47.967731>,  <27.936672, 26.968506, 48.422779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899591, 26.364252, 47.967731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005484, 25.979927, 47.934849>,  <28.069019, 25.749332, 47.915119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005484, 25.979927, 47.934849>,  <27.899591, 26.364252, 47.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005484, 25.979927, 47.934849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530289, 0.216246, -0.819775,
		0.805427, 0.173426, 0.566755,
		0.264729, -0.960813, -0.082204,
		28.084902, 25.691683, 47.910187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646667, 26.317297, 47.910847>,  <27.899591, 26.364252, 47.967731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646667, 26.317297, 47.910847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473921, 26.001822, 47.735825>,  <28.370272, 25.812536, 47.630810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473921, 26.001822, 47.735825>,  <28.646667, 26.317297, 47.910847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473921, 26.001822, 47.735825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543366, 0.159705, -0.824165,
		0.719891, -0.593686, 0.359576,
		-0.431869, -0.788690, -0.437559,
		28.344360, 25.765215, 47.604557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139645, 25.757380, 47.494648>,  <28.646667, 26.317297, 47.910847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139645, 25.757380, 47.494648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775576, 25.774475, 47.329838>,  <28.557135, 25.784733, 47.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775576, 25.774475, 47.329838>,  <29.139645, 25.757380, 47.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775576, 25.774475, 47.329838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375875, 0.503233, -0.778122,
		0.174084, -0.863093, -0.474094,
		-0.910172, 0.042741, -0.412020,
		28.502523, 25.787298, 47.206230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226406, 25.548367, 46.839493>,  <29.139645, 25.757380, 47.494648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226406, 25.548367, 46.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905657, 25.787022, 46.852272>,  <28.713207, 25.930214, 46.859940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905657, 25.787022, 46.852272>,  <29.226406, 25.548367, 46.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905657, 25.787022, 46.852272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350471, 0.512989, -0.783590,
		-0.483909, -0.617143, -0.620457,
		-0.801874, 0.596638, 0.031949,
		28.665094, 25.966013, 46.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953434, 25.327278, 46.220261>,  <29.226406, 25.548367, 46.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953434, 25.327278, 46.220261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805302, 25.671440, 46.360294>,  <28.716423, 25.877937, 46.444313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805302, 25.671440, 46.360294>,  <28.953434, 25.327278, 46.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805302, 25.671440, 46.360294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227526, 0.449415, -0.863862,
		-0.900604, -0.240261, -0.362197,
		-0.370329, 0.860407, 0.350080,
		28.694202, 25.929562, 46.465317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602377, 25.581350, 45.729015>,  <28.953434, 25.327278, 46.220261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602377, 25.581350, 45.729015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670710, 25.913345, 45.941406>,  <28.711708, 26.112543, 46.068840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670710, 25.913345, 45.941406>,  <28.602377, 25.581350, 45.729015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670710, 25.913345, 45.941406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177673, 0.504117, -0.845162,
		-0.969149, 0.238719, -0.061348,
		0.170830, 0.829987, 0.530979,
		28.721958, 26.162342, 46.100700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384596, 26.187408, 45.253292>,  <28.602377, 25.581350, 45.729015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384596, 26.187408, 45.253292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638885, 26.339212, 45.522163>,  <28.791458, 26.430294, 45.683487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638885, 26.339212, 45.522163>,  <28.384596, 26.187408, 45.253292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638885, 26.339212, 45.522163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369548, 0.614890, -0.696666,
		-0.677711, 0.691290, 0.250652,
		0.635722, 0.379511, 0.672183,
		28.829601, 26.453066, 45.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257561, 26.919285, 45.264866>,  <28.384596, 26.187408, 45.253292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257561, 26.919285, 45.264866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635103, 26.881540, 45.391502>,  <28.861629, 26.858894, 45.467484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635103, 26.881540, 45.391502>,  <28.257561, 26.919285, 45.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635103, 26.881540, 45.391502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295341, 0.670388, -0.680701,
		-0.148005, 0.735986, 0.660620,
		0.943858, -0.094361, 0.316588,
		28.918261, 26.853231, 45.486477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570866, 27.547018, 45.043098>,  <28.257561, 26.919285, 45.264866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570866, 27.547018, 45.043098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881681, 27.315088, 45.141090>,  <29.068171, 27.175930, 45.199886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881681, 27.315088, 45.141090>,  <28.570866, 27.547018, 45.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881681, 27.315088, 45.141090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570744, 0.484890, -0.662671,
		0.265447, 0.654740, 0.707710,
		0.777039, -0.579825, 0.244977,
		29.114794, 27.141140, 45.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171721, 28.002834, 45.178970>,  <28.570866, 27.547018, 45.043098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171721, 28.002834, 45.178970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293657, 27.631941, 45.091969>,  <29.366819, 27.409405, 45.039768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293657, 27.631941, 45.091969>,  <29.171721, 28.002834, 45.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293657, 27.631941, 45.091969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655876, 0.369976, -0.657985,
		0.690578, 0.057926, 0.720935,
		0.304843, -0.927234, -0.217505,
		29.385111, 27.353771, 45.026718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864346, 27.964178, 45.348011>,  <29.171721, 28.002834, 45.178970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864346, 27.964178, 45.348011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776680, 27.682703, 45.077663>,  <29.724081, 27.513819, 44.915455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776680, 27.682703, 45.077663>,  <29.864346, 27.964178, 45.348011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776680, 27.682703, 45.077663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601317, 0.448099, -0.661532,
		0.768365, -0.551392, 0.324932,
		-0.219162, -0.703686, -0.675865,
		29.710932, 27.471598, 44.874905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460295, 27.690283, 44.974197>,  <29.864346, 27.964178, 45.348011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460295, 27.690283, 44.974197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197989, 27.605259, 44.684429>,  <30.040606, 27.554245, 44.510567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197989, 27.605259, 44.684429>,  <30.460295, 27.690283, 44.974197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197989, 27.605259, 44.684429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614811, 0.406527, -0.675828,
		0.438157, -0.888566, -0.135897,
		-0.655764, -0.212568, -0.724423,
		30.001259, 27.541491, 44.467102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964281, 27.692545, 44.492363>,  <30.460295, 27.690283, 44.974197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964281, 27.692545, 44.492363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603249, 27.675879, 44.320965>,  <30.386629, 27.665878, 44.218124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603249, 27.675879, 44.320965>,  <30.964281, 27.692545, 44.492363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603249, 27.675879, 44.320965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373791, 0.417977, -0.827995,
		0.213600, -0.907502, -0.361684,
		-0.902582, -0.041666, -0.428496,
		30.332474, 27.663380, 44.192417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131140, 27.422148, 43.862000>,  <30.964281, 27.692545, 44.492363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131140, 27.422148, 43.862000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775684, 27.600416, 43.818733>,  <30.562410, 27.707376, 43.792774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775684, 27.600416, 43.818733>,  <31.131140, 27.422148, 43.862000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775684, 27.600416, 43.818733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370804, 0.559452, -0.741295,
		-0.269862, -0.698850, -0.662407,
		-0.888639, 0.445670, -0.108162,
		30.509092, 27.734118, 43.786285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935717, 27.377781, 43.136528>,  <31.131140, 27.422148, 43.862000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935717, 27.377781, 43.136528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701088, 27.662376, 43.291298>,  <30.560310, 27.833134, 43.384159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701088, 27.662376, 43.291298>,  <30.935717, 27.377781, 43.136528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701088, 27.662376, 43.291298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203536, 0.591918, -0.779876,
		-0.783905, -0.378699, -0.492017,
		-0.586572, 0.711491, 0.386929,
		30.525116, 27.875824, 43.407375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543852, 27.606596, 42.583260>,  <30.935717, 27.377781, 43.136528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543852, 27.606596, 42.583260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573946, 27.882973, 42.870853>,  <30.592003, 28.048800, 43.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573946, 27.882973, 42.870853>,  <30.543852, 27.606596, 42.583260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573946, 27.882973, 42.870853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290328, 0.674613, -0.678680,
		-0.953965, 0.259802, -0.149845,
		0.075235, 0.690941, 0.718985,
		30.596518, 28.090256, 43.086548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252899, 28.135773, 42.257942>,  <30.543852, 27.606596, 42.583260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252899, 28.135773, 42.257942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445284, 28.305750, 42.564693>,  <30.560715, 28.407736, 42.748745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445284, 28.305750, 42.564693>,  <30.252899, 28.135773, 42.257942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445284, 28.305750, 42.564693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294419, 0.745613, -0.597811,
		-0.825828, 0.513308, 0.233502,
		0.480963, 0.424942, 0.766876,
		30.589573, 28.433233, 42.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961941, 28.832506, 42.335087>,  <30.252899, 28.135773, 42.257942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961941, 28.832506, 42.335087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306339, 28.835737, 42.538506>,  <30.512978, 28.837675, 42.660557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306339, 28.835737, 42.538506>,  <29.961941, 28.832506, 42.335087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306339, 28.835737, 42.538506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345526, 0.724431, -0.596500,
		-0.373226, 0.689300, 0.620941,
		0.860996, 0.008078, 0.508547,
		30.564638, 28.838161, 42.691071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077099, 29.515245, 42.368382>,  <29.961941, 28.832506, 42.335087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077099, 29.515245, 42.368382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431900, 29.349091, 42.449059>,  <30.644781, 29.249397, 42.497463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431900, 29.349091, 42.449059>,  <30.077099, 29.515245, 42.368382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431900, 29.349091, 42.449059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437389, 0.615776, -0.655370,
		0.148036, 0.669533, 0.727881,
		0.887004, -0.415386, 0.201689,
		30.698002, 29.224474, 42.509563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516098, 30.080822, 42.421917>,  <30.077099, 29.515245, 42.368382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516098, 30.080822, 42.421917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729017, 29.754990, 42.329731>,  <30.856770, 29.559490, 42.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729017, 29.754990, 42.329731>,  <30.516098, 30.080822, 42.421917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729017, 29.754990, 42.329731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381406, 0.473803, -0.793751,
		0.755770, 0.334612, 0.562891,
		0.532298, -0.814583, -0.230463,
		30.888706, 29.510614, 42.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140205, 30.394821, 42.258057>,  <30.516098, 30.080822, 42.421917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140205, 30.394821, 42.258057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140366, 30.022594, 42.111607>,  <31.140463, 29.799259, 42.023739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140366, 30.022594, 42.111607>,  <31.140205, 30.394821, 42.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140366, 30.022594, 42.111607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356225, 0.342237, -0.869470,
		0.934400, -0.130071, 0.331629,
		0.000403, -0.930567, -0.366121,
		31.140486, 29.743423, 42.001770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797636, 30.262411, 42.008739>,  <31.140205, 30.394821, 42.258057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797636, 30.262411, 42.008739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569233, 30.017515, 41.789978>,  <31.432190, 29.870577, 41.658722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569233, 30.017515, 41.789978>,  <31.797636, 30.262411, 42.008739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569233, 30.017515, 41.789978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450382, 0.323364, -0.832221,
		0.686371, -0.721523, 0.091100,
		-0.571009, -0.612243, -0.546908,
		31.397930, 29.833843, 41.625904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203968, 29.680639, 41.648041>,  <31.797636, 30.262411, 42.008739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203968, 29.680639, 41.648041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874771, 29.751169, 41.432041>,  <31.677254, 29.793488, 41.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874771, 29.751169, 41.432041>,  <32.203968, 29.680639, 41.648041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874771, 29.751169, 41.432041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559199, 0.084288, -0.824738,
		-0.099910, -0.980716, -0.167971,
		-0.822991, 0.176328, -0.539994,
		31.627874, 29.804068, 41.270042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351238, 29.652966, 40.991756>,  <32.203968, 29.680639, 41.648041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351238, 29.652966, 40.991756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968290, 29.727211, 40.903221>,  <31.738522, 29.771757, 40.850101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968290, 29.727211, 40.903221>,  <32.351238, 29.652966, 40.991756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968290, 29.727211, 40.903221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245084, 0.116397, -0.962489,
		-0.152888, -0.975705, -0.156926,
		-0.957371, 0.185613, -0.221334,
		31.681080, 29.782894, 40.836823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163124, 29.167444, 40.381371>,  <32.351238, 29.652966, 40.991756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163124, 29.167444, 40.381371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900431, 29.468615, 40.398369>,  <31.742815, 29.649317, 40.408566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900431, 29.468615, 40.398369>,  <32.163124, 29.167444, 40.381371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900431, 29.468615, 40.398369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145982, 0.182206, -0.972363,
		-0.739862, -0.632377, -0.229574,
		-0.656730, 0.752928, 0.042492,
		31.703411, 29.694492, 40.411118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671247, 29.072607, 39.783463>,  <32.163124, 29.167444, 40.381371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671247, 29.072607, 39.783463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668520, 29.451662, 39.911171>,  <31.666883, 29.679094, 39.987797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668520, 29.451662, 39.911171>,  <31.671247, 29.072607, 39.783463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668520, 29.451662, 39.911171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248099, 0.310900, -0.917490,
		-0.968711, 0.072956, -0.237228,
		-0.006818, 0.947638, 0.319273,
		31.666475, 29.735954, 40.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309662, 29.335484, 39.230778>,  <31.671247, 29.072607, 39.783463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309662, 29.335484, 39.230778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447483, 29.652245, 39.432442>,  <31.530176, 29.842300, 39.553440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447483, 29.652245, 39.432442>,  <31.309662, 29.335484, 39.230778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447483, 29.652245, 39.432442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282488, 0.424693, -0.860137,
		-0.895257, 0.438780, -0.077375,
		0.344551, 0.791902, 0.504160,
		31.550848, 29.889814, 39.583691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990467, 30.043024, 38.911846>,  <31.309662, 29.335484, 39.230778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990467, 30.043024, 38.911846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325029, 30.171770, 39.089306>,  <31.525766, 30.249018, 39.195782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325029, 30.171770, 39.089306>,  <30.990467, 30.043024, 38.911846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325029, 30.171770, 39.089306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281560, 0.442157, -0.851599,
		-0.470263, 0.837198, 0.279199,
		0.836407, 0.321864, 0.443652,
		31.575951, 30.268330, 39.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012167, 30.797352, 38.908188>,  <30.990467, 30.043024, 38.911846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012167, 30.797352, 38.908188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389708, 30.669134, 38.940174>,  <31.616232, 30.592203, 38.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389708, 30.669134, 38.940174>,  <31.012167, 30.797352, 38.908188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389708, 30.669134, 38.940174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273405, 0.622004, -0.733731,
		0.185452, 0.714397, 0.674718,
		0.943852, -0.320543, 0.079968,
		31.672863, 30.572971, 38.964165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411232, 31.396658, 38.806538>,  <31.012167, 30.797352, 38.908188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411232, 31.396658, 38.806538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663166, 31.093136, 38.740181>,  <31.814327, 30.911022, 38.700367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663166, 31.093136, 38.740181>,  <31.411232, 31.396658, 38.806538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663166, 31.093136, 38.740181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385439, 0.490757, -0.781406,
		0.674348, 0.428216, 0.601570,
		0.629835, -0.758807, -0.165890,
		31.852116, 30.865494, 38.690414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044289, 31.735914, 38.819862>,  <31.411232, 31.396658, 38.806538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044289, 31.735914, 38.819862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091778, 31.385767, 38.632401>,  <32.120274, 31.175678, 38.519924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091778, 31.385767, 38.632401>,  <32.044289, 31.735914, 38.819862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091778, 31.385767, 38.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640328, 0.428232, -0.637649,
		0.758870, -0.224386, 0.611365,
		0.118727, -0.875367, -0.468653,
		32.127396, 31.123158, 38.491806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671906, 31.739954, 38.657532>,  <32.044289, 31.735914, 38.819862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671906, 31.739954, 38.657532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555210, 31.457394, 38.399574>,  <32.485195, 31.287857, 38.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555210, 31.457394, 38.399574>,  <32.671906, 31.739954, 38.657532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555210, 31.457394, 38.399574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552815, 0.425691, -0.716368,
		0.780568, -0.565497, 0.266319,
		-0.291735, -0.706399, -0.644896,
		32.467690, 31.245474, 38.206104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219936, 31.533077, 38.220592>,  <32.671906, 31.739954, 38.657532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219936, 31.533077, 38.220592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914703, 31.410975, 37.992725>,  <32.731564, 31.337713, 37.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914703, 31.410975, 37.992725>,  <33.219936, 31.533077, 38.220592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914703, 31.410975, 37.992725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440251, 0.399800, -0.803952,
		0.473167, -0.864279, -0.170690,
		-0.763081, -0.305257, -0.569672,
		32.685780, 31.319397, 37.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509838, 31.201660, 37.567757>,  <33.219936, 31.533077, 38.220592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509838, 31.201660, 37.567757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137112, 31.295652, 37.457115>,  <32.913475, 31.352047, 37.390732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137112, 31.295652, 37.457115>,  <33.509838, 31.201660, 37.567757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137112, 31.295652, 37.457115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339524, 0.295050, -0.893123,
		-0.128254, -0.926137, -0.354712,
		-0.931812, 0.234980, -0.276605,
		32.857567, 31.366146, 37.374134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410690, 30.935856, 36.908844>,  <33.509838, 31.201660, 37.567757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410690, 30.935856, 36.908844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130699, 31.221485, 36.913399>,  <32.962704, 31.392862, 36.916130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130699, 31.221485, 36.913399>,  <33.410690, 30.935856, 36.908844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130699, 31.221485, 36.913399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273690, 0.282943, -0.919259,
		-0.659642, -0.640343, -0.393489,
		-0.699976, 0.714075, 0.011386,
		32.920708, 31.435707, 36.916813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061337, 30.909754, 36.254929>,  <33.410690, 30.935856, 36.908844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061337, 30.909754, 36.254929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978340, 31.275146, 36.394924>,  <32.928543, 31.494383, 36.478924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978340, 31.275146, 36.394924>,  <33.061337, 30.909754, 36.254929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978340, 31.275146, 36.394924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260626, 0.396470, -0.880276,
		-0.942879, -0.091436, -0.320342,
		-0.207494, 0.913483, 0.349992,
		32.916092, 31.549191, 36.499924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673729, 31.224426, 35.696724>,  <33.061337, 30.909754, 36.254929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673729, 31.224426, 35.696724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796513, 31.521727, 35.934498>,  <32.870182, 31.700108, 36.077164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796513, 31.521727, 35.934498>,  <32.673729, 31.224426, 35.696724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796513, 31.521727, 35.934498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273089, 0.529537, -0.803127,
		-0.911701, 0.408860, -0.040428,
		0.306958, 0.743252, 0.594435,
		32.888599, 31.744701, 36.112827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374245, 31.792603, 35.526882>,  <32.673729, 31.224426, 35.696724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374245, 31.792603, 35.526882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699539, 31.952261, 35.696274>,  <32.894714, 32.048058, 35.797909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699539, 31.952261, 35.696274>,  <32.374245, 31.792603, 35.526882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699539, 31.952261, 35.696274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140166, 0.571927, -0.808241,
		-0.564806, 0.716645, 0.409163,
		0.813233, 0.399148, 0.423477,
		32.943508, 32.072006, 35.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362621, 32.547348, 35.334660>,  <32.374245, 31.792603, 35.526882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362621, 32.547348, 35.334660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737873, 32.477032, 35.453991>,  <32.963024, 32.434841, 35.525589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737873, 32.477032, 35.453991>,  <32.362621, 32.547348, 35.334660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737873, 32.477032, 35.453991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322487, 0.757360, -0.567810,
		-0.126126, 0.628890, 0.767196,
		0.938134, -0.175795, 0.298331,
		33.019314, 32.424294, 35.543491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740551, 33.141926, 35.555092>,  <32.362621, 32.547348, 35.334660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740551, 33.141926, 35.555092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061634, 32.913784, 35.485394>,  <33.254284, 32.776901, 35.443577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061634, 32.913784, 35.485394>,  <32.740551, 33.141926, 35.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061634, 32.913784, 35.485394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448628, 0.769998, -0.453691,
		0.392930, 0.286011, 0.873959,
		0.802708, -0.570351, -0.174242,
		33.302444, 32.742680, 35.433121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260803, 33.586746, 35.689209>,  <32.740551, 33.141926, 35.555092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260803, 33.586746, 35.689209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424496, 33.304585, 35.457718>,  <33.522713, 33.135288, 35.318821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424496, 33.304585, 35.457718>,  <33.260803, 33.586746, 35.689209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424496, 33.304585, 35.457718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417791, 0.708742, -0.568450,
		0.811159, -0.009161, 0.584753,
		0.409231, -0.705408, -0.578730,
		33.547264, 33.092960, 35.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942356, 33.654739, 35.689480>,  <33.260803, 33.586746, 35.689209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942356, 33.654739, 35.689480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904411, 33.463585, 35.340164>,  <33.881645, 33.348892, 35.130577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904411, 33.463585, 35.340164>,  <33.942356, 33.654739, 35.689480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904411, 33.463585, 35.340164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418363, 0.776875, -0.470572,
		0.903313, -0.409988, 0.126236,
		-0.094859, -0.477887, -0.873285,
		33.875954, 33.320217, 35.078178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567150, 33.669937, 35.237907>,  <33.942356, 33.654739, 35.689480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567150, 33.669937, 35.237907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250973, 33.635506, 34.995323>,  <34.061268, 33.614849, 34.849773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250973, 33.635506, 34.995323>,  <34.567150, 33.669937, 35.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250973, 33.635506, 34.995323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288348, 0.821226, -0.492385,
		0.540420, -0.564074, -0.624314,
		-0.790444, -0.086075, -0.606457,
		34.013840, 33.609684, 34.813385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210056, 33.906872, 35.620323>,  <34.567150, 33.669937, 35.237907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210056, 33.906872, 35.620323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591957, 33.864140, 35.731346>,  <35.821098, 33.838501, 35.797962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591957, 33.864140, 35.731346>,  <35.210056, 33.906872, 35.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591957, 33.864140, 35.731346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207315, -0.908214, 0.363548,
		0.213244, -0.404640, -0.889266,
		0.954750, -0.106834, 0.277559,
		35.878384, 33.832088, 35.814613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414558, 33.184906, 35.433002>,  <35.210056, 33.906872, 35.620323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414558, 33.184906, 35.433002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676552, 33.297306, 35.713581>,  <35.833748, 33.364746, 35.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676552, 33.297306, 35.713581>,  <35.414558, 33.184906, 35.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676552, 33.297306, 35.713581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063640, -0.904475, 0.421753,
		0.752957, -0.320882, -0.574536,
		0.654986, 0.280998, 0.701451,
		35.873047, 33.381607, 35.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767113, 32.598858, 35.555489>,  <35.414558, 33.184906, 35.433002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767113, 32.598858, 35.555489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860123, 32.814617, 35.879211>,  <35.915928, 32.944073, 36.073444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860123, 32.814617, 35.879211>,  <35.767113, 32.598858, 35.555489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860123, 32.814617, 35.879211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233221, -0.776913, 0.584820,
		0.944214, -0.324733, -0.054852,
		0.232525, 0.539402, 0.809307,
		35.929882, 32.976437, 36.122002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168201, 32.132915, 35.946884>,  <35.767113, 32.598858, 35.555489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168201, 32.132915, 35.946884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029533, 32.414719, 36.194588>,  <35.946335, 32.583801, 36.343208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029533, 32.414719, 36.194588>,  <36.168201, 32.132915, 35.946884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029533, 32.414719, 36.194588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081522, -0.680332, 0.728356,
		0.934439, 0.202014, 0.293283,
		-0.346668, 0.704512, 0.619260,
		35.925533, 32.626072, 36.380367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554909, 32.013142, 36.647003>,  <36.168201, 32.132915, 35.946884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554909, 32.013142, 36.647003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216228, 32.223209, 36.681156>,  <36.013020, 32.349251, 36.701649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216228, 32.223209, 36.681156>,  <36.554909, 32.013142, 36.647003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216228, 32.223209, 36.681156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261408, -0.550365, 0.792946,
		0.463423, 0.649071, 0.603280,
		-0.846703, 0.525171, 0.085380,
		35.962219, 32.380760, 36.706772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683071, 32.195419, 37.388508>,  <36.554909, 32.013142, 36.647003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683071, 32.195419, 37.388508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293571, 32.253262, 37.318188>,  <36.059872, 32.287968, 37.275993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293571, 32.253262, 37.318188>,  <36.683071, 32.195419, 37.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293571, 32.253262, 37.318188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217647, -0.365191, 0.905133,
		0.066683, 0.919634, 0.387076,
		-0.973747, 0.144603, -0.175804,
		36.001446, 32.296642, 37.265446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391254, 32.478252, 38.017311>,  <36.683071, 32.195419, 37.388508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391254, 32.478252, 38.017311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057930, 32.338974, 37.845570>,  <35.857933, 32.255405, 37.742523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057930, 32.338974, 37.845570>,  <36.391254, 32.478252, 38.017311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057930, 32.338974, 37.845570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192363, -0.545500, 0.815737,
		-0.518249, 0.762357, 0.387594,
		-0.833315, -0.348196, -0.429354,
		35.807934, 32.234516, 37.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908035, 32.540276, 38.517773>,  <36.391254, 32.478252, 38.017311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908035, 32.540276, 38.517773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758801, 32.284424, 38.248947>,  <35.669258, 32.130913, 38.087650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758801, 32.284424, 38.248947>,  <35.908035, 32.540276, 38.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758801, 32.284424, 38.248947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230481, -0.637769, 0.734935,
		-0.898712, 0.429096, 0.090523,
		-0.373090, -0.639631, -0.672068,
		35.646873, 32.092533, 38.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269794, 32.333557, 38.736332>,  <35.908035, 32.540276, 38.517773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269794, 32.333557, 38.736332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351730, 32.032494, 38.486038>,  <35.400894, 31.851856, 38.335861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351730, 32.032494, 38.486038>,  <35.269794, 32.333557, 38.736332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351730, 32.032494, 38.486038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390082, -0.649105, 0.653069,
		-0.897706, 0.110313, -0.426562,
		0.204841, -0.752658, -0.625737,
		35.413181, 31.806696, 38.298317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728573, 32.021408, 38.834457>,  <35.269794, 32.333557, 38.736332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728573, 32.021408, 38.834457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989017, 31.766916, 38.668919>,  <35.145287, 31.614222, 38.569595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989017, 31.766916, 38.668919>,  <34.728573, 32.021408, 38.834457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989017, 31.766916, 38.668919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257165, -0.697944, 0.668386,
		-0.714086, -0.328768, -0.618056,
		0.651113, -0.636227, -0.413844,
		35.184353, 31.576048, 38.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368214, 31.418127, 38.544231>,  <34.728573, 32.021408, 38.834457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368214, 31.418127, 38.544231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738838, 31.326565, 38.663624>,  <34.961212, 31.271627, 38.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738838, 31.326565, 38.663624>,  <34.368214, 31.418127, 38.544231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738838, 31.326565, 38.663624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368489, -0.711684, 0.598098,
		0.075514, -0.664160, -0.743767,
		0.926560, -0.228905, 0.298477,
		35.016808, 31.257893, 38.753166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268112, 30.769882, 38.654327>,  <34.368214, 31.418127, 38.544231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268112, 30.769882, 38.654327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626530, 30.836620, 38.818897>,  <34.841579, 30.876663, 38.917637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626530, 30.836620, 38.818897>,  <34.268112, 30.769882, 38.654327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626530, 30.836620, 38.818897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171585, -0.724546, 0.667527,
		0.409466, -0.668727, -0.620597,
		0.896044, 0.166845, 0.411421,
		34.895344, 30.886673, 38.942322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541302, 30.182495, 38.712536>,  <34.268112, 30.769882, 38.654327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541302, 30.182495, 38.712536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737850, 30.401346, 38.983593>,  <34.855782, 30.532658, 39.146229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737850, 30.401346, 38.983593>,  <34.541302, 30.182495, 38.712536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737850, 30.401346, 38.983593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234864, -0.665989, 0.708023,
		0.838683, -0.507060, -0.198750,
		0.491376, 0.547128, 0.677644,
		34.885262, 30.565485, 39.186886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745247, 29.704378, 39.110607>,  <34.541302, 30.182495, 38.712536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745247, 29.704378, 39.110607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859310, 30.014128, 39.336540>,  <34.927750, 30.199978, 39.472099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859310, 30.014128, 39.336540>,  <34.745247, 29.704378, 39.110607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859310, 30.014128, 39.336540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118984, -0.556139, 0.822528,
		0.951067, -0.301755, -0.066449,
		0.285157, 0.774373, 0.564829,
		34.944859, 30.246439, 39.505989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233803, 29.347794, 39.661022>,  <34.745247, 29.704378, 39.110607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233803, 29.347794, 39.661022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119869, 29.700855, 39.810574>,  <35.051510, 29.912693, 39.900307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119869, 29.700855, 39.810574>,  <35.233803, 29.347794, 39.661022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119869, 29.700855, 39.810574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197160, -0.435645, 0.878260,
		0.938081, 0.176445, 0.298112,
		-0.284835, 0.882656, 0.373883,
		35.034420, 29.965652, 39.922737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536484, 29.385302, 40.315960>,  <35.233803, 29.347794, 39.661022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536484, 29.385302, 40.315960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220341, 29.630207, 40.324692>,  <35.030655, 29.777149, 40.329929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220341, 29.630207, 40.324692>,  <35.536484, 29.385302, 40.315960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220341, 29.630207, 40.324692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261711, -0.369626, 0.891562,
		0.553938, 0.698937, 0.452371,
		-0.790354, 0.612261, 0.021831,
		34.983234, 29.813885, 40.331242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524479, 29.631002, 41.029888>,  <35.536484, 29.385302, 40.315960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524479, 29.631002, 41.029888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155083, 29.693304, 40.889652>,  <34.933445, 29.730684, 40.805511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155083, 29.693304, 40.889652>,  <35.524479, 29.631002, 41.029888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155083, 29.693304, 40.889652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377646, -0.208328, 0.902210,
		0.067485, 0.965578, 0.251208,
		-0.923487, 0.155754, -0.350588,
		34.878036, 29.740030, 40.784477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052464, 30.002882, 41.608250>,  <35.524479, 29.631002, 41.029888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052464, 30.002882, 41.608250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796581, 29.857130, 41.337543>,  <34.643051, 29.769680, 41.175121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796581, 29.857130, 41.337543>,  <35.052464, 30.002882, 41.608250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796581, 29.857130, 41.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644958, -0.224478, 0.730505,
		-0.418098, 0.903791, -0.091409,
		-0.639705, -0.364378, -0.676761,
		34.604671, 29.747816, 41.134514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417671, 30.297123, 41.855740>,  <35.052464, 30.002882, 41.608250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417671, 30.297123, 41.855740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296463, 30.019665, 41.594349>,  <34.223740, 29.853189, 41.437515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296463, 30.019665, 41.594349>,  <34.417671, 30.297123, 41.855740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296463, 30.019665, 41.594349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754726, -0.244004, 0.608975,
		-0.581864, 0.677728, -0.449576,
		-0.303021, -0.693648, -0.653476,
		34.205555, 29.811571, 41.398308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552265, 30.272436, 41.832138>,  <34.417671, 30.297123, 41.855740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552265, 30.272436, 41.832138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717827, 29.928850, 41.711559>,  <33.817162, 29.722698, 41.639214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717827, 29.928850, 41.711559>,  <33.552265, 30.272436, 41.832138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717827, 29.928850, 41.711559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526517, -0.496020, 0.690466,
		-0.742608, -0.127068, -0.657561,
		0.413900, -0.858963, -0.301446,
		33.841995, 29.671162, 41.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026535, 29.738581, 41.749325>,  <33.552265, 30.272436, 41.832138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026535, 29.738581, 41.749325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367638, 29.537544, 41.806198>,  <33.572300, 29.416924, 41.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367638, 29.537544, 41.806198>,  <33.026535, 29.738581, 41.749325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367638, 29.537544, 41.806198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444711, -0.555858, 0.702320,
		-0.273943, -0.662137, -0.697516,
		0.852753, -0.502589, 0.142186,
		33.623463, 29.386768, 41.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922089, 28.995615, 41.648716>,  <33.026535, 29.738581, 41.749325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922089, 28.995615, 41.648716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238846, 29.048489, 41.887192>,  <33.428898, 29.080212, 42.030277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238846, 29.048489, 41.887192>,  <32.922089, 28.995615, 41.648716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238846, 29.048489, 41.887192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370117, -0.672651, 0.640745,
		0.485722, -0.728058, -0.483742,
		0.791889, 0.132183, 0.596187,
		33.476414, 29.088144, 42.066048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013790, 28.343191, 42.050529>,  <32.922089, 28.995615, 41.648716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013790, 28.343191, 42.050529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221012, 28.609186, 42.265717>,  <33.345345, 28.768784, 42.394829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221012, 28.609186, 42.265717>,  <33.013790, 28.343191, 42.050529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221012, 28.609186, 42.265717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283426, -0.459957, 0.841492,
		0.807023, -0.588415, -0.049809,
		0.518057, 0.664987, 0.537968,
		33.376431, 28.808681, 42.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143250, 27.990793, 42.584663>,  <33.013790, 28.343191, 42.050529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143250, 27.990793, 42.584663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208157, 28.347895, 42.752789>,  <33.247101, 28.562155, 42.853664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208157, 28.347895, 42.752789>,  <33.143250, 27.990793, 42.584663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208157, 28.347895, 42.752789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111373, -0.406663, 0.906764,
		0.980442, -0.193949, 0.033441,
		0.162267, 0.892754, 0.420310,
		33.256836, 28.615721, 42.878880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644463, 27.829491, 43.008183>,  <33.143250, 27.990793, 42.584663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644463, 27.829491, 43.008183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413982, 28.134130, 43.126812>,  <33.275692, 28.316914, 43.197990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413982, 28.134130, 43.126812>,  <33.644463, 27.829491, 43.008183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413982, 28.134130, 43.126812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118187, -0.436695, 0.891812,
		0.808716, 0.478814, 0.341637,
		-0.576204, 0.761600, 0.296573,
		33.241123, 28.362610, 43.215782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819393, 27.944256, 43.693192>,  <33.644463, 27.829491, 43.008183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819393, 27.944256, 43.693192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491341, 28.172844, 43.681870>,  <33.294510, 28.309998, 43.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491341, 28.172844, 43.681870>,  <33.819393, 27.944256, 43.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491341, 28.172844, 43.681870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236662, -0.293763, 0.926118,
		0.520934, 0.766240, 0.376171,
		-0.820134, 0.571471, -0.028308,
		33.245300, 28.344286, 43.673378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854507, 28.452442, 44.265934>,  <33.819393, 27.944256, 43.693192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854507, 28.452442, 44.265934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472706, 28.395395, 44.161179>,  <33.243626, 28.361168, 44.098324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472706, 28.395395, 44.161179>,  <33.854507, 28.452442, 44.265934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472706, 28.395395, 44.161179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201675, -0.338204, 0.919209,
		-0.219667, 0.930203, 0.294054,
		-0.954502, -0.142617, -0.261891,
		33.186356, 28.352610, 44.082611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505692, 28.755669, 44.823975>,  <33.854507, 28.452442, 44.265934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505692, 28.755669, 44.823975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257324, 28.513311, 44.625038>,  <33.108303, 28.367897, 44.505676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257324, 28.513311, 44.625038>,  <33.505692, 28.755669, 44.823975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257324, 28.513311, 44.625038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292334, -0.409713, 0.864104,
		-0.727324, 0.681930, 0.077275,
		-0.620920, -0.605893, -0.497345,
		33.071049, 28.331543, 44.475834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912292, 28.854692, 45.188705>,  <33.505692, 28.755669, 44.823975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912292, 28.854692, 45.188705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874691, 28.509964, 44.989338>,  <32.852131, 28.303127, 44.869717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874691, 28.509964, 44.989338>,  <32.912292, 28.854692, 45.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874691, 28.509964, 44.989338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400299, -0.425667, 0.811522,
		-0.911550, 0.275805, -0.304972,
		-0.094005, -0.861823, -0.498421,
		32.846489, 28.251417, 44.839813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241711, 28.687529, 45.309166>,  <32.912292, 28.854692, 45.188705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241711, 28.687529, 45.309166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423538, 28.348183, 45.200615>,  <32.532635, 28.144575, 45.135483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423538, 28.348183, 45.200615>,  <32.241711, 28.687529, 45.309166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423538, 28.348183, 45.200615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330275, -0.443499, 0.833202,
		-0.827216, -0.289116, -0.481794,
		0.454568, -0.848363, -0.271382,
		32.559910, 28.093674, 45.119202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657873, 28.169634, 45.389896>,  <32.241711, 28.687529, 45.309166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657873, 28.169634, 45.389896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003212, 27.967823, 45.386303>,  <32.210415, 27.846737, 45.384148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003212, 27.967823, 45.386303>,  <31.657873, 28.169634, 45.389896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003212, 27.967823, 45.386303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361580, -0.630961, 0.686402,
		-0.351977, -0.589356, -0.727167,
		0.863349, -0.504527, -0.008985,
		32.262218, 27.816465, 45.383606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493172, 27.511545, 45.274105>,  <31.657873, 28.169634, 45.389896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493172, 27.511545, 45.274105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857187, 27.469446, 45.434483>,  <32.075596, 27.444187, 45.530708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857187, 27.469446, 45.434483>,  <31.493172, 27.511545, 45.274105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857187, 27.469446, 45.434483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314880, -0.804574, 0.503499,
		0.269596, -0.584452, -0.765332,
		0.910038, -0.105247, 0.400942,
		32.130199, 27.437872, 45.554764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705114, 26.785158, 45.173969>,  <31.493172, 27.511545, 45.274105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705114, 26.785158, 45.173969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876724, 26.968508, 45.485310>,  <31.979691, 27.078518, 45.672115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876724, 26.968508, 45.485310>,  <31.705114, 26.785158, 45.173969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876724, 26.968508, 45.485310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591769, -0.508392, 0.625577,
		0.682456, -0.728992, 0.053140,
		0.429025, 0.458376, 0.778350,
		32.005432, 27.106020, 45.718815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786352, 26.304827, 45.589394>,  <31.705114, 26.785158, 45.173969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786352, 26.304827, 45.589394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856434, 26.622520, 45.822117>,  <31.898483, 26.813137, 45.961750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856434, 26.622520, 45.822117>,  <31.786352, 26.304827, 45.589394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856434, 26.622520, 45.822117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535191, -0.419174, 0.733392,
		0.826362, -0.439870, 0.351625,
		0.175205, 0.794234, 0.581804,
		31.908995, 26.860790, 45.996658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976025, 25.900211, 46.086216>,  <31.786352, 26.304827, 45.589394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976025, 25.900211, 46.086216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930370, 26.271223, 46.228577>,  <31.902977, 26.493830, 46.313992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930370, 26.271223, 46.228577>,  <31.976025, 25.900211, 46.086216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930370, 26.271223, 46.228577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175663, -0.371440, 0.911688,
		0.977812, 0.041538, 0.205327,
		-0.114136, 0.927528, 0.355901,
		31.896130, 26.549480, 46.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471748, 26.090429, 46.745163>,  <31.976025, 25.900211, 46.086216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471748, 26.090429, 46.745163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146202, 26.320099, 46.780842>,  <31.950876, 26.457901, 46.802250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146202, 26.320099, 46.780842>,  <32.471748, 26.090429, 46.745163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146202, 26.320099, 46.780842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076001, -0.257380, 0.963317,
		0.576068, 0.777227, 0.253109,
		-0.813861, 0.574172, 0.089199,
		31.902044, 26.492352, 46.807602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285488, 26.257116, 47.465698>,  <32.471748, 26.090429, 46.745163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285488, 26.257116, 47.465698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929281, 26.328972, 47.298508>,  <31.715557, 26.372086, 47.198193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929281, 26.328972, 47.298508>,  <32.285488, 26.257116, 47.465698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929281, 26.328972, 47.298508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432863, -0.051809, 0.899970,
		0.140013, 0.982368, 0.123895,
		-0.890520, 0.179637, -0.417977,
		31.662125, 26.382862, 47.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972023, 26.845547, 47.784275>,  <32.285488, 26.257116, 47.465698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972023, 26.845547, 47.784275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694454, 26.606028, 47.624321>,  <31.527912, 26.462315, 47.528347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694454, 26.606028, 47.624321>,  <31.972023, 26.845547, 47.784275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694454, 26.606028, 47.624321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397070, -0.145063, 0.906252,
		-0.600673, 0.787651, -0.137103,
		-0.693922, -0.598800, -0.399888,
		31.486279, 26.426388, 47.504356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659157, 27.248604, 47.855392>,  <31.972023, 26.845547, 47.784275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659157, 27.248604, 47.855392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610893, 27.481899, 48.176708>,  <32.581936, 27.621878, 48.369499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610893, 27.481899, 48.176708>,  <32.659157, 27.248604, 47.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610893, 27.481899, 48.176708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187663, 0.808011, -0.558481,
		-0.974794, 0.083361, -0.206946,
		-0.120659, 0.583240, 0.803288,
		32.574696, 27.656872, 48.417694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372513, 27.753817, 47.577076>,  <32.659157, 27.248604, 47.855392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372513, 27.753817, 47.577076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513493, 27.912827, 47.915958>,  <32.598080, 28.008232, 48.119286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513493, 27.912827, 47.915958>,  <32.372513, 27.753817, 47.577076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513493, 27.912827, 47.915958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184118, 0.858145, -0.479257,
		-0.917540, 0.324899, 0.229263,
		0.352451, 0.397526, 0.847202,
		32.619228, 28.032084, 48.170120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076992, 28.427481, 47.662472>,  <32.372513, 27.753817, 47.577076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076992, 28.427481, 47.662472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406609, 28.424656, 47.889065>,  <32.604378, 28.422962, 48.025021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406609, 28.424656, 47.889065>,  <32.076992, 28.427481, 47.662472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406609, 28.424656, 47.889065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330517, 0.818107, -0.470596,
		-0.460121, 0.575023, 0.676489,
		0.824043, -0.007060, 0.566483,
		32.653820, 28.422539, 48.059010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182461, 29.129192, 47.907814>,  <32.076992, 28.427481, 47.662472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182461, 29.129192, 47.907814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544922, 28.960169, 47.915058>,  <32.762398, 28.858755, 47.919403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544922, 28.960169, 47.915058>,  <32.182461, 29.129192, 47.907814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544922, 28.960169, 47.915058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389729, 0.817585, -0.423870,
		0.164306, 0.391148, 0.905542,
		0.906154, -0.422560, 0.018108,
		32.816769, 28.833401, 47.920490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702370, 29.662460, 47.767673>,  <32.182461, 29.129192, 47.907814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702370, 29.662460, 47.767673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935268, 29.337677, 47.751118>,  <33.075008, 29.142807, 47.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935268, 29.337677, 47.751118>,  <32.702370, 29.662460, 47.767673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935268, 29.337677, 47.751118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730995, 0.545115, -0.410482,
		0.355855, 0.208747, 0.910929,
		0.582248, -0.811957, -0.041389,
		33.109943, 29.094090, 47.738701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435970, 29.977509, 47.858257>,  <32.702370, 29.662460, 47.767673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435970, 29.977509, 47.858257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465870, 29.612076, 47.698368>,  <33.483810, 29.392817, 47.602436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465870, 29.612076, 47.698368>,  <33.435970, 29.977509, 47.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465870, 29.612076, 47.698368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602631, 0.360752, -0.711824,
		0.794512, -0.187678, 0.577519,
		0.074747, -0.913584, -0.399722,
		33.488293, 29.338001, 47.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144409, 29.779308, 47.693478>,  <33.435970, 29.977509, 47.858257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144409, 29.779308, 47.693478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914650, 29.580084, 47.433632>,  <33.776794, 29.460548, 47.277725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914650, 29.580084, 47.433632>,  <34.144409, 29.779308, 47.693478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914650, 29.580084, 47.433632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512397, 0.400114, -0.759841,
		0.638367, -0.769313, 0.025380,
		-0.574401, -0.498062, -0.649613,
		33.742329, 29.430666, 47.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658951, 29.324203, 47.289124>,  <34.144409, 29.779308, 47.693478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658951, 29.324203, 47.289124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331764, 29.385746, 47.067398>,  <34.135452, 29.422672, 46.934361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331764, 29.385746, 47.067398>,  <34.658951, 29.324203, 47.289124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331764, 29.385746, 47.067398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566767, 0.380610, -0.730692,
		0.098556, -0.911846, -0.398526,
		-0.817962, 0.153858, -0.554316,
		34.086376, 29.431904, 46.901104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945404, 29.233843, 46.625515>,  <34.658951, 29.324203, 47.289124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945404, 29.233843, 46.625515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596485, 29.397978, 46.519138>,  <34.387135, 29.496458, 46.455311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596485, 29.397978, 46.519138>,  <34.945404, 29.233843, 46.625515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596485, 29.397978, 46.519138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456066, 0.486560, -0.745160,
		-0.176369, -0.771287, -0.611564,
		-0.872295, 0.410336, -0.265944,
		34.334797, 29.521078, 46.439354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768421, 28.944334, 45.888947>,  <34.945404, 29.233843, 46.625515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768421, 28.944334, 45.888947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557362, 29.281796, 45.928619>,  <34.430725, 29.484272, 45.952423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557362, 29.281796, 45.928619>,  <34.768421, 28.944334, 45.888947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557362, 29.281796, 45.928619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446928, 0.375006, -0.812173,
		-0.722386, -0.384216, -0.574924,
		-0.527650, 0.843652, 0.099182,
		34.399067, 29.534891, 45.958374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537067, 29.158747, 45.241421>,  <34.768421, 28.944334, 45.888947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537067, 29.158747, 45.241421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557289, 29.482737, 45.475132>,  <34.569424, 29.677130, 45.615360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557289, 29.482737, 45.475132>,  <34.537067, 29.158747, 45.241421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557289, 29.482737, 45.475132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438461, 0.507635, -0.741659,
		-0.897327, 0.293680, -0.329479,
		0.050555, 0.809975, 0.584282,
		34.572456, 29.725729, 45.650417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196674, 29.680084, 44.783546>,  <34.537067, 29.158747, 45.241421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196674, 29.680084, 44.783546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432545, 29.864647, 45.048691>,  <34.574066, 29.975384, 45.207779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432545, 29.864647, 45.048691>,  <34.196674, 29.680084, 44.783546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432545, 29.864647, 45.048691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428111, 0.517370, -0.740979,
		-0.684837, 0.720716, 0.107548,
		0.589677, 0.461407, 0.662861,
		34.609447, 30.003069, 45.247547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110977, 30.350737, 44.674644>,  <34.196674, 29.680084, 44.783546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110977, 30.350737, 44.674644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448986, 30.366064, 44.887989>,  <34.651791, 30.375259, 45.015995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448986, 30.366064, 44.887989>,  <34.110977, 30.350737, 44.674644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448986, 30.366064, 44.887989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421980, 0.564860, -0.709131,
		-0.328448, 0.824297, 0.461147,
		0.845018, 0.038318, 0.533364,
		34.702492, 30.377560, 45.047997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251431, 31.088966, 44.637779>,  <34.110977, 30.350737, 44.674644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251431, 31.088966, 44.637779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589737, 30.890875, 44.717209>,  <34.792721, 30.772020, 44.764866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589737, 30.890875, 44.717209>,  <34.251431, 31.088966, 44.637779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589737, 30.890875, 44.717209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481494, 0.548066, -0.683950,
		0.229882, 0.674071, 0.701985,
		0.845765, -0.495229, 0.198570,
		34.843468, 30.742306, 44.776779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717781, 31.668201, 44.615482>,  <34.251431, 31.088966, 44.637779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717781, 31.668201, 44.615482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942200, 31.338421, 44.585785>,  <35.076851, 31.140553, 44.567966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942200, 31.338421, 44.585785>,  <34.717781, 31.668201, 44.615482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942200, 31.338421, 44.585785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583427, 0.457461, -0.671075,
		0.587232, 0.333186, 0.737662,
		0.561044, -0.824449, -0.074246,
		35.110512, 31.091085, 44.563511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420586, 31.861044, 44.619339>,  <34.717781, 31.668201, 44.615482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420586, 31.861044, 44.619339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424362, 31.497824, 44.451836>,  <35.426628, 31.279892, 44.351334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424362, 31.497824, 44.451836>,  <35.420586, 31.861044, 44.619339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424362, 31.497824, 44.451836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663226, 0.319093, -0.676986,
		0.748360, -0.271339, 0.605255,
		0.009440, -0.908050, -0.418755,
		35.427193, 31.225409, 44.326210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252247, 31.612234, 44.484058>,  <35.420586, 31.861044, 44.619339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252247, 31.612234, 44.484058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001102, 31.401903, 44.254524>,  <35.850414, 31.275705, 44.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001102, 31.401903, 44.254524>,  <36.252247, 31.612234, 44.484058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001102, 31.401903, 44.254524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506000, 0.284444, -0.814282,
		0.591396, -0.801623, 0.087475,
		-0.627866, -0.525825, -0.573840,
		35.812744, 31.244156, 44.082371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734367, 31.282846, 44.066235>,  <36.252247, 31.612234, 44.484058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734367, 31.282846, 44.066235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367542, 31.239063, 43.912865>,  <36.147446, 31.212793, 43.820843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367542, 31.239063, 43.912865>,  <36.734367, 31.282846, 44.066235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367542, 31.239063, 43.912865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346161, 0.258708, -0.901800,
		0.197901, -0.959734, -0.199363,
		-0.917065, -0.109456, -0.383421,
		36.092422, 31.206226, 43.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815689, 30.838140, 43.539680>,  <36.734367, 31.282846, 44.066235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815689, 30.838140, 43.539680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 31.041372, 43.473583>,  <36.274693, 31.163311, 43.433926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 31.041372, 43.473583>,  <36.815689, 30.838140, 43.539680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477566, 31.041372, 43.473583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314404, 0.222990, -0.922727,
		-0.431972, -0.831944, -0.348238,
		-0.845311, 0.508080, -0.165241,
		36.223972, 31.193796, 43.424011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514957, 30.536337, 42.916325>,  <36.815689, 30.838140, 43.539680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514957, 30.536337, 42.916325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382599, 30.912474, 42.947975>,  <36.303185, 31.138157, 42.966965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382599, 30.912474, 42.947975>,  <36.514957, 30.536337, 42.916325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382599, 30.912474, 42.947975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131805, 0.129081, -0.982835,
		-0.934417, -0.314787, -0.166655,
		-0.330896, 0.940344, 0.079125,
		36.283329, 31.194576, 42.971714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133408, 30.538637, 42.334755>,  <36.514957, 30.536337, 42.916325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133408, 30.538637, 42.334755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159264, 30.922258, 42.445053>,  <36.174778, 31.152431, 42.511234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159264, 30.922258, 42.445053>,  <36.133408, 30.538637, 42.334755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159264, 30.922258, 42.445053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177917, 0.282975, -0.942481,
		-0.981920, 0.011858, 0.188922,
		0.064636, 0.959054, 0.275749,
		36.178654, 31.209974, 42.527779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626423, 30.937611, 41.957611>,  <36.133408, 30.538637, 42.334755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626423, 30.937611, 41.957611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879597, 31.231661, 42.054760>,  <36.031502, 31.408091, 42.113049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879597, 31.231661, 42.054760>,  <35.626423, 30.937611, 41.957611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879597, 31.231661, 42.054760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040262, 0.344531, -0.937911,
		-0.773161, 0.583854, 0.247662,
		0.632931, 0.735128, 0.242871,
		36.069477, 31.452200, 42.127621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330387, 31.577883, 41.704250>,  <35.626423, 30.937611, 41.957611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330387, 31.577883, 41.704250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719501, 31.652246, 41.759575>,  <35.952969, 31.696865, 41.792770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719501, 31.652246, 41.759575>,  <35.330387, 31.577883, 41.704250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719501, 31.652246, 41.759575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037864, 0.461353, -0.886408,
		-0.228603, 0.867520, 0.441757,
		0.972783, 0.185908, 0.138314,
		36.011337, 31.708019, 41.801067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446190, 32.371269, 41.432316>,  <35.330387, 31.577883, 41.704250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446190, 32.371269, 41.432316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802162, 32.190044, 41.453308>,  <36.015747, 32.081310, 41.465904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802162, 32.190044, 41.453308>,  <35.446190, 32.371269, 41.432316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802162, 32.190044, 41.453308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258031, 0.405245, -0.877038,
		0.376089, 0.794045, 0.477545,
		0.889931, -0.453066, 0.052480,
		36.069141, 32.054123, 41.469051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948490, 32.858479, 41.266880>,  <35.446190, 32.371269, 41.432316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948490, 32.858479, 41.266880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162384, 32.525589, 41.208286>,  <36.290722, 32.325855, 41.173130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162384, 32.525589, 41.208286>,  <35.948490, 32.858479, 41.266880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162384, 32.525589, 41.208286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436642, 0.420544, -0.795290,
		0.723464, 0.361310, 0.588265,
		0.534737, -0.832225, -0.146485,
		36.322803, 32.275921, 41.164341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671101, 33.051132, 41.232536>,  <35.948490, 32.858479, 41.266880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671101, 33.051132, 41.232536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622173, 32.715378, 41.020699>,  <36.592815, 32.513924, 40.893597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622173, 32.715378, 41.020699>,  <36.671101, 33.051132, 41.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622173, 32.715378, 41.020699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418653, 0.440163, -0.794346,
		0.899871, -0.318881, 0.297570,
		-0.122322, -0.839387, -0.529591,
		36.585476, 32.463562, 40.861820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290684, 32.916775, 40.944118>,  <36.671101, 33.051132, 41.232536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290684, 32.916775, 40.944118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064148, 32.666641, 40.729374>,  <36.928226, 32.516560, 40.600525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064148, 32.666641, 40.729374>,  <37.290684, 32.916775, 40.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064148, 32.666641, 40.729374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477953, 0.281487, -0.832061,
		0.671436, -0.727821, 0.139463,
		-0.566335, -0.625333, -0.536865,
		36.894249, 32.479042, 40.568314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774616, 32.568325, 40.491982>,  <37.290684, 32.916775, 40.944118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774616, 32.568325, 40.491982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 32.516060, 40.325771>,  <37.198524, 32.484699, 40.226044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 32.516060, 40.325771>,  <37.774616, 32.568325, 40.491982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414558, 32.516060, 40.325771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365208, 0.293514, -0.883443,
		0.237395, -0.946983, -0.216487,
		-0.900148, -0.130662, -0.415525,
		37.144516, 32.476860, 40.201115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974976, 32.287998, 39.946663>,  <37.774616, 32.568325, 40.491982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974976, 32.287998, 39.946663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606152, 32.428928, 39.882584>,  <37.384857, 32.513489, 39.844135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606152, 32.428928, 39.882584>,  <37.974976, 32.287998, 39.946663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606152, 32.428928, 39.882584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295353, 0.373030, -0.879554,
		-0.250134, -0.858320, -0.448018,
		-0.922063, 0.352330, -0.160200,
		37.329533, 32.534626, 39.834522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939270, 32.154751, 39.267498>,  <37.974976, 32.287998, 39.946663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939270, 32.154751, 39.267498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642002, 32.411499, 39.343075>,  <37.463642, 32.565548, 39.388420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642002, 32.411499, 39.343075>,  <37.939270, 32.154751, 39.267498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642002, 32.411499, 39.343075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301873, 0.573656, -0.761440,
		-0.597130, -0.508847, -0.620089,
		-0.743174, 0.641867, 0.188940,
		37.419048, 32.604057, 39.399757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552433, 32.225269, 38.671429>,  <37.939270, 32.154751, 39.267498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552433, 32.225269, 38.671429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477768, 32.566105, 38.867020>,  <37.432968, 32.770607, 38.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477768, 32.566105, 38.867020>,  <37.552433, 32.225269, 38.671429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477768, 32.566105, 38.867020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229565, 0.521781, -0.821611,
		-0.955225, -0.041115, -0.293009,
		-0.186667, 0.852088, 0.488979,
		37.421768, 32.821732, 39.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266853, 32.544735, 38.107010>,  <37.552433, 32.225269, 38.671429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266853, 32.544735, 38.107010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367996, 32.811279, 38.387589>,  <37.428680, 32.971207, 38.555935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367996, 32.811279, 38.387589>,  <37.266853, 32.544735, 38.107010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367996, 32.811279, 38.387589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131740, 0.694545, -0.707285,
		-0.958493, 0.271250, 0.087834,
		0.252856, 0.666356, 0.701451,
		37.443851, 33.011185, 38.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963818, 33.242981, 37.856823>,  <37.266853, 32.544735, 38.107010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963818, 33.242981, 37.856823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275974, 33.301762, 38.099937>,  <37.463268, 33.337032, 38.245804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275974, 33.301762, 38.099937>,  <36.963818, 33.242981, 37.856823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275974, 33.301762, 38.099937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394761, 0.638016, -0.661135,
		-0.484931, 0.755871, 0.439888,
		0.780388, 0.146954, 0.607782,
		37.510090, 33.345848, 38.282272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049500, 33.953884, 37.772976>,  <36.963818, 33.242981, 37.856823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049500, 33.953884, 37.772976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377041, 33.818272, 37.958248>,  <37.573566, 33.736904, 38.069412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377041, 33.818272, 37.958248>,  <37.049500, 33.953884, 37.772976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377041, 33.818272, 37.958248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515299, 0.789676, -0.332984,
		-0.252874, 0.511343, 0.821330,
		0.818854, -0.339027, 0.463183,
		37.622696, 33.716564, 38.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314686, 34.533543, 38.146336>,  <37.049500, 33.953884, 37.772976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314686, 34.533543, 38.146336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614368, 34.276505, 38.082134>,  <37.794178, 34.122284, 38.043613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614368, 34.276505, 38.082134>,  <37.314686, 34.533543, 38.146336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614368, 34.276505, 38.082134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600461, 0.761246, -0.244850,
		0.279522, 0.087067, 0.956183,
		0.749209, -0.642592, -0.160505,
		37.839130, 34.083729, 38.033981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049580, 34.850754, 38.430542>,  <37.314686, 34.533543, 38.146336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049580, 34.850754, 38.430542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189053, 34.550003, 38.206722>,  <38.272736, 34.369553, 38.072430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189053, 34.550003, 38.206722>,  <38.049580, 34.850754, 38.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189053, 34.550003, 38.206722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538248, 0.649393, -0.537195,
		0.767275, -0.113869, 0.631128,
		0.348680, -0.751880, -0.559553,
		38.293655, 34.324440, 38.038857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826229, 34.871845, 38.328259>,  <38.049580, 34.850754, 38.430542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826229, 34.871845, 38.328259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683018, 34.641834, 38.034004>,  <38.597092, 34.503826, 37.857452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683018, 34.641834, 38.034004>,  <38.826229, 34.871845, 38.328259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683018, 34.641834, 38.034004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481173, 0.561561, -0.673144,
		0.800179, -0.594973, 0.075631,
		-0.358031, -0.575027, -0.735635,
		38.575607, 34.469326, 37.813313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380501, 34.634113, 38.042778>,  <38.826229, 34.871845, 38.328259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380501, 34.634113, 38.042778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070084, 34.609814, 37.791679>,  <38.883831, 34.595234, 37.641022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070084, 34.609814, 37.791679>,  <39.380501, 34.634113, 38.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070084, 34.609814, 37.791679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505221, 0.535894, -0.676439,
		0.377498, -0.842097, -0.385186,
		-0.776046, -0.060750, -0.627744,
		38.837269, 34.591587, 37.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700428, 35.041374, 37.525749>,  <39.380501, 34.634113, 38.042778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700428, 35.041374, 37.525749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328175, 34.998219, 37.385880>,  <39.104820, 34.972324, 37.301956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328175, 34.998219, 37.385880>,  <39.700428, 35.041374, 37.525749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328175, 34.998219, 37.385880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123970, 0.806100, -0.578649,
		0.344306, -0.581862, -0.736811,
		-0.930637, -0.107890, -0.349678,
		39.048985, 34.965851, 37.280975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640079, 34.650791, 36.810307>,  <39.700428, 35.041374, 37.525749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640079, 34.650791, 36.810307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373436, 34.934505, 36.901997>,  <39.213448, 35.104733, 36.957012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373436, 34.934505, 36.901997>,  <39.640079, 34.650791, 36.810307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373436, 34.934505, 36.901997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445244, 0.625517, -0.640691,
		-0.597817, -0.325031, -0.732782,
		-0.666612, 0.709283, 0.229227,
		39.173450, 35.147289, 36.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718472, 34.998413, 36.248001>,  <39.640079, 34.650791, 36.810307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718472, 34.998413, 36.248001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506210, 35.241333, 36.484505>,  <39.378853, 35.387085, 36.626408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506210, 35.241333, 36.484505>,  <39.718472, 34.998413, 36.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506210, 35.241333, 36.484505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297712, 0.786683, -0.540830,
		-0.793584, -0.110966, -0.598256,
		-0.530652, 0.607302, 0.591264,
		39.347015, 35.423523, 36.661884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226982, 35.426311, 35.763176>,  <39.718472, 34.998413, 36.248001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226982, 35.426311, 35.763176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508484, 35.710453, 35.767719>,  <40.677383, 35.880939, 35.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508484, 35.710453, 35.767719>,  <40.226982, 35.426311, 35.763176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508484, 35.710453, 35.767719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670492, -0.658805, -0.341198,
		-0.234892, 0.247731, -0.939923,
		0.703751, 0.710356, 0.011354,
		40.719608, 35.923561, 35.771126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472492, 35.737644, 35.074768>,  <40.226982, 35.426311, 35.763176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472492, 35.737644, 35.074768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740662, 35.724060, 35.371246>,  <40.901562, 35.715908, 35.549133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740662, 35.724060, 35.371246>,  <40.472492, 35.737644, 35.074768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740662, 35.724060, 35.371246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395886, -0.828506, -0.396045,
		0.627539, 0.558949, -0.542007,
		0.670425, -0.033960, 0.741200,
		40.941788, 35.713871, 35.593605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138504, 35.553246, 34.699020>,  <40.472492, 35.737644, 35.074768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138504, 35.553246, 34.699020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148247, 35.442760, 35.083336>,  <41.154091, 35.376469, 35.313927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148247, 35.442760, 35.083336>,  <41.138504, 35.553246, 34.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148247, 35.442760, 35.083336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552123, -0.797487, -0.243259,
		0.833407, 0.536399, 0.133076,
		0.024358, -0.276208, 0.960789,
		41.155556, 35.359898, 35.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880844, 35.465221, 35.032936>,  <41.138504, 35.553246, 34.699020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880844, 35.465221, 35.032936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591965, 35.227798, 35.174992>,  <41.418636, 35.085346, 35.260223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591965, 35.227798, 35.174992>,  <41.880844, 35.465221, 35.032936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591965, 35.227798, 35.174992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528559, -0.804757, -0.270169,
		0.446158, -0.007406, 0.894924,
		-0.722197, -0.593558, 0.355134,
		41.375305, 35.049732, 35.281532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169876, 34.912365, 35.543316>,  <41.880844, 35.465221, 35.032936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169876, 34.912365, 35.543316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843945, 34.780338, 35.352692>,  <41.648384, 34.701122, 35.238316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843945, 34.780338, 35.352692>,  <42.169876, 34.912365, 35.543316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843945, 34.780338, 35.352692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552033, -0.692747, -0.464071,
		-0.176960, -0.641215, 0.746678,
		-0.814828, -0.330069, -0.476560,
		41.599495, 34.681316, 35.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681328, 35.296276, 35.072624>,  <42.169876, 34.912365, 35.543316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681328, 35.296276, 35.072624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816910, 35.485931, 34.747589>,  <42.898258, 35.599724, 34.552567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816910, 35.485931, 34.747589>,  <42.681328, 35.296276, 35.072624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816910, 35.485931, 34.747589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937643, -0.240988, 0.250502,
		-0.077053, -0.846828, -0.526257,
		0.338953, 0.474139, -0.812590,
		42.918594, 35.628174, 34.503811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240051, 34.838387, 34.671185>,  <42.681328, 35.296276, 35.072624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240051, 34.838387, 34.671185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295460, 35.227848, 34.598732>,  <43.328705, 35.461525, 34.555260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295460, 35.227848, 34.598732>,  <43.240051, 34.838387, 34.671185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295460, 35.227848, 34.598732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970143, -0.096645, 0.222446,
		0.199080, -0.206534, -0.957972,
		0.138526, 0.973655, -0.181128,
		43.337017, 35.519943, 34.544395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805168, 34.836979, 35.071724>,  <43.240051, 34.838387, 34.671185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805168, 34.836979, 35.071724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138947, 34.803238, 35.289562>,  <44.339214, 34.782993, 35.420265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138947, 34.803238, 35.289562>,  <43.805168, 34.836979, 35.071724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138947, 34.803238, 35.289562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413338, 0.557807, 0.719725,
		-0.364487, -0.825674, 0.430596,
		0.834447, -0.084349, 0.544595,
		44.389282, 34.777935, 35.452942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680389, 34.663715, 35.807373>,  <43.805168, 34.836979, 35.071724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680389, 34.663715, 35.807373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017044, 34.879707, 35.810638>,  <44.219036, 35.009304, 35.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017044, 34.879707, 35.810638>,  <43.680389, 34.663715, 35.807373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017044, 34.879707, 35.810638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365910, 0.559069, 0.744011,
		0.397187, -0.629175, 0.668118,
		0.841637, 0.539983, 0.008167,
		44.269535, 35.041702, 35.813087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753239, 34.852345, 36.454277>,  <43.680389, 34.663715, 35.807373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753239, 34.852345, 36.454277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014668, 35.103718, 36.285561>,  <44.171524, 35.254543, 36.184330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014668, 35.103718, 36.285561>,  <43.753239, 34.852345, 36.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014668, 35.103718, 36.285561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188565, 0.674923, 0.713388,
		0.732997, -0.386716, 0.559612,
		0.653573, 0.628435, -0.421795,
		44.210739, 35.292248, 36.159023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202282, 35.214859, 37.060360>,  <43.753239, 34.852345, 36.454277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202282, 35.214859, 37.060360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224205, 35.445225, 36.734093>,  <44.237358, 35.583447, 36.538334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224205, 35.445225, 36.734093>,  <44.202282, 35.214859, 37.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224205, 35.445225, 36.734093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206711, 0.805743, 0.555022,
		0.976866, 0.138189, 0.163207,
		0.054805, 0.575919, -0.815668,
		44.240646, 35.618000, 36.489391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687645, 35.660587, 37.200500>,  <44.202282, 35.214859, 37.060360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687645, 35.660587, 37.200500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449619, 35.808643, 36.915154>,  <44.306805, 35.897476, 36.743946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449619, 35.808643, 36.915154>,  <44.687645, 35.660587, 37.200500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449619, 35.808643, 36.915154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286939, 0.731283, 0.618782,
		0.750710, 0.572908, -0.328954,
		-0.595063, 0.370136, -0.713371,
		44.271099, 35.919685, 36.701141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785305, 36.392242, 37.210564>,  <44.687645, 35.660587, 37.200500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785305, 36.392242, 37.210564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442863, 36.373058, 37.004734>,  <44.237400, 36.361546, 36.881237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442863, 36.373058, 37.004734>,  <44.785305, 36.392242, 37.210564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442863, 36.373058, 37.004734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347561, 0.790321, 0.504573,
		0.382480, 0.610813, -0.693265,
		-0.856102, -0.047963, -0.514577,
		44.186031, 36.358669, 36.850361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655014, 37.080708, 36.842442>,  <44.785305, 36.392242, 37.210564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655014, 37.080708, 36.842442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320522, 36.872856, 36.912540>,  <44.119827, 36.748146, 36.954597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320522, 36.872856, 36.912540>,  <44.655014, 37.080708, 36.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320522, 36.872856, 36.912540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372938, 0.773157, 0.512977,
		-0.402050, 0.363610, -0.840324,
		-0.836226, -0.519631, 0.175244,
		44.069656, 36.716969, 36.965115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122620, 37.559425, 36.552803>,  <44.655014, 37.080708, 36.842442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122620, 37.559425, 36.552803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957294, 37.303799, 36.812271>,  <43.858101, 37.150421, 36.967953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957294, 37.303799, 36.812271>,  <44.122620, 37.559425, 36.552803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957294, 37.303799, 36.812271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337806, 0.769135, 0.542511,
		-0.845612, 0.005103, -0.533773,
		-0.413312, -0.639066, 0.648666,
		43.833302, 37.112080, 37.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449810, 37.867790, 36.783428>,  <44.122620, 37.559425, 36.552803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449810, 37.867790, 36.783428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523666, 37.591076, 37.062668>,  <43.567982, 37.425045, 37.230209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523666, 37.591076, 37.062668>,  <43.449810, 37.867790, 36.783428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523666, 37.591076, 37.062668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629862, 0.461968, 0.624387,
		-0.754442, -0.554990, -0.350433,
		0.184640, -0.691788, 0.698095,
		43.579060, 37.383541, 37.272095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829933, 37.697845, 37.124683>,  <43.449810, 37.867790, 36.783428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829933, 37.697845, 37.124683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135654, 37.593544, 37.360596>,  <43.319088, 37.530964, 37.502144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135654, 37.593544, 37.360596>,  <42.829933, 37.697845, 37.124683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135654, 37.593544, 37.360596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406137, 0.515765, 0.754347,
		-0.500892, -0.816083, 0.288297,
		0.764303, -0.260758, 0.589785,
		43.364944, 37.515316, 37.537533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550171, 37.734501, 37.666599>,  <42.829933, 37.697845, 37.124683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550171, 37.734501, 37.666599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930302, 37.716766, 37.789837>,  <43.158379, 37.706123, 37.863777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930302, 37.716766, 37.789837>,  <42.550171, 37.734501, 37.666599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930302, 37.716766, 37.789837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244812, 0.504818, 0.827784,
		-0.192234, -0.862087, 0.468885,
		0.950322, -0.044339, 0.308092,
		43.215397, 37.703465, 37.882263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548409, 37.465481, 38.407307>,  <42.550171, 37.734501, 37.666599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548409, 37.465481, 38.407307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897007, 37.655464, 38.358452>,  <43.106167, 37.769455, 38.329140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897007, 37.655464, 38.358452>,  <42.548409, 37.465481, 38.407307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897007, 37.655464, 38.358452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134832, 0.471510, 0.871492,
		0.471510, -0.743030, 0.474957,
		-0.871492, -0.474957, 0.122138,
		43.158455, 37.797951, 38.321812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843704, 37.344948, 39.008389>,  <42.548409, 37.465481, 38.407307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843704, 37.344948, 39.008389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994389, 37.677097, 38.844162>,  <43.084801, 37.876389, 38.745625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994389, 37.677097, 38.844162>,  <42.843704, 37.344948, 39.008389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994389, 37.677097, 38.844162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140083, 0.489190, 0.860854,
		0.915677, -0.266780, 0.300605,
		0.376711, 0.830374, -0.410569,
		43.107403, 37.926208, 38.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178509, 37.562210, 39.608929>,  <42.843704, 37.344948, 39.008389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178509, 37.562210, 39.608929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218895, 37.866814, 39.352829>,  <43.243126, 38.049576, 39.199169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218895, 37.866814, 39.352829>,  <43.178509, 37.562210, 39.608929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218895, 37.866814, 39.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078700, 0.647631, 0.757879,
		0.991772, -0.026131, 0.125317,
		0.100963, 0.761506, -0.640246,
		43.249184, 38.095264, 39.160755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765469, 37.990532, 39.827251>,  <43.178509, 37.562210, 39.608929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765469, 37.990532, 39.827251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536411, 38.225266, 39.598270>,  <43.398975, 38.366104, 39.460880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536411, 38.225266, 39.598270>,  <43.765469, 37.990532, 39.827251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536411, 38.225266, 39.598270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073207, 0.658890, 0.748669,
		0.816528, 0.470629, -0.334350,
		-0.572645, 0.586832, -0.572456,
		43.364616, 38.401314, 39.426533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065796, 38.630249, 39.886192>,  <43.765469, 37.990532, 39.827251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065796, 38.630249, 39.886192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685207, 38.704460, 39.787987>,  <43.456856, 38.748989, 39.729061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685207, 38.704460, 39.787987>,  <44.065796, 38.630249, 39.886192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685207, 38.704460, 39.787987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110823, 0.537708, 0.835816,
		0.287086, 0.822465, -0.491053,
		-0.951473, 0.185531, -0.245516,
		43.399765, 38.760120, 39.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985615, 39.332451, 39.927719>,  <44.065796, 38.630249, 39.886192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985615, 39.332451, 39.927719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600262, 39.225327, 39.922386>,  <43.369049, 39.161053, 39.919186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600262, 39.225327, 39.922386>,  <43.985615, 39.332451, 39.927719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600262, 39.225327, 39.922386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223894, 0.776045, 0.589598,
		-0.147553, 0.570991, -0.807587,
		-0.963379, -0.267811, -0.013334,
		43.311249, 39.144981, 39.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672253, 40.009441, 40.024452>,  <43.985615, 39.332451, 39.927719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672253, 40.009441, 40.024452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371330, 39.752216, 40.081738>,  <43.190777, 39.597881, 40.116108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371330, 39.752216, 40.081738>,  <43.672253, 40.009441, 40.024452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371330, 39.752216, 40.081738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426365, 0.640944, 0.638281,
		-0.502245, 0.419121, -0.756364,
		-0.752305, -0.643061, 0.143212,
		43.145638, 39.559299, 40.124702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989651, 40.267815, 39.889172>,  <43.672253, 40.009441, 40.024452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989651, 40.267815, 39.889172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919765, 39.976704, 40.154446>,  <42.877834, 39.802036, 40.313610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919765, 39.976704, 40.154446>,  <42.989651, 40.267815, 39.889172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919765, 39.976704, 40.154446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471401, 0.653161, 0.592589,
		-0.864440, -0.209092, -0.457192,
		-0.174715, -0.727778, 0.663184,
		42.867352, 39.758369, 40.353401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273006, 40.073555, 40.043617>,  <42.989651, 40.267815, 39.889172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273006, 40.073555, 40.043617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452976, 39.941536, 40.375553>,  <42.560959, 39.862324, 40.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452976, 39.941536, 40.375553>,  <42.273006, 40.073555, 40.043617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452976, 39.941536, 40.375553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677695, 0.478987, 0.557943,
		-0.581632, -0.813411, -0.008166,
		0.449925, -0.330052, 0.829839,
		42.587955, 39.842522, 40.624504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758362, 39.717930, 40.466305>,  <42.273006, 40.073555, 40.043617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758362, 39.717930, 40.466305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062332, 39.839897, 40.695930>,  <42.244713, 39.913078, 40.833706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062332, 39.839897, 40.695930>,  <41.758362, 39.717930, 40.466305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062332, 39.839897, 40.695930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645997, 0.452313, 0.614899,
		-0.072162, -0.838116, 0.540697,
		0.759922, 0.304917, 0.574060,
		42.290310, 39.931374, 40.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645527, 39.439312, 41.228199>,  <41.758362, 39.717930, 40.466305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645527, 39.439312, 41.228199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848999, 39.779057, 41.171875>,  <41.971081, 39.982903, 41.138081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848999, 39.779057, 41.171875>,  <41.645527, 39.439312, 41.228199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848999, 39.779057, 41.171875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651769, 0.486756, 0.581605,
		0.562536, -0.204073, 0.801192,
		0.508675, 0.849366, -0.140809,
		42.001602, 40.033867, 41.129631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078426, 39.343922, 41.773544>,  <41.645527, 39.439312, 41.228199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078426, 39.343922, 41.773544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229492, 38.975033, 41.740349>,  <41.320129, 38.753700, 41.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229492, 38.975033, 41.740349>,  <41.078426, 39.343922, 41.773544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229492, 38.975033, 41.740349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072707, -0.059812, 0.995558,
		-0.923086, -0.382016, 0.044464,
		0.377660, -0.922218, -0.082987,
		41.342789, 38.698368, 41.715454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452625, 38.958900, 41.970966>,  <41.078426, 39.343922, 41.773544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452625, 38.958900, 41.970966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820156, 38.816948, 42.040031>,  <41.040676, 38.731777, 42.081470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820156, 38.816948, 42.040031>,  <40.452625, 38.958900, 41.970966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820156, 38.816948, 42.040031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287503, -0.302163, 0.908867,
		-0.270372, -0.884733, -0.379666,
		0.918826, -0.354887, 0.172667,
		41.095802, 38.710484, 42.091831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556755, 38.165321, 41.993179>,  <40.452625, 38.958900, 41.970966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556755, 38.165321, 41.993179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831757, 38.346912, 42.219891>,  <40.996758, 38.455868, 42.355919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831757, 38.346912, 42.219891>,  <40.556755, 38.165321, 41.993179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831757, 38.346912, 42.219891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298035, -0.535335, 0.790311,
		0.662204, -0.712262, -0.232742,
		0.687503, 0.453982, 0.566780,
		41.038006, 38.483109, 42.389923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765175, 37.651779, 42.468712>,  <40.556755, 38.165321, 41.993179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765175, 37.651779, 42.468712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805271, 38.022125, 42.614437>,  <40.829327, 38.244331, 42.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805271, 38.022125, 42.614437>,  <40.765175, 37.651779, 42.468712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805271, 38.022125, 42.614437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283188, -0.324467, 0.902511,
		0.953812, -0.193636, 0.229670,
		0.100238, 0.925865, 0.364316,
		40.835342, 38.299885, 42.723732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243099, 37.693176, 43.024727>,  <40.765175, 37.651779, 42.468712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243099, 37.693176, 43.024727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939869, 37.950592, 43.067024>,  <40.757931, 38.105042, 43.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939869, 37.950592, 43.067024>,  <41.243099, 37.693176, 43.024727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939869, 37.950592, 43.067024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205336, -0.389413, 0.897884,
		0.619003, 0.658948, 0.427345,
		-0.758072, 0.643542, 0.105742,
		40.712448, 38.143654, 43.098747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843960, 38.078148, 43.371166>,  <41.243099, 37.693176, 43.024727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843960, 38.078148, 43.371166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223888, 38.041828, 43.490894>,  <42.451847, 38.020039, 43.562733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223888, 38.041828, 43.490894>,  <41.843960, 38.078148, 43.371166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223888, 38.041828, 43.490894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157341, -0.688365, -0.708094,
		0.270334, 0.719659, -0.639539,
		0.949823, -0.090796, 0.299321,
		42.508835, 38.014591, 43.580692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255768, 38.191803, 42.778355>,  <41.843960, 38.078148, 43.371166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255768, 38.191803, 42.778355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436932, 37.953880, 43.044010>,  <42.545628, 37.811127, 43.203403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436932, 37.953880, 43.044010>,  <42.255768, 38.191803, 42.778355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436932, 37.953880, 43.044010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363672, -0.556882, -0.746743,
		0.814013, 0.579735, -0.035903,
		0.452907, -0.594802, 0.664142,
		42.572803, 37.775440, 43.243252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996365, 38.212170, 42.670269>,  <42.255768, 38.191803, 42.778355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996365, 38.212170, 42.670269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878185, 37.862556, 42.824554>,  <42.807278, 37.652790, 42.917126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878185, 37.862556, 42.824554>,  <42.996365, 38.212170, 42.670269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878185, 37.862556, 42.824554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322552, -0.471289, -0.820882,
		0.899261, -0.118115, 0.421163,
		-0.295448, -0.874034, 0.385713,
		42.789551, 37.600346, 42.940269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479683, 37.604958, 42.891663>,  <42.996365, 38.212170, 42.670269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479683, 37.604958, 42.891663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137856, 37.450890, 42.752316>,  <42.932758, 37.358448, 42.668709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137856, 37.450890, 42.752316>,  <43.479683, 37.604958, 42.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137856, 37.450890, 42.752316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514645, -0.538097, -0.667527,
		0.069654, -0.749733, 0.658064,
		-0.854570, -0.385166, -0.348365,
		42.881485, 37.335339, 42.647804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754597, 36.906586, 42.737907>,  <43.479683, 37.604958, 42.891663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754597, 36.906586, 42.737907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409275, 36.922066, 42.536629>,  <43.202084, 36.931355, 42.415863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409275, 36.922066, 42.536629>,  <43.754597, 36.906586, 42.737907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409275, 36.922066, 42.536629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326282, -0.717864, -0.614988,
		-0.385025, -0.695107, 0.607110,
		-0.863305, 0.038696, -0.503197,
		43.150284, 36.933674, 42.385670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579567, 36.184383, 42.700588>,  <43.754597, 36.906586, 42.737907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579567, 36.184383, 42.700588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377068, 36.375309, 42.413288>,  <43.255569, 36.489864, 42.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377068, 36.375309, 42.413288>,  <43.579567, 36.184383, 42.700588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377068, 36.375309, 42.413288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293548, -0.687754, -0.663946,
		-0.810890, -0.546962, 0.208060,
		-0.506247, 0.477312, -0.718253,
		43.225193, 36.518501, 42.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344051, 35.642422, 42.359783>,  <43.579567, 36.184383, 42.700588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344051, 35.642422, 42.359783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317924, 35.956676, 42.113689>,  <43.302246, 36.145229, 41.966034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317924, 35.956676, 42.113689>,  <43.344051, 35.642422, 42.359783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317924, 35.956676, 42.113689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350246, -0.559272, -0.751360,
		-0.934377, -0.264561, -0.238634,
		-0.065319, 0.785635, -0.615233,
		43.298328, 36.192368, 41.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037708, 35.432606, 41.710087>,  <43.344051, 35.642422, 42.359783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037708, 35.432606, 41.710087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255154, 35.760403, 41.637520>,  <43.385620, 35.957081, 41.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255154, 35.760403, 41.637520>,  <43.037708, 35.432606, 41.710087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255154, 35.760403, 41.637520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377480, -0.431754, -0.819205,
		-0.749661, 0.376851, -0.544051,
		0.543614, 0.819495, -0.181416,
		43.418240, 36.006252, 41.583096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980896, 35.533554, 41.073830>,  <43.037708, 35.432606, 41.710087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980896, 35.533554, 41.073830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296768, 35.763721, 41.158966>,  <43.486290, 35.901821, 41.210049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296768, 35.763721, 41.158966>,  <42.980896, 35.533554, 41.073830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296768, 35.763721, 41.158966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411899, -0.240130, -0.879020,
		-0.454696, 0.781812, -0.426640,
		0.789678, 0.575420, 0.212841,
		43.533672, 35.936348, 41.222816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969807, 36.069962, 40.465832>,  <42.980896, 35.533554, 41.073830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969807, 36.069962, 40.465832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330978, 36.023148, 40.631248>,  <43.547684, 35.995060, 40.730499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330978, 36.023148, 40.631248>,  <42.969807, 36.069962, 40.465832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330978, 36.023148, 40.631248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346002, -0.372818, -0.860982,
		0.254943, 0.920494, -0.296133,
		0.902932, -0.117039, 0.413540,
		43.601856, 35.988037, 40.755310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464008, 36.387333, 40.029728>,  <42.969807, 36.069962, 40.465832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464008, 36.387333, 40.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698273, 36.135380, 40.233784>,  <43.838833, 35.984207, 40.356216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698273, 36.135380, 40.233784>,  <43.464008, 36.387333, 40.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698273, 36.135380, 40.233784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461625, -0.258128, -0.848689,
		0.666258, 0.732539, 0.139595,
		0.585664, -0.629886, 0.510138,
		43.873974, 35.946415, 40.386826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053905, 36.449139, 39.648941>,  <43.464008, 36.387333, 40.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053905, 36.449139, 39.648941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136665, 36.116524, 39.855141>,  <44.186321, 35.916954, 39.978863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136665, 36.116524, 39.855141>,  <44.053905, 36.449139, 39.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136665, 36.116524, 39.855141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659437, -0.270706, -0.701328,
		0.722728, 0.485045, 0.492336,
		0.206897, -0.831534, 0.515504,
		44.198734, 35.867062, 40.009792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797394, 36.453434, 39.733894>,  <44.053905, 36.449139, 39.648941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797394, 36.453434, 39.733894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670971, 36.076534, 39.778210>,  <44.595119, 35.850395, 39.804798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670971, 36.076534, 39.778210>,  <44.797394, 36.453434, 39.733894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670971, 36.076534, 39.778210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653176, -0.300795, -0.694899,
		0.688092, -0.147264, 0.710523,
		-0.316055, -0.942251, 0.110786,
		44.576153, 35.793858, 39.811447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360050, 36.058815, 39.948181>,  <44.797394, 36.453434, 39.733894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360050, 36.058815, 39.948181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090771, 35.780460, 39.848148>,  <44.929203, 35.613445, 39.788128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090771, 35.780460, 39.848148>,  <45.360050, 36.058815, 39.948181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090771, 35.780460, 39.848148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653351, -0.401371, -0.641899,
		0.346316, -0.595517, 0.724862,
		-0.673200, -0.695889, -0.250080,
		44.888809, 35.571693, 39.773125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669682, 35.403095, 39.945572>,  <45.360050, 36.058815, 39.948181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669682, 35.403095, 39.945572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358494, 35.368305, 39.696671>,  <45.171780, 35.347431, 39.547329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358494, 35.368305, 39.696671>,  <45.669682, 35.403095, 39.945572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358494, 35.368305, 39.696671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590312, -0.440339, -0.676486,
		-0.215168, -0.893609, 0.393910,
		-0.777968, -0.086971, -0.622256,
		45.125103, 35.342213, 39.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670658, 34.678387, 39.737434>,  <45.669682, 35.403095, 39.945572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670658, 34.678387, 39.737434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444603, 34.870213, 39.468914>,  <45.308971, 34.985306, 39.307804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444603, 34.870213, 39.468914>,  <45.670658, 34.678387, 39.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444603, 34.870213, 39.468914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529672, -0.412934, -0.740900,
		-0.632509, -0.774278, -0.020646,
		-0.565137, 0.479562, -0.671298,
		45.275063, 35.014080, 39.267525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523403, 34.051262, 39.175381>,  <45.670658, 34.678387, 39.737434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523403, 34.051262, 39.175381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427845, 34.396603, 38.997593>,  <45.370510, 34.603809, 38.890923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427845, 34.396603, 38.997593>,  <45.523403, 34.051262, 39.175381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427845, 34.396603, 38.997593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405463, -0.327217, -0.853539,
		-0.882343, -0.384122, -0.271887,
		-0.238897, 0.863354, -0.444465,
		45.356174, 34.655609, 38.864254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232559, 33.871037, 38.428047>,  <45.523403, 34.051262, 39.175381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232559, 33.871037, 38.428047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340374, 34.256149, 38.436039>,  <45.405064, 34.487217, 38.440834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340374, 34.256149, 38.436039>,  <45.232559, 33.871037, 38.428047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340374, 34.256149, 38.436039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318565, -0.069571, -0.945345,
		-0.908771, 0.261171, -0.325460,
		0.269539, 0.962782, 0.019976,
		45.421234, 34.544983, 38.442032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798618, 34.327919, 37.942810>,  <45.232559, 33.871037, 38.428047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798618, 34.327919, 37.942810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153728, 34.505482, 37.991455>,  <45.366795, 34.612019, 38.020641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153728, 34.505482, 37.991455>,  <44.798618, 34.327919, 37.942810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153728, 34.505482, 37.991455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183606, -0.099265, -0.977975,
		-0.422062, 0.890556, -0.169631,
		0.887780, 0.443911, 0.121616,
		45.420063, 34.638657, 38.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819347, 34.720814, 37.445145>,  <44.798618, 34.327919, 37.942810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819347, 34.720814, 37.445145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203960, 34.687225, 37.549767>,  <45.434727, 34.667072, 37.612541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203960, 34.687225, 37.549767>,  <44.819347, 34.720814, 37.445145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203960, 34.687225, 37.549767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255577, -0.075639, -0.963825,
		0.100719, 0.993593, -0.051268,
		0.961528, -0.083973, 0.261558,
		45.492420, 34.662033, 37.628235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166248, 35.156239, 37.065327>,  <44.819347, 34.720814, 37.445145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166248, 35.156239, 37.065327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471310, 34.921871, 37.174919>,  <45.654346, 34.781250, 37.240673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471310, 34.921871, 37.174919>,  <45.166248, 35.156239, 37.065327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471310, 34.921871, 37.174919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251998, -0.120959, -0.960138,
		0.595699, 0.801295, 0.055399,
		0.762653, -0.585914, 0.273980,
		45.700108, 34.746098, 37.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817036, 35.503216, 36.882591>,  <45.166248, 35.156239, 37.065327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817036, 35.503216, 36.882591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942883, 35.125423, 36.920483>,  <46.018391, 34.898750, 36.943214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942883, 35.125423, 36.920483>,  <45.817036, 35.503216, 36.882591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942883, 35.125423, 36.920483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329408, 0.015049, -0.944068,
		0.890227, 0.328227, 0.315853,
		0.314622, -0.944479, 0.094724,
		46.037270, 34.842079, 36.948898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446224, 35.457798, 36.590725>,  <45.817036, 35.503216, 36.882591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446224, 35.457798, 36.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343678, 35.071709, 36.570271>,  <46.282150, 34.840054, 36.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343678, 35.071709, 36.570271>,  <46.446224, 35.457798, 36.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343678, 35.071709, 36.570271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259186, -0.017683, -0.965666,
		0.931182, -0.260817, 0.254706,
		-0.256366, -0.965226, -0.051133,
		46.266769, 34.782143, 36.554932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977165, 35.140228, 36.355595>,  <46.446224, 35.457798, 36.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977165, 35.140228, 36.355595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657986, 34.916626, 36.265450>,  <46.466476, 34.782463, 36.211361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657986, 34.916626, 36.265450>,  <46.977165, 35.140228, 36.355595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657986, 34.916626, 36.265450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377095, -0.171345, -0.910187,
		0.470184, -0.811267, 0.347523,
		-0.797951, -0.559004, -0.225361,
		46.418602, 34.748924, 36.197842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292351, 34.410320, 36.100163>,  <46.977165, 35.140228, 36.355595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292351, 34.410320, 36.100163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934532, 34.541977, 35.979202>,  <46.719841, 34.620972, 35.906628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934532, 34.541977, 35.979202>,  <47.292351, 34.410320, 36.100163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934532, 34.541977, 35.979202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239457, -0.218368, -0.946031,
		-0.377415, -0.918683, 0.116525,
		-0.894549, 0.329144, -0.302401,
		46.666168, 34.640720, 35.888481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310318, 34.447243, 35.391296>,  <47.292351, 34.410320, 36.100163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310318, 34.447243, 35.391296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914543, 34.498817, 35.417809>,  <46.677078, 34.529762, 35.433716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914543, 34.498817, 35.417809>,  <47.310318, 34.447243, 35.391296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914543, 34.498817, 35.417809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083460, -0.132742, -0.987630,
		-0.118515, -0.982732, 0.142099,
		-0.989439, 0.128909, 0.066287,
		46.617714, 34.537498, 35.437695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325779, 34.796986, 34.801800>,  <47.310318, 34.447243, 35.391296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325779, 34.796986, 34.801800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497746, 34.875443, 35.154320>,  <47.600925, 34.922516, 35.365833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497746, 34.875443, 35.154320>,  <47.325779, 34.796986, 34.801800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497746, 34.875443, 35.154320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883392, -0.293025, -0.365724,
		0.186512, 0.935770, -0.299245,
		0.429920, 0.196139, 0.881305,
		47.626720, 34.934284, 35.418713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.952969, 35.027554, 34.642124>,  <47.325779, 34.796986, 34.801800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.952969, 35.027554, 34.642124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.997299, 34.911747, 35.022419>,  <48.023899, 34.842262, 35.250595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.997299, 34.911747, 35.022419>,  <47.952969, 35.027554, 34.642124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.997299, 34.911747, 35.022419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925853, -0.317661, -0.204664,
		0.361265, 0.902923, 0.232848,
		0.110829, -0.289521, 0.950734,
		48.030548, 34.824890, 35.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.621464, 32.716015, 42.293129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284195, 32.656696, 42.086414>,  <30.081833, 32.621105, 41.962387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284195, 32.656696, 42.086414>,  <30.621464, 32.716015, 42.293129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284195, 32.656696, 42.086414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363525, 0.550938, -0.751210,
		0.396119, -0.821265, -0.410626,
		-0.843172, -0.148296, -0.516788,
		30.031242, 32.612209, 41.931377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768307, 32.835327, 41.611591>,  <30.621464, 32.716015, 42.293129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768307, 32.835327, 41.611591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.369005, 32.852165, 41.595020>,  <30.129423, 32.862267, 41.585079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.369005, 32.852165, 41.595020>,  <30.768307, 32.835327, 41.611591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369005, 32.852165, 41.595020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059040, 0.694591, -0.716978,
		-0.001406, -0.718173, -0.695864,
		-0.998255, 0.042092, -0.041424,
		30.069529, 32.864792, 41.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603661, 32.616852, 40.936008>,  <30.768307, 32.835327, 41.611591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603661, 32.616852, 40.936008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260038, 32.795197, 41.036591>,  <30.053865, 32.902203, 41.096939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260038, 32.795197, 41.036591>,  <30.603661, 32.616852, 40.936008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260038, 32.795197, 41.036591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078932, 0.600743, -0.795536,
		-0.505759, -0.663562, -0.551265,
		-0.859056, 0.445862, 0.251455,
		30.002321, 32.928955, 41.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154963, 32.636864, 40.283302>,  <30.603661, 32.616852, 40.936008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154963, 32.636864, 40.283302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049046, 32.918682, 40.546665>,  <29.985495, 33.087772, 40.704685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049046, 32.918682, 40.546665>,  <30.154963, 32.636864, 40.283302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049046, 32.918682, 40.546665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059378, 0.693400, -0.718102,
		-0.962476, -0.151053, -0.225441,
		-0.264792, 0.704542, 0.658412,
		29.969608, 33.130043, 40.744190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722383, 33.011154, 39.908367>,  <30.154963, 32.636864, 40.283302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722383, 33.011154, 39.908367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841707, 33.241394, 40.212917>,  <29.913301, 33.379539, 40.395649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841707, 33.241394, 40.212917>,  <29.722383, 33.011154, 39.908367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841707, 33.241394, 40.212917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195823, 0.743817, -0.639054,
		-0.934166, 0.339730, 0.109171,
		0.298309, 0.575604, 0.761375,
		29.931200, 33.414074, 40.441330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754749, 33.582321, 39.598980>,  <29.722383, 33.011154, 39.908367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754749, 33.582321, 39.598980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.934202, 33.698372, 39.937107>,  <30.041874, 33.768002, 40.139984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.934202, 33.698372, 39.937107>,  <29.754749, 33.582321, 39.598980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934202, 33.698372, 39.937107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393879, 0.784846, -0.478410,
		-0.802241, 0.547582, 0.237832,
		0.448630, 0.290123, 0.845317,
		30.068790, 33.785408, 40.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596594, 34.304447, 39.702297>,  <29.754749, 33.582321, 39.598980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596594, 34.304447, 39.702297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938309, 34.210201, 39.887634>,  <30.143337, 34.153656, 39.998837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938309, 34.210201, 39.887634>,  <29.596594, 34.304447, 39.702297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938309, 34.210201, 39.887634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495495, 0.638517, -0.588881,
		-0.157102, 0.732654, 0.662221,
		0.854286, -0.235613, 0.463339,
		30.194595, 34.139519, 40.026634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961704, 34.918282, 39.663254>,  <29.596594, 34.304447, 39.702297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961704, 34.918282, 39.663254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.254585, 34.674133, 39.784134>,  <30.430313, 34.527645, 39.856663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.254585, 34.674133, 39.784134>,  <29.961704, 34.918282, 39.663254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254585, 34.674133, 39.784134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588300, 0.343199, -0.732200,
		0.343199, 0.713904, 0.610373,
		0.732200, -0.610373, 0.302204,
		30.474245, 34.491020, 39.874794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641743, 35.244240, 39.637783>,  <29.961704, 34.918282, 39.663254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641743, 35.244240, 39.637783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.756180, 34.861481, 39.617771>,  <30.824842, 34.631824, 39.605766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.756180, 34.861481, 39.617771>,  <30.641743, 35.244240, 39.637783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756180, 34.861481, 39.617771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555698, 0.208225, -0.804886,
		0.780609, 0.202473, 0.591316,
		0.286094, -0.956895, -0.050028,
		30.842009, 34.574413, 39.602764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373339, 35.336529, 39.789356>,  <30.641743, 35.244240, 39.637783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373339, 35.336529, 39.789356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307688, 34.987770, 39.604813>,  <31.268297, 34.778515, 39.494087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307688, 34.987770, 39.604813>,  <31.373339, 35.336529, 39.789356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307688, 34.987770, 39.604813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884313, 0.077191, -0.460470,
		0.437096, -0.483563, 0.758363,
		-0.164127, -0.871899, -0.461361,
		31.258450, 34.726200, 39.466404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906366, 34.955688, 39.857891>,  <31.373339, 35.336529, 39.789356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906366, 34.955688, 39.857891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725603, 34.776657, 39.549229>,  <31.617146, 34.669239, 39.364029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725603, 34.776657, 39.549229>,  <31.906366, 34.955688, 39.857891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725603, 34.776657, 39.549229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829896, 0.106336, -0.547691,
		0.327188, -0.887902, 0.323386,
		-0.451908, -0.447575, -0.771658,
		31.590031, 34.642384, 39.317730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374027, 34.468292, 39.597664>,  <31.906366, 34.955688, 39.857891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374027, 34.468292, 39.597664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110798, 34.543858, 39.306118>,  <31.952860, 34.589195, 39.131191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110798, 34.543858, 39.306118>,  <32.374027, 34.468292, 39.597664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110798, 34.543858, 39.306118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751766, 0.219126, -0.621958,
		0.042219, -0.957234, -0.286217,
		-0.658078, 0.188910, -0.728867,
		31.913374, 34.600529, 39.087460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740353, 34.212914, 38.982094>,  <32.374027, 34.468292, 39.597664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740353, 34.212914, 38.982094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.442795, 34.424946, 38.819298>,  <32.264259, 34.552166, 38.721619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.442795, 34.424946, 38.819298>,  <32.740353, 34.212914, 38.982094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442795, 34.424946, 38.819298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604337, 0.273569, -0.748289,
		-0.285312, -0.802606, -0.523851,
		-0.743891, 0.530079, -0.406992,
		32.219627, 34.583969, 38.697201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848740, 34.148132, 38.225220>,  <32.740353, 34.212914, 38.982094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848740, 34.148132, 38.225220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.611012, 34.468853, 38.250191>,  <32.468372, 34.661285, 38.265175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.611012, 34.468853, 38.250191>,  <32.848740, 34.148132, 38.225220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611012, 34.468853, 38.250191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441912, 0.390441, -0.807632,
		-0.671933, -0.452407, -0.586373,
		-0.594323, 0.801800, 0.062426,
		32.432716, 34.709393, 38.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519566, 34.237659, 37.567852>,  <32.848740, 34.148132, 38.225220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519566, 34.237659, 37.567852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511024, 34.582546, 37.770290>,  <32.505901, 34.789478, 37.891754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511024, 34.582546, 37.770290>,  <32.519566, 34.237659, 37.567852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511024, 34.582546, 37.770290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319043, 0.485619, -0.813871,
		-0.947500, 0.144088, -0.285452,
		-0.021352, 0.862214, 0.506094,
		32.504620, 34.841209, 37.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136791, 34.710037, 37.110077>,  <32.519566, 34.237659, 37.567852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136791, 34.710037, 37.110077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.335403, 34.947567, 37.363323>,  <32.454571, 35.090084, 37.515270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.335403, 34.947567, 37.363323>,  <32.136791, 34.710037, 37.110077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335403, 34.947567, 37.363323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411796, 0.480930, -0.774035,
		-0.764123, 0.645045, -0.005737,
		0.496528, 0.593821, 0.633116,
		32.484364, 35.125713, 37.553257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248489, 35.353886, 36.714470>,  <32.136791, 34.710037, 37.110077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248489, 35.353886, 36.714470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530155, 35.323715, 36.996876>,  <32.699154, 35.305611, 37.166321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530155, 35.323715, 36.996876>,  <32.248489, 35.353886, 36.714470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530155, 35.323715, 36.996876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666625, 0.412581, -0.620797,
		-0.244464, 0.907793, 0.340807,
		0.704165, -0.075428, 0.706018,
		32.741405, 35.301086, 37.208683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657608, 36.095371, 36.784969>,  <32.248489, 35.353886, 36.714470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657608, 36.095371, 36.784969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879372, 35.799999, 36.938515>,  <33.012432, 35.622776, 37.030640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879372, 35.799999, 36.938515>,  <32.657608, 36.095371, 36.784969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879372, 35.799999, 36.938515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791945, 0.326310, -0.516086,
		0.255835, 0.590121, 0.765706,
		0.554411, -0.738430, 0.383862,
		33.045696, 35.578472, 37.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216660, 36.457516, 36.811707>,  <32.657608, 36.095371, 36.784969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216660, 36.457516, 36.811707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338085, 36.081238, 36.872292>,  <33.410942, 35.855473, 36.908642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338085, 36.081238, 36.872292>,  <33.216660, 36.457516, 36.811707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338085, 36.081238, 36.872292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831882, 0.184165, -0.523503,
		0.464564, 0.284914, 0.838454,
		0.303568, -0.940695, 0.151458,
		33.429157, 35.799030, 36.917728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890308, 36.444290, 37.014420>,  <33.216660, 36.457516, 36.811707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890308, 36.444290, 37.014420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849213, 36.067902, 36.885414>,  <33.824554, 35.842068, 36.808010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849213, 36.067902, 36.885414>,  <33.890308, 36.444290, 37.014420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849213, 36.067902, 36.885414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784622, 0.122630, -0.607725,
		0.611403, -0.315490, 0.725709,
		-0.102738, -0.940972, -0.322516,
		33.818390, 35.785610, 36.788658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599495, 36.176899, 37.049801>,  <33.890308, 36.444290, 37.014420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599495, 36.176899, 37.049801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373169, 35.980991, 36.784477>,  <34.237373, 35.863445, 36.625282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373169, 35.980991, 36.784477>,  <34.599495, 36.176899, 37.049801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373169, 35.980991, 36.784477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694681, 0.150184, -0.703465,
		0.444155, -0.858819, 0.255258,
		-0.565813, -0.489770, -0.663310,
		34.203426, 35.834061, 36.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010757, 35.676929, 36.822639>,  <34.599495, 36.176899, 37.049801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010757, 35.676929, 36.822639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732025, 35.719112, 36.538864>,  <34.564785, 35.744423, 36.368599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732025, 35.719112, 36.538864>,  <35.010757, 35.676929, 36.822639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732025, 35.719112, 36.538864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716943, 0.074371, -0.693153,
		-0.020336, -0.991639, -0.127431,
		-0.696835, 0.105457, -0.709436,
		34.522976, 35.750751, 36.326035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671124, 36.027512, 36.843388>,  <35.010757, 35.676929, 36.822639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671124, 36.027512, 36.843388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955208, 36.215664, 37.052895>,  <36.125660, 36.328556, 37.178600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955208, 36.215664, 37.052895>,  <35.671124, 36.027512, 36.843388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955208, 36.215664, 37.052895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507176, -0.174108, 0.844073,
		0.488231, -0.865116, 0.114914,
		0.710213, 0.470385, 0.523771,
		36.168270, 36.356781, 37.210026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874054, 35.554512, 37.407547>,  <35.671124, 36.027512, 36.843388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874054, 35.554512, 37.407547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002392, 35.915794, 37.521584>,  <36.079395, 36.132565, 37.590008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002392, 35.915794, 37.521584>,  <35.874054, 35.554512, 37.407547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002392, 35.915794, 37.521584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347264, -0.167865, 0.922621,
		0.881175, -0.395017, 0.259794,
		0.320841, 0.903207, 0.285094,
		36.098644, 36.186756, 37.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257637, 35.438049, 38.025856>,  <35.874054, 35.554512, 37.407547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257637, 35.438049, 38.025856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 35.812756, 38.011574>,  <36.034840, 36.037579, 38.003006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 35.812756, 38.011574>,  <36.257637, 35.438049, 38.025856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118389, 35.812756, 38.011574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417366, -0.120775, 0.900677,
		0.839415, 0.328446, 0.433019,
		-0.348122, 0.936769, -0.035702,
		36.013954, 36.093788, 38.000862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367088, 35.727562, 38.649406>,  <36.257637, 35.438049, 38.025856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367088, 35.727562, 38.649406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082115, 35.972351, 38.512051>,  <35.911129, 36.119225, 38.429638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082115, 35.972351, 38.512051>,  <36.367088, 35.727562, 38.649406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082115, 35.972351, 38.512051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486080, -0.077434, 0.870477,
		0.506123, 0.787075, 0.352636,
		-0.712437, 0.611978, -0.343390,
		35.868385, 36.155945, 38.409035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310745, 36.232220, 39.035244>,  <36.367088, 35.727562, 38.649406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310745, 36.232220, 39.035244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940708, 36.286789, 38.893486>,  <35.718685, 36.319530, 38.808430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940708, 36.286789, 38.893486>,  <36.310745, 36.232220, 39.035244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940708, 36.286789, 38.893486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366507, -0.076452, 0.927269,
		0.099406, 0.987696, 0.120725,
		-0.925090, 0.136423, -0.354398,
		35.663181, 36.327717, 38.787167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732983, 36.637203, 39.554745>,  <36.310745, 36.232220, 39.035244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732983, 36.637203, 39.554745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497524, 36.448380, 39.292248>,  <35.356247, 36.335083, 39.134750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497524, 36.448380, 39.292248>,  <35.732983, 36.637203, 39.554745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497524, 36.448380, 39.292248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676727, -0.156290, 0.719454,
		-0.442191, 0.867600, -0.227457,
		-0.588649, -0.472062, -0.656239,
		35.320930, 36.306763, 39.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071060, 36.875717, 39.595722>,  <35.732983, 36.637203, 39.554745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071060, 36.875717, 39.595722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990784, 36.518867, 39.433815>,  <34.942619, 36.304756, 39.336670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990784, 36.518867, 39.433815>,  <35.071060, 36.875717, 39.595722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990784, 36.518867, 39.433815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746911, -0.128018, 0.652484,
		-0.633914, 0.433275, -0.640645,
		-0.200691, -0.892123, -0.404770,
		34.930576, 36.251232, 39.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389626, 36.876720, 39.689430>,  <35.071060, 36.875717, 39.595722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389626, 36.876720, 39.689430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490864, 36.494324, 39.630081>,  <34.551609, 36.264885, 39.594471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490864, 36.494324, 39.630081>,  <34.389626, 36.876720, 39.689430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490864, 36.494324, 39.630081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666318, -0.283448, 0.689694,
		-0.701399, -0.075699, -0.708737,
		0.253099, -0.955995, -0.148371,
		34.566795, 36.207523, 39.585571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779079, 36.504517, 39.793201>,  <34.389626, 36.876720, 39.689430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779079, 36.504517, 39.793201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.064407, 36.225346, 39.818733>,  <34.235603, 36.057842, 39.834053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.064407, 36.225346, 39.818733>,  <33.779079, 36.504517, 39.793201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064407, 36.225346, 39.818733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452513, -0.389108, 0.802388,
		-0.535172, -0.601242, -0.593379,
		0.713318, -0.697928, 0.063830,
		34.278404, 36.015968, 39.837883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385136, 35.901283, 39.820812>,  <33.779079, 36.504517, 39.793201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385136, 35.901283, 39.820812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.754169, 35.818195, 39.950855>,  <33.975590, 35.768341, 40.028881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.754169, 35.818195, 39.950855>,  <33.385136, 35.901283, 39.820812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754169, 35.818195, 39.950855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385798, -0.499285, 0.775805,
		0.001169, -0.841169, -0.540770,
		0.922582, -0.207721, 0.325105,
		34.030945, 35.755878, 40.048386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618984, 35.165737, 39.717609>,  <33.385136, 35.901283, 39.820812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618984, 35.165737, 39.717609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848377, 35.301266, 40.015957>,  <33.986012, 35.382584, 40.194965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848377, 35.301266, 40.015957>,  <33.618984, 35.165737, 39.717609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848377, 35.301266, 40.015957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328635, -0.738847, 0.588307,
		0.750415, -0.582500, -0.312364,
		0.573478, 0.338820, 0.745871,
		34.020420, 35.402912, 40.239719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920570, 34.495327, 40.006798>,  <33.618984, 35.165737, 39.717609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920570, 34.495327, 40.006798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.995480, 34.781784, 40.275742>,  <34.040424, 34.953659, 40.437107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.995480, 34.781784, 40.275742>,  <33.920570, 34.495327, 40.006798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995480, 34.781784, 40.275742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146538, -0.656445, 0.740005,
		0.971316, -0.237110, -0.017994,
		0.187274, 0.716142, 0.672361,
		34.051662, 34.996628, 40.477451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492882, 34.239506, 40.397919>,  <33.920570, 34.495327, 40.006798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492882, 34.239506, 40.397919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284115, 34.496883, 40.621914>,  <34.158855, 34.651310, 40.756310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284115, 34.496883, 40.621914>,  <34.492882, 34.239506, 40.397919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284115, 34.496883, 40.621914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179226, -0.724555, 0.665506,
		0.833956, 0.246974, 0.493478,
		-0.521914, 0.643447, 0.559983,
		34.127541, 34.689919, 40.789909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571999, 34.014194, 41.038246>,  <34.492882, 34.239506, 40.397919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571999, 34.014194, 41.038246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267120, 34.265465, 41.100800>,  <34.084194, 34.416229, 41.138332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267120, 34.265465, 41.100800>,  <34.571999, 34.014194, 41.038246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267120, 34.265465, 41.100800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286935, -0.544374, 0.788242,
		0.580287, 0.555920, 0.595164,
		-0.762192, 0.628179, 0.156380,
		34.038464, 34.453918, 41.147713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611813, 34.327629, 41.719711>,  <34.571999, 34.014194, 41.038246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611813, 34.327629, 41.719711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224365, 34.341038, 41.621197>,  <33.991898, 34.349083, 41.562088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224365, 34.341038, 41.621197>,  <34.611813, 34.327629, 41.719711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224365, 34.341038, 41.621197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236851, -0.425022, 0.873646,
		-0.075389, 0.904562, 0.419624,
		-0.968617, 0.033525, -0.246288,
		33.933781, 34.351097, 41.547310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294479, 34.350224, 42.325851>,  <34.611813, 34.327629, 41.719711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294479, 34.350224, 42.325851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978287, 34.276478, 42.092216>,  <33.788570, 34.232231, 41.952038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978287, 34.276478, 42.092216>,  <34.294479, 34.350224, 42.325851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978287, 34.276478, 42.092216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504350, -0.345156, 0.791517,
		-0.347528, 0.920259, 0.179853,
		-0.790478, -0.184366, -0.584084,
		33.741142, 34.221169, 41.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655964, 34.403824, 42.760155>,  <34.294479, 34.350224, 42.325851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655964, 34.403824, 42.760155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491165, 34.227131, 42.441372>,  <33.392288, 34.121117, 42.250103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491165, 34.227131, 42.441372>,  <33.655964, 34.403824, 42.760155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491165, 34.227131, 42.441372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579993, -0.547435, 0.603260,
		-0.702759, 0.710767, -0.030660,
		-0.411993, -0.441729, -0.796955,
		33.367569, 34.094612, 42.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913006, 34.480160, 42.710838>,  <33.655964, 34.403824, 42.760155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913006, 34.480160, 42.710838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022221, 34.140324, 42.530327>,  <33.087749, 33.936424, 42.422020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022221, 34.140324, 42.530327>,  <32.913006, 34.480160, 42.710838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022221, 34.140324, 42.530327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556688, -0.522117, 0.646137,
		-0.784572, 0.074808, -0.615509,
		0.273032, -0.849587, -0.451283,
		33.104130, 33.885448, 42.394943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.154343, 34.210510, 42.395710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421829, 33.913128, 42.399433>,  <32.582321, 33.734699, 42.401669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421829, 33.913128, 42.399433>,  <32.154343, 34.210510, 42.395710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421829, 33.913128, 42.399433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488155, -0.429565, 0.759723,
		-0.560824, -0.512584, -0.650180,
		0.668716, -0.743459, 0.009310,
		32.622444, 33.690090, 42.402225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786516, 33.484138, 42.328827>,  <32.154343, 34.210510, 42.395710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786516, 33.484138, 42.328827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138493, 33.374584, 42.484100>,  <32.349678, 33.308849, 42.577263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138493, 33.374584, 42.484100>,  <31.786516, 33.484138, 42.328827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138493, 33.374584, 42.484100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472640, -0.587399, 0.656943,
		0.048091, -0.761543, -0.646327,
		0.879942, -0.273887, 0.388185,
		32.402473, 33.292419, 42.600555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756220, 32.746246, 42.476635>,  <31.786516, 33.484138, 42.328827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756220, 32.746246, 42.476635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069530, 32.845200, 42.704769>,  <32.257515, 32.904572, 42.841652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069530, 32.845200, 42.704769>,  <31.756220, 32.746246, 42.476635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069530, 32.845200, 42.704769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307724, -0.642863, 0.701450,
		0.540173, -0.724935, -0.427414,
		0.783275, 0.247379, 0.570337,
		32.304512, 32.919415, 42.875870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226994, 32.188431, 42.547279>,  <31.756220, 32.746246, 42.476635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226994, 32.188431, 42.547279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282520, 32.419495, 42.869034>,  <32.315838, 32.558132, 43.062088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282520, 32.419495, 42.869034>,  <32.226994, 32.188431, 42.547279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282520, 32.419495, 42.869034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339573, -0.735242, 0.586609,
		0.930280, -0.354579, 0.094094,
		0.138817, 0.577662, 0.804386,
		32.324165, 32.592793, 43.110348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439758, 31.738842, 43.038612>,  <32.226994, 32.188431, 42.547279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439758, 31.738842, 43.038612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344528, 32.061188, 43.255466>,  <32.287392, 32.254593, 43.385578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344528, 32.061188, 43.255466>,  <32.439758, 31.738842, 43.038612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344528, 32.061188, 43.255466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439239, -0.587172, 0.679925,
		0.866251, -0.076255, 0.493755,
		-0.238071, 0.805863, 0.542132,
		32.273106, 32.302948, 43.418106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673054, 31.544609, 43.726974>,  <32.439758, 31.738842, 43.038612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673054, 31.544609, 43.726974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397011, 31.834082, 43.724674>,  <32.231384, 32.007763, 43.723293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397011, 31.834082, 43.724674>,  <32.673054, 31.544609, 43.726974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397011, 31.834082, 43.724674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443724, -0.416840, 0.793318,
		0.571712, 0.550029, 0.608780,
		-0.690112, 0.723680, -0.005749,
		32.189976, 32.051186, 43.722950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582989, 31.707479, 44.372368>,  <32.673054, 31.544609, 43.726974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582989, 31.707479, 44.372368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229237, 31.844757, 44.245819>,  <32.016987, 31.927124, 44.169888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229237, 31.844757, 44.245819>,  <32.582989, 31.707479, 44.372368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229237, 31.844757, 44.245819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455607, -0.487336, 0.744933,
		0.101476, 0.802945, 0.587351,
		-0.884378, 0.343194, -0.316375,
		31.963923, 31.947716, 44.150906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195637, 31.797054, 44.958572>,  <32.582989, 31.707479, 44.372368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195637, 31.797054, 44.958572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922255, 31.783806, 44.666878>,  <31.758224, 31.775856, 44.491859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922255, 31.783806, 44.666878>,  <32.195637, 31.797054, 44.958572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922255, 31.783806, 44.666878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613772, -0.514725, 0.598617,
		-0.395184, 0.856716, 0.331464,
		-0.683457, -0.033121, -0.729239,
		31.717216, 31.773870, 44.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600828, 32.138798, 45.160717>,  <32.195637, 31.797054, 44.958572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600828, 32.138798, 45.160717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501211, 31.861780, 44.889908>,  <31.441441, 31.695570, 44.727421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501211, 31.861780, 44.889908>,  <31.600828, 32.138798, 45.160717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501211, 31.861780, 44.889908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586423, -0.448504, 0.674501,
		-0.770769, 0.565002, -0.294427,
		-0.249043, -0.692544, -0.677023,
		31.426498, 31.654016, 44.686802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986971, 31.940056, 45.421284>,  <31.600828, 32.138798, 45.160717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986971, 31.940056, 45.421284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024248, 31.647448, 45.151115>,  <31.046614, 31.471884, 44.989014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024248, 31.647448, 45.151115>,  <30.986971, 31.940056, 45.421284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024248, 31.647448, 45.151115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358773, -0.657474, 0.662578,
		-0.928761, 0.180575, -0.323722,
		0.093193, -0.731519, -0.675422,
		31.052206, 31.427992, 44.948490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336393, 31.650213, 45.283100>,  <30.986971, 31.940056, 45.421284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336393, 31.650213, 45.283100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596045, 31.356861, 45.202320>,  <30.751835, 31.180849, 45.153851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596045, 31.356861, 45.202320>,  <30.336393, 31.650213, 45.283100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596045, 31.356861, 45.202320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404874, -0.557859, 0.724479,
		-0.643981, -0.388514, -0.659049,
		0.649127, -0.733383, -0.201951,
		30.790783, 31.136847, 45.141735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058043, 30.960432, 45.144135>,  <30.336393, 31.650213, 45.283100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058043, 30.960432, 45.144135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.429993, 30.900743, 45.278633>,  <30.653164, 30.864931, 45.359333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.429993, 30.900743, 45.278633>,  <30.058043, 30.960432, 45.144135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429993, 30.900743, 45.278633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360892, -0.547221, 0.755187,
		0.071312, -0.823579, -0.562700,
		0.929877, -0.149220, 0.336247,
		30.708956, 30.855978, 45.379509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005306, 30.381222, 45.578831>,  <30.058043, 30.960432, 45.144135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005306, 30.381222, 45.578831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393974, 30.414150, 45.667450>,  <30.627174, 30.433907, 45.720623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393974, 30.414150, 45.667450>,  <30.005306, 30.381222, 45.578831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393974, 30.414150, 45.667450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115875, -0.651068, 0.750122,
		0.205993, -0.754542, -0.623083,
		0.971669, 0.082320, 0.221549,
		30.685474, 30.438847, 45.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379301, 29.669613, 45.780270>,  <30.005306, 30.381222, 45.578831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379301, 29.669613, 45.780270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620377, 29.949108, 45.934429>,  <30.765022, 30.116804, 46.026924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620377, 29.949108, 45.934429>,  <30.379301, 29.669613, 45.780270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620377, 29.949108, 45.934429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094026, -0.541790, 0.835238,
		0.792417, -0.467152, -0.392230,
		0.602689, 0.698737, 0.385399,
		30.801184, 30.158730, 46.050049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924297, 29.319735, 46.137863>,  <30.379301, 29.669613, 45.780270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924297, 29.319735, 46.137863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951233, 29.692381, 46.280727>,  <30.967394, 29.915968, 46.366444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951233, 29.692381, 46.280727>,  <30.924297, 29.319735, 46.137863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951233, 29.692381, 46.280727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269410, -0.361651, 0.892540,
		0.960668, 0.036118, -0.275340,
		0.067340, 0.931614, 0.357157,
		30.971436, 29.971865, 46.387875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527483, 29.326353, 46.468777>,  <30.924297, 29.319735, 46.137863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527483, 29.326353, 46.468777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.310997, 29.620213, 46.632423>,  <31.181107, 29.796528, 46.730614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.310997, 29.620213, 46.632423>,  <31.527483, 29.326353, 46.468777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310997, 29.620213, 46.632423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059568, -0.451818, 0.890119,
		0.838773, 0.506115, 0.200768,
		-0.541214, 0.734648, 0.409121,
		31.148632, 29.840607, 46.755161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847155, 29.397314, 47.155231>,  <31.527483, 29.326353, 46.468777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847155, 29.397314, 47.155231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.493618, 29.583559, 47.173256>,  <31.281496, 29.695305, 47.184071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.493618, 29.583559, 47.173256>,  <31.847155, 29.397314, 47.155231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493618, 29.583559, 47.173256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112654, -0.305361, 0.945549,
		0.454019, 0.830639, 0.322344,
		-0.883841, 0.465611, 0.045065,
		31.228466, 29.723242, 47.186775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813454, 29.796787, 47.836498>,  <31.847155, 29.397314, 47.155231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813454, 29.796787, 47.836498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.444530, 29.725739, 47.699211>,  <31.223177, 29.683109, 47.616840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.444530, 29.725739, 47.699211>,  <31.813454, 29.796787, 47.836498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444530, 29.725739, 47.699211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220575, -0.487294, 0.844921,
		-0.317326, 0.854982, 0.410256,
		-0.922307, -0.177623, -0.343219,
		31.167839, 29.672451, 47.596245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521877, 29.940243, 48.473537>,  <31.813454, 29.796787, 47.836498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521877, 29.940243, 48.473537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242943, 29.771400, 48.241829>,  <31.075583, 29.670095, 48.102806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242943, 29.771400, 48.241829>,  <31.521877, 29.940243, 48.473537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242943, 29.771400, 48.241829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399870, -0.441614, 0.803170,
		-0.594834, 0.791710, 0.139167,
		-0.697336, -0.422104, -0.579268,
		31.033743, 29.644770, 48.068050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848085, 30.057489, 48.726124>,  <31.521877, 29.940243, 48.473537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848085, 30.057489, 48.726124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795738, 29.728714, 48.504387>,  <30.764330, 29.531448, 48.371346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795738, 29.728714, 48.504387>,  <30.848085, 30.057489, 48.726124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795738, 29.728714, 48.504387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472322, -0.439921, 0.763794,
		-0.871656, 0.361783, -0.330648,
		-0.130868, -0.821939, -0.554338,
		30.756477, 29.482132, 48.338085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114382, 29.798677, 48.739399>,  <30.848085, 30.057489, 48.726124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114382, 29.798677, 48.739399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345446, 29.483513, 48.654072>,  <30.484083, 29.294415, 48.602875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345446, 29.483513, 48.654072>,  <30.114382, 29.798677, 48.739399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345446, 29.483513, 48.654072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494321, -0.545622, 0.676715,
		-0.649584, -0.285462, -0.704665,
		0.577657, -0.787913, -0.213317,
		30.518744, 29.247139, 48.590076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689682, 29.225433, 48.653759>,  <30.114382, 29.798677, 48.739399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689682, 29.225433, 48.653759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052240, 29.093918, 48.759850>,  <30.269775, 29.015009, 48.823505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052240, 29.093918, 48.759850>,  <29.689682, 29.225433, 48.653759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052240, 29.093918, 48.759850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416659, -0.592387, 0.689545,
		-0.069594, -0.735511, -0.673929,
		0.906395, -0.328787, 0.265231,
		30.324160, 28.995281, 48.839420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061575, 29.441595, 48.837868>,  <29.689682, 29.225433, 48.653759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061575, 29.441595, 48.837868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767401, 29.287760, 48.614716>,  <28.590897, 29.195459, 48.480824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767401, 29.287760, 48.614716>,  <29.061575, 29.441595, 48.837868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767401, 29.287760, 48.614716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356563, -0.480459, 0.801263,
		-0.576194, 0.788195, 0.216216,
		-0.735434, -0.384588, -0.557879,
		28.546770, 29.172384, 48.447353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447075, 29.764868, 49.050426>,  <29.061575, 29.441595, 48.837868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447075, 29.764868, 49.050426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516640, 29.385862, 48.943111>,  <28.558378, 29.158459, 48.878723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516640, 29.385862, 48.943111>,  <28.447075, 29.764868, 49.050426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516640, 29.385862, 48.943111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115559, -0.290190, 0.949966,
		-0.977957, -0.134207, -0.159961,
		0.173912, -0.947511, -0.268285,
		28.568813, 29.101608, 48.862625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657356, 29.924723, 48.335022>,  <28.447075, 29.764868, 49.050426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657356, 29.924723, 48.335022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265707, 30.004927, 48.348373>,  <28.030718, 30.053049, 48.356384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265707, 30.004927, 48.348373>,  <28.657356, 29.924723, 48.335022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265707, 30.004927, 48.348373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094932, -0.305874, -0.947327,
		-0.179737, -0.930719, 0.318523,
		-0.979123, 0.200508, 0.033378,
		27.971970, 30.065079, 48.358387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368851, 29.453867, 47.983948>,  <28.657356, 29.924723, 48.335022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368851, 29.453867, 47.983948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.075996, 29.725897, 47.999325>,  <27.900284, 29.889114, 48.008549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.075996, 29.725897, 47.999325>,  <28.368851, 29.453867, 47.983948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075996, 29.725897, 47.999325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145315, -0.100810, -0.984236,
		-0.665478, -0.726180, 0.172632,
		-0.732135, 0.680074, 0.038438,
		27.856356, 29.929918, 48.010857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852295, 29.195749, 47.576847>,  <28.368851, 29.453867, 47.983948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852295, 29.195749, 47.576847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.770176, 29.587002, 47.590183>,  <27.720905, 29.821753, 47.598183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.770176, 29.587002, 47.590183>,  <27.852295, 29.195749, 47.576847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770176, 29.587002, 47.590183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098668, 0.013204, -0.995033,
		-0.973713, -0.207568, 0.093800,
		-0.205298, 0.978132, 0.033337,
		27.708586, 29.880442, 47.600185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136940, 29.318611, 47.288067>,  <27.852295, 29.195749, 47.576847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136940, 29.318611, 47.288067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338266, 29.660582, 47.237827>,  <27.459063, 29.865765, 47.207684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338266, 29.660582, 47.237827>,  <27.136940, 29.318611, 47.288067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338266, 29.660582, 47.237827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209969, -0.019994, -0.977504,
		-0.838204, 0.518366, 0.169445,
		0.503316, 0.854925, -0.125599,
		27.489262, 29.917059, 47.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804342, 29.738081, 46.897163>,  <27.136940, 29.318611, 47.288067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804342, 29.738081, 46.897163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162296, 29.914867, 46.872349>,  <27.377068, 30.020939, 46.857460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162296, 29.914867, 46.872349>,  <26.804342, 29.738081, 46.897163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162296, 29.914867, 46.872349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146865, 0.160369, -0.976070,
		-0.421443, 0.882579, 0.208421,
		0.894884, 0.441968, -0.062033,
		27.430761, 30.047457, 46.853737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626114, 30.170214, 46.421886>,  <26.804342, 29.738081, 46.897163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626114, 30.170214, 46.421886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025496, 30.148384, 46.426121>,  <27.265125, 30.135286, 46.428661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025496, 30.148384, 46.426121>,  <26.626114, 30.170214, 46.421886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025496, 30.148384, 46.426121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015136, 0.083622, -0.996383,
		0.053492, 0.995002, 0.084319,
		0.998454, -0.054575, 0.010588,
		27.325031, 30.132011, 46.429298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748140, 30.465857, 45.696049>,  <26.626114, 30.170214, 46.421886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748140, 30.465857, 45.696049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.105984, 30.348400, 45.830776>,  <27.320690, 30.277925, 45.911613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.105984, 30.348400, 45.830776>,  <26.748140, 30.465857, 45.696049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105984, 30.348400, 45.830776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407066, 0.224627, -0.885347,
		0.184314, 0.929149, 0.320485,
		0.894609, -0.293641, 0.336823,
		27.374367, 30.260307, 45.931824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234154, 30.995234, 45.547977>,  <26.748140, 30.465857, 45.696049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234154, 30.995234, 45.547977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.446100, 30.657845, 45.583302>,  <27.573269, 30.455412, 45.604496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.446100, 30.657845, 45.583302>,  <27.234154, 30.995234, 45.547977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446100, 30.657845, 45.583302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399385, 0.156316, -0.903359,
		0.748153, 0.513928, 0.419696,
		0.529866, -0.843471, 0.088307,
		27.605061, 30.404802, 45.609795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971807, 31.207317, 45.427227>,  <27.234154, 30.995234, 45.547977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971807, 31.207317, 45.427227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.914501, 30.815929, 45.367805>,  <27.880117, 30.581097, 45.332153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.914501, 30.815929, 45.367805>,  <27.971807, 31.207317, 45.427227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914501, 30.815929, 45.367805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489061, 0.060499, -0.870149,
		0.860404, -0.197313, 0.469865,
		-0.143266, -0.978472, -0.148551,
		27.871521, 30.522388, 45.323238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703320, 30.963058, 45.331596>,  <27.971807, 31.207317, 45.427227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703320, 30.963058, 45.331596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446369, 30.701973, 45.170940>,  <28.292198, 30.545321, 45.074547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446369, 30.701973, 45.170940>,  <28.703320, 30.963058, 45.331596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446369, 30.701973, 45.170940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496587, 0.044675, -0.866836,
		0.583740, -0.756285, 0.295432,
		-0.642377, -0.652715, -0.401640,
		28.253656, 30.506159, 45.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140888, 30.557461, 44.946529>,  <28.703320, 30.963058, 45.331596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140888, 30.557461, 44.946529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.770588, 30.541277, 44.796143>,  <28.548409, 30.531567, 44.705910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.770588, 30.541277, 44.796143>,  <29.140888, 30.557461, 44.946529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770588, 30.541277, 44.796143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369311, 0.116805, -0.921936,
		0.081212, -0.992331, -0.093192,
		-0.925750, -0.040455, -0.375965,
		28.492863, 30.529139, 44.683353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134354, 29.977329, 44.577896>,  <29.140888, 30.557461, 44.946529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134354, 29.977329, 44.577896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867121, 30.241615, 44.441002>,  <28.706781, 30.400187, 44.358864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867121, 30.241615, 44.441002>,  <29.134354, 29.977329, 44.577896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867121, 30.241615, 44.441002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490164, 0.044738, -0.870481,
		-0.559829, -0.749302, -0.353748,
		-0.668080, 0.660715, -0.342235,
		28.666697, 30.439829, 44.338333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007006, 29.729269, 43.890526>,  <29.134354, 29.977329, 44.577896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007006, 29.729269, 43.890526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879143, 30.105978, 43.932255>,  <28.802425, 30.332003, 43.957294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879143, 30.105978, 43.932255>,  <29.007006, 29.729269, 43.890526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879143, 30.105978, 43.932255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370119, 0.225458, -0.901211,
		-0.872257, -0.249465, -0.420637,
		-0.319657, 0.941773, 0.104325,
		28.783245, 30.388510, 43.963551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945906, 29.976288, 43.123802>,  <29.007006, 29.729269, 43.890526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945906, 29.976288, 43.123802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944757, 30.295448, 43.364914>,  <28.944069, 30.486944, 43.509583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944757, 30.295448, 43.364914>,  <28.945906, 29.976288, 43.123802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944757, 30.295448, 43.364914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511863, 0.519002, -0.684568,
		-0.859062, 0.306574, -0.409908,
		-0.002872, 0.797903, 0.602779,
		28.943895, 30.534819, 43.545746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700487, 30.540636, 42.658409>,  <28.945906, 29.976288, 43.123802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700487, 30.540636, 42.658409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887144, 30.706177, 42.971069>,  <28.999138, 30.805502, 43.158665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887144, 30.706177, 42.971069>,  <28.700487, 30.540636, 42.658409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887144, 30.706177, 42.971069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419087, 0.674792, -0.607472,
		-0.778851, 0.611051, 0.141448,
		0.466644, 0.413851, 0.781646,
		29.027138, 30.830332, 43.205563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478561, 31.161661, 42.657810>,  <28.700487, 30.540636, 42.658409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478561, 31.161661, 42.657810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815266, 31.171793, 42.873512>,  <29.017288, 31.177872, 43.002934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815266, 31.171793, 42.873512>,  <28.478561, 31.161661, 42.657810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815266, 31.171793, 42.873512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300327, 0.808088, -0.506752,
		-0.448604, 0.588517, 0.672608,
		0.841759, 0.025329, 0.539259,
		29.067793, 31.179392, 43.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423620, 31.710922, 42.981319>,  <28.478561, 31.161661, 42.657810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423620, 31.710922, 42.981319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815489, 31.634764, 42.956047>,  <29.050610, 31.589069, 42.940884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815489, 31.634764, 42.956047>,  <28.423620, 31.710922, 42.981319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815489, 31.634764, 42.956047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133180, 0.852833, -0.504915,
		0.150018, 0.486237, 0.860853,
		0.979672, -0.190395, -0.063183,
		29.109390, 31.577644, 42.937092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746410, 32.309364, 43.115505>,  <28.423620, 31.710922, 42.981319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746410, 32.309364, 43.115505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047070, 32.098305, 42.957211>,  <29.227467, 31.971668, 42.862232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047070, 32.098305, 42.957211>,  <28.746410, 32.309364, 43.115505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047070, 32.098305, 42.957211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354017, 0.829002, -0.432928,
		0.556501, 0.185313, 0.809917,
		0.751650, -0.527650, -0.395737,
		29.272564, 31.940010, 42.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426931, 32.794304, 43.211483>,  <28.746410, 32.309364, 43.115505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426931, 32.794304, 43.211483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456009, 32.528454, 42.914028>,  <29.473455, 32.368946, 42.735558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456009, 32.528454, 42.914028>,  <29.426931, 32.794304, 43.211483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456009, 32.528454, 42.914028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248545, 0.734156, -0.631855,
		0.965889, -0.138893, 0.218558,
		0.072695, -0.664623, -0.743634,
		29.477818, 32.329067, 42.690937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924805, 33.094631, 42.816002>,  <29.426931, 32.794304, 43.211483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924805, 33.094631, 42.816002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762453, 32.821045, 42.573528>,  <29.665043, 32.656895, 42.428043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762453, 32.821045, 42.573528>,  <29.924805, 33.094631, 42.816002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762453, 32.821045, 42.573528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155395, 0.601966, -0.783256,
		0.900620, -0.412104, -0.138040,
		-0.405878, -0.683965, -0.606181,
		29.640690, 32.615856, 42.391674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.060520, 39.193172, 41.661404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934101, 39.402817, 41.345070>,  <42.858250, 39.528603, 41.155270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934101, 39.402817, 41.345070>,  <43.060520, 39.193172, 41.661404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934101, 39.402817, 41.345070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080368, -0.815775, -0.572758,
		-0.945333, -0.244577, 0.215702,
		-0.316048, 0.524112, -0.790836,
		42.839287, 39.560051, 41.107819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786613, 38.742859, 41.189011>,  <43.060520, 39.193172, 41.661404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786613, 38.742859, 41.189011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775608, 39.050709, 40.933849>,  <42.769005, 39.235420, 40.780754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775608, 39.050709, 40.933849>,  <42.786613, 38.742859, 41.189011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775608, 39.050709, 40.933849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015091, -0.637748, -0.770097,
		-0.999507, -0.030814, 0.005932,
		-0.027513, 0.769628, -0.637899,
		42.767353, 39.281597, 40.742481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311726, 38.696053, 40.582367>,  <42.786613, 38.742859, 41.189011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311726, 38.696053, 40.582367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578053, 38.962643, 40.448200>,  <42.737850, 39.122597, 40.367699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578053, 38.962643, 40.448200>,  <42.311726, 38.696053, 40.582367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578053, 38.962643, 40.448200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171007, -0.573897, -0.800874,
		-0.726253, 0.475877, -0.496082,
		0.665817, 0.666471, -0.335416,
		42.777798, 39.162582, 40.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104641, 38.776630, 39.930462>,  <42.311726, 38.696053, 40.582367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104641, 38.776630, 39.930462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486523, 38.895599, 39.934071>,  <42.715652, 38.966980, 39.936237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486523, 38.895599, 39.934071>,  <42.104641, 38.776630, 39.930462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486523, 38.895599, 39.934071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178129, -0.546955, -0.817992,
		-0.238357, 0.782546, -0.575159,
		0.954702, 0.297427, 0.009024,
		42.772934, 38.984829, 39.936779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137341, 38.983212, 39.366310>,  <42.104641, 38.776630, 39.930462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137341, 38.983212, 39.366310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520832, 38.928875, 39.466221>,  <42.750927, 38.896275, 39.526169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520832, 38.928875, 39.466221>,  <42.137341, 38.983212, 39.366310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520832, 38.928875, 39.466221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173494, -0.416497, -0.892429,
		0.225258, 0.898932, -0.375740,
		0.958728, -0.135838, 0.249778,
		42.808449, 38.888123, 39.541153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571884, 39.204304, 38.827259>,  <42.137341, 38.983212, 39.366310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571884, 39.204304, 38.827259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824387, 38.958157, 39.016083>,  <42.975887, 38.810467, 39.129375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824387, 38.958157, 39.016083>,  <42.571884, 39.204304, 38.827259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824387, 38.958157, 39.016083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309204, -0.358511, -0.880831,
		0.711276, 0.701988, -0.036036,
		0.631252, -0.615372, 0.472058,
		43.013763, 38.773544, 39.157700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178658, 39.187420, 38.421959>,  <42.571884, 39.204304, 38.827259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178658, 39.187420, 38.421959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212460, 38.850758, 38.635303>,  <43.232742, 38.648762, 38.763309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212460, 38.850758, 38.635303>,  <43.178658, 39.187420, 38.421959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212460, 38.850758, 38.635303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235764, -0.503190, -0.831393,
		0.968129, 0.196005, 0.155909,
		0.084505, -0.841654, 0.533364,
		43.237812, 38.598263, 38.795311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749733, 38.895020, 38.163643>,  <43.178658, 39.187420, 38.421959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749733, 38.895020, 38.163643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554054, 38.587669, 38.328709>,  <43.436646, 38.403259, 38.427750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554054, 38.587669, 38.328709>,  <43.749733, 38.895020, 38.163643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554054, 38.587669, 38.328709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343315, -0.604591, -0.718752,
		0.801761, -0.209938, 0.559558,
		-0.489197, -0.768372, 0.412663,
		43.407295, 38.357159, 38.452507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256214, 38.478352, 38.363300>,  <43.749733, 38.895020, 38.163643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256214, 38.478352, 38.363300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916187, 38.269703, 38.334194>,  <43.712170, 38.144516, 38.316730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916187, 38.269703, 38.334194>,  <44.256214, 38.478352, 38.363300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916187, 38.269703, 38.334194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429119, -0.605875, -0.669905,
		0.305349, -0.600691, 0.738872,
		-0.850070, -0.521619, -0.072764,
		43.661167, 38.113216, 38.312366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445251, 37.742733, 38.255123>,  <44.256214, 38.478352, 38.363300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445251, 37.742733, 38.255123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.055771, 37.728642, 38.165085>,  <43.822083, 37.720188, 38.111061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.055771, 37.728642, 38.165085>,  <44.445251, 37.742733, 38.255123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055771, 37.728642, 38.165085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166791, -0.783246, -0.598921,
		-0.155204, -0.620713, 0.768522,
		-0.973700, -0.035227, -0.225093,
		43.763660, 37.718075, 38.097557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330326, 37.071129, 38.307087>,  <44.445251, 37.742733, 38.255123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330326, 37.071129, 38.307087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035664, 37.220959, 38.081863>,  <43.858868, 37.310856, 37.946732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035664, 37.220959, 38.081863>,  <44.330326, 37.071129, 38.307087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035664, 37.220959, 38.081863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138371, -0.731496, -0.667658,
		-0.661958, -0.569746, 0.487032,
		-0.736658, 0.374571, -0.563056,
		43.814667, 37.333328, 37.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752365, 36.575951, 38.266903>,  <44.330326, 37.071129, 38.307087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752365, 36.575951, 38.266903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714848, 36.819412, 37.951752>,  <43.692337, 36.965488, 37.762661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714848, 36.819412, 37.951752>,  <43.752365, 36.575951, 38.266903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714848, 36.819412, 37.951752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050835, -0.793259, -0.606759,
		-0.994293, -0.016860, 0.105345,
		-0.093795, 0.608651, -0.787874,
		43.686710, 37.002007, 37.715389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308529, 36.255066, 37.817142>,  <43.752365, 36.575951, 38.266903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308529, 36.255066, 37.817142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469288, 36.519012, 37.563198>,  <43.565742, 36.677380, 37.410831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469288, 36.519012, 37.563198>,  <43.308529, 36.255066, 37.817142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469288, 36.519012, 37.563198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002065, -0.692667, -0.721255,
		-0.915682, 0.291183, -0.277019,
		0.401899, 0.659868, -0.634864,
		43.589859, 36.716972, 37.372738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974533, 36.064388, 37.172539>,  <43.308529, 36.255066, 37.817142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974533, 36.064388, 37.172539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311989, 36.269054, 37.107460>,  <43.514462, 36.391853, 37.068413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311989, 36.269054, 37.107460>,  <42.974533, 36.064388, 37.172539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311989, 36.269054, 37.107460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246190, -0.637929, -0.729683,
		-0.477143, 0.575536, -0.664149,
		0.843638, 0.511670, -0.162692,
		43.565079, 36.422554, 37.058651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034870, 36.272087, 36.312683>,  <42.974533, 36.064388, 37.172539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034870, 36.272087, 36.312683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.389839, 36.274891, 36.497047>,  <43.602821, 36.276573, 36.607666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.389839, 36.274891, 36.497047>,  <43.034870, 36.272087, 36.312683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389839, 36.274891, 36.497047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401900, -0.501436, -0.766184,
		0.225746, 0.865166, -0.447801,
		0.887420, 0.007008, 0.460908,
		43.656067, 36.276993, 36.635319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547371, 36.413132, 35.749950>,  <43.034870, 36.272087, 36.312683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547371, 36.413132, 35.749950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765560, 36.280861, 36.058006>,  <43.896473, 36.201500, 36.242840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765560, 36.280861, 36.058006>,  <43.547371, 36.413132, 35.749950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765560, 36.280861, 36.058006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494033, -0.615420, -0.614158,
		0.677045, 0.715480, -0.172330,
		0.545473, -0.330676, 0.770138,
		43.929203, 36.181660, 36.289047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270905, 36.476936, 35.524506>,  <43.547371, 36.413132, 35.749950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270905, 36.476936, 35.524506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248329, 36.195248, 35.807598>,  <44.234783, 36.026234, 35.977455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248329, 36.195248, 35.807598>,  <44.270905, 36.476936, 35.524506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248329, 36.195248, 35.807598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658842, -0.558878, -0.503570,
		0.750162, 0.437864, 0.495512,
		-0.056436, -0.704223, 0.707732,
		44.231400, 35.983982, 36.019917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891815, 36.144753, 35.433193>,  <44.270905, 36.476936, 35.524506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891815, 36.144753, 35.433193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684040, 35.897594, 35.669292>,  <44.559376, 35.749302, 35.810951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684040, 35.897594, 35.669292>,  <44.891815, 36.144753, 35.433193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684040, 35.897594, 35.669292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482685, -0.782159, -0.394009,
		0.705121, 0.080238, 0.704532,
		-0.519442, -0.617891, 0.590247,
		44.528206, 35.712227, 35.846367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326450, 35.758244, 35.819580>,  <44.891815, 36.144753, 35.433193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326450, 35.758244, 35.819580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997658, 35.532284, 35.790642>,  <44.800381, 35.396709, 35.773277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997658, 35.532284, 35.790642>,  <45.326450, 35.758244, 35.819580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997658, 35.532284, 35.790642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542676, -0.738369, -0.400392,
		0.172762, -0.368376, 0.913484,
		-0.821983, -0.564898, -0.072347,
		44.751064, 35.362816, 35.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547832, 34.986736, 35.948177>,  <45.326450, 35.758244, 35.819580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547832, 34.986736, 35.948177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195412, 34.948219, 35.762932>,  <44.983959, 34.925110, 35.651787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195412, 34.948219, 35.762932>,  <45.547832, 34.986736, 35.948177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195412, 34.948219, 35.762932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335880, -0.816733, -0.469183,
		-0.333058, -0.568925, 0.751929,
		-0.881055, -0.096293, -0.463109,
		44.931095, 34.919331, 35.624001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397797, 34.416225, 35.531452>,  <45.547832, 34.986736, 35.948177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397797, 34.416225, 35.531452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785770, 34.397633, 35.627003>,  <46.018555, 34.386475, 35.684334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785770, 34.397633, 35.627003>,  <45.397797, 34.416225, 35.531452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785770, 34.397633, 35.627003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242735, -0.114427, 0.963320,
		-0.017447, -0.992343, -0.122271,
		0.969936, -0.046487, 0.238880,
		46.076752, 34.383686, 35.698666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487537, 33.858105, 35.964687>,  <45.397797, 34.416225, 35.531452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487537, 33.858105, 35.964687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776817, 34.124535, 36.037704>,  <45.950386, 34.284393, 36.081512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776817, 34.124535, 36.037704>,  <45.487537, 33.858105, 35.964687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776817, 34.124535, 36.037704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162277, -0.093022, 0.982351,
		0.671298, -0.740062, 0.040814,
		0.723204, 0.666074, 0.182540,
		45.993778, 34.324356, 36.092468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800819, 33.613674, 36.604408>,  <45.487537, 33.858105, 35.964687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800819, 33.613674, 36.604408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.974579, 33.973743, 36.591801>,  <46.078835, 34.189785, 36.584236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.974579, 33.973743, 36.591801>,  <45.800819, 33.613674, 36.604408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974579, 33.973743, 36.591801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040590, 0.054525, 0.997687,
		0.899808, -0.432111, 0.060223,
		0.434395, 0.900171, -0.031522,
		46.104897, 34.243793, 36.582344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396809, 33.622879, 37.099884>,  <45.800819, 33.613674, 36.604408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396809, 33.622879, 37.099884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.313236, 34.011765, 37.057640>,  <46.263092, 34.245094, 37.032295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.313236, 34.011765, 37.057640>,  <46.396809, 33.622879, 37.099884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313236, 34.011765, 37.057640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130812, 0.079236, 0.988236,
		0.969143, 0.220284, 0.110622,
		-0.208927, 0.972212, -0.105606,
		46.250557, 34.303429, 37.025959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739311, 34.045628, 37.629261>,  <46.396809, 33.622879, 37.099884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739311, 34.045628, 37.629261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411587, 34.242508, 37.511635>,  <46.214951, 34.360634, 37.441059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411587, 34.242508, 37.511635>,  <46.739311, 34.045628, 37.629261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411587, 34.242508, 37.511635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192248, 0.247355, 0.949661,
		0.540160, 0.834599, -0.108036,
		-0.819309, 0.492199, -0.294061,
		46.165794, 34.390167, 37.423416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741055, 34.603115, 38.040672>,  <46.739311, 34.045628, 37.629261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741055, 34.603115, 38.040672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365143, 34.606522, 37.904007>,  <46.139595, 34.608566, 37.822006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365143, 34.606522, 37.904007>,  <46.741055, 34.603115, 38.040672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365143, 34.606522, 37.904007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321970, 0.313269, 0.893419,
		0.114642, 0.949626, -0.291662,
		-0.939783, 0.008517, -0.341665,
		46.083206, 34.609077, 37.801506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503624, 35.284851, 38.219639>,  <46.741055, 34.603115, 38.040672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503624, 35.284851, 38.219639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.171677, 35.072083, 38.152256>,  <45.972507, 34.944424, 38.111824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.171677, 35.072083, 38.152256>,  <46.503624, 35.284851, 38.219639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171677, 35.072083, 38.152256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400949, 0.358554, 0.843018,
		-0.388014, 0.767139, -0.510825,
		-0.829870, -0.531918, -0.168460,
		45.922714, 34.912506, 38.101719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944035, 35.749931, 38.438530>,  <46.503624, 35.284851, 38.219639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944035, 35.749931, 38.438530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.786472, 35.382278, 38.436264>,  <45.691936, 35.161686, 38.434902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.786472, 35.382278, 38.436264>,  <45.944035, 35.749931, 38.438530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786472, 35.382278, 38.436264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595935, 0.250692, 0.762899,
		-0.699785, 0.303887, -0.646493,
		-0.393906, -0.919133, -0.005667,
		45.668301, 35.106537, 38.434563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223282, 35.878437, 38.414761>,  <45.944035, 35.749931, 38.438530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223282, 35.878437, 38.414761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287178, 35.503613, 38.538956>,  <45.325516, 35.278717, 38.613472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287178, 35.503613, 38.538956>,  <45.223282, 35.878437, 38.414761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287178, 35.503613, 38.538956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735236, 0.096942, 0.670843,
		-0.658720, -0.335439, -0.673475,
		0.159739, -0.937061, 0.310485,
		45.335098, 35.222496, 38.632103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611118, 35.586342, 38.385223>,  <45.223282, 35.878437, 38.414761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611118, 35.586342, 38.385223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.826645, 35.388596, 38.658066>,  <44.955963, 35.269947, 38.821774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.826645, 35.388596, 38.658066>,  <44.611118, 35.586342, 38.385223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826645, 35.388596, 38.658066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743679, 0.101234, 0.660827,
		-0.395746, -0.863337, -0.313105,
		0.538820, -0.494369, 0.682109,
		44.988293, 35.240284, 38.862698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107662, 35.114613, 38.706329>,  <44.611118, 35.586342, 38.385223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107662, 35.114613, 38.706329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410301, 35.176388, 38.960480>,  <44.591885, 35.213455, 39.112968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410301, 35.176388, 38.960480>,  <44.107662, 35.114613, 38.706329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410301, 35.176388, 38.960480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633582, -0.067049, 0.770765,
		0.161640, -0.985724, 0.047123,
		0.756602, 0.154443, 0.635375,
		44.637283, 35.222721, 39.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030396, 34.694603, 39.336376>,  <44.107662, 35.114613, 38.706329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030396, 34.694603, 39.336376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304680, 34.960598, 39.454758>,  <44.469250, 35.120197, 39.525787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304680, 34.960598, 39.454758>,  <44.030396, 34.694603, 39.336376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304680, 34.960598, 39.454758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483019, 0.111550, 0.868475,
		0.544513, -0.738475, 0.397694,
		0.685710, 0.664990, 0.295956,
		44.510391, 35.160095, 39.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053192, 34.624870, 40.046608>,  <44.030396, 34.694603, 39.336376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053192, 34.624870, 40.046608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231171, 34.978508, 39.989464>,  <44.337955, 35.190689, 39.955177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231171, 34.978508, 39.989464>,  <44.053192, 34.624870, 40.046608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231171, 34.978508, 39.989464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404696, 0.340794, 0.848576,
		0.798903, -0.319754, 0.509422,
		0.444944, 0.884091, -0.142858,
		44.364655, 35.243736, 39.946606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368061, 34.792469, 40.758720>,  <44.053192, 34.624870, 40.046608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368061, 34.792469, 40.758720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343212, 35.130646, 40.546543>,  <44.328300, 35.333549, 40.419235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343212, 35.130646, 40.546543>,  <44.368061, 34.792469, 40.758720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343212, 35.130646, 40.546543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223488, 0.506194, 0.832959,
		0.972725, 0.170297, 0.157498,
		-0.062126, 0.845439, -0.530447,
		44.324574, 35.384277, 40.387409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753666, 35.372986, 41.093731>,  <44.368061, 34.792469, 40.758720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753666, 35.372986, 41.093731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475582, 35.549377, 40.866673>,  <44.308731, 35.655212, 40.730438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475582, 35.549377, 40.866673>,  <44.753666, 35.372986, 41.093731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475582, 35.549377, 40.866673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266541, 0.575259, 0.773326,
		0.667564, 0.688924, -0.282387,
		-0.695208, 0.440977, -0.567649,
		44.267021, 35.681671, 40.696377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840801, 35.981064, 41.355759>,  <44.753666, 35.372986, 41.093731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840801, 35.981064, 41.355759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488350, 36.013329, 41.169384>,  <44.276878, 36.032688, 41.057560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488350, 36.013329, 41.169384>,  <44.840801, 35.981064, 41.355759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488350, 36.013329, 41.169384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367181, 0.504184, 0.781650,
		0.297965, 0.859822, -0.414637,
		-0.881133, 0.080657, -0.465939,
		44.224010, 36.037525, 41.029602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552212, 36.650757, 41.473972>,  <44.840801, 35.981064, 41.355759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552212, 36.650757, 41.473972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223061, 36.441223, 41.385910>,  <44.025570, 36.315502, 41.333073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223061, 36.441223, 41.385910>,  <44.552212, 36.650757, 41.473972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223061, 36.441223, 41.385910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520618, 0.539819, 0.661477,
		-0.227662, 0.658931, -0.716924,
		-0.822877, -0.523836, -0.220156,
		43.976196, 36.284073, 41.319862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970818, 37.171352, 41.322517>,  <44.552212, 36.650757, 41.473972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970818, 37.171352, 41.322517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792419, 36.821152, 41.396908>,  <43.685379, 36.611031, 41.441540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792419, 36.821152, 41.396908>,  <43.970818, 37.171352, 41.322517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792419, 36.821152, 41.396908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619009, 0.451800, 0.642420,
		-0.646461, 0.171399, -0.743444,
		-0.445999, -0.875499, 0.185973,
		43.658619, 36.558502, 41.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245388, 37.116676, 41.027206>,  <43.970818, 37.171352, 41.322517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245388, 37.116676, 41.027206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251904, 36.849796, 41.325085>,  <43.255814, 36.689667, 41.503811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251904, 36.849796, 41.325085>,  <43.245388, 37.116676, 41.027206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251904, 36.849796, 41.325085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751186, 0.483384, 0.449511,
		-0.659890, -0.566729, -0.493318,
		0.016289, -0.667201, 0.744699,
		43.256790, 36.649635, 41.548496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580376, 37.079544, 41.257484>,  <43.245388, 37.116676, 41.027206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580376, 37.079544, 41.257484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770985, 36.898197, 41.558784>,  <42.885349, 36.789391, 41.739567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770985, 36.898197, 41.558784>,  <42.580376, 37.079544, 41.257484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770985, 36.898197, 41.558784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583651, 0.477611, 0.656689,
		-0.657482, -0.752560, -0.037018,
		0.476517, -0.453367, 0.753253,
		42.913940, 36.762188, 41.784760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044563, 36.887016, 41.723785>,  <42.580376, 37.079544, 41.257484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044563, 36.887016, 41.723785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384071, 36.918076, 41.932995>,  <42.587776, 36.936710, 42.058521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384071, 36.918076, 41.932995>,  <42.044563, 36.887016, 41.723785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384071, 36.918076, 41.932995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479264, 0.530815, 0.698957,
		-0.223356, -0.843923, 0.487755,
		0.848774, 0.077647, 0.523023,
		42.638702, 36.941368, 42.089901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849449, 36.732590, 42.353809>,  <42.044563, 36.887016, 41.723785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849449, 36.732590, 42.353809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177685, 36.956348, 42.400654>,  <42.374626, 37.090603, 42.428761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177685, 36.956348, 42.400654>,  <41.849449, 36.732590, 42.353809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177685, 36.956348, 42.400654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454375, 0.514247, 0.727388,
		0.346675, -0.650096, 0.676160,
		0.820585, 0.559398, 0.117111,
		42.423859, 37.124168, 42.435787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.274044, 35.863949, 41.473183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189781, 35.606644, 41.178745>,  <34.139221, 35.452259, 41.002083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189781, 35.606644, 41.178745>,  <34.274044, 35.863949, 41.473183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189781, 35.606644, 41.178745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500915, 0.575592, -0.646357,
		0.839468, -0.504884, 0.200965,
		-0.210661, -0.643262, -0.736095,
		34.126583, 35.413666, 40.957916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837860, 35.753883, 41.111904>,  <34.274044, 35.863949, 41.473183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837860, 35.753883, 41.111904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556877, 35.655117, 40.844894>,  <34.388287, 35.595856, 40.684689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556877, 35.655117, 40.844894>,  <34.837860, 35.753883, 41.111904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556877, 35.655117, 40.844894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561645, 0.383760, -0.732996,
		0.437160, -0.889808, -0.130892,
		-0.702457, -0.246922, -0.667521,
		34.346138, 35.581039, 40.644638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243938, 35.601131, 40.552776>,  <34.837860, 35.753883, 41.111904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243938, 35.601131, 40.552776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873905, 35.628563, 40.403370>,  <34.651886, 35.645023, 40.313725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873905, 35.628563, 40.403370>,  <35.243938, 35.601131, 40.552776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873905, 35.628563, 40.403370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379516, 0.202327, -0.902791,
		0.013659, -0.976914, -0.213197,
		-0.925084, 0.068581, -0.373518,
		34.596378, 35.649136, 40.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241310, 35.155174, 39.970745>,  <35.243938, 35.601131, 40.552776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241310, 35.155174, 39.970745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922352, 35.385746, 39.899323>,  <34.730976, 35.524090, 39.856468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922352, 35.385746, 39.899323>,  <35.241310, 35.155174, 39.970745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922352, 35.385746, 39.899323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353899, 0.207041, -0.912080,
		-0.488784, -0.790481, -0.369093,
		-0.797399, 0.576432, -0.178553,
		34.683132, 35.558674, 39.845757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926491, 34.996498, 39.257000>,  <35.241310, 35.155174, 39.970745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926491, 34.996498, 39.257000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 35.360909, 39.373798>,  <34.740150, 35.579556, 39.443878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 35.360909, 39.373798>,  <34.926491, 34.996498, 39.257000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810028, 35.360909, 39.373798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199148, 0.356248, -0.912923,
		-0.935718, -0.207654, -0.285153,
		-0.291157, 0.911026, 0.291993,
		34.722679, 35.634216, 39.461395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576096, 35.194416, 38.665405>,  <34.926491, 34.996498, 39.257000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576096, 35.194416, 38.665405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689964, 35.514400, 38.876698>,  <34.758286, 35.706390, 39.003471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689964, 35.514400, 38.876698>,  <34.576096, 35.194416, 38.665405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689964, 35.514400, 38.876698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405261, 0.398940, -0.822563,
		-0.868749, 0.448234, -0.210624,
		0.284675, 0.799958, 0.528230,
		34.775368, 35.754387, 39.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543480, 35.726124, 38.278015>,  <34.576096, 35.194416, 38.665405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543480, 35.726124, 38.278015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799191, 35.902584, 38.529957>,  <34.952618, 36.008461, 38.681122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799191, 35.902584, 38.529957>,  <34.543480, 35.726124, 38.278015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799191, 35.902584, 38.529957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548808, 0.311995, -0.775544,
		-0.538642, 0.841454, -0.042656,
		0.639277, 0.441151, 0.629850,
		34.990974, 36.034927, 38.718910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679844, 36.335529, 37.984070>,  <34.543480, 35.726124, 38.278015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679844, 36.335529, 37.984070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963573, 36.336334, 38.266022>,  <35.133812, 36.336815, 38.435192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963573, 36.336334, 38.266022>,  <34.679844, 36.335529, 37.984070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963573, 36.336334, 38.266022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643169, 0.407333, -0.648393,
		-0.288422, 0.913277, 0.287641,
		0.709328, 0.002009, 0.704876,
		35.176373, 36.336937, 38.477486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986038, 37.008724, 38.010754>,  <34.679844, 36.335529, 37.984070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986038, 37.008724, 38.010754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233940, 36.713093, 38.116333>,  <35.382679, 36.535713, 38.179680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233940, 36.713093, 38.116333>,  <34.986038, 37.008724, 38.010754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233940, 36.713093, 38.116333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545630, 0.164037, -0.821815,
		0.564090, 0.653339, 0.504927,
		0.619750, -0.739081, 0.263949,
		35.419865, 36.491367, 38.195518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609962, 37.395836, 37.980942>,  <34.986038, 37.008724, 38.010754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609962, 37.395836, 37.980942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720188, 37.011379, 37.987526>,  <35.786324, 36.780704, 37.991478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720188, 37.011379, 37.987526>,  <35.609962, 37.395836, 37.980942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720188, 37.011379, 37.987526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627987, 0.167025, -0.760089,
		0.727803, 0.219791, 0.649611,
		0.275562, -0.961142, 0.016465,
		35.802856, 36.723038, 37.992466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296860, 37.410408, 37.949787>,  <35.609962, 37.395836, 37.980942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296860, 37.410408, 37.949787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207012, 37.037357, 37.836826>,  <36.153103, 36.813526, 37.769051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207012, 37.037357, 37.836826>,  <36.296860, 37.410408, 37.949787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207012, 37.037357, 37.836826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725797, 0.033251, -0.687105,
		0.650204, -0.359302, 0.669430,
		-0.224619, -0.932629, -0.282400,
		36.139626, 36.757568, 37.752106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945103, 37.157070, 37.906746>,  <36.296860, 37.410408, 37.949787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945103, 37.157070, 37.906746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712791, 36.926327, 37.676987>,  <36.573406, 36.787880, 37.539131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712791, 36.926327, 37.676987>,  <36.945103, 37.157070, 37.906746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712791, 36.926327, 37.676987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723765, -0.042908, -0.688711,
		0.372640, -0.815719, 0.442427,
		-0.580778, -0.576854, -0.574400,
		36.538559, 36.753269, 37.504665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194901, 36.438107, 37.719635>,  <36.945103, 37.157070, 37.906746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194901, 36.438107, 37.719635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954136, 36.569756, 37.428600>,  <36.809677, 36.648746, 37.253979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954136, 36.569756, 37.428600>,  <37.194901, 36.438107, 37.719635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954136, 36.569756, 37.428600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764941, -0.023963, -0.643655,
		-0.229278, -0.943982, -0.237337,
		-0.601912, 0.329125, -0.727585,
		36.773563, 36.668491, 37.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521576, 36.177341, 37.057434>,  <37.194901, 36.438107, 37.719635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521576, 36.177341, 37.057434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292957, 36.494362, 36.972389>,  <37.155785, 36.684574, 36.921364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292957, 36.494362, 36.972389>,  <37.521576, 36.177341, 37.057434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292957, 36.494362, 36.972389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766557, 0.423241, -0.482968,
		-0.292792, -0.439014, -0.849435,
		-0.571546, 0.792549, -0.212608,
		37.121494, 36.732128, 36.908607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081615, 35.723213, 37.128868>,  <37.521576, 36.177341, 37.057434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081615, 35.723213, 37.128868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412903, 35.525738, 37.022793>,  <38.611675, 35.407253, 36.959148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412903, 35.525738, 37.022793>,  <38.081615, 35.723213, 37.128868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412903, 35.525738, 37.022793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296846, -0.787851, 0.539605,
		-0.475326, -0.368190, -0.799062,
		0.828219, -0.493687, -0.265190,
		38.661369, 35.377632, 36.943237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792103, 35.083649, 36.878944>,  <38.081615, 35.723213, 37.128868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792103, 35.083649, 36.878944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167835, 35.028957, 37.004776>,  <38.393276, 34.996143, 37.080276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167835, 35.028957, 37.004776>,  <37.792103, 35.083649, 36.878944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167835, 35.028957, 37.004776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298932, -0.776061, 0.555309,
		0.168210, -0.615658, -0.769851,
		0.939332, -0.136724, 0.314581,
		38.449635, 34.987942, 37.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983711, 34.299252, 36.689293>,  <37.792103, 35.083649, 36.878944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983711, 34.299252, 36.689293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241390, 34.432018, 36.964928>,  <38.395996, 34.511681, 37.130310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241390, 34.432018, 36.964928>,  <37.983711, 34.299252, 36.689293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241390, 34.432018, 36.964928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258150, -0.753711, 0.604382,
		0.719978, -0.567229, -0.399854,
		0.644198, 0.331920, 0.689085,
		38.434650, 34.531593, 37.171654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099373, 33.652348, 36.865673>,  <37.983711, 34.299252, 36.689293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099373, 33.652348, 36.865673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235859, 33.905972, 37.143242>,  <38.317753, 34.058147, 37.309784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235859, 33.905972, 37.143242>,  <38.099373, 33.652348, 36.865673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235859, 33.905972, 37.143242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226673, -0.660941, 0.715385,
		0.912244, -0.401397, -0.081800,
		0.341219, 0.634064, 0.693926,
		38.338226, 34.096191, 37.351421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551979, 33.257271, 37.289726>,  <38.099373, 33.652348, 36.865673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551979, 33.257271, 37.289726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426109, 33.589428, 37.473648>,  <38.350586, 33.788723, 37.584000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426109, 33.589428, 37.473648>,  <38.551979, 33.257271, 37.289726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426109, 33.589428, 37.473648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132936, -0.518195, 0.844868,
		0.939843, 0.204737, 0.273454,
		-0.314679, 0.830395, 0.459805,
		38.331707, 33.838547, 37.611591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803265, 33.154652, 37.944412>,  <38.551979, 33.257271, 37.289726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803265, 33.154652, 37.944412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527344, 33.443928, 37.958057>,  <38.361790, 33.617493, 37.966244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527344, 33.443928, 37.958057>,  <38.803265, 33.154652, 37.944412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527344, 33.443928, 37.958057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254696, -0.286500, 0.923606,
		0.677715, 0.628420, 0.381824,
		-0.689805, 0.723191, 0.034109,
		38.320404, 33.660885, 37.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879330, 33.458546, 38.565201>,  <38.803265, 33.154652, 37.944412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879330, 33.458546, 38.565201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495800, 33.504871, 38.461472>,  <38.265682, 33.532665, 38.399235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495800, 33.504871, 38.461472>,  <38.879330, 33.458546, 38.565201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495800, 33.504871, 38.461472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280828, -0.250444, 0.926506,
		0.042353, 0.961180, 0.272654,
		-0.958823, 0.115810, -0.259319,
		38.208153, 33.539616, 38.383675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452354, 33.808720, 39.090260>,  <38.879330, 33.458546, 38.565201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452354, 33.808720, 39.090260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149918, 33.664467, 38.871803>,  <37.968456, 33.577915, 38.740730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149918, 33.664467, 38.871803>,  <38.452354, 33.808720, 39.090260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149918, 33.664467, 38.871803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458690, -0.303239, 0.835254,
		-0.466834, 0.882036, 0.063855,
		-0.756088, -0.360636, -0.546144,
		37.923092, 33.556274, 38.707962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824974, 33.797897, 39.579464>,  <38.452354, 33.808720, 39.090260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824974, 33.797897, 39.579464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666500, 33.611061, 39.263268>,  <37.571415, 33.498959, 39.073551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666500, 33.611061, 39.263268>,  <37.824974, 33.797897, 39.579464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666500, 33.611061, 39.263268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646920, -0.468945, 0.601320,
		-0.651564, 0.749613, -0.116381,
		-0.396181, -0.467088, -0.790487,
		37.547646, 33.470936, 39.026123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152225, 33.986290, 39.631340>,  <37.824974, 33.797897, 39.579464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152225, 33.986290, 39.631340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234333, 33.638126, 39.452339>,  <37.283600, 33.429230, 39.344940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234333, 33.638126, 39.452339>,  <37.152225, 33.986290, 39.631340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234333, 33.638126, 39.452339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656951, -0.461461, 0.596212,
		-0.725451, 0.171601, -0.666539,
		0.205271, -0.870406, -0.447501,
		37.295914, 33.377003, 39.318089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524151, 33.532433, 39.670895>,  <37.152225, 33.986290, 39.631340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524151, 33.532433, 39.670895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785393, 33.239506, 39.593777>,  <36.942139, 33.063747, 39.547508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785393, 33.239506, 39.593777>,  <36.524151, 33.532433, 39.670895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785393, 33.239506, 39.593777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471587, -0.592508, 0.653100,
		-0.592508, -0.335622, -0.732320,
		-0.653100, 0.732320, 0.192791,
		36.981323, 33.019810, 39.535938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142162, 32.947651, 39.480446>,  <36.524151, 33.532433, 39.670895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142162, 32.947651, 39.480446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493778, 32.798660, 39.599480>,  <36.704746, 32.709267, 39.670898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493778, 32.798660, 39.599480>,  <36.142162, 32.947651, 39.480446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493778, 32.798660, 39.599480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476675, -0.698178, 0.534161,
		0.008803, -0.611398, -0.791275,
		0.879035, -0.372479, 0.297584,
		36.757488, 32.686916, 39.688755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999153, 32.263126, 39.645725>,  <36.142162, 32.947651, 39.480446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999153, 32.263126, 39.645725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365078, 32.299679, 39.803085>,  <36.584633, 32.321609, 39.897503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365078, 32.299679, 39.803085>,  <35.999153, 32.263126, 39.645725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365078, 32.299679, 39.803085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306621, -0.476846, 0.823772,
		0.262866, -0.874224, -0.408207,
		0.914814, 0.091377, 0.393402,
		36.639523, 32.327091, 39.921104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287895, 31.601339, 39.793415>,  <35.999153, 32.263126, 39.645725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287895, 31.601339, 39.793415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482239, 31.843815, 40.045280>,  <36.598846, 31.989300, 40.196400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482239, 31.843815, 40.045280>,  <36.287895, 31.601339, 39.793415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482239, 31.843815, 40.045280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271812, -0.579894, 0.768011,
		0.830698, -0.544295, -0.116978,
		0.485859, 0.606189, 0.629663,
		36.627998, 32.025673, 40.234180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097912, 31.131613, 39.338352>,  <36.287895, 31.601339, 39.793415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097912, 31.131613, 39.338352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718739, 31.058167, 39.234268>,  <35.491234, 31.014099, 39.171818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718739, 31.058167, 39.234268>,  <36.097912, 31.131613, 39.338352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718739, 31.058167, 39.234268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191809, 0.323062, -0.926736,
		0.254228, -0.928394, -0.271021,
		-0.947933, -0.183617, -0.260206,
		35.434361, 31.003080, 39.156208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145370, 30.616590, 38.831161>,  <36.097912, 31.131613, 39.338352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145370, 30.616590, 38.831161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820557, 30.847824, 38.799122>,  <35.625668, 30.986565, 38.779896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820557, 30.847824, 38.799122>,  <36.145370, 30.616590, 38.831161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820557, 30.847824, 38.799122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285371, 0.273585, -0.918539,
		-0.509079, -0.768745, -0.387130,
		-0.812036, 0.578085, -0.080101,
		35.576946, 31.021250, 38.775093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113026, 30.758766, 38.104359>,  <36.145370, 30.616590, 38.831161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113026, 30.758766, 38.104359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821507, 30.999128, 38.235668>,  <35.646595, 31.143345, 38.314453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821507, 30.999128, 38.235668>,  <36.113026, 30.758766, 38.104359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821507, 30.999128, 38.235668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060682, 0.534217, -0.843167,
		-0.682030, -0.594581, -0.425802,
		-0.728802, 0.600904, 0.328272,
		35.602867, 31.179399, 38.334148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717999, 30.792828, 37.547596>,  <36.113026, 30.758766, 38.104359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717999, 30.792828, 37.547596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608322, 31.106750, 37.769913>,  <35.542519, 31.295105, 37.903301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608322, 31.106750, 37.769913>,  <35.717999, 30.792828, 37.547596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608322, 31.106750, 37.769913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144160, 0.604949, -0.783106,
		-0.950809, -0.134596, -0.279008,
		-0.274189, 0.784807, 0.555787,
		35.526066, 31.342192, 37.936649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206192, 31.237371, 37.181404>,  <35.717999, 30.792828, 37.547596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206192, 31.237371, 37.181404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348942, 31.487913, 37.458626>,  <35.434589, 31.638239, 37.624958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348942, 31.487913, 37.458626>,  <35.206192, 31.237371, 37.181404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348942, 31.487913, 37.458626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053210, 0.754329, -0.654337,
		-0.932637, 0.196637, 0.302527,
		0.356871, 0.626356, 0.693052,
		35.456001, 31.675819, 37.666542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757034, 31.781656, 37.154816>,  <35.206192, 31.237371, 37.181404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757034, 31.781656, 37.154816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102245, 31.923573, 37.298656>,  <35.309372, 32.008720, 37.384960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102245, 31.923573, 37.298656>,  <34.757034, 31.781656, 37.154816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102245, 31.923573, 37.298656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065805, 0.626832, -0.776371,
		-0.500858, 0.693690, 0.517624,
		0.863024, 0.354789, 0.359602,
		35.361153, 32.030010, 37.406536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768665, 32.488846, 37.059162>,  <34.757034, 31.781656, 37.154816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768665, 32.488846, 37.059162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156303, 32.408501, 37.116455>,  <35.388885, 32.360294, 37.150829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156303, 32.408501, 37.116455>,  <34.768665, 32.488846, 37.059162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156303, 32.408501, 37.116455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246596, 0.772199, -0.585576,
		0.007018, 0.602798, 0.797863,
		0.969093, -0.200860, 0.143228,
		35.447033, 32.348244, 37.159424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937469, 33.079742, 37.051281>,  <34.768665, 32.488846, 37.059162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937469, 33.079742, 37.051281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276669, 32.876026, 36.992592>,  <35.480186, 32.753796, 36.957378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276669, 32.876026, 36.992592>,  <34.937469, 33.079742, 37.051281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276669, 32.876026, 36.992592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336248, 0.730949, -0.593845,
		0.409689, 0.454241, 0.791088,
		0.847993, -0.509293, -0.146724,
		35.531067, 32.723240, 36.948574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431622, 33.593014, 37.096561>,  <34.937469, 33.079742, 37.051281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431622, 33.593014, 37.096561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580528, 33.293980, 36.876549>,  <35.669872, 33.114559, 36.744541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580528, 33.293980, 36.876549>,  <35.431622, 33.593014, 37.096561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580528, 33.293980, 36.876549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516652, 0.659235, -0.546334,
		0.771032, -0.080795, 0.631650,
		0.372265, -0.747584, -0.550034,
		35.692207, 33.069706, 36.711540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143234, 33.675648, 37.133446>,  <35.431622, 33.593014, 37.096561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143234, 33.675648, 37.133446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070168, 33.463943, 36.802021>,  <36.026325, 33.336922, 36.603165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070168, 33.463943, 36.802021>,  <36.143234, 33.675648, 37.133446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070168, 33.463943, 36.802021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442590, 0.708256, -0.549990,
		0.877922, -0.467179, 0.104869,
		-0.182669, -0.529262, -0.828562,
		36.015366, 33.305164, 36.553452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755856, 33.832706, 36.755299>,  <36.143234, 33.675648, 37.133446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755856, 33.832706, 36.755299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477356, 33.677032, 36.514046>,  <36.310257, 33.583626, 36.369293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477356, 33.677032, 36.514046>,  <36.755856, 33.832706, 36.755299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477356, 33.677032, 36.514046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345496, 0.554813, -0.756846,
		0.629181, -0.735333, -0.251825,
		-0.696249, -0.389189, -0.603133,
		36.268482, 33.560276, 36.333107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123402, 33.541561, 36.119419>,  <36.755856, 33.832706, 36.755299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123402, 33.541561, 36.119419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747623, 33.649109, 36.034431>,  <36.522156, 33.713638, 35.983437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747623, 33.649109, 36.034431>,  <37.123402, 33.541561, 36.119419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747623, 33.649109, 36.034431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333821, 0.577854, -0.744747,
		-0.077466, -0.770579, -0.632619,
		-0.939448, 0.268874, -0.212471,
		36.465790, 33.729771, 35.970692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.627544, 28.646915, 41.994091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.314278, 28.890732, 41.944931>,  <34.126316, 29.037022, 41.915436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.314278, 28.890732, 41.944931>,  <34.627544, 28.646915, 41.994091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314278, 28.890732, 41.944931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396745, 0.337652, -0.853572,
		-0.478787, -0.717253, -0.506271,
		-0.783171, 0.609540, -0.122904,
		34.079327, 29.073593, 41.908058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381710, 28.561808, 41.238487>,  <34.627544, 28.646915, 41.994091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381710, 28.561808, 41.238487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212559, 28.903913, 41.358284>,  <34.111069, 29.109177, 41.430161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212559, 28.903913, 41.358284>,  <34.381710, 28.561808, 41.238487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212559, 28.903913, 41.358284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309323, 0.446881, -0.839414,
		-0.851757, -0.262335, -0.453531,
		-0.422882, 0.855265, 0.299488,
		34.085693, 29.160492, 41.448132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994545, 28.780600, 40.677498>,  <34.381710, 28.561808, 41.238487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994545, 28.780600, 40.677498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066010, 29.104450, 40.901134>,  <34.108887, 29.298761, 41.035316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066010, 29.104450, 40.901134>,  <33.994545, 28.780600, 40.677498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066010, 29.104450, 40.901134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270435, 0.505940, -0.819078,
		-0.946015, 0.297536, -0.128559,
		0.178662, 0.809628, 0.559091,
		34.119610, 29.347338, 41.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785137, 29.325935, 40.268452>,  <33.994545, 28.780600, 40.677498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785137, 29.325935, 40.268452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031235, 29.483482, 40.541611>,  <34.178894, 29.578011, 40.705505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031235, 29.483482, 40.541611>,  <33.785137, 29.325935, 40.268452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031235, 29.483482, 40.541611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462736, 0.520887, -0.717323,
		-0.638240, 0.757328, 0.138216,
		0.615244, 0.393866, 0.682894,
		34.215809, 29.601643, 40.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771221, 30.115700, 40.187267>,  <33.785137, 29.325935, 40.268452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771221, 30.115700, 40.187267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101635, 30.013147, 40.388039>,  <34.299885, 29.951616, 40.508503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101635, 30.013147, 40.388039>,  <33.771221, 30.115700, 40.187267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101635, 30.013147, 40.388039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541327, 0.608874, -0.579860,
		-0.156947, 0.750693, 0.641738,
		0.826034, -0.256383, 0.501932,
		34.349445, 29.936232, 40.538620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035892, 30.645826, 40.363636>,  <33.771221, 30.115700, 40.187267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035892, 30.645826, 40.363636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352566, 30.401525, 40.369507>,  <34.542568, 30.254944, 40.373028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352566, 30.401525, 40.369507>,  <34.035892, 30.645826, 40.363636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352566, 30.401525, 40.369507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485717, 0.614673, -0.621495,
		0.370560, 0.499156, 0.783281,
		0.791684, -0.610754, 0.014676,
		34.590073, 30.218300, 40.373909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582909, 31.098305, 40.545715>,  <34.035892, 30.645826, 40.363636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582909, 31.098305, 40.545715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711445, 30.771870, 40.353573>,  <34.788567, 30.576008, 40.238289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711445, 30.771870, 40.353573>,  <34.582909, 31.098305, 40.545715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711445, 30.771870, 40.353573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548243, 0.573925, -0.608309,
		0.772121, -0.067877, 0.631840,
		0.321339, -0.816090, -0.480353,
		34.807846, 30.527042, 40.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084717, 31.291954, 40.317818>,  <34.582909, 31.098305, 40.545715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084717, 31.291954, 40.317818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.055336, 30.965742, 40.088203>,  <35.037708, 30.770016, 39.950436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.055336, 30.965742, 40.088203>,  <35.084717, 31.291954, 40.317818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055336, 30.965742, 40.088203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564402, 0.440554, -0.698114,
		0.822225, -0.375267, 0.427926,
		-0.073455, -0.815529, -0.574036,
		35.033298, 30.721083, 39.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686146, 31.125940, 40.085590>,  <35.084717, 31.291954, 40.317818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686146, 31.125940, 40.085590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435097, 30.976896, 39.812168>,  <35.284466, 30.887470, 39.648113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435097, 30.976896, 39.812168>,  <35.686146, 31.125940, 40.085590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435097, 30.976896, 39.812168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430487, 0.565476, -0.703503,
		0.648669, -0.735797, -0.194502,
		-0.627622, -0.372610, -0.683558,
		35.246811, 30.865114, 39.607101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422020, 31.220413, 40.460823>,  <35.686146, 31.125940, 40.085590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422020, 31.220413, 40.460823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531139, 31.591282, 40.563530>,  <36.596611, 31.813803, 40.625153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531139, 31.591282, 40.563530>,  <36.422020, 31.220413, 40.460823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531139, 31.591282, 40.563530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096547, -0.239160, 0.966168,
		0.957214, -0.288361, 0.024273,
		0.272800, 0.927173, 0.256768,
		36.612980, 31.869434, 40.640560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957726, 31.219042, 40.941479>,  <36.422020, 31.220413, 40.460823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957726, 31.219042, 40.941479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.776882, 31.563261, 41.035339>,  <36.668377, 31.769793, 41.091656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.776882, 31.563261, 41.035339>,  <36.957726, 31.219042, 40.941479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776882, 31.563261, 41.035339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169134, -0.341007, 0.924720,
		0.875782, 0.378384, 0.299719,
		-0.452105, 0.860546, 0.234651,
		36.641251, 31.821424, 41.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279278, 31.545918, 41.505642>,  <36.957726, 31.219042, 40.941479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279278, 31.545918, 41.505642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896034, 31.660341, 41.500103>,  <36.666088, 31.728996, 41.496780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896034, 31.660341, 41.500103>,  <37.279278, 31.545918, 41.505642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896034, 31.660341, 41.500103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078973, -0.217407, 0.972881,
		0.275293, 0.933222, 0.230891,
		-0.958111, 0.286062, -0.013849,
		36.608601, 31.746161, 41.495949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220592, 31.991892, 42.048138>,  <37.279278, 31.545918, 41.505642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220592, 31.991892, 42.048138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848343, 31.869717, 41.967495>,  <36.624992, 31.796412, 41.919109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848343, 31.869717, 41.967495>,  <37.220592, 31.991892, 42.048138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848343, 31.869717, 41.967495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171485, -0.122721, 0.977514,
		-0.323309, 0.944271, 0.061829,
		-0.930626, -0.305436, -0.201605,
		36.569157, 31.778086, 41.907013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855583, 32.373100, 42.460003>,  <37.220592, 31.991892, 42.048138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855583, 32.373100, 42.460003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600540, 32.084324, 42.352474>,  <36.447514, 31.911058, 42.287956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600540, 32.084324, 42.352474>,  <36.855583, 32.373100, 42.460003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600540, 32.084324, 42.352474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353485, -0.035874, 0.934752,
		-0.684477, 0.691027, -0.232321,
		-0.637605, -0.721938, -0.268823,
		36.409260, 31.867743, 42.271828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198055, 32.484528, 42.637897>,  <36.855583, 32.373100, 42.460003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198055, 32.484528, 42.637897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201653, 32.084942, 42.620083>,  <36.203812, 31.845190, 42.609394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201653, 32.084942, 42.620083>,  <36.198055, 32.484528, 42.637897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201653, 32.084942, 42.620083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346391, -0.044898, 0.937015,
		-0.938047, 0.007002, -0.346437,
		0.008993, -0.998967, -0.044541,
		36.204350, 31.785252, 42.606720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653988, 32.322155, 43.177711>,  <36.198055, 32.484528, 42.637897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653988, 32.322155, 43.177711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815140, 31.967474, 43.086990>,  <35.911831, 31.754665, 43.032558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815140, 31.967474, 43.086990>,  <35.653988, 32.322155, 43.177711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815140, 31.967474, 43.086990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414556, -0.397719, 0.818513,
		-0.815984, -0.235742, -0.527823,
		0.402883, -0.886705, -0.226804,
		35.936005, 31.701462, 43.018948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108589, 31.721788, 43.083977>,  <35.653988, 32.322155, 43.177711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108589, 31.721788, 43.083977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.452682, 31.572296, 43.222729>,  <35.659138, 31.482601, 43.305981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.452682, 31.572296, 43.222729>,  <35.108589, 31.721788, 43.083977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452682, 31.572296, 43.222729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504761, -0.527786, 0.683124,
		-0.072225, -0.762737, -0.642663,
		0.860232, -0.373730, 0.346881,
		35.710751, 31.460176, 43.326794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932919, 31.139904, 43.172729>,  <35.108589, 31.721788, 43.083977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932919, 31.139904, 43.172729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285122, 31.151762, 43.361973>,  <35.496445, 31.158876, 43.475517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285122, 31.151762, 43.361973>,  <34.932919, 31.139904, 43.172729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285122, 31.151762, 43.361973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369159, -0.583206, 0.723597,
		0.297368, -0.811783, -0.502573,
		0.880508, 0.029645, 0.473104,
		35.549274, 31.160656, 43.503902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019554, 30.385763, 43.402706>,  <34.932919, 31.139904, 43.172729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019554, 30.385763, 43.402706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254822, 30.643736, 43.597897>,  <35.395981, 30.798519, 43.715012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254822, 30.643736, 43.597897>,  <35.019554, 30.385763, 43.402706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254822, 30.643736, 43.597897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231463, -0.443901, 0.865666,
		0.774909, -0.622105, -0.111811,
		0.588168, 0.644932, 0.487977,
		35.431271, 30.837215, 43.744289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288334, 29.977335, 43.792942>,  <35.019554, 30.385763, 43.402706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288334, 29.977335, 43.792942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.372246, 30.342188, 43.933800>,  <35.422592, 30.561100, 44.018314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.372246, 30.342188, 43.933800>,  <35.288334, 29.977335, 43.792942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372246, 30.342188, 43.933800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175873, -0.319083, 0.931265,
		0.961801, -0.257295, 0.093481,
		0.209781, 0.912132, 0.352146,
		35.435181, 30.615828, 44.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815022, 29.995890, 44.322464>,  <35.288334, 29.977335, 43.792942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815022, 29.995890, 44.322464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584747, 30.317690, 44.380936>,  <35.446583, 30.510769, 44.416019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584747, 30.317690, 44.380936>,  <35.815022, 29.995890, 44.322464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584747, 30.317690, 44.380936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227903, -0.329566, 0.916213,
		0.785270, 0.494133, 0.373073,
		-0.575684, 0.804499, 0.146184,
		35.412041, 30.559040, 44.424789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979298, 30.135029, 45.073372>,  <35.815022, 29.995890, 44.322464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979298, 30.135029, 45.073372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639809, 30.330452, 44.992390>,  <35.436115, 30.447706, 44.943802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639809, 30.330452, 44.992390>,  <35.979298, 30.135029, 45.073372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639809, 30.330452, 44.992390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390350, -0.320449, 0.863099,
		0.356797, 0.811556, 0.462680,
		-0.848718, 0.488558, -0.202455,
		35.385193, 30.477020, 44.931652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800407, 30.438520, 45.707340>,  <35.979298, 30.135029, 45.073372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800407, 30.438520, 45.707340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466400, 30.413158, 45.488716>,  <35.265995, 30.397942, 45.357544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466400, 30.413158, 45.488716>,  <35.800407, 30.438520, 45.707340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466400, 30.413158, 45.488716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535711, -0.132944, 0.833870,
		-0.125533, 0.989093, 0.077044,
		-0.835018, -0.063405, -0.546557,
		35.215897, 30.394136, 45.324749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.955938, 29.721479, 41.760937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346792, 29.636629, 41.766762>,  <27.581305, 29.585720, 41.770256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346792, 29.636629, 41.766762>,  <26.955938, 29.721479, 41.760937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346792, 29.636629, 41.766762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108538, 0.438730, -0.892040,
		0.182834, 0.873224, 0.451721,
		0.977134, -0.212125, 0.014563,
		27.639933, 29.572992, 41.771130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416254, 30.369146, 41.680557>,  <26.955938, 29.721479, 41.760937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416254, 30.369146, 41.680557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.648888, 30.069529, 41.553631>,  <27.788467, 29.889757, 41.477474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.648888, 30.069529, 41.553631>,  <27.416254, 30.369146, 41.680557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648888, 30.069529, 41.553631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269848, 0.545627, -0.793394,
		0.767425, 0.375798, 0.519456,
		0.581585, -0.749044, -0.317320,
		27.823362, 29.844816, 41.458435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148308, 30.645411, 41.533627>,  <27.416254, 30.369146, 41.680557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148308, 30.645411, 41.533627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093672, 30.312187, 41.319202>,  <28.060890, 30.112253, 41.190548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093672, 30.312187, 41.319202>,  <28.148308, 30.645411, 41.533627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093672, 30.312187, 41.319202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510576, 0.404516, -0.758735,
		0.848914, -0.377333, 0.370087,
		-0.136590, -0.833058, -0.536057,
		28.052694, 30.062269, 41.158386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808537, 30.538925, 41.302326>,  <28.148308, 30.645411, 41.533627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808537, 30.538925, 41.302326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.562780, 30.316677, 41.078251>,  <28.415327, 30.183329, 40.943806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.562780, 30.316677, 41.078251>,  <28.808537, 30.538925, 41.302326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562780, 30.316677, 41.078251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469771, 0.312827, -0.825502,
		0.633906, -0.770342, 0.068815,
		-0.614392, -0.555618, -0.560188,
		28.378462, 30.149992, 40.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244076, 30.081245, 40.896812>,  <28.808537, 30.538925, 41.302326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244076, 30.081245, 40.896812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.896673, 30.147886, 40.710079>,  <28.688231, 30.187870, 40.598038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.896673, 30.147886, 40.710079>,  <29.244076, 30.081245, 40.896812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896673, 30.147886, 40.710079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494637, 0.230375, -0.838011,
		-0.032067, -0.958734, -0.282490,
		-0.868508, 0.166602, -0.466838,
		28.636120, 30.197866, 40.570026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323368, 29.883228, 40.190998>,  <29.244076, 30.081245, 40.896812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323368, 29.883228, 40.190998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989082, 30.100006, 40.155510>,  <28.788511, 30.230074, 40.134216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989082, 30.100006, 40.155510>,  <29.323368, 29.883228, 40.190998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989082, 30.100006, 40.155510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366839, 0.430694, -0.824579,
		-0.408665, -0.721662, -0.558745,
		-0.835716, 0.541946, -0.088724,
		28.738367, 30.262590, 40.128891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262861, 29.925474, 39.462315>,  <29.323368, 29.883228, 40.190998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262861, 29.925474, 39.462315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.019297, 30.205183, 39.612110>,  <28.873158, 30.373009, 39.701988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.019297, 30.205183, 39.612110>,  <29.262861, 29.925474, 39.462315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019297, 30.205183, 39.612110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287157, 0.634402, -0.717687,
		-0.739437, -0.329471, -0.587096,
		-0.608912, 0.699273, 0.374491,
		28.836622, 30.414965, 39.724457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960913, 30.255117, 38.912571>,  <29.262861, 29.925474, 39.462315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960913, 30.255117, 38.912571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.941675, 30.512728, 39.217968>,  <28.930134, 30.667294, 39.401207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.941675, 30.512728, 39.217968>,  <28.960913, 30.255117, 38.912571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941675, 30.512728, 39.217968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267103, 0.744830, -0.611460,
		-0.962467, 0.174525, -0.207841,
		-0.048092, 0.644026, 0.763491,
		28.927248, 30.705935, 39.447014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536589, 30.786140, 38.603672>,  <28.960913, 30.255117, 38.912571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536589, 30.786140, 38.603672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.718048, 30.944571, 38.923004>,  <28.826923, 31.039629, 39.114601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.718048, 30.944571, 38.923004>,  <28.536589, 30.786140, 38.603672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718048, 30.944571, 38.923004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310666, 0.769331, -0.558226,
		-0.835277, 0.501252, 0.225960,
		0.453650, 0.396076, 0.798327,
		28.854143, 31.063393, 39.162502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341894, 31.467224, 38.671677>,  <28.536589, 30.786140, 38.603672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341894, 31.467224, 38.671677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.698551, 31.431564, 38.849228>,  <28.912546, 31.410168, 38.955757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.698551, 31.431564, 38.849228>,  <28.341894, 31.467224, 38.671677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698551, 31.431564, 38.849228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360142, 0.733790, -0.576064,
		-0.274357, 0.673501, 0.686385,
		0.891642, -0.089149, 0.443877,
		28.966043, 31.404819, 38.982391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536936, 32.160854, 38.812420>,  <28.341894, 31.467224, 38.671677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536936, 32.160854, 38.812420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.882236, 31.959000, 38.817162>,  <29.089417, 31.837887, 38.820007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.882236, 31.959000, 38.817162>,  <28.536936, 32.160854, 38.812420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882236, 31.959000, 38.817162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448682, 0.756350, -0.476045,
		0.231261, 0.416266, 0.879341,
		0.863251, -0.504635, 0.011856,
		29.141212, 31.807610, 38.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960945, 32.692913, 38.759186>,  <28.536936, 32.160854, 38.812420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960945, 32.692913, 38.759186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.248264, 32.417725, 38.717720>,  <29.420656, 32.252613, 38.692841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.248264, 32.417725, 38.717720>,  <28.960945, 32.692913, 38.759186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248264, 32.417725, 38.717720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521137, 0.630745, -0.574958,
		0.460942, 0.358965, 0.811589,
		0.718296, -0.687971, -0.103667,
		29.463753, 32.211334, 38.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632938, 33.026669, 38.950500>,  <28.960945, 32.692913, 38.759186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632938, 33.026669, 38.950500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706589, 32.713474, 38.712833>,  <29.750778, 32.525558, 38.570232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706589, 32.713474, 38.712833>,  <29.632938, 33.026669, 38.950500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706589, 32.713474, 38.712833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606860, 0.566085, -0.557915,
		0.773187, -0.257851, 0.579391,
		0.184126, -0.782982, -0.594169,
		29.761827, 32.478580, 38.534584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308422, 33.197445, 38.738190>,  <29.632938, 33.026669, 38.950500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308422, 33.197445, 38.738190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154755, 32.944500, 38.469105>,  <30.062555, 32.792732, 38.307655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154755, 32.944500, 38.469105>,  <30.308422, 33.197445, 38.738190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154755, 32.944500, 38.469105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409033, 0.536642, -0.738043,
		0.827712, -0.558692, 0.052496,
		-0.384167, -0.632360, -0.672708,
		30.039505, 32.754791, 38.267292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041458, 33.414154, 38.945946>,  <30.308422, 33.197445, 38.738190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041458, 33.414154, 38.945946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087797, 33.781197, 39.098042>,  <31.115601, 34.001423, 39.189297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087797, 33.781197, 39.098042>,  <31.041458, 33.414154, 38.945946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087797, 33.781197, 39.098042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464303, -0.288388, 0.837410,
		0.878068, -0.273555, 0.392638,
		0.115846, 0.917606, 0.380237,
		31.122551, 34.056477, 39.212112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189289, 33.350979, 39.584866>,  <31.041458, 33.414154, 38.945946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189289, 33.350979, 39.584866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071894, 33.733341, 39.589218>,  <31.001457, 33.962757, 39.591827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071894, 33.733341, 39.589218>,  <31.189289, 33.350979, 39.584866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071894, 33.733341, 39.589218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474254, -0.155470, 0.866552,
		0.830030, 0.249162, 0.498968,
		-0.293487, 0.955902, 0.010879,
		30.983849, 34.020111, 39.592484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356049, 33.626534, 40.207260>,  <31.189289, 33.350979, 39.584866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356049, 33.626534, 40.207260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071623, 33.879684, 40.084717>,  <30.900969, 34.031574, 40.011192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.071623, 33.879684, 40.084717>,  <31.356049, 33.626534, 40.207260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071623, 33.879684, 40.084717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470382, -0.104318, 0.876275,
		0.522618, 0.767191, 0.371872,
		-0.711063, 0.632879, -0.306355,
		30.858303, 34.069550, 39.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343975, 34.119740, 40.658054>,  <31.356049, 33.626534, 40.207260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343975, 34.119740, 40.658054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989952, 34.120003, 40.471863>,  <30.777538, 34.120159, 40.360146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989952, 34.120003, 40.471863>,  <31.343975, 34.119740, 40.658054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989952, 34.120003, 40.471863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463568, -0.091813, 0.881292,
		-0.042160, 0.995776, 0.081563,
		-0.885058, 0.000655, -0.465481,
		30.724434, 34.120197, 40.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851032, 34.132458, 41.169857>,  <31.343975, 34.119740, 40.658054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851032, 34.132458, 41.169857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607559, 34.023464, 40.871796>,  <30.461475, 33.958069, 40.692959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607559, 34.023464, 40.871796>,  <30.851032, 34.132458, 41.169857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607559, 34.023464, 40.871796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625374, -0.413215, 0.661937,
		-0.488278, 0.868910, 0.081111,
		-0.608680, -0.272485, -0.745158,
		30.424955, 33.941719, 40.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229712, 34.286777, 41.355083>,  <30.851032, 34.132458, 41.169857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229712, 34.286777, 41.355083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.163679, 34.006634, 41.077309>,  <30.124060, 33.838547, 40.910645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.163679, 34.006634, 41.077309>,  <30.229712, 34.286777, 41.355083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163679, 34.006634, 41.077309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492129, -0.551691, 0.673384,
		-0.854726, 0.452917, -0.253592,
		-0.165082, -0.700359, -0.694438,
		30.114155, 33.796524, 40.868977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462816, 34.159664, 41.444786>,  <30.229712, 34.286777, 41.355083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462816, 34.159664, 41.444786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.620848, 33.846054, 41.253281>,  <29.715668, 33.657887, 41.138378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.620848, 33.846054, 41.253281>,  <29.462816, 34.159664, 41.444786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620848, 33.846054, 41.253281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368993, -0.612712, 0.698877,
		-0.841282, -0.099452, -0.531370,
		0.395081, -0.784024, -0.478766,
		29.739372, 33.610847, 41.109650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012480, 33.621277, 41.532108>,  <29.462816, 34.159664, 41.444786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012480, 33.621277, 41.532108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321924, 33.407402, 41.396088>,  <29.507591, 33.279076, 41.314476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321924, 33.407402, 41.396088>,  <29.012480, 33.621277, 41.532108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321924, 33.407402, 41.396088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156942, -0.681601, 0.714695,
		-0.613918, -0.499528, -0.611209,
		0.773611, -0.534688, -0.340051,
		29.554007, 33.246994, 41.294071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832800, 32.893032, 41.582111>,  <29.012480, 33.621277, 41.532108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832800, 32.893032, 41.582111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231079, 32.859715, 41.565853>,  <29.470047, 32.839725, 41.556099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231079, 32.859715, 41.565853>,  <28.832800, 32.893032, 41.582111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231079, 32.859715, 41.565853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034342, -0.738938, 0.672897,
		-0.086083, -0.668605, -0.738618,
		0.995696, -0.083291, -0.040649,
		29.529787, 32.834728, 41.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941162, 32.237080, 41.334099>,  <28.832800, 32.893032, 41.582111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941162, 32.237080, 41.334099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.260225, 32.379642, 41.528713>,  <29.451662, 32.465179, 41.645481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.260225, 32.379642, 41.528713>,  <28.941162, 32.237080, 41.334099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260225, 32.379642, 41.528713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133247, -0.682637, 0.718507,
		0.588208, -0.637952, -0.497020,
		0.797657, 0.356405, 0.486538,
		29.499523, 32.486565, 41.674675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219349, 31.706890, 41.558777>,  <28.941162, 32.237080, 41.334099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219349, 31.706890, 41.558777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.381708, 31.985388, 41.795586>,  <29.479124, 32.152489, 41.937672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.381708, 31.985388, 41.795586>,  <29.219349, 31.706890, 41.558777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381708, 31.985388, 41.795586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126460, -0.598765, 0.790878,
		0.905128, -0.395881, -0.154989,
		0.405896, 0.696246, 0.592022,
		29.503477, 32.194263, 41.973194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806501, 31.391762, 41.848392>,  <29.219349, 31.706890, 41.558777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806501, 31.391762, 41.848392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.697266, 31.685213, 42.097298>,  <29.631723, 31.861284, 42.246639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.697266, 31.685213, 42.097298>,  <29.806501, 31.391762, 41.848392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697266, 31.685213, 42.097298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040192, -0.654986, 0.754572,
		0.961148, 0.181056, 0.208357,
		-0.273090, 0.733630, 0.622261,
		29.615339, 31.905302, 42.283978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286718, 31.293098, 42.360615>,  <29.806501, 31.391762, 41.848392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286718, 31.293098, 42.360615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964544, 31.483141, 42.502346>,  <29.771240, 31.597166, 42.587383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964544, 31.483141, 42.502346>,  <30.286718, 31.293098, 42.360615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964544, 31.483141, 42.502346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042431, -0.642525, 0.765089,
		0.591162, 0.601196, 0.537672,
		-0.805436, 0.475106, 0.354327,
		29.722914, 31.625673, 42.608643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361858, 31.306362, 43.090542>,  <30.286718, 31.293098, 42.360615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361858, 31.306362, 43.090542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.974638, 31.370430, 43.013374>,  <29.742306, 31.408871, 42.967072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.974638, 31.370430, 43.013374>,  <30.361858, 31.306362, 43.090542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974638, 31.370430, 43.013374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250742, -0.613866, 0.748530,
		0.001465, 0.772990, 0.634417,
		-0.968053, 0.160171, -0.192922,
		29.684221, 31.418482, 42.955498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792402, 31.746145, 43.547710>,  <30.361858, 31.306362, 43.090542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792402, 31.746145, 43.547710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.058628, 31.788710, 43.843197>,  <31.218363, 31.814249, 44.020489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.058628, 31.788710, 43.843197>,  <30.792402, 31.746145, 43.547710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058628, 31.788710, 43.843197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465214, 0.714823, -0.522115,
		-0.583609, 0.691162, 0.426257,
		0.665565, 0.106410, 0.738716,
		31.258297, 31.820633, 44.064812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893023, 32.472023, 43.694431>,  <30.792402, 31.746145, 43.547710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893023, 32.472023, 43.694431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227983, 32.309345, 43.840504>,  <31.428961, 32.211739, 43.928146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227983, 32.309345, 43.840504>,  <30.893023, 32.472023, 43.694431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227983, 32.309345, 43.840504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543742, 0.687892, -0.480780,
		-0.055672, 0.601169, 0.797180,
		0.837404, -0.406694, 0.365177,
		31.479204, 32.187336, 43.950058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302933, 33.064842, 43.918579>,  <30.893023, 32.472023, 43.694431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302933, 33.064842, 43.918579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563622, 32.766766, 43.862091>,  <31.720034, 32.587917, 43.828197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563622, 32.766766, 43.862091>,  <31.302933, 33.064842, 43.918579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563622, 32.766766, 43.862091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586510, 0.613215, -0.529126,
		0.480902, 0.262014, 0.836709,
		0.651721, -0.745195, -0.141223,
		31.759138, 32.543205, 43.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978098, 33.276993, 44.188305>,  <31.302933, 33.064842, 43.918579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978098, 33.276993, 44.188305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.049282, 32.979645, 43.930397>,  <32.091991, 32.801235, 43.775654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.049282, 32.979645, 43.930397>,  <31.978098, 33.276993, 44.188305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049282, 32.979645, 43.930397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640531, 0.584923, -0.497580,
		0.747027, -0.324445, 0.580246,
		0.177962, -0.743371, -0.644770,
		32.102669, 32.756634, 43.736965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619652, 33.401558, 44.079136>,  <31.978098, 33.276993, 44.188305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619652, 33.401558, 44.079136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503338, 33.164177, 43.778934>,  <32.433552, 33.021748, 43.598812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503338, 33.164177, 43.778934>,  <32.619652, 33.401558, 44.079136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503338, 33.164177, 43.778934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701722, 0.400946, -0.588922,
		0.650410, -0.697894, 0.299853,
		-0.290780, -0.593454, -0.750506,
		32.416103, 32.986141, 43.553783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214645, 33.439487, 43.599911>,  <32.619652, 33.401558, 44.079136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214645, 33.439487, 43.599911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954292, 33.244064, 43.367474>,  <32.798080, 33.126812, 43.228012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954292, 33.244064, 43.367474>,  <33.214645, 33.439487, 43.599911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954292, 33.244064, 43.367474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453340, 0.363845, -0.813695,
		0.608961, -0.793052, -0.015340,
		-0.650884, -0.488554, -0.581089,
		32.759026, 33.097500, 43.193146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550179, 33.026886, 43.053722>,  <33.214645, 33.439487, 43.599911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550179, 33.026886, 43.053722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187523, 33.103199, 42.903198>,  <32.969929, 33.148987, 42.812881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187523, 33.103199, 42.903198>,  <33.550179, 33.026886, 43.053722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187523, 33.103199, 42.903198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421426, 0.366620, -0.829452,
		-0.020280, -0.910599, -0.412792,
		-0.906636, 0.190782, -0.376315,
		32.915531, 33.160435, 42.790302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647541, 32.831455, 42.398155>,  <33.550179, 33.026886, 43.053722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647541, 32.831455, 42.398155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343719, 33.091526, 42.405598>,  <33.161427, 33.247570, 42.410061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343719, 33.091526, 42.405598>,  <33.647541, 32.831455, 42.398155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343719, 33.091526, 42.405598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385877, 0.473442, -0.791803,
		-0.523623, -0.594236, -0.610493,
		-0.759551, 0.650181, 0.018604,
		33.115852, 33.286579, 42.411179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461033, 32.894291, 41.700279>,  <33.647541, 32.831455, 42.398155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461033, 32.894291, 41.700279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.336105, 33.213600, 41.906281>,  <33.261150, 33.405186, 42.029881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.336105, 33.213600, 41.906281>,  <33.461033, 32.894291, 41.700279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336105, 33.213600, 41.906281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254498, 0.592610, -0.764228,
		-0.915253, -0.107615, -0.388241,
		-0.312318, 0.798268, 0.515000,
		33.242409, 33.453079, 42.060780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138351, 33.285877, 41.198795>,  <33.461033, 32.894291, 41.700279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138351, 33.285877, 41.198795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183342, 33.532200, 41.510727>,  <33.210335, 33.679993, 41.697887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183342, 33.532200, 41.510727>,  <33.138351, 33.285877, 41.198795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183342, 33.532200, 41.510727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237175, 0.745486, -0.622896,
		-0.964934, 0.255015, -0.062206,
		0.112474, 0.615807, 0.779828,
		33.217083, 33.716942, 41.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824722, 33.904110, 41.006893>,  <33.138351, 33.285877, 41.198795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824722, 33.904110, 41.006893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091869, 33.988884, 41.292278>,  <33.252159, 34.039749, 41.463509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091869, 33.988884, 41.292278>,  <32.824722, 33.904110, 41.006893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091869, 33.988884, 41.292278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337830, 0.767837, -0.544332,
		-0.663190, 0.604572, 0.441216,
		0.667870, 0.211939, 0.713464,
		33.292229, 34.052467, 41.506317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706760, 34.490887, 41.204586>,  <32.824722, 33.904110, 41.006893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706760, 34.490887, 41.204586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091534, 34.445999, 41.304264>,  <33.322395, 34.419067, 41.364071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091534, 34.445999, 41.304264>,  <32.706760, 34.490887, 41.204586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091534, 34.445999, 41.304264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237521, 0.794302, -0.559167,
		-0.135182, 0.597068, 0.790719,
		0.961930, -0.112223, 0.249191,
		33.380112, 34.412331, 41.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983791, 35.170074, 41.441582>,  <32.706760, 34.490887, 41.204586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983791, 35.170074, 41.441582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295605, 34.946754, 41.328003>,  <33.482693, 34.812763, 41.259857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295605, 34.946754, 41.328003>,  <32.983791, 35.170074, 41.441582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295605, 34.946754, 41.328003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334793, 0.754528, -0.564447,
		0.529374, 0.344945, 0.775097,
		0.779536, -0.558301, -0.283943,
		33.529465, 34.779263, 41.242821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538433, 35.626724, 41.483494>,  <32.983791, 35.170074, 41.441582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538433, 35.626724, 41.483494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693592, 35.325127, 41.271446>,  <33.786690, 35.144169, 41.144218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693592, 35.325127, 41.271446>,  <33.538433, 35.626724, 41.483494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693592, 35.325127, 41.271446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495286, 0.655573, -0.570014,
		0.777319, -0.041452, 0.627740,
		0.387901, -0.753994, -0.530119,
		33.809963, 35.098930, 41.112411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.566292, 45.760685, 35.184551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194628, 45.662056, 35.074379>,  <24.971628, 45.602879, 35.008274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194628, 45.662056, 35.074379>,  <25.566292, 45.760685, 35.184551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194628, 45.662056, 35.074379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163514, -0.942338, 0.291997,
		-0.331546, 0.226275, 0.915902,
		-0.929161, -0.246573, -0.275430,
		24.915880, 45.588085, 34.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404177, 45.041370, 35.175808>,  <25.566292, 45.760685, 35.184551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404177, 45.041370, 35.175808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.110069, 44.852055, 34.981747>,  <24.933605, 44.738464, 34.865311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.110069, 44.852055, 34.981747>,  <25.404177, 45.041370, 35.175808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110069, 44.852055, 34.981747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175722, -0.824443, 0.537973,
		-0.654601, 0.310302, 0.689355,
		-0.735268, -0.473292, -0.485154,
		24.889488, 44.710068, 34.836201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284962, 44.441185, 35.567467>,  <25.404177, 45.041370, 35.175808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284962, 44.441185, 35.567467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.089418, 44.338650, 35.233925>,  <24.972092, 44.277130, 35.033802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.089418, 44.338650, 35.233925>,  <25.284962, 44.441185, 35.567467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089418, 44.338650, 35.233925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034057, -0.949516, 0.311863,
		-0.871698, 0.180855, 0.455449,
		-0.488858, -0.256339, -0.833851,
		24.942760, 44.261749, 34.983768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809944, 43.996571, 35.805607>,  <25.284962, 44.441185, 35.567467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809944, 43.996571, 35.805607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.854452, 43.934425, 35.412979>,  <24.881157, 43.897137, 35.177402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.854452, 43.934425, 35.412979>,  <24.809944, 43.996571, 35.805607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854452, 43.934425, 35.412979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076994, -0.986084, 0.147348,
		-0.990803, 0.059180, -0.121681,
		0.111268, -0.155362, -0.981571,
		24.887833, 43.887817, 35.118507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256832, 43.525040, 35.589836>,  <24.809944, 43.996571, 35.805607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256832, 43.525040, 35.589836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.543673, 43.502056, 35.311996>,  <24.715776, 43.488266, 35.145294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.543673, 43.502056, 35.311996>,  <24.256832, 43.525040, 35.589836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543673, 43.502056, 35.311996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005632, -0.997041, 0.076667,
		-0.696948, -0.051066, -0.715301,
		0.717099, -0.057461, -0.694598,
		24.758802, 43.484818, 35.103619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171646, 42.907288, 35.188774>,  <24.256832, 43.525040, 35.589836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171646, 42.907288, 35.188774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.542059, 43.016537, 35.084564>,  <24.764307, 43.082085, 35.022038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.542059, 43.016537, 35.084564>,  <24.171646, 42.907288, 35.188774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542059, 43.016537, 35.084564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269552, -0.961684, -0.050064,
		-0.264213, -0.023864, -0.964169,
		0.926031, 0.273121, -0.260522,
		24.819868, 43.098473, 35.006409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342403, 42.605064, 34.466072>,  <24.171646, 42.907288, 35.188774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342403, 42.605064, 34.466072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.684549, 42.669361, 34.663055>,  <24.889837, 42.707939, 34.781246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.684549, 42.669361, 34.663055>,  <24.342403, 42.605064, 34.466072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684549, 42.669361, 34.663055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191292, -0.981461, -0.011908,
		0.481417, 0.104390, -0.870253,
		0.855363, 0.160740, 0.492460,
		24.941158, 42.717583, 34.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748875, 42.174782, 34.177082>,  <24.342403, 42.605064, 34.466072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748875, 42.174782, 34.177082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.923847, 42.270836, 34.523720>,  <25.028831, 42.328468, 34.731701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.923847, 42.270836, 34.523720>,  <24.748875, 42.174782, 34.177082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923847, 42.270836, 34.523720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239794, -0.959940, 0.144965,
		0.866691, 0.144392, -0.477491,
		0.437431, 0.240139, 0.866596,
		25.055077, 42.342876, 34.783699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318932, 41.712837, 34.243149>,  <24.748875, 42.174782, 34.177082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318932, 41.712837, 34.243149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.274021, 41.854584, 34.614487>,  <25.247076, 41.939632, 34.837288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.274021, 41.854584, 34.614487>,  <25.318932, 41.712837, 34.243149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274021, 41.854584, 34.614487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449107, -0.815288, 0.365525,
		0.886396, 0.457964, -0.067611,
		-0.112275, 0.354365, 0.928343,
		25.240339, 41.960892, 34.892990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885763, 41.505501, 34.495388>,  <25.318932, 41.712837, 34.243149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885763, 41.505501, 34.495388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674728, 41.594452, 34.823338>,  <25.548107, 41.647823, 35.020107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674728, 41.594452, 34.823338>,  <25.885763, 41.505501, 34.495388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674728, 41.594452, 34.823338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318980, -0.842647, 0.433817,
		0.787339, 0.490401, 0.373637,
		-0.527589, 0.222378, 0.819877,
		25.516451, 41.661167, 35.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327007, 41.576202, 35.098034>,  <25.885763, 41.505501, 34.495388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327007, 41.576202, 35.098034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.963554, 41.471275, 35.228004>,  <25.745483, 41.408318, 35.305988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.963554, 41.471275, 35.228004>,  <26.327007, 41.576202, 35.098034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963554, 41.471275, 35.228004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372651, -0.860498, 0.347382,
		0.188474, 0.436727, 0.879629,
		-0.908630, -0.262322, 0.324928,
		25.690966, 41.392578, 35.325481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378588, 41.273296, 35.807930>,  <26.327007, 41.576202, 35.098034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378588, 41.273296, 35.807930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033060, 41.145321, 35.652260>,  <25.825743, 41.068535, 35.558857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.033060, 41.145321, 35.652260>,  <26.378588, 41.273296, 35.807930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033060, 41.145321, 35.652260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113369, -0.876102, 0.468607,
		-0.490881, 0.360671, 0.793065,
		-0.863819, -0.319939, -0.389172,
		25.773914, 41.049339, 35.535507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205368, 40.775127, 36.359337>,  <26.378588, 41.273296, 35.807930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205368, 40.775127, 36.359337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972002, 40.664200, 36.053989>,  <25.831984, 40.597645, 35.870781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972002, 40.664200, 36.053989>,  <26.205368, 40.775127, 36.359337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972002, 40.664200, 36.053989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038852, -0.948354, 0.314825,
		-0.811246, 0.154015, 0.564057,
		-0.583413, -0.277315, -0.763365,
		25.796978, 40.581005, 35.824982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709566, 40.284294, 36.610271>,  <26.205368, 40.775127, 36.359337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709566, 40.284294, 36.610271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717709, 40.219963, 36.215561>,  <25.722593, 40.181366, 35.978737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717709, 40.219963, 36.215561>,  <25.709566, 40.284294, 36.610271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717709, 40.219963, 36.215561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243122, -0.956556, 0.160915,
		-0.969782, -0.243182, 0.019628,
		0.020356, -0.160825, -0.986773,
		25.723816, 40.171715, 35.919529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159571, 39.744984, 36.342442>,  <25.709566, 40.284294, 36.610271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159571, 39.744984, 36.342442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440153, 39.748962, 36.057384>,  <25.608503, 39.751350, 35.886349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440153, 39.748962, 36.057384>,  <25.159571, 39.744984, 36.342442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440153, 39.748962, 36.057384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013895, -0.999903, -0.000282,
		-0.712575, -0.009704, -0.701529,
		0.701458, 0.009949, -0.712641,
		25.650591, 39.751945, 35.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006573, 39.128857, 35.825832>,  <25.159571, 39.744984, 36.342442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006573, 39.128857, 35.825832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.393505, 39.223408, 35.789181>,  <25.625664, 39.280140, 35.767189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.393505, 39.223408, 35.789181>,  <25.006573, 39.128857, 35.825832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393505, 39.223408, 35.789181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228561, -0.969524, -0.088217,
		-0.109685, 0.064393, -0.991879,
		0.967331, 0.236381, -0.091624,
		25.683704, 39.294323, 35.761692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212915, 38.610985, 35.341957>,  <25.006573, 39.128857, 35.825832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212915, 38.610985, 35.341957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567673, 38.744877, 35.469318>,  <25.780527, 38.825211, 35.545734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567673, 38.744877, 35.469318>,  <25.212915, 38.610985, 35.341957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567673, 38.744877, 35.469318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361663, -0.931897, -0.027719,
		0.287440, 0.139738, -0.947550,
		0.886893, 0.334726, 0.318402,
		25.833740, 38.845295, 35.564838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758682, 38.315731, 34.881458>,  <25.212915, 38.610985, 35.341957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758682, 38.315731, 34.881458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932503, 38.421196, 35.225933>,  <26.036795, 38.484474, 35.432617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932503, 38.421196, 35.225933>,  <25.758682, 38.315731, 34.881458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932503, 38.421196, 35.225933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456602, -0.888694, 0.041686,
		0.776324, 0.375106, -0.506573,
		0.434552, 0.263664, 0.861189,
		26.062868, 38.500294, 35.484291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541151, 38.071564, 34.876255>,  <25.758682, 38.315731, 34.881458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541151, 38.071564, 34.876255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.433851, 38.125923, 35.257740>,  <26.369471, 38.158539, 35.486633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.433851, 38.125923, 35.257740>,  <26.541151, 38.071564, 34.876255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433851, 38.125923, 35.257740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328327, -0.917831, 0.223132,
		0.905673, 0.372986, 0.201589,
		-0.268250, 0.135898, 0.953716,
		26.353376, 38.166691, 35.543854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219666, 38.031406, 35.396984>,  <26.541151, 38.071564, 34.876255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219666, 38.031406, 35.396984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857439, 37.938484, 35.538963>,  <26.640104, 37.882732, 35.624149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857439, 37.938484, 35.538963>,  <27.219666, 38.031406, 35.396984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857439, 37.938484, 35.538963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320916, -0.922363, 0.215082,
		0.277428, 0.308680, 0.909808,
		-0.905564, -0.232303, 0.354949,
		26.585770, 37.868793, 35.645447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272198, 37.922226, 34.697124>,  <27.219666, 38.031406, 35.396984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272198, 37.922226, 34.697124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536074, 37.876343, 34.400032>,  <27.694399, 37.848812, 34.221775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536074, 37.876343, 34.400032>,  <27.272198, 37.922226, 34.697124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536074, 37.876343, 34.400032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059785, 0.993161, -0.100285,
		0.749154, 0.021753, 0.662038,
		0.659692, -0.114709, -0.742730,
		27.733982, 37.841930, 34.177212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863333, 38.403168, 34.747120>,  <27.272198, 37.922226, 34.697124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863333, 38.403168, 34.747120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885218, 38.309097, 34.358955>,  <27.898348, 38.252655, 34.126057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885218, 38.309097, 34.358955>,  <27.863333, 38.403168, 34.747120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885218, 38.309097, 34.358955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075756, 0.970043, -0.230820,
		0.995624, -0.060886, 0.070891,
		0.054713, -0.235180, -0.970411,
		27.901632, 38.238544, 34.067833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282709, 39.025936, 34.481773>,  <27.863333, 38.403168, 34.747120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282709, 39.025936, 34.481773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149052, 38.851200, 34.147705>,  <28.068857, 38.746357, 33.947262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149052, 38.851200, 34.147705>,  <28.282709, 39.025936, 34.481773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149052, 38.851200, 34.147705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055761, 0.875393, -0.480186,
		0.940872, -0.207021, -0.268148,
		-0.334143, -0.436841, -0.835176,
		28.048809, 38.720146, 33.897152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799232, 39.269497, 33.925518>,  <28.282709, 39.025936, 34.481773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799232, 39.269497, 33.925518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442089, 39.171768, 33.774197>,  <28.227802, 39.113132, 33.683403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442089, 39.171768, 33.774197>,  <28.799232, 39.269497, 33.925518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442089, 39.171768, 33.774197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001064, 0.841183, -0.540749,
		0.450336, -0.482409, -0.751318,
		-0.892858, -0.244318, -0.378302,
		28.174232, 39.098473, 33.660706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868366, 39.401310, 33.202614>,  <28.799232, 39.269497, 33.925518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868366, 39.401310, 33.202614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478230, 39.404240, 33.290848>,  <28.244148, 39.405998, 33.343788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478230, 39.404240, 33.290848>,  <28.868366, 39.401310, 33.202614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478230, 39.404240, 33.290848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115479, 0.834787, -0.538326,
		-0.188079, -0.550524, -0.813357,
		-0.975341, 0.007322, 0.220580,
		28.185627, 39.406437, 33.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622856, 39.689011, 32.543861>,  <28.868366, 39.401310, 33.202614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622856, 39.689011, 32.543861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306505, 39.711342, 32.787628>,  <28.116693, 39.724739, 32.933887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306505, 39.711342, 32.787628>,  <28.622856, 39.689011, 32.543861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306505, 39.711342, 32.787628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198952, 0.918281, -0.342312,
		-0.578731, -0.391973, -0.715142,
		-0.790879, 0.055827, 0.609421,
		28.069242, 39.728088, 32.970455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074354, 39.879299, 32.149929>,  <28.622856, 39.689011, 32.543861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074354, 39.879299, 32.149929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988041, 39.989746, 32.524563>,  <27.936253, 40.056015, 32.749344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988041, 39.989746, 32.524563>,  <28.074354, 39.879299, 32.149929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988041, 39.989746, 32.524563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185781, 0.930055, -0.316992,
		-0.958605, -0.242401, -0.149391,
		-0.215781, 0.276116, 0.936589,
		27.923307, 40.072582, 32.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498127, 40.247211, 32.115002>,  <28.074354, 39.879299, 32.149929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498127, 40.247211, 32.115002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626423, 40.367008, 32.474430>,  <27.703400, 40.438885, 32.690086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626423, 40.367008, 32.474430>,  <27.498127, 40.247211, 32.115002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626423, 40.367008, 32.474430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332681, 0.923871, -0.189171,
		-0.886820, -0.238263, 0.395956,
		0.320740, 0.299488, 0.898573,
		27.722645, 40.456856, 32.744003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069553, 40.774837, 32.369896>,  <27.498127, 40.247211, 32.115002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069553, 40.774837, 32.369896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361160, 40.818935, 32.640121>,  <27.536123, 40.845394, 32.802258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361160, 40.818935, 32.640121>,  <27.069553, 40.774837, 32.369896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361160, 40.818935, 32.640121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308291, 0.934058, 0.180258,
		-0.611141, -0.339680, 0.714929,
		0.729015, 0.110243, 0.675562,
		27.579865, 40.852009, 32.842789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817961, 41.106747, 33.014290>,  <27.069553, 40.774837, 32.369896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817961, 41.106747, 33.014290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206341, 41.199837, 32.992031>,  <27.439369, 41.255692, 32.978676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206341, 41.199837, 32.992031>,  <26.817961, 41.106747, 33.014290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206341, 41.199837, 32.992031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232738, 0.972519, 0.006336,
		0.055595, 0.006800, 0.998430,
		0.970949, 0.232725, -0.055650,
		27.497625, 41.269653, 32.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907948, 41.587959, 33.519764>,  <26.817961, 41.106747, 33.014290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907948, 41.587959, 33.519764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195370, 41.636761, 33.245892>,  <27.367823, 41.666042, 33.081566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195370, 41.636761, 33.245892>,  <26.907948, 41.587959, 33.519764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195370, 41.636761, 33.245892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139564, 0.989762, 0.029898,
		0.681322, 0.074073, 0.728227,
		0.718556, 0.122004, -0.684684,
		27.410936, 41.673363, 33.040485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083820, 42.247551, 33.767155>,  <26.907948, 41.587959, 33.519764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083820, 42.247551, 33.767155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326324, 42.218506, 33.450375>,  <27.471827, 42.201077, 33.260307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326324, 42.218506, 33.450375>,  <27.083820, 42.247551, 33.767155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326324, 42.218506, 33.450375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080330, 0.996321, -0.029859,
		0.791200, -0.045515, 0.609861,
		0.606258, -0.072615, -0.791946,
		27.508202, 42.196720, 33.212791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546453, 42.737968, 33.877434>,  <27.083820, 42.247551, 33.767155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546453, 42.737968, 33.877434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563133, 42.686039, 33.481171>,  <27.573141, 42.654881, 33.243412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563133, 42.686039, 33.481171>,  <27.546453, 42.737968, 33.877434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563133, 42.686039, 33.481171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014507, 0.991497, -0.129319,
		0.999025, -0.008979, 0.043227,
		0.041698, -0.129820, -0.990660,
		27.575644, 42.647095, 33.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100227, 43.211887, 33.599102>,  <27.546453, 42.737968, 33.877434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100227, 43.211887, 33.599102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862959, 43.117771, 33.291130>,  <27.720598, 43.061302, 33.106346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862959, 43.117771, 33.291130>,  <28.100227, 43.211887, 33.599102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862959, 43.117771, 33.291130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032120, 0.962494, -0.269394,
		0.804435, -0.135067, -0.578481,
		-0.593171, -0.235291, -0.769926,
		27.685007, 43.047184, 33.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398949, 43.425171, 32.966862>,  <28.100227, 43.211887, 33.599102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398949, 43.425171, 32.966862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007185, 43.414471, 32.886822>,  <27.772127, 43.408051, 32.838799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007185, 43.414471, 32.886822>,  <28.398949, 43.425171, 32.966862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007185, 43.414471, 32.886822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048106, 0.931696, -0.360039,
		0.196062, -0.362252, -0.911226,
		-0.979411, -0.026754, -0.200097,
		27.713362, 43.406445, 32.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333670, 43.913059, 32.446812>,  <28.398949, 43.425171, 32.966862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333670, 43.913059, 32.446812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950211, 43.836620, 32.531170>,  <27.720135, 43.790756, 32.581783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950211, 43.836620, 32.531170>,  <28.333670, 43.913059, 32.446812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950211, 43.836620, 32.531170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251579, 0.915468, -0.314048,
		-0.133052, -0.354118, -0.925688,
		-0.958648, -0.191099, 0.210893,
		27.662617, 43.779289, 32.594437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874748, 44.102596, 31.854218>,  <28.333670, 43.913059, 32.446812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874748, 44.102596, 31.854218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632071, 44.109436, 32.172119>,  <27.486464, 44.113541, 32.362858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632071, 44.109436, 32.172119>,  <27.874748, 44.102596, 31.854218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632071, 44.109436, 32.172119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329878, 0.904208, -0.271272,
		-0.723259, -0.426750, -0.542938,
		-0.606694, 0.017097, 0.794752,
		27.450062, 44.114567, 32.410545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096964, 44.464088, 31.634880>,  <27.874748, 44.102596, 31.854218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096964, 44.464088, 31.634880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135780, 44.480606, 32.032650>,  <27.159071, 44.490517, 32.271313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135780, 44.480606, 32.032650>,  <27.096964, 44.464088, 31.634880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135780, 44.480606, 32.032650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538740, 0.842288, 0.017597,
		-0.836864, -0.537443, 0.103985,
		0.097042, 0.041295, 0.994423,
		27.164894, 44.492996, 32.330978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566879, 44.875576, 31.764030>,  <27.096964, 44.464088, 31.634880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566879, 44.875576, 31.764030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.756842, 44.894669, 32.115528>,  <26.870819, 44.906124, 32.326427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.756842, 44.894669, 32.115528>,  <26.566879, 44.875576, 31.764030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756842, 44.894669, 32.115528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307545, 0.944571, 0.114902,
		-0.824550, -0.324820, 0.463260,
		0.474904, 0.047731, 0.878742,
		26.899313, 44.908989, 32.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073292, 45.067257, 32.345966>,  <26.566879, 44.875576, 31.764030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073292, 45.067257, 32.345966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436777, 45.154984, 32.488029>,  <26.654869, 45.207619, 32.573269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436777, 45.154984, 32.488029>,  <26.073292, 45.067257, 32.345966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436777, 45.154984, 32.488029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318807, 0.913884, 0.251354,
		-0.269447, -0.341636, 0.900379,
		0.908714, 0.219321, 0.355159,
		26.709391, 45.220779, 32.594578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997677, 45.410545, 32.956196>,  <26.073292, 45.067257, 32.345966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997677, 45.410545, 32.956196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363760, 45.501980, 32.823441>,  <26.583410, 45.556839, 32.743790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363760, 45.501980, 32.823441>,  <25.997677, 45.410545, 32.956196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363760, 45.501980, 32.823441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157678, 0.961026, 0.227083,
		0.370857, -0.155497, 0.915580,
		0.915206, 0.228582, -0.331884,
		26.638323, 45.570553, 32.723877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195986, 45.825726, 33.407402>,  <25.997677, 45.410545, 32.956196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195986, 45.825726, 33.407402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437939, 45.911709, 33.100700>,  <26.583111, 45.963299, 32.916679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437939, 45.911709, 33.100700>,  <26.195986, 45.825726, 33.407402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437939, 45.911709, 33.100700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072307, 0.973725, 0.215943,
		0.793023, -0.075179, 0.604535,
		0.604885, 0.214960, -0.766751,
		26.619404, 45.976196, 32.870674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.236126, 30.804234, 46.118389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057911, 30.543736, 45.872665>,  <34.950981, 30.387438, 45.725231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057911, 30.543736, 45.872665>,  <35.236126, 30.804234, 46.118389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057911, 30.543736, 45.872665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667818, -0.215243, 0.712523,
		-0.596253, 0.727703, -0.339014,
		-0.445535, -0.651244, -0.614313,
		34.924252, 30.348362, 45.688370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540276, 30.858454, 46.241905>,  <35.236126, 30.804234, 46.118389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540276, 30.858454, 46.241905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525391, 30.512255, 46.042095>,  <34.516460, 30.304535, 45.922211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525391, 30.512255, 46.042095>,  <34.540276, 30.858454, 46.241905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525391, 30.512255, 46.042095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709778, -0.328982, 0.622885,
		-0.703442, 0.377733, -0.602069,
		-0.037214, -0.865499, -0.499526,
		34.514225, 30.252605, 45.892239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794060, 30.677803, 46.351265>,  <34.540276, 30.858454, 46.241905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794060, 30.677803, 46.351265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954174, 30.338860, 46.211693>,  <34.050243, 30.135494, 46.127949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954174, 30.338860, 46.211693>,  <33.794060, 30.677803, 46.351265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954174, 30.338860, 46.211693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648619, -0.530960, 0.545322,
		-0.647351, 0.008037, -0.762150,
		0.400288, -0.847359, -0.348930,
		34.074261, 30.084652, 46.107014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237350, 30.135397, 46.093811>,  <33.794060, 30.677803, 46.351265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237350, 30.135397, 46.093811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566788, 29.940170, 46.209385>,  <33.764450, 29.823034, 46.278728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566788, 29.940170, 46.209385>,  <33.237350, 30.135397, 46.093811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566788, 29.940170, 46.209385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525662, -0.465529, 0.712013,
		-0.213003, -0.738292, -0.639965,
		0.823595, -0.488066, 0.288933,
		33.813866, 29.793751, 46.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046490, 29.379292, 46.146118>,  <33.237350, 30.135397, 46.093811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046490, 29.379292, 46.146118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361275, 29.420214, 46.389503>,  <33.550144, 29.444767, 46.535534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361275, 29.420214, 46.389503>,  <33.046490, 29.379292, 46.146118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361275, 29.420214, 46.389503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470109, -0.539280, 0.698695,
		0.399611, -0.835889, -0.376298,
		0.786961, 0.102305, 0.608461,
		33.597363, 29.450905, 46.572041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159058, 28.630421, 46.481251>,  <33.046490, 29.379292, 46.146118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159058, 28.630421, 46.481251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336449, 28.896378, 46.721668>,  <33.442883, 29.055952, 46.865917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336449, 28.896378, 46.721668>,  <33.159058, 28.630421, 46.481251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336449, 28.896378, 46.721668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403858, -0.450418, 0.796255,
		0.800143, -0.595854, 0.068772,
		0.443476, 0.664892, 0.601039,
		33.469490, 29.095844, 46.901981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612194, 28.215206, 46.930996>,  <33.159058, 28.630421, 46.481251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612194, 28.215206, 46.930996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553497, 28.556490, 47.131195>,  <33.518280, 28.761261, 47.251312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553497, 28.556490, 47.131195>,  <33.612194, 28.215206, 46.930996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553497, 28.556490, 47.131195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313965, -0.519985, 0.794381,
		0.938025, -0.040566, 0.344184,
		-0.146746, 0.853212, 0.500495,
		33.509472, 28.812454, 47.281345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815376, 28.042000, 47.587479>,  <33.612194, 28.215206, 46.930996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815376, 28.042000, 47.587479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614780, 28.381594, 47.654087>,  <33.494423, 28.585350, 47.694054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614780, 28.381594, 47.654087>,  <33.815376, 28.042000, 47.587479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614780, 28.381594, 47.654087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371813, -0.385289, 0.844575,
		0.781192, 0.361632, 0.508883,
		-0.501492, 0.848985, 0.166525,
		33.464333, 28.636290, 47.704044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938900, 28.294218, 48.241669>,  <33.815376, 28.042000, 47.587479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938900, 28.294218, 48.241669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579140, 28.449560, 48.161415>,  <33.363281, 28.542765, 48.113262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579140, 28.449560, 48.161415>,  <33.938900, 28.294218, 48.241669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579140, 28.449560, 48.161415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346616, -0.353965, 0.868658,
		0.266330, 0.850816, 0.452968,
		-0.899403, 0.388355, -0.200635,
		33.309319, 28.566067, 48.101223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692768, 28.643263, 48.873699>,  <33.938900, 28.294218, 48.241669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692768, 28.643263, 48.873699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388748, 28.560770, 48.627193>,  <33.206337, 28.511274, 48.479290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388748, 28.560770, 48.627193>,  <33.692768, 28.643263, 48.873699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388748, 28.560770, 48.627193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414183, -0.577020, 0.703918,
		-0.500770, 0.790263, 0.353149,
		-0.760054, -0.206233, -0.616268,
		33.160732, 28.498899, 48.442314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184658, 28.407795, 49.319126>,  <33.692768, 28.643263, 48.873699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184658, 28.407795, 49.319126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017838, 28.312256, 48.968349>,  <32.917744, 28.254932, 48.757885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017838, 28.312256, 48.968349>,  <33.184658, 28.407795, 49.319126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017838, 28.312256, 48.968349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671582, -0.569141, 0.474401,
		-0.612410, 0.786786, 0.076956,
		-0.417051, -0.238846, -0.876939,
		32.892723, 28.240602, 48.705269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528912, 28.349499, 49.477364>,  <33.184658, 28.407795, 49.319126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528912, 28.349499, 49.477364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568089, 28.134586, 49.142284>,  <32.591595, 28.005638, 48.941238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568089, 28.134586, 49.142284>,  <32.528912, 28.349499, 49.477364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568089, 28.134586, 49.142284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484213, -0.761118, 0.431553,
		-0.869451, 0.363355, -0.334706,
		0.097944, -0.537283, -0.837696,
		32.597473, 27.973402, 48.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820164, 28.051842, 49.207504>,  <32.528912, 28.349499, 49.477364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820164, 28.051842, 49.207504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116295, 27.805599, 49.099476>,  <32.293976, 27.657854, 49.034657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116295, 27.805599, 49.099476>,  <31.820164, 28.051842, 49.207504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116295, 27.805599, 49.099476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588475, -0.787689, 0.182329,
		-0.324976, 0.023948, -0.945419,
		0.740329, -0.615608, -0.270073,
		32.338394, 27.620916, 49.018456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340721, 28.664944, 49.281189>,  <31.820164, 28.051842, 49.207504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340721, 28.664944, 49.281189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969687, 28.648838, 49.132614>,  <30.747066, 28.639175, 49.043468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969687, 28.648838, 49.132614>,  <31.340721, 28.664944, 49.281189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969687, 28.648838, 49.132614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302651, 0.501931, -0.810227,
		0.219057, -0.863970, -0.453399,
		-0.927586, -0.040264, -0.371433,
		30.691410, 28.636759, 49.021183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397421, 28.417227, 48.656364>,  <31.340721, 28.664944, 49.281189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397421, 28.417227, 48.656364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045813, 28.607916, 48.653366>,  <30.834846, 28.722330, 48.651566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045813, 28.607916, 48.653366>,  <31.397421, 28.417227, 48.656364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045813, 28.607916, 48.653366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186127, 0.328636, -0.925935,
		-0.438951, -0.815312, -0.377609,
		-0.879022, 0.476723, -0.007497,
		30.782106, 28.750933, 48.651115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164480, 28.320307, 48.004509>,  <31.397421, 28.417227, 48.656364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164480, 28.320307, 48.004509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933649, 28.608093, 48.159092>,  <30.795151, 28.780766, 48.251842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933649, 28.608093, 48.159092>,  <31.164480, 28.320307, 48.004509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933649, 28.608093, 48.159092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028004, 0.455489, -0.889801,
		-0.816211, -0.524305, -0.242704,
		-0.577076, 0.719468, 0.386458,
		30.760527, 28.823935, 48.275028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641161, 28.507742, 47.527702>,  <31.164480, 28.320307, 48.004509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641161, 28.507742, 47.527702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676073, 28.815338, 47.781013>,  <30.697020, 28.999895, 47.932999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676073, 28.815338, 47.781013>,  <30.641161, 28.507742, 47.527702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676073, 28.815338, 47.781013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033866, 0.637623, -0.769604,
		-0.995608, 0.045723, 0.081694,
		0.087278, 0.768990, 0.633274,
		30.702257, 29.046036, 47.970997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205074, 28.970051, 47.317036>,  <30.641161, 28.507742, 47.527702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205074, 28.970051, 47.317036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470186, 29.173979, 47.536419>,  <30.629253, 29.296335, 47.668049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470186, 29.173979, 47.536419>,  <30.205074, 28.970051, 47.317036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470186, 29.173979, 47.536419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126060, 0.646016, -0.752843,
		-0.738127, 0.568108, 0.363899,
		0.662780, 0.509820, 0.548458,
		30.669020, 29.326925, 47.700954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920193, 29.545849, 47.453850>,  <30.205074, 28.970051, 47.317036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920193, 29.545849, 47.453850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316866, 29.586351, 47.485638>,  <30.554869, 29.610653, 47.504711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316866, 29.586351, 47.485638>,  <29.920193, 29.545849, 47.453850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316866, 29.586351, 47.485638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001151, 0.610377, -0.792110,
		-0.128710, 0.785612, 0.605183,
		0.991682, 0.101256, 0.079466,
		30.614370, 29.616728, 47.509476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018740, 30.208776, 47.218678>,  <29.920193, 29.545849, 47.453850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018740, 30.208776, 47.218678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384787, 30.047886, 47.207539>,  <30.604414, 29.951351, 47.200855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384787, 30.047886, 47.207539>,  <30.018740, 30.208776, 47.218678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384787, 30.047886, 47.207539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232801, 0.583521, -0.778015,
		0.329188, 0.705491, 0.627628,
		0.915117, -0.402225, -0.027849,
		30.659321, 29.927217, 47.199184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356737, 30.806009, 47.121822>,  <30.018740, 30.208776, 47.218678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356737, 30.806009, 47.121822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596233, 30.505888, 47.009712>,  <30.739931, 30.325815, 46.942448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596233, 30.505888, 47.009712>,  <30.356737, 30.806009, 47.121822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596233, 30.505888, 47.009712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366613, 0.567853, -0.736978,
		0.712114, 0.338505, 0.615068,
		0.598739, -0.750304, -0.280276,
		30.775856, 30.280796, 46.925629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937477, 31.174578, 46.851635>,  <30.356737, 30.806009, 47.121822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937477, 31.174578, 46.851635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961693, 30.803816, 46.703480>,  <30.976221, 30.581360, 46.614586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961693, 30.803816, 46.703480>,  <30.937477, 31.174578, 46.851635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961693, 30.803816, 46.703480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188888, 0.374999, -0.907578,
		0.980131, -0.015019, 0.197782,
		0.060537, -0.926903, -0.370385,
		30.979855, 30.525745, 46.592365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601074, 31.042889, 46.583942>,  <30.937477, 31.174578, 46.851635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601074, 31.042889, 46.583942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330568, 30.800041, 46.417053>,  <31.168264, 30.654333, 46.316917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330568, 30.800041, 46.417053>,  <31.601074, 31.042889, 46.583942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330568, 30.800041, 46.417053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177489, 0.415404, -0.892153,
		0.714958, -0.677384, -0.173166,
		-0.676264, -0.607117, -0.417225,
		31.127689, 30.617907, 46.291885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793369, 30.963451, 46.011166>,  <31.601074, 31.042889, 46.583942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793369, 30.963451, 46.011166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434851, 30.808027, 45.925678>,  <31.219740, 30.714773, 45.874386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434851, 30.808027, 45.925678>,  <31.793369, 30.963451, 46.011166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434851, 30.808027, 45.925678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104078, 0.284155, -0.953113,
		0.431071, -0.876514, -0.214246,
		-0.896296, -0.388561, -0.213716,
		31.165962, 30.691460, 45.861565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813721, 30.295803, 45.495792>,  <31.793369, 30.963451, 46.011166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813721, 30.295803, 45.495792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.469179, 30.493818, 45.450169>,  <31.262455, 30.612627, 45.422794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.469179, 30.493818, 45.450169>,  <31.813721, 30.295803, 45.495792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469179, 30.493818, 45.450169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321185, 0.356724, -0.877262,
		-0.393587, -0.792267, -0.466264,
		-0.861353, 0.495036, -0.114062,
		31.210773, 30.642328, 45.415951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617918, 30.204462, 44.788296>,  <31.813721, 30.295803, 45.495792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617918, 30.204462, 44.788296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387245, 30.510923, 44.901749>,  <31.248842, 30.694799, 44.969822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387245, 30.510923, 44.901749>,  <31.617918, 30.204462, 44.788296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387245, 30.510923, 44.901749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137069, 0.432996, -0.890913,
		-0.805389, -0.474895, -0.354716,
		-0.576681, 0.766152, 0.283637,
		31.214241, 30.740768, 44.986839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209671, 30.388571, 44.160801>,  <31.617918, 30.204462, 44.788296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209671, 30.388571, 44.160801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185310, 30.717218, 44.387512>,  <31.170694, 30.914406, 44.523537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185310, 30.717218, 44.387512>,  <31.209671, 30.388571, 44.160801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185310, 30.717218, 44.387512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317751, 0.554248, -0.769314,
		-0.946216, 0.133242, -0.294824,
		-0.060900, 0.821618, 0.566776,
		31.167040, 30.963703, 44.557545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837305, 30.882086, 43.745712>,  <31.209671, 30.388571, 44.160801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837305, 30.882086, 43.745712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017437, 31.106180, 44.023804>,  <31.125517, 31.240637, 44.190659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017437, 31.106180, 44.023804>,  <30.837305, 30.882086, 43.745712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017437, 31.106180, 44.023804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305853, 0.634746, -0.709614,
		-0.838842, 0.532198, 0.114496,
		0.450331, 0.560235, 0.695226,
		31.152536, 31.274250, 44.232372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090189, 31.105648, 43.730682>,  <30.837305, 30.882086, 43.745712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090189, 31.105648, 43.730682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776705, 31.178167, 43.493050>,  <29.588615, 31.221680, 43.350471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776705, 31.178167, 43.493050>,  <30.090189, 31.105648, 43.730682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776705, 31.178167, 43.493050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609530, -0.408453, 0.679440,
		-0.119471, 0.894593, 0.430616,
		-0.783709, 0.181301, -0.594079,
		29.541592, 31.232557, 43.314827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631054, 31.529621, 44.109634>,  <30.090189, 31.105648, 43.730682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631054, 31.529621, 44.109634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.426979, 31.313122, 43.842274>,  <29.304535, 31.183224, 43.681858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.426979, 31.313122, 43.842274>,  <29.631054, 31.529621, 44.109634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426979, 31.313122, 43.842274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641535, -0.278128, 0.714897,
		-0.572837, 0.793535, -0.205331,
		-0.510187, -0.541246, -0.668402,
		29.273924, 31.150747, 43.641754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006765, 31.668751, 44.177212>,  <29.631054, 31.529621, 44.109634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006765, 31.668751, 44.177212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971102, 31.318947, 43.986515>,  <28.949703, 31.109064, 43.872097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971102, 31.318947, 43.986515>,  <29.006765, 31.668751, 44.177212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971102, 31.318947, 43.986515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825264, -0.203126, 0.526952,
		-0.557664, 0.440419, -0.703592,
		-0.089162, -0.874512, -0.476739,
		28.944353, 31.056593, 43.843494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276625, 31.588236, 44.080494>,  <29.006765, 31.668751, 44.177212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276625, 31.588236, 44.080494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441492, 31.224508, 44.057655>,  <28.540413, 31.006271, 44.043953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441492, 31.224508, 44.057655>,  <28.276625, 31.588236, 44.080494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441492, 31.224508, 44.057655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708134, -0.359147, 0.607914,
		-0.573291, -0.210133, -0.791948,
		0.412168, -0.909317, -0.057094,
		28.565142, 30.951714, 44.040527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640942, 31.155687, 44.007721>,  <28.276625, 31.588236, 44.080494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640942, 31.155687, 44.007721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.970238, 30.950157, 44.104271>,  <28.167814, 30.826839, 44.162201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.970238, 30.950157, 44.104271>,  <27.640942, 31.155687, 44.007721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970238, 30.950157, 44.104271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498278, -0.450267, 0.740931,
		-0.272023, -0.730236, -0.626705,
		0.823239, -0.513824, 0.241377,
		28.217209, 30.796009, 44.176685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279461, 30.499390, 44.182674>,  <27.640942, 31.155687, 44.007721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279461, 30.499390, 44.182674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.647156, 30.488657, 44.339790>,  <27.867773, 30.482218, 44.434059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.647156, 30.488657, 44.339790>,  <27.279461, 30.499390, 44.182674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647156, 30.488657, 44.339790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373854, -0.372314, 0.849480,
		0.123450, -0.927719, -0.352275,
		0.919235, -0.026831, 0.392794,
		27.922926, 30.480608, 44.457630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375744, 29.778666, 44.428997>,  <27.279461, 30.499390, 44.182674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375744, 29.778666, 44.428997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.632736, 30.011675, 44.628151>,  <27.786932, 30.151480, 44.747643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.632736, 30.011675, 44.628151>,  <27.375744, 29.778666, 44.428997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632736, 30.011675, 44.628151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270976, -0.435037, 0.858670,
		0.716791, -0.686594, -0.121655,
		0.642482, 0.582521, 0.497881,
		27.825481, 30.186432, 44.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645815, 29.146460, 44.287506>,  <27.375744, 29.778666, 44.428997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645815, 29.146460, 44.287506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.388790, 28.855070, 44.192478>,  <27.234575, 28.680237, 44.135460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.388790, 28.855070, 44.192478>,  <27.645815, 29.146460, 44.287506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388790, 28.855070, 44.192478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405528, -0.060247, -0.912095,
		0.650125, -0.682419, 0.334129,
		-0.642561, -0.728474, -0.237572,
		27.196022, 28.636528, 44.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062344, 28.598961, 44.188068>,  <27.645815, 29.146460, 44.287506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062344, 28.598961, 44.188068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.718430, 28.556679, 43.988232>,  <27.512081, 28.531309, 43.868328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.718430, 28.556679, 43.988232>,  <28.062344, 28.598961, 44.188068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718430, 28.556679, 43.988232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510343, -0.143829, -0.847858,
		0.017769, -0.983940, 0.177609,
		-0.859787, -0.105707, -0.499592,
		27.460493, 28.524967, 43.838352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211960, 28.064320, 43.756630>,  <28.062344, 28.598961, 44.188068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211960, 28.064320, 43.756630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.879078, 28.241060, 43.622646>,  <27.679348, 28.347105, 43.542255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.879078, 28.241060, 43.622646>,  <28.211960, 28.064320, 43.756630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879078, 28.241060, 43.622646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414130, 0.093625, -0.905390,
		-0.368689, -0.892188, -0.260900,
		-0.832205, 0.441854, -0.334963,
		27.629416, 28.373617, 43.522156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969526, 27.714146, 43.013077>,  <28.211960, 28.064320, 43.756630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969526, 27.714146, 43.013077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.821087, 28.085569, 43.016304>,  <27.732023, 28.308424, 43.018242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.821087, 28.085569, 43.016304>,  <27.969526, 27.714146, 43.013077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821087, 28.085569, 43.016304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296120, 0.126570, -0.946727,
		-0.880114, -0.348938, -0.321935,
		-0.371096, 0.928559, 0.008069,
		27.709759, 28.364138, 43.018726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955107, 27.875437, 42.345657>,  <27.969526, 27.714146, 43.013077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955107, 27.875437, 42.345657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854902, 28.242752, 42.468288>,  <27.794781, 28.463142, 42.541866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854902, 28.242752, 42.468288>,  <27.955107, 27.875437, 42.345657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854902, 28.242752, 42.468288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199138, 0.358781, -0.911932,
		-0.947412, -0.167396, -0.272744,
		-0.250509, 0.918289, 0.306578,
		27.779749, 28.518238, 42.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443592, 28.194424, 41.855934>,  <27.955107, 27.875437, 42.345657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443592, 28.194424, 41.855934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.563866, 28.525297, 42.045822>,  <27.636030, 28.723822, 42.159756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.563866, 28.525297, 42.045822>,  <27.443592, 28.194424, 41.855934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563866, 28.525297, 42.045822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033909, 0.488168, -0.872091,
		-0.953121, 0.278320, 0.118735,
		0.300683, 0.827182, 0.474721,
		27.654070, 28.773453, 42.188240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106274, 28.725506, 41.615269>,  <27.443592, 28.194424, 41.855934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106274, 28.725506, 41.615269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.462307, 28.859015, 41.739429>,  <27.675926, 28.939119, 41.813927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.462307, 28.859015, 41.739429>,  <27.106274, 28.725506, 41.615269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462307, 28.859015, 41.739429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087687, 0.542893, -0.835212,
		-0.447285, 0.770626, 0.453952,
		0.890083, 0.333772, 0.310401,
		27.729332, 28.959146, 41.832550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.749933, 26.824966, 46.087196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.811333, 26.856224, 45.693176>,  <30.848171, 26.874979, 45.456764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.811333, 26.856224, 45.693176>,  <30.749933, 26.824966, 46.087196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811333, 26.856224, 45.693176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340236, -0.931734, -0.126930,
		-0.927727, 0.354635, -0.116431,
		0.153497, 0.078142, -0.985055,
		30.857382, 26.879667, 45.397659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500044, 26.754778, 46.783100>,  <30.749933, 26.824966, 46.087196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500044, 26.754778, 46.783100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859930, 26.606432, 46.875164>,  <31.075861, 26.517424, 46.930401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859930, 26.606432, 46.875164>,  <30.500044, 26.754778, 46.783100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859930, 26.606432, 46.875164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399054, 0.485293, -0.777976,
		0.176833, 0.791801, 0.584621,
		0.899715, -0.370867, 0.230155,
		31.129845, 26.495173, 46.944210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903635, 27.322571, 46.919228>,  <30.500044, 26.754778, 46.783100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903635, 27.322571, 46.919228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.192650, 27.055571, 46.847248>,  <31.366058, 26.895370, 46.804062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.192650, 27.055571, 46.847248>,  <30.903635, 27.322571, 46.919228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192650, 27.055571, 46.847248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418150, 0.629240, -0.655139,
		0.550536, 0.398118, 0.733766,
		0.722538, -0.667502, -0.179946,
		31.409410, 26.855320, 46.793262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419945, 27.776896, 46.799194>,  <30.903635, 27.322571, 46.919228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419945, 27.776896, 46.799194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582039, 27.429129, 46.686131>,  <31.679295, 27.220469, 46.618294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582039, 27.429129, 46.686131>,  <31.419945, 27.776896, 46.799194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582039, 27.429129, 46.686131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595362, 0.485602, -0.640105,
		0.693779, 0.091108, 0.714402,
		0.405234, -0.869419, -0.282658,
		31.703609, 27.168303, 46.601334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122120, 27.833052, 46.849560>,  <31.419945, 27.776896, 46.799194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122120, 27.833052, 46.849560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069294, 27.530878, 46.592850>,  <32.037598, 27.349573, 46.438824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069294, 27.530878, 46.592850>,  <32.122120, 27.833052, 46.849560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069294, 27.530878, 46.592850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675714, 0.405089, -0.615884,
		0.725237, -0.514995, 0.456959,
		-0.132068, -0.755436, -0.641775,
		32.029675, 27.304247, 46.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772141, 27.665956, 46.608978>,  <32.122120, 27.833052, 46.849560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772141, 27.665956, 46.608978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525517, 27.493242, 46.345638>,  <32.377544, 27.389614, 46.187634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525517, 27.493242, 46.345638>,  <32.772141, 27.665956, 46.608978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525517, 27.493242, 46.345638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531617, 0.388463, -0.752649,
		0.580726, -0.814038, -0.009965,
		-0.616556, -0.431785, -0.658347,
		32.340549, 27.363707, 46.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258972, 27.258202, 46.111919>,  <32.772141, 27.665956, 46.608978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258972, 27.258202, 46.111919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910809, 27.322565, 45.925804>,  <32.701908, 27.361183, 45.814137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910809, 27.322565, 45.925804>,  <33.258972, 27.258202, 46.111919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910809, 27.322565, 45.925804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487454, 0.414265, -0.768618,
		0.069075, -0.895820, -0.439017,
		-0.870412, 0.160908, -0.465286,
		32.649685, 27.370838, 45.786217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416626, 27.191488, 45.431400>,  <33.258972, 27.258202, 46.111919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416626, 27.191488, 45.431400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057186, 27.364006, 45.399136>,  <32.841522, 27.467518, 45.379776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057186, 27.364006, 45.399136>,  <33.416626, 27.191488, 45.431400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057186, 27.364006, 45.399136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312387, 0.499773, -0.807862,
		-0.308118, -0.751140, -0.583826,
		-0.898598, 0.431297, -0.080657,
		32.787605, 27.493395, 45.374939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094418, 26.988867, 44.736778>,  <33.416626, 27.191488, 45.431400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094418, 26.988867, 44.736778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922935, 27.326157, 44.866505>,  <32.820045, 27.528530, 44.944340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922935, 27.326157, 44.866505>,  <33.094418, 26.988867, 44.736778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922935, 27.326157, 44.866505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147204, 0.419373, -0.895800,
		-0.891370, -0.336298, -0.303915,
		-0.428709, 0.843226, 0.324312,
		32.794323, 27.579124, 44.963799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588673, 27.216423, 44.136745>,  <33.094418, 26.988867, 44.736778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588673, 27.216423, 44.136745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.658337, 27.537510, 44.364891>,  <32.700134, 27.730162, 44.501778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.658337, 27.537510, 44.364891>,  <32.588673, 27.216423, 44.136745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658337, 27.537510, 44.364891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032309, 0.574247, -0.818044,
		-0.984188, 0.160895, 0.074074,
		0.174156, 0.802716, 0.570365,
		32.710583, 27.778324, 44.535999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046097, 27.696783, 43.962494>,  <32.588673, 27.216423, 44.136745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046097, 27.696783, 43.962494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334568, 27.916071, 44.131897>,  <32.507652, 28.047644, 44.233540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334568, 27.916071, 44.131897>,  <32.046097, 27.696783, 43.962494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334568, 27.916071, 44.131897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007746, 0.604921, -0.796248,
		-0.692708, 0.577515, 0.432009,
		0.721177, 0.548221, 0.423507,
		32.550922, 28.080538, 44.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882811, 28.422058, 43.881680>,  <32.046097, 27.696783, 43.962494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882811, 28.422058, 43.881680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277729, 28.379932, 43.929268>,  <32.514679, 28.354656, 43.957821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277729, 28.379932, 43.929268>,  <31.882811, 28.422058, 43.881680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277729, 28.379932, 43.929268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156946, 0.529793, -0.833479,
		0.024750, 0.841563, 0.539592,
		0.987297, -0.105316, 0.118968,
		32.573917, 28.348337, 43.964958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300507, 28.912434, 43.793221>,  <31.882811, 28.422058, 43.881680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300507, 28.912434, 43.793221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.085115, 28.800800, 43.475189>,  <30.955881, 28.733820, 43.284370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.085115, 28.800800, 43.475189>,  <31.300507, 28.912434, 43.793221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085115, 28.800800, 43.475189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624435, -0.501397, 0.598901,
		-0.565793, 0.818972, 0.095723,
		-0.538478, -0.279081, -0.795082,
		30.923573, 28.717075, 43.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560942, 29.069199, 43.919674>,  <31.300507, 28.912434, 43.793221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560942, 29.069199, 43.919674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.561588, 28.762005, 43.663486>,  <30.561975, 28.577688, 43.509773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.561588, 28.762005, 43.663486>,  <30.560942, 29.069199, 43.919674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561588, 28.762005, 43.663486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542301, -0.538784, 0.644687,
		-0.840183, 0.346285, -0.417349,
		0.001616, -0.767983, -0.640468,
		30.562073, 28.531610, 43.471348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888903, 28.925625, 43.787132>,  <30.560942, 29.069199, 43.919674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888903, 28.925625, 43.787132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086418, 28.593147, 43.684921>,  <30.204927, 28.393661, 43.623596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086418, 28.593147, 43.684921>,  <29.888903, 28.925625, 43.787132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086418, 28.593147, 43.684921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572500, -0.531919, 0.623944,
		-0.654535, -0.161808, -0.738513,
		0.493788, -0.831192, -0.255525,
		30.234554, 28.343790, 43.608265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367037, 28.396957, 43.749176>,  <29.888903, 28.925625, 43.787132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367037, 28.396957, 43.749176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.708450, 28.188641, 43.755569>,  <29.913298, 28.063650, 43.759407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.708450, 28.188641, 43.755569>,  <29.367037, 28.396957, 43.749176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708450, 28.188641, 43.755569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451584, -0.724103, 0.521293,
		-0.259909, -0.452161, -0.853228,
		0.853533, -0.520793, 0.015988,
		29.964510, 28.032402, 43.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243116, 27.705639, 43.513950>,  <29.367037, 28.396957, 43.749176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243116, 27.705639, 43.513950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.583307, 27.667622, 43.720890>,  <29.787422, 27.644812, 43.845055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.583307, 27.667622, 43.720890>,  <29.243116, 27.705639, 43.513950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583307, 27.667622, 43.720890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449309, -0.642670, 0.620561,
		0.273507, -0.760225, -0.589281,
		0.850479, -0.095042, 0.517351,
		29.838451, 27.639109, 43.876095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285000, 26.937637, 43.592190>,  <29.243116, 27.705639, 43.513950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285000, 26.937637, 43.592190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.523590, 27.123764, 43.853786>,  <29.666744, 27.235439, 44.010742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.523590, 27.123764, 43.853786>,  <29.285000, 26.937637, 43.592190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523590, 27.123764, 43.853786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388742, -0.545377, 0.742593,
		0.702210, -0.697169, -0.144415,
		0.596474, 0.465316, 0.653988,
		29.702532, 27.263359, 44.049984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595514, 26.387600, 44.043633>,  <29.285000, 26.937637, 43.592190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595514, 26.387600, 44.043633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.602812, 26.724611, 44.258968>,  <29.607191, 26.926819, 44.388168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.602812, 26.724611, 44.258968>,  <29.595514, 26.387600, 44.043633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602812, 26.724611, 44.258968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436525, -0.477690, 0.762403,
		0.899507, -0.248910, 0.359070,
		0.018246, 0.842530, 0.538341,
		29.608286, 26.977369, 44.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953815, 26.244438, 44.739109>,  <29.595514, 26.387600, 44.043633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953815, 26.244438, 44.739109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752598, 26.578106, 44.829540>,  <29.631868, 26.778307, 44.883801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752598, 26.578106, 44.829540>,  <29.953815, 26.244438, 44.739109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752598, 26.578106, 44.829540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199935, -0.366808, 0.908558,
		0.840818, 0.411843, 0.351299,
		-0.503042, 0.834169, 0.226077,
		29.601685, 26.828356, 44.897362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143677, 26.321720, 45.381325>,  <29.953815, 26.244438, 44.739109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143677, 26.321720, 45.381325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822332, 26.555178, 45.334049>,  <29.629526, 26.695253, 45.305683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822332, 26.555178, 45.334049>,  <30.143677, 26.321720, 45.381325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822332, 26.555178, 45.334049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276285, -0.189500, 0.942208,
		0.527520, 0.789587, 0.313490,
		-0.803361, 0.583646, -0.118186,
		29.581324, 26.730272, 45.298592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064384, 26.664736, 46.099388>,  <30.143677, 26.321720, 45.381325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064384, 26.664736, 46.099388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.713797, 26.686726, 45.908066>,  <29.503445, 26.699919, 45.793270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.713797, 26.686726, 45.908066>,  <30.064384, 26.664736, 46.099388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713797, 26.686726, 45.908066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479368, -0.192098, 0.856332,
		-0.044807, 0.979835, 0.194721,
		-0.876469, 0.054973, -0.478309,
		29.450855, 26.703218, 45.764572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597822, 26.945501, 46.628117>,  <30.064384, 26.664736, 46.099388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597822, 26.945501, 46.628117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345623, 26.816824, 46.345562>,  <29.194304, 26.739618, 46.176029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345623, 26.816824, 46.345562>,  <29.597822, 26.945501, 46.628117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345623, 26.816824, 46.345562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661347, -0.253747, 0.705856,
		-0.406313, 0.912209, -0.052763,
		-0.630500, -0.321693, -0.706388,
		29.156473, 26.720316, 46.133644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931562, 27.299360, 46.755337>,  <29.597822, 26.945501, 46.628117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931562, 27.299360, 46.755337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.864929, 26.953291, 46.566139>,  <28.824949, 26.745649, 46.452621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.864929, 26.953291, 46.566139>,  <28.931562, 27.299360, 46.755337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864929, 26.953291, 46.566139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642679, -0.268534, 0.717533,
		-0.747806, 0.423513, -0.511296,
		-0.166584, -0.865174, -0.472994,
		28.814955, 26.693739, 46.424240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253859, 27.154812, 46.843590>,  <28.931562, 27.299360, 46.755337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253859, 27.154812, 46.843590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.409288, 26.798847, 46.748035>,  <28.502546, 26.585268, 46.690701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.409288, 26.798847, 46.748035>,  <28.253859, 27.154812, 46.843590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409288, 26.798847, 46.748035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721387, -0.455114, 0.521988,
		-0.573245, -0.030498, -0.818816,
		0.388575, -0.889911, -0.238891,
		28.525862, 26.531874, 46.676369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669506, 26.761774, 46.736759>,  <28.253859, 27.154812, 46.843590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669506, 26.761774, 46.736759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.985983, 26.522825, 46.789162>,  <28.175869, 26.379456, 46.820602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.985983, 26.522825, 46.789162>,  <27.669506, 26.761774, 46.736759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985983, 26.522825, 46.789162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555398, -0.612161, 0.562842,
		-0.256026, -0.518079, -0.816116,
		0.791191, -0.597371, 0.131011,
		28.223341, 26.343615, 46.828465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983124, 26.549513, 46.361790>,  <27.669506, 26.761774, 46.736759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983124, 26.549513, 46.361790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.834379, 26.896128, 46.494953>,  <26.745132, 27.104097, 46.574852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.834379, 26.896128, 46.494953>,  <26.983124, 26.549513, 46.361790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834379, 26.896128, 46.494953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162264, 0.292431, -0.942419,
		-0.913997, -0.404468, 0.031865,
		-0.371860, 0.866539, 0.332912,
		26.722820, 27.156090, 46.594826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406803, 26.712477, 46.010750>,  <26.983124, 26.549513, 46.361790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406803, 26.712477, 46.010750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.479801, 27.077885, 46.156174>,  <26.523600, 27.297129, 46.243427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.479801, 27.077885, 46.156174>,  <26.406803, 26.712477, 46.010750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479801, 27.077885, 46.156174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200482, 0.396578, -0.895842,
		-0.962550, 0.090600, 0.255519,
		0.182496, 0.913519, 0.363563,
		26.534550, 27.351940, 46.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033463, 27.044178, 45.568356>,  <26.406803, 26.712477, 46.010750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033463, 27.044178, 45.568356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.259199, 27.329861, 45.733971>,  <26.394640, 27.501270, 45.833340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.259199, 27.329861, 45.733971>,  <26.033463, 27.044178, 45.568356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259199, 27.329861, 45.733971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014308, 0.509920, -0.860103,
		-0.825419, 0.479466, 0.297987,
		0.564340, 0.714209, 0.414037,
		26.428501, 27.544123, 45.858181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828913, 27.680531, 45.274689>,  <26.033463, 27.044178, 45.568356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828913, 27.680531, 45.274689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.196060, 27.755005, 45.414890>,  <26.416348, 27.799690, 45.499012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.196060, 27.755005, 45.414890>,  <25.828913, 27.680531, 45.274689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196060, 27.755005, 45.414890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255078, 0.399855, -0.880370,
		-0.304064, 0.897469, 0.319522,
		0.917867, 0.186186, 0.350506,
		26.471420, 27.810860, 45.520042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976727, 28.442337, 45.143688>,  <25.828913, 27.680531, 45.274689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976727, 28.442337, 45.143688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337078, 28.273092, 45.182453>,  <26.553289, 28.171545, 45.205711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337078, 28.273092, 45.182453>,  <25.976727, 28.442337, 45.143688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337078, 28.273092, 45.182453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310752, 0.472779, -0.824569,
		0.303067, 0.772953, 0.557400,
		0.900879, -0.423113, 0.096913,
		26.607342, 28.146158, 45.211529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411480, 28.966105, 44.987457>,  <25.976727, 28.442337, 45.143688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411480, 28.966105, 44.987457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.614630, 28.627733, 44.922379>,  <26.736519, 28.424709, 44.883331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.614630, 28.627733, 44.922379>,  <26.411480, 28.966105, 44.987457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614630, 28.627733, 44.922379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266120, 0.333697, -0.904337,
		0.819296, 0.415992, 0.394595,
		0.507872, -0.845930, -0.162693,
		26.766991, 28.373955, 44.873569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075802, 29.187027, 44.835037>,  <26.411480, 28.966105, 44.987457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075802, 29.187027, 44.835037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.044338, 28.822712, 44.672913>,  <27.025461, 28.604122, 44.575638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.044338, 28.822712, 44.672913>,  <27.075802, 29.187027, 44.835037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044338, 28.822712, 44.672913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177987, 0.387210, -0.904648,
		0.980884, -0.143298, 0.131651,
		-0.078658, -0.910788, -0.405314,
		27.020741, 28.549477, 44.551319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780468, 29.222824, 45.105801>,  <27.075802, 29.187027, 44.835037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780468, 29.222824, 45.105801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.815304, 29.616592, 45.166897>,  <27.836205, 29.852854, 45.203552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.815304, 29.616592, 45.166897>,  <27.780468, 29.222824, 45.105801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815304, 29.616592, 45.166897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269158, -0.124366, 0.955032,
		0.959150, -0.124283, 0.254134,
		0.087088, 0.984422, 0.152738,
		27.841431, 29.911919, 45.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199856, 29.261585, 45.718235>,  <27.780468, 29.222824, 45.105801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199856, 29.261585, 45.718235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.994711, 29.603247, 45.683830>,  <27.871624, 29.808243, 45.663189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.994711, 29.603247, 45.683830>,  <28.199856, 29.261585, 45.718235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994711, 29.603247, 45.683830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221001, -0.034548, 0.974662,
		0.829537, 0.518875, 0.206486,
		-0.512861, 0.854152, -0.086013,
		27.840853, 29.859491, 45.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389498, 29.561178, 46.279625>,  <28.199856, 29.261585, 45.718235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389498, 29.561178, 46.279625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087460, 29.797161, 46.165237>,  <27.906237, 29.938751, 46.096603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087460, 29.797161, 46.165237>,  <28.389498, 29.561178, 46.279625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087460, 29.797161, 46.165237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121551, 0.302653, 0.945318,
		0.644249, 0.748565, -0.156822,
		-0.755095, 0.589958, -0.285973,
		27.860931, 29.974148, 46.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639107, 30.242815, 46.365170>,  <28.389498, 29.561178, 46.279625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639107, 30.242815, 46.365170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.239904, 30.232395, 46.388157>,  <28.000383, 30.226143, 46.401951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.239904, 30.232395, 46.388157>,  <28.639107, 30.242815, 46.365170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239904, 30.232395, 46.388157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049056, 0.252526, 0.966346,
		-0.039686, 0.967239, -0.250745,
		-0.998007, -0.026049, 0.057471,
		27.940502, 30.224581, 46.405399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490110, 30.739853, 46.836189>,  <28.639107, 30.242815, 46.365170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490110, 30.739853, 46.836189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.151930, 30.527407, 46.858555>,  <27.949020, 30.399939, 46.871975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.151930, 30.527407, 46.858555>,  <28.490110, 30.739853, 46.836189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151930, 30.527407, 46.858555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066405, 0.208432, 0.975780,
		-0.529906, 0.821263, -0.211488,
		-0.845453, -0.531116, 0.055914,
		27.898294, 30.368073, 46.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134945, 31.090683, 47.248974>,  <28.490110, 30.739853, 46.836189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134945, 31.090683, 47.248974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.981728, 30.721304, 47.239803>,  <27.889797, 30.499678, 47.234299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.981728, 30.721304, 47.239803>,  <28.134945, 31.090683, 47.248974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981728, 30.721304, 47.239803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151766, 0.038429, 0.987669,
		-0.911178, 0.381799, -0.154867,
		-0.383043, -0.923446, -0.022928,
		27.866816, 30.444269, 47.232925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557095, 31.161278, 47.699501>,  <28.134945, 31.090683, 47.248974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557095, 31.161278, 47.699501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.605885, 30.765581, 47.667198>,  <27.635159, 30.528162, 47.647816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.605885, 30.765581, 47.667198>,  <27.557095, 31.161278, 47.699501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605885, 30.765581, 47.667198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277167, -0.112075, 0.954263,
		-0.953048, -0.094013, -0.287856,
		0.121974, -0.989242, -0.080756,
		27.642477, 30.468809, 47.642971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967010, 30.891077, 47.972370>,  <27.557095, 31.161278, 47.699501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967010, 30.891077, 47.972370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.221651, 30.582901, 47.986000>,  <27.374435, 30.397995, 47.994179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.221651, 30.582901, 47.986000>,  <26.967010, 30.891077, 47.972370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221651, 30.582901, 47.986000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311242, -0.216249, 0.925400,
		-0.705598, -0.599714, -0.377458,
		0.636600, -0.770441, 0.034072,
		27.412632, 30.351768, 47.996223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699869, 30.229292, 48.273247>,  <26.967010, 30.891077, 47.972370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699869, 30.229292, 48.273247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.098125, 30.200699, 48.297199>,  <27.337080, 30.183542, 48.311569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.098125, 30.200699, 48.297199>,  <26.699869, 30.229292, 48.273247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098125, 30.200699, 48.297199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082528, -0.376556, 0.922711,
		-0.043409, -0.923632, -0.380814,
		0.995643, -0.071482, 0.059879,
		27.396818, 30.179255, 48.315163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.587421, 35.681789, 35.383873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 35.711384, 35.671993>,  <34.028835, 35.729141, 35.844864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 35.711384, 35.671993>,  <33.587421, 35.681789, 35.383873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863304, 35.711384, 35.671993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631410, -0.425473, 0.648301,
		0.354434, -0.901941, -0.246735,
		0.689709, 0.073989, 0.720296,
		34.070217, 35.733582, 35.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462681, 35.077271, 35.802963>,  <33.587421, 35.681789, 35.383873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462681, 35.077271, 35.802963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686401, 35.322193, 36.026485>,  <33.820633, 35.469147, 36.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686401, 35.322193, 36.026485>,  <33.462681, 35.077271, 35.802963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686401, 35.322193, 36.026485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604174, -0.160456, 0.780530,
		0.567585, -0.774170, 0.280194,
		0.559304, 0.612303, 0.558806,
		33.854191, 35.505882, 36.194126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598721, 34.585751, 36.326962>,  <33.462681, 35.077271, 35.802963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598721, 34.585751, 36.326962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674370, 34.954586, 36.462013>,  <33.719757, 35.175888, 36.543045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674370, 34.954586, 36.462013>,  <33.598721, 34.585751, 36.326962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674370, 34.954586, 36.462013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655804, -0.137307, 0.742340,
		0.730859, -0.361809, 0.578739,
		0.189120, 0.922085, 0.337628,
		33.731106, 35.231213, 36.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663376, 34.487724, 37.005695>,  <33.598721, 34.585751, 36.326962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663376, 34.487724, 37.005695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603466, 34.882610, 36.983852>,  <33.567520, 35.119541, 36.970745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603466, 34.882610, 36.983852>,  <33.663376, 34.487724, 37.005695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603466, 34.882610, 36.983852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697129, -0.066276, 0.713876,
		0.701126, 0.144992, 0.698140,
		-0.149777, 0.987210, -0.054610,
		33.558533, 35.178772, 36.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820129, 34.707714, 37.689198>,  <33.663376, 34.487724, 37.005695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820129, 34.707714, 37.689198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585949, 34.976326, 37.507515>,  <33.445442, 35.137493, 37.398506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585949, 34.976326, 37.507515>,  <33.820129, 34.707714, 37.689198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585949, 34.976326, 37.507515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620380, -0.010425, 0.784232,
		0.521899, 0.740906, 0.422706,
		-0.585449, 0.671528, -0.454203,
		33.410313, 35.177784, 37.371254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747810, 35.285259, 38.175804>,  <33.820129, 34.707714, 37.689198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747810, 35.285259, 38.175804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451302, 35.264278, 37.908142>,  <33.273396, 35.251690, 37.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451302, 35.264278, 37.908142>,  <33.747810, 35.285259, 38.175804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451302, 35.264278, 37.908142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671042, 0.036076, 0.740541,
		-0.014700, 0.997972, -0.061937,
		-0.741274, -0.052449, -0.669150,
		33.228920, 35.248543, 37.707397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163563, 35.852070, 38.329277>,  <33.747810, 35.285259, 38.175804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163563, 35.852070, 38.329277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969646, 35.600334, 38.086327>,  <32.853298, 35.449291, 37.940556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969646, 35.600334, 38.086327>,  <33.163563, 35.852070, 38.329277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969646, 35.600334, 38.086327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747262, -0.062837, 0.661552,
		-0.454507, 0.774585, -0.439820,
		-0.484791, -0.629341, -0.607378,
		32.824207, 35.411533, 37.904114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440086, 36.019814, 38.325718>,  <33.163563, 35.852070, 38.329277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440086, 36.019814, 38.325718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457024, 35.636547, 38.212490>,  <32.467186, 35.406590, 38.144554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457024, 35.636547, 38.212490>,  <32.440086, 36.019814, 38.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457024, 35.636547, 38.212490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777008, -0.209688, 0.593540,
		-0.628065, 0.194815, -0.753380,
		0.042344, -0.958164, -0.283071,
		32.469727, 35.349098, 38.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742174, 35.782158, 38.360039>,  <32.440086, 36.019814, 38.325718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742174, 35.782158, 38.360039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949776, 35.442551, 38.320427>,  <32.074337, 35.238789, 38.296661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949776, 35.442551, 38.320427>,  <31.742174, 35.782158, 38.360039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949776, 35.442551, 38.320427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619174, -0.453292, 0.641210,
		-0.589286, -0.271474, -0.760949,
		0.519004, -0.849016, -0.099029,
		32.105476, 35.187847, 38.290718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312227, 35.332981, 38.160210>,  <31.742174, 35.782158, 38.360039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312227, 35.332981, 38.160210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594063, 35.100437, 38.322971>,  <31.763165, 34.960911, 38.420628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594063, 35.100437, 38.322971>,  <31.312227, 35.332981, 38.160210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594063, 35.100437, 38.322971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675915, -0.375214, 0.634313,
		-0.216087, -0.721965, -0.657322,
		0.704588, -0.581361, 0.406909,
		31.805439, 34.926029, 38.445045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155930, 34.622154, 38.121204>,  <31.312227, 35.332981, 38.160210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155930, 34.622154, 38.121204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390818, 34.674862, 38.440655>,  <31.531750, 34.706486, 38.632324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390818, 34.674862, 38.440655>,  <31.155930, 34.622154, 38.121204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390818, 34.674862, 38.440655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758919, -0.253452, 0.599837,
		0.281454, -0.958332, -0.048830,
		0.587219, 0.131768, 0.798631,
		31.566984, 34.714394, 38.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037868, 33.907013, 38.378670>,  <31.155930, 34.622154, 38.121204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037868, 33.907013, 38.378670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196974, 34.150635, 38.653141>,  <31.292437, 34.296806, 38.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196974, 34.150635, 38.653141>,  <31.037868, 33.907013, 38.378670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196974, 34.150635, 38.653141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622884, -0.369858, 0.689363,
		0.673646, -0.701612, 0.232253,
		0.397764, 0.609053, 0.686176,
		31.316303, 34.333351, 38.858994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852657, 33.150547, 38.229507>,  <31.037868, 33.907013, 38.378670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852657, 33.150547, 38.229507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499737, 33.060524, 38.064148>,  <30.287985, 33.006512, 37.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499737, 33.060524, 38.064148>,  <30.852657, 33.150547, 38.229507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499737, 33.060524, 38.064148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247980, 0.524252, -0.814657,
		0.400066, -0.821287, -0.406738,
		-0.882300, -0.225053, -0.413397,
		30.235046, 32.993008, 37.940128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065367, 33.046547, 37.563019>,  <30.852657, 33.150547, 38.229507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065367, 33.046547, 37.563019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667326, 33.085960, 37.559868>,  <30.428501, 33.109608, 37.557976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667326, 33.085960, 37.559868>,  <31.065367, 33.046547, 37.563019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667326, 33.085960, 37.559868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043742, 0.367494, -0.928997,
		-0.088639, -0.924792, -0.370004,
		-0.995103, 0.098530, -0.007878,
		30.368795, 33.115520, 37.557503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920834, 32.879238, 36.792439>,  <31.065367, 33.046547, 37.563019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920834, 32.879238, 36.792439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608053, 33.066975, 36.956524>,  <30.420385, 33.179615, 37.054974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608053, 33.066975, 36.956524>,  <30.920834, 32.879238, 36.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608053, 33.066975, 36.956524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200927, 0.433182, -0.878625,
		-0.590068, -0.769465, -0.244425,
		-0.781952, 0.469337, 0.410213,
		30.373468, 33.207775, 37.079586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336796, 32.792503, 36.306175>,  <30.920834, 32.879238, 36.792439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336796, 32.792503, 36.306175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270981, 33.113647, 36.535378>,  <30.231491, 33.306335, 36.672897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270981, 33.113647, 36.535378>,  <30.336796, 32.792503, 36.306175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270981, 33.113647, 36.535378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071474, 0.569693, -0.818744,
		-0.983778, -0.175669, -0.036352,
		-0.164537, 0.802864, 0.573007,
		30.221619, 33.354507, 36.707279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774563, 33.105621, 35.972420>,  <30.336796, 32.792503, 36.306175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774563, 33.105621, 35.972420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964172, 33.369560, 36.205624>,  <30.077938, 33.527924, 36.345547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964172, 33.369560, 36.205624>,  <29.774563, 33.105621, 35.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964172, 33.369560, 36.205624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180615, 0.575181, -0.797837,
		-0.861788, 0.483495, 0.153472,
		0.474025, 0.659847, 0.583011,
		30.106380, 33.567516, 36.380527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675341, 33.667870, 35.515579>,  <29.774563, 33.105621, 35.972420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675341, 33.667870, 35.515579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941147, 33.773216, 35.795311>,  <30.100632, 33.836422, 35.963150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941147, 33.773216, 35.795311>,  <29.675341, 33.667870, 35.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941147, 33.773216, 35.795311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392653, 0.673177, -0.626623,
		-0.635799, 0.690994, 0.343927,
		0.664517, 0.263362, 0.699327,
		30.140501, 33.852226, 36.005108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609018, 34.400379, 35.654289>,  <29.675341, 33.667870, 35.515579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609018, 34.400379, 35.654289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990440, 34.324203, 35.747639>,  <30.219294, 34.278500, 35.803650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990440, 34.324203, 35.747639>,  <29.609018, 34.400379, 35.654289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990440, 34.324203, 35.747639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298266, 0.705072, -0.643359,
		-0.042028, 0.683087, 0.729127,
		0.953557, -0.190435, 0.233375,
		30.276508, 34.267075, 35.817650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876648, 34.987183, 35.739998>,  <29.609018, 34.400379, 35.654289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876648, 34.987183, 35.739998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172186, 34.738121, 35.636917>,  <30.349508, 34.588684, 35.575069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172186, 34.738121, 35.636917>,  <29.876648, 34.987183, 35.739998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172186, 34.738121, 35.636917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173014, 0.544873, -0.820475,
		0.651285, 0.561619, 0.510305,
		0.738846, -0.622654, -0.257700,
		30.393839, 34.551327, 35.559608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393761, 35.380909, 35.684647>,  <29.876648, 34.987183, 35.739998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393761, 35.380909, 35.684647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503445, 35.071556, 35.456020>,  <30.569254, 34.885944, 35.318844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503445, 35.071556, 35.456020>,  <30.393761, 35.380909, 35.684647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503445, 35.071556, 35.456020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399701, 0.632232, -0.663719,
		0.874671, -0.046458, 0.482486,
		0.274208, -0.773385, -0.571564,
		30.585707, 34.839542, 35.284550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167641, 35.547409, 35.484554>,  <30.393761, 35.380909, 35.684647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167641, 35.547409, 35.484554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092022, 35.247646, 35.230736>,  <31.046650, 35.067791, 35.078445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092022, 35.247646, 35.230736>,  <31.167641, 35.547409, 35.484554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092022, 35.247646, 35.230736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575472, 0.439054, -0.689973,
		0.795671, -0.495604, 0.348259,
		-0.189049, -0.749405, -0.634549,
		31.035307, 35.022823, 35.040371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763922, 35.360806, 35.332748>,  <31.167641, 35.547409, 35.484554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763922, 35.360806, 35.332748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520323, 35.245579, 35.037144>,  <31.374165, 35.176445, 34.859779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520323, 35.245579, 35.037144>,  <31.763922, 35.360806, 35.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520323, 35.245579, 35.037144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656164, 0.340485, -0.673439,
		0.445617, -0.895036, -0.018337,
		-0.608995, -0.288063, -0.739016,
		31.337624, 35.159161, 34.815437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172421, 35.126266, 34.918816>,  <31.763922, 35.360806, 35.332748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172421, 35.126266, 34.918816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846733, 35.176376, 34.692062>,  <31.651321, 35.206444, 34.556011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846733, 35.176376, 34.692062>,  <32.172421, 35.126266, 34.918816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846733, 35.176376, 34.692062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578673, 0.253887, -0.775035,
		0.046831, -0.959086, -0.279213,
		-0.814214, 0.125277, -0.566887,
		31.602468, 35.213959, 34.521996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404781, 34.864845, 34.291100>,  <32.172421, 35.126266, 34.918816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404781, 34.864845, 34.291100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074890, 35.080658, 34.223305>,  <31.876955, 35.210144, 34.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074890, 35.080658, 34.223305>,  <32.404781, 34.864845, 34.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074890, 35.080658, 34.223305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382819, 0.312033, -0.869531,
		-0.416253, -0.782012, -0.463886,
		-0.824732, 0.539529, -0.169484,
		31.827471, 35.242516, 34.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026981, 34.565922, 33.756283>,  <32.404781, 34.864845, 34.291100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026981, 34.565922, 33.756283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970507, 34.961906, 33.753426>,  <31.936623, 35.199497, 33.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970507, 34.961906, 33.753426>,  <32.026981, 34.565922, 33.756283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970507, 34.961906, 33.753426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390981, 0.049129, -0.919087,
		-0.909505, -0.132557, -0.393991,
		-0.141187, 0.989957, -0.007144,
		31.928150, 35.258892, 33.751282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541298, 34.307690, 33.340370>,  <32.026981, 34.565922, 33.756283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541298, 34.307690, 33.340370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174965, 34.149815, 33.310799>,  <31.955164, 34.055088, 33.293056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174965, 34.149815, 33.310799>,  <32.541298, 34.307690, 33.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174965, 34.149815, 33.310799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352825, 0.878846, -0.321160,
		0.191726, -0.268047, -0.944135,
		-0.915836, -0.394689, -0.073924,
		31.900213, 34.031406, 33.288620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616272, 33.843750, 34.032459>,  <32.541298, 34.307690, 33.340370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616272, 33.843750, 34.032459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407749, 33.519958, 33.924400>,  <32.282635, 33.325684, 33.859566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407749, 33.519958, 33.924400>,  <32.616272, 33.843750, 34.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407749, 33.519958, 33.924400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359831, -0.495556, 0.790535,
		-0.773798, 0.314901, 0.549612,
		-0.521304, -0.809482, -0.270149,
		32.251358, 33.277115, 33.843357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207710, 33.337818, 34.100868>,  <32.616272, 33.843750, 34.032459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207710, 33.337818, 34.100868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577465, 33.356033, 34.252361>,  <33.799316, 33.366962, 34.343258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577465, 33.356033, 34.252361>,  <33.207710, 33.337818, 34.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577465, 33.356033, 34.252361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233178, -0.718307, 0.655487,
		0.301897, -0.694234, -0.653373,
		0.924384, 0.045537, 0.378735,
		33.854782, 33.369694, 34.365982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725979, 32.619148, 34.027527>,  <33.207710, 33.337818, 34.100868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725979, 32.619148, 34.027527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773285, 32.848183, 34.352032>,  <33.801670, 32.985603, 34.546734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773285, 32.848183, 34.352032>,  <33.725979, 32.619148, 34.027527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773285, 32.848183, 34.352032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302082, -0.757530, 0.578701,
		0.945917, -0.313512, 0.083377,
		0.118269, 0.572590, 0.811267,
		33.808765, 33.019958, 34.595413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089489, 32.207397, 34.450012>,  <33.725979, 32.619148, 34.027527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089489, 32.207397, 34.450012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911129, 32.467762, 34.695774>,  <33.804111, 32.623981, 34.843231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911129, 32.467762, 34.695774>,  <34.089489, 32.207397, 34.450012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911129, 32.467762, 34.695774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262438, -0.751326, 0.605505,
		0.855745, 0.108752, 0.505839,
		-0.445900, 0.650910, 0.614403,
		33.777359, 32.663036, 34.880096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230118, 31.928371, 35.153255>,  <34.089489, 32.207397, 34.450012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230118, 31.928371, 35.153255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956802, 32.211369, 35.225445>,  <33.792812, 32.381168, 35.268757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956802, 32.211369, 35.225445>,  <34.230118, 31.928371, 35.153255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956802, 32.211369, 35.225445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434058, -0.592350, 0.678760,
		0.587118, 0.385456, 0.711840,
		-0.683290, 0.707492, 0.180469,
		33.751816, 32.423615, 35.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284584, 32.059090, 35.893330>,  <34.230118, 31.928371, 35.153255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284584, 32.059090, 35.893330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920765, 32.186790, 35.786896>,  <33.702473, 32.263412, 35.723038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920765, 32.186790, 35.786896>,  <34.284584, 32.059090, 35.893330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920765, 32.186790, 35.786896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396622, -0.475520, 0.785221,
		0.124160, 0.819729, 0.559132,
		-0.909547, 0.319257, -0.266082,
		33.647900, 32.282566, 35.707069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970192, 32.485691, 36.463757>,  <34.284584, 32.059090, 35.893330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970192, 32.485691, 36.463757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660557, 32.345810, 36.252666>,  <33.474777, 32.261879, 36.126011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660557, 32.345810, 36.252666>,  <33.970192, 32.485691, 36.463757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660557, 32.345810, 36.252666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421283, -0.337685, 0.841718,
		-0.472560, 0.873885, 0.114071,
		-0.774085, -0.349706, -0.527730,
		33.428329, 32.240898, 36.094349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361416, 32.722698, 36.805462>,  <33.970192, 32.485691, 36.463757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361416, 32.722698, 36.805462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213188, 32.424767, 36.583504>,  <33.124252, 32.246006, 36.450329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213188, 32.424767, 36.583504>,  <33.361416, 32.722698, 36.805462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213188, 32.424767, 36.583504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464356, -0.368840, 0.805190,
		-0.804397, 0.556045, -0.209187,
		-0.370565, -0.744829, -0.554897,
		33.102020, 32.201317, 36.417034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631199, 32.687080, 37.052261>,  <33.361416, 32.722698, 36.805462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631199, 32.687080, 37.052261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711063, 32.346142, 36.858913>,  <32.758984, 32.141579, 36.742905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711063, 32.346142, 36.858913>,  <32.631199, 32.687080, 37.052261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711063, 32.346142, 36.858913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586387, -0.499151, 0.637964,
		-0.785039, 0.156063, -0.599465,
		0.199661, -0.852345, -0.483366,
		32.770962, 32.090439, 36.713905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959967, 32.326328, 36.883530>,  <32.631199, 32.687080, 37.052261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959967, 32.326328, 36.883530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264534, 32.068260, 36.908817>,  <32.447273, 31.913420, 36.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264534, 32.068260, 36.908817>,  <31.959967, 32.326328, 36.883530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264534, 32.068260, 36.908817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485848, -0.503373, 0.714540,
		-0.429179, -0.574777, -0.696733,
		0.761418, -0.645171, 0.063217,
		32.492958, 31.874708, 36.927784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655916, 31.706221, 36.948521>,  <31.959967, 32.326328, 36.883530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655916, 31.706221, 36.948521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009068, 31.623871, 37.117348>,  <32.220959, 31.574461, 37.218643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009068, 31.623871, 37.117348>,  <31.655916, 31.706221, 36.948521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009068, 31.623871, 37.117348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460889, -0.552227, 0.694714,
		0.090056, -0.807875, -0.582433,
		0.882877, -0.205873, 0.422072,
		32.273930, 31.562109, 37.243969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632406, 31.005840, 37.158482>,  <31.655916, 31.706221, 36.948521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632406, 31.005840, 37.158482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945450, 31.118582, 37.380505>,  <32.133274, 31.186226, 37.513718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945450, 31.118582, 37.380505>,  <31.632406, 31.005840, 37.158482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945450, 31.118582, 37.380505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201204, -0.729249, 0.653998,
		0.589104, -0.623502, -0.514005,
		0.782607, 0.281853, 0.555055,
		32.180233, 31.203138, 37.547020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958441, 30.330801, 37.471378>,  <31.632406, 31.005840, 37.158482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958441, 30.330801, 37.471378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102592, 30.625240, 37.700562>,  <32.189083, 30.801905, 37.838070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102592, 30.625240, 37.700562>,  <31.958441, 30.330801, 37.471378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102592, 30.625240, 37.700562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197411, -0.540134, 0.818098,
		0.911677, -0.407935, -0.049340,
		0.360381, 0.736100, 0.572959,
		32.210709, 30.846071, 37.872448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374233, 30.040277, 37.820312>,  <31.958441, 30.330801, 37.471378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374233, 30.040277, 37.820312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309223, 30.369385, 38.038170>,  <32.270218, 30.566849, 38.168884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309223, 30.369385, 38.038170>,  <32.374233, 30.040277, 37.820312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309223, 30.369385, 38.038170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135317, -0.565356, 0.813672,
		0.977382, 0.058540, 0.203218,
		-0.162522, 0.822767, 0.544647,
		32.260468, 30.616215, 38.201565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591740, 29.826778, 38.442997>,  <32.374233, 30.040277, 37.820312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591740, 29.826778, 38.442997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384525, 30.158764, 38.525757>,  <32.260197, 30.357954, 38.575413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384525, 30.158764, 38.525757>,  <32.591740, 29.826778, 38.442997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384525, 30.158764, 38.525757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241450, -0.373932, 0.895476,
		0.820576, 0.413929, 0.394103,
		-0.518031, 0.829962, 0.206897,
		32.229115, 30.407753, 38.587826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907104, 30.129103, 38.967079>,  <32.591740, 29.826778, 38.442997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907104, 30.129103, 38.967079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526360, 30.251469, 38.959297>,  <32.297913, 30.324888, 38.954628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526360, 30.251469, 38.959297>,  <32.907104, 30.129103, 38.967079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526360, 30.251469, 38.959297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118776, -0.309571, 0.943429,
		0.282588, 0.900322, 0.331004,
		-0.951859, 0.305917, -0.019456,
		32.240803, 30.343245, 38.953461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726700, 30.464327, 39.682293>,  <32.907104, 30.129103, 38.967079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726700, 30.464327, 39.682293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356041, 30.416536, 39.539715>,  <32.133644, 30.387861, 39.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356041, 30.416536, 39.539715>,  <32.726700, 30.464327, 39.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356041, 30.416536, 39.539715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345579, -0.102519, 0.932773,
		-0.147987, 0.987530, 0.053710,
		-0.926647, -0.119477, -0.356441,
		32.078045, 30.380693, 39.432781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157063, 30.923004, 40.078686>,  <32.726700, 30.464327, 39.682293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157063, 30.923004, 40.078686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964325, 30.603998, 39.933468>,  <31.848682, 30.412594, 39.846336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964325, 30.603998, 39.933468>,  <32.157063, 30.923004, 40.078686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964325, 30.603998, 39.933468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553922, -0.043807, 0.831415,
		-0.678969, 0.601707, -0.420653,
		-0.481841, -0.797515, -0.363042,
		31.819773, 30.364744, 39.824554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489340, 30.950447, 40.331936>,  <32.157063, 30.923004, 40.078686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489340, 30.950447, 40.331936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543140, 30.567450, 40.229870>,  <31.575420, 30.337650, 40.168629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543140, 30.567450, 40.229870>,  <31.489340, 30.950447, 40.331936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543140, 30.567450, 40.229870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389594, -0.287870, 0.874842,
		-0.911112, -0.018256, -0.411753,
		0.134503, -0.957496, -0.255169,
		31.583490, 30.280201, 40.153320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788782, 30.674883, 40.319157>,  <31.489340, 30.950447, 40.331936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788782, 30.674883, 40.319157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058380, 30.380522, 40.345016>,  <31.220139, 30.203905, 40.360531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058380, 30.380522, 40.345016>,  <30.788782, 30.674883, 40.319157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058380, 30.380522, 40.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473862, -0.363536, 0.802057,
		-0.566732, -0.571218, -0.593737,
		0.673995, -0.735901, 0.064651,
		31.260578, 30.159752, 40.364410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463133, 30.204830, 40.583630>,  <30.788782, 30.674883, 40.319157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463133, 30.204830, 40.583630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832695, 30.074686, 40.664169>,  <31.054432, 29.996599, 40.712494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832695, 30.074686, 40.664169>,  <30.463133, 30.204830, 40.583630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832695, 30.074686, 40.664169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358132, -0.550112, 0.754399,
		-0.134687, -0.769102, -0.624773,
		0.923905, -0.325359, 0.201347,
		31.109867, 29.977077, 40.724575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490288, 29.531767, 40.657379>,  <30.463133, 30.204830, 40.583630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490288, 29.531767, 40.657379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798378, 29.651808, 40.882481>,  <30.983232, 29.723833, 41.017540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798378, 29.651808, 40.882481>,  <30.490288, 29.531767, 40.657379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798378, 29.651808, 40.882481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241516, -0.679412, 0.692870,
		0.590274, -0.669580, -0.450821,
		0.770225, 0.300103, 0.562754,
		31.029446, 29.741838, 41.051308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640955, 28.987812, 41.012585>,  <30.490288, 29.531767, 40.657379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640955, 28.987812, 41.012585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899630, 29.231815, 41.195751>,  <31.054834, 29.378218, 41.305653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899630, 29.231815, 41.195751>,  <30.640955, 28.987812, 41.012585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899630, 29.231815, 41.195751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185375, -0.456652, 0.870118,
		0.739887, -0.647580, -0.182231,
		0.646687, 0.610008, 0.457916,
		31.093636, 29.414818, 41.333126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182695, 28.548471, 41.324635>,  <30.640955, 28.987812, 41.012585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182695, 28.548471, 41.324635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198143, 28.888571, 41.534618>,  <31.207411, 29.092630, 41.660610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198143, 28.888571, 41.534618>,  <31.182695, 28.548471, 41.324635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198143, 28.888571, 41.534618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204985, -0.507441, 0.836950,
		0.978003, -0.139932, 0.154691,
		0.038620, 0.850248, 0.524963,
		31.209728, 29.143646, 41.692108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599012, 28.492189, 41.884125>,  <31.182695, 28.548471, 41.324635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599012, 28.492189, 41.884125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387718, 28.808151, 42.008713>,  <31.260941, 28.997728, 42.083466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387718, 28.808151, 42.008713>,  <31.599012, 28.492189, 41.884125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387718, 28.808151, 42.008713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112486, -0.428695, 0.896419,
		0.841613, 0.438486, 0.315306,
		-0.528237, 0.789905, 0.311471,
		31.229246, 29.045122, 42.102154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868832, 28.692778, 42.537075>,  <31.599012, 28.492189, 41.884125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868832, 28.692778, 42.537075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490801, 28.821316, 42.513184>,  <31.263983, 28.898438, 42.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490801, 28.821316, 42.513184>,  <31.868832, 28.692778, 42.537075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490801, 28.821316, 42.513184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171792, -0.332915, 0.927176,
		0.278058, 0.886513, 0.369835,
		-0.945077, 0.321343, -0.059726,
		31.207277, 28.917719, 42.495266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754713, 28.806662, 43.207417>,  <31.868832, 28.692778, 42.537075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754713, 28.806662, 43.207417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392820, 28.817480, 43.037365>,  <31.175686, 28.823971, 42.935333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392820, 28.817480, 43.037365>,  <31.754713, 28.806662, 43.207417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392820, 28.817480, 43.037365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374181, -0.527436, 0.762758,
		-0.203598, 0.849164, 0.487307,
		-0.904730, 0.027045, -0.425126,
		31.121401, 28.825594, 42.909828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250202, 29.144873, 43.635765>,  <31.754713, 28.806662, 43.207417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250202, 29.144873, 43.635765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555008, 28.886253, 43.650234>,  <32.737892, 28.731081, 43.658916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555008, 28.886253, 43.650234>,  <32.250202, 29.144873, 43.635765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555008, 28.886253, 43.650234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356136, 0.371772, -0.857294,
		0.540835, 0.666152, 0.513555,
		0.762013, -0.646550, 0.036173,
		32.783611, 28.692287, 43.661087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888126, 29.523586, 43.622543>,  <32.250202, 29.144873, 43.635765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888126, 29.523586, 43.622543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954353, 29.157911, 43.474575>,  <32.994091, 28.938505, 43.385792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954353, 29.157911, 43.474575>,  <32.888126, 29.523586, 43.622543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954353, 29.157911, 43.474575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312437, 0.404405, -0.859558,
		0.935398, 0.026740, 0.352584,
		0.165571, -0.914189, -0.369925,
		33.004025, 28.883654, 43.363598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279121, 29.870352, 43.211926>,  <32.888126, 29.523586, 43.622543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279121, 29.870352, 43.211926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329090, 29.481911, 43.130589>,  <33.359074, 29.248846, 43.081787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329090, 29.481911, 43.130589>,  <33.279121, 29.870352, 43.211926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329090, 29.481911, 43.130589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514308, 0.238649, -0.823732,
		0.848458, -0.001677, 0.529260,
		0.124926, -0.971104, -0.203347,
		33.366570, 29.190578, 43.069584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046150, 29.679815, 43.095825>,  <33.279121, 29.870352, 43.211926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046150, 29.679815, 43.095825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844303, 29.398903, 42.894962>,  <33.723194, 29.230354, 42.774445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844303, 29.398903, 42.894962>,  <34.046150, 29.679815, 43.095825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844303, 29.398903, 42.894962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464220, 0.269685, -0.843664,
		0.727914, -0.658839, 0.189925,
		-0.504619, -0.702282, -0.502154,
		33.692917, 29.188219, 42.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631859, 29.252886, 42.714375>,  <34.046150, 29.679815, 43.095825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631859, 29.252886, 42.714375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289787, 29.195587, 42.515118>,  <34.084545, 29.161209, 42.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289787, 29.195587, 42.515118>,  <34.631859, 29.252886, 42.714375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289787, 29.195587, 42.515118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462983, 0.220992, -0.858376,
		0.233061, -0.964696, -0.122657,
		-0.855178, -0.143266, -0.498143,
		34.033234, 29.152613, 42.365677>
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
