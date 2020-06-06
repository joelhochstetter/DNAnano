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
	<24.161360, 35.202526, 35.161480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297863, 34.878571, 34.970642>,  <24.379765, 34.684196, 34.856140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297863, 34.878571, 34.970642>,  <24.161360, 35.202526, 35.161480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297863, 34.878571, 34.970642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747876, -0.073526, 0.659754,
		-0.569408, -0.581954, 0.580606,
		0.341257, -0.809891, -0.477096,
		24.400240, 34.635605, 34.827515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084671, 34.570873, 35.675713>,  <24.161360, 35.202526, 35.161480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084671, 34.570873, 35.675713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378569, 34.629059, 35.410686>,  <24.554907, 34.663971, 35.251671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378569, 34.629059, 35.410686>,  <24.084671, 34.570873, 35.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378569, 34.629059, 35.410686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657213, 0.089249, 0.748402,
		0.167998, -0.985330, -0.030025,
		0.734743, 0.145463, -0.662565,
		24.598991, 34.672699, 35.211918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615475, 34.052170, 35.989132>,  <24.084671, 34.570873, 35.675713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615475, 34.052170, 35.989132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676519, 34.396729, 35.795349>,  <24.713146, 34.603466, 35.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676519, 34.396729, 35.795349>,  <24.615475, 34.052170, 35.989132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676519, 34.396729, 35.795349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634830, 0.290249, 0.716063,
		0.757431, -0.416827, -0.502547,
		0.152611, 0.861400, -0.484458,
		24.722303, 34.655148, 35.650013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397919, 34.220798, 35.852104>,  <24.615475, 34.052170, 35.989132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397919, 34.220798, 35.852104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137846, 34.517075, 35.919792>,  <24.981802, 34.694839, 35.960407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137846, 34.517075, 35.919792>,  <25.397919, 34.220798, 35.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137846, 34.517075, 35.919792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502459, 0.252110, 0.827028,
		0.569912, 0.622746, -0.536086,
		-0.650181, 0.740694, 0.169224,
		24.942791, 34.739285, 35.970558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067947, 34.670315, 35.670681>,  <25.397919, 34.220798, 35.852104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067947, 34.670315, 35.670681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712992, 34.784111, 35.815792>,  <25.500019, 34.852386, 35.902859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712992, 34.784111, 35.815792>,  <26.067947, 34.670315, 35.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712992, 34.784111, 35.815792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132901, 0.911350, -0.389588,
		-0.441450, -0.297503, -0.846530,
		-0.887389, 0.284489, 0.362777,
		25.446775, 34.869457, 35.924625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223106, 34.475731, 34.941273>,  <26.067947, 34.670315, 35.670681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223106, 34.475731, 34.941273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591658, 34.323441, 34.972538>,  <26.812788, 34.232067, 34.991295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591658, 34.323441, 34.972538>,  <26.223106, 34.475731, 34.941273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591658, 34.323441, 34.972538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171769, 0.218485, -0.960604,
		0.348651, 0.898505, 0.266704,
		0.921378, -0.380727, 0.078160,
		26.868071, 34.209221, 34.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590509, 34.653824, 34.389999>,  <26.223106, 34.475731, 34.941273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590509, 34.653824, 34.389999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842587, 34.353821, 34.470348>,  <26.993834, 34.173820, 34.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842587, 34.353821, 34.470348>,  <26.590509, 34.653824, 34.389999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842587, 34.353821, 34.470348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235801, -0.061619, -0.969846,
		0.739766, 0.658556, 0.138020,
		0.630194, -0.750004, 0.200872,
		27.031645, 34.128819, 34.530609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182575, 34.693657, 33.865051>,  <26.590509, 34.653824, 34.389999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182575, 34.693657, 33.865051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164602, 34.318283, 34.002056>,  <27.153818, 34.093056, 34.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164602, 34.318283, 34.002056>,  <27.182575, 34.693657, 33.865051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164602, 34.318283, 34.002056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071746, -0.345001, -0.935856,
		0.996410, -0.017479, 0.082832,
		-0.044935, -0.938439, 0.342509,
		27.151121, 34.036751, 34.104809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771690, 34.401699, 33.532776>,  <27.182575, 34.693657, 33.865051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771690, 34.401699, 33.532776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526213, 34.109421, 33.652420>,  <27.378925, 33.934055, 33.724205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526213, 34.109421, 33.652420>,  <27.771690, 34.401699, 33.532776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526213, 34.109421, 33.652420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092978, -0.443083, -0.891646,
		0.784049, -0.519388, 0.339856,
		-0.613695, -0.730693, 0.299108,
		27.342104, 33.890213, 33.742153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103514, 33.827835, 33.322346>,  <27.771690, 34.401699, 33.532776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103514, 33.827835, 33.322346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732473, 33.689251, 33.378227>,  <27.509850, 33.606098, 33.411758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732473, 33.689251, 33.378227>,  <28.103514, 33.827835, 33.322346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732473, 33.689251, 33.378227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042180, -0.468725, -0.882337,
		0.371181, -0.812564, 0.449403,
		-0.927602, -0.346462, 0.139708,
		27.454193, 33.585312, 33.420139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216999, 33.115566, 33.107826>,  <28.103514, 33.827835, 33.322346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216999, 33.115566, 33.107826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822948, 33.184135, 33.112644>,  <27.586519, 33.225277, 33.115536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822948, 33.184135, 33.112644>,  <28.216999, 33.115566, 33.107826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822948, 33.184135, 33.112644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097725, -0.501207, -0.859791,
		-0.141348, -0.848179, 0.510503,
		-0.985125, 0.171419, 0.012044,
		27.527411, 33.235561, 33.116257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833258, 32.567207, 32.811722>,  <28.216999, 33.115566, 33.107826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833258, 32.567207, 32.811722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553574, 32.850849, 32.775337>,  <27.385763, 33.021034, 32.753506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553574, 32.850849, 32.775337>,  <27.833258, 32.567207, 32.811722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553574, 32.850849, 32.775337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246484, -0.358548, -0.900382,
		-0.671081, -0.607135, 0.425484,
		-0.699211, 0.709104, -0.090966,
		27.343811, 33.063580, 32.748047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212339, 32.251942, 32.549965>,  <27.833258, 32.567207, 32.811722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212339, 32.251942, 32.549965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226210, 32.637108, 32.442936>,  <27.234531, 32.868206, 32.378719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226210, 32.637108, 32.442936>,  <27.212339, 32.251942, 32.549965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226210, 32.637108, 32.442936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164804, -0.258557, -0.951834,
		-0.985717, 0.077100, 0.149727,
		0.034673, 0.962914, -0.267571,
		27.236612, 32.925983, 32.362663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751392, 32.275085, 31.910480>,  <27.212339, 32.251942, 32.549965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751392, 32.275085, 31.910480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933197, 32.630096, 31.940731>,  <27.042280, 32.843102, 31.958881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933197, 32.630096, 31.940731>,  <26.751392, 32.275085, 31.910480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933197, 32.630096, 31.940731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117733, 0.024299, -0.992748,
		-0.882927, 0.460117, -0.093447,
		0.454510, 0.887525, 0.075625,
		27.069550, 32.896355, 31.963419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336403, 32.578747, 31.467379>,  <26.751392, 32.275085, 31.910480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336403, 32.578747, 31.467379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683250, 32.771603, 31.517403>,  <26.891359, 32.887318, 31.547417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683250, 32.771603, 31.517403>,  <26.336403, 32.578747, 31.467379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683250, 32.771603, 31.517403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059809, 0.148478, -0.987105,
		-0.494494, 0.863420, 0.099912,
		0.867121, 0.482142, 0.125062,
		26.943386, 32.916245, 31.554922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377474, 33.267246, 31.099262>,  <26.336403, 32.578747, 31.467379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377474, 33.267246, 31.099262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754013, 33.141029, 31.147083>,  <26.979937, 33.065300, 31.175776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754013, 33.141029, 31.147083>,  <26.377474, 33.267246, 31.099262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754013, 33.141029, 31.147083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201584, 0.241762, -0.949165,
		0.270603, 0.917595, 0.291192,
		0.941349, -0.315547, 0.119551,
		27.036417, 33.046364, 31.182949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653221, 33.642681, 30.602165>,  <26.377474, 33.267246, 31.099262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653221, 33.642681, 30.602165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950954, 33.396744, 30.706427>,  <27.129595, 33.249184, 30.768984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950954, 33.396744, 30.706427>,  <26.653221, 33.642681, 30.602165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950954, 33.396744, 30.706427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434970, 0.150198, -0.887830,
		0.506724, 0.774216, 0.379235,
		0.744333, -0.614841, 0.260651,
		27.174253, 33.212292, 30.784622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225374, 34.040966, 30.569160>,  <26.653221, 33.642681, 30.602165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225374, 34.040966, 30.569160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354994, 33.663235, 30.546392>,  <27.432766, 33.436596, 30.532732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354994, 33.663235, 30.546392>,  <27.225374, 34.040966, 30.569160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354994, 33.663235, 30.546392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346792, 0.174552, -0.921557,
		0.880186, 0.278891, 0.384048,
		0.324050, -0.944326, -0.056921,
		27.452209, 33.379936, 30.529316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816269, 34.105923, 30.177748>,  <27.225374, 34.040966, 30.569160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816269, 34.105923, 30.177748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695414, 33.725235, 30.156052>,  <27.622900, 33.496822, 30.143034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695414, 33.725235, 30.156052>,  <27.816269, 34.105923, 30.177748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695414, 33.725235, 30.156052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227384, -0.016695, -0.973662,
		0.925747, -0.306516, 0.221450,
		-0.302140, -0.951719, -0.054241,
		27.604771, 33.439720, 30.139780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400108, 33.773518, 29.885405>,  <27.816269, 34.105923, 30.177748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400108, 33.773518, 29.885405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107857, 33.505680, 29.832001>,  <27.932507, 33.344978, 29.799959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107857, 33.505680, 29.832001>,  <28.400108, 33.773518, 29.885405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107857, 33.505680, 29.832001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230757, -0.058130, -0.971273,
		0.642600, -0.740447, 0.196985,
		-0.730627, -0.669596, -0.133509,
		27.888668, 33.304802, 29.791948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774471, 33.170544, 29.586956>,  <28.400108, 33.773518, 29.885405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774471, 33.170544, 29.586956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387346, 33.179661, 29.486704>,  <28.155071, 33.185131, 29.426554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387346, 33.179661, 29.486704>,  <28.774471, 33.170544, 29.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387346, 33.179661, 29.486704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248563, -0.069263, -0.966136,
		-0.039376, -0.997338, 0.061370,
		-0.967815, 0.022789, -0.250628,
		28.097002, 33.186501, 29.411516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642998, 32.732647, 28.992083>,  <28.774471, 33.170544, 29.586956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642998, 32.732647, 28.992083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296507, 32.929626, 28.958271>,  <28.088614, 33.047813, 28.937984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296507, 32.929626, 28.958271>,  <28.642998, 32.732647, 28.992083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296507, 32.929626, 28.958271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056318, -0.071873, -0.995822,
		-0.496470, -0.867367, 0.034525,
		-0.866225, 0.492452, -0.084531,
		28.036640, 33.077362, 28.932911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317425, 32.393738, 28.385969>,  <28.642998, 32.732647, 28.992083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317425, 32.393738, 28.385969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122448, 32.739662, 28.434147>,  <28.005463, 32.947216, 28.463053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122448, 32.739662, 28.434147>,  <28.317425, 32.393738, 28.385969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122448, 32.739662, 28.434147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284441, -0.026855, -0.958317,
		-0.825526, -0.501384, 0.259078,
		-0.487443, 0.864808, 0.120444,
		27.976215, 32.999104, 28.470280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733059, 32.175545, 28.061211>,  <28.317425, 32.393738, 28.385969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733059, 32.175545, 28.061211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743294, 32.575336, 28.069145>,  <27.749435, 32.815212, 28.073906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743294, 32.575336, 28.069145>,  <27.733059, 32.175545, 28.061211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743294, 32.575336, 28.069145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220859, 0.025003, -0.974985,
		-0.974970, 0.020568, 0.221383,
		0.025589, 0.999476, 0.019834,
		27.750971, 32.875179, 28.075096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239233, 32.404316, 27.560598>,  <27.733059, 32.175545, 28.061211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239233, 32.404316, 27.560598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512632, 32.684357, 27.643242>,  <27.676672, 32.852379, 27.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512632, 32.684357, 27.643242>,  <27.239233, 32.404316, 27.560598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512632, 32.684357, 27.643242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088647, 0.201342, -0.975501,
		-0.724548, 0.685071, 0.075556,
		0.683500, 0.700100, 0.206611,
		27.717682, 32.894386, 27.705225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176996, 32.950756, 27.031136>,  <27.239233, 32.404316, 27.560598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176996, 32.950756, 27.031136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530884, 33.001907, 27.210434>,  <27.743216, 33.032597, 27.318012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530884, 33.001907, 27.210434>,  <27.176996, 32.950756, 27.031136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530884, 33.001907, 27.210434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384487, 0.343458, -0.856858,
		-0.263526, 0.930421, 0.254696,
		0.884717, 0.127878, 0.448245,
		27.796299, 33.040272, 27.344908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423897, 33.694824, 27.061840>,  <27.176996, 32.950756, 27.031136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423897, 33.694824, 27.061840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696877, 33.408237, 27.003954>,  <27.860664, 33.236286, 26.969223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696877, 33.408237, 27.003954>,  <27.423897, 33.694824, 27.061840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696877, 33.408237, 27.003954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210889, 0.382571, -0.899536,
		0.699847, 0.583370, 0.412180,
		0.682451, -0.716462, -0.144715,
		27.901611, 33.193298, 26.960539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325766, 34.335754, 26.723692>,  <27.423897, 33.694824, 27.061840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325766, 34.335754, 26.723692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137497, 34.328445, 26.370844>,  <27.024536, 34.324062, 26.159136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137497, 34.328445, 26.370844>,  <27.325766, 34.335754, 26.723692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137497, 34.328445, 26.370844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880458, -0.074438, -0.468244,
		-0.057107, -0.997058, 0.051124,
		-0.470672, -0.018272, -0.882119,
		26.996296, 34.322964, 26.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008024, 34.602921, 26.753393>,  <27.325766, 34.335754, 26.723692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008024, 34.602921, 26.753393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314732, 34.348522, 26.718582>,  <28.498756, 34.195881, 26.697697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314732, 34.348522, 26.718582>,  <28.008024, 34.602921, 26.753393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314732, 34.348522, 26.718582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384733, 0.563836, -0.730801,
		0.513858, 0.526872, 0.677021,
		0.766767, -0.636000, -0.087026,
		28.544762, 34.157722, 26.692474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706312, 34.873440, 26.877993>,  <28.008024, 34.602921, 26.753393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706312, 34.873440, 26.877993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760208, 34.594269, 26.596642>,  <28.792545, 34.426765, 26.427832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760208, 34.594269, 26.596642>,  <28.706312, 34.873440, 26.877993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760208, 34.594269, 26.596642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435918, 0.679220, -0.590454,
		0.889843, -0.227058, 0.395757,
		0.134739, -0.697929, -0.703378,
		28.800631, 34.384892, 26.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430046, 34.948933, 26.547213>,  <28.706312, 34.873440, 26.877993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430046, 34.948933, 26.547213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171640, 34.788593, 26.287371>,  <29.016596, 34.692390, 26.131466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171640, 34.788593, 26.287371>,  <29.430046, 34.948933, 26.547213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171640, 34.788593, 26.287371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302021, 0.647348, -0.699803,
		0.701034, -0.648277, -0.297133,
		-0.646014, -0.400845, -0.649606,
		28.977837, 34.668339, 26.092489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724531, 34.757477, 25.964911>,  <29.430046, 34.948933, 26.547213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724531, 34.757477, 25.964911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358868, 34.846951, 25.829691>,  <29.139469, 34.900635, 25.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358868, 34.846951, 25.829691>,  <29.724531, 34.757477, 25.964911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358868, 34.846951, 25.829691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399554, 0.637827, -0.658433,
		0.068336, -0.736982, -0.672449,
		-0.914159, 0.223685, -0.338050,
		29.084620, 34.914055, 25.728275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253704, 34.152424, 26.031385>,  <29.724531, 34.757477, 25.964911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253704, 34.152424, 26.031385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374100, 34.521004, 26.129646>,  <30.446337, 34.742149, 26.188602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374100, 34.521004, 26.129646>,  <30.253704, 34.152424, 26.031385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374100, 34.521004, 26.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004429, -0.256244, 0.966602,
		0.953618, -0.292023, -0.073045,
		0.300987, 0.921445, 0.245652,
		30.464396, 34.797436, 26.203342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631023, 34.063290, 26.580662>,  <30.253704, 34.152424, 26.031385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631023, 34.063290, 26.580662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563263, 34.452564, 26.642891>,  <30.522606, 34.686131, 26.680229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563263, 34.452564, 26.642891>,  <30.631023, 34.063290, 26.580662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563263, 34.452564, 26.642891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051014, -0.166302, 0.984754,
		0.984226, 0.158884, 0.077818,
		-0.169403, 0.973190, 0.155574,
		30.512442, 34.744522, 26.689564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998373, 34.253155, 27.135603>,  <30.631023, 34.063290, 26.580662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998373, 34.253155, 27.135603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711996, 34.532265, 27.126369>,  <30.540169, 34.699730, 27.120831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711996, 34.532265, 27.126369>,  <30.998373, 34.253155, 27.135603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711996, 34.532265, 27.126369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022715, 0.009763, 0.999694,
		0.697788, 0.716250, 0.008860,
		-0.715945, 0.697775, -0.023082,
		30.497213, 34.741596, 27.119444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196802, 34.900871, 27.568394>,  <30.998373, 34.253155, 27.135603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196802, 34.900871, 27.568394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804413, 34.828918, 27.539181>,  <30.568979, 34.785748, 27.521654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804413, 34.828918, 27.539181>,  <31.196802, 34.900871, 27.568394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804413, 34.828918, 27.539181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048493, -0.137216, 0.989353,
		-0.187993, 0.974070, 0.125882,
		-0.980973, -0.179887, -0.073031,
		30.510120, 34.774952, 27.517271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950815, 35.278969, 28.131113>,  <31.196802, 34.900871, 27.568394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950815, 35.278969, 28.131113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655819, 35.027428, 28.032598>,  <30.478821, 34.876503, 27.973490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655819, 35.027428, 28.032598>,  <30.950815, 35.278969, 28.131113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655819, 35.027428, 28.032598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180128, -0.168310, 0.969136,
		-0.650892, 0.759092, 0.010854,
		-0.737491, -0.628848, -0.246286,
		30.434572, 34.838772, 27.958714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305681, 35.534767, 28.361715>,  <30.950815, 35.278969, 28.131113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305681, 35.534767, 28.361715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271471, 35.136955, 28.337749>,  <30.250944, 34.898266, 28.323370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271471, 35.136955, 28.337749>,  <30.305681, 35.534767, 28.361715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271471, 35.136955, 28.337749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116409, -0.049750, 0.991954,
		-0.989512, 0.091813, -0.111518,
		-0.085526, -0.994533, -0.059916,
		30.245813, 34.838596, 28.319775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844612, 35.395283, 28.866163>,  <30.305681, 35.534767, 28.361715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844612, 35.395283, 28.866163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022366, 35.040340, 28.816984>,  <30.129017, 34.827374, 28.787477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022366, 35.040340, 28.816984>,  <29.844612, 35.395283, 28.866163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022366, 35.040340, 28.816984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011541, -0.131561, 0.991241,
		-0.895762, -0.441910, -0.048223,
		0.444384, -0.887360, -0.122947,
		30.155682, 34.774132, 28.780100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513329, 35.067978, 29.349510>,  <29.844612, 35.395283, 28.866163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513329, 35.067978, 29.349510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823605, 34.839470, 29.242212>,  <30.009771, 34.702366, 29.177834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823605, 34.839470, 29.242212>,  <29.513329, 35.067978, 29.349510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823605, 34.839470, 29.242212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151862, -0.243595, 0.957914,
		-0.612568, -0.783783, -0.102201,
		0.775692, -0.571267, -0.268245,
		30.056313, 34.668091, 29.161739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371429, 34.416790, 29.601500>,  <29.513329, 35.067978, 29.349510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371429, 34.416790, 29.601500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770132, 34.435284, 29.575163>,  <30.009354, 34.446381, 29.559361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770132, 34.435284, 29.575163>,  <29.371429, 34.416790, 29.601500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770132, 34.435284, 29.575163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077004, -0.311231, 0.947209,
		0.023300, -0.949209, -0.313782,
		0.996758, 0.046233, -0.065842,
		30.069160, 34.449154, 29.555410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577110, 33.824516, 29.922596>,  <29.371429, 34.416790, 29.601500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577110, 33.824516, 29.922596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906185, 34.051304, 29.905954>,  <30.103630, 34.187378, 29.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906185, 34.051304, 29.905954>,  <29.577110, 33.824516, 29.922596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906185, 34.051304, 29.905954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159702, -0.160252, 0.974071,
		0.545601, -0.808001, -0.222384,
		0.822688, 0.566969, -0.041606,
		30.152992, 34.221394, 29.893473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094299, 33.370350, 30.339931>,  <29.577110, 33.824516, 29.922596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094299, 33.370350, 30.339931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213364, 33.752106, 30.349249>,  <30.284801, 33.981159, 30.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213364, 33.752106, 30.349249>,  <30.094299, 33.370350, 30.339931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213364, 33.752106, 30.349249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121779, -0.062160, 0.990609,
		0.946873, -0.292028, -0.134727,
		0.297660, 0.954388, 0.023294,
		30.302662, 34.038422, 30.356237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659891, 33.393002, 30.830044>,  <30.094299, 33.370350, 30.339931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659891, 33.393002, 30.830044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508694, 33.762367, 30.803452>,  <30.417974, 33.983986, 30.787497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508694, 33.762367, 30.803452>,  <30.659891, 33.393002, 30.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508694, 33.762367, 30.803452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065181, 0.098174, 0.993032,
		0.923511, 0.371027, -0.097299,
		-0.377994, 0.923418, -0.066481,
		30.395296, 34.039394, 30.783506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136934, 33.778225, 31.308186>,  <30.659891, 33.393002, 30.830044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136934, 33.778225, 31.308186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807146, 33.995449, 31.244526>,  <30.609272, 34.125786, 31.206331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807146, 33.995449, 31.244526>,  <31.136934, 33.778225, 31.308186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807146, 33.995449, 31.244526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061615, 0.193412, 0.979181,
		0.562538, 0.817113, -0.126002,
		-0.824472, 0.543063, -0.159148,
		30.559805, 34.158367, 31.196781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304493, 34.379589, 31.697586>,  <31.136934, 33.778225, 31.308186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304493, 34.379589, 31.697586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907942, 34.366043, 31.646954>,  <30.670012, 34.357918, 31.616575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907942, 34.366043, 31.646954>,  <31.304493, 34.379589, 31.697586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907942, 34.366043, 31.646954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130874, 0.208647, 0.969195,
		-0.006407, 0.977404, -0.211280,
		-0.991378, -0.033861, -0.126580,
		30.610529, 34.355885, 31.608980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066748, 35.098671, 32.050541>,  <31.304493, 34.379589, 31.697586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066748, 35.098671, 32.050541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778311, 34.824692, 32.008835>,  <30.605249, 34.660305, 31.983812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778311, 34.824692, 32.008835>,  <31.066748, 35.098671, 32.050541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778311, 34.824692, 32.008835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328480, 0.205485, 0.921888,
		-0.610022, 0.699014, -0.373166,
		-0.721093, -0.684949, -0.104262,
		30.561983, 34.619205, 31.977556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579063, 35.390827, 32.428326>,  <31.066748, 35.098671, 32.050541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579063, 35.390827, 32.428326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460806, 35.009655, 32.401421>,  <30.389851, 34.780952, 32.385277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460806, 35.009655, 32.401421>,  <30.579063, 35.390827, 32.428326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460806, 35.009655, 32.401421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353173, 0.043603, 0.934541,
		-0.887617, 0.300047, -0.349439,
		-0.295643, -0.952927, -0.067266,
		30.372112, 34.723778, 32.381241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891212, 35.332993, 32.708668>,  <30.579063, 35.390827, 32.428326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891212, 35.332993, 32.708668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977972, 34.942928, 32.726673>,  <30.030027, 34.708889, 32.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977972, 34.942928, 32.726673>,  <29.891212, 35.332993, 32.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977972, 34.942928, 32.726673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327535, -0.029261, 0.944386,
		-0.919606, -0.219578, -0.325744,
		0.216898, -0.975156, 0.045011,
		30.043041, 34.650383, 32.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333998, 35.039024, 32.864086>,  <29.891212, 35.332993, 32.708668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333998, 35.039024, 32.864086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626873, 34.793373, 32.981899>,  <29.802599, 34.645981, 33.052586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626873, 34.793373, 32.981899>,  <29.333998, 35.039024, 32.864086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626873, 34.793373, 32.981899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333262, 0.054103, 0.941281,
		-0.594001, -0.787350, -0.165052,
		0.732188, -0.614128, 0.294532,
		29.846529, 34.609135, 33.070259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980362, 34.519676, 33.129261>,  <29.333998, 35.039024, 32.864086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980362, 34.519676, 33.129261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344164, 34.456745, 33.283169>,  <29.562445, 34.418987, 33.375511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344164, 34.456745, 33.283169>,  <28.980362, 34.519676, 33.129261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344164, 34.456745, 33.283169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413758, -0.253466, 0.874391,
		-0.040042, -0.954465, -0.295625,
		0.909506, -0.157329, 0.384768,
		29.617016, 34.409546, 33.398598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885534, 33.986855, 33.573246>,  <28.980362, 34.519676, 33.129261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885534, 33.986855, 33.573246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221962, 34.152996, 33.711857>,  <29.423819, 34.252682, 33.795021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221962, 34.152996, 33.711857>,  <28.885534, 33.986855, 33.573246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221962, 34.152996, 33.711857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251051, -0.267704, 0.930219,
		0.479139, -0.869375, -0.120881,
		0.841070, 0.415357, 0.346525,
		29.474283, 34.277603, 33.815815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163542, 33.434544, 34.044289>,  <28.885534, 33.986855, 33.573246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163542, 33.434544, 34.044289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346270, 33.778511, 34.135380>,  <29.455906, 33.984890, 34.190037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346270, 33.778511, 34.135380>,  <29.163542, 33.434544, 34.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346270, 33.778511, 34.135380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054058, -0.228694, 0.971996,
		0.887916, -0.456337, -0.057986,
		0.456818, 0.859916, 0.227730,
		29.483315, 34.036488, 34.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546129, 33.270859, 34.575657>,  <29.163542, 33.434544, 34.044289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546129, 33.270859, 34.575657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554350, 33.670677, 34.584476>,  <29.559282, 33.910568, 34.589767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554350, 33.670677, 34.584476>,  <29.546129, 33.270859, 34.575657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554350, 33.670677, 34.584476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028832, -0.021455, 0.999354,
		0.999373, -0.021175, 0.028378,
		0.020553, 0.999545, 0.022052,
		29.560516, 33.970539, 34.591091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081488, 33.451866, 35.015949>,  <29.546129, 33.270859, 34.575657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081488, 33.451866, 35.015949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822706, 33.756767, 35.007729>,  <29.667437, 33.939709, 35.002796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822706, 33.756767, 35.007729>,  <30.081488, 33.451866, 35.015949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822706, 33.756767, 35.007729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049356, 0.068755, 0.996412,
		0.760930, 0.643618, -0.082103,
		-0.646954, 0.762252, -0.020551,
		29.628620, 33.985443, 35.001564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286285, 33.944412, 35.499481>,  <30.081488, 33.451866, 35.015949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286285, 33.944412, 35.499481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903778, 34.050732, 35.450649>,  <29.674274, 34.114525, 35.421352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903778, 34.050732, 35.450649>,  <30.286285, 33.944412, 35.499481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903778, 34.050732, 35.450649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057109, 0.239662, 0.969175,
		0.286863, 0.933763, -0.214001,
		-0.956268, 0.265799, -0.122076,
		29.616898, 34.130470, 35.414028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138103, 34.651005, 35.761623>,  <30.286285, 33.944412, 35.499481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138103, 34.651005, 35.761623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780296, 34.472549, 35.772961>,  <29.565613, 34.365479, 35.779762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780296, 34.472549, 35.772961>,  <30.138103, 34.651005, 35.761623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780296, 34.472549, 35.772961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189392, 0.435639, 0.879972,
		-0.404934, 0.781781, -0.474180,
		-0.894516, -0.446137, 0.028342,
		29.511942, 34.338707, 35.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734640, 34.701637, 36.302135>,  <30.138103, 34.651005, 35.761623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734640, 34.701637, 36.302135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704056, 35.098381, 36.342850>,  <30.685705, 35.336430, 36.367279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704056, 35.098381, 36.342850>,  <30.734640, 34.701637, 36.302135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704056, 35.098381, 36.342850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995872, 0.080978, -0.041011,
		-0.048920, 0.098227, -0.993961,
		-0.076461, 0.991864, 0.101783,
		30.681118, 35.395939, 36.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015928, 35.137089, 35.745651>,  <30.734640, 34.701637, 36.302135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015928, 35.137089, 35.745651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063700, 35.355816, 36.077126>,  <31.092361, 35.487053, 36.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063700, 35.355816, 36.077126>,  <31.015928, 35.137089, 35.745651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063700, 35.355816, 36.077126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943026, 0.198594, -0.266951,
		-0.310547, 0.813355, -0.491950,
		0.119427, 0.546822, 0.828687,
		31.099527, 35.519863, 36.325733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165159, 35.918365, 35.529121>,  <31.015928, 35.137089, 35.745651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165159, 35.918365, 35.529121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309740, 35.754162, 35.863983>,  <31.396488, 35.655640, 36.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309740, 35.754162, 35.863983>,  <31.165159, 35.918365, 35.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309740, 35.754162, 35.863983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932369, 0.152956, -0.327554,
		0.006417, 0.898935, 0.438036,
		0.361450, -0.410513, 0.837158,
		31.418175, 35.631008, 36.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649958, 36.329559, 35.992867>,  <31.165159, 35.918365, 35.529121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649958, 36.329559, 35.992867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736969, 35.939869, 36.016750>,  <31.789175, 35.706055, 36.031082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736969, 35.939869, 36.016750>,  <31.649958, 36.329559, 35.992867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736969, 35.939869, 36.016750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928057, 0.187497, -0.321800,
		0.302310, 0.125416, 0.944923,
		0.217529, -0.974226, 0.059711,
		31.802227, 35.647602, 36.034664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294884, 36.314377, 36.188751>,  <31.649958, 36.329559, 35.992867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294884, 36.314377, 36.188751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225323, 35.946079, 36.049042>,  <32.183586, 35.725101, 35.965218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225323, 35.946079, 36.049042>,  <32.294884, 36.314377, 36.188751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225323, 35.946079, 36.049042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964373, -0.087425, -0.249684,
		0.199360, -0.380248, 0.903143,
		-0.173899, -0.920744, -0.349272,
		32.173153, 35.669857, 35.944260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758297, 35.791225, 36.538380>,  <32.294884, 36.314377, 36.188751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758297, 35.791225, 36.538380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650490, 35.664120, 36.174759>,  <32.585804, 35.587856, 35.956585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650490, 35.664120, 36.174759>,  <32.758297, 35.791225, 36.538380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650490, 35.664120, 36.174759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956438, -0.198304, -0.214248,
		-0.112188, -0.927200, 0.357371,
		-0.269519, -0.317767, -0.909056,
		32.569633, 35.568790, 35.902042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235378, 35.326996, 36.854061>,  <32.758297, 35.791225, 36.538380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235378, 35.326996, 36.854061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485970, 35.161846, 37.118504>,  <33.636322, 35.062756, 37.277168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485970, 35.161846, 37.118504>,  <33.235378, 35.326996, 36.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485970, 35.161846, 37.118504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260564, 0.688445, 0.676868,
		-0.734598, -0.596301, 0.323713,
		0.626476, -0.412878, 0.661105,
		33.673912, 35.037983, 37.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828556, 35.280151, 37.555676>,  <33.235378, 35.326996, 36.854061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828556, 35.280151, 37.555676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223270, 35.277687, 37.620441>,  <33.460098, 35.276207, 37.659302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223270, 35.277687, 37.620441>,  <32.828556, 35.280151, 37.555676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223270, 35.277687, 37.620441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129315, 0.572189, 0.809862,
		-0.097640, -0.820098, 0.563831,
		0.986785, -0.006163, 0.161920,
		33.519306, 35.275837, 37.669018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882450, 35.171658, 38.274715>,  <32.828556, 35.280151, 37.555676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882450, 35.171658, 38.274715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226051, 35.338341, 38.155731>,  <33.432213, 35.438351, 38.084343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226051, 35.338341, 38.155731>,  <32.882450, 35.171658, 38.274715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226051, 35.338341, 38.155731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072933, 0.475472, 0.876703,
		0.506759, -0.774780, 0.378037,
		0.858997, 0.416705, -0.297457,
		33.483749, 35.463352, 38.066494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345940, 35.084351, 38.791553>,  <32.882450, 35.171658, 38.274715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345940, 35.084351, 38.791553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498524, 35.375771, 38.563972>,  <33.590073, 35.550621, 38.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498524, 35.375771, 38.563972>,  <33.345940, 35.084351, 38.791553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498524, 35.375771, 38.563972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262831, 0.504603, 0.822372,
		0.886233, -0.463239, 0.001000,
		0.381460, 0.728550, -0.568949,
		33.612961, 35.594337, 38.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956516, 35.159004, 39.051010>,  <33.345940, 35.084351, 38.791553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956516, 35.159004, 39.051010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871735, 35.496925, 38.854485>,  <33.820866, 35.699677, 38.736568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871735, 35.496925, 38.854485>,  <33.956516, 35.159004, 39.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871735, 35.496925, 38.854485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225641, 0.531456, 0.816481,
		0.950875, 0.062193, -0.303264,
		-0.211950, 0.844800, -0.491315,
		33.808151, 35.750366, 38.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304131, 35.687195, 39.367840>,  <33.956516, 35.159004, 39.051010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304131, 35.687195, 39.367840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035473, 35.918053, 39.182022>,  <33.874279, 36.056568, 39.070530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035473, 35.918053, 39.182022>,  <34.304131, 35.687195, 39.367840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035473, 35.918053, 39.182022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044487, 0.594475, 0.802883,
		0.739539, 0.559916, -0.373599,
		-0.671642, 0.577143, -0.464546,
		33.833981, 36.091194, 39.042660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495113, 36.398808, 39.493393>,  <34.304131, 35.687195, 39.367840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495113, 36.398808, 39.493393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113644, 36.423065, 39.375530>,  <33.884762, 36.437618, 39.304813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113644, 36.423065, 39.375530>,  <34.495113, 36.398808, 39.493393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113644, 36.423065, 39.375530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210309, 0.565969, 0.797151,
		0.215110, 0.822193, -0.526997,
		-0.953676, 0.060643, -0.294660,
		33.827541, 36.441257, 39.287132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389046, 37.049717, 39.465420>,  <34.495113, 36.398808, 39.493393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389046, 37.049717, 39.465420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029770, 36.880844, 39.514435>,  <33.814205, 36.779522, 39.543846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029770, 36.880844, 39.514435>,  <34.389046, 37.049717, 39.465420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029770, 36.880844, 39.514435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145612, 0.548735, 0.823217,
		-0.414786, 0.721565, -0.554344,
		-0.898192, -0.422178, 0.122540,
		33.760311, 36.754192, 39.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843388, 37.627125, 39.372055>,  <34.389046, 37.049717, 39.465420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843388, 37.627125, 39.372055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654907, 37.342716, 39.580833>,  <33.541821, 37.172070, 39.706100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654907, 37.342716, 39.580833>,  <33.843388, 37.627125, 39.372055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654907, 37.342716, 39.580833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079284, 0.623499, 0.777794,
		-0.878457, 0.325113, -0.350163,
		-0.471197, -0.711021, 0.521941,
		33.513550, 37.129410, 39.737415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266747, 37.882408, 39.683819>,  <33.843388, 37.627125, 39.372055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266747, 37.882408, 39.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294659, 37.563297, 39.923382>,  <33.311405, 37.371830, 40.067120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294659, 37.563297, 39.923382>,  <33.266747, 37.882408, 39.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294659, 37.563297, 39.923382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005182, 0.600073, 0.799929,
		-0.997549, -0.058924, 0.037741,
		0.069783, -0.797772, 0.598907,
		33.315594, 37.323967, 40.103054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740822, 37.926430, 40.216660>,  <33.266747, 37.882408, 39.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740822, 37.926430, 40.216660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011738, 37.680737, 40.378647>,  <33.174286, 37.533321, 40.475838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011738, 37.680737, 40.378647>,  <32.740822, 37.926430, 40.216660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011738, 37.680737, 40.378647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019923, 0.534921, 0.844667,
		-0.735449, -0.580150, 0.350058,
		0.677287, -0.614236, 0.404965,
		33.214924, 37.496468, 40.500137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558586, 37.938805, 40.911976>,  <32.740822, 37.926430, 40.216660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558586, 37.938805, 40.911976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916245, 37.760918, 40.932858>,  <33.130840, 37.654186, 40.945385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916245, 37.760918, 40.932858>,  <32.558586, 37.938805, 40.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916245, 37.760918, 40.932858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135036, 0.378970, 0.915504,
		-0.426920, -0.811549, 0.398908,
		0.894150, -0.444714, 0.052202,
		33.184490, 37.627502, 40.948517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589577, 37.515648, 41.463882>,  <32.558586, 37.938805, 40.911976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589577, 37.515648, 41.463882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972622, 37.602470, 41.388130>,  <33.202450, 37.654564, 41.342678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972622, 37.602470, 41.388130>,  <32.589577, 37.515648, 41.463882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972622, 37.602470, 41.388130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126333, 0.274382, 0.953286,
		0.258868, -0.936806, 0.235332,
		0.957616, 0.217045, -0.189378,
		33.259907, 37.667587, 41.331314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894493, 37.406475, 42.025345>,  <32.589577, 37.515648, 41.463882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894493, 37.406475, 42.025345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208691, 37.591187, 41.860538>,  <33.397209, 37.702015, 41.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208691, 37.591187, 41.860538>,  <32.894493, 37.406475, 42.025345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208691, 37.591187, 41.860538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302805, 0.293840, 0.906624,
		0.539725, -0.836911, 0.090982,
		0.785497, 0.461778, -0.412013,
		33.444340, 37.729721, 41.736935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491505, 37.163387, 42.379372>,  <32.894493, 37.406475, 42.025345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491505, 37.163387, 42.379372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591957, 37.520546, 42.229885>,  <33.652229, 37.734840, 42.140194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591957, 37.520546, 42.229885>,  <33.491505, 37.163387, 42.379372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591957, 37.520546, 42.229885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260641, 0.309453, 0.914497,
		0.932201, -0.327066, -0.155012,
		0.251132, 0.892898, -0.373720,
		33.667297, 37.788414, 42.117767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072952, 37.368984, 42.805531>,  <33.491505, 37.163387, 42.379372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072952, 37.368984, 42.805531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957886, 37.711094, 42.633137>,  <33.888844, 37.916359, 42.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957886, 37.711094, 42.633137>,  <34.072952, 37.368984, 42.805531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957886, 37.711094, 42.633137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167603, 0.488022, 0.856588,
		0.942950, 0.174181, -0.283737,
		-0.287671, 0.855275, -0.430987,
		33.871586, 37.967678, 42.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584763, 37.885178, 43.002090>,  <34.072952, 37.368984, 42.805531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584763, 37.885178, 43.002090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249344, 38.088329, 42.923191>,  <34.048092, 38.210220, 42.875851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249344, 38.088329, 42.923191>,  <34.584763, 37.885178, 43.002090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249344, 38.088329, 42.923191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131954, 0.540565, 0.830890,
		0.528612, 0.670711, -0.520304,
		-0.838545, 0.507875, -0.197246,
		33.997780, 38.240692, 42.864017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739979, 38.602039, 43.087864>,  <34.584763, 37.885178, 43.002090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739979, 38.602039, 43.087864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344593, 38.568451, 43.138290>,  <34.107361, 38.548298, 43.168549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344593, 38.568451, 43.138290>,  <34.739979, 38.602039, 43.087864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344593, 38.568451, 43.138290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073085, 0.464607, 0.882496,
		-0.132679, 0.881526, -0.453108,
		-0.988461, -0.083973, 0.126070,
		34.048054, 38.543259, 43.176113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569023, 39.212070, 43.389694>,  <34.739979, 38.602039, 43.087864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569023, 39.212070, 43.389694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216030, 39.034836, 43.452820>,  <34.004234, 38.928493, 43.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216030, 39.034836, 43.452820>,  <34.569023, 39.212070, 43.389694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216030, 39.034836, 43.452820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031614, 0.278882, 0.959805,
		-0.469287, 0.851997, -0.232100,
		-0.882480, -0.443087, 0.157810,
		33.951286, 38.901909, 43.500164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069328, 39.775055, 43.614143>,  <34.569023, 39.212070, 43.389694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069328, 39.775055, 43.614143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902775, 39.425182, 43.713379>,  <33.802841, 39.215260, 43.772923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902775, 39.425182, 43.713379>,  <34.069328, 39.775055, 43.614143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902775, 39.425182, 43.713379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129782, 0.327258, 0.935980,
		-0.899877, 0.357532, -0.249784,
		-0.416387, -0.874684, 0.248091,
		33.777859, 39.162777, 43.787807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565617, 39.966877, 43.994503>,  <34.069328, 39.775055, 43.614143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565617, 39.966877, 43.994503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657257, 39.591351, 44.097378>,  <33.712242, 39.366035, 44.159103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657257, 39.591351, 44.097378>,  <33.565617, 39.966877, 43.994503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657257, 39.591351, 44.097378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101208, 0.239810, 0.965530,
		-0.968127, -0.247231, -0.040075,
		0.229099, -0.938812, 0.257188,
		33.725986, 39.309708, 44.174534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146645, 39.841835, 44.522385>,  <33.565617, 39.966877, 43.994503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146645, 39.841835, 44.522385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422276, 39.556267, 44.572155>,  <33.587654, 39.384926, 44.602016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422276, 39.556267, 44.572155>,  <33.146645, 39.841835, 44.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422276, 39.556267, 44.572155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088171, 0.253012, 0.963437,
		-0.719301, -0.652915, 0.237293,
		0.689081, -0.713923, 0.124424,
		33.629002, 39.342091, 44.609482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999374, 39.443176, 45.166149>,  <33.146645, 39.841835, 44.522385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999374, 39.443176, 45.166149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386578, 39.357830, 45.113319>,  <33.618900, 39.306622, 45.081623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386578, 39.357830, 45.113319>,  <32.999374, 39.443176, 45.166149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386578, 39.357830, 45.113319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173036, 0.186386, 0.967119,
		-0.181734, -0.959028, 0.217342,
		0.968004, -0.213366, -0.132074,
		33.676979, 39.293819, 45.073696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263916, 38.828495, 45.662792>,  <32.999374, 39.443176, 45.166149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263916, 38.828495, 45.662792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579933, 39.058109, 45.576706>,  <33.769543, 39.195877, 45.525055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579933, 39.058109, 45.576706>,  <33.263916, 38.828495, 45.662792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579933, 39.058109, 45.576706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112188, 0.209753, 0.971297,
		0.602701, -0.791510, 0.101313,
		0.790042, 0.574035, -0.215216,
		33.816944, 39.230320, 45.512142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812134, 38.668705, 46.061977>,  <33.263916, 38.828495, 45.662792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812134, 38.668705, 46.061977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933445, 39.040684, 45.978809>,  <34.006229, 39.263870, 45.928909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933445, 39.040684, 45.978809>,  <33.812134, 38.668705, 46.061977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933445, 39.040684, 45.978809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270368, 0.125253, 0.954575,
		0.913743, -0.345713, -0.213441,
		0.303275, 0.929943, -0.207918,
		34.024429, 39.319668, 45.916435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269020, 38.785759, 46.567242>,  <33.812134, 38.668705, 46.061977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269020, 38.785759, 46.567242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239922, 39.157581, 46.422665>,  <34.222462, 39.380672, 46.335918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239922, 39.157581, 46.422665>,  <34.269020, 38.785759, 46.567242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239922, 39.157581, 46.422665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331103, 0.364359, 0.870410,
		0.940787, -0.056361, -0.334282,
		-0.072742, 0.929552, -0.361446,
		34.218098, 39.436447, 46.314232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896542, 39.149345, 46.767456>,  <34.269020, 38.785759, 46.567242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896542, 39.149345, 46.767456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606476, 39.420559, 46.719456>,  <34.432438, 39.583286, 46.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606476, 39.420559, 46.719456>,  <34.896542, 39.149345, 46.767456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606476, 39.420559, 46.719456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300185, 0.468145, 0.831101,
		0.619696, 0.566663, -0.543019,
		-0.725166, 0.678037, -0.120004,
		34.388927, 39.623970, 46.683456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219677, 39.824642, 46.770657>,  <34.896542, 39.149345, 46.767456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219677, 39.824642, 46.770657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 39.869698, 46.871651>,  <34.604622, 39.896729, 46.932247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 39.869698, 46.871651>,  <35.219677, 39.824642, 46.770657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835266, 39.869698, 46.871651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273672, 0.517128, 0.810976,
		-0.039224, 0.848465, -0.527796,
		-0.961023, 0.112634, 0.252485,
		34.546959, 39.903488, 46.947395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166935, 40.387936, 47.043259>,  <35.219677, 39.824642, 46.770657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166935, 40.387936, 47.043259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812370, 40.269436, 47.185528>,  <34.599632, 40.198338, 47.270889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812370, 40.269436, 47.185528>,  <35.166935, 40.387936, 47.043259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812370, 40.269436, 47.185528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084079, 0.652546, 0.753070,
		-0.455190, 0.697438, -0.553518,
		-0.886416, -0.296251, 0.355672,
		34.546444, 40.180561, 47.292229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853317, 41.004402, 47.318085>,  <35.166935, 40.387936, 47.043259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853317, 41.004402, 47.318085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652634, 40.708244, 47.497013>,  <34.532223, 40.530548, 47.604370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652634, 40.708244, 47.497013>,  <34.853317, 41.004402, 47.318085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652634, 40.708244, 47.497013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091328, 0.559563, 0.823740,
		-0.860200, 0.372427, -0.348358,
		-0.501712, -0.740397, 0.447323,
		34.502121, 40.486126, 47.631210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327538, 41.304913, 47.695213>,  <34.853317, 41.004402, 47.318085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327538, 41.304913, 47.695213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364704, 40.947369, 47.870655>,  <34.387005, 40.732841, 47.975922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364704, 40.947369, 47.870655>,  <34.327538, 41.304913, 47.695213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364704, 40.947369, 47.870655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000072, 0.440505, 0.897750,
		-0.995674, -0.083450, 0.040866,
		0.092919, -0.893863, 0.438605,
		34.392578, 40.679211, 48.002235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762753, 41.364048, 48.308277>,  <34.327538, 41.304913, 47.695213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762753, 41.364048, 48.308277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052689, 41.097534, 48.378334>,  <34.226650, 40.937626, 48.420368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052689, 41.097534, 48.378334>,  <33.762753, 41.364048, 48.308277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052689, 41.097534, 48.378334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028441, 0.282956, 0.958711,
		-0.688329, -0.689931, 0.224048,
		0.724841, -0.666281, 0.175144,
		34.270142, 40.897652, 48.430878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552563, 41.058636, 48.865593>,  <33.762753, 41.364048, 48.308277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552563, 41.058636, 48.865593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938549, 40.953815, 48.860458>,  <34.170143, 40.890923, 48.857380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938549, 40.953815, 48.860458>,  <33.552563, 41.058636, 48.865593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938549, 40.953815, 48.860458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037612, 0.089763, 0.995253,
		-0.259659, -0.960869, 0.096475,
		0.964968, -0.262055, -0.012833,
		34.228039, 40.875198, 48.856609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566490, 40.655502, 49.311680>,  <33.552563, 41.058636, 48.865593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566490, 40.655502, 49.311680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945248, 40.770897, 49.254860>,  <34.172501, 40.840134, 49.220768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945248, 40.770897, 49.254860>,  <33.566490, 40.655502, 49.311680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945248, 40.770897, 49.254860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139539, 0.029364, 0.989781,
		0.289706, -0.957035, -0.012450,
		0.946889, 0.288482, -0.142050,
		34.229313, 40.857441, 49.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941273, 40.243084, 49.849342>,  <33.566490, 40.655502, 49.311680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941273, 40.243084, 49.849342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227032, 40.500053, 49.738400>,  <34.398487, 40.654236, 49.671833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227032, 40.500053, 49.738400>,  <33.941273, 40.243084, 49.849342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227032, 40.500053, 49.738400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372390, -0.013469, 0.927979,
		0.592422, -0.766230, -0.248855,
		0.714397, 0.642426, -0.277357,
		34.441349, 40.692780, 49.655193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499767, 40.025040, 50.191311>,  <33.941273, 40.243084, 49.849342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499767, 40.025040, 50.191311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567547, 40.406948, 50.093575>,  <34.608215, 40.636093, 50.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567547, 40.406948, 50.093575>,  <34.499767, 40.025040, 50.191311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567547, 40.406948, 50.093575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393290, 0.161822, 0.905061,
		0.903664, -0.249464, -0.348079,
		0.169454, 0.954768, -0.244345,
		34.618382, 40.693378, 50.020271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055435, 40.292538, 50.519676>,  <34.499767, 40.025040, 50.191311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055435, 40.292538, 50.519676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837376, 40.622253, 50.458546>,  <34.706539, 40.820084, 50.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837376, 40.622253, 50.458546>,  <35.055435, 40.292538, 50.519676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837376, 40.622253, 50.458546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200765, 0.305352, 0.930835,
		0.813944, 0.476763, -0.331952,
		-0.545150, 0.824292, -0.152823,
		34.673832, 40.869541, 50.412701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357624, 40.723522, 50.838017>,  <35.055435, 40.292538, 50.519676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357624, 40.723522, 50.838017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002979, 40.905319, 50.803734>,  <34.790192, 41.014397, 50.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002979, 40.905319, 50.803734>,  <35.357624, 40.723522, 50.838017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002979, 40.905319, 50.803734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103845, 0.376206, 0.920698,
		0.450697, 0.807405, -0.380747,
		-0.886616, 0.454495, -0.085710,
		34.736996, 41.041668, 50.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401951, 41.476288, 51.085705>,  <35.357624, 40.723522, 50.838017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401951, 41.476288, 51.085705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009956, 41.406361, 51.123779>,  <34.774757, 41.364403, 51.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009956, 41.406361, 51.123779>,  <35.401951, 41.476288, 51.085705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009956, 41.406361, 51.123779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006339, 0.450535, 0.892736,
		-0.198951, 0.875475, -0.440411,
		-0.979989, -0.174819, 0.095184,
		34.715961, 41.353916, 51.152336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195526, 42.025158, 51.511765>,  <35.401951, 41.476288, 51.085705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195526, 42.025158, 51.511765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865738, 41.799313, 51.527031>,  <34.667866, 41.663803, 51.536190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865738, 41.799313, 51.527031>,  <35.195526, 42.025158, 51.511765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865738, 41.799313, 51.527031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205111, 0.361004, 0.909728,
		-0.527424, 0.742217, -0.413446,
		-0.824471, -0.564615, 0.038165,
		34.618397, 41.629929, 51.538479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646202, 42.448921, 51.740730>,  <35.195526, 42.025158, 51.511765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646202, 42.448921, 51.740730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532700, 42.081203, 51.849819>,  <34.464600, 41.860573, 51.915272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532700, 42.081203, 51.849819>,  <34.646202, 42.448921, 51.740730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532700, 42.081203, 51.849819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097499, 0.310603, 0.945526,
		-0.953927, 0.241707, -0.177765,
		-0.283754, -0.919295, 0.272727,
		34.447575, 41.805416, 51.931637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099686, 42.576035, 52.215572>,  <34.646202, 42.448921, 51.740730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099686, 42.576035, 52.215572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234756, 42.207176, 52.291065>,  <34.315800, 41.985863, 52.336361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234756, 42.207176, 52.291065>,  <34.099686, 42.576035, 52.215572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234756, 42.207176, 52.291065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047257, 0.183645, 0.981856,
		-0.940074, -0.340473, 0.018436,
		0.337681, -0.922146, 0.188729,
		34.336060, 41.930534, 52.347683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786968, 42.353504, 52.728966>,  <34.099686, 42.576035, 52.215572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786968, 42.353504, 52.728966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138241, 42.163254, 52.749298>,  <34.349003, 42.049103, 52.761497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138241, 42.163254, 52.749298>,  <33.786968, 42.353504, 52.728966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138241, 42.163254, 52.749298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033625, 0.167385, 0.985318,
		-0.477150, -0.863576, 0.162987,
		0.878179, -0.475625, 0.050830,
		34.401695, 42.020565, 52.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881351, 41.900166, 53.374733>,  <33.786968, 42.353504, 52.728966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881351, 41.900166, 53.374733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256001, 41.967720, 53.251957>,  <34.480789, 42.008251, 53.178291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256001, 41.967720, 53.251957>,  <33.881351, 41.900166, 53.374733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256001, 41.967720, 53.251957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302475, 0.052185, 0.951728,
		0.176754, -0.984253, -0.002207,
		0.936625, 0.168889, -0.306935,
		34.536987, 42.018387, 53.159878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404663, 41.475464, 53.680641>,  <33.881351, 41.900166, 53.374733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404663, 41.475464, 53.680641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590015, 41.813076, 53.572647>,  <34.701225, 42.015644, 53.507851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590015, 41.813076, 53.572647>,  <34.404663, 41.475464, 53.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590015, 41.813076, 53.572647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353933, 0.103036, 0.929578,
		0.812412, -0.526300, -0.250986,
		0.463377, 0.844033, -0.269983,
		34.729027, 42.066284, 53.491653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086487, 41.249832, 54.341717>,  <34.404663, 41.475464, 53.680641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086487, 41.249832, 54.341717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146431, 41.106709, 54.710392>,  <34.182400, 41.020836, 54.931599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146431, 41.106709, 54.710392>,  <34.086487, 41.249832, 54.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146431, 41.106709, 54.710392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733807, -0.584511, -0.346228,
		0.662622, 0.728230, 0.174966,
		0.149864, -0.357810, 0.921690,
		34.191391, 40.999367, 54.986900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721272, 41.398811, 54.483406>,  <34.086487, 41.249832, 54.341717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721272, 41.398811, 54.483406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553642, 41.060467, 54.615406>,  <34.453064, 40.857460, 54.694607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553642, 41.060467, 54.615406>,  <34.721272, 41.398811, 54.483406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553642, 41.060467, 54.615406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605967, -0.531227, -0.592116,
		0.676152, -0.048171, 0.735186,
		-0.419073, -0.845859, 0.330000,
		34.427921, 40.806709, 54.714405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188744, 40.945004, 54.768246>,  <34.721272, 41.398811, 54.483406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188744, 40.945004, 54.768246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886089, 40.736801, 54.609970>,  <34.704494, 40.611881, 54.515003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886089, 40.736801, 54.609970>,  <35.188744, 40.945004, 54.768246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886089, 40.736801, 54.609970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642056, -0.477150, -0.600077,
		0.123541, -0.708096, 0.695225,
		-0.756638, -0.520508, -0.395689,
		34.659100, 40.580650, 54.491264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738651, 41.350040, 54.531780>,  <35.188744, 40.945004, 54.768246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738651, 41.350040, 54.531780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013355, 41.059502, 54.520527>,  <36.178177, 40.885178, 54.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013355, 41.059502, 54.520527>,  <35.738651, 41.350040, 54.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013355, 41.059502, 54.520527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235702, -0.185910, -0.953877,
		0.687612, 0.661713, -0.298875,
		0.686757, -0.726343, -0.028133,
		36.219383, 40.841599, 54.512089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692268, 41.126766, 53.782116>,  <35.738651, 41.350040, 54.531780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692268, 41.126766, 53.782116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959370, 40.858543, 53.911396>,  <36.119633, 40.697609, 53.988964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959370, 40.858543, 53.911396>,  <35.692268, 41.126766, 53.782116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959370, 40.858543, 53.911396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072014, -0.373955, -0.924647,
		0.740888, 0.640714, -0.201421,
		0.667757, -0.670555, 0.323199,
		36.159698, 40.657375, 54.008354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183601, 41.024338, 53.292511>,  <35.692268, 41.126766, 53.782116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183601, 41.024338, 53.292511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163876, 40.700500, 53.526478>,  <36.152039, 40.506199, 53.666859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163876, 40.700500, 53.526478>,  <36.183601, 41.024338, 53.292511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163876, 40.700500, 53.526478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073907, -0.586985, -0.806217,
		0.996045, 0.003472, 0.088781,
		-0.049314, -0.809590, 0.584920,
		36.149082, 40.457623, 53.701954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904461, 40.567127, 53.350376>,  <36.183601, 41.024338, 53.292511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904461, 40.567127, 53.350376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558277, 40.370686, 53.389961>,  <36.350567, 40.252823, 53.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558277, 40.370686, 53.389961>,  <36.904461, 40.567127, 53.350376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558277, 40.370686, 53.389961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193979, -0.510634, -0.837631,
		0.461894, -0.705742, 0.537199,
		-0.865463, -0.491101, 0.098959,
		36.298637, 40.223354, 53.419647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968418, 39.810677, 53.356918>,  <36.904461, 40.567127, 53.350376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968418, 39.810677, 53.356918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597588, 39.878334, 53.223095>,  <36.375092, 39.918930, 53.142803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597588, 39.878334, 53.223095>,  <36.968418, 39.810677, 53.356918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597588, 39.878334, 53.223095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200495, -0.530360, -0.823723,
		-0.316763, -0.830727, 0.457770,
		-0.927072, 0.169144, -0.334556,
		36.319466, 39.929077, 53.122726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567036, 39.157345, 53.333035>,  <36.968418, 39.810677, 53.356918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567036, 39.157345, 53.333035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487995, 39.458942, 53.082455>,  <36.440571, 39.639900, 52.932106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487995, 39.458942, 53.082455>,  <36.567036, 39.157345, 53.333035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487995, 39.458942, 53.082455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197216, -0.595408, -0.778842,
		-0.960239, -0.277446, -0.031048,
		-0.197601, 0.753998, -0.626451,
		36.428715, 39.685143, 52.894520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067875, 38.987034, 52.770332>,  <36.567036, 39.157345, 53.333035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067875, 38.987034, 52.770332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263000, 39.305878, 52.627975>,  <36.380077, 39.497185, 52.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263000, 39.305878, 52.627975>,  <36.067875, 38.987034, 52.770332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263000, 39.305878, 52.627975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290239, -0.532592, -0.795051,
		-0.823285, 0.284544, -0.491158,
		0.487814, 0.797107, -0.355889,
		36.409344, 39.545010, 52.521210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857567, 38.965614, 52.058464>,  <36.067875, 38.987034, 52.770332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857567, 38.965614, 52.058464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164234, 39.221943, 52.042637>,  <36.348236, 39.375740, 52.033138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164234, 39.221943, 52.042637>,  <35.857567, 38.965614, 52.058464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164234, 39.221943, 52.042637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241106, -0.344479, -0.907305,
		-0.595054, 0.686060, -0.418607,
		0.766667, 0.640824, -0.039570,
		36.394234, 39.414188, 52.030766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872490, 39.177864, 51.329685>,  <35.857567, 38.965614, 52.058464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872490, 39.177864, 51.329685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226292, 39.222485, 51.510883>,  <36.438572, 39.249256, 51.619602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226292, 39.222485, 51.510883>,  <35.872490, 39.177864, 51.329685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226292, 39.222485, 51.510883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464128, -0.308742, -0.830219,
		0.047242, 0.944581, -0.324860,
		0.884507, 0.111556, 0.452992,
		36.491642, 39.255951, 51.646782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213345, 39.557095, 50.842693>,  <35.872490, 39.177864, 51.329685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213345, 39.557095, 50.842693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502514, 39.393200, 51.065228>,  <36.676014, 39.294865, 51.198746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502514, 39.393200, 51.065228>,  <36.213345, 39.557095, 50.842693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502514, 39.393200, 51.065228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493332, -0.257647, -0.830808,
		0.483748, 0.875063, 0.015878,
		0.722919, -0.409735, 0.556333,
		36.719391, 39.270279, 51.232128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820122, 39.927151, 50.585773>,  <36.213345, 39.557095, 50.842693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820122, 39.927151, 50.585773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954807, 39.590652, 50.754971>,  <37.035618, 39.388752, 50.856487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954807, 39.590652, 50.754971>,  <36.820122, 39.927151, 50.585773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954807, 39.590652, 50.754971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587751, -0.163182, -0.792414,
		0.735643, 0.515432, 0.439500,
		0.336717, -0.841250, 0.422989,
		37.055824, 39.338276, 50.881866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492805, 39.929230, 50.389294>,  <36.820122, 39.927151, 50.585773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492805, 39.929230, 50.389294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419064, 39.554039, 50.506744>,  <37.374817, 39.328926, 50.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419064, 39.554039, 50.506744>,  <37.492805, 39.929230, 50.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419064, 39.554039, 50.506744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680848, -0.337329, -0.650119,
		0.708844, 0.080060, 0.700807,
		-0.184354, -0.937976, 0.293623,
		37.363758, 39.272648, 50.594830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137039, 39.598881, 50.348244>,  <37.492805, 39.929230, 50.389294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137039, 39.598881, 50.348244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857082, 39.313351, 50.358063>,  <37.689106, 39.142033, 50.363953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857082, 39.313351, 50.358063>,  <38.137039, 39.598881, 50.348244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857082, 39.313351, 50.358063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539450, -0.550826, -0.636856,
		0.468124, -0.432490, 0.770592,
		-0.699896, -0.713823, 0.024549,
		37.647114, 39.099205, 50.365429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470543, 38.875587, 50.458199>,  <38.137039, 39.598881, 50.348244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470543, 38.875587, 50.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115383, 38.839531, 50.277752>,  <37.902287, 38.817898, 50.169483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115383, 38.839531, 50.277752>,  <38.470543, 38.875587, 50.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115383, 38.839531, 50.277752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403182, -0.624685, -0.668740,
		-0.221524, -0.775657, 0.591002,
		-0.887902, -0.090139, -0.451114,
		37.849010, 38.812489, 50.142418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508762, 38.246265, 50.298725>,  <38.470543, 38.875587, 50.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508762, 38.246265, 50.298725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220814, 38.397274, 50.065742>,  <38.048046, 38.487881, 49.925953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220814, 38.397274, 50.065742>,  <38.508762, 38.246265, 50.298725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220814, 38.397274, 50.065742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338857, -0.541212, -0.769588,
		-0.605775, -0.751374, 0.261675,
		-0.719870, 0.377527, -0.582461,
		38.004852, 38.510532, 49.891003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222507, 37.710686, 49.836723>,  <38.508762, 38.246265, 50.298725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222507, 37.710686, 49.836723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102829, 38.036804, 49.638416>,  <38.031021, 38.232475, 49.519432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102829, 38.036804, 49.638416>,  <38.222507, 37.710686, 49.836723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102829, 38.036804, 49.638416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450669, -0.337224, -0.826546,
		-0.841060, -0.470723, -0.266532,
		-0.299193, 0.815292, -0.495765,
		38.013069, 38.281391, 49.489685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950115, 37.476322, 49.153862>,  <38.222507, 37.710686, 49.836723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950115, 37.476322, 49.153862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019291, 37.865891, 49.095119>,  <38.060795, 38.099632, 49.059872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019291, 37.865891, 49.095119>,  <37.950115, 37.476322, 49.153862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019291, 37.865891, 49.095119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278626, -0.191390, -0.941136,
		-0.944701, 0.121840, -0.304458,
		0.172939, 0.973922, -0.146859,
		38.071171, 38.158066, 49.051064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604599, 37.698799, 48.582695>,  <37.950115, 37.476322, 49.153862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604599, 37.698799, 48.582695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881199, 37.985531, 48.618443>,  <38.047157, 38.157570, 48.639893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881199, 37.985531, 48.618443>,  <37.604599, 37.698799, 48.582695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881199, 37.985531, 48.618443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262426, -0.134015, -0.955601,
		-0.673025, 0.684249, -0.280786,
		0.691498, 0.716829, 0.089369,
		38.088650, 38.200581, 48.645252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351910, 38.353783, 48.299065>,  <37.604599, 37.698799, 48.582695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351910, 38.353783, 48.299065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749153, 38.356812, 48.252285>,  <37.987499, 38.358631, 48.224216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749153, 38.356812, 48.252285>,  <37.351910, 38.353783, 48.299065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749153, 38.356812, 48.252285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113343, -0.191491, -0.974928,
		-0.029778, 0.981465, -0.189313,
		0.993110, 0.007574, -0.116945,
		38.047085, 38.359085, 48.217201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472641, 38.956085, 47.911827>,  <37.351910, 38.353783, 48.299065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472641, 38.956085, 47.911827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754547, 38.676277, 47.864517>,  <37.923691, 38.508392, 47.836132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754547, 38.676277, 47.864517>,  <37.472641, 38.956085, 47.911827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754547, 38.676277, 47.864517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197177, -0.032984, -0.979813,
		0.681494, 0.713856, -0.161174,
		0.704761, -0.699516, -0.118278,
		37.965977, 38.466423, 47.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777454, 39.250969, 47.357738>,  <37.472641, 38.956085, 47.911827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777454, 39.250969, 47.357738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886089, 38.866104, 47.366562>,  <37.951271, 38.635185, 47.371857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886089, 38.866104, 47.366562>,  <37.777454, 39.250969, 47.357738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886089, 38.866104, 47.366562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215947, -0.083255, -0.972849,
		0.937874, 0.259451, -0.230387,
		0.271587, -0.962161, 0.022055,
		37.967564, 38.577457, 47.373177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095398, 39.092400, 46.693398>,  <37.777454, 39.250969, 47.357738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095398, 39.092400, 46.693398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989277, 38.734623, 46.837391>,  <37.925606, 38.519958, 46.923786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989277, 38.734623, 46.837391>,  <38.095398, 39.092400, 46.693398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989277, 38.734623, 46.837391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284807, -0.284001, -0.915548,
		0.921140, -0.345424, -0.179397,
		-0.265303, -0.894442, 0.359984,
		37.909687, 38.466290, 46.945385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429913, 38.611389, 46.387016>,  <38.095398, 39.092400, 46.693398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429913, 38.611389, 46.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112534, 38.389824, 46.487907>,  <37.922108, 38.256886, 46.548443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112534, 38.389824, 46.487907>,  <38.429913, 38.611389, 46.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112534, 38.389824, 46.487907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120462, -0.263302, -0.957163,
		0.596599, -0.789842, 0.142190,
		-0.793447, -0.553914, 0.252232,
		37.874500, 38.223648, 46.563576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407440, 38.055733, 45.941181>,  <38.429913, 38.611389, 46.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407440, 38.055733, 45.941181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032425, 38.032307, 46.078350>,  <37.807415, 38.018250, 46.160652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032425, 38.032307, 46.078350>,  <38.407440, 38.055733, 45.941181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032425, 38.032307, 46.078350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299084, -0.367794, -0.880498,
		0.177695, -0.928061, 0.327303,
		-0.937536, -0.058569, 0.342923,
		37.751163, 38.014736, 46.181229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211311, 37.350769, 45.766689>,  <38.407440, 38.055733, 45.941181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211311, 37.350769, 45.766689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882355, 37.574074, 45.810551>,  <37.684982, 37.708057, 45.836868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882355, 37.574074, 45.810551>,  <38.211311, 37.350769, 45.766689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882355, 37.574074, 45.810551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399556, -0.429525, -0.809854,
		-0.405012, -0.709825, 0.576293,
		-0.822387, 0.558262, 0.109653,
		37.635639, 37.741550, 45.843449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682545, 36.860886, 45.662037>,  <38.211311, 37.350769, 45.766689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682545, 36.860886, 45.662037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495228, 37.207493, 45.592937>,  <37.382835, 37.415459, 45.551479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495228, 37.207493, 45.592937>,  <37.682545, 36.860886, 45.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495228, 37.207493, 45.592937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364159, -0.367416, -0.855800,
		-0.805039, -0.337859, 0.487610,
		-0.468296, 0.866520, -0.172749,
		37.354740, 37.467449, 45.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102367, 36.654114, 45.557846>,  <37.682545, 36.860886, 45.662037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102367, 36.654114, 45.557846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078789, 37.024189, 45.407883>,  <37.064640, 37.246235, 45.317905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078789, 37.024189, 45.407883>,  <37.102367, 36.654114, 45.557846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078789, 37.024189, 45.407883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628556, -0.326166, -0.706068,
		-0.775527, 0.194030, 0.600758,
		-0.058949, 0.925185, -0.374909,
		37.061104, 37.301746, 45.295410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395725, 36.757553, 45.472363>,  <37.102367, 36.654114, 45.557846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395725, 36.757553, 45.472363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563522, 37.002331, 45.204170>,  <36.664200, 37.149197, 45.043255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563522, 37.002331, 45.204170>,  <36.395725, 36.757553, 45.472363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563522, 37.002331, 45.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683785, -0.272776, -0.676780,
		-0.597044, 0.742372, 0.304011,
		0.419496, 0.611945, -0.670482,
		36.689369, 37.185913, 45.003025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873539, 37.157337, 45.259624>,  <36.395725, 36.757553, 45.472363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873539, 37.157337, 45.259624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167690, 37.133949, 44.989571>,  <36.344181, 37.119919, 44.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167690, 37.133949, 44.989571>,  <35.873539, 37.157337, 45.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167690, 37.133949, 44.989571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671495, -0.196950, -0.714356,
		-0.091202, 0.978669, -0.184093,
		0.735375, -0.058467, -0.675133,
		36.388302, 37.116409, 44.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602238, 37.529942, 44.661278>,  <35.873539, 37.157337, 45.259624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602238, 37.529942, 44.661278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903488, 37.301502, 44.530647>,  <36.084240, 37.164440, 44.452267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903488, 37.301502, 44.530647>,  <35.602238, 37.529942, 44.661278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903488, 37.301502, 44.530647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509578, -0.192431, -0.838630,
		0.416093, 0.798011, -0.435942,
		0.753125, -0.571095, -0.326580,
		36.129425, 37.130173, 44.432674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605721, 37.708202, 43.887020>,  <35.602238, 37.529942, 44.661278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605721, 37.708202, 43.887020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777607, 37.351536, 43.943989>,  <35.880737, 37.137535, 43.978168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777607, 37.351536, 43.943989>,  <35.605721, 37.708202, 43.887020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777607, 37.351536, 43.943989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386216, -0.324067, -0.863607,
		0.816200, 0.316099, -0.483630,
		0.429714, -0.891663, 0.142421,
		35.906521, 37.084038, 43.986713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958057, 37.598427, 43.374344>,  <35.605721, 37.708202, 43.887020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958057, 37.598427, 43.374344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893532, 37.231911, 43.520985>,  <35.854816, 37.012001, 43.608967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893532, 37.231911, 43.520985>,  <35.958057, 37.598427, 43.374344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893532, 37.231911, 43.520985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150887, -0.344199, -0.926693,
		0.975301, -0.204800, -0.082733,
		-0.161310, -0.916288, 0.366599,
		35.845139, 36.957024, 43.630966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326836, 37.174744, 42.815765>,  <35.958057, 37.598427, 43.374344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326836, 37.174744, 42.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114212, 36.896030, 43.008400>,  <35.986637, 36.728802, 43.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114212, 36.896030, 43.008400>,  <36.326836, 37.174744, 42.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114212, 36.896030, 43.008400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191078, -0.455269, -0.869609,
		0.825186, -0.554272, 0.108863,
		-0.531561, -0.696788, 0.481591,
		35.954742, 36.686993, 43.152878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458565, 36.572330, 42.515320>,  <36.326836, 37.174744, 42.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458565, 36.572330, 42.515320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115387, 36.486702, 42.702129>,  <35.909481, 36.435326, 42.814217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115387, 36.486702, 42.702129>,  <36.458565, 36.572330, 42.515320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115387, 36.486702, 42.702129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246084, -0.626748, -0.739344,
		0.450978, -0.749240, 0.485033,
		-0.857940, -0.214069, 0.467026,
		35.858006, 36.422482, 42.842236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297268, 35.800037, 42.679600>,  <36.458565, 36.572330, 42.515320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297268, 35.800037, 42.679600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931274, 35.961163, 42.670200>,  <35.711678, 36.057838, 42.664562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931274, 35.961163, 42.670200>,  <36.297268, 35.800037, 42.679600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931274, 35.961163, 42.670200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309919, -0.738887, -0.598327,
		-0.258375, -0.540176, 0.800907,
		-0.914982, 0.402809, -0.023499,
		35.656780, 36.082005, 42.663151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912155, 35.266685, 42.797585>,  <36.297268, 35.800037, 42.679600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912155, 35.266685, 42.797585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679066, 35.546951, 42.632896>,  <35.539211, 35.715111, 42.534084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679066, 35.546951, 42.632896>,  <35.912155, 35.266685, 42.797585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679066, 35.546951, 42.632896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422787, -0.694037, -0.582721,
		-0.694037, -0.165495, 0.700660,
		0.582721, -0.700660, 0.411718,
		35.504250, 35.757149, 42.509380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344227, 34.942230, 42.640705>,  <35.912155, 35.266685, 42.797585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344227, 34.942230, 42.640705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295544, 35.273254, 42.421494>,  <35.266335, 35.471870, 42.289967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295544, 35.273254, 42.421494>,  <35.344227, 34.942230, 42.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295544, 35.273254, 42.421494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408989, -0.544893, -0.731997,
		-0.904386, 0.135043, 0.404783,
		-0.121713, 0.827559, -0.548025,
		35.259029, 35.521523, 42.257088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640350, 34.922840, 42.150311>,  <35.344227, 34.942230, 42.640705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640350, 34.922840, 42.150311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913494, 35.179459, 42.010529>,  <35.077381, 35.333431, 41.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913494, 35.179459, 42.010529>,  <34.640350, 34.922840, 42.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913494, 35.179459, 42.010529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218114, -0.277495, -0.935640,
		-0.697234, 0.715129, -0.049558,
		0.682855, 0.641551, -0.349458,
		35.118351, 35.371925, 41.905689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357529, 35.047363, 41.472111>,  <34.640350, 34.922840, 42.150311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357529, 35.047363, 41.472111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740559, 35.161926, 41.459255>,  <34.970375, 35.230663, 41.451542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740559, 35.161926, 41.459255>,  <34.357529, 35.047363, 41.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740559, 35.161926, 41.459255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088747, -0.399117, -0.912595,
		-0.274195, 0.871022, -0.407600,
		0.957570, 0.286403, -0.032136,
		35.027828, 35.247849, 41.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462784, 35.459900, 40.829067>,  <34.357529, 35.047363, 41.472111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462784, 35.459900, 40.829067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831257, 35.331802, 40.917484>,  <35.052341, 35.254944, 40.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831257, 35.331802, 40.917484>,  <34.462784, 35.459900, 40.829067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831257, 35.331802, 40.917484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039958, -0.487208, -0.872371,
		0.387068, 0.812448, -0.436013,
		0.921185, -0.320244, 0.221046,
		35.107613, 35.235729, 40.983799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852932, 35.423267, 40.156471>,  <34.462784, 35.459900, 40.829067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852932, 35.423267, 40.156471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068699, 35.185947, 40.395477>,  <35.198158, 35.043556, 40.538879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068699, 35.185947, 40.395477>,  <34.852932, 35.423267, 40.156471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068699, 35.185947, 40.395477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121446, -0.647365, -0.752442,
		0.833232, 0.478448, -0.277149,
		0.539421, -0.593301, 0.597511,
		35.230526, 35.007957, 40.574730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472271, 35.253052, 39.840870>,  <34.852932, 35.423267, 40.156471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472271, 35.253052, 39.840870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440952, 34.967209, 40.118919>,  <35.422161, 34.795704, 40.285751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440952, 34.967209, 40.118919>,  <35.472271, 35.253052, 39.840870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440952, 34.967209, 40.118919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127462, -0.698722, -0.703947,
		0.988748, 0.033485, 0.145793,
		-0.078297, -0.714609, 0.695128,
		35.417461, 34.752827, 40.327457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065052, 34.788925, 39.727512>,  <35.472271, 35.253052, 39.840870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065052, 34.788925, 39.727512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797329, 34.600597, 39.957417>,  <35.636696, 34.487602, 40.095360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797329, 34.600597, 39.957417>,  <36.065052, 34.788925, 39.727512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797329, 34.600597, 39.957417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035836, -0.752234, -0.657921,
		0.742118, -0.460951, 0.486606,
		-0.669311, -0.470817, 0.574764,
		35.596535, 34.459351, 40.129845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383404, 34.139626, 39.894310>,  <36.065052, 34.788925, 39.727512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383404, 34.139626, 39.894310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985554, 34.108566, 39.921722>,  <35.746845, 34.089931, 39.938171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985554, 34.108566, 39.921722>,  <36.383404, 34.139626, 39.894310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985554, 34.108566, 39.921722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017935, -0.780846, -0.624466,
		0.102002, -0.619879, 0.778040,
		-0.994623, -0.077651, 0.068530,
		35.687168, 34.085270, 39.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521095, 34.731083, 40.355217>,  <36.383404, 34.139626, 39.894310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521095, 34.731083, 40.355217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730610, 34.755775, 40.015373>,  <36.856319, 34.770592, 39.811466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730610, 34.755775, 40.015373>,  <36.521095, 34.731083, 40.355217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730610, 34.755775, 40.015373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806793, 0.284133, 0.518029,
		0.273376, -0.956796, 0.099028,
		0.523785, 0.061722, -0.849611,
		36.887745, 34.774296, 39.760490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106880, 34.389565, 40.473003>,  <36.521095, 34.731083, 40.355217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106880, 34.389565, 40.473003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 34.693089, 40.214787>,  <37.162281, 34.875202, 40.059856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 34.693089, 40.214787>,  <37.106880, 34.389565, 40.473003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141506, 34.693089, 40.214787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742882, 0.382582, 0.549324,
		0.663802, -0.527111, -0.530585,
		0.086562, 0.758805, -0.645540,
		37.167477, 34.920731, 40.021126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748314, 34.468319, 40.303936>,  <37.106880, 34.389565, 40.473003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748314, 34.468319, 40.303936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603012, 34.826859, 40.202267>,  <37.515831, 35.041981, 40.141266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603012, 34.826859, 40.202267>,  <37.748314, 34.468319, 40.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603012, 34.826859, 40.202267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729445, 0.443332, 0.520928,
		0.579616, 0.003827, -0.814881,
		-0.363257, 0.896349, -0.254171,
		37.494034, 35.095764, 40.126015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342770, 34.915646, 40.275505>,  <37.748314, 34.468319, 40.303936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342770, 34.915646, 40.275505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034988, 35.170738, 40.289635>,  <37.850319, 35.323795, 40.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034988, 35.170738, 40.289635>,  <38.342770, 34.915646, 40.275505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034988, 35.170738, 40.289635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529671, 0.606210, 0.593260,
		0.356926, 0.475194, -0.804235,
		-0.769449, 0.637730, 0.035324,
		37.804153, 35.362057, 40.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648762, 35.506458, 40.120445>,  <38.342770, 34.915646, 40.275505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648762, 35.506458, 40.120445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333260, 35.583809, 40.353844>,  <38.143959, 35.630219, 40.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333260, 35.583809, 40.353844>,  <38.648762, 35.506458, 40.120445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333260, 35.583809, 40.353844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581037, 0.544391, 0.605008,
		-0.200658, 0.816238, -0.541749,
		-0.788754, 0.193376, 0.583501,
		38.096634, 35.641823, 40.528893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620285, 36.258869, 40.130672>,  <38.648762, 35.506458, 40.120445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620285, 36.258869, 40.130672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414700, 36.092804, 40.430935>,  <38.291348, 35.993164, 40.611092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414700, 36.092804, 40.430935>,  <38.620285, 36.258869, 40.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414700, 36.092804, 40.430935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410102, 0.649677, 0.640107,
		-0.753434, 0.636833, -0.163647,
		-0.513959, -0.415167, 0.750655,
		38.260513, 35.968254, 40.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569893, 36.831722, 40.571980>,  <38.620285, 36.258869, 40.130672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569893, 36.831722, 40.571980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465981, 36.531784, 40.815369>,  <38.403633, 36.351822, 40.961403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465981, 36.531784, 40.815369>,  <38.569893, 36.831722, 40.571980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465981, 36.531784, 40.815369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291598, 0.539778, 0.789690,
		-0.920588, 0.382579, 0.078429,
		-0.259785, -0.749849, 0.608472,
		38.388046, 36.306828, 40.997910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041012, 37.057667, 41.133186>,  <38.569893, 36.831722, 40.571980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041012, 37.057667, 41.133186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249184, 36.744656, 41.269897>,  <38.374088, 36.556850, 41.351925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249184, 36.744656, 41.269897>,  <38.041012, 37.057667, 41.133186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249184, 36.744656, 41.269897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436556, 0.587814, 0.681097,
		-0.733875, -0.205259, 0.647531,
		0.520430, -0.782523, 0.341775,
		38.405312, 36.509899, 41.372429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935791, 37.050468, 41.874989>,  <38.041012, 37.057667, 41.133186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935791, 37.050468, 41.874989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259308, 36.820885, 41.823719>,  <38.453419, 36.683136, 41.792957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259308, 36.820885, 41.823719>,  <37.935791, 37.050468, 41.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259308, 36.820885, 41.823719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407594, 0.389968, 0.825707,
		-0.423937, -0.720068, 0.549345,
		0.808792, -0.573958, -0.128173,
		38.501945, 36.648697, 41.785267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244656, 36.906773, 42.570862>,  <37.935791, 37.050468, 41.874989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244656, 36.906773, 42.570862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550011, 36.777592, 42.347095>,  <38.733223, 36.700085, 42.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550011, 36.777592, 42.347095>,  <38.244656, 36.906773, 42.570862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550011, 36.777592, 42.347095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621644, 0.132019, 0.772095,
		-0.175496, -0.937163, 0.301542,
		0.763387, -0.322951, -0.559412,
		38.779026, 36.680706, 42.179272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629116, 36.321411, 42.988323>,  <38.244656, 36.906773, 42.570862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629116, 36.321411, 42.988323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873714, 36.501331, 42.727940>,  <39.020473, 36.609283, 42.571709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873714, 36.501331, 42.727940>,  <38.629116, 36.321411, 42.988323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873714, 36.501331, 42.727940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627817, 0.224903, 0.745160,
		0.481579, -0.864347, -0.144867,
		0.611496, 0.449803, -0.650960,
		39.057163, 36.636272, 42.532650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330032, 36.125565, 43.196068>,  <38.629116, 36.321411, 42.988323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330032, 36.125565, 43.196068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357430, 36.451153, 42.965328>,  <39.373867, 36.646507, 42.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357430, 36.451153, 42.965328>,  <39.330032, 36.125565, 43.196068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357430, 36.451153, 42.965328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653478, 0.400301, 0.642438,
		0.753841, -0.420961, -0.504496,
		0.068491, 0.813972, -0.576852,
		39.377975, 36.695343, 42.792274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024090, 36.234642, 43.102768>,  <39.330032, 36.125565, 43.196068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024090, 36.234642, 43.102768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850418, 36.589630, 43.040958>,  <39.746216, 36.802624, 43.003872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850418, 36.589630, 43.040958>,  <40.024090, 36.234642, 43.102768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850418, 36.589630, 43.040958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590177, 0.409830, 0.695508,
		0.680572, 0.210783, -0.701707,
		-0.434181, 0.887474, -0.154520,
		39.720165, 36.855873, 42.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616241, 36.742386, 43.160957>,  <40.024090, 36.234642, 43.102768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616241, 36.742386, 43.160957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283989, 36.960915, 43.203995>,  <40.084637, 37.092033, 43.229816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283989, 36.960915, 43.203995>,  <40.616241, 36.742386, 43.160957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283989, 36.960915, 43.203995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425069, 0.497329, 0.756294,
		0.359669, 0.673940, -0.645324,
		-0.830635, 0.546322, 0.107597,
		40.034798, 37.124813, 43.236275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764023, 37.487999, 43.142094>,  <40.616241, 36.742386, 43.160957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764023, 37.487999, 43.142094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408131, 37.439041, 43.317997>,  <40.194595, 37.409668, 43.423538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408131, 37.439041, 43.317997>,  <40.764023, 37.487999, 43.142094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408131, 37.439041, 43.317997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275787, 0.623550, 0.731524,
		-0.363749, 0.772143, -0.521039,
		-0.889735, -0.122395, 0.439763,
		40.141209, 37.402321, 43.449924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621384, 38.194633, 43.309826>,  <40.764023, 37.487999, 43.142094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621384, 38.194633, 43.309826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431538, 37.935501, 43.548172>,  <40.317631, 37.780022, 43.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431538, 37.935501, 43.548172>,  <40.621384, 38.194633, 43.309826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431538, 37.935501, 43.548172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085204, 0.639973, 0.763659,
		-0.876057, 0.413217, -0.248546,
		-0.474620, -0.647832, 0.595861,
		40.289150, 37.741150, 43.726929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169033, 38.677761, 43.712662>,  <40.621384, 38.194633, 43.309826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169033, 38.677761, 43.712662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170139, 38.333504, 43.916344>,  <40.170803, 38.126949, 44.038555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170139, 38.333504, 43.916344>,  <40.169033, 38.677761, 43.712662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170139, 38.333504, 43.916344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021439, 0.509144, 0.860414,
		-0.999766, 0.008538, 0.019859,
		0.002765, -0.860639, 0.509208,
		40.170967, 38.075314, 44.069107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627754, 38.676182, 44.105774>,  <40.169033, 38.677761, 43.712662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627754, 38.676182, 44.105774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871017, 38.411613, 44.281349>,  <40.016975, 38.252872, 44.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871017, 38.411613, 44.281349>,  <39.627754, 38.676182, 44.105774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871017, 38.411613, 44.281349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126921, 0.464814, 0.876264,
		-0.783606, -0.588615, 0.198731,
		0.608156, -0.661423, 0.438938,
		40.053463, 38.213188, 44.413033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448471, 38.544373, 44.761005>,  <39.627754, 38.676182, 44.105774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448471, 38.544373, 44.761005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801319, 38.384441, 44.860611>,  <40.013027, 38.288483, 44.920372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801319, 38.384441, 44.860611>,  <39.448471, 38.544373, 44.761005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801319, 38.384441, 44.860611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125953, 0.309178, 0.942626,
		-0.453875, -0.862872, 0.222372,
		0.882119, -0.399826, 0.249010,
		40.065956, 38.264492, 44.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409836, 38.213356, 45.473167>,  <39.448471, 38.544373, 44.761005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409836, 38.213356, 45.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799057, 38.295254, 45.430759>,  <40.032593, 38.344391, 45.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799057, 38.295254, 45.430759>,  <39.409836, 38.213356, 45.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799057, 38.295254, 45.430759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056935, 0.232206, 0.970999,
		0.223390, -0.950881, 0.214296,
		0.973065, 0.204711, -0.106011,
		40.090973, 38.356674, 45.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671318, 37.901363, 46.084560>,  <39.409836, 38.213356, 45.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671318, 37.901363, 46.084560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952885, 38.155800, 45.958134>,  <40.121822, 38.308460, 45.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952885, 38.155800, 45.958134>,  <39.671318, 37.901363, 46.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952885, 38.155800, 45.958134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046248, 0.402999, 0.914031,
		0.708780, -0.658016, 0.254258,
		0.703913, 0.636088, -0.316069,
		40.164059, 38.346626, 45.863312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217110, 37.803799, 46.441936>,  <39.671318, 37.901363, 46.084560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217110, 37.803799, 46.441936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234695, 38.180725, 46.309204>,  <40.245247, 38.406879, 46.229565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234695, 38.180725, 46.309204>,  <40.217110, 37.803799, 46.441936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234695, 38.180725, 46.309204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027778, 0.330873, 0.943266,
		0.998647, -0.050692, -0.011628,
		0.043969, 0.942313, -0.331834,
		40.247887, 38.463417, 46.209656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571953, 38.141113, 47.008980>,  <40.217110, 37.803799, 46.441936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571953, 38.141113, 47.008980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468895, 38.473274, 46.811375>,  <40.407059, 38.672569, 46.692810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468895, 38.473274, 46.811375>,  <40.571953, 38.141113, 47.008980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468895, 38.473274, 46.811375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006231, 0.512694, 0.858548,
		0.966220, 0.218122, -0.137267,
		-0.257644, 0.830402, -0.494016,
		40.391602, 38.722393, 46.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021729, 38.736351, 47.353443>,  <40.571953, 38.141113, 47.008980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021729, 38.736351, 47.353443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716206, 38.920422, 47.172409>,  <40.532890, 39.030865, 47.063789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716206, 38.920422, 47.172409>,  <41.021729, 38.736351, 47.353443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716206, 38.920422, 47.172409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080689, 0.627618, 0.774329,
		0.640377, 0.627958, -0.442250,
		-0.763810, 0.460178, -0.452582,
		40.487064, 39.058475, 47.036636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142189, 39.457409, 47.572552>,  <41.021729, 38.736351, 47.353443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142189, 39.457409, 47.572552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762630, 39.427799, 47.449833>,  <40.534897, 39.410034, 47.376202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762630, 39.427799, 47.449833>,  <41.142189, 39.457409, 47.572552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762630, 39.427799, 47.449833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283788, 0.625463, 0.726815,
		0.138089, 0.776734, -0.614504,
		-0.948892, -0.074024, -0.306797,
		40.477962, 39.405594, 47.357796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897633, 40.143459, 47.653481>,  <41.142189, 39.457409, 47.572552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897633, 40.143459, 47.653481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562317, 39.927010, 47.626808>,  <40.361126, 39.797138, 47.610806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562317, 39.927010, 47.626808>,  <40.897633, 40.143459, 47.653481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562317, 39.927010, 47.626808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443093, 0.604888, 0.661648,
		-0.317701, 0.584201, -0.746843,
		-0.838292, -0.541128, -0.066682,
		40.310829, 39.764671, 47.606804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215172, 40.617252, 47.379097>,  <40.897633, 40.143459, 47.653481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215172, 40.617252, 47.379097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112812, 40.294777, 47.592480>,  <40.051395, 40.101292, 47.720509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112812, 40.294777, 47.592480>,  <40.215172, 40.617252, 47.379097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112812, 40.294777, 47.592480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565343, 0.572429, 0.593896,
		-0.784158, -0.149607, -0.602258,
		-0.255899, -0.806190, 0.533454,
		40.036041, 40.052921, 47.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509186, 40.687862, 47.517719>,  <40.215172, 40.617252, 47.379097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509186, 40.687862, 47.517719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633698, 40.427109, 47.794312>,  <39.708405, 40.270657, 47.960266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633698, 40.427109, 47.794312>,  <39.509186, 40.687862, 47.517719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633698, 40.427109, 47.794312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601615, 0.428084, 0.674391,
		-0.735640, -0.625929, -0.258933,
		0.311276, -0.651887, 0.691484,
		39.727081, 40.231541, 48.001759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988937, 40.452648, 47.840763>,  <39.509186, 40.687862, 47.517719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988937, 40.452648, 47.840763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252857, 40.357952, 48.126034>,  <39.411209, 40.301132, 48.297195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252857, 40.357952, 48.126034>,  <38.988937, 40.452648, 47.840763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252857, 40.357952, 48.126034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570156, 0.460489, 0.680348,
		-0.489476, -0.855513, 0.168849,
		0.659799, -0.236743, 0.713174,
		39.450798, 40.286930, 48.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607533, 40.318085, 48.446281>,  <38.988937, 40.452648, 47.840763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607533, 40.318085, 48.446281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964550, 40.357861, 48.622227>,  <39.178761, 40.381725, 48.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964550, 40.357861, 48.622227>,  <38.607533, 40.318085, 48.446281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964550, 40.357861, 48.622227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428042, 0.493818, 0.756918,
		-0.141947, -0.863861, 0.483317,
		0.892542, 0.099438, 0.439864,
		39.232311, 40.387691, 48.754185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445274, 40.364666, 49.089424>,  <38.607533, 40.318085, 48.446281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445274, 40.364666, 49.089424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817211, 40.509308, 49.116673>,  <39.040371, 40.596092, 49.133022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817211, 40.509308, 49.116673>,  <38.445274, 40.364666, 49.089424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817211, 40.509308, 49.116673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286594, 0.595592, 0.750422,
		0.230787, -0.717294, 0.657439,
		0.929839, 0.361606, 0.068117,
		39.096165, 40.617790, 49.137108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602493, 40.398109, 49.774105>,  <38.445274, 40.364666, 49.089424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602493, 40.398109, 49.774105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838829, 40.684898, 49.626129>,  <38.980633, 40.856972, 49.537346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838829, 40.684898, 49.626129>,  <38.602493, 40.398109, 49.774105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838829, 40.684898, 49.626129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265666, 0.605856, 0.749906,
		0.761792, -0.344797, 0.548441,
		0.590842, 0.716975, -0.369936,
		39.016083, 40.899990, 49.515148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995255, 40.645012, 50.317192>,  <38.602493, 40.398109, 49.774105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995255, 40.645012, 50.317192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996765, 40.953247, 50.062263>,  <38.997669, 41.138187, 49.909306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996765, 40.953247, 50.062263>,  <38.995255, 40.645012, 50.317192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996765, 40.953247, 50.062263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154078, 0.630165, 0.761021,
		0.988052, 0.095325, 0.121108,
		0.003774, 0.770588, -0.637322,
		38.997898, 41.184425, 49.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341911, 41.146366, 50.617115>,  <38.995255, 40.645012, 50.317192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341911, 41.146366, 50.617115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096733, 41.324520, 50.356060>,  <38.949627, 41.431412, 50.199429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096733, 41.324520, 50.356060>,  <39.341911, 41.146366, 50.617115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096733, 41.324520, 50.356060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245176, 0.678006, 0.692961,
		0.751126, 0.584756, -0.306381,
		-0.612942, 0.445384, -0.652637,
		38.912849, 41.458134, 50.160271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391674, 41.873581, 50.802532>,  <39.341911, 41.146366, 50.617115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391674, 41.873581, 50.802532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076355, 41.880432, 50.556511>,  <38.887161, 41.884544, 50.408897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076355, 41.880432, 50.556511>,  <39.391674, 41.873581, 50.802532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076355, 41.880432, 50.556511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471152, 0.626097, 0.621304,
		0.395725, 0.779557, -0.485482,
		-0.788300, 0.017130, -0.615052,
		38.839867, 41.885571, 50.371994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266205, 42.629677, 50.612274>,  <39.391674, 41.873581, 50.802532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266205, 42.629677, 50.612274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914066, 42.442936, 50.578705>,  <38.702785, 42.330891, 50.558563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914066, 42.442936, 50.578705>,  <39.266205, 42.629677, 50.612274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914066, 42.442936, 50.578705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441008, 0.740425, 0.507231,
		-0.174664, 0.483548, -0.857714,
		-0.880343, -0.466854, -0.083923,
		38.649963, 42.302879, 50.553528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858551, 43.056438, 50.336220>,  <39.266205, 42.629677, 50.612274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858551, 43.056438, 50.336220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641792, 42.798119, 50.551361>,  <38.511738, 42.643127, 50.680447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641792, 42.798119, 50.551361>,  <38.858551, 43.056438, 50.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641792, 42.798119, 50.551361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396074, 0.760677, 0.514291,
		-0.741266, 0.065660, -0.667992,
		-0.541895, -0.645801, 0.537858,
		38.479225, 42.604378, 50.712719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236225, 43.340851, 50.306572>,  <38.858551, 43.056438, 50.336220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236225, 43.340851, 50.306572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223034, 43.085384, 50.614082>,  <38.215118, 42.932106, 50.798588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223034, 43.085384, 50.614082>,  <38.236225, 43.340851, 50.306572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223034, 43.085384, 50.614082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510780, 0.671932, 0.536294,
		-0.859079, -0.374989, -0.348378,
		-0.032982, -0.638663, 0.768779,
		38.213139, 42.893787, 50.844715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563313, 44.001377, 50.622955>,  <38.236225, 43.340851, 50.306572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563313, 44.001377, 50.622955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481609, 44.327179, 50.405754>,  <38.432587, 44.522659, 50.275433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481609, 44.327179, 50.405754>,  <38.563313, 44.001377, 50.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481609, 44.327179, 50.405754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391753, -0.576359, -0.717174,
		-0.897110, 0.066234, 0.436814,
		-0.204260, 0.814508, -0.543005,
		38.420330, 44.571533, 50.242851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845226, 43.989288, 50.391476>,  <38.563313, 44.001377, 50.622955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845226, 43.989288, 50.391476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056625, 44.216324, 50.138958>,  <38.183464, 44.352543, 49.987446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056625, 44.216324, 50.138958>,  <37.845226, 43.989288, 50.391476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056625, 44.216324, 50.138958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263130, -0.597492, -0.757473,
		-0.807125, 0.566438, -0.166426,
		0.528500, 0.567584, -0.631297,
		38.215176, 44.386600, 49.949570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409771, 43.992428, 49.881763>,  <37.845226, 43.989288, 50.391476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409771, 43.992428, 49.881763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743484, 44.124096, 49.704849>,  <37.943714, 44.203098, 49.598701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743484, 44.124096, 49.704849>,  <37.409771, 43.992428, 49.881763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743484, 44.124096, 49.704849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271367, -0.453136, -0.849134,
		-0.479922, 0.828442, -0.288719,
		0.834287, 0.329169, -0.442281,
		37.993771, 44.222847, 49.572166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208164, 44.157352, 49.159939>,  <37.409771, 43.992428, 49.881763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208164, 44.157352, 49.159939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603741, 44.098209, 49.164577>,  <37.841087, 44.062725, 49.167362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603741, 44.098209, 49.164577>,  <37.208164, 44.157352, 49.159939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603741, 44.098209, 49.164577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041817, -0.352998, -0.934689,
		0.142295, 0.923867, -0.355277,
		0.988941, -0.147858, 0.011596,
		37.900421, 44.053852, 49.168056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436100, 44.303005, 48.391018>,  <37.208164, 44.157352, 49.159939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436100, 44.303005, 48.391018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746868, 44.129330, 48.573395>,  <37.933331, 44.025124, 48.682819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746868, 44.129330, 48.573395>,  <37.436100, 44.303005, 48.391018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746868, 44.129330, 48.573395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125313, -0.603044, -0.787804,
		0.617004, 0.669195, -0.414108,
		0.776919, -0.434185, 0.455939,
		37.979942, 43.999073, 48.710175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028721, 44.343536, 47.992664>,  <37.436100, 44.303005, 48.391018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028721, 44.343536, 47.992664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069313, 44.020336, 48.224815>,  <38.093670, 43.826416, 48.364105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069313, 44.020336, 48.224815>,  <38.028721, 44.343536, 47.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069313, 44.020336, 48.224815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238978, -0.546507, -0.802633,
		0.965708, 0.220150, 0.137634,
		0.101482, -0.808000, 0.580376,
		38.099758, 43.777935, 48.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591110, 43.955437, 47.783997>,  <38.028721, 44.343536, 47.992664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591110, 43.955437, 47.783997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385384, 43.680531, 47.989189>,  <38.261948, 43.515587, 48.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385384, 43.680531, 47.989189>,  <38.591110, 43.955437, 47.783997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385384, 43.680531, 47.989189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043125, -0.618126, -0.784896,
		0.856516, -0.381561, 0.347549,
		-0.514315, -0.687264, 0.512980,
		38.231091, 43.474350, 48.143082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016396, 43.306919, 47.738976>,  <38.591110, 43.955437, 47.783997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016396, 43.306919, 47.738976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667950, 43.158634, 47.867809>,  <38.458881, 43.069664, 47.945110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667950, 43.158634, 47.867809>,  <39.016396, 43.306919, 47.738976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667950, 43.158634, 47.867809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174260, -0.846524, -0.503021,
		0.459123, -0.382063, 0.802019,
		-0.871114, -0.370708, 0.322081,
		38.406616, 43.047421, 47.964432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159676, 42.678726, 48.006950>,  <39.016396, 43.306919, 47.738976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159676, 42.678726, 48.006950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769764, 42.650421, 47.922295>,  <38.535816, 42.633438, 47.871502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769764, 42.650421, 47.922295>,  <39.159676, 42.678726, 48.006950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769764, 42.650421, 47.922295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175867, -0.827375, -0.533406,
		-0.137361, -0.557175, 0.818955,
		-0.974783, -0.070758, -0.211637,
		38.477329, 42.629192, 47.858803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993660, 41.882675, 47.941856>,  <39.159676, 42.678726, 48.006950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993660, 41.882675, 47.941856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697865, 42.085167, 47.764366>,  <38.520386, 42.206661, 47.657871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697865, 42.085167, 47.764366>,  <38.993660, 41.882675, 47.941856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697865, 42.085167, 47.764366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020915, -0.641560, -0.766787,
		-0.672846, -0.576310, 0.463837,
		-0.739487, 0.506229, -0.443725,
		38.476017, 42.237034, 47.631248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582836, 41.329529, 47.705845>,  <38.993660, 41.882675, 47.941856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582836, 41.329529, 47.705845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487377, 41.660179, 47.501987>,  <38.430099, 41.858570, 47.379673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487377, 41.660179, 47.501987>,  <38.582836, 41.329529, 47.705845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487377, 41.660179, 47.501987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143669, -0.549082, -0.823327,
		-0.960419, -0.123268, 0.249799,
		-0.238650, 0.826628, -0.509639,
		38.415783, 41.908169, 47.349094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863556, 41.179039, 47.414398>,  <38.582836, 41.329529, 47.705845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863556, 41.179039, 47.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031509, 41.458683, 47.182899>,  <38.132282, 41.626469, 47.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031509, 41.458683, 47.182899>,  <37.863556, 41.179039, 47.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031509, 41.458683, 47.182899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269631, -0.512801, -0.815067,
		-0.866603, 0.498278, -0.026813,
		0.419879, 0.699110, -0.578746,
		38.157475, 41.668415, 47.009277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425632, 41.279629, 46.843723>,  <37.863556, 41.179039, 47.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425632, 41.279629, 46.843723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770012, 41.427685, 46.704140>,  <37.976639, 41.516518, 46.620388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770012, 41.427685, 46.704140>,  <37.425632, 41.279629, 46.843723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770012, 41.427685, 46.704140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093551, -0.559087, -0.823815,
		-0.500023, 0.741904, -0.446716,
		0.860945, 0.370136, -0.348962,
		38.028294, 41.538727, 46.599453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325638, 41.380680, 46.165867>,  <37.425632, 41.279629, 46.843723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325638, 41.380680, 46.165867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725525, 41.382675, 46.156639>,  <37.965458, 41.383873, 46.151100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725525, 41.382675, 46.156639>,  <37.325638, 41.380680, 46.165867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725525, 41.382675, 46.156639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017641, -0.491639, -0.870621,
		-0.015682, 0.870785, -0.491414,
		0.999721, 0.004984, -0.023071,
		38.025440, 41.384171, 46.149719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466076, 41.308144, 45.532558>,  <37.325638, 41.380680, 46.165867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466076, 41.308144, 45.532558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834404, 41.250599, 45.677551>,  <38.055401, 41.216072, 45.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834404, 41.250599, 45.677551>,  <37.466076, 41.308144, 45.532558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834404, 41.250599, 45.677551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274966, -0.419632, -0.865045,
		0.276553, 0.896222, -0.346850,
		0.920822, -0.143859, 0.362481,
		38.110649, 41.207439, 45.786297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946247, 41.626835, 45.022617>,  <37.466076, 41.308144, 45.532558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946247, 41.626835, 45.022617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121063, 41.336212, 45.234695>,  <38.225952, 41.161839, 45.361942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121063, 41.336212, 45.234695>,  <37.946247, 41.626835, 45.022617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121063, 41.336212, 45.234695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346058, -0.408262, -0.844728,
		0.830202, 0.552662, 0.073002,
		0.437045, -0.726558, 0.530193,
		38.252178, 41.118244, 45.393753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681190, 41.590313, 44.815338>,  <37.946247, 41.626835, 45.022617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681190, 41.590313, 44.815338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654388, 41.228722, 44.984253>,  <38.638306, 41.011765, 45.085602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654388, 41.228722, 44.984253>,  <38.681190, 41.590313, 44.815338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654388, 41.228722, 44.984253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398485, -0.412269, -0.819295,
		0.914724, 0.113378, 0.387848,
		-0.067008, -0.903980, 0.422292,
		38.634285, 40.957527, 45.110939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353668, 41.255573, 44.680523>,  <38.681190, 41.590313, 44.815338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353668, 41.255573, 44.680523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077835, 40.973419, 44.746140>,  <38.912334, 40.804127, 44.785511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077835, 40.973419, 44.746140>,  <39.353668, 41.255573, 44.680523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077835, 40.973419, 44.746140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232615, -0.430249, -0.872225,
		0.685832, -0.563313, 0.460775,
		-0.689584, -0.705382, 0.164043,
		38.870960, 40.761803, 44.795353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709393, 40.563065, 44.678043>,  <39.353668, 41.255573, 44.680523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709393, 40.563065, 44.678043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319740, 40.505089, 44.608696>,  <39.085949, 40.470303, 44.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319740, 40.505089, 44.608696>,  <39.709393, 40.563065, 44.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319740, 40.505089, 44.608696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225143, -0.688432, -0.689472,
		-0.019420, -0.710671, 0.703257,
		-0.974132, -0.144943, -0.173372,
		39.027500, 40.461605, 44.556683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668602, 39.894802, 44.534107>,  <39.709393, 40.563065, 44.678043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668602, 39.894802, 44.534107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318092, 40.029575, 44.396343>,  <39.107784, 40.110439, 44.313686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318092, 40.029575, 44.396343>,  <39.668602, 39.894802, 44.534107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318092, 40.029575, 44.396343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006254, -0.722715, -0.691118,
		-0.481768, -0.603457, 0.635406,
		-0.876277, 0.336932, -0.344407,
		39.055210, 40.130653, 44.293022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350079, 39.303997, 44.324604>,  <39.668602, 39.894802, 44.534107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350079, 39.303997, 44.324604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175022, 39.604259, 44.126617>,  <39.069988, 39.784416, 44.007828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175022, 39.604259, 44.126617>,  <39.350079, 39.303997, 44.324604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175022, 39.604259, 44.126617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102012, -0.588376, -0.802127,
		-0.893345, -0.300550, 0.334072,
		-0.437639, 0.750655, -0.494964,
		39.043732, 39.829456, 43.978127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885300, 38.872486, 43.898804>,  <39.350079, 39.303997, 44.324604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885300, 38.872486, 43.898804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883953, 39.240173, 43.741310>,  <38.883144, 39.460785, 43.646816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883953, 39.240173, 43.741310>,  <38.885300, 38.872486, 43.898804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883953, 39.240173, 43.741310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039846, -0.393299, -0.918547,
		-0.999200, -0.018781, -0.035303,
		-0.003367, 0.919219, -0.393732,
		38.882942, 39.515938, 43.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400230, 38.873215, 43.310387>,  <38.885300, 38.872486, 43.898804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400230, 38.873215, 43.310387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606274, 39.206448, 43.229752>,  <38.729900, 39.406387, 43.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606274, 39.206448, 43.229752>,  <38.400230, 38.873215, 43.310387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606274, 39.206448, 43.229752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048987, -0.206192, -0.977284,
		-0.855726, 0.513279, -0.065400,
		0.515104, 0.833084, -0.201588,
		38.760803, 39.456371, 43.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977505, 39.233551, 42.699627>,  <38.400230, 38.873215, 43.310387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977505, 39.233551, 42.699627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361835, 39.342957, 42.717533>,  <38.592434, 39.408600, 42.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361835, 39.342957, 42.717533>,  <37.977505, 39.233551, 42.699627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361835, 39.342957, 42.717533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129638, -0.300771, -0.944844,
		-0.244967, 0.913633, -0.324447,
		0.960825, 0.273516, 0.044763,
		38.650082, 39.425011, 42.730961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138817, 39.611202, 42.108303>,  <37.977505, 39.233551, 42.699627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138817, 39.611202, 42.108303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511654, 39.507687, 42.209679>,  <38.735355, 39.445576, 42.270504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511654, 39.507687, 42.209679>,  <38.138817, 39.611202, 42.108303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511654, 39.507687, 42.209679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180922, -0.273513, -0.944700,
		0.313800, 0.926400, -0.208118,
		0.932093, -0.258794, 0.253434,
		38.791283, 39.430050, 42.285709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567024, 40.012280, 41.544697>,  <38.138817, 39.611202, 42.108303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567024, 40.012280, 41.544697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788792, 39.721558, 41.706871>,  <38.921852, 39.547127, 41.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788792, 39.721558, 41.706871>,  <38.567024, 40.012280, 41.544697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788792, 39.721558, 41.706871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270837, -0.303081, -0.913668,
		0.786935, 0.616363, 0.028811,
		0.554420, -0.726800, 0.405439,
		38.955116, 39.503517, 41.828503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302689, 40.095280, 41.344086>,  <38.567024, 40.012280, 41.544697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302689, 40.095280, 41.344086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257858, 39.717815, 41.468624>,  <39.230961, 39.491337, 41.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257858, 39.717815, 41.468624>,  <39.302689, 40.095280, 41.344086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257858, 39.717815, 41.468624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187447, -0.327776, -0.925973,
		0.975860, -0.045418, 0.213623,
		-0.112077, -0.943663, 0.311350,
		39.224236, 39.434715, 41.562031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992462, 39.769779, 41.208462>,  <39.302689, 40.095280, 41.344086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992462, 39.769779, 41.208462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709221, 39.488678, 41.235939>,  <39.539276, 39.320015, 41.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709221, 39.488678, 41.235939>,  <39.992462, 39.769779, 41.208462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709221, 39.488678, 41.235939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166562, -0.260785, -0.950920,
		0.686181, -0.661909, 0.301716,
		-0.708105, -0.702758, 0.068697,
		39.496788, 39.277851, 41.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321529, 39.119183, 40.984863>,  <39.992462, 39.769779, 41.208462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321529, 39.119183, 40.984863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924385, 39.099396, 40.941456>,  <39.686096, 39.087524, 40.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924385, 39.099396, 40.941456>,  <40.321529, 39.119183, 40.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924385, 39.099396, 40.941456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114704, -0.146874, -0.982482,
		0.032664, -0.987917, 0.151500,
		-0.992863, -0.049469, -0.108520,
		39.626526, 39.084557, 40.908901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131050, 38.537228, 40.556499>,  <40.321529, 39.119183, 40.984863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131050, 38.537228, 40.556499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800892, 38.761677, 40.531639>,  <39.602798, 38.896347, 40.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800892, 38.761677, 40.531639>,  <40.131050, 38.537228, 40.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800892, 38.761677, 40.531639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032547, -0.157194, -0.987031,
		-0.563615, -0.812669, 0.148010,
		-0.825396, 0.561123, -0.062147,
		39.553272, 38.930016, 40.512997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877289, 38.199551, 39.996910>,  <40.131050, 38.537228, 40.556499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877289, 38.199551, 39.996910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638607, 38.518429, 40.033615>,  <39.495396, 38.709755, 40.055637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638607, 38.518429, 40.033615>,  <39.877289, 38.199551, 39.996910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638607, 38.518429, 40.033615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076193, 0.170123, -0.982473,
		-0.798834, -0.579257, -0.162255,
		-0.596707, 0.797195, 0.091765,
		39.459595, 38.757587, 40.061146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429733, 38.140957, 39.490665>,  <39.877289, 38.199551, 39.996910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429733, 38.140957, 39.490665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425434, 38.529339, 39.586277>,  <39.422855, 38.762367, 39.643642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425434, 38.529339, 39.586277>,  <39.429733, 38.140957, 39.490665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425434, 38.529339, 39.586277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035878, 0.238515, -0.970476,
		-0.999299, -0.019003, 0.032273,
		-0.010744, 0.970953, 0.239029,
		39.422211, 38.820625, 39.657986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885036, 38.361668, 39.160091>,  <39.429733, 38.140957, 39.490665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885036, 38.361668, 39.160091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134827, 38.667725, 39.222813>,  <39.284702, 38.851360, 39.260445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134827, 38.667725, 39.222813>,  <38.885036, 38.361668, 39.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134827, 38.667725, 39.222813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047151, 0.163468, -0.985421,
		-0.779621, 0.622764, 0.066004,
		0.624475, 0.765142, 0.156807,
		39.322170, 38.897266, 39.269855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629852, 38.935436, 38.711872>,  <38.885036, 38.361668, 39.160091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629852, 38.935436, 38.711872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008049, 39.034855, 38.796040>,  <39.234966, 39.094505, 38.846539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008049, 39.034855, 38.796040>,  <38.629852, 38.935436, 38.711872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008049, 39.034855, 38.796040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180019, 0.139523, -0.973718,
		-0.271376, 0.958517, 0.087173,
		0.945488, 0.248551, 0.210415,
		39.291695, 39.109421, 38.859165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701946, 39.427361, 38.164795>,  <38.629852, 38.935436, 38.711872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701946, 39.427361, 38.164795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077694, 39.363159, 38.286003>,  <39.303143, 39.324638, 38.358730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077694, 39.363159, 38.286003>,  <38.701946, 39.427361, 38.164795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077694, 39.363159, 38.286003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327176, 0.154946, -0.932174,
		0.102660, 0.974798, 0.198063,
		0.939371, -0.160499, 0.303023,
		39.359505, 39.315010, 38.376911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254669, 40.032425, 37.952934>,  <38.701946, 39.427361, 38.164795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254669, 40.032425, 37.952934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434460, 39.677986, 37.998203>,  <39.542336, 39.465324, 38.025364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434460, 39.677986, 37.998203>,  <39.254669, 40.032425, 37.952934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434460, 39.677986, 37.998203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440098, 0.109416, -0.891258,
		0.777355, 0.450408, 0.439148,
		0.449480, -0.886093, 0.113169,
		39.569305, 39.412159, 38.032154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909180, 40.056461, 37.596165>,  <39.254669, 40.032425, 37.952934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909180, 40.056461, 37.596165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916119, 39.658642, 37.637280>,  <39.920280, 39.419949, 37.661949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916119, 39.658642, 37.637280>,  <39.909180, 40.056461, 37.596165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916119, 39.658642, 37.637280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478716, -0.081996, -0.874133,
		0.877799, 0.064369, 0.474685,
		0.017345, -0.994552, 0.102791,
		39.921322, 39.360275, 37.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636528, 39.954620, 37.456295>,  <39.909180, 40.056461, 37.596165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636528, 39.954620, 37.456295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419254, 39.622166, 37.408699>,  <40.288891, 39.422691, 37.380142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419254, 39.622166, 37.408699>,  <40.636528, 39.954620, 37.456295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419254, 39.622166, 37.408699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399645, -0.131305, -0.907217,
		0.738402, -0.540336, 0.403484,
		-0.543182, -0.831141, -0.118987,
		40.256298, 39.372822, 37.373001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116886, 39.339634, 37.262268>,  <40.636528, 39.954620, 37.456295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116886, 39.339634, 37.262268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742340, 39.286362, 37.132359>,  <40.517612, 39.254398, 37.054413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742340, 39.286362, 37.132359>,  <41.116886, 39.339634, 37.262268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742340, 39.286362, 37.132359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324661, 0.023177, -0.945546,
		0.133458, -0.990820, 0.021537,
		-0.936367, -0.133183, -0.324774,
		40.461430, 39.246407, 37.034927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145050, 38.828663, 36.721237>,  <41.116886, 39.339634, 37.262268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145050, 38.828663, 36.721237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854984, 39.099293, 36.670033>,  <40.680946, 39.261669, 36.639309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854984, 39.099293, 36.670033>,  <41.145050, 38.828663, 36.721237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854984, 39.099293, 36.670033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280844, 0.120870, -0.952112,
		-0.628704, -0.726385, -0.277663,
		-0.725161, 0.676576, -0.128009,
		40.637436, 39.302265, 36.631630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319012, 38.345928, 36.147373>,  <41.145050, 38.828663, 36.721237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319012, 38.345928, 36.147373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645309, 38.490295, 36.328171>,  <41.841087, 38.576916, 36.436649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645309, 38.490295, 36.328171>,  <41.319012, 38.345928, 36.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645309, 38.490295, 36.328171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565933, -0.336588, -0.752614,
		-0.119499, 0.869738, -0.478827,
		0.815745, 0.360921, 0.451992,
		41.890034, 38.598572, 36.463768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644424, 38.039261, 35.486252>,  <41.319012, 38.345928, 36.147373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644424, 38.039261, 35.486252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902760, 38.117363, 35.781487>,  <42.057762, 38.164227, 35.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902760, 38.117363, 35.781487>,  <41.644424, 38.039261, 35.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902760, 38.117363, 35.781487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741926, -0.388575, -0.546403,
		0.180112, 0.900491, -0.395822,
		0.645837, 0.195257, 0.738084,
		42.096512, 38.175941, 36.002911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151817, 38.348022, 35.181393>,  <41.644424, 38.039261, 35.486252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151817, 38.348022, 35.181393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287563, 38.146839, 35.499352>,  <42.369011, 38.026131, 35.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287563, 38.146839, 35.499352>,  <42.151817, 38.348022, 35.181393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287563, 38.146839, 35.499352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698297, -0.431486, -0.571140,
		0.630246, 0.748903, 0.204780,
		0.339368, -0.502956, 0.794899,
		42.389374, 37.995953, 35.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623169, 37.795986, 34.873131>,  <42.151817, 38.348022, 35.181393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623169, 37.795986, 34.873131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719219, 37.769348, 35.260513>,  <42.776848, 37.753365, 35.492943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719219, 37.769348, 35.260513>,  <42.623169, 37.795986, 34.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719219, 37.769348, 35.260513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820925, -0.518521, -0.239203,
		0.518094, 0.852468, -0.069837,
		0.240125, -0.066599, 0.968455,
		42.791256, 37.749367, 35.551048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310925, 37.995388, 34.937641>,  <42.623169, 37.795986, 34.873131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310925, 37.995388, 34.937641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177528, 37.703945, 35.176949>,  <43.097492, 37.529079, 35.320534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177528, 37.703945, 35.176949>,  <43.310925, 37.995388, 34.937641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177528, 37.703945, 35.176949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813163, -0.543405, -0.208513,
		0.477025, 0.416953, 0.773691,
		-0.333487, -0.728602, 0.598268,
		43.077484, 37.485363, 35.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867619, 37.810070, 35.400295>,  <43.310925, 37.995388, 34.937641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867619, 37.810070, 35.400295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621876, 37.502022, 35.331627>,  <43.474430, 37.317192, 35.290424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621876, 37.502022, 35.331627>,  <43.867619, 37.810070, 35.400295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621876, 37.502022, 35.331627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782927, -0.568008, -0.253758,
		0.097915, -0.290304, 0.951912,
		-0.614360, -0.770124, -0.171671,
		43.437569, 37.270985, 35.280125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223969, 37.247055, 35.627014>,  <43.867619, 37.810070, 35.400295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223969, 37.247055, 35.627014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966862, 37.084641, 35.367172>,  <43.812599, 36.987190, 35.211269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966862, 37.084641, 35.367172>,  <44.223969, 37.247055, 35.627014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966862, 37.084641, 35.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611512, -0.782710, -0.115835,
		-0.461416, -0.471694, 0.751399,
		-0.642766, -0.406041, -0.649602,
		43.774033, 36.962830, 35.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078903, 37.465473, 36.409622>,  <44.223969, 37.247055, 35.627014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078903, 37.465473, 36.409622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445606, 37.592232, 36.506893>,  <44.665627, 37.668285, 36.565254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445606, 37.592232, 36.506893>,  <44.078903, 37.465473, 36.409622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445606, 37.592232, 36.506893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275190, 0.942321, -0.190530,
		-0.289527, 0.107750, 0.951086,
		0.916758, 0.316893, 0.243175,
		44.720634, 37.687298, 36.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981758, 37.958115, 36.929329>,  <44.078903, 37.465473, 36.409622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981758, 37.958115, 36.929329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305458, 38.051243, 36.713585>,  <44.499680, 38.107121, 36.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305458, 38.051243, 36.713585>,  <43.981758, 37.958115, 36.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305458, 38.051243, 36.713585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403331, 0.887726, -0.221961,
		0.427125, 0.397162, 0.812298,
		0.809252, 0.232819, -0.539357,
		44.548233, 38.121090, 36.551777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946297, 38.687042, 37.096848>,  <43.981758, 37.958115, 36.929329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946297, 38.687042, 37.096848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233044, 38.662186, 36.819073>,  <44.405090, 38.647270, 36.652409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233044, 38.662186, 36.819073>,  <43.946297, 38.687042, 37.096848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233044, 38.662186, 36.819073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299759, 0.871792, -0.387457,
		0.629480, 0.485918, 0.606332,
		0.716868, -0.062143, -0.694434,
		44.448105, 38.643543, 36.610741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266384, 39.302818, 37.036831>,  <43.946297, 38.687042, 37.096848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266384, 39.302818, 37.036831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371902, 39.135235, 36.689293>,  <44.435211, 39.034683, 36.480770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371902, 39.135235, 36.689293>,  <44.266384, 39.302818, 37.036831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371902, 39.135235, 36.689293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284547, 0.826862, -0.485110,
		0.921654, 0.375195, 0.098907,
		0.263794, -0.418959, -0.868842,
		44.451042, 39.009548, 36.428638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684807, 39.751022, 36.754139>,  <44.266384, 39.302818, 37.036831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684807, 39.751022, 36.754139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547997, 39.509651, 36.466003>,  <44.465912, 39.364826, 36.293121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547997, 39.509651, 36.466003>,  <44.684807, 39.751022, 36.754139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547997, 39.509651, 36.466003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240683, 0.797255, -0.553585,
		0.908346, -0.015965, -0.417914,
		-0.342022, -0.603432, -0.720341,
		44.445389, 39.328621, 36.249901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034531, 39.982128, 36.124687>,  <44.684807, 39.751022, 36.754139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034531, 39.982128, 36.124687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728638, 39.768818, 35.980022>,  <44.545101, 39.640831, 35.893223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728638, 39.768818, 35.980022>,  <45.034531, 39.982128, 36.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728638, 39.768818, 35.980022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113480, 0.663978, -0.739091,
		0.634270, -0.524170, -0.568285,
		-0.764738, -0.533272, -0.361658,
		44.499218, 39.608837, 35.871525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200485, 39.856506, 35.356663>,  <45.034531, 39.982128, 36.124687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200485, 39.856506, 35.356663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813358, 39.847580, 35.456932>,  <44.581081, 39.842224, 35.517094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813358, 39.847580, 35.456932>,  <45.200485, 39.856506, 35.356663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813358, 39.847580, 35.456932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212817, 0.604221, -0.767871,
		-0.134326, -0.796504, -0.589523,
		-0.967815, -0.022315, 0.250673,
		44.523014, 39.840885, 35.532135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805496, 39.640331, 34.718941>,  <45.200485, 39.856506, 35.356663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805496, 39.640331, 34.718941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591568, 39.868576, 34.968216>,  <44.463211, 40.005524, 35.117783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591568, 39.868576, 34.968216>,  <44.805496, 39.640331, 34.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591568, 39.868576, 34.968216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238724, 0.605444, -0.759242,
		-0.810540, -0.554830, -0.187586,
		-0.534823, 0.570614, 0.623188,
		44.431122, 40.039761, 35.155174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440189, 39.957638, 34.251541>,  <44.805496, 39.640331, 34.718941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440189, 39.957638, 34.251541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318233, 40.168758, 34.568645>,  <44.245060, 40.295429, 34.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318233, 40.168758, 34.568645>,  <44.440189, 39.957638, 34.251541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318233, 40.168758, 34.568645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306143, 0.733903, -0.606352,
		-0.901842, -0.427569, -0.062178,
		-0.304890, 0.527799, 0.792761,
		44.226765, 40.327099, 34.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820732, 40.125412, 34.099365>,  <44.440189, 39.957638, 34.251541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820732, 40.125412, 34.099365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917458, 40.380436, 34.391953>,  <43.975491, 40.533451, 34.567505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917458, 40.380436, 34.391953>,  <43.820732, 40.125412, 34.099365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917458, 40.380436, 34.391953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340212, 0.761689, -0.551439,
		-0.908726, -0.115509, 0.401091,
		0.241811, 0.637564, 0.731465,
		43.990002, 40.571705, 34.611393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297348, 40.609856, 34.096851>,  <43.820732, 40.125412, 34.099365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297348, 40.609856, 34.096851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605396, 40.781960, 34.285229>,  <43.790226, 40.885223, 34.398254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605396, 40.781960, 34.285229>,  <43.297348, 40.609856, 34.096851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605396, 40.781960, 34.285229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218293, 0.871459, -0.439213,
		-0.599384, 0.235444, 0.765053,
		0.770122, 0.430262, 0.470942,
		43.836433, 40.911037, 34.426510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957741, 41.132874, 34.414772>,  <43.297348, 40.609856, 34.096851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957741, 41.132874, 34.414772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345490, 41.228703, 34.393150>,  <43.578140, 41.286201, 34.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345490, 41.228703, 34.393150>,  <42.957741, 41.132874, 34.414772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345490, 41.228703, 34.393150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243892, 0.913149, -0.326611,
		-0.028889, 0.329791, 0.943612,
		0.969372, 0.239575, -0.054054,
		43.636303, 41.300575, 34.376934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959129, 41.864891, 34.631676>,  <42.957741, 41.132874, 34.414772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959129, 41.864891, 34.631676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275639, 41.760357, 34.410557>,  <43.465546, 41.697636, 34.277885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275639, 41.760357, 34.410557>,  <42.959129, 41.864891, 34.631676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275639, 41.760357, 34.410557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181894, 0.762529, -0.620858,
		0.583777, 0.591821, 0.555836,
		0.791277, -0.261339, -0.552795,
		43.513023, 41.681953, 34.244717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955814, 42.475731, 34.351299>,  <42.959129, 41.864891, 34.631676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955814, 42.475731, 34.351299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229317, 42.260891, 34.153713>,  <43.393417, 42.131985, 34.035164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229317, 42.260891, 34.153713>,  <42.955814, 42.475731, 34.351299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229317, 42.260891, 34.153713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180187, 0.780240, -0.598964,
		0.707115, 0.320540, 0.630272,
		0.683755, -0.537103, -0.493963,
		43.434444, 42.099758, 34.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445816, 43.062023, 34.192406>,  <42.955814, 42.475731, 34.351299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445816, 43.062023, 34.192406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469700, 42.733906, 33.964878>,  <43.484028, 42.537037, 33.828362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469700, 42.733906, 33.964878>,  <43.445816, 43.062023, 34.192406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469700, 42.733906, 33.964878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107891, 0.571802, -0.813266,
		0.992368, -0.012814, 0.122642,
		0.059705, -0.820291, -0.568821,
		43.487610, 42.487820, 33.794231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942532, 43.163174, 33.747887>,  <43.445816, 43.062023, 34.192406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942532, 43.163174, 33.747887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731262, 42.875179, 33.567818>,  <43.604500, 42.702381, 33.459778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731262, 42.875179, 33.567818>,  <43.942532, 43.163174, 33.747887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731262, 42.875179, 33.567818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151958, 0.441451, -0.884324,
		0.835430, -0.535482, -0.123754,
		-0.528171, -0.719986, -0.450173,
		43.572811, 42.659184, 33.432766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329819, 43.003067, 33.210270>,  <43.942532, 43.163174, 33.747887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329819, 43.003067, 33.210270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957516, 42.885666, 33.123055>,  <43.734135, 42.815228, 33.070724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957516, 42.885666, 33.123055>,  <44.329819, 43.003067, 33.210270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957516, 42.885666, 33.123055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015549, 0.564028, -0.825609,
		0.365295, -0.771836, -0.520412,
		-0.930762, -0.293499, -0.218038,
		43.678288, 42.797615, 33.057644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435989, 42.894653, 32.527695>,  <44.329819, 43.003067, 33.210270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435989, 42.894653, 32.527695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037788, 42.879868, 32.562592>,  <43.798870, 42.870995, 32.583530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037788, 42.879868, 32.562592>,  <44.435989, 42.894653, 32.527695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037788, 42.879868, 32.562592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093674, 0.245269, -0.964919,
		0.014269, -0.968750, -0.247628,
		-0.995500, -0.036965, 0.087247,
		43.739140, 42.868778, 32.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263191, 42.456280, 31.996843>,  <44.435989, 42.894653, 32.527695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263191, 42.456280, 31.996843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936382, 42.666668, 32.091354>,  <43.740295, 42.792900, 32.148060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936382, 42.666668, 32.091354>,  <44.263191, 42.456280, 31.996843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936382, 42.666668, 32.091354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036189, 0.455742, -0.889376,
		-0.575470, -0.718089, -0.391386,
		-0.817022, 0.525973, 0.236279,
		43.691277, 42.824459, 32.162239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739754, 42.294430, 31.469454>,  <44.263191, 42.456280, 31.996843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739754, 42.294430, 31.469454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661297, 42.642178, 31.650879>,  <43.614223, 42.850826, 31.759733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661297, 42.642178, 31.650879>,  <43.739754, 42.294430, 31.469454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661297, 42.642178, 31.650879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174488, 0.486109, -0.856301,
		-0.964926, -0.088817, -0.247042,
		-0.196143, 0.869373, 0.453561,
		43.602455, 42.902988, 31.786947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285973, 42.682056, 30.966686>,  <43.739754, 42.294430, 31.469454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285973, 42.682056, 30.966686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408718, 42.947823, 31.239269>,  <43.482365, 43.107285, 31.402819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408718, 42.947823, 31.239269>,  <43.285973, 42.682056, 30.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408718, 42.947823, 31.239269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138341, 0.677259, -0.722622,
		-0.941645, 0.316022, 0.115912,
		0.306867, 0.664418, 0.681456,
		43.500778, 43.147148, 31.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078392, 43.421265, 30.869381>,  <43.285973, 42.682056, 30.966686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078392, 43.421265, 30.869381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437279, 43.377247, 31.040447>,  <43.652611, 43.350838, 31.143087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437279, 43.377247, 31.040447>,  <43.078392, 43.421265, 30.869381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437279, 43.377247, 31.040447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410442, 0.565110, -0.715673,
		-0.162924, 0.817644, 0.552191,
		0.897214, -0.110042, 0.427665,
		43.706444, 43.344234, 31.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350655, 44.084747, 31.232380>,  <43.078392, 43.421265, 30.869381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350655, 44.084747, 31.232380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597061, 43.811882, 31.074810>,  <43.744904, 43.648163, 30.980268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597061, 43.811882, 31.074810>,  <43.350655, 44.084747, 31.232380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597061, 43.811882, 31.074810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460968, 0.717679, -0.521962,
		0.638778, 0.139947, 0.756556,
		0.616012, -0.682166, -0.393927,
		43.781864, 43.607231, 30.956633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064877, 44.252586, 31.361389>,  <43.350655, 44.084747, 31.232380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064877, 44.252586, 31.361389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067982, 44.050201, 31.016380>,  <44.069847, 43.928772, 30.809376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067982, 44.050201, 31.016380>,  <44.064877, 44.252586, 31.361389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067982, 44.050201, 31.016380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512635, 0.742594, -0.430997,
		0.858571, -0.438811, 0.265141,
		0.007766, -0.505962, -0.862521,
		44.070312, 43.898415, 30.757624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741478, 44.269917, 31.148680>,  <44.064877, 44.252586, 31.361389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741478, 44.269917, 31.148680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508060, 44.249714, 30.824476>,  <44.368008, 44.237595, 30.629955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508060, 44.249714, 30.824476>,  <44.741478, 44.269917, 31.148680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508060, 44.249714, 30.824476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431700, 0.826065, -0.362286,
		0.687827, -0.561307, -0.460248,
		-0.583549, -0.050501, -0.810506,
		44.332996, 44.234562, 30.581324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188046, 44.331799, 30.488934>,  <44.741478, 44.269917, 31.148680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188046, 44.331799, 30.488934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810379, 44.453926, 30.439405>,  <44.583778, 44.527203, 30.409689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810379, 44.453926, 30.439405>,  <45.188046, 44.331799, 30.488934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810379, 44.453926, 30.439405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328613, 0.845577, -0.420730,
		-0.023759, -0.437927, -0.898697,
		-0.944166, 0.305320, -0.123818,
		44.527130, 44.545521, 30.402260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180279, 44.573772, 29.882307>,  <45.188046, 44.331799, 30.488934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180279, 44.573772, 29.882307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932907, 44.816036, 30.082594>,  <44.784485, 44.961395, 30.202766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932907, 44.816036, 30.082594>,  <45.180279, 44.573772, 29.882307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932907, 44.816036, 30.082594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465654, 0.795696, -0.387343,
		-0.633018, -0.006383, -0.774111,
		-0.618429, 0.605663, 0.500717,
		44.747379, 44.997734, 30.232809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653568, 44.249542, 29.318462>,  <45.180279, 44.573772, 29.882307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653568, 44.249542, 29.318462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901802, 44.077427, 29.056250>,  <45.050743, 43.974159, 28.898922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901802, 44.077427, 29.056250>,  <44.653568, 44.249542, 29.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901802, 44.077427, 29.056250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423990, -0.519110, 0.742131,
		-0.659625, -0.738495, -0.139714,
		0.620587, -0.430291, -0.655532,
		45.087978, 43.948341, 28.859591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633602, 43.572765, 29.402971>,  <44.653568, 44.249542, 29.318462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633602, 43.572765, 29.402971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004688, 43.678085, 29.297127>,  <45.227341, 43.741276, 29.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004688, 43.678085, 29.297127>,  <44.633602, 43.572765, 29.402971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004688, 43.678085, 29.297127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371166, -0.575123, 0.729020,
		0.039763, -0.774538, -0.631277,
		0.927715, 0.263296, -0.264613,
		45.283001, 43.757072, 29.217743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032959, 42.977840, 29.384418>,  <44.633602, 43.572765, 29.402971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032959, 42.977840, 29.384418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286987, 43.280186, 29.448126>,  <45.439404, 43.461594, 29.486349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286987, 43.280186, 29.448126>,  <45.032959, 42.977840, 29.384418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286987, 43.280186, 29.448126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446039, -0.527162, 0.723291,
		0.630666, -0.388299, -0.671926,
		0.635067, 0.755860, 0.159267,
		45.477509, 43.506943, 29.495907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688728, 42.827198, 29.247910>,  <45.032959, 42.977840, 29.384418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688728, 42.827198, 29.247910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686535, 43.101395, 29.539133>,  <45.685219, 43.265915, 29.713867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686535, 43.101395, 29.539133>,  <45.688728, 42.827198, 29.247910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686535, 43.101395, 29.539133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553474, -0.604300, 0.573139,
		0.832848, 0.406104, -0.376089,
		-0.005484, 0.685493, 0.728058,
		45.684891, 43.307041, 29.757551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289101, 42.971767, 29.577579>,  <45.688728, 42.827198, 29.247910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289101, 42.971767, 29.577579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024551, 43.086060, 29.854982>,  <45.865822, 43.154633, 30.021423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024551, 43.086060, 29.854982>,  <46.289101, 42.971767, 29.577579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024551, 43.086060, 29.854982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378691, -0.670905, 0.637558,
		0.647442, 0.684286, 0.335515,
		-0.661371, 0.285726, 0.693505,
		45.826141, 43.171776, 30.063034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624462, 43.206207, 30.234501>,  <46.289101, 42.971767, 29.577579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624462, 43.206207, 30.234501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268555, 43.078949, 30.365406>,  <46.055012, 43.002594, 30.443949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268555, 43.078949, 30.365406>,  <46.624462, 43.206207, 30.234501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268555, 43.078949, 30.365406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451877, -0.714905, 0.533591,
		0.064203, 0.622653, 0.779859,
		-0.889767, -0.318142, 0.327262,
		46.001625, 42.983505, 30.463585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757988, 43.014225, 30.895658>,  <46.624462, 43.206207, 30.234501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757988, 43.014225, 30.895658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398937, 42.838303, 30.884081>,  <46.183506, 42.732750, 30.877134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398937, 42.838303, 30.884081>,  <46.757988, 43.014225, 30.895658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398937, 42.838303, 30.884081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277209, -0.614387, 0.738704,
		-0.342669, 0.655057, 0.673408,
		-0.897626, -0.439806, -0.028944,
		46.129650, 42.706360, 30.875397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581345, 42.900394, 31.585093>,  <46.757988, 43.014225, 30.895658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581345, 42.900394, 31.585093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386898, 42.634655, 31.357998>,  <46.270229, 42.475212, 31.221741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386898, 42.634655, 31.357998>,  <46.581345, 42.900394, 31.585093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386898, 42.634655, 31.357998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313493, -0.738996, 0.596328,
		-0.815727, 0.111904, 0.567509,
		-0.486118, -0.664351, -0.567738,
		46.241062, 42.435349, 31.187675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102295, 42.489277, 32.107506>,  <46.581345, 42.900394, 31.585093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102295, 42.489277, 32.107506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189720, 42.283005, 31.776133>,  <46.242176, 42.159241, 31.577309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189720, 42.283005, 31.776133>,  <46.102295, 42.489277, 32.107506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189720, 42.283005, 31.776133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160953, -0.818282, 0.551823,
		-0.962458, -0.253947, -0.095844,
		0.218561, -0.515680, -0.828435,
		46.255287, 42.128300, 31.527601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583435, 41.857006, 32.134556>,  <46.102295, 42.489277, 32.107506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583435, 41.857006, 32.134556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876709, 41.774521, 31.875351>,  <46.052673, 41.725029, 31.719828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876709, 41.774521, 31.875351>,  <45.583435, 41.857006, 32.134556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876709, 41.774521, 31.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237044, -0.815649, 0.527757,
		-0.637378, -0.540550, -0.549140,
		0.733184, -0.206210, -0.648011,
		46.096664, 41.712658, 31.680948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327953, 41.295639, 31.763977>,  <45.583435, 41.857006, 32.134556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327953, 41.295639, 31.763977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726845, 41.305607, 31.735918>,  <45.966179, 41.311588, 31.719082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726845, 41.305607, 31.735918>,  <45.327953, 41.295639, 31.763977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726845, 41.305607, 31.735918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055587, -0.876024, 0.479053,
		-0.049514, -0.481623, -0.874979,
		0.997226, 0.024918, -0.070147,
		46.026012, 41.313084, 31.714874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508873, 40.633385, 31.706659>,  <45.327953, 41.295639, 31.763977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508873, 40.633385, 31.706659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873108, 40.774986, 31.791985>,  <46.091648, 40.859947, 31.843180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873108, 40.774986, 31.791985>,  <45.508873, 40.633385, 31.706659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873108, 40.774986, 31.791985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259877, -0.891728, 0.370521,
		0.321386, -0.281957, -0.903997,
		0.910590, 0.354008, 0.213315,
		46.146286, 40.881187, 31.855978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973660, 40.038944, 31.498539>,  <45.508873, 40.633385, 31.706659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973660, 40.038944, 31.498539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169987, 40.275948, 31.754049>,  <46.287781, 40.418148, 31.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169987, 40.275948, 31.754049>,  <45.973660, 40.038944, 31.498539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169987, 40.275948, 31.754049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090252, -0.763793, 0.639120,
		0.866578, -0.256038, -0.428355,
		0.490813, 0.592507, 0.638778,
		46.317230, 40.453701, 31.945683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482552, 39.608669, 31.701309>,  <45.973660, 40.038944, 31.498539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482552, 39.608669, 31.701309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414440, 39.893257, 31.974020>,  <46.373573, 40.064011, 32.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414440, 39.893257, 31.974020>,  <46.482552, 39.608669, 31.701309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414440, 39.893257, 31.974020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231943, -0.643502, 0.729457,
		0.957710, 0.282342, -0.055448,
		-0.170276, 0.711469, 0.681775,
		46.363358, 40.106697, 32.178551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947437, 39.526562, 32.210918>,  <46.482552, 39.608669, 31.701309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947437, 39.526562, 32.210918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645557, 39.715660, 32.392883>,  <46.464432, 39.829121, 32.502060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645557, 39.715660, 32.392883>,  <46.947437, 39.526562, 32.210918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645557, 39.715660, 32.392883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215446, -0.476345, 0.852454,
		0.619692, 0.741351, 0.257643,
		-0.754695, 0.472751, 0.454909,
		46.419147, 39.857487, 32.529354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292271, 39.583416, 32.752247>,  <46.947437, 39.526562, 32.210918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292271, 39.583416, 32.752247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913013, 39.662857, 32.851509>,  <46.685459, 39.710522, 32.911064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913013, 39.662857, 32.851509>,  <47.292271, 39.583416, 32.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913013, 39.662857, 32.851509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116260, -0.509928, 0.852325,
		0.295815, 0.836977, 0.460395,
		-0.948144, 0.198605, 0.248151,
		46.628571, 39.722439, 32.925953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255154, 39.899982, 33.485542>,  <47.292271, 39.583416, 32.752247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255154, 39.899982, 33.485542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894920, 39.753780, 33.391426>,  <46.678780, 39.666058, 33.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894920, 39.753780, 33.391426>,  <47.255154, 39.899982, 33.485542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894920, 39.753780, 33.391426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076642, -0.666314, 0.741722,
		-0.427882, 0.649946, 0.628082,
		-0.900579, -0.365507, -0.235291,
		46.624748, 39.644127, 33.320839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972488, 39.867657, 34.112019>,  <47.255154, 39.899982, 33.485542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972488, 39.867657, 34.112019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745834, 39.614716, 33.900719>,  <46.609840, 39.462952, 33.773937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745834, 39.614716, 33.900719>,  <46.972488, 39.867657, 34.112019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745834, 39.614716, 33.900719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074566, -0.599122, 0.797178,
		-0.820586, 0.491101, 0.292333,
		-0.566638, -0.632355, -0.528250,
		46.575844, 39.425011, 33.742245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517139, 39.779766, 34.550598>,  <46.972488, 39.867657, 34.112019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517139, 39.779766, 34.550598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449062, 39.485306, 34.288574>,  <46.408215, 39.308628, 34.131359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449062, 39.485306, 34.288574>,  <46.517139, 39.779766, 34.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449062, 39.485306, 34.288574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230050, -0.616710, 0.752825,
		-0.958180, 0.278827, -0.064390,
		-0.170198, -0.736155, -0.655064,
		46.398003, 39.264458, 34.092056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782417, 39.450520, 34.730858>,  <46.517139, 39.779766, 34.550598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782417, 39.450520, 34.730858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015030, 39.183182, 34.545326>,  <46.154598, 39.022781, 34.434006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015030, 39.183182, 34.545326>,  <45.782417, 39.450520, 34.730858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015030, 39.183182, 34.545326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227014, -0.680819, 0.696383,
		-0.781208, -0.299672, -0.547641,
		0.581531, -0.668342, -0.463832,
		46.189487, 38.982677, 34.406178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359306, 38.804382, 34.740757>,  <45.782417, 39.450520, 34.730858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359306, 38.804382, 34.740757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721725, 38.658085, 34.655621>,  <45.939178, 38.570305, 34.604538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721725, 38.658085, 34.655621>,  <45.359306, 38.804382, 34.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721725, 38.658085, 34.655621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153090, -0.752212, 0.640890,
		-0.394502, -0.548096, -0.737535,
		0.906053, -0.365742, -0.212842,
		45.993542, 38.548363, 34.591766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268570, 38.126099, 34.576199>,  <45.359306, 38.804382, 34.740757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268570, 38.126099, 34.576199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663151, 38.103313, 34.637745>,  <45.899899, 38.089642, 34.674675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663151, 38.103313, 34.637745>,  <45.268570, 38.126099, 34.576199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663151, 38.103313, 34.637745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120913, -0.886313, 0.447022,
		0.110911, -0.459569, -0.881190,
		0.986447, -0.056968, 0.153870,
		45.959084, 38.086224, 34.683907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619774, 37.437271, 34.301430>,  <45.268570, 38.126099, 34.576199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619774, 37.437271, 34.301430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835648, 37.562660, 34.613960>,  <45.965172, 37.637894, 34.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835648, 37.562660, 34.613960>,  <45.619774, 37.437271, 34.301430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835648, 37.562660, 34.613960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068128, -0.908786, 0.411663,
		0.839104, -0.275400, -0.469105,
		0.539688, 0.313468, 0.781328,
		45.997555, 37.656700, 34.848358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875824, 36.840393, 34.569824>,  <45.619774, 37.437271, 34.301430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875824, 36.840393, 34.569824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972168, 37.074795, 34.879295>,  <46.029976, 37.215435, 35.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972168, 37.074795, 34.879295>,  <45.875824, 36.840393, 34.569824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972168, 37.074795, 34.879295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, -0.802426, 0.595432,
		0.969749, -0.112735, -0.216514,
		0.240863, 0.586006, 0.773681,
		46.044426, 37.250595, 35.111401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435474, 36.517956, 34.883083>,  <45.875824, 36.840393, 34.569824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435474, 36.517956, 34.883083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262100, 36.752804, 35.156559>,  <46.158077, 36.893711, 35.320644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262100, 36.752804, 35.156559>,  <46.435474, 36.517956, 34.883083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262100, 36.752804, 35.156559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014862, -0.753895, 0.656827,
		0.901064, 0.294850, 0.318036,
		-0.433431, 0.587117, 0.683690,
		46.132072, 36.928940, 35.361668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218555, 36.549973, 35.057957>,  <46.435474, 36.517956, 34.883083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218555, 36.549973, 35.057957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141411, 36.221462, 35.272732>,  <47.095123, 36.024357, 35.401596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141411, 36.221462, 35.272732>,  <47.218555, 36.549973, 35.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.141411, 36.221462, 35.272732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475980, -0.556824, -0.680727,
		0.858049, 0.124290, 0.498301,
		-0.192859, -0.821279, 0.536942,
		47.083553, 35.975079, 35.433815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827126, 36.228268, 35.393635>,  <47.218555, 36.549973, 35.057957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827126, 36.228268, 35.393635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546734, 35.950199, 35.329941>,  <47.378498, 35.783356, 35.291725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546734, 35.950199, 35.329941>,  <47.827126, 36.228268, 35.393635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546734, 35.950199, 35.329941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626207, -0.493106, -0.603913,
		0.341305, -0.523046, 0.780982,
		-0.700982, -0.695175, -0.159236,
		47.336441, 35.741646, 35.282169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.085953, 35.627312, 35.145741>,  <47.827126, 36.228268, 35.393635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.085953, 35.627312, 35.145741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702438, 35.560577, 35.053753>,  <47.472328, 35.520535, 34.998562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702438, 35.560577, 35.053753>,  <48.085953, 35.627312, 35.145741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.702438, 35.560577, 35.053753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284081, -0.575262, -0.767054,
		-0.004319, -0.800774, 0.598951,
		-0.958790, -0.166838, -0.229969,
		47.414803, 35.510525, 34.984764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806896, 34.914543, 35.085461>,  <48.085953, 35.627312, 35.145741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806896, 34.914543, 35.085461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579399, 35.136345, 34.842461>,  <47.442902, 35.269424, 34.696659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579399, 35.136345, 34.842461>,  <47.806896, 34.914543, 35.085461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579399, 35.136345, 34.842461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192108, -0.628610, -0.753621,
		-0.799766, -0.545323, 0.250993,
		-0.568744, 0.554502, -0.607502,
		47.408775, 35.302696, 34.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.949062, 42.663780, 43.703102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766571, 42.356255, 43.882332>,  <34.657074, 42.171738, 43.989868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766571, 42.356255, 43.882332>,  <34.949062, 42.663780, 43.703102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766571, 42.356255, 43.882332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112338, -0.449744, -0.886065,
		0.882742, -0.454586, 0.118820,
		-0.456231, -0.768818, 0.448075,
		34.629700, 42.125610, 44.016754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196423, 42.080971, 43.383251>,  <34.949062, 42.663780, 43.703102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196423, 42.080971, 43.383251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840412, 41.957020, 43.517021>,  <34.626808, 41.882648, 43.597282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840412, 41.957020, 43.517021>,  <35.196423, 42.080971, 43.383251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840412, 41.957020, 43.517021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175015, -0.445106, -0.878209,
		0.420989, -0.840154, 0.341921,
		-0.890021, -0.309875, 0.334424,
		34.573406, 41.864059, 43.617348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194210, 41.377266, 43.152603>,  <35.196423, 42.080971, 43.383251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194210, 41.377266, 43.152603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810913, 41.472237, 43.216347>,  <34.580933, 41.529221, 43.254593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810913, 41.472237, 43.216347>,  <35.194210, 41.377266, 43.152603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810913, 41.472237, 43.216347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254126, -0.451600, -0.855265,
		-0.131099, -0.860049, 0.493080,
		-0.958245, 0.237429, 0.159357,
		34.523441, 41.543465, 43.264153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847965, 40.738811, 43.070492>,  <35.194210, 41.377266, 43.152603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847965, 40.738811, 43.070492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581490, 41.029476, 43.003372>,  <34.421604, 41.203876, 42.963100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581490, 41.029476, 43.003372>,  <34.847965, 40.738811, 43.070492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581490, 41.029476, 43.003372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374799, -0.520728, -0.767052,
		-0.644766, -0.448108, 0.619254,
		-0.666185, 0.726665, -0.167797,
		34.381634, 41.247475, 42.953033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288620, 40.414013, 42.900578>,  <34.847965, 40.738811, 43.070492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288620, 40.414013, 42.900578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210381, 40.765568, 42.726547>,  <34.163437, 40.976501, 42.622128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210381, 40.765568, 42.726547>,  <34.288620, 40.414013, 42.900578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210381, 40.765568, 42.726547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400627, -0.476550, -0.782559,
		-0.895120, 0.021235, 0.445320,
		-0.195599, 0.878891, -0.435077,
		34.151699, 41.029236, 42.596024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546124, 40.261929, 42.644428>,  <34.288620, 40.414013, 42.900578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546124, 40.261929, 42.644428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715771, 40.575127, 42.462421>,  <33.817558, 40.763046, 42.353218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715771, 40.575127, 42.462421>,  <33.546124, 40.261929, 42.644428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715771, 40.575127, 42.462421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334656, -0.331370, -0.882156,
		-0.841505, 0.526410, 0.121496,
		0.424116, 0.782998, -0.455016,
		33.843006, 40.810024, 42.325916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155388, 40.446236, 42.050442>,  <33.546124, 40.261929, 42.644428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155388, 40.446236, 42.050442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486012, 40.646458, 41.947487>,  <33.684387, 40.766590, 41.885715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486012, 40.646458, 41.947487>,  <33.155388, 40.446236, 42.050442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486012, 40.646458, 41.947487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005304, -0.450346, -0.892838,
		-0.562826, 0.739348, -0.369582,
		0.826558, 0.500553, -0.257388,
		33.733978, 40.796623, 41.870270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886936, 40.657833, 41.422844>,  <33.155388, 40.446236, 42.050442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886936, 40.657833, 41.422844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.286579, 40.674755, 41.423195>,  <33.526363, 40.684910, 41.423405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.286579, 40.674755, 41.423195>,  <32.886936, 40.657833, 41.422844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286579, 40.674755, 41.423195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015772, -0.353129, -0.935442,
		-0.039264, 0.934618, -0.353480,
		0.999104, 0.042304, 0.000875,
		33.586311, 40.687447, 41.423458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129662, 40.800850, 40.765644>,  <32.886936, 40.657833, 41.422844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129662, 40.800850, 40.765644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463127, 40.622677, 40.896236>,  <33.663208, 40.515774, 40.974590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463127, 40.622677, 40.896236>,  <33.129662, 40.800850, 40.765644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463127, 40.622677, 40.896236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166783, -0.360499, -0.917728,
		0.526485, 0.819529, -0.226244,
		0.833665, -0.445436, 0.326481,
		33.713226, 40.489044, 40.994179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644032, 40.900616, 40.243023>,  <33.129662, 40.800850, 40.765644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644032, 40.900616, 40.243023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775455, 40.594437, 40.464344>,  <33.854309, 40.410728, 40.597137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775455, 40.594437, 40.464344>,  <33.644032, 40.900616, 40.243023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775455, 40.594437, 40.464344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388952, -0.424188, -0.817790,
		0.860678, 0.483899, 0.158351,
		0.328557, -0.765445, 0.553303,
		33.874023, 40.364803, 40.630337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308048, 40.921608, 39.909920>,  <33.644032, 40.900616, 40.243023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308048, 40.921608, 39.909920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.226532, 40.571423, 40.085209>,  <34.177620, 40.361313, 40.190380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.226532, 40.571423, 40.085209>,  <34.308048, 40.921608, 39.909920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226532, 40.571423, 40.085209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380903, -0.483248, -0.788279,
		0.901877, 0.006273, 0.431948,
		-0.203793, -0.875461, 0.438220,
		34.165394, 40.308784, 40.216675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926193, 40.676277, 39.771431>,  <34.308048, 40.921608, 39.909920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926193, 40.676277, 39.771431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725407, 40.357025, 39.904709>,  <34.604935, 40.165474, 39.984676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725407, 40.357025, 39.904709>,  <34.926193, 40.676277, 39.771431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725407, 40.357025, 39.904709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501459, -0.582457, -0.639752,
		0.704679, -0.154047, 0.692601,
		-0.501963, -0.798131, 0.333197,
		34.574818, 40.117584, 40.004669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417999, 40.191685, 39.963123>,  <34.926193, 40.676277, 39.771431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417999, 40.191685, 39.963123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082096, 39.990932, 39.880245>,  <34.880554, 39.870480, 39.830521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082096, 39.990932, 39.880245>,  <35.417999, 40.191685, 39.963123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082096, 39.990932, 39.880245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505366, -0.582929, -0.636238,
		0.198538, -0.638991, 0.743151,
		-0.839755, -0.501881, -0.207191,
		34.830170, 39.840370, 39.818089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487560, 39.472645, 40.127102>,  <35.417999, 40.191685, 39.963123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487560, 39.472645, 40.127102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207111, 39.491035, 39.842480>,  <35.038841, 39.502071, 39.671707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207111, 39.491035, 39.842480>,  <35.487560, 39.472645, 40.127102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207111, 39.491035, 39.842480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573958, -0.555723, -0.601452,
		-0.423083, -0.830095, 0.363239,
		-0.701122, 0.045980, -0.711557,
		34.996777, 39.504829, 39.629013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552448, 38.822445, 39.817982>,  <35.487560, 39.472645, 40.127102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552448, 38.822445, 39.817982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343857, 39.032612, 39.549061>,  <35.218700, 39.158714, 39.387707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343857, 39.032612, 39.549061>,  <35.552448, 38.822445, 39.817982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343857, 39.032612, 39.549061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456621, -0.493759, -0.740067,
		-0.720802, -0.692918, 0.017568,
		-0.521481, 0.525420, -0.672303,
		35.187412, 39.190239, 39.347370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275307, 38.340748, 39.352676>,  <35.552448, 38.822445, 39.817982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275307, 38.340748, 39.352676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300110, 38.693996, 39.166664>,  <35.314991, 38.905945, 39.055058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300110, 38.693996, 39.166664>,  <35.275307, 38.340748, 39.352676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300110, 38.693996, 39.166664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462328, -0.438345, -0.770783,
		-0.884538, -0.167202, -0.435472,
		0.062010, 0.883118, -0.465035,
		35.318714, 38.958931, 39.027153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110287, 38.196064, 38.666931>,  <35.275307, 38.340748, 39.352676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110287, 38.196064, 38.666931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278229, 38.558887, 38.654449>,  <35.378994, 38.776581, 38.646961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278229, 38.558887, 38.654449>,  <35.110287, 38.196064, 38.666931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278229, 38.558887, 38.654449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410768, -0.220569, -0.884657,
		-0.809317, 0.358606, -0.465196,
		0.419851, 0.907056, -0.031206,
		35.404182, 38.831005, 38.645088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935860, 38.406921, 38.011990>,  <35.110287, 38.196064, 38.666931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935860, 38.406921, 38.011990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254082, 38.626751, 38.114021>,  <35.445015, 38.758648, 38.175240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254082, 38.626751, 38.114021>,  <34.935860, 38.406921, 38.011990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254082, 38.626751, 38.114021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395425, -0.151977, -0.905838,
		-0.459058, 0.821506, -0.338221,
		0.795553, 0.549573, 0.255078,
		35.492748, 38.791622, 38.190544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079052, 38.791790, 37.454311>,  <34.935860, 38.406921, 38.011990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079052, 38.791790, 37.454311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421585, 38.798820, 37.660763>,  <35.627106, 38.803040, 37.784634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421585, 38.798820, 37.660763>,  <35.079052, 38.791790, 37.454311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421585, 38.798820, 37.660763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512345, -0.154362, -0.844793,
		0.064825, 0.987858, -0.141188,
		0.856330, 0.017573, 0.516131,
		35.678486, 38.804092, 37.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546932, 39.121426, 36.991825>,  <35.079052, 38.791790, 37.454311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546932, 39.121426, 36.991825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787670, 38.921570, 37.241032>,  <35.932114, 38.801659, 37.390556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787670, 38.921570, 37.241032>,  <35.546932, 39.121426, 36.991825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787670, 38.921570, 37.241032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663527, -0.121289, -0.738255,
		0.444425, 0.857701, 0.258526,
		0.601846, -0.499637, 0.623012,
		35.968224, 38.771679, 37.427937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249916, 39.444675, 36.858925>,  <35.546932, 39.121426, 36.991825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249916, 39.444675, 36.858925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298286, 39.085876, 37.028992>,  <36.327309, 38.870598, 37.131031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298286, 39.085876, 37.028992>,  <36.249916, 39.444675, 36.858925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298286, 39.085876, 37.028992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688315, -0.232848, -0.687026,
		0.715261, 0.375731, 0.589260,
		0.120929, -0.896999, 0.425168,
		36.334564, 38.816776, 37.156544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973534, 39.321980, 36.725250>,  <36.249916, 39.444675, 36.858925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973534, 39.321980, 36.725250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851814, 38.969696, 36.870441>,  <36.778782, 38.758327, 36.957558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851814, 38.969696, 36.870441>,  <36.973534, 39.321980, 36.725250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851814, 38.969696, 36.870441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787922, -0.446855, -0.423674,
		0.535334, 0.157078, 0.829906,
		-0.304298, -0.880708, 0.362982,
		36.760525, 38.705482, 36.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124458, 40.061455, 36.943848>,  <36.973534, 39.321980, 36.725250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124458, 40.061455, 36.943848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495209, 40.200779, 36.887875>,  <37.717659, 40.284374, 36.854290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495209, 40.200779, 36.887875>,  <37.124458, 40.061455, 36.943848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495209, 40.200779, 36.887875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131843, 0.046955, 0.990158,
		0.351453, -0.936202, -0.002401,
		0.926875, 0.348311, -0.139934,
		37.773270, 40.305271, 36.845894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513142, 39.769005, 37.491505>,  <37.124458, 40.061455, 36.943848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513142, 39.769005, 37.491505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712494, 40.093533, 37.369270>,  <37.832104, 40.288250, 37.295929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712494, 40.093533, 37.369270>,  <37.513142, 39.769005, 37.491505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712494, 40.093533, 37.369270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221262, 0.221775, 0.949663,
		0.838250, -0.540904, -0.068986,
		0.498377, 0.811319, -0.305585,
		37.862007, 40.336929, 37.277596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659508, 40.047497, 38.129208>,  <37.513142, 39.769005, 37.491505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659508, 40.047497, 38.129208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828365, 40.331745, 37.904064>,  <37.929680, 40.502293, 37.768978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828365, 40.331745, 37.904064>,  <37.659508, 40.047497, 38.129208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828365, 40.331745, 37.904064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292734, 0.480770, 0.826539,
		0.857962, -0.513688, -0.005068,
		0.422147, 0.710623, -0.562857,
		37.955009, 40.544933, 37.735207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426201, 40.169975, 38.288578>,  <37.659508, 40.047497, 38.129208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426201, 40.169975, 38.288578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241165, 40.487301, 38.130257>,  <38.130146, 40.677696, 38.035263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241165, 40.487301, 38.130257>,  <38.426201, 40.169975, 38.288578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241165, 40.487301, 38.130257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255363, 0.546750, 0.797405,
		0.849001, 0.267795, -0.455503,
		-0.462587, 0.793316, -0.395806,
		38.102390, 40.725296, 38.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862976, 40.791714, 38.323189>,  <38.426201, 40.169975, 38.288578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862976, 40.791714, 38.323189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495399, 40.948662, 38.307281>,  <38.274853, 41.042831, 38.297737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495399, 40.948662, 38.307281>,  <38.862976, 40.791714, 38.323189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495399, 40.948662, 38.307281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211030, 0.574398, 0.790907,
		0.333173, 0.718408, -0.610643,
		-0.918946, 0.392373, -0.039769,
		38.219715, 41.066372, 38.295349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933323, 41.494663, 38.427414>,  <38.862976, 40.791714, 38.323189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933323, 41.494663, 38.427414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539581, 41.457634, 38.487377>,  <38.303337, 41.435417, 38.523357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539581, 41.457634, 38.487377>,  <38.933323, 41.494663, 38.427414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539581, 41.457634, 38.487377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063023, 0.609551, 0.790238,
		-0.164533, 0.787323, -0.594181,
		-0.984356, -0.092573, 0.149911,
		38.244274, 41.429863, 38.532349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668053, 42.173042, 38.354443>,  <38.933323, 41.494663, 38.427414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668053, 42.173042, 38.354443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444096, 41.947296, 38.597099>,  <38.309723, 41.811848, 38.742695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444096, 41.947296, 38.597099>,  <38.668053, 42.173042, 38.354443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444096, 41.947296, 38.597099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227468, 0.599330, 0.767504,
		-0.796731, 0.567710, -0.207183,
		-0.559890, -0.564367, 0.606641,
		38.276127, 41.777985, 38.779091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204296, 42.673439, 38.808182>,  <38.668053, 42.173042, 38.354443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204296, 42.673439, 38.808182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225948, 42.318771, 38.991875>,  <38.238941, 42.105972, 39.102089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225948, 42.318771, 38.991875>,  <38.204296, 42.673439, 38.808182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225948, 42.318771, 38.991875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182220, 0.443410, 0.877601,
		-0.981766, -0.131190, -0.137565,
		0.054134, -0.886666, 0.459230,
		38.242188, 42.052773, 39.129642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695938, 42.676762, 39.333359>,  <38.204296, 42.673439, 38.808182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695938, 42.676762, 39.333359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930019, 42.368763, 39.435062>,  <38.070469, 42.183964, 39.496082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930019, 42.368763, 39.435062>,  <37.695938, 42.676762, 39.333359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930019, 42.368763, 39.435062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189296, 0.175165, 0.966170,
		-0.788482, -0.613535, -0.043250,
		0.585203, -0.769995, 0.254255,
		38.105579, 42.137764, 39.511337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308929, 42.236057, 39.881371>,  <37.695938, 42.676762, 39.333359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308929, 42.236057, 39.881371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688717, 42.116177, 39.918655>,  <37.916588, 42.044247, 39.941029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688717, 42.116177, 39.918655>,  <37.308929, 42.236057, 39.881371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688717, 42.116177, 39.918655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124493, -0.086983, 0.988400,
		-0.288118, -0.950059, -0.119899,
		0.949468, -0.299702, 0.093214,
		37.973557, 42.026264, 39.946621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309494, 41.709007, 40.431030>,  <37.308929, 42.236057, 39.881371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309494, 41.709007, 40.431030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692177, 41.825336, 40.426327>,  <37.921787, 41.895134, 40.423504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692177, 41.825336, 40.426327>,  <37.309494, 41.709007, 40.431030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692177, 41.825336, 40.426327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017643, -0.017622, 0.999689,
		0.290531, -0.956613, -0.021990,
		0.956703, 0.290828, -0.011757,
		37.979187, 41.912586, 40.422798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688938, 41.233067, 40.947891>,  <37.309494, 41.709007, 40.431030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688938, 41.233067, 40.947891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938877, 41.542179, 40.903397>,  <38.088840, 41.727646, 40.876701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938877, 41.542179, 40.903397>,  <37.688938, 41.233067, 40.947891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938877, 41.542179, 40.903397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178641, -0.002821, 0.983910,
		0.760033, -0.634667, -0.139813,
		0.624849, 0.772781, -0.111234,
		38.126331, 41.774014, 40.870026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191734, 41.198910, 41.506466>,  <37.688938, 41.233067, 40.947891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191734, 41.198910, 41.506466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213718, 41.579437, 41.385162>,  <38.226910, 41.807755, 41.312382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213718, 41.579437, 41.385162>,  <38.191734, 41.198910, 41.506466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213718, 41.579437, 41.385162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150388, 0.292367, 0.944407,
		0.987098, -0.097514, -0.126998,
		0.054963, 0.951321, -0.303260,
		38.230206, 41.864834, 41.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770908, 41.447834, 41.892250>,  <38.191734, 41.198910, 41.506466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770908, 41.447834, 41.892250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548454, 41.753567, 41.761711>,  <38.414982, 41.937008, 41.683388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548454, 41.753567, 41.761711>,  <38.770908, 41.447834, 41.892250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548454, 41.753567, 41.761711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000552, 0.393013, 0.919533,
		0.831091, 0.511205, -0.218990,
		-0.556136, 0.764336, -0.326348,
		38.381615, 41.982868, 41.663807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127903, 42.076263, 42.045998>,  <38.770908, 41.447834, 41.892250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127903, 42.076263, 42.045998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739491, 42.164482, 42.009228>,  <38.506443, 42.217415, 41.987167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739491, 42.164482, 42.009228>,  <39.127903, 42.076263, 42.045998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739491, 42.164482, 42.009228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000543, 0.386746, 0.922186,
		0.238938, 0.895425, -0.375664,
		-0.971035, 0.220549, -0.091922,
		38.448181, 42.230648, 41.981651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100235, 42.798187, 42.235104>,  <39.127903, 42.076263, 42.045998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100235, 42.798187, 42.235104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713909, 42.696648, 42.256130>,  <38.482113, 42.635723, 42.268745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713909, 42.696648, 42.256130>,  <39.100235, 42.798187, 42.235104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713909, 42.696648, 42.256130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099070, 0.548830, 0.830043,
		-0.239557, 0.796459, -0.555217,
		-0.965814, -0.253848, 0.052571,
		38.424164, 42.620495, 42.271900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727936, 43.325886, 42.597233>,  <39.100235, 42.798187, 42.235104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727936, 43.325886, 42.597233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449104, 43.044582, 42.653091>,  <38.281803, 42.875801, 42.686607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449104, 43.044582, 42.653091>,  <38.727936, 43.325886, 42.597233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449104, 43.044582, 42.653091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257916, 0.427677, 0.866356,
		-0.668997, 0.567904, -0.479508,
		-0.697082, -0.703262, 0.139642,
		38.239979, 42.833603, 42.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112713, 43.654999, 42.698692>,  <38.727936, 43.325886, 42.597233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112713, 43.654999, 42.698692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096600, 43.294537, 42.871342>,  <38.086929, 43.078259, 42.974930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096600, 43.294537, 42.871342>,  <38.112713, 43.654999, 42.698692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096600, 43.294537, 42.871342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410792, 0.408717, 0.814985,
		-0.910838, -0.144475, -0.386653,
		-0.040287, -0.901153, 0.431624,
		38.084515, 43.024189, 43.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.438187, 43.585972, 42.947052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608639, 43.287823, 43.152119>,  <37.710911, 43.108932, 43.275158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608639, 43.287823, 43.152119>,  <37.438187, 43.585972, 42.947052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608639, 43.287823, 43.152119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545815, 0.240097, 0.802770,
		-0.721454, -0.621908, -0.304523,
		0.426135, -0.745375, 0.512666,
		37.736481, 43.064209, 43.305920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901020, 43.256691, 43.329544>,  <37.438187, 43.585972, 42.947052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901020, 43.256691, 43.329544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227901, 43.126484, 43.519791>,  <37.424030, 43.048359, 43.633938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227901, 43.126484, 43.519791>,  <36.901020, 43.256691, 43.329544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227901, 43.126484, 43.519791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415004, 0.240290, 0.877515,
		-0.399934, -0.914493, 0.061275,
		0.817205, -0.325519, 0.475618,
		37.473064, 43.028828, 43.662476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686527, 42.705921, 43.786949>,  <36.901020, 43.256691, 43.329544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686527, 42.705921, 43.786949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014896, 42.896290, 43.913177>,  <37.211918, 43.010509, 43.988914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014896, 42.896290, 43.913177>,  <36.686527, 42.705921, 43.786949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014896, 42.896290, 43.913177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426492, 0.143510, 0.893034,
		0.379726, -0.867700, 0.320788,
		0.820922, 0.475921, 0.315573,
		37.261173, 43.039066, 44.007851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611111, 42.742813, 44.499207>,  <36.686527, 42.705921, 43.786949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611111, 42.742813, 44.499207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914940, 43.001904, 44.475540>,  <37.097237, 43.157356, 44.461338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914940, 43.001904, 44.475540>,  <36.611111, 42.742813, 44.499207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914940, 43.001904, 44.475540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217066, 0.338197, 0.915699,
		0.613131, -0.682698, 0.397485,
		0.759574, 0.647724, -0.059168,
		37.142811, 43.196220, 44.457790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955967, 42.788177, 45.156879>,  <36.611111, 42.742813, 44.499207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955967, 42.788177, 45.156879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041496, 43.124069, 44.957230>,  <37.092815, 43.325603, 44.837440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041496, 43.124069, 44.957230>,  <36.955967, 42.788177, 45.156879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041496, 43.124069, 44.957230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317508, 0.542945, 0.777431,
		0.923833, -0.007758, 0.382718,
		0.213826, 0.839732, -0.499127,
		37.105644, 43.375988, 44.807491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465431, 43.117771, 45.483070>,  <36.955967, 42.788177, 45.156879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465431, 43.117771, 45.483070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276653, 43.404160, 45.277294>,  <37.163387, 43.575993, 45.153828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276653, 43.404160, 45.277294>,  <37.465431, 43.117771, 45.483070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276653, 43.404160, 45.277294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297869, 0.419707, 0.857391,
		0.829782, 0.557880, 0.015186,
		-0.471948, 0.715972, -0.514441,
		37.135071, 43.618950, 45.122963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716728, 43.774422, 45.739166>,  <37.465431, 43.117771, 45.483070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716728, 43.774422, 45.739166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361107, 43.861675, 45.578175>,  <37.147732, 43.914028, 45.481579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361107, 43.861675, 45.578175>,  <37.716728, 43.774422, 45.739166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361107, 43.861675, 45.578175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248063, 0.509370, 0.824019,
		0.384762, 0.832442, -0.398747,
		-0.889058, 0.218137, -0.402484,
		37.094391, 43.927116, 45.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603859, 44.514038, 45.888748>,  <37.716728, 43.774422, 45.739166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603859, 44.514038, 45.888748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242462, 44.366936, 45.800694>,  <37.025623, 44.278675, 45.747860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242462, 44.366936, 45.800694>,  <37.603859, 44.514038, 45.888748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242462, 44.366936, 45.800694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415933, 0.628309, 0.657441,
		-0.103463, 0.685554, -0.720633,
		-0.903491, -0.367755, -0.220138,
		36.971416, 44.256611, 45.734653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108074, 45.087219, 45.871403>,  <37.603859, 44.514038, 45.888748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108074, 45.087219, 45.871403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892921, 44.753563, 45.920219>,  <36.763828, 44.553371, 45.949509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892921, 44.753563, 45.920219>,  <37.108074, 45.087219, 45.871403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892921, 44.753563, 45.920219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504404, 0.434436, 0.746219,
		-0.675467, 0.339823, -0.654419,
		-0.537885, -0.834138, 0.122039,
		36.731556, 44.503323, 45.956833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422619, 45.316074, 45.891975>,  <37.108074, 45.087219, 45.871403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422619, 45.316074, 45.891975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407536, 44.953014, 46.059185>,  <36.398487, 44.735176, 46.159512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407536, 44.953014, 46.059185>,  <36.422619, 45.316074, 45.891975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407536, 44.953014, 46.059185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595079, 0.356455, 0.720292,
		-0.802782, -0.221598, -0.553566,
		-0.037706, -0.907653, 0.418024,
		36.396225, 44.680717, 46.184593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823936, 45.315334, 46.197403>,  <36.422619, 45.316074, 45.891975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823936, 45.315334, 46.197403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994606, 45.009586, 46.390770>,  <36.097008, 44.826138, 46.506790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994606, 45.009586, 46.390770>,  <35.823936, 45.315334, 46.197403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994606, 45.009586, 46.390770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439945, 0.291594, 0.849365,
		-0.790190, -0.575076, -0.211866,
		0.426670, -0.764370, 0.483416,
		36.122608, 44.780277, 46.535793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438354, 45.340900, 46.851822>,  <35.823936, 45.315334, 46.197403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438354, 45.340900, 46.851822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766491, 45.125912, 46.929958>,  <35.963375, 44.996918, 46.976841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766491, 45.125912, 46.929958>,  <35.438354, 45.340900, 46.851822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766491, 45.125912, 46.929958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095196, 0.208472, 0.973384,
		-0.563889, -0.817107, 0.119854,
		0.820346, -0.537471, 0.195341,
		36.012596, 44.964672, 46.988560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215683, 44.911160, 47.470558>,  <35.438354, 45.340900, 46.851822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215683, 44.911160, 47.470558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614609, 44.916470, 47.441761>,  <35.853966, 44.919655, 47.424484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614609, 44.916470, 47.441761>,  <35.215683, 44.911160, 47.470558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614609, 44.916470, 47.441761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065403, 0.280273, 0.957690,
		0.032886, -0.959829, 0.278653,
		0.997317, 0.013270, -0.071992,
		35.913803, 44.920452, 47.420162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382965, 44.434471, 47.925274>,  <35.215683, 44.911160, 47.470558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382965, 44.434471, 47.925274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702644, 44.665245, 47.857826>,  <35.894451, 44.803711, 47.817356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702644, 44.665245, 47.857826>,  <35.382965, 44.434471, 47.925274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702644, 44.665245, 47.857826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067174, 0.193050, 0.978887,
		0.597306, -0.793649, 0.115530,
		0.799195, 0.576934, -0.168623,
		35.942402, 44.838326, 47.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821472, 44.187885, 48.364513>,  <35.382965, 44.434471, 47.925274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821472, 44.187885, 48.364513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967064, 44.543411, 48.253139>,  <36.054417, 44.756729, 48.186314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967064, 44.543411, 48.253139>,  <35.821472, 44.187885, 48.364513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967064, 44.543411, 48.253139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137583, 0.244353, 0.959876,
		0.921191, -0.387678, -0.033348,
		0.363974, 0.888818, -0.278434,
		36.076256, 44.810055, 48.169609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316437, 44.278076, 48.872074>,  <35.821472, 44.187885, 48.364513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316437, 44.278076, 48.872074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236595, 44.638565, 48.718212>,  <36.188690, 44.854858, 48.625896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236595, 44.638565, 48.718212>,  <36.316437, 44.278076, 48.872074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236595, 44.638565, 48.718212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031108, 0.398184, 0.916778,
		0.979384, 0.171024, -0.107513,
		-0.199601, 0.901222, -0.384655,
		36.176716, 44.908932, 48.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857700, 44.807392, 49.201332>,  <36.316437, 44.278076, 48.872074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857700, 44.807392, 49.201332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581001, 45.047035, 49.040062>,  <36.414982, 45.190823, 48.943298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581001, 45.047035, 49.040062>,  <36.857700, 44.807392, 49.201332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581001, 45.047035, 49.040062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015665, 0.570628, 0.821059,
		0.721969, 0.561650, -0.404116,
		-0.691748, 0.599110, -0.403178,
		36.373478, 45.226768, 48.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058990, 45.497341, 49.219444>,  <36.857700, 44.807392, 49.201332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058990, 45.497341, 49.219444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659081, 45.505096, 49.222897>,  <36.419136, 45.509750, 49.224968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659081, 45.505096, 49.222897>,  <37.058990, 45.497341, 49.219444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659081, 45.505096, 49.222897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015906, 0.415402, 0.909499,
		0.014052, 0.909431, -0.415617,
		-0.999775, 0.019391, 0.008628,
		36.359150, 45.510914, 49.225487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839218, 46.143627, 49.345093>,  <37.058990, 45.497341, 49.219444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839218, 46.143627, 49.345093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532146, 45.915810, 49.462593>,  <36.347904, 45.779121, 49.533092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532146, 45.915810, 49.462593>,  <36.839218, 46.143627, 49.345093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532146, 45.915810, 49.462593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033805, 0.421763, 0.906075,
		-0.639942, 0.705506, -0.304526,
		-0.767679, -0.569541, 0.293754,
		36.301842, 45.744946, 49.550720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552235, 46.611065, 49.787682>,  <36.839218, 46.143627, 49.345093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552235, 46.611065, 49.787682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373287, 46.262810, 49.869503>,  <36.265919, 46.053856, 49.918598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373287, 46.262810, 49.869503>,  <36.552235, 46.611065, 49.787682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373287, 46.262810, 49.869503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205549, 0.322694, 0.923915,
		-0.870407, 0.371287, -0.323323,
		-0.447372, -0.870641, 0.204557,
		36.239075, 46.001617, 49.930870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854958, 46.700249, 49.966251>,  <36.552235, 46.611065, 49.787682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854958, 46.700249, 49.966251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974827, 46.364193, 50.147079>,  <36.046749, 46.162560, 50.255577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974827, 46.364193, 50.147079>,  <35.854958, 46.700249, 49.966251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974827, 46.364193, 50.147079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202879, 0.406890, 0.890663,
		-0.932220, -0.358627, -0.048510,
		0.299678, -0.840135, 0.452068,
		36.064732, 46.112152, 50.282700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323204, 46.643593, 50.446606>,  <35.854958, 46.700249, 49.966251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323204, 46.643593, 50.446606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612984, 46.400433, 50.576611>,  <35.786850, 46.254536, 50.654613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612984, 46.400433, 50.576611>,  <35.323204, 46.643593, 50.446606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612984, 46.400433, 50.576611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222849, 0.239641, 0.944939,
		-0.652316, -0.756987, 0.038137,
		0.724446, -0.607900, 0.325016,
		35.830318, 46.218063, 50.674114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992119, 46.219810, 50.826462>,  <35.323204, 46.643593, 50.446606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992119, 46.219810, 50.826462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367092, 46.205067, 50.964943>,  <35.592075, 46.196220, 51.048031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367092, 46.205067, 50.964943>,  <34.992119, 46.219810, 50.826462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367092, 46.205067, 50.964943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334701, 0.178396, 0.925284,
		-0.095866, -0.983268, 0.154898,
		0.937435, -0.036859, 0.346204,
		35.648323, 46.194008, 51.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886097, 45.836472, 51.439991>,  <34.992119, 46.219810, 50.826462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886097, 45.836472, 51.439991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198895, 46.080418, 51.491455>,  <35.386574, 46.226784, 51.522335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198895, 46.080418, 51.491455>,  <34.886097, 45.836472, 51.439991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198895, 46.080418, 51.491455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297390, 0.183668, 0.936923,
		0.547767, -0.770928, 0.324994,
		0.781991, 0.609865, 0.128659,
		35.433491, 46.263378, 51.530052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419716, 45.448795, 50.907597>,  <34.886097, 45.836472, 51.439991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419716, 45.448795, 50.907597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061161, 45.294621, 50.995171>,  <33.846027, 45.202114, 51.047714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061161, 45.294621, 50.995171>,  <34.419716, 45.448795, 50.907597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061161, 45.294621, 50.995171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230417, -0.827079, -0.512688,
		0.378690, -0.409117, 0.830191,
		-0.896382, -0.385440, 0.218939,
		33.792248, 45.178989, 51.060852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610943, 44.822422, 51.091179>,  <34.419716, 45.448795, 50.907597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610943, 44.822422, 51.091179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222591, 44.791954, 51.000320>,  <33.989582, 44.773674, 50.945805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222591, 44.791954, 51.000320>,  <34.610943, 44.822422, 51.091179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222591, 44.791954, 51.000320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197117, -0.792863, -0.576640,
		-0.136170, -0.604621, 0.784787,
		-0.970877, -0.076174, -0.227145,
		33.931328, 44.769100, 50.932178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441509, 44.116409, 51.218422>,  <34.610943, 44.822422, 51.091179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441509, 44.116409, 51.218422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173386, 44.273064, 50.966293>,  <34.012512, 44.367058, 50.815018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173386, 44.273064, 50.966293>,  <34.441509, 44.116409, 51.218422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173386, 44.273064, 50.966293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066890, -0.814051, -0.576929,
		-0.739058, -0.428884, 0.519472,
		-0.670312, 0.391637, -0.630319,
		33.972294, 44.390556, 50.777199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062958, 43.546394, 50.936771>,  <34.441509, 44.116409, 51.218422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062958, 43.546394, 50.936771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009003, 43.841938, 50.672680>,  <33.976631, 44.019264, 50.514225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009003, 43.841938, 50.672680>,  <34.062958, 43.546394, 50.936771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009003, 43.841938, 50.672680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172381, -0.638657, -0.749935,
		-0.975751, -0.214968, -0.041217,
		-0.134889, 0.738855, -0.660226,
		33.968536, 44.063595, 50.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716766, 43.238880, 50.404346>,  <34.062958, 43.546394, 50.936771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716766, 43.238880, 50.404346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834515, 43.574200, 50.220783>,  <33.905163, 43.775391, 50.110645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834515, 43.574200, 50.220783>,  <33.716766, 43.238880, 50.404346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834515, 43.574200, 50.220783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277589, -0.534485, -0.798292,
		-0.914489, 0.107604, -0.390039,
		0.294370, 0.838300, -0.458911,
		33.922825, 43.825691, 50.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426548, 43.088230, 49.813095>,  <33.716766, 43.238880, 50.404346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426548, 43.088230, 49.813095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699947, 43.371532, 49.742439>,  <33.863987, 43.541515, 49.700047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699947, 43.371532, 49.742439>,  <33.426548, 43.088230, 49.813095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699947, 43.371532, 49.742439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340948, -0.523733, -0.780678,
		-0.645435, 0.473366, -0.599449,
		0.683497, 0.708258, -0.176642,
		33.904995, 43.584011, 49.689445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398258, 43.326595, 49.121323>,  <33.426548, 43.088230, 49.813095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398258, 43.326595, 49.121323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772552, 43.428513, 49.218876>,  <33.997128, 43.489662, 49.277409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772552, 43.428513, 49.218876>,  <33.398258, 43.326595, 49.121323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772552, 43.428513, 49.218876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352055, -0.632774, -0.689677,
		-0.021400, 0.731217, -0.681810,
		0.935735, 0.254793, 0.243887,
		34.053272, 43.504951, 49.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617413, 43.439720, 48.469116>,  <33.398258, 43.326595, 49.121323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617413, 43.439720, 48.469116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939228, 43.421356, 48.705967>,  <34.132317, 43.410336, 48.848076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939228, 43.421356, 48.705967>,  <33.617413, 43.439720, 48.469116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939228, 43.421356, 48.705967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557962, -0.283139, -0.780071,
		0.203470, 0.957979, -0.202177,
		0.804536, -0.045914, 0.592127,
		34.180588, 43.407581, 48.883606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089134, 43.672283, 47.973309>,  <33.617413, 43.439720, 48.469116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089134, 43.672283, 47.973309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290432, 43.472229, 48.255192>,  <34.411209, 43.352196, 48.424320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290432, 43.472229, 48.255192>,  <34.089134, 43.672283, 47.973309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290432, 43.472229, 48.255192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657167, -0.308052, -0.687921,
		0.561138, 0.809303, 0.173645,
		0.503244, -0.500132, 0.704707,
		34.441406, 43.322189, 48.466602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850357, 43.801041, 47.872650>,  <34.089134, 43.672283, 47.973309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850357, 43.801041, 47.872650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783424, 43.458427, 48.067932>,  <34.743263, 43.252861, 48.185101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783424, 43.458427, 48.067932>,  <34.850357, 43.801041, 47.872650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783424, 43.458427, 48.067932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556115, -0.490897, -0.670639,
		0.814085, 0.159278, 0.558476,
		-0.167336, -0.856534, 0.488209,
		34.733223, 43.201466, 48.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540604, 43.442093, 48.047932>,  <34.850357, 43.801041, 47.872650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540604, 43.442093, 48.047932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242981, 43.176128, 48.021767>,  <35.064407, 43.016552, 48.006065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242981, 43.176128, 48.021767>,  <35.540604, 43.442093, 48.047932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242981, 43.176128, 48.021767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417879, -0.386743, -0.822075,
		0.521306, -0.639004, 0.565609,
		-0.744054, -0.664909, -0.065415,
		35.019764, 42.976654, 48.002144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835358, 42.803783, 47.733131>,  <35.540604, 43.442093, 48.047932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835358, 42.803783, 47.733131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448132, 42.713310, 47.689884>,  <35.215797, 42.659027, 47.663937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448132, 42.713310, 47.689884>,  <35.835358, 42.803783, 47.733131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448132, 42.713310, 47.689884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186062, -0.359166, -0.914538,
		0.168021, -0.905450, 0.389781,
		-0.968065, -0.226185, -0.108123,
		35.157711, 42.645454, 47.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872688, 42.151928, 47.382946>,  <35.835358, 42.803783, 47.733131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872688, 42.151928, 47.382946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497692, 42.277180, 47.322212>,  <35.272694, 42.352333, 47.285774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497692, 42.277180, 47.322212>,  <35.872688, 42.151928, 47.382946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497692, 42.277180, 47.322212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066191, -0.267883, -0.961175,
		-0.341651, -0.911145, 0.230412,
		-0.937493, 0.313135, -0.151832,
		35.216442, 42.371120, 47.276661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701870, 41.824837, 46.769497>,  <35.872688, 42.151928, 47.382946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701870, 41.824837, 46.769497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410816, 42.098633, 46.787434>,  <35.236183, 42.262913, 46.798195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410816, 42.098633, 46.787434>,  <35.701870, 41.824837, 46.769497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410816, 42.098633, 46.787434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173770, -0.120691, -0.977362,
		-0.663587, -0.718958, 0.206764,
		-0.727637, 0.684495, 0.044845,
		35.192524, 42.303982, 46.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165821, 41.521542, 46.379986>,  <35.701870, 41.824837, 46.769497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165821, 41.521542, 46.379986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094589, 41.915066, 46.388004>,  <35.051849, 42.151180, 46.392815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094589, 41.915066, 46.388004>,  <35.165821, 41.521542, 46.379986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094589, 41.915066, 46.388004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446859, -0.062701, -0.892404,
		-0.876701, -0.167874, 0.450791,
		-0.178077, 0.983813, 0.020046,
		35.041164, 42.210209, 46.394016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390041, 41.675121, 46.291775>,  <35.165821, 41.521542, 46.379986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390041, 41.675121, 46.291775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596897, 41.996880, 46.174797>,  <34.721012, 42.189934, 46.104610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596897, 41.996880, 46.174797>,  <34.390041, 41.675121, 46.291775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596897, 41.996880, 46.174797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408484, -0.068298, -0.910207,
		-0.752135, 0.590161, 0.293261,
		0.517140, 0.804391, -0.292441,
		34.752041, 42.238197, 46.087067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966396, 41.876976, 45.806789>,  <34.390041, 41.675121, 46.291775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966396, 41.876976, 45.806789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282772, 42.112274, 45.739403>,  <34.472599, 42.253452, 45.698971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282772, 42.112274, 45.739403>,  <33.966396, 41.876976, 45.806789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282772, 42.112274, 45.739403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337597, 0.189886, -0.921939,
		-0.510339, 0.786071, 0.348779,
		0.790938, 0.588248, -0.168469,
		34.520054, 42.288750, 45.688862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640194, 42.440166, 45.477791>,  <33.966396, 41.876976, 45.806789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640194, 42.440166, 45.477791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029919, 42.402412, 45.395996>,  <34.263752, 42.379761, 45.346920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029919, 42.402412, 45.395996>,  <33.640194, 42.440166, 45.477791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029919, 42.402412, 45.395996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203057, 0.024647, -0.978857,
		0.097426, 0.995231, 0.004849,
		0.974308, -0.094382, -0.204490,
		34.322212, 42.374100, 45.334648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729496, 42.999676, 44.886627>,  <33.640194, 42.440166, 45.477791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729496, 42.999676, 44.886627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994366, 42.700165, 44.874859>,  <34.153286, 42.520458, 44.867798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994366, 42.700165, 44.874859>,  <33.729496, 42.999676, 44.886627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994366, 42.700165, 44.874859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139110, -0.084249, -0.986687,
		0.736326, 0.657450, -0.159949,
		0.662172, -0.748774, -0.029423,
		34.193016, 42.475533, 44.866032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111897, 43.128700, 44.293770>,  <33.729496, 42.999676, 44.886627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111897, 43.128700, 44.293770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173737, 42.743767, 44.383228>,  <34.210842, 42.512806, 44.436905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173737, 42.743767, 44.383228>,  <34.111897, 43.128700, 44.293770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173737, 42.743767, 44.383228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053145, -0.234142, -0.970749,
		0.986546, 0.138195, -0.087342,
		0.154603, -0.962331, 0.223647,
		34.220116, 42.455067, 44.450321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.109703, 43.979061, 32.263054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935703, 43.740913, 31.992851>,  <43.831303, 43.598026, 31.830729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935703, 43.740913, 31.992851>,  <44.109703, 43.979061, 32.263054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935703, 43.740913, 31.992851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673098, -0.283306, 0.683138,
		-0.598095, 0.751846, -0.277505,
		-0.434996, -0.595369, -0.675510,
		43.805206, 43.562302, 31.790197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348480, 44.123932, 32.291481>,  <44.109703, 43.979061, 32.263054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348480, 44.123932, 32.291481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433491, 43.758511, 32.152775>,  <43.484497, 43.539257, 32.069550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433491, 43.758511, 32.152775>,  <43.348480, 44.123932, 32.291481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433491, 43.758511, 32.152775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457247, -0.406601, 0.790949,
		-0.863572, -0.009538, -0.504135,
		0.212526, -0.913556, -0.346768,
		43.497250, 43.484444, 32.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769661, 43.690037, 32.442608>,  <43.348480, 44.123932, 32.291481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769661, 43.690037, 32.442608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078030, 43.444244, 32.375565>,  <43.263050, 43.296768, 32.335339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078030, 43.444244, 32.375565>,  <42.769661, 43.690037, 32.442608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078030, 43.444244, 32.375565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276186, -0.559629, 0.781368,
		-0.573937, -0.556081, -0.601141,
		0.770920, -0.614483, -0.167610,
		43.309307, 43.259899, 32.325283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449585, 43.096588, 32.537647>,  <42.769661, 43.690037, 32.442608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449585, 43.096588, 32.537647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844402, 43.038586, 32.565144>,  <43.081291, 43.003784, 32.581642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844402, 43.038586, 32.565144>,  <42.449585, 43.096588, 32.537647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844402, 43.038586, 32.565144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144630, -0.618267, 0.772546,
		-0.069522, -0.772476, -0.631227,
		0.987040, -0.145003, 0.068740,
		43.140514, 42.995083, 32.585766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454399, 42.503601, 32.942860>,  <42.449585, 43.096588, 32.537647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454399, 42.503601, 32.942860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847454, 42.577442, 32.935429>,  <43.083286, 42.621746, 32.930969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847454, 42.577442, 32.935429>,  <42.454399, 42.503601, 32.942860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847454, 42.577442, 32.935429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151172, -0.738544, 0.657039,
		0.107569, -0.648440, -0.753627,
		0.982637, 0.184605, -0.018581,
		43.142246, 42.632824, 32.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842564, 41.862209, 32.747639>,  <42.454399, 42.503601, 32.942860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842564, 41.862209, 32.747639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090588, 42.095818, 32.957191>,  <43.239403, 42.235981, 33.082924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090588, 42.095818, 32.957191>,  <42.842564, 41.862209, 32.747639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090588, 42.095818, 32.957191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251490, -0.780464, 0.572389,
		0.743157, -0.223162, -0.630806,
		0.620057, 0.584016, 0.523884,
		43.276604, 42.271023, 33.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450455, 41.530449, 32.868343>,  <42.842564, 41.862209, 32.747639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450455, 41.530449, 32.868343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469074, 41.795094, 33.167702>,  <43.480247, 41.953880, 33.347317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469074, 41.795094, 33.167702>,  <43.450455, 41.530449, 32.868343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469074, 41.795094, 33.167702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370489, -0.707211, 0.602155,
		0.927669, 0.249242, -0.278043,
		0.046553, 0.661613, 0.748399,
		43.483040, 41.993576, 33.392220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165051, 41.431583, 33.208153>,  <43.450455, 41.530449, 32.868343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165051, 41.431583, 33.208153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966789, 41.647507, 33.480309>,  <43.847832, 41.777061, 33.643604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966789, 41.647507, 33.480309>,  <44.165051, 41.431583, 33.208153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966789, 41.647507, 33.480309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362772, -0.583108, 0.726898,
		0.789130, 0.607116, 0.093190,
		-0.495651, 0.539811, 0.680393,
		43.818092, 41.809448, 33.684425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646374, 41.594135, 33.700565>,  <44.165051, 41.431583, 33.208153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646374, 41.594135, 33.700565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289761, 41.622868, 33.879452>,  <44.075790, 41.640106, 33.986786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289761, 41.622868, 33.879452>,  <44.646374, 41.594135, 33.700565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289761, 41.622868, 33.879452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297996, -0.650561, 0.698547,
		0.341121, 0.756049, 0.558593,
		-0.891535, 0.071831, 0.447220,
		44.022301, 41.644417, 34.013618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845596, 41.667572, 34.370125>,  <44.646374, 41.594135, 33.700565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845596, 41.667572, 34.370125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470123, 41.531441, 34.348042>,  <44.244839, 41.449760, 34.334789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470123, 41.531441, 34.348042>,  <44.845596, 41.667572, 34.370125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470123, 41.531441, 34.348042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201977, -0.672584, 0.711924,
		-0.279422, 0.657120, 0.700083,
		-0.938684, -0.340328, -0.055211,
		44.188519, 41.429344, 34.331478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761673, 41.599487, 35.011211>,  <44.845596, 41.667572, 34.370125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761673, 41.599487, 35.011211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495121, 41.364594, 34.827435>,  <44.335190, 41.223656, 34.717167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495121, 41.364594, 34.827435>,  <44.761673, 41.599487, 35.011211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495121, 41.364594, 34.827435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028920, -0.636088, 0.771075,
		-0.745050, 0.500543, 0.440859,
		-0.666381, -0.587239, -0.459442,
		44.295208, 41.188423, 34.689602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336090, 41.408390, 35.570160>,  <44.761673, 41.599487, 35.011211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336090, 41.408390, 35.570160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224789, 41.144016, 35.291382>,  <44.158009, 40.985394, 35.124115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224789, 41.144016, 35.291382>,  <44.336090, 41.408390, 35.570160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224789, 41.144016, 35.291382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180870, -0.748680, 0.637781,
		-0.943324, 0.051409, 0.327868,
		-0.278256, -0.660935, -0.696949,
		44.141312, 40.945736, 35.082298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943172, 40.909332, 35.948040>,  <44.336090, 41.408390, 35.570160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943172, 40.909332, 35.948040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005379, 40.735855, 35.593025>,  <44.042702, 40.631767, 35.380016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005379, 40.735855, 35.593025>,  <43.943172, 40.909332, 35.948040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005379, 40.735855, 35.593025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132807, -0.899492, 0.416264,
		-0.978865, 0.053135, -0.197483,
		0.155516, -0.433694, -0.887538,
		44.052032, 40.605747, 35.326763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385967, 40.367100, 35.839630>,  <43.943172, 40.909332, 35.948040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385967, 40.367100, 35.839630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702854, 40.262371, 35.619144>,  <43.892986, 40.199535, 35.486855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702854, 40.262371, 35.619144>,  <43.385967, 40.367100, 35.839630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702854, 40.262371, 35.619144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088358, -0.942979, 0.320911,
		-0.603803, -0.205529, -0.770181,
		0.792221, -0.261819, -0.551214,
		43.940521, 40.183826, 35.453781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215397, 39.738907, 35.563828>,  <43.385967, 40.367100, 35.839630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215397, 39.738907, 35.563828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613319, 39.779297, 35.568974>,  <43.852074, 39.803532, 35.572060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613319, 39.779297, 35.568974>,  <43.215397, 39.738907, 35.563828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613319, 39.779297, 35.568974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089882, -0.930685, 0.354607,
		0.047779, -0.351609, -0.934927,
		0.994806, 0.100976, 0.012864,
		43.911762, 39.809589, 35.572834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424377, 39.008297, 35.419605>,  <43.215397, 39.738907, 35.563828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424377, 39.008297, 35.419605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750462, 39.190861, 35.562222>,  <43.946114, 39.300400, 35.647789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750462, 39.190861, 35.562222>,  <43.424377, 39.008297, 35.419605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750462, 39.190861, 35.562222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371624, -0.884386, 0.282412,
		0.444213, -0.097728, -0.890575,
		0.815212, 0.456410, 0.356538,
		43.995026, 39.327785, 35.669182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058590, 38.578720, 35.278770>,  <43.424377, 39.008297, 35.419605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058590, 38.578720, 35.278770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166370, 38.812347, 35.585041>,  <44.231041, 38.952522, 35.768803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166370, 38.812347, 35.585041>,  <44.058590, 38.578720, 35.278770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166370, 38.812347, 35.585041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476682, -0.771741, 0.420940,
		0.836761, 0.251559, -0.486363,
		0.269455, 0.584067, 0.765676,
		44.247208, 38.987568, 35.814743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729115, 38.422451, 35.326336>,  <44.058590, 38.578720, 35.278770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729115, 38.422451, 35.326336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609985, 38.577663, 35.675217>,  <44.538509, 38.670792, 35.884544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609985, 38.577663, 35.675217>,  <44.729115, 38.422451, 35.326336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609985, 38.577663, 35.675217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691958, -0.541679, 0.477262,
		0.657645, 0.745666, -0.107176,
		-0.297823, 0.388030, 0.872201,
		44.520638, 38.694073, 35.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371853, 38.563774, 35.686729>,  <44.729115, 38.422451, 35.326336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371853, 38.563774, 35.686729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071239, 38.538124, 35.949356>,  <44.890873, 38.522736, 36.106934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071239, 38.538124, 35.949356>,  <45.371853, 38.563774, 35.686729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071239, 38.538124, 35.949356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531218, -0.648954, 0.544671,
		0.391158, 0.758121, 0.521774,
		-0.751533, -0.064124, 0.656571,
		44.845779, 38.518887, 36.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717365, 38.577042, 36.219582>,  <45.371853, 38.563774, 35.686729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717365, 38.577042, 36.219582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.355579, 38.434578, 36.313469>,  <45.138508, 38.349098, 36.369801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.355579, 38.434578, 36.313469>,  <45.717365, 38.577042, 36.219582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355579, 38.434578, 36.313469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422756, -0.821698, 0.382217,
		0.056735, 0.444930, 0.893767,
		-0.904466, -0.356160, 0.234716,
		45.084240, 38.327728, 36.383884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911491, 38.143749, 36.807644>,  <45.717365, 38.577042, 36.219582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911491, 38.143749, 36.807644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545166, 38.010284, 36.718243>,  <45.325371, 37.930206, 36.664604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545166, 38.010284, 36.718243>,  <45.911491, 38.143749, 36.807644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545166, 38.010284, 36.718243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237235, -0.898521, 0.369296,
		-0.324038, 0.285186, 0.902036,
		-0.915816, -0.333661, -0.223499,
		45.270420, 37.910187, 36.651192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597935, 37.766449, 36.230911>,  <45.911491, 38.143749, 36.807644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597935, 37.766449, 36.230911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778587, 37.512600, 35.980064>,  <45.886978, 37.360291, 35.829556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778587, 37.512600, 35.980064>,  <45.597935, 37.766449, 36.230911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778587, 37.512600, 35.980064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323879, 0.771556, -0.547544,
		0.831343, 0.044178, 0.554001,
		0.451632, -0.634626, -0.627119,
		45.914078, 37.322212, 35.791927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285168, 37.997662, 36.126495>,  <45.597935, 37.766449, 36.230911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285168, 37.997662, 36.126495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177406, 37.779770, 35.808830>,  <46.112747, 37.649036, 35.618233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177406, 37.779770, 35.808830>,  <46.285168, 37.997662, 36.126495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177406, 37.779770, 35.808830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407861, 0.682500, -0.606501,
		0.872393, -0.487301, 0.038305,
		-0.269405, -0.544730, -0.794160,
		46.096584, 37.616352, 35.570583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863304, 37.922993, 35.744087>,  <46.285168, 37.997662, 36.126495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863304, 37.922993, 35.744087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570045, 37.855923, 35.480457>,  <46.394089, 37.815681, 35.322281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570045, 37.855923, 35.480457>,  <46.863304, 37.922993, 35.744087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570045, 37.855923, 35.480457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430355, 0.636014, -0.640531,
		0.526585, -0.753240, -0.394130,
		-0.733146, -0.167678, -0.659076,
		46.350101, 37.805618, 35.282734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216698, 38.066994, 35.067654>,  <46.863304, 37.922993, 35.744087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216698, 38.066994, 35.067654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834946, 38.081219, 34.949062>,  <46.605896, 38.089752, 34.877907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834946, 38.081219, 34.949062>,  <47.216698, 38.066994, 35.067654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834946, 38.081219, 34.949062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226643, 0.732715, -0.641687,
		0.194411, -0.679606, -0.707347,
		-0.954378, 0.035564, -0.296475,
		46.548634, 38.091888, 34.860119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205280, 38.099800, 34.386841>,  <47.216698, 38.066994, 35.067654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205280, 38.099800, 34.386841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831520, 38.233025, 34.437382>,  <46.607265, 38.312962, 34.467709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831520, 38.233025, 34.437382>,  <47.205280, 38.099800, 34.386841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831520, 38.233025, 34.437382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077169, 0.535538, -0.840978,
		-0.347768, -0.776059, -0.526108,
		-0.934400, 0.333064, 0.126355,
		46.551201, 38.332943, 34.475288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890259, 38.085075, 33.790276>,  <47.205280, 38.099800, 34.386841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890259, 38.085075, 33.790276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.683357, 38.361401, 33.992355>,  <46.559216, 38.527195, 34.113605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.683357, 38.361401, 33.992355>,  <46.890259, 38.085075, 33.790276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683357, 38.361401, 33.992355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095907, 0.539800, -0.836312,
		-0.850442, -0.481037, -0.212959,
		-0.517252, 0.690811, 0.505204,
		46.528183, 38.568645, 34.143917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282291, 38.208023, 33.381588>,  <46.890259, 38.085075, 33.790276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282291, 38.208023, 33.381588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.343441, 38.538158, 33.599007>,  <46.380131, 38.736240, 33.729458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.343441, 38.538158, 33.599007>,  <46.282291, 38.208023, 33.381588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343441, 38.538158, 33.599007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021104, 0.547156, -0.836764,
		-0.988020, 0.139393, 0.066230,
		0.152877, 0.825342, 0.543543,
		46.389305, 38.785763, 33.762070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794655, 38.673958, 33.081745>,  <46.282291, 38.208023, 33.381588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794655, 38.673958, 33.081745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988964, 38.926723, 33.323311>,  <46.105549, 39.078381, 33.468250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988964, 38.926723, 33.323311>,  <45.794655, 38.673958, 33.081745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988964, 38.926723, 33.323311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177847, 0.747912, -0.639529,
		-0.855802, 0.203260, 0.475698,
		0.485771, 0.631912, 0.603915,
		46.134697, 39.116299, 33.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384590, 39.301125, 33.125797>,  <45.794655, 38.673958, 33.081745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384590, 39.301125, 33.125797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771233, 39.393967, 33.169243>,  <46.003220, 39.449673, 33.195312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771233, 39.393967, 33.169243>,  <45.384590, 39.301125, 33.125797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771233, 39.393967, 33.169243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076049, 0.664569, -0.743347,
		-0.244717, 0.710265, 0.660028,
		0.966607, 0.232104, 0.108617,
		46.061214, 39.463596, 33.201828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360645, 40.014839, 33.173454>,  <45.384590, 39.301125, 33.125797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360645, 40.014839, 33.173454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742798, 39.926071, 33.095490>,  <45.972092, 39.872810, 33.048710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742798, 39.926071, 33.095490>,  <45.360645, 40.014839, 33.173454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742798, 39.926071, 33.095490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006069, 0.645029, -0.764134,
		0.295302, 0.731225, 0.614904,
		0.955385, -0.221919, -0.194916,
		46.029411, 39.859497, 33.037014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624386, 40.627529, 33.193420>,  <45.360645, 40.014839, 33.173454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624386, 40.627529, 33.193420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857220, 40.384197, 32.977604>,  <45.996922, 40.238197, 32.848114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857220, 40.384197, 32.977604>,  <45.624386, 40.627529, 33.193420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857220, 40.384197, 32.977604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046038, 0.687131, -0.725073,
		0.811821, 0.397217, 0.427977,
		0.582088, -0.608333, -0.539541,
		46.031845, 40.201698, 32.815742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213501, 41.093258, 33.050407>,  <45.624386, 40.627529, 33.193420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213501, 41.093258, 33.050407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244987, 40.792614, 32.788448>,  <46.263882, 40.612228, 32.631275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244987, 40.792614, 32.788448>,  <46.213501, 41.093258, 33.050407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244987, 40.792614, 32.788448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334571, 0.638750, -0.692864,
		0.939077, -0.164566, 0.301749,
		0.078720, -0.751609, -0.654894,
		46.268604, 40.567131, 32.591980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843437, 41.271751, 32.870430>,  <46.213501, 41.093258, 33.050407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843437, 41.271751, 32.870430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.710075, 41.024719, 32.585491>,  <46.630058, 40.876499, 32.414528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.710075, 41.024719, 32.585491>,  <46.843437, 41.271751, 32.870430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710075, 41.024719, 32.585491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109726, 0.725025, -0.679926,
		0.936378, -0.304852, -0.173961,
		-0.333403, -0.617579, -0.712347,
		46.610054, 40.839447, 32.371788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.271633, 41.391357, 32.267132>,  <46.843437, 41.271751, 32.870430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.271633, 41.391357, 32.267132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.927288, 41.240520, 32.130482>,  <46.720680, 41.150017, 32.048492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.927288, 41.240520, 32.130482>,  <47.271633, 41.391357, 32.267132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927288, 41.240520, 32.130482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054564, 0.735935, -0.674850,
		0.505896, -0.562316, -0.654118,
		-0.860867, -0.377095, -0.341625,
		46.669029, 41.127392, 32.027992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.359299, 41.352417, 31.474354>,  <47.271633, 41.391357, 32.267132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.359299, 41.352417, 31.474354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.970737, 41.351852, 31.569323>,  <46.737598, 41.351513, 31.626303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.970737, 41.351852, 31.569323>,  <47.359299, 41.352417, 31.474354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970737, 41.351852, 31.569323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188210, 0.614168, -0.766404,
		-0.144732, -0.789174, -0.596873,
		-0.971406, -0.001414, 0.237420,
		46.679317, 41.351429, 31.640549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053135, 41.347702, 30.882326>,  <47.359299, 41.352417, 31.474354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053135, 41.347702, 30.882326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.771042, 41.502338, 31.120047>,  <46.601788, 41.595119, 31.262678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.771042, 41.502338, 31.120047>,  <47.053135, 41.347702, 30.882326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771042, 41.502338, 31.120047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313310, 0.582017, -0.750396,
		-0.635990, -0.715404, -0.289333,
		-0.705233, 0.386593, 0.594300,
		46.559471, 41.618317, 31.298336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430939, 41.412876, 30.402309>,  <47.053135, 41.347702, 30.882326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430939, 41.412876, 30.402309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369148, 41.626743, 30.734638>,  <46.332073, 41.755066, 30.934034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369148, 41.626743, 30.734638>,  <46.430939, 41.412876, 30.402309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369148, 41.626743, 30.734638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449751, 0.710680, -0.540980,
		-0.879694, -0.457231, 0.130685,
		-0.154477, 0.534672, 0.830820,
		46.322803, 41.787144, 30.983885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694454, 41.562328, 30.402239>,  <46.430939, 41.412876, 30.402309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694454, 41.562328, 30.402239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860992, 41.839420, 30.637791>,  <45.960915, 42.005676, 30.779121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860992, 41.839420, 30.637791>,  <45.694454, 41.562328, 30.402239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860992, 41.839420, 30.637791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375940, 0.720889, -0.582227,
		-0.827843, 0.021027, 0.560566,
		0.416348, 0.692732, 0.588878,
		45.985897, 42.047241, 30.814453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170551, 42.010723, 30.335871>,  <45.694454, 41.562328, 30.402239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170551, 42.010723, 30.335871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426666, 42.241043, 30.539234>,  <45.580338, 42.379234, 30.661253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426666, 42.241043, 30.539234>,  <45.170551, 42.010723, 30.335871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426666, 42.241043, 30.539234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378403, 0.812439, -0.443570,
		-0.668459, 0.091631, 0.738083,
		0.640292, 0.575801, 0.508409,
		45.618755, 42.413784, 30.691757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795509, 42.546410, 30.682592>,  <45.170551, 42.010723, 30.335871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795509, 42.546410, 30.682592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169357, 42.679836, 30.633253>,  <45.393665, 42.759892, 30.603649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169357, 42.679836, 30.633253>,  <44.795509, 42.546410, 30.682592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169357, 42.679836, 30.633253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354545, 0.846646, -0.396848,
		-0.027943, 0.414635, 0.909558,
		0.934621, 0.333569, -0.123349,
		45.449745, 42.779907, 30.596249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863941, 43.173550, 30.986145>,  <44.795509, 42.546410, 30.682592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863941, 43.173550, 30.986145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154484, 43.161331, 30.711489>,  <45.328808, 43.153999, 30.546696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154484, 43.161331, 30.711489>,  <44.863941, 43.173550, 30.986145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154484, 43.161331, 30.711489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284969, 0.895715, -0.341303,
		0.625459, 0.443578, 0.641903,
		0.726357, -0.030548, -0.686639,
		45.372391, 43.152168, 30.505497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.930706, 42.864937, 40.701679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686676, 42.551285, 40.747196>,  <38.540257, 42.363094, 40.774506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686676, 42.551285, 40.747196>,  <38.930706, 42.864937, 40.701679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686676, 42.551285, 40.747196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143811, -0.250817, -0.957293,
		0.779181, -0.567658, 0.265784,
		-0.610078, -0.784127, 0.113796,
		38.503654, 42.316048, 40.781334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227108, 42.292751, 40.392334>,  <38.930706, 42.864937, 40.701679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227108, 42.292751, 40.392334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839802, 42.192791, 40.393745>,  <38.607418, 42.132816, 40.394592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839802, 42.192791, 40.393745>,  <39.227108, 42.292751, 40.392334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839802, 42.192791, 40.393745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074471, -0.301959, -0.950408,
		0.238570, -0.919985, 0.310987,
		-0.968266, -0.249898, 0.003526,
		38.549320, 42.117821, 40.394802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206856, 41.719643, 40.020496>,  <39.227108, 42.292751, 40.392334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206856, 41.719643, 40.020496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825508, 41.838371, 39.998665>,  <38.596699, 41.909607, 39.985565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825508, 41.838371, 39.998665>,  <39.206856, 41.719643, 40.020496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825508, 41.838371, 39.998665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049506, -0.332202, -0.941908,
		-0.297703, -0.895289, 0.331407,
		-0.953374, 0.296815, -0.054576,
		38.539497, 41.927418, 39.982292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894878, 41.135269, 39.761600>,  <39.206856, 41.719643, 40.020496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894878, 41.135269, 39.761600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671936, 41.458965, 39.687325>,  <38.538170, 41.653183, 39.642757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671936, 41.458965, 39.687325>,  <38.894878, 41.135269, 39.761600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671936, 41.458965, 39.687325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231024, -0.365976, -0.901493,
		-0.797485, -0.459552, 0.390933,
		-0.557355, 0.809242, -0.185693,
		38.504730, 41.701736, 39.631618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245731, 40.887447, 39.703445>,  <38.894878, 41.135269, 39.761600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245731, 40.887447, 39.703445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246296, 41.245510, 39.525143>,  <38.246635, 41.460346, 39.418163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246296, 41.245510, 39.525143>,  <38.245731, 40.887447, 39.703445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246296, 41.245510, 39.525143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204320, -0.436094, -0.876399,
		-0.978903, 0.092311, 0.182284,
		0.001409, 0.895154, -0.445755,
		38.246719, 41.514057, 39.391415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566784, 40.884678, 39.484344>,  <38.245731, 40.887447, 39.703445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566784, 40.884678, 39.484344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777981, 41.149738, 39.271885>,  <37.904697, 41.308777, 39.144409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777981, 41.149738, 39.271885>,  <37.566784, 40.884678, 39.484344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777981, 41.149738, 39.271885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449405, -0.312672, -0.836822,
		-0.720597, 0.680535, 0.132712,
		0.527991, 0.662653, -0.531146,
		37.936378, 41.348534, 39.112541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089096, 41.133987, 38.969345>,  <37.566784, 40.884678, 39.484344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089096, 41.133987, 38.969345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444965, 41.248489, 38.827057>,  <37.658489, 41.317192, 38.741684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444965, 41.248489, 38.827057>,  <37.089096, 41.133987, 38.969345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444965, 41.248489, 38.827057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216997, -0.420389, -0.881014,
		-0.401734, 0.861006, -0.311893,
		0.889675, 0.286254, -0.355720,
		37.711868, 41.334366, 38.720341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002781, 41.514095, 38.211590>,  <37.089096, 41.133987, 38.969345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002781, 41.514095, 38.211590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366707, 41.355148, 38.259487>,  <37.585064, 41.259781, 38.288227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366707, 41.355148, 38.259487>,  <37.002781, 41.514095, 38.211590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366707, 41.355148, 38.259487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013636, -0.317002, -0.948327,
		0.414791, 0.861169, -0.293831,
		0.909814, -0.397365, 0.119746,
		37.639652, 41.235939, 38.295410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340553, 41.623997, 37.560123>,  <37.002781, 41.514095, 38.211590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340553, 41.623997, 37.560123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584503, 41.343147, 37.707134>,  <37.730873, 41.174637, 37.795341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584503, 41.343147, 37.707134>,  <37.340553, 41.623997, 37.560123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584503, 41.343147, 37.707134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194858, -0.316660, -0.928308,
		0.768169, 0.637766, -0.056308,
		0.609874, -0.702126, 0.367523,
		37.767464, 41.132511, 37.817390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903912, 41.677917, 37.127628>,  <37.340553, 41.623997, 37.560123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903912, 41.677917, 37.127628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906734, 41.315140, 37.296108>,  <37.908428, 41.097473, 37.397194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906734, 41.315140, 37.296108>,  <37.903912, 41.677917, 37.127628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906734, 41.315140, 37.296108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248299, -0.406426, -0.879298,
		0.968658, 0.110789, 0.222324,
		0.007058, -0.906942, 0.421196,
		37.908852, 41.043056, 37.422466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562592, 41.345634, 36.956139>,  <37.903912, 41.677917, 37.127628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562592, 41.345634, 36.956139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318916, 41.043304, 37.052158>,  <38.172710, 40.861908, 37.109772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318916, 41.043304, 37.052158>,  <38.562592, 41.345634, 36.956139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318916, 41.043304, 37.052158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107412, -0.378553, -0.919326,
		0.785720, -0.534255, 0.311793,
		-0.609185, -0.755823, 0.240052,
		38.136162, 40.816559, 37.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954971, 40.800957, 36.769604>,  <38.562592, 41.345634, 36.956139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954971, 40.800957, 36.769604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570530, 40.691273, 36.782818>,  <38.339867, 40.625462, 36.790745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570530, 40.691273, 36.782818>,  <38.954971, 40.800957, 36.769604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570530, 40.691273, 36.782818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033319, -0.233855, -0.971700,
		0.274175, -0.932803, 0.233896,
		-0.961103, -0.274209, 0.033037,
		38.282200, 40.609009, 36.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777527, 40.191383, 36.358555>,  <38.954971, 40.800957, 36.769604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777527, 40.191383, 36.358555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436329, 40.398487, 36.384838>,  <38.231609, 40.522751, 36.400608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436329, 40.398487, 36.384838>,  <38.777527, 40.191383, 36.358555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436329, 40.398487, 36.384838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112393, -0.059286, -0.991894,
		-0.509670, -0.853468, 0.108763,
		-0.852998, 0.517763, 0.065708,
		38.180431, 40.553814, 36.404549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489933, 40.003315, 36.002785>,  <38.777527, 40.191383, 36.358555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489933, 40.003315, 36.002785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317535, 39.774643, 35.723518>,  <39.214096, 39.637440, 35.555958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317535, 39.774643, 35.723518>,  <39.489933, 40.003315, 36.002785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317535, 39.774643, 35.723518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166546, -0.810815, 0.561107,
		-0.886852, 0.125558, 0.444666,
		-0.430994, -0.571677, -0.698162,
		39.188236, 39.603142, 35.514069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702694, 39.553078, 36.478466>,  <39.489933, 40.003315, 36.002785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702694, 39.553078, 36.478466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951626, 39.240479, 36.496220>,  <40.100983, 39.052917, 36.506874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951626, 39.240479, 36.496220>,  <39.702694, 39.553078, 36.478466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951626, 39.240479, 36.496220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206655, -0.109343, 0.972285,
		-0.754985, -0.614252, -0.229547,
		0.622328, -0.781498, 0.044386,
		40.138325, 39.006031, 36.509537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346809, 38.809551, 36.605495>,  <39.702694, 39.553078, 36.478466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346809, 38.809551, 36.605495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701706, 38.914223, 36.757454>,  <39.914646, 38.977024, 36.848629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701706, 38.914223, 36.757454>,  <39.346809, 38.809551, 36.605495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701706, 38.914223, 36.757454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379327, -0.054765, 0.923641,
		0.262500, -0.963601, 0.050671,
		0.887246, 0.261676, 0.379895,
		39.967880, 38.992725, 36.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405739, 38.408058, 37.178642>,  <39.346809, 38.809551, 36.605495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405739, 38.408058, 37.178642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687855, 38.685284, 37.238285>,  <39.857124, 38.851620, 37.274071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687855, 38.685284, 37.238285>,  <39.405739, 38.408058, 37.178642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687855, 38.685284, 37.238285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153310, -0.056245, 0.986576,
		0.692146, -0.718679, 0.066584,
		0.705287, 0.693063, 0.149111,
		39.899441, 38.893204, 37.283020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760365, 38.119740, 37.783955>,  <39.405739, 38.408058, 37.178642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760365, 38.119740, 37.783955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798893, 38.515804, 37.743343>,  <39.822010, 38.753441, 37.718975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798893, 38.515804, 37.743343>,  <39.760365, 38.119740, 37.783955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798893, 38.515804, 37.743343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051069, 0.096954, 0.993978,
		0.994039, -0.100926, -0.041228,
		0.096321, 0.990158, -0.101530,
		39.827789, 38.812851, 37.712883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389793, 38.448109, 38.214058>,  <39.760365, 38.119740, 37.783955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389793, 38.448109, 38.214058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094799, 38.713890, 38.165684>,  <39.917805, 38.873360, 38.136662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094799, 38.713890, 38.165684>,  <40.389793, 38.448109, 38.214058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094799, 38.713890, 38.165684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032160, 0.144307, 0.989010,
		0.674599, 0.733267, -0.085056,
		-0.737483, 0.664450, -0.120931,
		39.873554, 38.913227, 38.129406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562717, 38.872849, 38.683239>,  <40.389793, 38.448109, 38.214058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562717, 38.872849, 38.683239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193359, 39.004677, 38.604519>,  <39.971745, 39.083775, 38.557289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193359, 39.004677, 38.604519>,  <40.562717, 38.872849, 38.683239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193359, 39.004677, 38.604519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109659, 0.264832, 0.958039,
		0.367857, 0.906228, -0.208404,
		-0.923394, 0.329568, -0.196797,
		39.916340, 39.103546, 38.545479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494751, 39.502155, 39.111107>,  <40.562717, 38.872849, 38.683239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494751, 39.502155, 39.111107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118023, 39.395721, 39.028961>,  <39.891987, 39.331860, 38.979675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118023, 39.395721, 39.028961>,  <40.494751, 39.502155, 39.111107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118023, 39.395721, 39.028961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262844, 0.202234, 0.943406,
		-0.209498, 0.942496, -0.260407,
		-0.941819, -0.266088, -0.205361,
		39.835476, 39.315895, 38.967354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079895, 39.909718, 39.453304>,  <40.494751, 39.502155, 39.111107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079895, 39.909718, 39.453304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833519, 39.601891, 39.385910>,  <39.685692, 39.417194, 39.345474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833519, 39.601891, 39.385910>,  <40.079895, 39.909718, 39.453304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833519, 39.601891, 39.385910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322487, 0.051177, 0.945189,
		-0.718760, 0.636517, -0.279696,
		-0.615943, -0.769563, -0.168485,
		39.648735, 39.371021, 39.335365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471577, 40.088863, 39.789089>,  <40.079895, 39.909718, 39.453304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471577, 40.088863, 39.789089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447872, 39.692352, 39.741997>,  <39.433647, 39.454445, 39.713741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447872, 39.692352, 39.741997>,  <39.471577, 40.088863, 39.789089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447872, 39.692352, 39.741997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259239, -0.098608, 0.960766,
		-0.963993, 0.087461, -0.251134,
		-0.059266, -0.991276, -0.117730,
		39.430092, 39.394970, 39.706676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914532, 39.923729, 40.293751>,  <39.471577, 40.088863, 39.789089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914532, 39.923729, 40.293751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023411, 39.551186, 40.197025>,  <39.088737, 39.327660, 40.138988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023411, 39.551186, 40.197025>,  <38.914532, 39.923729, 40.293751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023411, 39.551186, 40.197025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353786, -0.330569, 0.874963,
		-0.894844, -0.152609, -0.419482,
		0.272195, -0.931362, -0.241817,
		39.105068, 39.271778, 40.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418224, 39.480968, 40.520298>,  <38.914532, 39.923729, 40.293751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418224, 39.480968, 40.520298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761471, 39.278027, 40.488735>,  <38.967419, 39.156261, 40.469799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761471, 39.278027, 40.488735>,  <38.418224, 39.480968, 40.520298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761471, 39.278027, 40.488735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062926, -0.256435, 0.964511,
		-0.509582, -0.822699, -0.251977,
		0.858118, -0.507353, -0.078905,
		39.018906, 39.125820, 40.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285465, 38.897758, 40.889725>,  <38.418224, 39.480968, 40.520298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285465, 38.897758, 40.889725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685398, 38.902649, 40.895100>,  <38.925358, 38.905582, 40.898323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685398, 38.902649, 40.895100>,  <38.285465, 38.897758, 40.889725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685398, 38.902649, 40.895100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014289, 0.072757, 0.997247,
		0.011210, -0.997275, 0.072920,
		0.999835, 0.012221, 0.013434,
		38.985348, 38.906319, 40.899128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457394, 38.438938, 41.354191>,  <38.285465, 38.897758, 40.889725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457394, 38.438938, 41.354191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781250, 38.671238, 41.320244>,  <38.975563, 38.810619, 41.299873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781250, 38.671238, 41.320244>,  <38.457394, 38.438938, 41.354191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781250, 38.671238, 41.320244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107661, -0.004805, 0.994176,
		0.576962, -0.814066, -0.066415,
		0.809644, 0.580752, -0.084871,
		39.024143, 38.845463, 41.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985657, 38.181980, 41.865044>,  <38.457394, 38.438938, 41.354191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985657, 38.181980, 41.865044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091633, 38.554459, 41.764904>,  <39.155220, 38.777946, 41.704823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091633, 38.554459, 41.764904>,  <38.985657, 38.181980, 41.865044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091633, 38.554459, 41.764904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208488, 0.198163, 0.957739,
		0.941456, -0.305936, -0.141643,
		0.264939, 0.931200, -0.250345,
		39.171116, 38.833820, 41.689800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593651, 37.744534, 42.033009>,  <38.985657, 38.181980, 41.865044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593651, 37.744534, 42.033009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532841, 37.427284, 42.268921>,  <39.496353, 37.236935, 42.410469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532841, 37.427284, 42.268921>,  <39.593651, 37.744534, 42.033009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532841, 37.427284, 42.268921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253393, -0.545498, -0.798889,
		0.955343, -0.270900, -0.118042,
		-0.152027, -0.793124, 0.589781,
		39.487232, 37.189346, 42.445854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911087, 37.127724, 41.690079>,  <39.593651, 37.744534, 42.033009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911087, 37.127724, 41.690079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639111, 36.991547, 41.949856>,  <39.475925, 36.909840, 42.105721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639111, 36.991547, 41.949856>,  <39.911087, 37.127724, 41.690079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639111, 36.991547, 41.949856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401234, -0.568588, -0.718135,
		0.613753, -0.748868, 0.250007,
		-0.679940, -0.340446, 0.649444,
		39.435127, 36.889412, 42.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753075, 36.398418, 41.421543>,  <39.911087, 37.127724, 41.690079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753075, 36.398418, 41.421543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465752, 36.464577, 41.691856>,  <39.293358, 36.504272, 41.854046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465752, 36.464577, 41.691856>,  <39.753075, 36.398418, 41.421543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465752, 36.464577, 41.691856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573981, -0.689805, -0.441266,
		0.393173, -0.704849, 0.590425,
		-0.718304, 0.165399, 0.675783,
		39.250259, 36.514194, 41.894592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449905, 35.754894, 41.638916>,  <39.753075, 36.398418, 41.421543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449905, 35.754894, 41.638916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178703, 36.047268, 41.670017>,  <39.015984, 36.222691, 41.688679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178703, 36.047268, 41.670017>,  <39.449905, 35.754894, 41.638916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178703, 36.047268, 41.670017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687972, -0.593759, -0.417307,
		-0.258857, -0.336428, 0.905433,
		-0.678003, 0.730935, 0.077754,
		38.975304, 36.266548, 41.693344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923302, 35.376923, 41.768696>,  <39.449905, 35.754894, 41.638916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923302, 35.376923, 41.768696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752647, 35.725334, 41.671303>,  <38.650253, 35.934383, 41.612869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752647, 35.725334, 41.671303>,  <38.923302, 35.376923, 41.768696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752647, 35.725334, 41.671303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650769, -0.482602, -0.586170,
		-0.628077, -0.091633, 0.772737,
		-0.426638, 0.871033, -0.243479,
		38.624657, 35.986645, 41.598259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268784, 35.343384, 41.881035>,  <38.923302, 35.376923, 41.768696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268784, 35.343384, 41.881035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314892, 35.632694, 41.608685>,  <38.342556, 35.806278, 41.445274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314892, 35.632694, 41.608685>,  <38.268784, 35.343384, 41.881035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314892, 35.632694, 41.608685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642932, -0.468177, -0.606176,
		-0.757200, 0.507629, 0.411048,
		0.115269, 0.723272, -0.680874,
		38.349472, 35.849674, 41.404423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557491, 35.705208, 41.696907>,  <38.268784, 35.343384, 41.881035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557491, 35.705208, 41.696907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788174, 35.762653, 41.375214>,  <37.926582, 35.797119, 41.182198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788174, 35.762653, 41.375214>,  <37.557491, 35.705208, 41.696907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788174, 35.762653, 41.375214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752917, -0.288624, -0.591449,
		-0.317058, 0.946611, -0.058325,
		0.576707, 0.143609, -0.804230,
		37.961185, 35.805737, 41.133945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004211, 35.909939, 41.224670>,  <37.557491, 35.705208, 41.696907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004211, 35.909939, 41.224670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331970, 35.809399, 41.018597>,  <37.528625, 35.749073, 40.894951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331970, 35.809399, 41.018597>,  <37.004211, 35.909939, 41.224670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331970, 35.809399, 41.018597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571099, -0.435431, -0.695878,
		-0.049417, 0.864419, -0.500337,
		0.819393, -0.251354, -0.515186,
		37.577789, 35.733994, 40.864040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895306, 36.208508, 40.491848>,  <37.004211, 35.909939, 41.224670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895306, 36.208508, 40.491848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184116, 35.944599, 40.408546>,  <37.357403, 35.786255, 40.358566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184116, 35.944599, 40.408546>,  <36.895306, 36.208508, 40.491848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184116, 35.944599, 40.408546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471631, -0.249138, -0.845869,
		0.506198, 0.708963, -0.491055,
		0.722030, -0.659774, -0.208256,
		37.400726, 35.746666, 40.346069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088531, 36.301472, 39.712208>,  <36.895306, 36.208508, 40.491848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088531, 36.301472, 39.712208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185261, 35.939850, 39.853184>,  <37.243298, 35.722878, 39.937771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185261, 35.939850, 39.853184>,  <37.088531, 36.301472, 39.712208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185261, 35.939850, 39.853184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502100, -0.427395, -0.751817,
		0.830313, 0.004844, -0.557277,
		0.241819, -0.904052, 0.352440,
		37.257805, 35.668633, 39.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219852, 35.828079, 39.108238>,  <37.088531, 36.301472, 39.712208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219852, 35.828079, 39.108238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184635, 35.570393, 39.412144>,  <37.163506, 35.415783, 39.594486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184635, 35.570393, 39.412144>,  <37.219852, 35.828079, 39.108238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184635, 35.570393, 39.412144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546574, -0.606406, -0.577520,
		0.832770, -0.466111, -0.298722,
		-0.088042, -0.644215, 0.759761,
		37.158222, 35.377129, 39.640072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367546, 35.073578, 38.927940>,  <37.219852, 35.828079, 39.108238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367546, 35.073578, 38.927940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096237, 35.121918, 39.217861>,  <36.933453, 35.150921, 39.391815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096237, 35.121918, 39.217861>,  <37.367546, 35.073578, 38.927940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096237, 35.121918, 39.217861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643739, -0.573363, -0.506808,
		0.354328, -0.810339, 0.466693,
		-0.678271, 0.120852, 0.724806,
		36.892757, 35.158173, 39.435303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.115639, 39.099575, 45.558262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811733, 38.850197, 45.632103>,  <40.629391, 38.700569, 45.676407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811733, 38.850197, 45.632103>,  <41.115639, 39.099575, 45.558262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811733, 38.850197, 45.632103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236961, -0.529891, -0.814288,
		0.605484, -0.574921, 0.550322,
		-0.759762, -0.623444, 0.184607,
		40.583805, 38.663162, 45.687485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252373, 38.642227, 45.085052>,  <41.115639, 39.099575, 45.558262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252373, 38.642227, 45.085052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892826, 38.513424, 45.203945>,  <40.677097, 38.436142, 45.275280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892826, 38.513424, 45.203945>,  <41.252373, 38.642227, 45.085052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892826, 38.513424, 45.203945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037384, -0.619451, -0.784145,
		0.436622, -0.715955, 0.544766,
		-0.898868, -0.322009, 0.297231,
		40.623165, 38.416821, 45.293114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233490, 37.907421, 45.102196>,  <41.252373, 38.642227, 45.085052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233490, 37.907421, 45.102196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859276, 38.031578, 45.034756>,  <40.634747, 38.106071, 44.994289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859276, 38.031578, 45.034756>,  <41.233490, 37.907421, 45.102196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859276, 38.031578, 45.034756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098106, -0.686864, -0.720133,
		-0.339333, -0.657170, 0.673038,
		-0.935537, 0.310394, -0.168603,
		40.578613, 38.124695, 44.984173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829113, 37.325878, 45.003868>,  <41.233490, 37.907421, 45.102196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829113, 37.325878, 45.003868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604115, 37.605343, 44.827019>,  <40.469116, 37.773022, 44.720909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604115, 37.605343, 44.827019>,  <40.829113, 37.325878, 45.003868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604115, 37.605343, 44.827019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121193, -0.598630, -0.791804,
		-0.817872, -0.391802, 0.421398,
		-0.562493, 0.698665, -0.442119,
		40.435368, 37.814941, 44.694382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339264, 36.898308, 44.586685>,  <40.829113, 37.325878, 45.003868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339264, 36.898308, 44.586685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245659, 37.265720, 44.459225>,  <40.189495, 37.486168, 44.382748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245659, 37.265720, 44.459225>,  <40.339264, 36.898308, 44.586685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245659, 37.265720, 44.459225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313987, -0.381589, -0.869369,
		-0.920135, -0.103396, 0.377705,
		-0.234017, 0.918531, -0.318649,
		40.175453, 37.541279, 44.363628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516430, 36.991627, 44.458206>,  <40.339264, 36.898308, 44.586685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516430, 36.991627, 44.458206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733006, 37.225719, 44.216759>,  <39.862949, 37.366173, 44.071892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733006, 37.225719, 44.216759>,  <39.516430, 36.991627, 44.458206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733006, 37.225719, 44.216759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476830, -0.377565, -0.793774,
		-0.692445, 0.717601, 0.074627,
		0.541437, 0.585229, -0.603617,
		39.895435, 37.401287, 44.035675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994068, 37.354473, 44.004684>,  <39.516430, 36.991627, 44.458206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994068, 37.354473, 44.004684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357162, 37.366421, 43.837292>,  <39.575020, 37.373589, 43.736855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357162, 37.366421, 43.837292>,  <38.994068, 37.354473, 44.004684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357162, 37.366421, 43.837292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393269, -0.286900, -0.873515,
		-0.146154, 0.957495, -0.248682,
		0.907733, 0.029869, -0.418484,
		39.629482, 37.375381, 43.711746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885120, 37.760376, 43.406887>,  <38.994068, 37.354473, 44.004684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885120, 37.760376, 43.406887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227146, 37.559963, 43.353474>,  <39.432362, 37.439716, 43.321426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227146, 37.559963, 43.353474>,  <38.885120, 37.760376, 43.406887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227146, 37.559963, 43.353474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305292, -0.278300, -0.910684,
		0.419117, 0.819462, -0.390925,
		0.855066, -0.501029, -0.133535,
		39.483665, 37.409653, 43.313412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148090, 38.018864, 42.783314>,  <38.885120, 37.760376, 43.406887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148090, 38.018864, 42.783314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321270, 37.663544, 42.844604>,  <39.425179, 37.450352, 42.881378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321270, 37.663544, 42.844604>,  <39.148090, 38.018864, 42.783314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321270, 37.663544, 42.844604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219370, -0.268699, -0.937911,
		0.874319, 0.372453, -0.311199,
		0.432946, -0.888302, 0.153224,
		39.451153, 37.397053, 42.890572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691395, 38.501133, 42.388191>,  <39.148090, 38.018864, 42.783314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691395, 38.501133, 42.388191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460583, 38.795818, 42.247169>,  <39.322098, 38.972630, 42.162556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460583, 38.795818, 42.247169>,  <39.691395, 38.501133, 42.388191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460583, 38.795818, 42.247169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090415, 0.371393, 0.924063,
		0.811705, 0.565086, -0.147694,
		-0.577028, 0.736713, -0.352553,
		39.287476, 39.016830, 42.141403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943401, 39.126038, 42.665291>,  <39.691395, 38.501133, 42.388191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943401, 39.126038, 42.665291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580147, 39.236649, 42.539551>,  <39.362194, 39.303013, 42.464108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580147, 39.236649, 42.539551>,  <39.943401, 39.126038, 42.665291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580147, 39.236649, 42.539551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133239, 0.520905, 0.843152,
		0.396898, 0.807584, -0.436211,
		-0.908141, 0.276525, -0.314348,
		39.307705, 39.319607, 42.445248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835796, 39.888210, 42.730434>,  <39.943401, 39.126038, 42.665291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835796, 39.888210, 42.730434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.473969, 39.719437, 42.754837>,  <39.256870, 39.618172, 42.769478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.473969, 39.719437, 42.754837>,  <39.835796, 39.888210, 42.730434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473969, 39.719437, 42.754837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162880, 0.474289, 0.865170,
		-0.393983, 0.772670, -0.497753,
		-0.904571, -0.421936, 0.061009,
		39.202599, 39.592857, 42.773140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476269, 40.500626, 42.878998>,  <39.835796, 39.888210, 42.730434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476269, 40.500626, 42.878998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257286, 40.178478, 42.969925>,  <39.125896, 39.985191, 43.024479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257286, 40.178478, 42.969925>,  <39.476269, 40.500626, 42.878998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257286, 40.178478, 42.969925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335893, 0.460274, 0.821781,
		-0.766462, 0.373539, -0.522499,
		-0.547460, -0.805367, 0.227313,
		39.093048, 39.936867, 43.038120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823059, 40.723866, 43.083187>,  <39.476269, 40.500626, 42.878998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823059, 40.723866, 43.083187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851231, 40.352348, 43.228729>,  <38.868134, 40.129440, 43.316055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851231, 40.352348, 43.228729>,  <38.823059, 40.723866, 43.083187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851231, 40.352348, 43.228729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060516, 0.360107, 0.930946,
		-0.995680, -0.087584, -0.030844,
		0.070429, -0.928791, 0.363852,
		38.872360, 40.073711, 43.337883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293209, 40.664818, 43.382069>,  <38.823059, 40.723866, 43.083187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293209, 40.664818, 43.382069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525944, 40.393242, 43.561184>,  <38.665585, 40.230297, 43.668652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525944, 40.393242, 43.561184>,  <38.293209, 40.664818, 43.382069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525944, 40.393242, 43.561184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348976, 0.288902, 0.891488,
		-0.734630, -0.674966, -0.068839,
		0.581837, -0.678938, 0.447784,
		38.700497, 40.189560, 43.695518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911541, 40.512741, 43.852955>,  <38.293209, 40.664818, 43.382069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911541, 40.512741, 43.852955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272423, 40.406898, 43.989193>,  <38.488953, 40.343391, 44.070934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272423, 40.406898, 43.989193>,  <37.911541, 40.512741, 43.852955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272423, 40.406898, 43.989193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305096, 0.166625, 0.937632,
		-0.304859, -0.949851, 0.069598,
		0.902207, -0.264611, 0.340592,
		38.543083, 40.327515, 44.091370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756832, 40.088726, 44.444206>,  <37.911541, 40.512741, 43.852955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756832, 40.088726, 44.444206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138481, 40.204826, 44.473602>,  <38.367470, 40.274487, 44.491241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138481, 40.204826, 44.473602>,  <37.756832, 40.088726, 44.444206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138481, 40.204826, 44.473602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156307, 0.273512, 0.949083,
		0.255363, -0.917034, 0.306332,
		0.954127, 0.290242, 0.073494,
		38.424717, 40.291901, 44.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988731, 39.857826, 45.086754>,  <37.756832, 40.088726, 44.444206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988731, 39.857826, 45.086754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267586, 40.130573, 44.998161>,  <38.434898, 40.294220, 44.945007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267586, 40.130573, 44.998161>,  <37.988731, 39.857826, 45.086754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267586, 40.130573, 44.998161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056145, 0.359904, 0.931298,
		0.714735, -0.636809, 0.289187,
		0.697139, 0.681868, -0.221482,
		38.476727, 40.335133, 44.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526035, 39.860474, 45.667877>,  <37.988731, 39.857826, 45.086754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526035, 39.860474, 45.667877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535885, 40.217022, 45.486839>,  <38.541794, 40.430950, 45.378216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535885, 40.217022, 45.486839>,  <38.526035, 39.860474, 45.667877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535885, 40.217022, 45.486839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137292, 0.451462, 0.881665,
		0.990225, 0.040430, 0.133494,
		0.024622, 0.891374, -0.452599,
		38.543270, 40.484436, 45.351059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914986, 40.219727, 46.141796>,  <38.526035, 39.860474, 45.667877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914986, 40.219727, 46.141796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733444, 40.490250, 45.909718>,  <38.624519, 40.652561, 45.770470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733444, 40.490250, 45.909718>,  <38.914986, 40.219727, 46.141796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733444, 40.490250, 45.909718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107393, 0.604857, 0.789059,
		0.884579, 0.420429, -0.201888,
		-0.453857, 0.676304, -0.580196,
		38.597286, 40.693142, 45.735661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122208, 40.710468, 46.416672>,  <38.914986, 40.219727, 46.141796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122208, 40.710468, 46.416672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841022, 40.879215, 46.187634>,  <38.672310, 40.980465, 46.050209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841022, 40.879215, 46.187634>,  <39.122208, 40.710468, 46.416672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841022, 40.879215, 46.187634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089471, 0.746236, 0.659641,
		0.705572, 0.514937, -0.486835,
		-0.702967, 0.421867, -0.572595,
		38.630131, 41.005775, 46.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293316, 41.384632, 46.186726>,  <39.122208, 40.710468, 46.416672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293316, 41.384632, 46.186726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894688, 41.408287, 46.163555>,  <38.655510, 41.422482, 46.149651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894688, 41.408287, 46.163555>,  <39.293316, 41.384632, 46.186726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894688, 41.408287, 46.163555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015697, 0.822050, 0.569199,
		0.081284, 0.566336, -0.820156,
		-0.996567, 0.059141, -0.057930,
		38.595718, 41.426029, 46.146175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165394, 42.025642, 46.290535>,  <39.293316, 41.384632, 46.186726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165394, 42.025642, 46.290535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791271, 41.896202, 46.347790>,  <38.566799, 41.818539, 46.382141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791271, 41.896202, 46.347790>,  <39.165394, 42.025642, 46.290535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791271, 41.896202, 46.347790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169066, 0.764049, 0.622613,
		-0.310842, 0.558132, -0.769328,
		-0.935304, -0.323602, 0.143137,
		38.510681, 41.799122, 46.390732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.192806, 40.111435, 47.052544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591663, 40.083176, 47.063183>,  <33.830978, 40.066219, 47.069569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591663, 40.083176, 47.063183>,  <33.192806, 40.111435, 47.052544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591663, 40.083176, 47.063183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004044, -0.301898, -0.953332,
		0.075379, 0.950719, -0.300751,
		0.997147, -0.070645, 0.026602,
		33.890808, 40.061981, 47.071163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466156, 40.525063, 46.505512>,  <33.192806, 40.111435, 47.052544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466156, 40.525063, 46.505512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749355, 40.248123, 46.561203>,  <33.919277, 40.081959, 46.594616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749355, 40.248123, 46.561203>,  <33.466156, 40.525063, 46.505512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749355, 40.248123, 46.561203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046975, -0.242875, -0.968919,
		0.704645, 0.679458, -0.204480,
		0.708003, -0.692350, 0.139223,
		33.961758, 40.040417, 46.602970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797714, 40.579857, 45.905476>,  <33.466156, 40.525063, 46.505512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797714, 40.579857, 45.905476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948719, 40.233498, 46.036747>,  <34.039322, 40.025681, 46.115509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948719, 40.233498, 46.036747>,  <33.797714, 40.579857, 45.905476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948719, 40.233498, 46.036747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088185, -0.319174, -0.943584,
		0.921796, 0.385155, -0.044132,
		0.377512, -0.865900, 0.328178,
		34.061974, 39.973728, 46.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358742, 40.488400, 45.481968>,  <33.797714, 40.579857, 45.905476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358742, 40.488400, 45.481968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271004, 40.125790, 45.626240>,  <34.218361, 39.908222, 45.712803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271004, 40.125790, 45.626240>,  <34.358742, 40.488400, 45.481968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271004, 40.125790, 45.626240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016489, -0.373078, -0.927653,
		0.975508, -0.197529, 0.096780,
		-0.219345, -0.906529, 0.360684,
		34.205200, 39.853832, 45.734444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795918, 39.996742, 45.133587>,  <34.358742, 40.488400, 45.481968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795918, 39.996742, 45.133587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487415, 39.771839, 45.252945>,  <34.302315, 39.636898, 45.324562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487415, 39.771839, 45.252945>,  <34.795918, 39.996742, 45.133587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487415, 39.771839, 45.252945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019262, -0.447958, -0.893847,
		0.636240, -0.695128, 0.334658,
		-0.771251, -0.562255, 0.298398,
		34.256039, 39.603161, 45.342464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961369, 39.354980, 44.809074>,  <34.795918, 39.996742, 45.133587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961369, 39.354980, 44.809074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572266, 39.328529, 44.897949>,  <34.338802, 39.312660, 44.951275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572266, 39.328529, 44.897949>,  <34.961369, 39.354980, 44.809074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572266, 39.328529, 44.897949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179699, -0.390421, -0.902929,
		0.146456, -0.918258, 0.367902,
		-0.972759, -0.066128, 0.222189,
		34.280437, 39.308693, 44.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670223, 38.551861, 44.659752>,  <34.961369, 39.354980, 44.809074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670223, 38.551861, 44.659752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344906, 38.784328, 44.648464>,  <34.149715, 38.923809, 44.641693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344906, 38.784328, 44.648464>,  <34.670223, 38.551861, 44.659752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344906, 38.784328, 44.648464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184995, -0.304252, -0.934456,
		-0.551658, -0.754770, 0.354960,
		-0.813296, 0.581166, -0.028215,
		34.100918, 38.958679, 44.639999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102390, 38.105804, 44.520912>,  <34.670223, 38.551861, 44.659752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102390, 38.105804, 44.520912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989662, 38.473595, 44.411263>,  <33.922024, 38.694267, 44.345474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989662, 38.473595, 44.411263>,  <34.102390, 38.105804, 44.520912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989662, 38.473595, 44.411263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184778, -0.332366, -0.924873,
		-0.941505, -0.210000, 0.263567,
		-0.281824, 0.919474, -0.274121,
		33.905113, 38.749435, 44.329025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496002, 37.965721, 44.178684>,  <34.102390, 38.105804, 44.520912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496002, 37.965721, 44.178684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612026, 38.326481, 44.050655>,  <33.681641, 38.542934, 43.973839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612026, 38.326481, 44.050655>,  <33.496002, 37.965721, 44.178684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612026, 38.326481, 44.050655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354640, -0.209345, -0.911265,
		-0.888873, 0.377835, 0.259125,
		0.290061, 0.901895, -0.320077,
		33.699043, 38.597050, 43.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873051, 38.278580, 43.888618>,  <33.496002, 37.965721, 44.178684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873051, 38.278580, 43.888618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207710, 38.439037, 43.739429>,  <33.408504, 38.535313, 43.649914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207710, 38.439037, 43.739429>,  <32.873051, 38.278580, 43.888618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207710, 38.439037, 43.739429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311213, -0.212215, -0.926343,
		-0.450743, 0.891096, -0.052709,
		0.836646, 0.401139, -0.372975,
		33.458706, 38.559380, 43.627537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758942, 38.459167, 43.174137>,  <32.873051, 38.278580, 43.888618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758942, 38.459167, 43.174137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156075, 38.506332, 43.181961>,  <33.394356, 38.534630, 43.186657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156075, 38.506332, 43.181961>,  <32.758942, 38.459167, 43.174137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156075, 38.506332, 43.181961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040876, -0.181183, -0.982599,
		-0.112312, 0.976356, -0.184704,
		0.992832, 0.117908, 0.019561,
		33.453922, 38.541706, 43.187828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958782, 38.862907, 42.580929>,  <32.758942, 38.459167, 43.174137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958782, 38.862907, 42.580929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301876, 38.686394, 42.686424>,  <33.507732, 38.580486, 42.749722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301876, 38.686394, 42.686424>,  <32.958782, 38.862907, 42.580929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301876, 38.686394, 42.686424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066393, -0.413633, -0.908019,
		0.509783, 0.796352, -0.325491,
		0.857737, -0.441283, 0.263736,
		33.559196, 38.554008, 42.765545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401314, 39.065067, 42.053345>,  <32.958782, 38.862907, 42.580929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401314, 39.065067, 42.053345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530155, 38.711914, 42.190025>,  <33.607460, 38.500023, 42.272034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530155, 38.711914, 42.190025>,  <33.401314, 39.065067, 42.053345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530155, 38.711914, 42.190025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157361, -0.305991, -0.938939,
		0.933536, 0.356203, 0.040372,
		0.322100, -0.882887, 0.341706,
		33.626785, 38.447048, 42.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061218, 38.974010, 41.651562>,  <33.401314, 39.065067, 42.053345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061218, 38.974010, 41.651562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883358, 38.643692, 41.790329>,  <33.776642, 38.445499, 41.873589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883358, 38.643692, 41.790329>,  <34.061218, 38.974010, 41.651562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883358, 38.643692, 41.790329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230761, -0.479848, -0.846460,
		0.865469, -0.296323, 0.403925,
		-0.444649, -0.825796, 0.346914,
		33.749962, 38.395954, 41.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460342, 39.511364, 41.348179>,  <34.061218, 38.974010, 41.651562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460342, 39.511364, 41.348179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.289265, 39.773746, 41.099407>,  <34.186619, 39.931175, 40.950142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.289265, 39.773746, 41.099407>,  <34.460342, 39.511364, 41.348179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289265, 39.773746, 41.099407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125490, 0.638285, 0.759503,
		0.895171, 0.402879, -0.190673,
		-0.427692, 0.655958, -0.621932,
		34.160957, 39.970535, 40.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917480, 40.091702, 41.388100>,  <34.460342, 39.511364, 41.348179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917480, 40.091702, 41.388100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560455, 40.225460, 41.267101>,  <34.346241, 40.305717, 41.194500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560455, 40.225460, 41.267101>,  <34.917480, 40.091702, 41.388100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560455, 40.225460, 41.267101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019697, 0.641292, 0.767044,
		0.450490, 0.690594, -0.565808,
		-0.892564, 0.334401, -0.302498,
		34.292686, 40.325779, 41.176353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939754, 40.735287, 41.512241>,  <34.917480, 40.091702, 41.388100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939754, 40.735287, 41.512241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542103, 40.701462, 41.485214>,  <34.303513, 40.681168, 41.468998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542103, 40.701462, 41.485214>,  <34.939754, 40.735287, 41.512241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542103, 40.701462, 41.485214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107876, 0.722812, 0.682572,
		-0.008880, 0.685851, -0.727688,
		-0.994125, -0.084562, -0.067568,
		34.243866, 40.676094, 41.464943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692253, 41.369270, 41.339962>,  <34.939754, 40.735287, 41.512241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692253, 41.369270, 41.339962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399303, 41.178398, 41.534248>,  <34.223534, 41.063873, 41.650822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399303, 41.178398, 41.534248>,  <34.692253, 41.369270, 41.339962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399303, 41.178398, 41.534248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049785, 0.673905, 0.737139,
		-0.679076, 0.564045, -0.469796,
		-0.732377, -0.477184, 0.485714,
		34.179588, 41.035244, 41.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208469, 41.895664, 41.616859>,  <34.692253, 41.369270, 41.339962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208469, 41.895664, 41.616859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124973, 41.581532, 41.849991>,  <34.074875, 41.393051, 41.989868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124973, 41.581532, 41.849991>,  <34.208469, 41.895664, 41.616859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124973, 41.581532, 41.849991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076274, 0.607212, 0.790871,
		-0.974992, 0.120633, -0.186650,
		-0.208741, -0.785329, 0.582825,
		34.062351, 41.345932, 42.024837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796162, 42.181385, 42.109680>,  <34.208469, 41.895664, 41.616859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796162, 42.181385, 42.109680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906528, 41.828869, 42.263145>,  <33.972748, 41.617359, 42.355225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906528, 41.828869, 42.263145>,  <33.796162, 42.181385, 42.109680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906528, 41.828869, 42.263145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031688, 0.390598, 0.920016,
		-0.960659, -0.266005, 0.079847,
		0.275917, -0.881292, 0.383660,
		33.989304, 41.564480, 42.378242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433868, 42.109383, 42.748695>,  <33.796162, 42.181385, 42.109680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433868, 42.109383, 42.748695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719452, 41.840721, 42.827839>,  <33.890800, 41.679523, 42.875324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719452, 41.840721, 42.827839>,  <33.433868, 42.109383, 42.748695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719452, 41.840721, 42.827839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000684, 0.283253, 0.959045,
		-0.700187, -0.684584, 0.202690,
		0.713959, -0.671649, 0.197863,
		33.933640, 41.639225, 42.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245094, 41.701027, 43.382992>,  <33.433868, 42.109383, 42.748695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245094, 41.701027, 43.382992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642044, 41.660286, 43.355232>,  <33.880215, 41.635841, 43.338577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642044, 41.660286, 43.355232>,  <33.245094, 41.701027, 43.382992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642044, 41.660286, 43.355232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099737, 0.332841, 0.937694,
		-0.072410, -0.937466, 0.340462,
		0.992376, -0.101855, -0.069399,
		33.939758, 41.629730, 43.334412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400593, 41.570900, 44.048779>,  <33.245094, 41.701027, 43.382992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400593, 41.570900, 44.048779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774975, 41.622532, 43.917740>,  <33.999603, 41.653511, 43.839119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774975, 41.622532, 43.917740>,  <33.400593, 41.570900, 44.048779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774975, 41.622532, 43.917740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313249, 0.119624, 0.942107,
		0.160798, -0.984392, 0.071528,
		0.935959, 0.129083, -0.327595,
		34.055763, 41.661255, 43.819462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846916, 41.199570, 44.511414>,  <33.400593, 41.570900, 44.048779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846916, 41.199570, 44.511414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069359, 41.493515, 44.356121>,  <34.202824, 41.669884, 44.262947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069359, 41.493515, 44.356121>,  <33.846916, 41.199570, 44.511414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069359, 41.493515, 44.356121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364475, 0.204173, 0.908554,
		0.746930, -0.646751, -0.154297,
		0.556105, 0.734864, -0.388228,
		34.236191, 41.713974, 44.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589420, 41.254173, 44.751778>,  <33.846916, 41.199570, 44.511414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589420, 41.254173, 44.751778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497906, 41.631416, 44.655270>,  <34.442997, 41.857761, 44.597363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497906, 41.631416, 44.655270>,  <34.589420, 41.254173, 44.751778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497906, 41.631416, 44.655270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408611, 0.317991, 0.855522,
		0.883569, 0.097144, -0.458114,
		-0.228785, 0.943104, -0.241273,
		34.429272, 41.914349, 44.582890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184303, 41.646648, 44.787384>,  <34.589420, 41.254173, 44.751778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184303, 41.646648, 44.787384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871891, 41.892460, 44.831818>,  <34.684444, 42.039948, 44.858479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871891, 41.892460, 44.831818>,  <35.184303, 41.646648, 44.787384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871891, 41.892460, 44.831818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404653, 0.362532, 0.839539,
		0.475647, 0.700661, -0.531821,
		-0.781035, 0.614528, 0.111087,
		34.637581, 42.076817, 44.865143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513020, 42.236912, 45.004597>,  <35.184303, 41.646648, 44.787384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513020, 42.236912, 45.004597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.134995, 42.323235, 45.102810>,  <34.908180, 42.375031, 45.161739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.134995, 42.323235, 45.102810>,  <35.513020, 42.236912, 45.004597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134995, 42.323235, 45.102810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307123, 0.328919, 0.893022,
		0.111964, 0.919368, -0.377129,
		-0.945060, 0.215812, 0.245532,
		34.851475, 42.387978, 45.176468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493004, 43.021820, 45.313534>,  <35.513020, 42.236912, 45.004597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493004, 43.021820, 45.313534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209103, 42.762478, 45.423721>,  <35.038761, 42.606873, 45.489834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209103, 42.762478, 45.423721>,  <35.493004, 43.021820, 45.313534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209103, 42.762478, 45.423721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274306, 0.105808, 0.955804,
		-0.648851, 0.753947, 0.102751,
		-0.709753, -0.648359, 0.275466,
		34.996178, 42.567970, 45.506359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863014, 43.676205, 45.318001>,  <35.493004, 43.021820, 45.313534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863014, 43.676205, 45.318001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203411, 43.848373, 45.438366>,  <36.407650, 43.951675, 45.510586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203411, 43.848373, 45.438366>,  <35.863014, 43.676205, 45.318001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203411, 43.848373, 45.438366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400945, -0.162406, -0.901592,
		-0.339192, 0.887899, -0.310780,
		0.850995, 0.430419, 0.300912,
		36.458710, 43.977501, 45.528641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006676, 44.283447, 44.857521>,  <35.863014, 43.676205, 45.318001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006676, 44.283447, 44.857521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356762, 44.193745, 45.028965>,  <36.566814, 44.139923, 45.131832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356762, 44.193745, 45.028965>,  <36.006676, 44.283447, 44.857521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356762, 44.193745, 45.028965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388458, -0.202172, -0.899014,
		0.288260, 0.953329, -0.089831,
		0.875218, -0.224254, 0.428606,
		36.619328, 44.126469, 45.157547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606480, 44.608654, 44.493961>,  <36.006676, 44.283447, 44.857521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606480, 44.608654, 44.493961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769104, 44.302284, 44.693188>,  <36.866676, 44.118462, 44.812721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769104, 44.302284, 44.693188>,  <36.606480, 44.608654, 44.493961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769104, 44.302284, 44.693188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396634, -0.343131, -0.851436,
		0.823038, 0.543707, 0.164289,
		0.406559, -0.765927, 0.498062,
		36.891071, 44.072506, 44.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361393, 44.500107, 44.164879>,  <36.606480, 44.608654, 44.493961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361393, 44.500107, 44.164879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294529, 44.163536, 44.370426>,  <37.254410, 43.961594, 44.493755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294529, 44.163536, 44.370426>,  <37.361393, 44.500107, 44.164879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294529, 44.163536, 44.370426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522376, -0.517619, -0.677638,
		0.836170, 0.155155, 0.526068,
		-0.167164, -0.841426, 0.513867,
		37.244381, 43.911110, 44.524586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014961, 44.094463, 44.178600>,  <37.361393, 44.500107, 44.164879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014961, 44.094463, 44.178600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745529, 43.811081, 44.262867>,  <37.583870, 43.641052, 44.313427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745529, 43.811081, 44.262867>,  <38.014961, 44.094463, 44.178600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745529, 43.811081, 44.262867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464377, -0.627386, -0.625092,
		0.575020, -0.323220, 0.751586,
		-0.673577, -0.708459, 0.210663,
		37.543457, 43.598541, 44.326065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361732, 43.486179, 44.478607>,  <38.014961, 44.094463, 44.178600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361732, 43.486179, 44.478607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.012962, 43.380627, 44.313633>,  <37.803699, 43.317295, 44.214649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.012962, 43.380627, 44.313633>,  <38.361732, 43.486179, 44.478607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012962, 43.380627, 44.313633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460674, -0.727514, -0.508432,
		-0.165888, -0.633316, 0.755905,
		-0.871929, -0.263883, -0.412438,
		37.751385, 43.301460, 44.189903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556496, 42.809914, 44.295605>,  <38.361732, 43.486179, 44.478607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556496, 42.809914, 44.295605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.232105, 42.893414, 44.076977>,  <38.037472, 42.943516, 43.945801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.232105, 42.893414, 44.076977>,  <38.556496, 42.809914, 44.295605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232105, 42.893414, 44.076977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286576, -0.672723, -0.682142,
		-0.510090, -0.709835, 0.485739,
		-0.810976, 0.208753, -0.546571,
		37.988811, 42.956039, 43.913006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308868, 42.138790, 43.988621>,  <38.556496, 42.809914, 44.295605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308868, 42.138790, 43.988621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148308, 42.436222, 43.774715>,  <38.051971, 42.614681, 43.646374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148308, 42.436222, 43.774715>,  <38.308868, 42.138790, 43.988621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148308, 42.436222, 43.774715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051009, -0.564808, -0.823644,
		-0.914479, -0.357893, 0.188787,
		-0.401405, 0.743576, -0.534761,
		38.027885, 42.659294, 43.614288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819744, 41.897198, 43.552460>,  <38.308868, 42.138790, 43.988621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819744, 41.897198, 43.552460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.928047, 42.239613, 43.376324>,  <37.993031, 42.445061, 43.270641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.928047, 42.239613, 43.376324>,  <37.819744, 41.897198, 43.552460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928047, 42.239613, 43.376324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004522, -0.456286, -0.889822,
		-0.962636, 0.242920, -0.119673,
		0.270760, 0.856033, -0.440336,
		38.009274, 42.496422, 43.244225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608135, 41.758335, 42.906338>,  <37.819744, 41.897198, 43.552460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608135, 41.758335, 42.906338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.803589, 42.099518, 42.832916>,  <37.920860, 42.304230, 42.788864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.803589, 42.099518, 42.832916>,  <37.608135, 41.758335, 42.906338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803589, 42.099518, 42.832916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007704, -0.214586, -0.976675,
		-0.872453, 0.475825, -0.111426,
		0.488637, 0.852961, -0.183550,
		37.950180, 42.355408, 42.777851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282742, 42.133869, 42.387836>,  <37.608135, 41.758335, 42.906338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282742, 42.133869, 42.387836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652714, 42.284946, 42.370636>,  <37.874699, 42.375591, 42.360313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652714, 42.284946, 42.370636>,  <37.282742, 42.133869, 42.387836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652714, 42.284946, 42.370636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063938, 0.043053, -0.997025,
		-0.374714, 0.924931, 0.063970,
		0.924933, 0.377690, -0.043005,
		37.930195, 42.398254, 42.357735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299244, 42.795856, 41.936722>,  <37.282742, 42.133869, 42.387836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299244, 42.795856, 41.936722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658703, 42.621170, 41.953243>,  <37.874378, 42.516357, 41.963158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658703, 42.621170, 41.953243>,  <37.299244, 42.795856, 41.936722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658703, 42.621170, 41.953243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009899, -0.114324, -0.993394,
		0.438556, 0.892304, -0.107060,
		0.898650, -0.436719, 0.041304,
		37.928299, 42.490154, 41.965633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607452, 43.036739, 41.378269>,  <37.299244, 42.795856, 41.936722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607452, 43.036739, 41.378269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.865063, 42.738388, 41.446259>,  <38.019630, 42.559376, 41.487053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.865063, 42.738388, 41.446259>,  <37.607452, 43.036739, 41.378269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865063, 42.738388, 41.446259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283156, 0.026019, -0.958721,
		0.710667, 0.665573, 0.227957,
		0.644030, -0.745879, 0.169971,
		38.058273, 42.514626, 41.497250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265976, 43.107666, 40.960659>,  <37.607452, 43.036739, 41.378269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265976, 43.107666, 40.960659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251904, 42.722115, 41.066257>,  <38.243458, 42.490784, 41.129616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251904, 42.722115, 41.066257>,  <38.265976, 43.107666, 40.960659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251904, 42.722115, 41.066257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240291, -0.264573, -0.933949,
		0.970063, 0.030575, 0.240921,
		-0.035186, -0.963881, 0.264000,
		38.241348, 42.432949, 41.145458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.305370, 33.810486, 27.777449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969000, 33.599590, 27.728687>,  <27.767178, 33.473053, 27.699430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969000, 33.599590, 27.728687>,  <28.305370, 33.810486, 27.777449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969000, 33.599590, 27.728687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072351, -0.113701, 0.990877,
		-0.536291, 0.842074, 0.057468,
		-0.840926, -0.527241, -0.121902,
		27.716722, 33.441418, 27.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830040, 34.153610, 28.064783>,  <28.305370, 33.810486, 27.777449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830040, 34.153610, 28.064783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760021, 33.760303, 28.084948>,  <27.718010, 33.524319, 28.097046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760021, 33.760303, 28.084948>,  <27.830040, 34.153610, 28.064783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760021, 33.760303, 28.084948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005229, 0.052129, 0.998627,
		-0.984547, 0.174541, -0.014266,
		-0.175045, -0.983269, 0.050410,
		27.707508, 33.465324, 28.100071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269842, 34.135036, 28.636292>,  <27.830040, 34.153610, 28.064783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269842, 34.135036, 28.636292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467047, 33.793446, 28.569771>,  <27.585369, 33.588490, 28.529860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467047, 33.793446, 28.569771>,  <27.269842, 34.135036, 28.636292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467047, 33.793446, 28.569771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032078, -0.208856, 0.977420,
		-0.869431, -0.476544, -0.130362,
		0.493011, -0.853981, -0.166300,
		27.614950, 33.537251, 28.519880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906143, 33.571457, 28.823736>,  <27.269842, 34.135036, 28.636292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906143, 33.571457, 28.823736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269985, 33.407505, 28.850925>,  <27.488291, 33.309135, 28.867239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269985, 33.407505, 28.850925>,  <26.906143, 33.571457, 28.823736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269985, 33.407505, 28.850925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182214, -0.246514, 0.951855,
		-0.373387, -0.878198, -0.298916,
		0.909604, -0.409878, 0.067975,
		27.542866, 33.284542, 28.871319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901613, 32.826679, 28.928947>,  <26.906143, 33.571457, 28.823736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901613, 32.826679, 28.928947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239309, 32.967846, 29.090300>,  <27.441927, 33.052544, 29.187111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239309, 32.967846, 29.090300>,  <26.901613, 32.826679, 28.928947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239309, 32.967846, 29.090300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318296, -0.275393, 0.907109,
		0.431219, -0.894209, -0.120167,
		0.844238, 0.352914, 0.403378,
		27.492580, 33.073719, 29.211313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913197, 32.485561, 29.550512>,  <26.901613, 32.826679, 28.928947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913197, 32.485561, 29.550512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231482, 32.717289, 29.621204>,  <27.422453, 32.856323, 29.663620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231482, 32.717289, 29.621204>,  <26.913197, 32.485561, 29.550512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231482, 32.717289, 29.621204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030549, -0.253036, 0.966974,
		0.604902, -0.774834, -0.183647,
		0.795714, 0.579315, 0.176733,
		27.470196, 32.891083, 29.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246363, 32.164772, 30.059906>,  <26.913197, 32.485561, 29.550512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246363, 32.164772, 30.059906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384729, 32.539520, 30.080395>,  <27.467749, 32.764370, 30.092688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384729, 32.539520, 30.080395>,  <27.246363, 32.164772, 30.059906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384729, 32.539520, 30.080395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053209, -0.074090, 0.995831,
		0.936756, -0.341747, -0.075478,
		0.345914, 0.936867, 0.051221,
		27.488504, 32.820580, 30.095760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822636, 32.120117, 30.443708>,  <27.246363, 32.164772, 30.059906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822636, 32.120117, 30.443708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685305, 32.494850, 30.470440>,  <27.602905, 32.719692, 30.486479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685305, 32.494850, 30.470440>,  <27.822636, 32.120117, 30.443708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685305, 32.494850, 30.470440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027687, -0.081220, 0.996311,
		0.938807, 0.340212, 0.053823,
		-0.343328, 0.936835, 0.066831,
		27.582306, 32.775902, 30.490490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162401, 32.394234, 31.010279>,  <27.822636, 32.120117, 30.443708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162401, 32.394234, 31.010279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845531, 32.631226, 30.951729>,  <27.655409, 32.773422, 30.916599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845531, 32.631226, 30.951729>,  <28.162401, 32.394234, 31.010279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845531, 32.631226, 30.951729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122155, 0.081057, 0.989196,
		0.597943, 0.801497, 0.008163,
		-0.792176, 0.592480, -0.146375,
		27.607880, 32.808968, 30.907816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265846, 33.038055, 31.430307>,  <28.162401, 32.394234, 31.010279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265846, 33.038055, 31.430307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875435, 33.027271, 31.343918>,  <27.641188, 33.020802, 31.292084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875435, 33.027271, 31.343918>,  <28.265846, 33.038055, 31.430307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875435, 33.027271, 31.343918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215714, 0.251884, 0.943410,
		0.028963, 0.967382, -0.251662,
		-0.976027, -0.026963, -0.215973,
		27.582626, 33.019184, 31.279125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090315, 33.586941, 31.787994>,  <28.265846, 33.038055, 31.430307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090315, 33.586941, 31.787994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761866, 33.364365, 31.737190>,  <27.564796, 33.230820, 31.706707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761866, 33.364365, 31.737190>,  <28.090315, 33.586941, 31.787994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761866, 33.364365, 31.737190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280113, 0.198996, 0.939115,
		-0.497286, 0.806707, -0.319266,
		-0.821123, -0.556439, -0.127011,
		27.515528, 33.197433, 31.699087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572594, 34.064571, 31.790754>,  <28.090315, 33.586941, 31.787994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572594, 34.064571, 31.790754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428772, 33.698040, 31.861252>,  <27.342480, 33.478123, 31.903551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428772, 33.698040, 31.861252>,  <27.572594, 34.064571, 31.790754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428772, 33.698040, 31.861252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372397, 0.314094, 0.873307,
		-0.855594, 0.248367, -0.454172,
		-0.359554, -0.916329, 0.176246,
		27.320906, 33.423141, 31.914125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995586, 34.150066, 32.124363>,  <27.572594, 34.064571, 31.790754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995586, 34.150066, 32.124363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082697, 33.766865, 32.198994>,  <27.134964, 33.536945, 32.243771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082697, 33.766865, 32.198994>,  <26.995586, 34.150066, 32.124363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082697, 33.766865, 32.198994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485906, 0.059365, 0.871993,
		-0.846445, -0.280556, -0.452570,
		0.217776, -0.958000, 0.186573,
		27.148029, 33.479465, 32.254967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433989, 34.065636, 32.554893>,  <26.995586, 34.150066, 32.124363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433989, 34.065636, 32.554893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722399, 33.793732, 32.608631>,  <26.895445, 33.630589, 32.640873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722399, 33.793732, 32.608631>,  <26.433989, 34.065636, 32.554893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722399, 33.793732, 32.608631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277524, -0.105651, 0.954892,
		-0.634906, -0.725783, -0.264827,
		0.721023, -0.679762, 0.134344,
		26.938705, 33.589802, 32.648933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255333, 33.680077, 33.087379>,  <26.433989, 34.065636, 32.554893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255333, 33.680077, 33.087379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625053, 33.527550, 33.080898>,  <26.846886, 33.436031, 33.077011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625053, 33.527550, 33.080898>,  <26.255333, 33.680077, 33.087379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625053, 33.527550, 33.080898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006589, -0.058389, 0.998272,
		-0.381608, -0.922597, -0.056481,
		0.924301, -0.381321, -0.016203,
		26.902344, 33.413155, 33.076038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250380, 33.293232, 33.674091>,  <26.255333, 33.680077, 33.087379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250380, 33.293232, 33.674091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636473, 33.357014, 33.591244>,  <26.868128, 33.395283, 33.541534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636473, 33.357014, 33.591244>,  <26.250380, 33.293232, 33.674091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636473, 33.357014, 33.591244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176883, 0.184929, 0.966702,
		0.192466, -0.969726, 0.150291,
		0.965230, 0.159473, -0.207121,
		26.926043, 33.404850, 33.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680088, 32.828716, 34.182449>,  <26.250380, 33.293232, 33.674091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680088, 32.828716, 34.182449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874298, 33.148067, 34.039982>,  <26.990824, 33.339680, 33.954502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874298, 33.148067, 34.039982>,  <26.680088, 32.828716, 34.182449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874298, 33.148067, 34.039982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213639, 0.286701, 0.933895,
		0.847715, -0.529523, -0.031364,
		0.485527, 0.798378, -0.356168,
		27.019957, 33.387581, 33.933132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347149, 32.864834, 34.511646>,  <26.680088, 32.828716, 34.182449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347149, 32.864834, 34.511646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283527, 33.242718, 34.396946>,  <27.245354, 33.469448, 34.328125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283527, 33.242718, 34.396946>,  <27.347149, 32.864834, 34.511646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283527, 33.242718, 34.396946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243967, 0.319053, 0.915797,
		0.956651, 0.075702, -0.281224,
		-0.159053, 0.944708, -0.286754,
		27.235811, 33.526131, 34.310921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849312, 33.207920, 34.903851>,  <27.347149, 32.864834, 34.511646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849312, 33.207920, 34.903851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595778, 33.490200, 34.777210>,  <27.443657, 33.659569, 34.701225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595778, 33.490200, 34.777210>,  <27.849312, 33.207920, 34.903851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595778, 33.490200, 34.777210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186410, 0.536632, 0.822969,
		0.750668, 0.462610, -0.471687,
		-0.633836, 0.705704, -0.316597,
		27.405626, 33.701912, 34.682232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241776, 33.801796, 34.928452>,  <27.849312, 33.207920, 34.903851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241776, 33.801796, 34.928452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854897, 33.890038, 34.978832>,  <27.622768, 33.942982, 35.009060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854897, 33.890038, 34.978832>,  <28.241776, 33.801796, 34.928452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854897, 33.890038, 34.978832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216700, 0.457800, 0.862241,
		0.132555, 0.861251, -0.490588,
		-0.967197, 0.220605, 0.125949,
		27.564737, 33.956219, 35.016617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310314, 33.805492, 35.690914>,  <28.241776, 33.801796, 34.928452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310314, 33.805492, 35.690914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671152, 33.977146, 35.709122>,  <28.887655, 34.080139, 35.720047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671152, 33.977146, 35.709122>,  <28.310314, 33.805492, 35.690914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671152, 33.977146, 35.709122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026539, 0.160441, -0.986689,
		-0.430726, 0.888876, 0.156122,
		0.902093, 0.429135, 0.045516,
		28.941780, 34.105888, 35.722778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368465, 34.480251, 35.381359>,  <28.310314, 33.805492, 35.690914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368465, 34.480251, 35.381359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742052, 34.338680, 35.361588>,  <28.966204, 34.253738, 35.349724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742052, 34.338680, 35.361588>,  <28.368465, 34.480251, 35.381359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742052, 34.338680, 35.361588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043011, 0.248629, -0.967643,
		0.354764, 0.901620, 0.247434,
		0.933966, -0.353928, -0.049425,
		29.022242, 34.232502, 35.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673759, 34.913372, 34.857151>,  <28.368465, 34.480251, 35.381359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673759, 34.913372, 34.857151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950983, 34.629295, 34.906616>,  <29.117317, 34.458847, 34.936295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950983, 34.629295, 34.906616>,  <28.673759, 34.913372, 34.857151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950983, 34.629295, 34.906616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255235, 0.081320, -0.963453,
		0.674184, 0.699292, 0.237626,
		0.693059, -0.710196, 0.123659,
		29.158901, 34.416237, 34.943714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251398, 35.244144, 34.647888>,  <28.673759, 34.913372, 34.857151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251398, 35.244144, 34.647888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330738, 34.852261, 34.636444>,  <29.378342, 34.617130, 34.629578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330738, 34.852261, 34.636444>,  <29.251398, 35.244144, 34.647888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330738, 34.852261, 34.636444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535164, 0.132712, -0.834258,
		0.821131, 0.150162, 0.550631,
		0.198350, -0.979714, -0.028613,
		29.390244, 34.558346, 34.627861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015280, 35.229313, 34.421253>,  <29.251398, 35.244144, 34.647888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015280, 35.229313, 34.421253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842133, 34.875721, 34.350597>,  <29.738243, 34.663567, 34.308205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842133, 34.875721, 34.350597>,  <30.015280, 35.229313, 34.421253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842133, 34.875721, 34.350597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496231, -0.070080, -0.865358,
		0.752581, -0.462240, 0.468994,
		-0.432870, -0.883981, -0.176636,
		29.712271, 34.610527, 34.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561235, 34.845829, 34.207123>,  <30.015280, 35.229313, 34.421253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561235, 34.845829, 34.207123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233381, 34.651257, 34.086075>,  <30.036669, 34.534512, 34.013447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233381, 34.651257, 34.086075>,  <30.561235, 34.845829, 34.207123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233381, 34.651257, 34.086075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483255, -0.303377, -0.821235,
		0.307670, -0.819355, 0.483731,
		-0.819636, -0.486435, -0.302617,
		29.987490, 34.505325, 33.995289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804623, 34.166153, 33.959354>,  <30.561235, 34.845829, 34.207123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804623, 34.166153, 33.959354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448465, 34.247379, 33.796402>,  <30.234770, 34.296116, 33.698631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448465, 34.247379, 33.796402>,  <30.804623, 34.166153, 33.959354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448465, 34.247379, 33.796402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331382, -0.324384, -0.885980,
		-0.312053, -0.923874, 0.221542,
		-0.890398, 0.203058, -0.407381,
		30.181347, 34.308300, 33.674187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670988, 33.645424, 33.437534>,  <30.804623, 34.166153, 33.959354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670988, 33.645424, 33.437534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407995, 33.928368, 33.333717>,  <30.250200, 34.098133, 33.271427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407995, 33.928368, 33.333717>,  <30.670988, 33.645424, 33.437534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407995, 33.928368, 33.333717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247899, -0.122201, -0.961048,
		-0.711523, -0.696210, -0.095009,
		-0.657481, 0.707360, -0.259539,
		30.210751, 34.140575, 33.255856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592424, 33.422943, 32.756760>,  <30.670988, 33.645424, 33.437534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592424, 33.422943, 32.756760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400915, 33.773998, 32.765953>,  <30.286011, 33.984631, 32.771469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400915, 33.773998, 32.765953>,  <30.592424, 33.422943, 32.756760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400915, 33.773998, 32.765953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138186, 0.101180, -0.985225,
		-0.866996, -0.468522, -0.169719,
		-0.478771, 0.877639, 0.022979,
		30.257284, 34.037289, 32.772846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921997, 33.452789, 32.266769>,  <30.592424, 33.422943, 32.756760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921997, 33.452789, 32.266769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056007, 33.828449, 32.297134>,  <30.136414, 34.053844, 32.315353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056007, 33.828449, 32.297134>,  <29.921997, 33.452789, 32.266769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056007, 33.828449, 32.297134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025124, 0.089440, -0.995675,
		-0.941874, 0.331670, 0.053560,
		0.335026, 0.939146, 0.075908,
		30.156515, 34.110191, 32.319908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493029, 33.817692, 31.767855>,  <29.921997, 33.452789, 32.266769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493029, 33.817692, 31.767855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820925, 34.027515, 31.859818>,  <30.017662, 34.153412, 31.914995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820925, 34.027515, 31.859818>,  <29.493029, 33.817692, 31.767855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820925, 34.027515, 31.859818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103311, 0.259402, -0.960228,
		-0.563338, 0.810891, 0.158450,
		0.819742, 0.524563, 0.229905,
		30.066847, 34.184883, 31.928789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344744, 34.423923, 31.430283>,  <29.493029, 33.817692, 31.767855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344744, 34.423923, 31.430283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738909, 34.402813, 31.494997>,  <29.975409, 34.390144, 31.533825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738909, 34.402813, 31.494997>,  <29.344744, 34.423923, 31.430283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738909, 34.402813, 31.494997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166881, 0.113464, -0.979427,
		0.033338, 0.992139, 0.120617,
		0.985413, -0.052781, 0.161786,
		30.034533, 34.386978, 31.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561604, 34.986881, 31.002348>,  <29.344744, 34.423923, 31.430283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561604, 34.986881, 31.002348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857777, 34.726738, 31.070221>,  <30.035480, 34.570652, 31.110945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857777, 34.726738, 31.070221>,  <29.561604, 34.986881, 31.002348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857777, 34.726738, 31.070221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322598, 0.122394, -0.938589,
		0.589653, 0.749701, 0.300429,
		0.740432, -0.650360, 0.169682,
		30.079906, 34.531631, 31.121126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137939, 35.294773, 30.759411>,  <29.561604, 34.986881, 31.002348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137939, 35.294773, 30.759411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234917, 34.906723, 30.762835>,  <30.293102, 34.673893, 30.764889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234917, 34.906723, 30.762835>,  <30.137939, 35.294773, 30.759411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234917, 34.906723, 30.762835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141177, 0.026549, -0.989628,
		0.959839, 0.241136, 0.143396,
		0.242442, -0.970128, 0.008560,
		30.307650, 34.615685, 30.765402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635796, 35.277416, 30.194248>,  <30.137939, 35.294773, 30.759411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635796, 35.277416, 30.194248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573895, 34.889740, 30.270899>,  <30.536753, 34.657135, 30.316889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573895, 34.889740, 30.270899>,  <30.635796, 35.277416, 30.194248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573895, 34.889740, 30.270899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135783, -0.212990, -0.967574,
		0.978578, -0.123717, 0.164561,
		-0.154755, -0.969190, 0.191629,
		30.527468, 34.598984, 30.328388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201462, 34.951691, 29.898197>,  <30.635796, 35.277416, 30.194248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201462, 34.951691, 29.898197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880335, 34.713688, 29.913422>,  <30.687658, 34.570885, 29.922556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880335, 34.713688, 29.913422>,  <31.201462, 34.951691, 29.898197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880335, 34.713688, 29.913422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040027, -0.117481, -0.992268,
		0.594881, -0.795086, 0.118132,
		-0.802817, -0.595010, 0.038062,
		30.639490, 34.535187, 29.924841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395100, 34.481289, 29.412840>,  <31.201462, 34.951691, 29.898197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395100, 34.481289, 29.412840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.997072, 34.479393, 29.452475>,  <30.758257, 34.478256, 29.476255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.997072, 34.479393, 29.452475>,  <31.395100, 34.481289, 29.412840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997072, 34.479393, 29.452475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096677, -0.177516, -0.979358,
		0.022237, -0.984106, 0.176182,
		-0.995067, -0.004745, 0.099088,
		30.698551, 34.477970, 29.482201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140108, 33.854286, 29.118582>,  <31.395100, 34.481289, 29.412840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140108, 33.854286, 29.118582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829742, 34.106426, 29.108675>,  <30.643522, 34.257710, 29.102730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829742, 34.106426, 29.108675>,  <31.140108, 33.854286, 29.118582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829742, 34.106426, 29.108675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140974, -0.211530, -0.967151,
		-0.614884, -0.746935, 0.252992,
		-0.775915, 0.630351, -0.024768,
		30.596968, 34.295532, 29.101244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606119, 33.563015, 28.723436>,  <31.140108, 33.854286, 29.118582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606119, 33.563015, 28.723436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479420, 33.942417, 28.723871>,  <30.403400, 34.170059, 28.724133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479420, 33.942417, 28.723871>,  <30.606119, 33.563015, 28.723436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479420, 33.942417, 28.723871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214359, -0.070465, -0.974210,
		-0.923970, -0.308812, 0.225641,
		-0.316748, 0.948509, 0.001089,
		30.384396, 34.226971, 28.724197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042635, 33.550617, 28.246590>,  <30.606119, 33.563015, 28.723436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042635, 33.550617, 28.246590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123363, 33.941963, 28.264759>,  <30.171801, 34.176773, 28.275661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123363, 33.941963, 28.264759>,  <30.042635, 33.550617, 28.246590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123363, 33.941963, 28.264759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001138, 0.046143, -0.998934,
		-0.979421, 0.201660, 0.008199,
		0.201823, 0.978368, 0.045423,
		30.183910, 34.235474, 28.278385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514183, 33.900394, 27.774343>,  <30.042635, 33.550617, 28.246590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514183, 33.900394, 27.774343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793461, 34.185322, 27.802992>,  <29.961027, 34.356277, 27.820181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793461, 34.185322, 27.802992>,  <29.514183, 33.900394, 27.774343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793461, 34.185322, 27.802992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220403, 0.309057, -0.925152,
		-0.681136, 0.630151, 0.372779,
		0.698196, 0.712315, 0.071623,
		30.002920, 34.399017, 27.824478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215353, 34.490559, 27.557293>,  <29.514183, 33.900394, 27.774343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215353, 34.490559, 27.557293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606039, 34.569992, 27.524824>,  <29.840450, 34.617653, 27.505342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606039, 34.569992, 27.524824>,  <29.215353, 34.490559, 27.557293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606039, 34.569992, 27.524824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184146, 0.581910, -0.792131,
		-0.110072, 0.788635, 0.604930,
		0.976716, 0.198586, -0.081172,
		29.899054, 34.629566, 27.500473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.684654, 42.567230, 46.283813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507763, 42.292412, 46.514427>,  <38.401627, 42.127522, 46.652798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.507763, 42.292412, 46.514427>,  <38.684654, 42.567230, 46.283813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507763, 42.292412, 46.514427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117563, 0.681668, 0.722155,
		-0.889165, 0.251577, -0.382223,
		-0.442227, -0.687050, 0.576539,
		38.375095, 42.086296, 46.687389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089764, 43.003162, 46.604637>,  <38.684654, 42.567230, 46.283813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089764, 43.003162, 46.604637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129436, 42.654293, 46.796253>,  <38.153240, 42.444973, 46.911224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129436, 42.654293, 46.796253>,  <38.089764, 43.003162, 46.604637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129436, 42.654293, 46.796253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345720, 0.421221, 0.838481,
		-0.933081, -0.248774, -0.259750,
		0.099180, -0.872172, 0.479040,
		38.159191, 42.392643, 46.939964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456158, 42.817146, 47.010044>,  <38.089764, 43.003162, 46.604637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456158, 42.817146, 47.010044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768978, 42.646385, 47.191658>,  <37.956673, 42.543930, 47.300625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768978, 42.646385, 47.191658>,  <37.456158, 42.817146, 47.010044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768978, 42.646385, 47.191658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209508, 0.506044, 0.836676,
		-0.586938, -0.749450, 0.306315,
		0.782055, -0.426901, 0.454032,
		38.003593, 42.518314, 47.327869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193909, 42.506351, 47.668083>,  <37.456158, 42.817146, 47.010044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193909, 42.506351, 47.668083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587925, 42.544662, 47.725384>,  <37.824333, 42.567650, 47.759766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587925, 42.544662, 47.725384>,  <37.193909, 42.506351, 47.668083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587925, 42.544662, 47.725384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172281, 0.529245, 0.830794,
		0.003753, -0.843046, 0.537828,
		0.985041, 0.095775, 0.143255,
		37.883438, 42.573395, 47.768360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318680, 42.453171, 48.410637>,  <37.193909, 42.506351, 47.668083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318680, 42.453171, 48.410637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634998, 42.650345, 48.265495>,  <37.824791, 42.768650, 48.178410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634998, 42.650345, 48.265495>,  <37.318680, 42.453171, 48.410637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634998, 42.650345, 48.265495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139820, 0.722620, 0.676957,
		0.595896, -0.484601, 0.640367,
		0.790796, 0.492932, -0.362849,
		37.872238, 42.798225, 48.156639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876926, 42.591583, 48.984558>,  <37.318680, 42.453171, 48.410637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876926, 42.591583, 48.984558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943954, 42.865738, 48.701103>,  <37.984173, 43.030231, 48.531029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943954, 42.865738, 48.701103>,  <37.876926, 42.591583, 48.984558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943954, 42.865738, 48.701103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149029, 0.692930, 0.705435,
		0.974530, -0.223820, 0.013975,
		0.167574, 0.685385, -0.708637,
		37.994228, 43.071354, 48.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411121, 42.880932, 49.279850>,  <37.876926, 42.591583, 48.984558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411121, 42.880932, 49.279850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.310951, 43.151302, 49.002602>,  <38.250851, 43.313522, 48.836254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.310951, 43.151302, 49.002602>,  <38.411121, 42.880932, 49.279850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310951, 43.151302, 49.002602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162555, 0.735125, 0.658154,
		0.954391, 0.052148, -0.293968,
		-0.250425, 0.675922, -0.693121,
		38.235825, 43.354080, 48.794666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912273, 43.308422, 49.365356>,  <38.411121, 42.880932, 49.279850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912273, 43.308422, 49.365356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632259, 43.516048, 49.169186>,  <38.464249, 43.640625, 49.051483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632259, 43.516048, 49.169186>,  <38.912273, 43.308422, 49.365356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632259, 43.516048, 49.169186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073324, 0.735389, 0.673666,
		0.710330, 0.435633, -0.552860,
		-0.700039, 0.519064, -0.490427,
		38.422249, 43.671768, 49.022057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163746, 43.921265, 49.243900>,  <38.912273, 43.308422, 49.365356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163746, 43.921265, 49.243900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769897, 43.981918, 49.209202>,  <38.533588, 44.018311, 49.188381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769897, 43.981918, 49.209202>,  <39.163746, 43.921265, 49.243900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769897, 43.981918, 49.209202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075820, 0.818290, 0.569784,
		0.157387, 0.554444, -0.817203,
		-0.984622, 0.151637, -0.086751,
		38.474510, 44.027409, 49.183178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179443, 44.534359, 49.049553>,  <39.163746, 43.921265, 49.243900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179443, 44.534359, 49.049553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822754, 44.459019, 49.214165>,  <38.608742, 44.413815, 49.312931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822754, 44.459019, 49.214165>,  <39.179443, 44.534359, 49.049553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822754, 44.459019, 49.214165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152739, 0.730699, 0.665394,
		-0.426034, 0.656203, -0.622811,
		-0.891721, -0.188353, 0.411531,
		38.555237, 44.402512, 49.337624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978405, 45.121574, 49.168243>,  <39.179443, 44.534359, 49.049553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978405, 45.121574, 49.168243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738766, 44.899773, 49.399277>,  <38.594982, 44.766689, 49.537899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738766, 44.899773, 49.399277>,  <38.978405, 45.121574, 49.168243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738766, 44.899773, 49.399277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075635, 0.678953, 0.730275,
		-0.797099, 0.481189, -0.364816,
		-0.599093, -0.554508, 0.577588,
		38.559036, 44.733421, 49.572552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407761, 45.600498, 49.473396>,  <38.978405, 45.121574, 49.168243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407761, 45.600498, 49.473396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430820, 45.275055, 49.704815>,  <38.444656, 45.079788, 49.843666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430820, 45.275055, 49.704815>,  <38.407761, 45.600498, 49.473396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430820, 45.275055, 49.704815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085909, 0.573316, 0.814818,
		-0.994634, -0.096673, -0.036847,
		0.057646, -0.813611, 0.578545,
		38.448112, 45.030972, 49.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816624, 45.373619, 49.887791>,  <38.407761, 45.600498, 49.473396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816624, 45.373619, 49.887791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169353, 45.303913, 50.063072>,  <38.380989, 45.262089, 50.168243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169353, 45.303913, 50.063072>,  <37.816624, 45.373619, 49.887791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169353, 45.303913, 50.063072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204712, 0.695648, 0.688598,
		-0.424837, -0.696926, 0.577761,
		0.881819, -0.174267, 0.438206,
		38.433899, 45.251633, 50.194534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690250, 45.485203, 50.616741>,  <37.816624, 45.373619, 49.887791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690250, 45.485203, 50.616741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088551, 45.484028, 50.579926>,  <38.327530, 45.483322, 50.557838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088551, 45.484028, 50.579926>,  <37.690250, 45.485203, 50.616741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088551, 45.484028, 50.579926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061635, 0.763837, 0.642460,
		0.068412, -0.645403, 0.760773,
		0.995751, -0.002938, -0.092035,
		38.387276, 45.483147, 50.552315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876984, 45.479286, 51.078251>,  <37.690250, 45.485203, 50.616741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876984, 45.479286, 51.078251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535351, 45.665596, 50.985653>,  <36.330372, 45.777382, 50.930092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535351, 45.665596, 50.985653>,  <36.876984, 45.479286, 51.078251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535351, 45.665596, 50.985653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014319, -0.465962, -0.884689,
		-0.519935, -0.752285, 0.404641,
		-0.854086, 0.465774, -0.231498,
		36.279125, 45.805328, 50.916203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455864, 44.941185, 50.712612>,  <36.876984, 45.479286, 51.078251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455864, 44.941185, 50.712612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296574, 45.288380, 50.593937>,  <36.201000, 45.496696, 50.522732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296574, 45.288380, 50.593937>,  <36.455864, 44.941185, 50.712612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296574, 45.288380, 50.593937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281791, -0.423554, -0.860927,
		-0.872934, -0.259237, 0.413259,
		-0.398222, 0.867985, -0.296684,
		36.177109, 45.548775, 50.504932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837753, 44.768253, 50.296535>,  <36.455864, 44.941185, 50.712612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837753, 44.768253, 50.296535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921288, 45.143761, 50.186920>,  <35.971409, 45.369064, 50.121151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921288, 45.143761, 50.186920>,  <35.837753, 44.768253, 50.296535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921288, 45.143761, 50.186920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214315, -0.229473, -0.949427,
		-0.954177, 0.257009, 0.153269,
		0.208840, 0.938770, -0.274039,
		35.983940, 45.425392, 50.104710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268063, 45.029850, 49.766762>,  <35.837753, 44.768253, 50.296535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268063, 45.029850, 49.766762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585526, 45.264473, 49.702179>,  <35.776001, 45.405247, 49.663429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585526, 45.264473, 49.702179>,  <35.268063, 45.029850, 49.766762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585526, 45.264473, 49.702179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108803, -0.124265, -0.986266,
		-0.598563, 0.800319, -0.034804,
		0.793653, 0.586555, -0.161457,
		35.823620, 45.440441, 49.653744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072346, 45.546539, 49.222939>,  <35.268063, 45.029850, 49.766762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072346, 45.546539, 49.222939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470142, 45.505070, 49.216793>,  <35.708820, 45.480186, 49.213108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470142, 45.505070, 49.216793>,  <35.072346, 45.546539, 49.222939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470142, 45.505070, 49.216793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037010, -0.210256, -0.976946,
		0.098056, 0.972134, -0.212935,
		0.994492, -0.103676, -0.015361,
		35.768490, 45.473969, 49.212185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288830, 45.845757, 48.584454>,  <35.072346, 45.546539, 49.222939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288830, 45.845757, 48.584454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613613, 45.640205, 48.695194>,  <35.808483, 45.516876, 48.761639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613613, 45.640205, 48.695194>,  <35.288830, 45.845757, 48.584454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613613, 45.640205, 48.695194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224925, -0.162226, -0.960777,
		0.538635, 0.842384, -0.016137,
		0.811961, -0.513879, 0.276854,
		35.857201, 45.486042, 48.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780151, 46.077190, 48.112282>,  <35.288830, 45.845757, 48.584454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780151, 46.077190, 48.112282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906170, 45.723179, 48.249382>,  <35.981781, 45.510773, 48.331642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906170, 45.723179, 48.249382>,  <35.780151, 46.077190, 48.112282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906170, 45.723179, 48.249382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359782, -0.222811, -0.906042,
		0.878237, 0.408763, 0.248219,
		0.315051, -0.885024, 0.342746,
		36.000687, 45.457672, 48.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504520, 46.028267, 47.844761>,  <35.780151, 46.077190, 48.112282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504520, 46.028267, 47.844761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379036, 45.662983, 47.948780>,  <36.303745, 45.443813, 48.011192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379036, 45.662983, 47.948780>,  <36.504520, 46.028267, 47.844761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379036, 45.662983, 47.948780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287756, -0.352435, -0.890497,
		0.904865, -0.204530, 0.373346,
		-0.313714, -0.913212, 0.260051,
		36.284924, 45.389019, 48.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984127, 45.588394, 47.598034>,  <36.504520, 46.028267, 47.844761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984127, 45.588394, 47.598034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655048, 45.367928, 47.653732>,  <36.457600, 45.235649, 47.687153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655048, 45.367928, 47.653732>,  <36.984127, 45.588394, 47.598034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655048, 45.367928, 47.653732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183258, -0.488996, -0.852818,
		0.538131, -0.676094, 0.503301,
		-0.822697, -0.551162, 0.139245,
		36.408237, 45.202579, 47.695507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174034, 44.834389, 47.481140>,  <36.984127, 45.588394, 47.598034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174034, 44.834389, 47.481140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781605, 44.900120, 47.440170>,  <36.546146, 44.939560, 47.415588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781605, 44.900120, 47.440170>,  <37.174034, 44.834389, 47.481140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781605, 44.900120, 47.440170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002525, -0.518058, -0.855342,
		-0.193617, -0.839412, 0.507838,
		-0.981074, 0.164327, -0.102425,
		36.487282, 44.949417, 47.409443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039413, 44.206829, 47.249004>,  <37.174034, 44.834389, 47.481140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039413, 44.206829, 47.249004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716251, 44.429363, 47.171257>,  <36.522354, 44.562885, 47.124607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716251, 44.429363, 47.171257>,  <37.039413, 44.206829, 47.249004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716251, 44.429363, 47.171257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255217, -0.627594, -0.735520,
		-0.531180, -0.544625, 0.649023,
		-0.807905, 0.556335, -0.194368,
		36.473881, 44.596264, 47.112946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686096, 43.738029, 47.014755>,  <37.039413, 44.206829, 47.249004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686096, 43.738029, 47.014755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492397, 44.060120, 46.877865>,  <36.376179, 44.253372, 46.795731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492397, 44.060120, 46.877865>,  <36.686096, 43.738029, 47.014755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492397, 44.060120, 46.877865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062962, -0.422205, -0.904311,
		-0.872663, -0.416363, 0.255150,
		-0.484247, 0.805224, -0.342228,
		36.347122, 44.301685, 46.775196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136429, 43.465660, 46.695171>,  <36.686096, 43.738029, 47.014755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136429, 43.465660, 46.695171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236786, 43.826843, 46.555618>,  <36.297001, 44.043552, 46.471886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236786, 43.826843, 46.555618>,  <36.136429, 43.465660, 46.695171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236786, 43.826843, 46.555618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094368, -0.381510, -0.919535,
		-0.963405, 0.197778, -0.180927,
		0.250889, 0.902958, -0.348885,
		36.312054, 44.097733, 46.450954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875782, 43.555546, 46.040352>,  <36.136429, 43.465660, 46.695171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875782, 43.555546, 46.040352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147217, 43.847809, 46.010273>,  <36.310078, 44.023167, 45.992226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147217, 43.847809, 46.010273>,  <35.875782, 43.555546, 46.040352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147217, 43.847809, 46.010273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246721, -0.323161, -0.913617,
		-0.691842, 0.601419, -0.399562,
		0.678589, 0.730659, -0.075194,
		36.350792, 44.067005, 45.987717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203247, 43.406448, 45.900093>,  <35.875782, 43.555546, 46.040352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203247, 43.406448, 45.900093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053162, 43.037189, 45.933582>,  <34.963108, 42.815636, 45.953674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053162, 43.037189, 45.933582>,  <35.203247, 43.406448, 45.900093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053162, 43.037189, 45.933582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024992, 0.100360, 0.994637,
		-0.926600, 0.371113, -0.060728,
		-0.375217, -0.923148, 0.083719,
		34.940598, 42.760246, 45.958698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788845, 43.514458, 46.352245>,  <35.203247, 43.406448, 45.900093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788845, 43.514458, 46.352245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869282, 43.124214, 46.387436>,  <34.917545, 42.890068, 46.408550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869282, 43.124214, 46.387436>,  <34.788845, 43.514458, 46.352245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869282, 43.124214, 46.387436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004569, 0.088875, 0.996032,
		-0.979561, -0.200699, 0.013415,
		0.201095, -0.975613, 0.087975,
		34.929611, 42.831532, 46.413830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338490, 43.279377, 46.845066>,  <34.788845, 43.514458, 46.352245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338490, 43.279377, 46.845066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578598, 42.959934, 46.827576>,  <34.722664, 42.768269, 46.817081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578598, 42.959934, 46.827576>,  <34.338490, 43.279377, 46.845066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578598, 42.959934, 46.827576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223194, -0.219758, 0.949679,
		-0.768025, -0.560304, -0.310157,
		0.600268, -0.798603, -0.043723,
		34.758678, 42.720352, 46.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942558, 42.668819, 47.004276>,  <34.338490, 43.279377, 46.845066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942558, 42.668819, 47.004276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322701, 42.597942, 47.106590>,  <34.550785, 42.555416, 47.167976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322701, 42.597942, 47.106590>,  <33.942558, 42.668819, 47.004276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322701, 42.597942, 47.106590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272387, -0.076367, 0.959153,
		-0.150422, -0.981209, -0.120841,
		0.950357, -0.177193, 0.255781,
		34.607807, 42.544785, 47.183323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984997, 42.191532, 47.596161>,  <33.942558, 42.668819, 47.004276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984997, 42.191532, 47.596161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354961, 42.342556, 47.613964>,  <34.576942, 42.433170, 47.624645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354961, 42.342556, 47.613964>,  <33.984997, 42.191532, 47.596161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354961, 42.342556, 47.613964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091270, 0.106871, 0.990075,
		0.369059, -0.919796, 0.133307,
		0.924913, 0.377563, 0.044508,
		34.632435, 42.455826, 47.627316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249290, 41.935905, 48.207783>,  <33.984997, 42.191532, 47.596161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249290, 41.935905, 48.207783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440029, 42.277992, 48.126568>,  <34.554470, 42.483246, 48.077839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440029, 42.277992, 48.126568>,  <34.249290, 41.935905, 48.207783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440029, 42.277992, 48.126568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047927, 0.255945, 0.965502,
		0.877680, -0.450663, 0.163034,
		0.476844, 0.855216, -0.203039,
		34.583084, 42.534557, 48.065655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690212, 42.104725, 48.771194>,  <34.249290, 41.935905, 48.207783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690212, 42.104725, 48.771194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686317, 42.469547, 48.607212>,  <34.683979, 42.688442, 48.508823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686317, 42.469547, 48.607212>,  <34.690212, 42.104725, 48.771194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686317, 42.469547, 48.607212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211700, 0.398799, 0.892268,
		0.977286, 0.095477, 0.189197,
		-0.009740, 0.912054, -0.409953,
		34.683395, 42.743164, 48.484226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185768, 41.667519, 49.272560>,  <34.690212, 42.104725, 48.771194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185768, 41.667519, 49.272560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972824, 41.354290, 49.401176>,  <34.845058, 41.166351, 49.478348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972824, 41.354290, 49.401176>,  <35.185768, 41.667519, 49.272560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972824, 41.354290, 49.401176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144013, -0.290528, -0.945967,
		0.834179, -0.549901, 0.041893,
		-0.532359, -0.783073, 0.321545,
		34.813118, 41.119370, 49.497639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464565, 41.096962, 48.965115>,  <35.185768, 41.667519, 49.272560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464565, 41.096962, 48.965115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087406, 40.994717, 49.050537>,  <34.861111, 40.933369, 49.101791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087406, 40.994717, 49.050537>,  <35.464565, 41.096962, 48.965115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087406, 40.994717, 49.050537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070830, -0.472607, -0.878422,
		0.325467, -0.843388, 0.427515,
		-0.942897, -0.255617, 0.213555,
		34.804539, 40.918034, 49.114605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414978, 40.419193, 48.875984>,  <35.464565, 41.096962, 48.965115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414978, 40.419193, 48.875984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041546, 40.560509, 48.851936>,  <34.817486, 40.645298, 48.837509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041546, 40.560509, 48.851936>,  <35.414978, 40.419193, 48.875984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041546, 40.560509, 48.851936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216678, -0.690092, -0.690524,
		-0.285437, -0.631636, 0.720806,
		-0.933582, 0.353284, -0.060117,
		34.761471, 40.666492, 48.833900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169041, 39.861610, 48.659554>,  <35.414978, 40.419193, 48.875984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169041, 39.861610, 48.659554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869473, 40.121674, 48.608311>,  <34.689732, 40.277710, 48.577564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869473, 40.121674, 48.608311>,  <35.169041, 39.861610, 48.659554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869473, 40.121674, 48.608311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313305, -0.517766, -0.796090,
		-0.583916, -0.556070, 0.591463,
		-0.748921, 0.650158, -0.128113,
		34.644794, 40.316719, 48.569878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508190, 39.504238, 48.557789>,  <35.169041, 39.861610, 48.659554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508190, 39.504238, 48.557789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479576, 39.867844, 48.393555>,  <34.462406, 40.086006, 48.295013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479576, 39.867844, 48.393555>,  <34.508190, 39.504238, 48.557789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479576, 39.867844, 48.393555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414916, -0.401457, -0.816502,
		-0.907043, 0.111949, 0.405883,
		-0.071538, 0.909010, -0.410588,
		34.458115, 40.140545, 48.270378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793468, 39.590450, 48.233913>,  <34.508190, 39.504238, 48.557789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793468, 39.590450, 48.233913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039124, 39.846508, 48.049282>,  <34.186516, 40.000141, 47.938503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039124, 39.846508, 48.049282>,  <33.793468, 39.590450, 48.233913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039124, 39.846508, 48.049282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442284, -0.205228, -0.873078,
		-0.653622, 0.740339, 0.157087,
		0.614135, 0.640141, -0.461582,
		34.223366, 40.038551, 47.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345753, 40.004253, 47.749916>,  <33.793468, 39.590450, 48.233913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345753, 40.004253, 47.749916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716614, 40.047565, 47.606438>,  <33.939129, 40.073555, 47.520351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716614, 40.047565, 47.606438>,  <33.345753, 40.004253, 47.749916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716614, 40.047565, 47.606438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285487, -0.415862, -0.863456,
		-0.242668, 0.902958, -0.354654,
		0.927151, 0.108284, -0.358699,
		33.994759, 40.080051, 47.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.906868, 42.044235, 51.826763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974445, 42.290249, 51.518684>,  <38.014992, 42.437855, 51.333839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974445, 42.290249, 51.518684>,  <37.906868, 42.044235, 51.826763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974445, 42.290249, 51.518684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262414, -0.781288, -0.566329,
		-0.950051, -0.106433, -0.293384,
		0.168941, 0.615029, -0.770193,
		38.025127, 42.474758, 51.287628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638767, 41.729908, 51.156796>,  <37.906868, 42.044235, 51.826763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638767, 41.729908, 51.156796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880066, 42.009911, 51.003910>,  <38.024845, 42.177910, 50.912178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880066, 42.009911, 51.003910>,  <37.638767, 41.729908, 51.156796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880066, 42.009911, 51.003910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267877, -0.629224, -0.729602,
		-0.751218, 0.337748, -0.567095,
		0.603252, 0.700002, -0.382210,
		38.061043, 42.219910, 50.889248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513443, 41.711559, 50.322811>,  <37.638767, 41.729908, 51.156796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513443, 41.711559, 50.322811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862144, 41.898655, 50.381134>,  <38.071365, 42.010914, 50.416126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862144, 41.898655, 50.381134>,  <37.513443, 41.711559, 50.322811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862144, 41.898655, 50.381134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368361, -0.429513, -0.824518,
		-0.323034, 0.772488, -0.546728,
		0.871757, 0.467740, 0.145807,
		38.123672, 42.038979, 50.424877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715881, 41.945927, 49.647236>,  <37.513443, 41.711559, 50.322811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715881, 41.945927, 49.647236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.045689, 41.920113, 49.872093>,  <38.243572, 41.904625, 50.007008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.045689, 41.920113, 49.872093>,  <37.715881, 41.945927, 49.647236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045689, 41.920113, 49.872093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467883, -0.480949, -0.741467,
		0.318214, 0.874371, -0.366356,
		0.824516, -0.064533, 0.562147,
		38.293045, 41.900753, 50.040737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230724, 42.011127, 49.228813>,  <37.715881, 41.945927, 49.647236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230724, 42.011127, 49.228813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.445011, 41.847153, 49.524097>,  <38.573586, 41.748768, 49.701267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.445011, 41.847153, 49.524097>,  <38.230724, 42.011127, 49.228813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445011, 41.847153, 49.524097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607181, -0.420533, -0.674154,
		0.586801, 0.809386, 0.023616,
		0.535720, -0.409933, 0.738213,
		38.605728, 41.724174, 49.745560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879791, 42.004044, 48.898460>,  <38.230724, 42.011127, 49.228813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879791, 42.004044, 48.898460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924534, 41.763580, 49.214966>,  <38.951378, 41.619305, 49.404869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924534, 41.763580, 49.214966>,  <38.879791, 42.004044, 48.898460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924534, 41.763580, 49.214966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512774, -0.647146, -0.564149,
		0.851206, 0.468842, 0.235872,
		0.111853, -0.601156, 0.791265,
		38.958088, 41.583233, 49.452347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656876, 41.846565, 48.962502>,  <38.879791, 42.004044, 48.898460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656876, 41.846565, 48.962502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.470577, 41.532890, 49.126518>,  <39.358799, 41.344685, 49.224930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.470577, 41.532890, 49.126518>,  <39.656876, 41.846565, 48.962502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470577, 41.532890, 49.126518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594716, -0.620498, -0.511170,
		0.655283, 0.005783, 0.755362,
		-0.465744, -0.784187, 0.410041,
		39.330853, 41.297634, 49.249531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131458, 41.359249, 49.104656>,  <39.656876, 41.846565, 48.962502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131458, 41.359249, 49.104656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.823719, 41.104565, 49.125469>,  <39.639076, 40.951756, 49.137959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.823719, 41.104565, 49.125469>,  <40.131458, 41.359249, 49.104656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823719, 41.104565, 49.125469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508003, -0.659142, -0.554495,
		0.387353, -0.400162, 0.830559,
		-0.769344, -0.636712, 0.052037,
		39.592915, 40.913551, 49.141079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385979, 40.656567, 49.196140>,  <40.131458, 41.359249, 49.104656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385979, 40.656567, 49.196140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.021141, 40.579323, 49.051479>,  <39.802238, 40.532978, 48.964684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.021141, 40.579323, 49.051479>,  <40.385979, 40.656567, 49.196140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021141, 40.579323, 49.051479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383090, -0.715629, -0.584052,
		-0.146025, -0.671256, 0.726699,
		-0.912096, -0.193105, -0.361651,
		39.747513, 40.521393, 48.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324429, 39.983425, 49.248161>,  <40.385979, 40.656567, 49.196140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324429, 39.983425, 49.248161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.061546, 40.095264, 48.968185>,  <39.903816, 40.162369, 48.800201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.061546, 40.095264, 48.968185>,  <40.324429, 39.983425, 49.248161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061546, 40.095264, 48.968185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388000, -0.670648, -0.632208,
		-0.646170, -0.687066, 0.332272,
		-0.657206, 0.279592, -0.699935,
		39.864388, 40.179142, 48.758205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105408, 39.386044, 48.924160>,  <40.324429, 39.983425, 49.248161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105408, 39.386044, 48.924160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.991879, 39.642735, 48.639164>,  <39.923759, 39.796749, 48.468166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.991879, 39.642735, 48.639164>,  <40.105408, 39.386044, 48.924160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991879, 39.642735, 48.639164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264127, -0.661975, -0.701445,
		-0.921782, -0.387273, 0.018386,
		-0.283822, 0.641723, -0.712486,
		39.906731, 39.835251, 48.425419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657001, 38.957973, 48.418114>,  <40.105408, 39.386044, 48.924160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657001, 38.957973, 48.418114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759975, 39.294201, 48.227463>,  <39.821758, 39.495937, 48.113071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759975, 39.294201, 48.227463>,  <39.657001, 38.957973, 48.418114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759975, 39.294201, 48.227463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216178, -0.530848, -0.819431,
		-0.941804, 0.107915, -0.318372,
		0.257436, 0.840568, -0.476626,
		39.837208, 39.546371, 48.084476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007797, 39.091370, 48.786316>,  <39.657001, 38.957973, 48.418114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007797, 39.091370, 48.786316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.717388, 38.821285, 48.734188>,  <38.543144, 38.659233, 48.702911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.717388, 38.821285, 48.734188>,  <39.007797, 39.091370, 48.786316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717388, 38.821285, 48.734188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378534, 0.234185, 0.895472,
		-0.574113, 0.699462, -0.425614,
		-0.726021, -0.675211, -0.130321,
		38.499580, 38.618721, 48.695091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353592, 39.422283, 48.955429>,  <39.007797, 39.091370, 48.786316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353592, 39.422283, 48.955429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272907, 39.031544, 48.983917>,  <38.224495, 38.797100, 49.001011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272907, 39.031544, 48.983917>,  <38.353592, 39.422283, 48.955429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272907, 39.031544, 48.983917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474174, 0.161024, 0.865581,
		-0.857013, 0.140827, -0.495678,
		-0.201713, -0.976852, 0.071222,
		38.212395, 38.738487, 49.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569164, 39.381573, 48.938877>,  <38.353592, 39.422283, 48.955429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569164, 39.381573, 48.938877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708870, 39.042038, 49.097622>,  <37.792694, 38.838318, 49.192867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708870, 39.042038, 49.097622>,  <37.569164, 39.381573, 48.938877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708870, 39.042038, 49.097622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655390, 0.081405, 0.750891,
		-0.669688, -0.522355, -0.527886,
		0.349259, -0.848833, 0.396862,
		37.813648, 38.787388, 49.216682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990520, 38.946831, 49.171204>,  <37.569164, 39.381573, 48.938877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990520, 38.946831, 49.171204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.301353, 38.806793, 49.380421>,  <37.487854, 38.722771, 49.505951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.301353, 38.806793, 49.380421>,  <36.990520, 38.946831, 49.171204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301353, 38.806793, 49.380421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486935, 0.192137, 0.852044,
		-0.398793, -0.916797, -0.021168,
		0.777083, -0.350097, 0.523043,
		37.534477, 38.701763, 49.537334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667747, 38.589127, 49.693539>,  <36.990520, 38.946831, 49.171204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667747, 38.589127, 49.693539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040123, 38.661892, 49.820198>,  <37.263550, 38.705551, 49.896194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040123, 38.661892, 49.820198>,  <36.667747, 38.589127, 49.693539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040123, 38.661892, 49.820198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347599, 0.175628, 0.921048,
		0.111930, -0.967505, 0.226729,
		0.930939, 0.181904, 0.316646,
		37.319405, 38.716465, 49.915192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736607, 38.211655, 50.284527>,  <36.667747, 38.589127, 49.693539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736607, 38.211655, 50.284527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023777, 38.488049, 50.318283>,  <37.196079, 38.653885, 50.338535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023777, 38.488049, 50.318283>,  <36.736607, 38.211655, 50.284527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023777, 38.488049, 50.318283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210670, 0.100127, 0.972416,
		0.663474, -0.715903, 0.217453,
		0.717928, 0.690983, 0.084387,
		37.239155, 38.695343, 50.343601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009094, 38.056854, 50.856079>,  <36.736607, 38.211655, 50.284527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009094, 38.056854, 50.856079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152008, 38.428169, 50.814835>,  <37.237759, 38.650959, 50.790089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152008, 38.428169, 50.814835>,  <37.009094, 38.056854, 50.856079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152008, 38.428169, 50.814835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209319, 0.187170, 0.959767,
		0.910237, -0.321330, 0.261182,
		0.357288, 0.928286, -0.103109,
		37.259193, 38.706654, 50.783901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438759, 38.206566, 51.479141>,  <37.009094, 38.056854, 50.856079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438759, 38.206566, 51.479141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335384, 38.552979, 51.307934>,  <37.273361, 38.760826, 51.205208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335384, 38.552979, 51.307934>,  <37.438759, 38.206566, 51.479141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335384, 38.552979, 51.307934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194223, 0.387446, 0.901201,
		0.946303, 0.316034, 0.068073,
		-0.258435, 0.866030, -0.428022,
		37.257854, 38.812786, 51.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737705, 38.776749, 51.825233>,  <37.438759, 38.206566, 51.479141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737705, 38.776749, 51.825233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.422436, 38.945087, 51.645603>,  <37.233273, 39.046089, 51.537827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.422436, 38.945087, 51.645603>,  <37.737705, 38.776749, 51.825233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422436, 38.945087, 51.645603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273501, 0.414158, 0.868142,
		0.551343, 0.807070, -0.211326,
		-0.788174, 0.420847, -0.449077,
		37.185986, 39.071342, 51.510880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701180, 39.398041, 52.087063>,  <37.737705, 38.776749, 51.825233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701180, 39.398041, 52.087063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.325958, 39.354748, 51.955399>,  <37.100826, 39.328770, 51.876400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.325958, 39.354748, 51.955399>,  <37.701180, 39.398041, 52.087063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325958, 39.354748, 51.955399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338511, 0.489068, 0.803880,
		0.073973, 0.865504, -0.495410,
		-0.938050, -0.108237, -0.329160,
		37.044544, 39.322277, 51.856651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483913, 40.036594, 51.945908>,  <37.701180, 39.398041, 52.087063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483913, 40.036594, 51.945908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137619, 39.845676, 52.006165>,  <36.929844, 39.731125, 52.042320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137619, 39.845676, 52.006165>,  <37.483913, 40.036594, 51.945908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137619, 39.845676, 52.006165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197768, 0.602713, 0.773062,
		-0.459769, 0.639476, -0.616183,
		-0.865737, -0.477291, 0.150641,
		36.877899, 39.702488, 52.051357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963657, 40.551796, 51.997406>,  <37.483913, 40.036594, 51.945908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963657, 40.551796, 51.997406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805775, 40.225414, 52.166367>,  <36.711044, 40.029587, 52.267742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805775, 40.225414, 52.166367>,  <36.963657, 40.551796, 51.997406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805775, 40.225414, 52.166367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385805, 0.564420, 0.729784,
		-0.833882, 0.125089, -0.537581,
		-0.394709, -0.815955, 0.422400,
		36.687363, 39.980629, 52.293087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351776, 40.801086, 52.189949>,  <36.963657, 40.551796, 51.997406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351776, 40.801086, 52.189949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.373882, 40.460842, 52.399101>,  <36.387146, 40.256695, 52.524593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.373882, 40.460842, 52.399101>,  <36.351776, 40.801086, 52.189949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373882, 40.460842, 52.399101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440809, 0.449097, 0.777174,
		-0.895898, -0.273442, -0.350137,
		0.055267, -0.850612, 0.522881,
		36.390461, 40.205658, 52.555965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654804, 40.734489, 52.417912>,  <36.351776, 40.801086, 52.189949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654804, 40.734489, 52.417912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945744, 40.561825, 52.631317>,  <36.120308, 40.458225, 52.759361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945744, 40.561825, 52.631317>,  <35.654804, 40.734489, 52.417912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945744, 40.561825, 52.631317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350718, 0.434417, 0.829626,
		-0.589882, -0.790539, 0.164582,
		0.727349, -0.431660, 0.533511,
		36.163948, 40.432327, 52.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900345, 40.722252, 52.386612>,  <35.654804, 40.734489, 52.417912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900345, 40.722252, 52.386612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711632, 41.074520, 52.369465>,  <34.598404, 41.285881, 52.359177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711632, 41.074520, 52.369465>,  <34.900345, 40.722252, 52.386612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711632, 41.074520, 52.369465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303840, -0.208031, -0.929734,
		-0.827707, -0.425609, 0.365729,
		-0.471786, 0.880670, -0.042872,
		34.570095, 41.338722, 52.356602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193295, 40.612583, 52.313179>,  <34.900345, 40.722252, 52.386612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193295, 40.612583, 52.313179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296318, 40.975677, 52.180714>,  <34.358131, 41.193535, 52.101234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296318, 40.975677, 52.180714>,  <34.193295, 40.612583, 52.313179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296318, 40.975677, 52.180714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359874, -0.227958, -0.904724,
		-0.896746, 0.352200, 0.267959,
		0.257561, 0.907739, -0.331168,
		34.373585, 41.248001, 52.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695488, 40.757027, 51.786148>,  <34.193295, 40.612583, 52.313179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695488, 40.757027, 51.786148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009266, 40.998940, 51.731178>,  <34.197533, 41.144089, 51.698196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009266, 40.998940, 51.731178>,  <33.695488, 40.757027, 51.786148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009266, 40.998940, 51.731178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123264, -0.065130, -0.990234,
		-0.607829, 0.793721, 0.023458,
		0.784442, 0.604785, -0.137425,
		34.244598, 41.180374, 51.689949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465790, 41.328342, 51.270535>,  <33.695488, 40.757027, 51.786148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465790, 41.328342, 51.270535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863056, 41.304848, 51.230190>,  <34.101418, 41.290752, 51.205986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863056, 41.304848, 51.230190>,  <33.465790, 41.328342, 51.270535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863056, 41.304848, 51.230190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101870, -0.014497, -0.994692,
		0.056959, 0.998168, -0.020381,
		0.993166, -0.058733, -0.100858,
		34.161007, 41.287228, 51.199932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582676, 41.582809, 50.635651>,  <33.465790, 41.328342, 51.270535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582676, 41.582809, 50.635651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943314, 41.412724, 50.667431>,  <34.159698, 41.310673, 50.686501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943314, 41.412724, 50.667431>,  <33.582676, 41.582809, 50.635651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943314, 41.412724, 50.667431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043360, -0.093917, -0.994635,
		0.430400, 0.900205, -0.066237,
		0.901596, -0.425219, 0.079455,
		34.213791, 41.285156, 50.691269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079739, 41.961800, 50.218536>,  <33.582676, 41.582809, 50.635651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079739, 41.961800, 50.218536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258450, 41.609249, 50.279949>,  <34.365677, 41.397720, 50.316795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258450, 41.609249, 50.279949>,  <34.079739, 41.961800, 50.218536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258450, 41.609249, 50.279949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116879, -0.112640, -0.986738,
		0.886979, 0.458795, 0.052689,
		0.446775, -0.881374, 0.153532,
		34.392483, 41.344837, 50.326008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625370, 41.962837, 49.713135>,  <34.079739, 41.961800, 50.218536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625370, 41.962837, 49.713135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620155, 41.576542, 49.816811>,  <34.617027, 41.344765, 49.879017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620155, 41.576542, 49.816811>,  <34.625370, 41.962837, 49.713135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620155, 41.576542, 49.816811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028718, -0.258743, -0.965519,
		0.999503, -0.020027, -0.024362,
		-0.013033, -0.965738, 0.259190,
		34.616245, 41.286819, 49.894569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014847, 42.513638, 49.311005>,  <34.625370, 41.962837, 49.713135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014847, 42.513638, 49.311005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.849579, 42.776794, 49.059139>,  <34.750420, 42.934689, 48.908020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.849579, 42.776794, 49.059139>,  <35.014847, 42.513638, 49.311005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849579, 42.776794, 49.059139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258558, 0.578233, 0.773818,
		0.873176, 0.482523, -0.068806,
		-0.413171, 0.657889, -0.629659,
		34.725628, 42.974163, 48.870243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217731, 43.049938, 49.761894>,  <35.014847, 42.513638, 49.311005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217731, 43.049938, 49.761894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.928699, 43.141983, 49.501144>,  <34.755280, 43.197208, 49.344696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.928699, 43.141983, 49.501144>,  <35.217731, 43.049938, 49.761894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928699, 43.141983, 49.501144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285450, 0.759511, 0.584518,
		0.629605, 0.608435, -0.483120,
		-0.722576, 0.230108, -0.651870,
		34.711926, 43.211014, 49.305584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277779, 43.799053, 49.652374>,  <35.217731, 43.049938, 49.761894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277779, 43.799053, 49.652374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905304, 43.718044, 49.531128>,  <34.681820, 43.669437, 49.458378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905304, 43.718044, 49.531128>,  <35.277779, 43.799053, 49.652374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905304, 43.718044, 49.531128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333748, 0.808122, 0.485337,
		0.146665, 0.553103, -0.820102,
		-0.931183, -0.202525, -0.303120,
		34.625950, 43.657288, 49.440193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903072, 44.427601, 49.542351>,  <35.277779, 43.799053, 49.652374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903072, 44.427601, 49.542351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615955, 44.157234, 49.609169>,  <34.443684, 43.995014, 49.649258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615955, 44.157234, 49.609169>,  <34.903072, 44.427601, 49.542351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615955, 44.157234, 49.609169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395344, 0.593161, 0.701330,
		-0.573124, 0.437374, -0.692989,
		-0.717797, -0.675918, 0.167041,
		34.400616, 43.954460, 49.659283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313248, 44.751301, 49.381760>,  <34.903072, 44.427601, 49.542351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313248, 44.751301, 49.381760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228561, 44.457844, 49.640045>,  <34.177750, 44.281769, 49.795017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228561, 44.457844, 49.640045>,  <34.313248, 44.751301, 49.381760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228561, 44.457844, 49.640045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476123, 0.654408, 0.587416,
		-0.853513, -0.183076, -0.487851,
		-0.211712, -0.733644, 0.645712,
		34.165047, 44.237751, 49.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674423, 45.000313, 49.573875>,  <34.313248, 44.751301, 49.381760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674423, 45.000313, 49.573875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768978, 44.718960, 49.842014>,  <33.825710, 44.550148, 50.002899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768978, 44.718960, 49.842014>,  <33.674423, 45.000313, 49.573875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768978, 44.718960, 49.842014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453642, 0.530204, 0.716305,
		-0.859260, -0.473427, -0.193749,
		0.236391, -0.703385, 0.670349,
		33.839897, 44.507946, 50.043118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095001, 44.762741, 49.915226>,  <33.674423, 45.000313, 49.573875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095001, 44.762741, 49.915226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371052, 44.673496, 50.190601>,  <33.536682, 44.619949, 50.355827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371052, 44.673496, 50.190601>,  <33.095001, 44.762741, 49.915226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371052, 44.673496, 50.190601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479650, 0.571325, 0.665975,
		-0.541910, -0.789816, 0.287270,
		0.690123, -0.223109, 0.688442,
		33.578087, 44.606564, 50.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690178, 44.643417, 50.511162>,  <33.095001, 44.762741, 49.915226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690178, 44.643417, 50.511162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064281, 44.702011, 50.640057>,  <33.288742, 44.737167, 50.717392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064281, 44.702011, 50.640057>,  <32.690178, 44.643417, 50.511162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064281, 44.702011, 50.640057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336478, 0.650538, 0.680869,
		-0.109890, -0.745214, 0.657709,
		0.935257, 0.146484, 0.322236,
		33.344860, 44.745956, 50.736729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691307, 44.602333, 51.244507>,  <32.690178, 44.643417, 50.511162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691307, 44.602333, 51.244507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015701, 44.820065, 51.158707>,  <33.210339, 44.950703, 51.107227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015701, 44.820065, 51.158707>,  <32.691307, 44.602333, 51.244507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015701, 44.820065, 51.158707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205751, 0.608545, 0.766381,
		0.547689, -0.577394, 0.605519,
		0.810989, 0.544325, -0.214494,
		33.258999, 44.983364, 51.094357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.222610, 37.419983, 37.094486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394722, 37.780991, 37.101585>,  <36.497990, 37.997597, 37.105846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394722, 37.780991, 37.101585>,  <36.222610, 37.419983, 37.094486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394722, 37.780991, 37.101585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397758, 0.171908, 0.901241,
		0.810339, -0.394845, 0.432954,
		0.430279, 0.902521, 0.017749,
		36.523808, 38.051746, 37.106911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422215, 37.682014, 37.837540>,  <36.222610, 37.419983, 37.094486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422215, 37.682014, 37.837540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408875, 38.026585, 37.634823>,  <36.400871, 38.233326, 37.513191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408875, 38.026585, 37.634823>,  <36.422215, 37.682014, 37.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408875, 38.026585, 37.634823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226947, 0.487303, 0.843226,
		0.973336, 0.143133, 0.179248,
		-0.033345, 0.861422, -0.506793,
		36.398872, 38.285011, 37.482784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702496, 38.103508, 38.266235>,  <36.422215, 37.682014, 37.837540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702496, 38.103508, 38.266235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477631, 38.325970, 38.021397>,  <36.342712, 38.459446, 37.874493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477631, 38.325970, 38.021397>,  <36.702496, 38.103508, 38.266235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477631, 38.325970, 38.021397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273365, 0.573558, 0.772207,
		0.780540, 0.601433, -0.170401,
		-0.562165, 0.556156, -0.612095,
		36.308983, 38.492817, 37.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780491, 38.798992, 38.482670>,  <36.702496, 38.103508, 38.266235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780491, 38.798992, 38.482670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446888, 38.805656, 38.262066>,  <36.246727, 38.809654, 38.129704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446888, 38.805656, 38.262066>,  <36.780491, 38.798992, 38.482670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446888, 38.805656, 38.262066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497433, 0.409795, 0.764610,
		0.238743, 0.912025, -0.333484,
		-0.834004, 0.016660, -0.551507,
		36.196686, 38.810654, 38.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536663, 39.514217, 38.516949>,  <36.780491, 38.798992, 38.482670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536663, 39.514217, 38.516949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221035, 39.284775, 38.429005>,  <36.031658, 39.147110, 38.376236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221035, 39.284775, 38.429005>,  <36.536663, 39.514217, 38.516949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221035, 39.284775, 38.429005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557235, 0.517712, 0.649203,
		-0.258562, 0.634783, -0.728146,
		-0.789073, -0.573607, -0.219862,
		35.984314, 39.112694, 38.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949619, 39.998978, 38.449459>,  <36.536663, 39.514217, 38.516949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949619, 39.998978, 38.449459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802143, 39.636234, 38.531113>,  <35.713657, 39.418587, 38.580105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802143, 39.636234, 38.531113>,  <35.949619, 39.998978, 38.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802143, 39.636234, 38.531113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655947, 0.409422, 0.634120,
		-0.658634, 0.099896, -0.745803,
		-0.368695, -0.906860, 0.204132,
		35.691536, 39.364178, 38.592354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278309, 40.108902, 38.427563>,  <35.949619, 39.998978, 38.449459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278309, 40.108902, 38.427563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318012, 39.762531, 38.623653>,  <35.341835, 39.554710, 38.741306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318012, 39.762531, 38.623653>,  <35.278309, 40.108902, 38.427563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318012, 39.762531, 38.623653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556511, 0.360098, 0.748749,
		-0.824889, -0.347138, -0.446153,
		0.099261, -0.865924, 0.490227,
		35.347790, 39.502754, 38.770721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630806, 40.076996, 38.586040>,  <35.278309, 40.108902, 38.427563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630806, 40.076996, 38.586040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819420, 39.799568, 38.803890>,  <34.932587, 39.633110, 38.934601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819420, 39.799568, 38.803890>,  <34.630806, 40.076996, 38.586040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819420, 39.799568, 38.803890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579828, 0.221473, 0.784060,
		-0.664422, -0.685496, -0.297722,
		0.471533, -0.693574, 0.544621,
		34.960880, 39.591496, 38.967278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067699, 39.658417, 38.779972>,  <34.630806, 40.076996, 38.586040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067699, 39.658417, 38.779972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355656, 39.593540, 39.049919>,  <34.528431, 39.554615, 39.211887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355656, 39.593540, 39.049919>,  <34.067699, 39.658417, 38.779972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355656, 39.593540, 39.049919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614792, 0.302290, 0.728458,
		-0.322153, -0.939317, 0.117905,
		0.719894, -0.162188, 0.674868,
		34.571625, 39.544884, 39.252380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715767, 39.238789, 39.421013>,  <34.067699, 39.658417, 38.779972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715767, 39.238789, 39.421013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047821, 39.429874, 39.536022>,  <34.247051, 39.544525, 39.605030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047821, 39.429874, 39.536022>,  <33.715767, 39.238789, 39.421013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047821, 39.429874, 39.536022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479159, 0.347530, 0.805996,
		0.285109, -0.806855, 0.517395,
		0.830132, 0.477711, 0.287528,
		34.296860, 39.573189, 39.622280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816769, 39.074551, 40.138878>,  <33.715767, 39.238789, 39.421013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816769, 39.074551, 40.138878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059174, 39.390999, 40.105724>,  <34.204617, 39.580868, 40.085835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059174, 39.390999, 40.105724>,  <33.816769, 39.074551, 40.138878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059174, 39.390999, 40.105724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337882, 0.350342, 0.873554,
		0.720126, -0.501383, 0.479618,
		0.606015, 0.791123, -0.082882,
		34.240978, 39.628334, 40.080860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129921, 39.153351, 40.776859>,  <33.816769, 39.074551, 40.138878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129921, 39.153351, 40.776859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113506, 39.510822, 40.598125>,  <34.103657, 39.725304, 40.490887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113506, 39.510822, 40.598125>,  <34.129921, 39.153351, 40.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113506, 39.510822, 40.598125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335696, 0.408885, 0.848599,
		0.941076, 0.184822, 0.283225,
		-0.041034, 0.893674, -0.446836,
		34.101196, 39.778923, 40.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321297, 38.451763, 41.127895>,  <34.129921, 39.153351, 40.776859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321297, 38.451763, 41.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072094, 38.218384, 41.336300>,  <33.922573, 38.078354, 41.461342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072094, 38.218384, 41.336300>,  <34.321297, 38.451763, 41.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072094, 38.218384, 41.336300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033282, -0.685235, -0.727561,
		0.781509, -0.435935, 0.446323,
		-0.623005, -0.583450, 0.521009,
		33.885193, 38.043350, 41.492603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539486, 37.836720, 41.164867>,  <34.321297, 38.451763, 41.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539486, 37.836720, 41.164867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150936, 37.766354, 41.228718>,  <33.917805, 37.724133, 41.267029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150936, 37.766354, 41.228718>,  <34.539486, 37.836720, 41.164867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150936, 37.766354, 41.228718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002309, -0.678943, -0.734187,
		0.237533, -0.712804, 0.659916,
		-0.971377, -0.175917, 0.159626,
		33.859524, 37.713577, 41.276604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388939, 37.151196, 40.918045>,  <34.539486, 37.836720, 41.164867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388939, 37.151196, 40.918045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017693, 37.297283, 40.946930>,  <33.794945, 37.384933, 40.964260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017693, 37.297283, 40.946930>,  <34.388939, 37.151196, 40.918045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017693, 37.297283, 40.946930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246311, -0.456945, -0.854712,
		-0.279155, -0.811061, 0.514056,
		-0.928118, 0.365215, 0.072215,
		33.739258, 37.406849, 40.968594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933502, 36.652309, 41.080181>,  <34.388939, 37.151196, 40.918045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933502, 36.652309, 41.080181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701057, 36.911575, 40.883327>,  <33.561592, 37.067135, 40.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701057, 36.911575, 40.883327>,  <33.933502, 36.652309, 41.080181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701057, 36.911575, 40.883327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200157, -0.699973, -0.685547,
		-0.788827, -0.299875, 0.536496,
		-0.581111, 0.648161, -0.492135,
		33.526722, 37.106022, 40.735687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571770, 36.190868, 40.713440>,  <33.933502, 36.652309, 41.080181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571770, 36.190868, 40.713440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 36.533443, 40.524239>,  <33.439392, 36.738987, 40.410717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 36.533443, 40.524239>,  <33.571770, 36.190868, 40.713440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489033, 36.533443, 40.524239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002608, -0.483942, -0.875097,
		-0.978372, -0.179770, 0.102331,
		-0.206838, 0.856437, -0.473006,
		33.426983, 36.790375, 40.382336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950283, 36.109150, 40.389420>,  <33.571770, 36.190868, 40.713440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950283, 36.109150, 40.389420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122326, 36.407825, 40.186455>,  <33.225552, 36.587029, 40.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122326, 36.407825, 40.186455>,  <32.950283, 36.109150, 40.389420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122326, 36.407825, 40.186455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034882, -0.547890, -0.835823,
		-0.902103, 0.377194, -0.209606,
		0.430109, 0.746687, -0.507410,
		33.251358, 36.631832, 40.034233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574482, 36.230232, 39.743397>,  <32.950283, 36.109150, 40.389420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574482, 36.230232, 39.743397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927261, 36.400562, 39.662563>,  <33.138927, 36.502762, 39.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927261, 36.400562, 39.662563>,  <32.574482, 36.230232, 39.743397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927261, 36.400562, 39.662563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052686, -0.336990, -0.940033,
		-0.468391, 0.839708, -0.274773,
		0.881949, 0.425826, -0.202084,
		33.191845, 36.528309, 39.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574928, 36.551418, 39.117348>,  <32.574482, 36.230232, 39.743397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574928, 36.551418, 39.117348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965580, 36.480148, 39.165421>,  <33.199970, 36.437386, 39.194263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965580, 36.480148, 39.165421>,  <32.574928, 36.551418, 39.117348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965580, 36.480148, 39.165421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053593, -0.339633, -0.939030,
		0.208132, 0.923527, -0.322147,
		0.976631, -0.178178, 0.120184,
		33.258568, 36.426697, 39.201477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906025, 36.757290, 38.495865>,  <32.574928, 36.551418, 39.117348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906025, 36.757290, 38.495865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194107, 36.539562, 38.667923>,  <33.366955, 36.408928, 38.771156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194107, 36.539562, 38.667923>,  <32.906025, 36.757290, 38.495865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194107, 36.539562, 38.667923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155203, -0.477895, -0.864597,
		0.676178, 0.689447, -0.259703,
		0.720205, -0.544315, 0.430146,
		33.410168, 36.376266, 38.796967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583015, 36.871475, 38.100216>,  <32.906025, 36.757290, 38.495865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583015, 36.871475, 38.100216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670166, 36.526760, 38.283451>,  <33.722458, 36.319931, 38.393394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670166, 36.526760, 38.283451>,  <33.583015, 36.871475, 38.100216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670166, 36.526760, 38.283451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136765, -0.437775, -0.888622,
		0.966346, 0.256261, 0.022482,
		0.217877, -0.861791, 0.458090,
		33.735531, 36.268223, 38.420879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145966, 36.586617, 37.736332>,  <33.583015, 36.871475, 38.100216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145966, 36.586617, 37.736332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972309, 36.284668, 37.932980>,  <33.868114, 36.103497, 38.050968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972309, 36.284668, 37.932980>,  <34.145966, 36.586617, 37.736332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972309, 36.284668, 37.932980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139599, -0.595510, -0.791126,
		0.889963, -0.274832, 0.363915,
		-0.434142, -0.754874, 0.491616,
		33.842068, 36.058205, 38.080463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657925, 36.041328, 37.631859>,  <34.145966, 36.586617, 37.736332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657925, 36.041328, 37.631859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318691, 35.874466, 37.762539>,  <34.115150, 35.774349, 37.840946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318691, 35.874466, 37.762539>,  <34.657925, 36.041328, 37.631859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318691, 35.874466, 37.762539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121807, -0.753557, -0.645999,
		0.515669, -0.508067, 0.689893,
		-0.848085, -0.417155, 0.326700,
		34.064266, 35.749321, 37.860550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752007, 35.263599, 37.940804>,  <34.657925, 36.041328, 37.631859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752007, 35.263599, 37.940804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368656, 35.290195, 37.829739>,  <34.138645, 35.306152, 37.763100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368656, 35.290195, 37.829739>,  <34.752007, 35.263599, 37.940804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368656, 35.290195, 37.829739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102687, -0.827163, -0.552500,
		-0.266406, -0.558014, 0.785906,
		-0.958376, 0.066487, -0.277662,
		34.081142, 35.310143, 37.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594650, 34.683197, 38.152737>,  <34.752007, 35.263599, 37.940804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594650, 34.683197, 38.152737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328968, 34.804543, 37.879444>,  <34.169559, 34.877350, 37.715469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328968, 34.804543, 37.879444>,  <34.594650, 34.683197, 38.152737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328968, 34.804543, 37.879444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200050, -0.808492, -0.553462,
		-0.720282, -0.504294, 0.476320,
		-0.664208, 0.303361, -0.683227,
		34.129707, 34.895550, 37.674477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817432, 34.432396, 38.871174>,  <34.594650, 34.683197, 38.152737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817432, 34.432396, 38.871174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586777, 34.747952, 38.786194>,  <34.448383, 34.937286, 38.735207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586777, 34.747952, 38.786194>,  <34.817432, 34.432396, 38.871174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586777, 34.747952, 38.786194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388556, -0.493560, -0.778089,
		-0.718685, -0.366129, 0.591135,
		-0.576642, 0.788890, -0.212453,
		34.413784, 34.984619, 38.722458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503952, 34.004097, 39.454117>,  <34.817432, 34.432396, 38.871174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503952, 34.004097, 39.454117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892300, 33.909294, 39.468235>,  <35.125309, 33.852413, 39.476707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892300, 33.909294, 39.468235>,  <34.503952, 34.004097, 39.454117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892300, 33.909294, 39.468235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134137, -0.415475, 0.899660,
		-0.198563, -0.878184, -0.435162,
		0.970865, -0.237011, 0.035299,
		35.183559, 33.838192, 39.478825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452892, 33.838863, 40.196060>,  <34.503952, 34.004097, 39.454117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452892, 33.838863, 40.196060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832993, 33.922977, 40.104149>,  <35.061054, 33.973446, 40.049000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832993, 33.922977, 40.104149>,  <34.452892, 33.838863, 40.196060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832993, 33.922977, 40.104149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062696, 0.593473, 0.802408,
		0.305106, -0.776897, 0.550765,
		0.950253, 0.210289, -0.229780,
		35.118069, 33.986065, 40.035213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905876, 33.614910, 40.794132>,  <34.452892, 33.838863, 40.196060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905876, 33.614910, 40.794132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096554, 33.893570, 40.579678>,  <35.210960, 34.060768, 40.451004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096554, 33.893570, 40.579678>,  <34.905876, 33.614910, 40.794132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096554, 33.893570, 40.579678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137306, 0.543395, 0.828172,
		0.868279, -0.468400, 0.163379,
		0.476695, 0.696651, -0.536133,
		35.239563, 34.102566, 40.418839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411457, 33.809174, 41.222366>,  <34.905876, 33.614910, 40.794132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411457, 33.809174, 41.222366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406189, 34.097900, 40.945583>,  <35.403027, 34.271137, 40.779514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406189, 34.097900, 40.945583>,  <35.411457, 33.809174, 41.222366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406189, 34.097900, 40.945583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048316, 0.691673, 0.720593,
		0.998745, -0.023939, -0.043988,
		-0.013175, 0.721814, -0.691961,
		35.402237, 34.314445, 40.737995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972801, 34.278454, 41.339989>,  <35.411457, 33.809174, 41.222366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972801, 34.278454, 41.339989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718475, 34.490456, 41.115547>,  <35.565880, 34.617657, 40.980885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718475, 34.490456, 41.115547>,  <35.972801, 34.278454, 41.339989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718475, 34.490456, 41.115547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172191, 0.806047, 0.566250,
		0.752386, 0.263416, -0.603761,
		-0.635819, 0.530001, -0.561101,
		35.527729, 34.649456, 40.947216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317417, 34.935555, 41.278664>,  <35.972801, 34.278454, 41.339989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317417, 34.935555, 41.278664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929752, 34.990479, 41.196808>,  <35.697155, 35.023434, 41.147694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929752, 34.990479, 41.196808>,  <36.317417, 34.935555, 41.278664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929752, 34.990479, 41.196808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047054, 0.712017, 0.700584,
		0.241902, 0.688606, -0.683597,
		-0.969159, 0.137307, -0.204640,
		35.639004, 35.031670, 41.135414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284859, 35.633583, 41.357567>,  <36.317417, 34.935555, 41.278664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284859, 35.633583, 41.357567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909790, 35.498684, 41.391121>,  <35.684750, 35.417744, 41.411251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909790, 35.498684, 41.391121>,  <36.284859, 35.633583, 41.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909790, 35.498684, 41.391121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172583, 0.661390, 0.729916,
		-0.301641, 0.669945, -0.678370,
		-0.937671, -0.337248, 0.083882,
		35.628490, 35.397511, 41.416286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831539, 36.259396, 41.359745>,  <36.284859, 35.633583, 41.357567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831539, 36.259396, 41.359745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616890, 35.972809, 41.538055>,  <35.488098, 35.800858, 41.645042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616890, 35.972809, 41.538055>,  <35.831539, 36.259396, 41.359745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616890, 35.972809, 41.538055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175098, 0.611328, 0.771764,
		-0.825454, 0.336094, -0.453505,
		-0.536625, -0.716463, 0.445774,
		35.455902, 35.757870, 41.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299248, 36.596653, 41.583912>,  <35.831539, 36.259396, 41.359745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299248, 36.596653, 41.583912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290421, 36.264221, 41.806198>,  <35.285126, 36.064762, 41.939568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290421, 36.264221, 41.806198>,  <35.299248, 36.596653, 41.583912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290421, 36.264221, 41.806198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143912, 0.552698, 0.820862,
		-0.989344, -0.061860, -0.131799,
		-0.022067, -0.831082, 0.555711,
		35.283802, 36.014896, 41.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772465, 36.760075, 42.078308>,  <35.299248, 36.596653, 41.583912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772465, 36.760075, 42.078308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989639, 36.450203, 42.207977>,  <35.119946, 36.264278, 42.285778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989639, 36.450203, 42.207977>,  <34.772465, 36.760075, 42.078308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989639, 36.450203, 42.207977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246642, 0.516105, 0.820246,
		-0.802737, -0.365387, 0.471281,
		0.542938, -0.774680, 0.324176,
		35.152519, 36.217800, 42.305229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546608, 36.641247, 42.858475>,  <34.772465, 36.760075, 42.078308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546608, 36.641247, 42.858475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894123, 36.454895, 42.791351>,  <35.102634, 36.343082, 42.751076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894123, 36.454895, 42.791351>,  <34.546608, 36.641247, 42.858475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894123, 36.454895, 42.791351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357580, 0.355814, 0.863442,
		-0.342551, -0.810156, 0.475717,
		0.868790, -0.465880, -0.167811,
		35.154758, 36.315132, 42.741009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763123, 36.255894, 43.463898>,  <34.546608, 36.641247, 42.858475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763123, 36.255894, 43.463898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113914, 36.276455, 43.272789>,  <35.324390, 36.288792, 43.158123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113914, 36.276455, 43.272789>,  <34.763123, 36.255894, 43.463898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113914, 36.276455, 43.272789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432226, 0.350062, 0.831046,
		0.209963, -0.935316, 0.284781,
		0.876982, 0.051399, -0.477767,
		35.377010, 36.291874, 43.129459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368164, 35.811661, 43.853397>,  <34.763123, 36.255894, 43.463898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368164, 35.811661, 43.853397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518753, 36.107353, 43.630039>,  <35.609104, 36.284771, 43.496025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518753, 36.107353, 43.630039>,  <35.368164, 35.811661, 43.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518753, 36.107353, 43.630039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575894, 0.285394, 0.766091,
		0.725684, -0.609984, -0.318280,
		0.376468, 0.739236, -0.558392,
		35.631695, 36.329124, 43.462521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998405, 35.748608, 43.974854>,  <35.368164, 35.811661, 43.853397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998405, 35.748608, 43.974854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982777, 36.132225, 43.862633>,  <35.973400, 36.362396, 43.795300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982777, 36.132225, 43.862633>,  <35.998405, 35.748608, 43.974854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982777, 36.132225, 43.862633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677045, 0.231902, 0.698450,
		0.734904, -0.162651, -0.658378,
		-0.039076, 0.959044, -0.280548,
		35.971054, 36.419937, 43.778469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648407, 35.987717, 43.987835>,  <35.998405, 35.748608, 43.974854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648407, 35.987717, 43.987835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449734, 36.334599, 43.973640>,  <36.330528, 36.542728, 43.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449734, 36.334599, 43.973640>,  <36.648407, 35.987717, 43.987835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449734, 36.334599, 43.973640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600115, 0.372669, 0.707799,
		0.627031, 0.330258, -0.705522,
		-0.496682, 0.867207, -0.035482,
		36.300728, 36.594761, 43.962997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166466, 36.467331, 44.118557>,  <36.648407, 35.987717, 43.987835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166466, 36.467331, 44.118557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832821, 36.679600, 44.178753>,  <36.632633, 36.806961, 44.214870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832821, 36.679600, 44.178753>,  <37.166466, 36.467331, 44.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832821, 36.679600, 44.178753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479318, 0.562300, 0.673850,
		0.272968, 0.634201, -0.723379,
		-0.834112, 0.530668, 0.150494,
		36.582588, 36.838799, 44.223900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398506, 37.248684, 43.961266>,  <37.166466, 36.467331, 44.118557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398506, 37.248684, 43.961266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083782, 37.225025, 44.207005>,  <36.894947, 37.210831, 44.354450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083782, 37.225025, 44.207005>,  <37.398506, 37.248684, 43.961266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083782, 37.225025, 44.207005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470319, 0.587104, 0.658870,
		-0.399656, 0.807348, -0.434125,
		-0.786814, -0.059144, 0.614350,
		36.847736, 37.207283, 44.391308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300396, 37.965126, 44.177109>,  <37.398506, 37.248684, 43.961266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300396, 37.965126, 44.177109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127602, 37.733425, 44.453617>,  <37.023926, 37.594406, 44.619522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127602, 37.733425, 44.453617>,  <37.300396, 37.965126, 44.177109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127602, 37.733425, 44.453617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424214, 0.545887, 0.722531,
		-0.795882, 0.605371, 0.009909,
		-0.431990, -0.579252, 0.691268,
		36.998005, 37.559650, 44.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158039, 38.480614, 44.756386>,  <37.300396, 37.965126, 44.177109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158039, 38.480614, 44.756386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129463, 38.117432, 44.921562>,  <37.112316, 37.899525, 45.020668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129463, 38.117432, 44.921562>,  <37.158039, 38.480614, 44.756386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129463, 38.117432, 44.921562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314214, 0.372436, 0.873247,
		-0.946660, 0.192137, 0.258684,
		-0.071440, -0.907951, 0.412943,
		37.108032, 37.845047, 45.045444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735008, 38.590019, 45.378178>,  <37.158039, 38.480614, 44.756386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735008, 38.590019, 45.378178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949951, 38.255222, 45.419540>,  <37.078915, 38.054344, 45.444359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949951, 38.255222, 45.419540>,  <36.735008, 38.590019, 45.378178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949951, 38.255222, 45.419540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199044, 0.245011, 0.948869,
		-0.819532, -0.489297, 0.298256,
		0.537354, -0.836994, 0.103402,
		37.111156, 38.004124, 45.450562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479492, 38.301979, 45.996201>,  <36.735008, 38.590019, 45.378178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479492, 38.301979, 45.996201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833851, 38.124557, 45.941879>,  <37.046467, 38.018105, 45.909286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833851, 38.124557, 45.941879>,  <36.479492, 38.301979, 45.996201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833851, 38.124557, 45.941879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212477, 0.127758, 0.968778,
		-0.412352, -0.887097, 0.207426,
		0.885900, -0.443551, -0.135806,
		37.099621, 37.991493, 45.901138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561214, 37.954102, 46.604481>,  <36.479492, 38.301979, 45.996201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561214, 37.954102, 46.604481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935207, 38.000439, 46.470379>,  <37.159603, 38.028240, 46.389915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935207, 38.000439, 46.470379>,  <36.561214, 37.954102, 46.604481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935207, 38.000439, 46.470379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326764, 0.086409, 0.941147,
		0.137994, -0.989502, 0.042938,
		0.934977, 0.115842, -0.335258,
		37.215702, 38.035191, 46.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950119, 37.445221, 47.027084>,  <36.561214, 37.954102, 46.604481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950119, 37.445221, 47.027084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208637, 37.705681, 46.867935>,  <37.363747, 37.861958, 46.772446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208637, 37.705681, 46.867935>,  <36.950119, 37.445221, 47.027084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208637, 37.705681, 46.867935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517158, 0.009644, 0.855836,
		0.561118, -0.758884, -0.330516,
		0.646293, 0.651154, -0.397874,
		37.402527, 37.901028, 46.748573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648613, 37.224136, 47.212727>,  <36.950119, 37.445221, 47.027084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648613, 37.224136, 47.212727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717270, 37.609852, 47.132050>,  <37.758465, 37.841282, 47.083645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717270, 37.609852, 47.132050>,  <37.648613, 37.224136, 47.212727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717270, 37.609852, 47.132050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352697, 0.131011, 0.926521,
		0.919861, -0.230163, -0.317617,
		0.171640, 0.964293, -0.201690,
		37.768761, 37.899139, 47.071541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343029, 37.290310, 47.443993>,  <37.648613, 37.224136, 47.212727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343029, 37.290310, 47.443993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224216, 37.671364, 47.417862>,  <38.152931, 37.899994, 47.402184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224216, 37.671364, 47.417862>,  <38.343029, 37.290310, 47.443993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224216, 37.671364, 47.417862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436924, 0.196426, 0.877789,
		0.849042, 0.232185, -0.474572,
		-0.297028, 0.952632, -0.065326,
		38.135109, 37.957153, 47.398266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993259, 37.703709, 47.620266>,  <38.343029, 37.290310, 47.443993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993259, 37.703709, 47.620266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678120, 37.943645, 47.676105>,  <38.489037, 38.087608, 47.709610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678120, 37.943645, 47.676105>,  <38.993259, 37.703709, 47.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678120, 37.943645, 47.676105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386111, 0.304479, 0.870753,
		0.479807, 0.739922, -0.471488,
		-0.787847, 0.599840, 0.139601,
		38.441765, 38.123596, 47.717987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276039, 38.189472, 48.005936>,  <38.993259, 37.703709, 47.620266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276039, 38.189472, 48.005936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880615, 38.204605, 48.064335>,  <38.643360, 38.213684, 48.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880615, 38.204605, 48.064335>,  <39.276039, 38.189472, 48.005936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880615, 38.204605, 48.064335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148576, 0.410726, 0.899571,
		-0.025938, 0.910973, -0.411648,
		-0.988561, 0.037828, 0.146002,
		38.584045, 38.215954, 48.108135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346508, 38.913021, 47.725262>,  <39.276039, 38.189472, 48.005936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346508, 38.913021, 47.725262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627354, 39.191330, 47.664673>,  <39.795860, 39.358315, 47.628319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627354, 39.191330, 47.664673>,  <39.346508, 38.913021, 47.725262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627354, 39.191330, 47.664673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285440, -0.469886, -0.835303,
		-0.652352, 0.543241, -0.528513,
		0.702112, 0.695771, -0.151469,
		39.837986, 39.400063, 47.619232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207180, 39.287075, 47.055157>,  <39.346508, 38.913021, 47.725262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207180, 39.287075, 47.055157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597332, 39.334229, 47.129719>,  <39.831421, 39.362518, 47.174454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597332, 39.334229, 47.129719>,  <39.207180, 39.287075, 47.055157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597332, 39.334229, 47.129719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211539, -0.260941, -0.941892,
		-0.062392, 0.958130, -0.279453,
		0.975376, 0.117882, 0.186401,
		39.889946, 39.369595, 47.185638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471905, 39.667496, 46.522263>,  <39.207180, 39.287075, 47.055157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471905, 39.667496, 46.522263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785946, 39.473965, 46.676941>,  <39.974369, 39.357845, 46.769749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785946, 39.473965, 46.676941>,  <39.471905, 39.667496, 46.522263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785946, 39.473965, 46.676941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235275, -0.344574, -0.908798,
		0.572944, 0.804476, -0.156693,
		0.785099, -0.483825, 0.386695,
		40.021477, 39.328815, 46.792950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960468, 39.668999, 45.895428>,  <39.471905, 39.667496, 46.522263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960468, 39.668999, 45.895428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115326, 39.395061, 46.142365>,  <40.208241, 39.230698, 46.290527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115326, 39.395061, 46.142365>,  <39.960468, 39.668999, 45.895428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115326, 39.395061, 46.142365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399767, -0.478665, -0.781707,
		0.830847, 0.549423, 0.088467,
		0.387142, -0.684846, 0.617339,
		40.231468, 39.189610, 46.327568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677132, 39.684799, 45.984726>,  <39.960468, 39.668999, 45.895428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677132, 39.684799, 45.984726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549835, 39.308842, 46.034256>,  <40.473457, 39.083267, 46.063976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549835, 39.308842, 46.034256>,  <40.677132, 39.684799, 45.984726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549835, 39.308842, 46.034256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522310, -0.282839, -0.804484,
		0.791149, -0.191339, 0.580924,
		-0.318237, -0.939889, 0.123829,
		40.454365, 39.026875, 46.071404>
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
