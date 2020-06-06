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
	<24.625664, 34.690414, 34.831306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471300, 35.045990, 34.929981>,  <24.378681, 35.259335, 34.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471300, 35.045990, 34.929981>,  <24.625664, 34.690414, 34.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471300, 35.045990, 34.929981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021767, 0.276097, -0.960883,
		-0.922280, -0.365444, -0.125898,
		-0.385909, 0.888944, 0.246684,
		24.355528, 35.312672, 35.003986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296799, 34.249268, 34.755322>,  <24.625664, 34.690414, 34.831306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296799, 34.249268, 34.755322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103985, 33.938381, 34.917099>,  <24.988297, 33.751850, 35.014164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103985, 33.938381, 34.917099>,  <25.296799, 34.249268, 34.755322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103985, 33.938381, 34.917099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181803, -0.540295, -0.821602,
		0.857084, -0.322509, 0.401740,
		-0.482032, -0.777219, 0.404444,
		24.959375, 33.705215, 35.038433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141973, 34.197887, 34.452374>,  <25.296799, 34.249268, 34.755322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141973, 34.197887, 34.452374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431458, 34.019947, 34.663410>,  <26.605148, 33.913185, 34.790031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431458, 34.019947, 34.663410>,  <26.141973, 34.197887, 34.452374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431458, 34.019947, 34.663410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629544, -0.112398, 0.768792,
		-0.282695, -0.888526, -0.361395,
		0.723711, -0.444847, 0.527591,
		26.648571, 33.886494, 34.821686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850641, 33.541302, 34.711452>,  <26.141973, 34.197887, 34.452374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850641, 33.541302, 34.711452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169273, 33.616253, 34.941357>,  <26.360453, 33.661224, 35.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169273, 33.616253, 34.941357>,  <25.850641, 33.541302, 34.711452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169273, 33.616253, 34.941357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552185, -0.161462, 0.817937,
		0.246069, -0.968926, -0.025148,
		0.796581, 0.187382, 0.574758,
		26.408247, 33.672466, 35.113785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037107, 32.988113, 35.230671>,  <25.850641, 33.541302, 34.711452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037107, 32.988113, 35.230671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137384, 33.353127, 35.359940>,  <26.197550, 33.572132, 35.437500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137384, 33.353127, 35.359940>,  <26.037107, 32.988113, 35.230671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137384, 33.353127, 35.359940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499586, -0.163994, 0.850600,
		0.829197, -0.374692, 0.414776,
		0.250692, 0.912531, 0.323174,
		26.212591, 33.626884, 35.456890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203644, 32.896282, 35.918026>,  <26.037107, 32.988113, 35.230671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203644, 32.896282, 35.918026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102581, 33.282059, 35.886978>,  <26.041943, 33.513523, 35.868347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102581, 33.282059, 35.886978>,  <26.203644, 32.896282, 35.918026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102581, 33.282059, 35.886978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559006, -0.080024, 0.825293,
		0.789731, 0.251909, 0.559345,
		-0.252659, 0.964437, -0.077621,
		26.026783, 33.571388, 35.863693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383032, 33.356724, 36.463070>,  <26.203644, 32.896282, 35.918026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383032, 33.356724, 36.463070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051727, 33.529999, 36.320896>,  <25.852945, 33.633965, 36.235592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051727, 33.529999, 36.320896>,  <26.383032, 33.356724, 36.463070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051727, 33.529999, 36.320896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423192, -0.067825, 0.903498,
		0.367279, 0.898747, 0.239500,
		-0.828260, 0.433190, -0.355432,
		25.803249, 33.659954, 36.214268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185104, 33.841717, 36.931114>,  <26.383032, 33.356724, 36.463070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185104, 33.841717, 36.931114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859476, 33.696358, 36.749905>,  <25.664099, 33.609142, 36.641178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859476, 33.696358, 36.749905>,  <26.185104, 33.841717, 36.931114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859476, 33.696358, 36.749905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371321, -0.274091, 0.887127,
		-0.446553, 0.890400, 0.088191,
		-0.814071, -0.363402, -0.453021,
		25.615255, 33.587337, 36.613998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590506, 34.219498, 37.374168>,  <26.185104, 33.841717, 36.931114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590506, 34.219498, 37.374168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478357, 33.887230, 37.181759>,  <25.411068, 33.687870, 37.066311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478357, 33.887230, 37.181759>,  <25.590506, 34.219498, 37.374168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478357, 33.887230, 37.181759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608905, -0.233485, 0.758103,
		-0.742043, 0.505448, -0.440335,
		-0.280370, -0.830667, -0.481026,
		25.394247, 33.638031, 37.037453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873098, 34.152065, 37.487225>,  <25.590506, 34.219498, 37.374168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873098, 34.152065, 37.487225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039818, 33.797371, 37.407249>,  <25.139849, 33.584553, 37.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039818, 33.797371, 37.407249>,  <24.873098, 34.152065, 37.487225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039818, 33.797371, 37.407249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397999, -0.375770, 0.836895,
		-0.817238, -0.269241, -0.509541,
		0.416797, -0.886739, -0.199936,
		25.164858, 33.531349, 37.347267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.317657, 33.692406, 37.660763>,  <24.873098, 34.152065, 37.487225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.317657, 33.692406, 37.660763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615606, 33.431831, 37.603077>,  <24.794376, 33.275486, 37.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615606, 33.431831, 37.603077>,  <24.317657, 33.692406, 37.660763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615606, 33.431831, 37.603077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312567, -0.531661, 0.787171,
		-0.589462, -0.541267, -0.599637,
		0.744873, -0.651434, -0.144212,
		24.839069, 33.236401, 37.559814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.053844, 33.030319, 37.597038>,  <24.317657, 33.692406, 37.660763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.053844, 33.030319, 37.597038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429836, 32.980728, 37.724205>,  <24.655432, 32.950974, 37.800507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429836, 32.980728, 37.724205>,  <24.053844, 33.030319, 37.597038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429836, 32.980728, 37.724205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336020, -0.498574, 0.799071,
		0.059443, -0.857936, -0.510306,
		0.939977, -0.123974, 0.317920,
		24.711830, 32.943535, 37.819580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285488, 32.306450, 37.801296>,  <24.053844, 33.030319, 37.597038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285488, 32.306450, 37.801296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462240, 32.587517, 38.024364>,  <24.568293, 32.756157, 38.158207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462240, 32.587517, 38.024364>,  <24.285488, 32.306450, 37.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462240, 32.587517, 38.024364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201186, -0.528198, 0.824943,
		0.874222, -0.476723, -0.092034,
		0.441881, 0.702668, 0.557672,
		24.594805, 32.798317, 38.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964392, 31.995031, 37.986141>,  <24.285488, 32.306450, 37.801296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964392, 31.995031, 37.986141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793962, 32.257141, 38.235645>,  <24.691704, 32.414406, 38.385349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793962, 32.257141, 38.235645>,  <24.964392, 31.995031, 37.986141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793962, 32.257141, 38.235645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152128, -0.731552, 0.664597,
		0.891806, 0.188276, 0.411382,
		-0.426075, 0.655274, 0.623760,
		24.666140, 32.453724, 38.422771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499155, 32.186230, 38.559299>,  <24.964392, 31.995031, 37.986141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499155, 32.186230, 38.559299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769077, 32.122948, 38.847633>,  <25.931030, 32.084976, 39.020634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769077, 32.122948, 38.847633>,  <25.499155, 32.186230, 38.559299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769077, 32.122948, 38.847633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123624, 0.987183, 0.100935,
		-0.727568, 0.021002, 0.685714,
		0.674805, -0.158207, 0.720839,
		25.971519, 32.075485, 39.063885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866793, 32.766060, 38.179783>,  <25.499155, 32.186230, 38.559299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866793, 32.766060, 38.179783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480946, 32.789238, 38.076904>,  <25.249437, 32.803146, 38.015175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480946, 32.789238, 38.076904>,  <25.866793, 32.766060, 38.179783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480946, 32.789238, 38.076904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263527, 0.241187, -0.934014,
		0.007911, -0.968747, -0.247924,
		-0.964620, 0.057945, -0.257200,
		25.191559, 32.806622, 37.999744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758938, 32.353539, 37.667118>,  <25.866793, 32.766060, 38.179783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758938, 32.353539, 37.667118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487747, 32.642792, 37.614315>,  <25.325033, 32.816345, 37.582634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487747, 32.642792, 37.614315>,  <25.758938, 32.353539, 37.667118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487747, 32.642792, 37.614315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347266, 0.156808, -0.924563,
		-0.647883, -0.672673, -0.357432,
		-0.677977, 0.723133, -0.132003,
		25.284353, 32.859734, 37.574715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461267, 32.320477, 37.039406>,  <25.758938, 32.353539, 37.667118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461267, 32.320477, 37.039406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369139, 32.699001, 37.130127>,  <25.313862, 32.926117, 37.184559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369139, 32.699001, 37.130127>,  <25.461267, 32.320477, 37.039406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369139, 32.699001, 37.130127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279537, 0.287585, -0.916053,
		-0.932100, -0.147590, -0.330768,
		-0.230324, 0.946315, 0.226801,
		25.300041, 32.982895, 37.198166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060831, 32.474041, 36.444115>,  <25.461267, 32.320477, 37.039406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060831, 32.474041, 36.444115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155735, 32.821991, 36.617100>,  <25.212677, 33.030762, 36.720890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155735, 32.821991, 36.617100>,  <25.060831, 32.474041, 36.444115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155735, 32.821991, 36.617100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149599, 0.407149, -0.901027,
		-0.959858, 0.278474, -0.033532,
		0.237260, 0.869875, 0.432464,
		25.226913, 33.082954, 36.746838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639347, 32.918564, 36.129536>,  <25.060831, 32.474041, 36.444115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639347, 32.918564, 36.129536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945595, 33.131172, 36.274483>,  <25.129343, 33.258739, 36.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945595, 33.131172, 36.274483>,  <24.639347, 32.918564, 36.129536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945595, 33.131172, 36.274483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132723, 0.420658, -0.897458,
		-0.629453, 0.735206, 0.251519,
		0.765620, 0.531525, 0.362363,
		25.175282, 33.290630, 36.383190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596098, 33.605862, 35.817364>,  <24.639347, 32.918564, 36.129536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596098, 33.605862, 35.817364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973185, 33.501957, 35.901085>,  <25.199436, 33.439613, 35.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973185, 33.501957, 35.901085>,  <24.596098, 33.605862, 35.817364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973185, 33.501957, 35.901085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272656, 0.238482, -0.932086,
		0.192203, 0.935762, 0.295646,
		0.942718, -0.259760, 0.209304,
		25.256001, 33.424030, 35.963875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906736, 34.235291, 35.655342>,  <24.596098, 33.605862, 35.817364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906736, 34.235291, 35.655342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169291, 33.934784, 35.627762>,  <25.326822, 33.754478, 35.611214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169291, 33.934784, 35.627762>,  <24.906736, 34.235291, 35.655342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169291, 33.934784, 35.627762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337570, 0.374204, -0.863723,
		0.674689, 0.543660, 0.499228,
		0.656385, -0.751269, -0.068949,
		25.366205, 33.709404, 35.607079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570551, 34.493664, 35.815361>,  <24.906736, 34.235291, 35.655342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570551, 34.493664, 35.815361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780664, 34.288837, 36.087204>,  <25.906733, 34.165939, 36.250309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780664, 34.288837, 36.087204>,  <25.570551, 34.493664, 35.815361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780664, 34.288837, 36.087204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679762, -0.227904, -0.697125,
		0.511860, 0.828158, 0.228370,
		0.525283, -0.512068, 0.679605,
		25.938250, 34.135216, 36.291084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238188, 34.740429, 35.982349>,  <25.570551, 34.493664, 35.815361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238188, 34.740429, 35.982349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230865, 34.340508, 35.985493>,  <26.226473, 34.100555, 35.987381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230865, 34.340508, 35.985493>,  <26.238188, 34.740429, 35.982349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230865, 34.340508, 35.985493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808493, -0.019428, -0.588185,
		0.588221, -0.004411, 0.808688,
		-0.018305, -0.999802, 0.007862,
		26.225374, 34.040565, 35.987850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908958, 34.534328, 35.947716>,  <26.238188, 34.740429, 35.982349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908958, 34.534328, 35.947716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695883, 34.228214, 35.803177>,  <26.568037, 34.044544, 35.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695883, 34.228214, 35.803177>,  <26.908958, 34.534328, 35.947716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695883, 34.228214, 35.803177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668416, -0.118548, -0.734280,
		0.519099, -0.632675, 0.574681,
		-0.532688, -0.765290, -0.361352,
		26.536076, 33.998627, 35.694771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383512, 33.928696, 35.933525>,  <26.908958, 34.534328, 35.947716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383512, 33.928696, 35.933525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086538, 33.864403, 35.673386>,  <26.908354, 33.825829, 35.517300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086538, 33.864403, 35.673386>,  <27.383512, 33.928696, 35.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086538, 33.864403, 35.673386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669878, -0.167499, -0.723331,
		0.007327, -0.972682, 0.232026,
		-0.742435, -0.160729, -0.650351,
		26.863808, 33.816185, 35.478279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525635, 33.278847, 35.504452>,  <27.383512, 33.928696, 35.933525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525635, 33.278847, 35.504452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264492, 33.488869, 35.286060>,  <27.107805, 33.614880, 35.155025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264492, 33.488869, 35.286060>,  <27.525635, 33.278847, 35.504452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264492, 33.488869, 35.286060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588671, -0.101924, -0.801922,
		-0.476699, -0.844945, -0.242541,
		-0.652859, 0.525052, -0.545981,
		27.068634, 33.646385, 35.122265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123577, 32.836639, 34.885460>,  <27.525635, 33.278847, 35.504452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123577, 32.836639, 34.885460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168230, 33.231453, 34.839333>,  <27.195023, 33.468342, 34.811657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168230, 33.231453, 34.839333>,  <27.123577, 32.836639, 34.885460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168230, 33.231453, 34.839333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591715, -0.159252, -0.790261,
		-0.798380, 0.019983, -0.601822,
		0.111633, 0.987036, -0.115319,
		27.201719, 33.527565, 34.804737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258680, 32.416100, 35.504215>,  <27.123577, 32.836639, 34.885460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258680, 32.416100, 35.504215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589977, 32.633377, 35.559277>,  <27.788755, 32.763744, 35.592312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589977, 32.633377, 35.559277>,  <27.258680, 32.416100, 35.504215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589977, 32.633377, 35.559277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198724, -0.514404, 0.834204,
		0.523947, -0.663570, -0.533999,
		0.828245, 0.543197, 0.137653,
		27.838451, 32.796337, 35.600571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886873, 31.986279, 35.478882>,  <27.258680, 32.416100, 35.504215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886873, 31.986279, 35.478882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969563, 32.291718, 35.723564>,  <28.019176, 32.474979, 35.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969563, 32.291718, 35.723564>,  <27.886873, 31.986279, 35.478882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969563, 32.291718, 35.723564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252429, -0.645670, 0.720687,
		0.945275, 0.005430, -0.326229,
		0.206723, 0.763597, 0.611707,
		28.031580, 32.520798, 35.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495203, 31.840521, 35.810047>,  <27.886873, 31.986279, 35.478882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495203, 31.840521, 35.810047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358046, 32.109089, 36.072838>,  <28.275751, 32.270229, 36.230511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358046, 32.109089, 36.072838>,  <28.495203, 31.840521, 35.810047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358046, 32.109089, 36.072838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060152, -0.713636, 0.697929,
		0.937446, 0.199797, 0.285088,
		-0.342894, 0.671420, 0.656978,
		28.255178, 32.310516, 36.269932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808693, 31.741734, 36.362293>,  <28.495203, 31.840521, 35.810047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808693, 31.741734, 36.362293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498655, 31.952665, 36.501522>,  <28.312634, 32.079224, 36.585060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498655, 31.952665, 36.501522>,  <28.808693, 31.741734, 36.362293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498655, 31.952665, 36.501522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051127, -0.601416, 0.797299,
		0.629774, 0.600185, 0.493115,
		-0.775094, 0.527330, 0.348070,
		28.266127, 32.110863, 36.605942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931915, 31.836721, 37.081329>,  <28.808693, 31.741734, 36.362293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931915, 31.836721, 37.081329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538061, 31.884769, 37.030624>,  <28.301748, 31.913599, 37.000202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538061, 31.884769, 37.030624>,  <28.931915, 31.836721, 37.081329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538061, 31.884769, 37.030624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170575, -0.505954, 0.845526,
		0.037429, 0.854155, 0.518669,
		-0.984634, 0.120120, -0.126760,
		28.242672, 31.920805, 36.992596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666716, 32.034943, 37.719513>,  <28.931915, 31.836721, 37.081329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666716, 32.034943, 37.719513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351355, 31.862576, 37.543907>,  <28.162138, 31.759155, 37.438545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351355, 31.862576, 37.543907>,  <28.666716, 32.034943, 37.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351355, 31.862576, 37.543907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188588, -0.509984, 0.839256,
		-0.585538, 0.744465, 0.320807,
		-0.788403, -0.430916, -0.439012,
		28.114834, 31.733301, 37.412205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220190, 31.965019, 38.248547>,  <28.666716, 32.034943, 37.719513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220190, 31.965019, 38.248547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133581, 31.712299, 37.950836>,  <28.081615, 31.560667, 37.772209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133581, 31.712299, 37.950836>,  <28.220190, 31.965019, 38.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133581, 31.712299, 37.950836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165169, -0.727666, 0.665748,
		-0.962205, 0.267080, 0.053201,
		-0.216521, -0.631799, -0.744277,
		28.068624, 31.522760, 37.727554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761984, 31.477388, 38.256691>,  <28.220190, 31.965019, 38.248547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761984, 31.477388, 38.256691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960974, 31.308029, 37.953838>,  <28.080368, 31.206413, 37.772125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960974, 31.308029, 37.953838>,  <27.761984, 31.477388, 38.256691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960974, 31.308029, 37.953838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848250, 0.054673, 0.526767,
		-0.181637, -0.904293, 0.386345,
		0.497475, -0.423397, -0.757136,
		28.110216, 31.181009, 37.726696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508148, 32.034008, 38.450996>,  <27.761984, 31.477388, 38.256691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508148, 32.034008, 38.450996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526106, 31.830530, 38.107086>,  <27.536880, 31.708443, 37.900742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526106, 31.830530, 38.107086>,  <27.508148, 32.034008, 38.450996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526106, 31.830530, 38.107086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413226, -0.793018, 0.447623,
		-0.909521, 0.335184, -0.245810,
		0.044896, -0.508698, -0.859774,
		27.539576, 31.677921, 37.849155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880383, 31.690050, 38.371914>,  <27.508148, 32.034008, 38.450996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880383, 31.690050, 38.371914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122154, 31.476212, 38.135651>,  <27.267218, 31.347908, 37.993893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122154, 31.476212, 38.135651>,  <26.880383, 31.690050, 38.371914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122154, 31.476212, 38.135651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196586, -0.818575, 0.539712,
		-0.772020, -0.210106, -0.599867,
		0.604433, -0.534594, -0.590652,
		27.303484, 31.315834, 37.958454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543434, 31.044565, 38.230606>,  <26.880383, 31.690050, 38.371914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543434, 31.044565, 38.230606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929203, 30.977371, 38.148956>,  <27.160666, 30.937054, 38.099968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929203, 30.977371, 38.148956>,  <26.543434, 31.044565, 38.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929203, 30.977371, 38.148956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017754, -0.811563, 0.583995,
		-0.263764, -0.559595, -0.785673,
		0.964424, -0.167986, -0.204126,
		27.218531, 30.926975, 38.087719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574364, 30.354881, 38.391911>,  <26.543434, 31.044565, 38.230606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574364, 30.354881, 38.391911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963871, 30.445080, 38.379757>,  <27.197577, 30.499199, 38.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963871, 30.445080, 38.379757>,  <26.574364, 30.354881, 38.391911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963871, 30.445080, 38.379757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196426, -0.765704, 0.612466,
		0.114846, -0.602369, -0.789913,
		0.973770, 0.225498, -0.030383,
		27.256002, 30.512730, 38.370644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065998, 30.593351, 38.952744>,  <26.574364, 30.354881, 38.391911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065998, 30.593351, 38.952744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397532, 30.370268, 38.934895>,  <27.596453, 30.236418, 38.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397532, 30.370268, 38.934895>,  <27.065998, 30.593351, 38.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397532, 30.370268, 38.934895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228931, 0.410837, -0.882498,
		0.510511, 0.721230, 0.468193,
		0.828836, -0.557709, -0.044624,
		27.646183, 30.202955, 38.921509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737616, 30.981050, 38.839417>,  <27.065998, 30.593351, 38.952744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737616, 30.981050, 38.839417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732792, 30.615564, 38.676949>,  <27.729897, 30.396273, 38.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732792, 30.615564, 38.676949>,  <27.737616, 30.981050, 38.839417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732792, 30.615564, 38.676949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281266, 0.386701, -0.878266,
		0.959554, -0.124835, 0.252333,
		-0.012061, -0.913717, -0.406173,
		27.729174, 30.341450, 38.555096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331808, 30.902542, 38.448219>,  <27.737616, 30.981050, 38.839417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331808, 30.902542, 38.448219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009487, 30.696985, 38.330509>,  <27.816093, 30.573652, 38.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009487, 30.696985, 38.330509>,  <28.331808, 30.902542, 38.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009487, 30.696985, 38.330509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115321, 0.351239, -0.929157,
		0.580845, -0.782654, -0.223767,
		-0.805804, -0.513891, -0.294272,
		27.767746, 30.542818, 38.242229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391642, 30.534990, 37.746132>,  <28.331808, 30.902542, 38.448219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391642, 30.534990, 37.746132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009781, 30.625364, 37.823692>,  <27.780664, 30.679588, 37.870228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009781, 30.625364, 37.823692>,  <28.391642, 30.534990, 37.746132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009781, 30.625364, 37.823692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007623, 0.632494, -0.774528,
		-0.297630, -0.740882, -0.602088,
		-0.954651, 0.225933, 0.193897,
		27.723385, 30.693144, 37.881863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068996, 30.525131, 37.126652>,  <28.391642, 30.534990, 37.746132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068996, 30.525131, 37.126652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854017, 30.772732, 37.355732>,  <27.725029, 30.921291, 37.493179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854017, 30.772732, 37.355732>,  <28.068996, 30.525131, 37.126652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854017, 30.772732, 37.355732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241561, 0.763667, -0.598716,
		-0.807959, -0.183437, -0.559958,
		-0.537449, 0.619002, 0.572700,
		27.692783, 30.958433, 37.527542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573105, 30.949469, 36.756165>,  <28.068996, 30.525131, 37.126652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573105, 30.949469, 36.756165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616343, 31.165768, 37.089848>,  <27.642284, 31.295547, 37.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616343, 31.165768, 37.089848>,  <27.573105, 30.949469, 36.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616343, 31.165768, 37.089848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235725, 0.801257, -0.549928,
		-0.965790, 0.256088, -0.040857,
		0.108093, 0.540746, 0.834212,
		27.648771, 31.327991, 37.340111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056128, 31.501505, 36.844215>,  <27.573105, 30.949469, 36.756165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056128, 31.501505, 36.844215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402637, 31.596050, 37.020260>,  <27.610544, 31.652779, 37.125889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402637, 31.596050, 37.020260>,  <27.056128, 31.501505, 36.844215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402637, 31.596050, 37.020260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121021, 0.755456, -0.643926,
		-0.484687, 0.611080, 0.625828,
		0.866275, 0.236364, 0.440113,
		27.662519, 31.666960, 37.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976040, 32.180576, 36.904240>,  <27.056128, 31.501505, 36.844215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976040, 32.180576, 36.904240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359222, 32.069111, 36.931561>,  <27.589132, 32.002232, 36.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359222, 32.069111, 36.931561>,  <26.976040, 32.180576, 36.904240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359222, 32.069111, 36.931561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226426, 0.588040, -0.776492,
		0.176215, 0.759312, 0.626414,
		0.957956, -0.278666, 0.068307,
		27.646608, 31.985512, 36.952053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163948, 32.811512, 36.849598>,  <26.976040, 32.180576, 36.904240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163948, 32.811512, 36.849598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500690, 32.602722, 36.794727>,  <27.702736, 32.477448, 36.761806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500690, 32.602722, 36.794727>,  <27.163948, 32.811512, 36.849598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500690, 32.602722, 36.794727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354870, 0.726868, -0.587988,
		0.406625, 0.446322, 0.797153,
		0.841857, -0.521976, -0.137176,
		27.753248, 32.446129, 36.753574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700897, 33.285370, 36.929470>,  <27.163948, 32.811512, 36.849598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700897, 33.285370, 36.929470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847479, 32.978840, 36.718391>,  <27.935427, 32.794922, 36.591743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847479, 32.978840, 36.718391>,  <27.700897, 33.285370, 36.929470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847479, 32.978840, 36.718391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380907, 0.641000, -0.666355,
		0.848895, 0.043185, 0.526794,
		0.366452, -0.766325, -0.527692,
		27.957415, 32.748943, 36.560085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379969, 33.468739, 36.721828>,  <27.700897, 33.285370, 36.929470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379969, 33.468739, 36.721828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251480, 33.184380, 36.471569>,  <28.174387, 33.013763, 36.321415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251480, 33.184380, 36.471569>,  <28.379969, 33.468739, 36.721828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251480, 33.184380, 36.471569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462411, 0.458803, -0.758733,
		0.826434, -0.533027, 0.181353,
		-0.321220, -0.710903, -0.625648,
		28.155113, 32.971107, 36.283875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994610, 33.312901, 36.332943>,  <28.379969, 33.468739, 36.721828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994610, 33.312901, 36.332943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676195, 33.205799, 36.115822>,  <28.485146, 33.141537, 35.985550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676195, 33.205799, 36.115822>,  <28.994610, 33.312901, 36.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676195, 33.205799, 36.115822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359513, 0.512291, -0.779942,
		0.486899, -0.816008, -0.311545,
		-0.796040, -0.267749, -0.542799,
		28.437384, 33.125473, 35.952980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138210, 32.954319, 35.700222>,  <28.994610, 33.312901, 36.332943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138210, 32.954319, 35.700222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802382, 33.170086, 35.674465>,  <28.600883, 33.299545, 35.659012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802382, 33.170086, 35.674465>,  <29.138210, 32.954319, 35.700222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802382, 33.170086, 35.674465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396548, 0.527517, -0.751316,
		-0.371307, -0.656318, -0.656794,
		-0.839572, 0.539419, -0.064391,
		28.550510, 33.331913, 35.655148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836864, 32.776024, 35.763889>,  <29.138210, 32.954319, 35.700222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836864, 32.776024, 35.763889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916885, 33.090050, 35.529400>,  <29.964899, 33.278465, 35.388706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916885, 33.090050, 35.529400>,  <29.836864, 32.776024, 35.763889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916885, 33.090050, 35.529400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223853, -0.545868, -0.807415,
		-0.953870, 0.292754, 0.066535,
		0.200054, 0.785063, -0.586221,
		29.976902, 33.325569, 35.353535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504444, 32.627804, 36.275063>,  <29.836864, 32.776024, 35.763889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504444, 32.627804, 36.275063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843410, 32.715179, 36.468628>,  <31.046791, 32.767605, 36.584766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843410, 32.715179, 36.468628>,  <30.504444, 32.627804, 36.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843410, 32.715179, 36.468628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305338, -0.946144, -0.107609,
		0.434343, 0.238946, -0.868476,
		0.847417, 0.218439, 0.483911,
		31.097635, 32.780712, 36.613800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101530, 32.390675, 35.897194>,  <30.504444, 32.627804, 36.275063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101530, 32.390675, 35.897194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233101, 32.429836, 36.272900>,  <31.312044, 32.453335, 36.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233101, 32.429836, 36.272900>,  <31.101530, 32.390675, 35.897194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233101, 32.429836, 36.272900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305659, -0.952109, -0.007799,
		0.893520, 0.289660, -0.343101,
		0.328929, 0.097903, 0.939266,
		31.331779, 32.459206, 36.554680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858217, 32.274078, 35.878422>,  <31.101530, 32.390675, 35.897194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858217, 32.274078, 35.878422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705084, 32.179726, 36.235699>,  <31.613203, 32.123116, 36.450066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705084, 32.179726, 36.235699>,  <31.858217, 32.274078, 35.878422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705084, 32.179726, 36.235699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585656, -0.809706, 0.037186,
		0.714453, 0.537341, 0.448131,
		-0.382836, -0.235883, 0.893194,
		31.590233, 32.108959, 36.503658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481045, 32.095840, 36.355469>,  <31.858217, 32.274078, 35.878422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481045, 32.095840, 36.355469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153446, 31.905029, 36.483028>,  <31.956888, 31.790543, 36.559563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153446, 31.905029, 36.483028>,  <32.481045, 32.095840, 36.355469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153446, 31.905029, 36.483028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548815, -0.813439, 0.192665,
		0.167496, 0.332806, 0.928001,
		-0.818992, -0.477030, 0.318896,
		31.907749, 31.761921, 36.578697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447273, 32.026279, 37.075981>,  <32.481045, 32.095840, 36.355469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447273, 32.026279, 37.075981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281696, 31.731665, 36.862007>,  <32.182350, 31.554895, 36.733624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281696, 31.731665, 36.862007>,  <32.447273, 32.026279, 37.075981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281696, 31.731665, 36.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759470, -0.603406, 0.243121,
		-0.501852, -0.305630, 0.809157,
		-0.413945, -0.736541, -0.534937,
		32.157513, 31.510702, 36.701527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512516, 31.287100, 37.381973>,  <32.447273, 32.026279, 37.075981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512516, 31.287100, 37.381973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452911, 31.229420, 36.990665>,  <32.417149, 31.194813, 36.755882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452911, 31.229420, 36.990665>,  <32.512516, 31.287100, 37.381973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452911, 31.229420, 36.990665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538884, -0.841336, 0.041931,
		-0.829096, -0.520923, 0.203074,
		-0.149010, -0.144198, -0.978265,
		32.408207, 31.186161, 36.697186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045773, 30.721174, 37.173595>,  <32.512516, 31.287100, 37.381973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045773, 30.721174, 37.173595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382877, 30.813749, 36.979198>,  <32.585140, 30.869295, 36.862560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382877, 30.813749, 36.979198>,  <32.045773, 30.721174, 37.173595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382877, 30.813749, 36.979198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322975, -0.939688, 0.112577,
		-0.430622, -0.251838, -0.866685,
		0.842764, 0.231439, -0.485988,
		32.635708, 30.883181, 36.833401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449619, 30.904924, 37.493057>,  <32.045773, 30.721174, 37.173595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449619, 30.904924, 37.493057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673822, 31.128592, 37.248711>,  <31.808344, 31.262791, 37.102100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673822, 31.128592, 37.248711>,  <31.449619, 30.904924, 37.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673822, 31.128592, 37.248711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454955, 0.824265, 0.337053,
		0.691987, 0.088996, 0.716404,
		0.560510, 0.559167, -0.610869,
		31.841974, 31.296341, 37.065449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592457, 31.619453, 37.836918>,  <31.449619, 30.904924, 37.493057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592457, 31.619453, 37.836918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594433, 31.661819, 37.439171>,  <31.595619, 31.687239, 37.200523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594433, 31.661819, 37.439171>,  <31.592457, 31.619453, 37.836918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594433, 31.661819, 37.439171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268326, 0.958049, 0.100714,
		0.963316, 0.266316, 0.033153,
		0.004941, 0.105915, -0.994363,
		31.595915, 31.693594, 37.140862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352110, 32.230061, 37.834343>,  <31.592457, 31.619453, 37.836918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352110, 32.230061, 37.834343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457085, 32.179325, 37.451714>,  <31.520069, 32.148884, 37.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457085, 32.179325, 37.451714>,  <31.352110, 32.230061, 37.834343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457085, 32.179325, 37.451714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304729, 0.929699, -0.206880,
		0.915569, 0.345789, 0.205334,
		0.262436, -0.126841, -0.956576,
		31.535816, 32.141273, 37.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757650, 32.738369, 37.757122>,  <31.352110, 32.230061, 37.834343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757650, 32.738369, 37.757122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650288, 32.639866, 37.384602>,  <31.585869, 32.580765, 37.161091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650288, 32.639866, 37.384602>,  <31.757650, 32.738369, 37.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650288, 32.639866, 37.384602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230830, 0.955048, -0.186012,
		0.935240, 0.165044, -0.313188,
		-0.268409, -0.246260, -0.931297,
		31.569765, 32.565987, 37.105213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149990, 33.164654, 37.234863>,  <31.757650, 32.738369, 37.757122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149990, 33.164654, 37.234863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807522, 33.037106, 37.072235>,  <31.602041, 32.960575, 36.974659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807522, 33.037106, 37.072235>,  <32.149990, 33.164654, 37.234863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807522, 33.037106, 37.072235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272554, 0.947196, -0.168923,
		0.438969, -0.033813, -0.897866,
		-0.856166, -0.318869, -0.406574,
		31.550673, 32.941444, 36.950264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863987, 33.497837, 36.643837>,  <32.149990, 33.164654, 37.234863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863987, 33.497837, 36.643837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568829, 33.338501, 36.861767>,  <31.391733, 33.242901, 36.992527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568829, 33.338501, 36.861767>,  <31.863987, 33.497837, 36.643837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568829, 33.338501, 36.861767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505999, 0.860713, -0.056016,
		-0.446627, -0.317016, -0.836675,
		-0.737896, -0.398339, 0.544827,
		31.347460, 33.218998, 37.025215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457474, 33.704807, 36.429672>,  <31.863987, 33.497837, 36.643837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457474, 33.704807, 36.429672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705196, 34.012753, 36.491333>,  <32.853828, 34.197521, 36.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705196, 34.012753, 36.491333>,  <32.457474, 33.704807, 36.429672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705196, 34.012753, 36.491333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780725, -0.583021, -0.224846,
		-0.083227, 0.259600, -0.962123,
		0.619308, 0.769867, 0.154153,
		32.890987, 34.243713, 36.537579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764713, 33.891899, 35.738087>,  <32.457474, 33.704807, 36.429672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764713, 33.891899, 35.738087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982700, 34.035851, 36.041004>,  <33.113495, 34.122219, 36.222755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982700, 34.035851, 36.041004>,  <32.764713, 33.891899, 35.738087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982700, 34.035851, 36.041004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807212, -0.469451, -0.357805,
		0.226748, 0.806292, -0.546333,
		0.544972, 0.359874, 0.757295,
		33.146191, 34.143814, 36.268192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280926, 34.277325, 35.413185>,  <32.764713, 33.891899, 35.738087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280926, 34.277325, 35.413185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425385, 34.205933, 35.779293>,  <33.512058, 34.163097, 35.998959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425385, 34.205933, 35.779293>,  <33.280926, 34.277325, 35.413185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425385, 34.205933, 35.779293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873810, -0.277967, -0.398988,
		0.325626, 0.943864, 0.055571,
		0.361143, -0.178479, 0.915271,
		33.533726, 34.152390, 36.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881783, 34.731392, 35.536270>,  <33.280926, 34.277325, 35.413185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881783, 34.731392, 35.536270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921036, 34.409393, 35.770313>,  <33.944588, 34.216194, 35.910740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921036, 34.409393, 35.770313>,  <33.881783, 34.731392, 35.536270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921036, 34.409393, 35.770313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926535, -0.140659, -0.348924,
		0.363184, 0.576361, 0.732056,
		0.098136, -0.804999, 0.585104,
		33.950478, 34.167892, 35.945843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576820, 34.527027, 35.575920>,  <33.881783, 34.731392, 35.536270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576820, 34.527027, 35.575920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435112, 34.205490, 35.767056>,  <34.350086, 34.012569, 35.881737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435112, 34.205490, 35.767056>,  <34.576820, 34.527027, 35.575920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435112, 34.205490, 35.767056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854320, -0.486015, -0.184192,
		0.380299, 0.342976, 0.858918,
		-0.354273, -0.803839, 0.477842,
		34.328831, 33.964340, 35.910408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152889, 34.246521, 35.766911>,  <34.576820, 34.527027, 35.575920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152889, 34.246521, 35.766911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880215, 33.958912, 35.821030>,  <34.716610, 33.786346, 35.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880215, 33.958912, 35.821030>,  <35.152889, 34.246521, 35.766911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880215, 33.958912, 35.821030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662338, -0.685035, -0.303372,
		0.310818, -0.117190, 0.943217,
		-0.681689, -0.719022, 0.135302,
		34.675709, 33.743206, 35.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465645, 33.678368, 36.080219>,  <35.152889, 34.246521, 35.766911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465645, 33.678368, 36.080219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147560, 33.506393, 35.909203>,  <34.956707, 33.403210, 35.806591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147560, 33.506393, 35.909203>,  <35.465645, 33.678368, 36.080219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147560, 33.506393, 35.909203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592124, -0.702398, -0.395002,
		-0.130478, -0.567268, 0.813131,
		-0.795214, -0.429935, -0.427540,
		34.908997, 33.377415, 35.780941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355846, 32.863979, 36.240688>,  <35.465645, 33.678368, 36.080219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355846, 32.863979, 36.240688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168816, 32.935455, 35.894405>,  <35.056599, 32.978340, 35.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168816, 32.935455, 35.894405>,  <35.355846, 32.863979, 36.240688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168816, 32.935455, 35.894405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484703, -0.767164, -0.420145,
		-0.739212, -0.616059, 0.272098,
		-0.467578, 0.178689, -0.865703,
		35.028542, 32.989063, 35.634693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305931, 32.218018, 35.993866>,  <35.355846, 32.863979, 36.240688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305931, 32.218018, 35.993866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234131, 32.446678, 35.673618>,  <35.191051, 32.583874, 35.481468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234131, 32.446678, 35.673618>,  <35.305931, 32.218018, 35.993866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234131, 32.446678, 35.673618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498161, -0.648957, -0.575056,
		-0.848300, -0.502062, -0.168286,
		-0.179504, 0.571654, -0.800619,
		35.180279, 32.618176, 35.433434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849075, 31.757677, 35.526463>,  <35.305931, 32.218018, 35.993866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849075, 31.757677, 35.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012989, 32.047218, 35.304432>,  <35.111340, 32.220943, 35.171215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012989, 32.047218, 35.304432>,  <34.849075, 31.757677, 35.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012989, 32.047218, 35.304432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367077, -0.687928, -0.626107,
		-0.835061, 0.052817, -0.547616,
		0.409789, 0.723855, -0.555074,
		35.135925, 32.264374, 35.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616684, 31.717590, 34.741154>,  <34.849075, 31.757677, 35.526463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616684, 31.717590, 34.741154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934566, 31.957684, 34.705013>,  <35.125298, 32.101738, 34.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934566, 31.957684, 34.705013>,  <34.616684, 31.717590, 34.741154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934566, 31.957684, 34.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210248, -0.411835, -0.886672,
		-0.569421, 0.685646, -0.453485,
		0.794705, 0.600234, -0.090351,
		35.172977, 32.137753, 34.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608757, 32.009098, 34.038563>,  <34.616684, 31.717590, 34.741154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608757, 32.009098, 34.038563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986145, 32.050690, 34.164455>,  <35.212578, 32.075645, 34.239990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986145, 32.050690, 34.164455>,  <34.608757, 32.009098, 34.038563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986145, 32.050690, 34.164455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331273, -0.328061, -0.884666,
		0.011263, 0.938916, -0.343961,
		0.943468, 0.103981, 0.314733,
		35.269184, 32.081882, 34.258877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939648, 32.404808, 33.563850>,  <34.608757, 32.009098, 34.038563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939648, 32.404808, 33.563850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243374, 32.224831, 33.751884>,  <35.425610, 32.116844, 33.864704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243374, 32.224831, 33.751884>,  <34.939648, 32.404808, 33.563850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243374, 32.224831, 33.751884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530301, 0.009214, -0.847759,
		0.377114, 0.893009, 0.245602,
		0.759319, -0.449945, 0.470089,
		35.471169, 32.089848, 33.892910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593594, 32.709248, 33.353420>,  <34.939648, 32.404808, 33.563850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593594, 32.709248, 33.353420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707722, 32.356277, 33.503040>,  <35.776199, 32.144493, 33.592812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707722, 32.356277, 33.503040>,  <35.593594, 32.709248, 33.353420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707722, 32.356277, 33.503040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621825, -0.126554, -0.772863,
		0.729334, 0.453106, 0.512608,
		0.285316, -0.882428, 0.374053,
		35.793316, 32.091549, 33.615257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314754, 32.745094, 33.307953>,  <35.593594, 32.709248, 33.353420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314754, 32.745094, 33.307953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214779, 32.358326, 33.328327>,  <36.154793, 32.126266, 33.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214779, 32.358326, 33.328327>,  <36.314754, 32.745094, 33.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214779, 32.358326, 33.328327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478772, -0.169135, -0.861494,
		0.841611, -0.190935, 0.505208,
		-0.249938, -0.966922, 0.050931,
		36.139797, 32.068249, 33.343605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839092, 32.510864, 32.997601>,  <36.314754, 32.745094, 33.307953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839092, 32.510864, 32.997601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588478, 32.199650, 33.015991>,  <36.438110, 32.012920, 33.027027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588478, 32.199650, 33.015991>,  <36.839092, 32.510864, 32.997601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588478, 32.199650, 33.015991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198618, -0.216436, -0.955880,
		0.753659, -0.589762, 0.290137,
		-0.626537, -0.778034, 0.045981,
		36.400517, 31.966240, 33.029785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187111, 31.895021, 32.929184>,  <36.839092, 32.510864, 32.997601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187111, 31.895021, 32.929184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816269, 31.845881, 32.787544>,  <36.593765, 31.816397, 32.702560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816269, 31.845881, 32.787544>,  <37.187111, 31.895021, 32.929184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816269, 31.845881, 32.787544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374198, -0.249505, -0.893153,
		0.021375, -0.960549, 0.277288,
		-0.927102, -0.122852, -0.354102,
		36.538139, 31.809025, 32.681313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190968, 31.389069, 32.319427>,  <37.187111, 31.895021, 32.929184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190968, 31.389069, 32.319427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821987, 31.543200, 32.309525>,  <36.600601, 31.635679, 32.303581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821987, 31.543200, 32.309525>,  <37.190968, 31.389069, 32.319427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821987, 31.543200, 32.309525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025893, -0.002243, -0.999662,
		-0.385255, -0.922776, -0.007908,
		-0.922447, 0.385329, -0.024757,
		36.545254, 31.658798, 32.302097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633415, 30.861191, 31.956835>,  <37.190968, 31.389069, 32.319427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633415, 30.861191, 31.956835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517780, 31.244101, 31.953844>,  <36.448399, 31.473846, 31.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517780, 31.244101, 31.953844>,  <36.633415, 30.861191, 31.956835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517780, 31.244101, 31.953844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091294, -0.035345, -0.995197,
		-0.952939, -0.287019, 0.097611,
		-0.289091, 0.957273, -0.007478,
		36.431053, 31.531282, 31.951601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279037, 30.752775, 31.433161>,  <36.633415, 30.861191, 31.956835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279037, 30.752775, 31.433161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307877, 31.149910, 31.471273>,  <36.325180, 31.388191, 31.494141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307877, 31.149910, 31.471273>,  <36.279037, 30.752775, 31.433161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307877, 31.149910, 31.471273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237347, 0.109867, -0.965192,
		-0.968746, 0.046974, 0.243568,
		0.072099, 0.992836, 0.095284,
		36.329506, 31.447762, 31.499859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643517, 31.028181, 31.234648>,  <36.279037, 30.752775, 31.433161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643517, 31.028181, 31.234648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915291, 31.316851, 31.181641>,  <36.078354, 31.490051, 31.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915291, 31.316851, 31.181641>,  <35.643517, 31.028181, 31.234648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915291, 31.316851, 31.181641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314892, 0.123665, -0.941037,
		-0.662733, 0.681099, 0.311271,
		0.679432, 0.721673, -0.132516,
		36.119122, 31.533352, 31.141886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492355, 31.230862, 30.516560>,  <35.643517, 31.028181, 31.234648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492355, 31.230862, 30.516560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840096, 31.412785, 30.593889>,  <36.048740, 31.521938, 30.640287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840096, 31.412785, 30.593889>,  <35.492355, 31.230862, 30.516560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840096, 31.412785, 30.593889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199064, 0.035780, -0.979333,
		-0.452323, 0.889872, -0.059430,
		0.869355, 0.454805, 0.193325,
		36.100903, 31.549227, 30.651886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484066, 31.826664, 30.128231>,  <35.492355, 31.230862, 30.516560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484066, 31.826664, 30.128231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872753, 31.743351, 30.172747>,  <36.105965, 31.693363, 30.199457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872753, 31.743351, 30.172747>,  <35.484066, 31.826664, 30.128231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872753, 31.743351, 30.172747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084543, -0.133213, -0.987475,
		0.220498, 0.968955, -0.111837,
		0.971717, -0.208281, 0.111291,
		36.164268, 31.680866, 30.206135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882877, 32.227070, 29.619844>,  <35.484066, 31.826664, 30.128231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882877, 32.227070, 29.619844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111012, 31.919949, 29.736591>,  <36.247894, 31.735674, 29.806641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111012, 31.919949, 29.736591>,  <35.882877, 32.227070, 29.619844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111012, 31.919949, 29.736591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128129, -0.267817, -0.954912,
		0.811356, 0.582019, -0.054368,
		0.570337, -0.767807, 0.291869,
		36.282112, 31.689606, 29.824152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279388, 32.188271, 29.055588>,  <35.882877, 32.227070, 29.619844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279388, 32.188271, 29.055588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394775, 31.853067, 29.240856>,  <36.464008, 31.651945, 29.352016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394775, 31.853067, 29.240856>,  <36.279388, 32.188271, 29.055588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394775, 31.853067, 29.240856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320335, -0.371394, -0.871465,
		0.902315, 0.399758, 0.161309,
		0.288466, -0.838010, 0.463171,
		36.481316, 31.601664, 29.379808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956520, 32.118435, 28.968245>,  <36.279388, 32.188271, 29.055588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956520, 32.118435, 28.968245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804901, 31.749763, 29.001329>,  <36.713932, 31.528561, 29.021181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804901, 31.749763, 29.001329>,  <36.956520, 32.118435, 28.968245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804901, 31.749763, 29.001329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440726, -0.258398, -0.859646,
		0.813687, -0.289389, 0.504151,
		-0.379044, -0.921675, 0.082714,
		36.691189, 31.473261, 29.026144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558289, 31.595240, 28.931370>,  <36.956520, 32.118435, 28.968245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558289, 31.595240, 28.931370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214520, 31.428736, 28.812635>,  <37.008259, 31.328833, 28.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214520, 31.428736, 28.812635>,  <37.558289, 31.595240, 28.931370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214520, 31.428736, 28.812635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397664, -0.179364, -0.899828,
		0.321322, -0.891378, 0.319683,
		-0.859427, -0.416261, -0.296836,
		36.956692, 31.303858, 28.723585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737766, 30.985851, 28.614887>,  <37.558289, 31.595240, 28.931370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737766, 30.985851, 28.614887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370411, 31.053705, 28.471897>,  <37.149998, 31.094418, 28.386103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370411, 31.053705, 28.471897>,  <37.737766, 30.985851, 28.614887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370411, 31.053705, 28.471897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266565, -0.402413, -0.875789,
		-0.292416, -0.899604, 0.324353,
		-0.918388, 0.169634, -0.357476,
		37.094894, 31.104595, 28.364655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542622, 30.428478, 28.199289>,  <37.737766, 30.985851, 28.614887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542622, 30.428478, 28.199289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313931, 30.724613, 28.057852>,  <37.176716, 30.902294, 27.972988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313931, 30.724613, 28.057852>,  <37.542622, 30.428478, 28.199289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313931, 30.724613, 28.057852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255355, -0.249005, -0.934233,
		-0.779697, -0.624415, -0.046688,
		-0.571723, 0.740340, -0.353596,
		37.142414, 30.946714, 27.951773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178329, 30.130051, 27.738771>,  <37.542622, 30.428478, 28.199289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178329, 30.130051, 27.738771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181828, 30.514805, 27.629450>,  <37.183926, 30.745659, 27.563856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181828, 30.514805, 27.629450>,  <37.178329, 30.130051, 27.738771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181828, 30.514805, 27.629450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438016, -0.249385, -0.863683,
		-0.898924, -0.112156, -0.423504,
		0.008749, 0.961888, -0.273304,
		37.184452, 30.803371, 27.547459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072323, 30.112999, 26.982965>,  <37.178329, 30.130051, 27.738771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072323, 30.112999, 26.982965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191448, 30.491434, 27.033918>,  <37.262924, 30.718494, 27.064491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191448, 30.491434, 27.033918>,  <37.072323, 30.112999, 26.982965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191448, 30.491434, 27.033918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436074, -0.016120, -0.899767,
		-0.849205, 0.323507, -0.417365,
		0.297809, 0.946088, 0.127384,
		37.280792, 30.775261, 27.072134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988300, 30.540672, 26.303432>,  <37.072323, 30.112999, 26.982965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988300, 30.540672, 26.303432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283306, 30.697422, 26.523436>,  <37.460308, 30.791471, 26.655437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283306, 30.697422, 26.523436>,  <36.988300, 30.540672, 26.303432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283306, 30.697422, 26.523436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621316, -0.074569, -0.780004,
		-0.264650, 0.916992, -0.298473,
		0.737514, 0.391874, 0.550007,
		37.504559, 30.814983, 26.688438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370014, 30.986755, 25.810158>,  <36.988300, 30.540672, 26.303432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370014, 30.986755, 25.810158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636463, 30.978439, 26.108379>,  <37.796333, 30.973450, 26.287312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636463, 30.978439, 26.108379>,  <37.370014, 30.986755, 25.810158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636463, 30.978439, 26.108379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744576, 0.076742, -0.663112,
		-0.043429, 0.996834, 0.066599,
		0.666123, -0.020789, 0.745552,
		37.836300, 30.972202, 26.332045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914093, 31.461441, 25.659155>,  <37.370014, 30.986755, 25.810158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914093, 31.461441, 25.659155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099060, 31.244526, 25.939753>,  <38.210041, 31.114376, 26.108110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099060, 31.244526, 25.939753>,  <37.914093, 31.461441, 25.659155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099060, 31.244526, 25.939753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862741, 0.092647, -0.497086,
		0.204573, 0.835068, 0.510697,
		0.462415, -0.542290, 0.701494,
		38.237785, 31.081839, 26.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584927, 31.836529, 25.924017>,  <37.914093, 31.461441, 25.659155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584927, 31.836529, 25.924017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634670, 31.449955, 26.013939>,  <38.664516, 31.218010, 26.067892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634670, 31.449955, 26.013939>,  <38.584927, 31.836529, 25.924017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634670, 31.449955, 26.013939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893667, 0.010646, -0.448604,
		0.431154, 0.256687, 0.864996,
		0.124360, -0.966436, 0.224803,
		38.671978, 31.160025, 26.081379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124405, 31.783413, 26.376541>,  <38.584927, 31.836529, 25.924017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124405, 31.783413, 26.376541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079689, 31.432571, 26.189695>,  <39.052860, 31.222067, 26.077589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079689, 31.432571, 26.189695>,  <39.124405, 31.783413, 26.376541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079689, 31.432571, 26.189695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861669, 0.148590, -0.485230,
		0.495004, -0.456743, 0.739160,
		-0.111794, -0.877102, -0.467113,
		39.046150, 31.169441, 26.049561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737114, 31.610180, 26.284870>,  <39.124405, 31.783413, 26.376541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737114, 31.610180, 26.284870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565086, 31.359550, 26.024885>,  <39.461872, 31.209173, 25.868895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565086, 31.359550, 26.024885>,  <39.737114, 31.610180, 26.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565086, 31.359550, 26.024885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800860, 0.067550, -0.595029,
		0.416734, -0.776431, 0.472745,
		-0.430065, -0.626572, -0.649963,
		39.436066, 31.171579, 25.829897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198128, 31.139494, 26.221148>,  <39.737114, 31.610180, 26.284870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198128, 31.139494, 26.221148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977398, 31.125338, 25.887863>,  <39.844959, 31.116844, 25.687893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977398, 31.125338, 25.887863>,  <40.198128, 31.139494, 26.221148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977398, 31.125338, 25.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795660, 0.276957, -0.538721,
		0.249829, -0.960230, -0.124674,
		-0.551825, -0.035390, -0.833208,
		39.811852, 31.114719, 25.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539974, 30.665329, 25.759338>,  <40.198128, 31.139494, 26.221148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539974, 30.665329, 25.759338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298779, 30.873293, 25.517313>,  <40.154060, 30.998072, 25.372097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298779, 30.873293, 25.517313>,  <40.539974, 30.665329, 25.759338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298779, 30.873293, 25.517313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736396, 0.071063, -0.672808,
		-0.306800, -0.851261, -0.425709,
		-0.602987, 0.519908, -0.605063,
		40.117882, 31.029264, 25.335794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810303, 30.473330, 25.058325>,  <40.539974, 30.665329, 25.759338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810303, 30.473330, 25.058325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585342, 30.798643, 24.998619>,  <40.450367, 30.993832, 24.962795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585342, 30.798643, 24.998619>,  <40.810303, 30.473330, 25.058325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585342, 30.798643, 24.998619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621521, 0.296726, -0.725028,
		-0.545361, -0.500526, -0.672350,
		-0.562399, 0.813282, -0.149265,
		40.416622, 31.042627, 24.953840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700462, 30.501787, 24.330790>,  <40.810303, 30.473330, 25.058325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700462, 30.501787, 24.330790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652798, 30.874166, 24.468851>,  <40.624199, 31.097595, 24.551689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652798, 30.874166, 24.468851>,  <40.700462, 30.501787, 24.330790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652798, 30.874166, 24.468851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687755, 0.328117, -0.647558,
		-0.716096, 0.160220, -0.679364,
		-0.119159, 0.930950, 0.345156,
		40.617050, 31.153452, 24.572397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681450, 30.887741, 23.796589>,  <40.700462, 30.501787, 24.330790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681450, 30.887741, 23.796589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733215, 31.186872, 24.057051>,  <40.764275, 31.366352, 24.213327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733215, 31.186872, 24.057051>,  <40.681450, 30.887741, 23.796589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733215, 31.186872, 24.057051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576999, 0.477260, -0.662793,
		-0.806427, 0.461490, -0.369733,
		0.129413, 0.747830, 0.651155,
		40.772038, 31.411222, 24.252398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405052, 31.520910, 23.467476>,  <40.681450, 30.887741, 23.796589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405052, 31.520910, 23.467476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654293, 31.658737, 23.748335>,  <40.803837, 31.741434, 23.916851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654293, 31.658737, 23.748335>,  <40.405052, 31.520910, 23.467476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654293, 31.658737, 23.748335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380968, 0.650328, -0.657219,
		-0.683084, 0.677013, 0.273953,
		0.623105, 0.344568, 0.702149,
		40.841225, 31.762108, 23.958981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340748, 32.180893, 23.083788>,  <40.405052, 31.520910, 23.467476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340748, 32.180893, 23.083788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405842, 32.575550, 23.080786>,  <40.444897, 32.812344, 23.078985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405842, 32.575550, 23.080786>,  <40.340748, 32.180893, 23.083788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405842, 32.575550, 23.080786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466190, -0.083592, -0.880727,
		-0.869589, 0.139825, -0.473566,
		0.162734, 0.986642, -0.007505,
		40.454662, 32.871544, 23.078533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054745, 32.395447, 22.465637>,  <40.340748, 32.180893, 23.083788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054745, 32.395447, 22.465637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325481, 32.656399, 22.602045>,  <40.487923, 32.812969, 22.683889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325481, 32.656399, 22.602045>,  <40.054745, 32.395447, 22.465637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325481, 32.656399, 22.602045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425318, 0.031546, -0.904494,
		-0.600828, 0.757239, -0.256116,
		0.676839, 0.652376, 0.341021,
		40.528534, 32.852112, 22.704351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016666, 32.940720, 21.944637>,  <40.054745, 32.395447, 22.465637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016666, 32.940720, 21.944637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361687, 32.967396, 22.145262>,  <40.568699, 32.983402, 22.265636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361687, 32.967396, 22.145262>,  <40.016666, 32.940720, 21.944637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361687, 32.967396, 22.145262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505001, -0.174996, -0.845192,
		0.031402, 0.982308, -0.184623,
		0.862547, 0.066695, 0.501562,
		40.620449, 32.987404, 22.295731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546593, 33.551380, 21.718767>,  <40.016666, 32.940720, 21.944637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546593, 33.551380, 21.718767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713528, 33.219738, 21.867582>,  <40.813686, 33.020752, 21.956871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713528, 33.219738, 21.867582>,  <40.546593, 33.551380, 21.718767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713528, 33.219738, 21.867582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586553, -0.066936, -0.807140,
		0.694110, 0.555065, 0.458382,
		0.417333, -0.829109, 0.372036,
		40.838726, 32.971004, 21.979193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263126, 33.645844, 21.824743>,  <40.546593, 33.551380, 21.718767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263126, 33.645844, 21.824743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185295, 33.259712, 21.755148>,  <41.138596, 33.028030, 21.713390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185295, 33.259712, 21.755148>,  <41.263126, 33.645844, 21.824743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185295, 33.259712, 21.755148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615751, 0.017868, -0.787738,
		0.763538, -0.260409, 0.590928,
		-0.194576, -0.965333, -0.173990,
		41.126923, 32.970112, 21.702951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809673, 33.448586, 21.616802>,  <41.263126, 33.645844, 21.824743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809673, 33.448586, 21.616802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586525, 33.154690, 21.462433>,  <41.452637, 32.978352, 21.369812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586525, 33.154690, 21.462433>,  <41.809673, 33.448586, 21.616802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586525, 33.154690, 21.462433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503391, 0.070137, -0.861207,
		0.659830, -0.674714, 0.330734,
		-0.557872, -0.734739, -0.385924,
		41.419163, 32.934269, 21.346655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898506, 32.784340, 21.711012>,  <41.809673, 33.448586, 21.616802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898506, 32.784340, 21.711012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641720, 32.499943, 21.596212>,  <41.487648, 32.329304, 21.527332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641720, 32.499943, 21.596212>,  <41.898506, 32.784340, 21.711012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641720, 32.499943, 21.596212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720689, 0.431777, 0.542380,
		-0.261710, 0.555026, -0.789591,
		-0.641962, -0.710996, -0.287001,
		41.449131, 32.286644, 21.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720413, 32.577835, 22.470026>,  <41.898506, 32.784340, 21.711012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720413, 32.577835, 22.470026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453613, 32.811161, 22.284615>,  <41.293533, 32.951157, 22.173367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453613, 32.811161, 22.284615>,  <41.720413, 32.577835, 22.470026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453613, 32.811161, 22.284615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444527, 0.187716, 0.875876,
		0.597923, 0.790258, 0.134094,
		-0.666996, 0.583315, -0.463530,
		41.253513, 32.986156, 22.145555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812969, 33.134308, 22.745611>,  <41.720413, 32.577835, 22.470026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812969, 33.134308, 22.745611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437462, 33.109962, 22.609955>,  <41.212158, 33.095356, 22.528561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437462, 33.109962, 22.609955>,  <41.812969, 33.134308, 22.745611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437462, 33.109962, 22.609955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343434, 0.244727, 0.906731,
		0.027808, 0.967680, -0.250644,
		-0.938765, -0.060866, -0.339140,
		41.155834, 33.091702, 22.508213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461571, 33.769646, 22.964722>,  <41.812969, 33.134308, 22.745611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461571, 33.769646, 22.964722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180401, 33.494350, 22.892912>,  <41.011700, 33.329174, 22.849827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180401, 33.494350, 22.892912>,  <41.461571, 33.769646, 22.964722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180401, 33.494350, 22.892912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562243, 0.383071, 0.732898,
		-0.435635, 0.616109, -0.656226,
		-0.702926, -0.688234, -0.179524,
		40.969524, 33.287880, 22.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822208, 34.126778, 22.963749>,  <41.461571, 33.769646, 22.964722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822208, 34.126778, 22.963749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733532, 33.744457, 23.040991>,  <40.680325, 33.515064, 23.087336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733532, 33.744457, 23.040991>,  <40.822208, 34.126778, 22.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733532, 33.744457, 23.040991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572852, 0.287914, 0.767428,
		-0.789109, 0.059512, -0.611363,
		-0.221691, -0.955805, 0.193104,
		40.667023, 33.457714, 23.098923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020336, 33.856266, 22.914736>,  <40.822208, 34.126778, 22.963749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020336, 33.856266, 22.914736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225109, 33.630154, 23.173464>,  <40.347973, 33.494484, 23.328701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225109, 33.630154, 23.173464>,  <40.020336, 33.856266, 22.914736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225109, 33.630154, 23.173464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631630, 0.262630, 0.729431,
		-0.582212, -0.781970, -0.222603,
		0.511931, -0.565286, 0.646822,
		40.378689, 33.460567, 23.367510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452396, 33.601170, 23.382668>,  <40.020336, 33.856266, 22.914736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452396, 33.601170, 23.382668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798119, 33.559013, 23.579386>,  <40.005554, 33.533718, 23.697416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798119, 33.559013, 23.579386>,  <39.452396, 33.601170, 23.382668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798119, 33.559013, 23.579386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455597, 0.250188, 0.854305,
		-0.213076, -0.962444, 0.168224,
		0.864309, -0.105390, 0.491796,
		40.057411, 33.527397, 23.726925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336845, 33.128635, 23.915531>,  <39.452396, 33.601170, 23.382668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336845, 33.128635, 23.915531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656231, 33.329697, 24.048069>,  <39.847862, 33.450333, 24.127592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656231, 33.329697, 24.048069>,  <39.336845, 33.128635, 23.915531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656231, 33.329697, 24.048069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400067, 0.031732, 0.915936,
		0.449885, -0.863905, 0.226432,
		0.798467, 0.502654, 0.331345,
		39.895771, 33.480492, 24.147472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497826, 32.793064, 24.532072>,  <39.336845, 33.128635, 23.915531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497826, 32.793064, 24.532072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675819, 33.150848, 24.549633>,  <39.782616, 33.365520, 24.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675819, 33.150848, 24.549633>,  <39.497826, 32.793064, 24.532072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675819, 33.150848, 24.549633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202062, 0.052524, 0.977963,
		0.872445, -0.444049, 0.204109,
		0.444984, 0.894462, 0.043901,
		39.809315, 33.419186, 24.562803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777138, 32.836105, 25.297167>,  <39.497826, 32.793064, 24.532072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777138, 32.836105, 25.297167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784935, 33.214775, 25.168526>,  <39.789616, 33.441978, 25.091341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784935, 33.214775, 25.168526>,  <39.777138, 32.836105, 25.297167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784935, 33.214775, 25.168526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105768, 0.321814, 0.940877,
		0.994200, 0.015671, 0.106402,
		0.019497, 0.946673, -0.321604,
		39.790783, 33.498775, 25.072044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245331, 33.229328, 25.714491>,  <39.777138, 32.836105, 25.297167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245331, 33.229328, 25.714491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027382, 33.521389, 25.549568>,  <39.896614, 33.696625, 25.450615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027382, 33.521389, 25.549568>,  <40.245331, 33.229328, 25.714491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027382, 33.521389, 25.549568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150618, 0.398486, 0.904723,
		0.824880, 0.555060, -0.107151,
		-0.544874, 0.730149, -0.412305,
		39.863918, 33.740433, 25.425877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469944, 33.921528, 25.897181>,  <40.245331, 33.229328, 25.714491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469944, 33.921528, 25.897181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085537, 33.968689, 25.797148>,  <39.854893, 33.996986, 25.737129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085537, 33.968689, 25.797148>,  <40.469944, 33.921528, 25.897181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085537, 33.968689, 25.797148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182335, 0.409663, 0.893829,
		0.207838, 0.904585, -0.372195,
		-0.961019, 0.117907, -0.250081,
		39.797230, 34.004063, 25.722124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328972, 34.513798, 26.196234>,  <40.469944, 33.921528, 25.897181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328972, 34.513798, 26.196234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968819, 34.363930, 26.107744>,  <39.752728, 34.274010, 26.054651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968819, 34.363930, 26.107744>,  <40.328972, 34.513798, 26.196234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968819, 34.363930, 26.107744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282011, 0.115334, 0.952454,
		-0.331339, 0.919958, -0.209505,
		-0.900380, -0.374668, -0.221224,
		39.698704, 34.251530, 26.041376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995178, 34.886505, 26.612015>,  <40.328972, 34.513798, 26.196234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995178, 34.886505, 26.612015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761581, 34.581043, 26.501894>,  <39.621422, 34.397766, 26.435822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761581, 34.581043, 26.501894>,  <39.995178, 34.886505, 26.612015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761581, 34.581043, 26.501894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471389, 0.042922, 0.880880,
		-0.660868, 0.644202, -0.385043,
		-0.583992, -0.763650, -0.275304,
		39.586384, 34.351948, 26.419302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224285, 35.035831, 26.790653>,  <39.995178, 34.886505, 26.612015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224285, 35.035831, 26.790653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261032, 34.638252, 26.766571>,  <39.283081, 34.399704, 26.752121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261032, 34.638252, 26.766571>,  <39.224285, 35.035831, 26.790653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261032, 34.638252, 26.766571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598207, -0.103423, 0.794640,
		-0.796058, -0.036984, -0.604089,
		0.091866, -0.993949, -0.060206,
		39.288593, 34.340069, 26.748508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494034, 34.618729, 26.795914>,  <39.224285, 35.035831, 26.790653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494034, 34.618729, 26.795914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791733, 34.383076, 26.921783>,  <38.970352, 34.241684, 26.997305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791733, 34.383076, 26.921783>,  <38.494034, 34.618729, 26.795914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791733, 34.383076, 26.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384258, 0.007680, 0.923194,
		-0.546302, -0.807998, -0.220664,
		0.744244, -0.589135, 0.314676,
		39.015007, 34.206337, 27.016186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160046, 34.203133, 27.112833>,  <38.494034, 34.618729, 26.795914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160046, 34.203133, 27.112833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527046, 34.109882, 27.241732>,  <38.747246, 34.053932, 27.319071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527046, 34.109882, 27.241732>,  <38.160046, 34.203133, 27.112833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527046, 34.109882, 27.241732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362552, -0.157059, 0.918634,
		-0.163628, -0.959658, -0.228651,
		0.917486, -0.233212, 0.322227,
		38.802296, 34.039944, 27.338406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065002, 33.615421, 27.406507>,  <38.160046, 34.203133, 27.112833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065002, 33.615421, 27.406507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410957, 33.750767, 27.554815>,  <38.618530, 33.831974, 27.643801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410957, 33.750767, 27.554815>,  <38.065002, 33.615421, 27.406507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410957, 33.750767, 27.554815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323080, -0.190059, 0.927091,
		0.384166, -0.921621, -0.055060,
		0.864891, 0.338368, 0.370772,
		38.670425, 33.852276, 27.666046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228325, 33.197445, 28.028969>,  <38.065002, 33.615421, 27.406507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228325, 33.197445, 28.028969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413406, 33.550312, 28.064034>,  <38.524456, 33.762032, 28.085072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413406, 33.550312, 28.064034>,  <38.228325, 33.197445, 28.028969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413406, 33.550312, 28.064034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321665, 0.074922, 0.943885,
		0.826098, -0.464935, 0.318430,
		0.462703, 0.882169, 0.087660,
		38.552216, 33.814964, 28.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375744, 33.264091, 28.767687>,  <38.228325, 33.197445, 28.028969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375744, 33.264091, 28.767687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408138, 33.641914, 28.640406>,  <38.427574, 33.868607, 28.564037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408138, 33.641914, 28.640406>,  <38.375744, 33.264091, 28.767687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408138, 33.641914, 28.640406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530713, 0.311097, 0.788392,
		0.843673, 0.105025, 0.526484,
		0.080987, 0.944557, -0.318202,
		38.432434, 33.925282, 28.544945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519955, 33.578609, 29.392637>,  <38.375744, 33.264091, 28.767687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519955, 33.578609, 29.392637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437016, 33.893486, 29.160316>,  <38.387253, 34.082413, 29.020924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437016, 33.893486, 29.160316>,  <38.519955, 33.578609, 29.392637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437016, 33.893486, 29.160316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450728, 0.450060, 0.770902,
		0.868247, 0.421627, 0.261494,
		-0.207345, 0.787196, -0.580802,
		38.374813, 34.129646, 28.986076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618996, 34.158020, 29.821468>,  <38.519955, 33.578609, 29.392637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618996, 34.158020, 29.821468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384560, 34.294586, 29.527550>,  <38.243896, 34.376526, 29.351198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384560, 34.294586, 29.527550>,  <38.618996, 34.158020, 29.821468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384560, 34.294586, 29.527550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399527, 0.667189, 0.628679,
		0.704892, 0.662036, -0.254628,
		-0.586093, 0.341420, -0.734797,
		38.208733, 34.397011, 29.307110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691299, 34.862984, 29.804165>,  <38.618996, 34.158020, 29.821468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691299, 34.862984, 29.804165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340855, 34.776764, 29.631668>,  <38.130589, 34.725033, 29.528170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340855, 34.776764, 29.631668>,  <38.691299, 34.862984, 29.804165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340855, 34.776764, 29.631668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438963, 0.726525, 0.528652,
		0.199358, 0.652457, -0.731134,
		-0.876109, -0.215550, -0.431243,
		38.078022, 34.712097, 29.502295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433189, 35.503677, 29.553652>,  <38.691299, 34.862984, 29.804165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433189, 35.503677, 29.553652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114380, 35.266705, 29.600615>,  <37.923096, 35.124523, 29.628792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114380, 35.266705, 29.600615>,  <38.433189, 35.503677, 29.553652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114380, 35.266705, 29.600615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425673, 0.688939, 0.586656,
		-0.428440, 0.417600, -0.801280,
		-0.797021, -0.592430, 0.117408,
		37.875275, 35.088974, 29.635838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891312, 35.832821, 29.427601>,  <38.433189, 35.503677, 29.553652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891312, 35.832821, 29.427601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715427, 35.542522, 29.639242>,  <37.609898, 35.368343, 29.766226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715427, 35.542522, 29.639242>,  <37.891312, 35.832821, 29.427601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715427, 35.542522, 29.639242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446572, 0.687794, 0.572287,
		-0.779247, 0.015360, -0.626529,
		-0.439714, -0.725743, 0.529102,
		37.583515, 35.324799, 29.797974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179283, 36.118294, 29.492895>,  <37.891312, 35.832821, 29.427601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179283, 36.118294, 29.492895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207790, 35.818787, 29.756493>,  <37.224895, 35.639084, 29.914652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207790, 35.818787, 29.756493>,  <37.179283, 36.118294, 29.492895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207790, 35.818787, 29.756493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654927, 0.463182, 0.597103,
		-0.752324, -0.474144, -0.457379,
		0.071264, -0.748765, 0.658993,
		37.229168, 35.594158, 29.954191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501987, 36.054062, 29.786154>,  <37.179283, 36.118294, 29.492895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501987, 36.054062, 29.786154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698097, 35.834484, 30.056942>,  <36.815762, 35.702736, 30.219416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698097, 35.834484, 30.056942>,  <36.501987, 36.054062, 29.786154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698097, 35.834484, 30.056942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726746, 0.171281, 0.665209,
		-0.481116, -0.818121, -0.314969,
		0.490273, -0.548945, 0.676973,
		36.845181, 35.669800, 30.260035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044125, 35.524536, 30.084843>,  <36.501987, 36.054062, 29.786154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044125, 35.524536, 30.084843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334599, 35.588596, 30.352278>,  <36.508881, 35.627033, 30.512739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334599, 35.588596, 30.352278>,  <36.044125, 35.524536, 30.084843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334599, 35.588596, 30.352278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677902, 0.004850, 0.735136,
		0.114491, -0.987081, 0.112089,
		0.726182, 0.160151, 0.668589,
		36.552452, 35.636642, 30.552855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901760, 35.117542, 30.729156>,  <36.044125, 35.524536, 30.084843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901760, 35.117542, 30.729156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149296, 35.381020, 30.900345>,  <36.297817, 35.539104, 31.003057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149296, 35.381020, 30.900345>,  <35.901760, 35.117542, 30.729156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149296, 35.381020, 30.900345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570260, 0.002030, 0.821462,
		0.540222, -0.752410, 0.376882,
		0.618841, 0.658692, 0.427973,
		36.334949, 35.578629, 31.028736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824108, 34.888206, 31.388893>,  <35.901760, 35.117542, 30.729156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824108, 34.888206, 31.388893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010010, 35.242367, 31.385668>,  <36.121552, 35.454865, 31.383734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010010, 35.242367, 31.385668>,  <35.824108, 34.888206, 31.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010010, 35.242367, 31.385668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292575, 0.162153, 0.942394,
		0.835708, -0.435619, 0.334408,
		0.464750, 0.885405, -0.008061,
		36.149433, 35.507988, 31.383249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081974, 35.028275, 32.154121>,  <35.824108, 34.888206, 31.388893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081974, 35.028275, 32.154121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035458, 35.384357, 31.977942>,  <36.007545, 35.598007, 31.872232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035458, 35.384357, 31.977942>,  <36.081974, 35.028275, 32.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035458, 35.384357, 31.977942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453095, 0.347079, 0.821122,
		0.883844, 0.295059, 0.362987,
		-0.116294, 0.890211, -0.440454,
		36.000568, 35.651421, 31.845806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288712, 35.510418, 32.723331>,  <36.081974, 35.028275, 32.154121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288712, 35.510418, 32.723331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096554, 35.706757, 32.432598>,  <35.981258, 35.824558, 32.258156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096554, 35.706757, 32.432598>,  <36.288712, 35.510418, 32.723331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096554, 35.706757, 32.432598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445849, 0.576988, 0.684327,
		0.755275, 0.652807, -0.058340,
		-0.480395, 0.490844, -0.726837,
		35.952435, 35.854012, 32.214546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293331, 36.091511, 32.981274>,  <36.288712, 35.510418, 32.723331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293331, 36.091511, 32.981274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999611, 36.099720, 32.709869>,  <35.823380, 36.104645, 32.547028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999611, 36.099720, 32.709869>,  <36.293331, 36.091511, 32.981274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999611, 36.099720, 32.709869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627040, 0.362405, 0.689553,
		0.260046, 0.931795, -0.253247,
		-0.734300, 0.020520, -0.678515,
		35.779320, 36.105877, 32.506313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051437, 36.719151, 33.020618>,  <36.293331, 36.091511, 32.981274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051437, 36.719151, 33.020618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775269, 36.466305, 32.879910>,  <35.609566, 36.314598, 32.795483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775269, 36.466305, 32.879910>,  <36.051437, 36.719151, 33.020618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775269, 36.466305, 32.879910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675501, 0.389337, 0.626191,
		-0.258863, 0.669964, -0.695801,
		-0.690426, -0.632112, -0.351776,
		35.568142, 36.276672, 32.774376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457851, 37.160023, 32.979038>,  <36.051437, 36.719151, 33.020618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457851, 37.160023, 32.979038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340252, 36.777702, 32.977978>,  <35.269691, 36.548309, 32.977341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340252, 36.777702, 32.977978>,  <35.457851, 37.160023, 32.979038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340252, 36.777702, 32.977978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564475, 0.171384, 0.807462,
		-0.771321, 0.238887, -0.589913,
		-0.293994, -0.955804, -0.002654,
		35.252052, 36.490963, 32.977180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687717, 37.236191, 33.126488>,  <35.457851, 37.160023, 32.979038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687717, 37.236191, 33.126488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811474, 36.876488, 33.250172>,  <34.885727, 36.660664, 33.324383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811474, 36.876488, 33.250172>,  <34.687717, 37.236191, 33.126488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811474, 36.876488, 33.250172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467002, 0.139563, 0.873173,
		-0.828363, -0.414552, -0.376777,
		0.309392, -0.899260, 0.309206,
		34.904293, 36.606709, 33.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102989, 36.987556, 33.396042>,  <34.687717, 37.236191, 33.126488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102989, 36.987556, 33.396042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394566, 36.759674, 33.547874>,  <34.569511, 36.622944, 33.638973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394566, 36.759674, 33.547874>,  <34.102989, 36.987556, 33.396042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394566, 36.759674, 33.547874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419442, 0.066526, 0.905341,
		-0.541032, -0.819150, -0.190466,
		0.728939, -0.569708, 0.379579,
		34.613247, 36.588760, 33.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713360, 36.475941, 33.771404>,  <34.102989, 36.987556, 33.396042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713360, 36.475941, 33.771404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082691, 36.427372, 33.917130>,  <34.304291, 36.398232, 34.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082691, 36.427372, 33.917130>,  <33.713360, 36.475941, 33.771404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082691, 36.427372, 33.917130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349934, 0.124659, 0.928443,
		-0.158146, -0.984742, 0.072612,
		0.923329, -0.121420, 0.364309,
		34.359692, 36.390945, 34.026421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627144, 35.963959, 34.285038>,  <33.713360, 36.475941, 33.771404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627144, 35.963959, 34.285038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964748, 36.165035, 34.359814>,  <34.167309, 36.285683, 34.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964748, 36.165035, 34.359814>,  <33.627144, 35.963959, 34.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964748, 36.165035, 34.359814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242932, 0.047575, 0.968876,
		0.478155, -0.863154, 0.162274,
		0.844010, 0.502695, 0.186940,
		34.217953, 36.315842, 34.415897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007778, 35.615227, 34.756123>,  <33.627144, 35.963959, 34.285038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007778, 35.615227, 34.756123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079849, 36.008060, 34.778179>,  <34.123093, 36.243763, 34.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079849, 36.008060, 34.778179>,  <34.007778, 35.615227, 34.756123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079849, 36.008060, 34.778179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140552, -0.029776, 0.989625,
		0.973541, -0.186058, 0.132670,
		0.180177, 0.982088, 0.055139,
		34.133904, 36.302689, 34.794720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476089, 35.635929, 35.278706>,  <34.007778, 35.615227, 34.756123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476089, 35.635929, 35.278706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342697, 36.012661, 35.262016>,  <34.262661, 36.238701, 35.252003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342697, 36.012661, 35.262016>,  <34.476089, 35.635929, 35.278706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342697, 36.012661, 35.262016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007419, 0.041633, 0.999106,
		0.942729, 0.333489, -0.006896,
		-0.333478, 0.941834, -0.041723,
		34.242653, 36.295212, 35.249500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842499, 35.965233, 35.835655>,  <34.476089, 35.635929, 35.278706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842499, 35.965233, 35.835655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535576, 36.216164, 35.782433>,  <34.351421, 36.366722, 35.750500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535576, 36.216164, 35.782433>,  <34.842499, 35.965233, 35.835655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535576, 36.216164, 35.782433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073512, 0.120069, 0.990040,
		0.637051, 0.769447, -0.046014,
		-0.767308, 0.627323, -0.133054,
		34.305382, 36.404362, 35.742516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086399, 36.536030, 36.146988>,  <34.842499, 35.965233, 35.835655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086399, 36.536030, 36.146988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688011, 36.551659, 36.114693>,  <34.448978, 36.561035, 36.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688011, 36.551659, 36.114693>,  <35.086399, 36.536030, 36.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688011, 36.551659, 36.114693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069466, 0.233471, 0.969879,
		0.056745, 0.971578, -0.229816,
		-0.995969, 0.039072, -0.080740,
		34.389221, 36.563381, 36.090469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359516, 35.940849, 36.492180>,  <35.086399, 36.536030, 36.146988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359516, 35.940849, 36.492180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634399, 35.957333, 36.782295>,  <35.799328, 35.967224, 36.956364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634399, 35.957333, 36.782295>,  <35.359516, 35.940849, 36.492180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634399, 35.957333, 36.782295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722835, 0.060817, -0.688339,
		-0.072476, 0.997298, 0.012007,
		0.687209, 0.041209, 0.725290,
		35.840561, 35.969696, 36.999882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803581, 36.520489, 36.367672>,  <35.359516, 35.940849, 36.492180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803581, 36.520489, 36.367672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018330, 36.289524, 36.613716>,  <36.147179, 36.150944, 36.761341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018330, 36.289524, 36.613716>,  <35.803581, 36.520489, 36.367672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018330, 36.289524, 36.613716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738544, -0.030780, -0.673503,
		0.407824, 0.815870, 0.409922,
		0.536873, -0.577416, 0.615108,
		36.179390, 36.116299, 36.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414482, 36.863564, 36.389324>,  <35.803581, 36.520489, 36.367672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414482, 36.863564, 36.389324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484295, 36.478710, 36.473072>,  <36.526180, 36.247799, 36.523319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484295, 36.478710, 36.473072>,  <36.414482, 36.863564, 36.389324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484295, 36.478710, 36.473072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763079, -0.002220, -0.646302,
		0.622294, 0.272565, 0.733797,
		0.174530, -0.962135, 0.209370,
		36.536655, 36.190071, 36.535885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216160, 36.752243, 36.366055>,  <36.414482, 36.863564, 36.389324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216160, 36.752243, 36.366055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026951, 36.403481, 36.315414>,  <36.913425, 36.194221, 36.285030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026951, 36.403481, 36.315414>,  <37.216160, 36.752243, 36.366055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026951, 36.403481, 36.315414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712486, -0.294027, -0.637112,
		0.518280, -0.391565, 0.760304,
		-0.473021, -0.871909, -0.126597,
		36.885044, 36.141907, 36.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836479, 36.296303, 36.340775>,  <37.216160, 36.752243, 36.366055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836479, 36.296303, 36.340775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529968, 36.094360, 36.181812>,  <37.346062, 35.973194, 36.086433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529968, 36.094360, 36.181812>,  <37.836479, 36.296303, 36.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529968, 36.094360, 36.181812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566668, -0.239525, -0.788363,
		0.302820, -0.829306, 0.469629,
		-0.766282, -0.504855, -0.397409,
		37.300083, 35.942905, 36.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097916, 35.570065, 36.162666>,  <37.836479, 36.296303, 36.340775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097916, 35.570065, 36.162666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775898, 35.662510, 35.944134>,  <37.582687, 35.717976, 35.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775898, 35.662510, 35.944134>,  <38.097916, 35.570065, 36.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775898, 35.662510, 35.944134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505138, -0.215787, -0.835626,
		-0.311019, -0.948694, 0.056974,
		-0.805048, 0.231116, -0.546335,
		37.534382, 35.731846, 35.780231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191830, 35.233742, 35.642963>,  <38.097916, 35.570065, 36.162666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191830, 35.233742, 35.642963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909031, 35.466164, 35.481705>,  <37.739349, 35.605618, 35.384949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909031, 35.466164, 35.481705>,  <38.191830, 35.233742, 35.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909031, 35.466164, 35.481705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407642, -0.130997, -0.903697,
		-0.577908, -0.803253, -0.144248,
		-0.707001, 0.581055, -0.403144,
		37.696930, 35.640480, 35.360760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149231, 34.950893, 34.976303>,  <38.191830, 35.233742, 35.642963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149231, 34.950893, 34.976303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966194, 35.303089, 34.926743>,  <37.856373, 35.514404, 34.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966194, 35.303089, 34.926743>,  <38.149231, 34.950893, 34.976303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966194, 35.303089, 34.926743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396633, 0.077415, -0.914707,
		-0.795795, -0.467708, -0.384655,
		-0.457594, 0.880486, -0.123902,
		37.828915, 35.567234, 34.889572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822510, 34.857792, 34.306267>,  <38.149231, 34.950893, 34.976303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822510, 34.857792, 34.306267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825386, 35.252098, 34.373447>,  <37.827114, 35.488682, 34.413757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825386, 35.252098, 34.373447>,  <37.822510, 34.857792, 34.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825386, 35.252098, 34.373447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380300, 0.152638, -0.912181,
		-0.924836, 0.070432, -0.373790,
		0.007193, 0.985769, 0.167950,
		37.827545, 35.547829, 34.423832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501320, 35.037880, 33.714787>,  <37.822510, 34.857792, 34.306267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501320, 35.037880, 33.714787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709820, 35.349419, 33.854328>,  <37.834919, 35.536343, 33.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709820, 35.349419, 33.854328>,  <37.501320, 35.037880, 33.714787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709820, 35.349419, 33.854328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465899, 0.082789, -0.880957,
		-0.715008, 0.621732, -0.319708,
		0.521251, 0.778842, 0.348859,
		37.866196, 35.583073, 33.958984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539883, 35.559071, 33.150078>,  <37.501320, 35.037880, 33.714787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539883, 35.559071, 33.150078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847118, 35.646481, 33.390835>,  <38.031460, 35.698925, 33.535290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847118, 35.646481, 33.390835>,  <37.539883, 35.559071, 33.150078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847118, 35.646481, 33.390835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586676, 0.136512, -0.798232,
		-0.256600, 0.966235, -0.023350,
		0.768093, 0.218526, 0.601897,
		38.077545, 35.712040, 33.571404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740856, 36.264271, 33.032646>,  <37.539883, 35.559071, 33.150078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740856, 36.264271, 33.032646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045750, 36.061409, 33.193535>,  <38.228687, 35.939690, 33.290070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045750, 36.061409, 33.193535>,  <37.740856, 36.264271, 33.032646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045750, 36.061409, 33.193535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578584, 0.255202, -0.774669,
		0.290232, 0.823202, 0.487959,
		0.762237, -0.507159, 0.402224,
		38.274422, 35.909260, 33.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296055, 36.652805, 32.844521>,  <37.740856, 36.264271, 33.032646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296055, 36.652805, 32.844521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504456, 36.328526, 32.951340>,  <38.629498, 36.133957, 33.015430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504456, 36.328526, 32.951340>,  <38.296055, 36.652805, 32.844521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504456, 36.328526, 32.951340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496298, 0.033182, -0.867518,
		0.694439, 0.584515, 0.419639,
		0.521002, -0.810704, 0.267051,
		38.660755, 36.085316, 33.031456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007275, 36.836617, 32.842102>,  <38.296055, 36.652805, 32.844521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007275, 36.836617, 32.842102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979473, 36.443050, 32.776283>,  <38.962791, 36.206909, 32.736794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979473, 36.443050, 32.776283>,  <39.007275, 36.836617, 32.842102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979473, 36.443050, 32.776283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676501, 0.074732, -0.732640,
		0.733154, -0.162236, 0.660427,
		-0.069506, -0.983918, -0.164543,
		38.958622, 36.147877, 32.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677135, 36.553963, 32.690811>,  <39.007275, 36.836617, 32.842102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677135, 36.553963, 32.690811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440212, 36.285957, 32.511810>,  <39.298058, 36.125153, 32.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440212, 36.285957, 32.511810>,  <39.677135, 36.553963, 32.690811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440212, 36.285957, 32.511810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632925, -0.043234, -0.773005,
		0.498576, -0.741090, 0.449676,
		-0.592308, -0.670013, -0.447498,
		39.262520, 36.084953, 32.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206123, 36.121632, 32.349358>,  <39.677135, 36.553963, 32.690811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206123, 36.121632, 32.349358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859184, 36.005623, 32.187569>,  <39.651020, 35.936020, 32.090496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859184, 36.005623, 32.187569>,  <40.206123, 36.121632, 32.349358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859184, 36.005623, 32.187569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492010, -0.377017, -0.784720,
		0.075090, -0.879629, 0.469696,
		-0.867345, -0.290019, -0.404476,
		39.598980, 35.918617, 32.066227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297249, 35.396145, 32.251381>,  <40.206123, 36.121632, 32.349358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297249, 35.396145, 32.251381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016788, 35.536160, 32.002911>,  <39.848511, 35.620167, 31.853828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016788, 35.536160, 32.002911>,  <40.297249, 35.396145, 32.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016788, 35.536160, 32.002911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403550, -0.523416, -0.750455,
		-0.587820, -0.776859, 0.225737,
		-0.701152, 0.350037, -0.621176,
		39.806442, 35.641171, 31.816557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065830, 34.823936, 31.812878>,  <40.297249, 35.396145, 32.251381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065830, 34.823936, 31.812878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972534, 35.159874, 31.616812>,  <39.916557, 35.361435, 31.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972534, 35.159874, 31.616812>,  <40.065830, 34.823936, 31.812878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972534, 35.159874, 31.616812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249929, -0.435360, -0.864868,
		-0.939752, -0.324231, -0.108356,
		-0.233243, 0.839843, -0.490166,
		39.902561, 35.411827, 31.469763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882523, 34.566959, 31.179865>,  <40.065830, 34.823936, 31.812878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882523, 34.566959, 31.179865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905399, 34.951351, 31.071611>,  <39.919125, 35.181988, 31.006659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905399, 34.951351, 31.071611>,  <39.882523, 34.566959, 31.179865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905399, 34.951351, 31.071611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379849, -0.271637, -0.884267,
		-0.923279, -0.052227, -0.380564,
		0.057192, 0.960982, -0.270635,
		39.922558, 35.239647, 30.990421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503990, 34.662384, 30.538582>,  <39.882523, 34.566959, 31.179865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503990, 34.662384, 30.538582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776791, 34.954811, 30.546810>,  <39.940472, 35.130268, 30.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776791, 34.954811, 30.546810>,  <39.503990, 34.662384, 30.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776791, 34.954811, 30.546810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303362, -0.257185, -0.917511,
		-0.665470, 0.631980, -0.397177,
		0.681997, 0.731065, 0.020570,
		39.981388, 35.174129, 30.552980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394669, 35.102810, 29.903646>,  <39.503990, 34.662384, 30.538582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394669, 35.102810, 29.903646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773155, 35.113644, 30.032600>,  <40.000248, 35.120144, 30.109972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773155, 35.113644, 30.032600>,  <39.394669, 35.102810, 29.903646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773155, 35.113644, 30.032600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320826, -0.206902, -0.924263,
		0.041668, 0.977987, -0.204464,
		0.946221, 0.027085, 0.322385,
		40.057022, 35.121769, 30.129316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769066, 35.461411, 29.366549>,  <39.394669, 35.102810, 29.903646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769066, 35.461411, 29.366549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060925, 35.296917, 29.585089>,  <40.236038, 35.198219, 29.716213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060925, 35.296917, 29.585089>,  <39.769066, 35.461411, 29.366549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060925, 35.296917, 29.585089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515311, -0.194549, -0.834629,
		0.449523, 0.890525, 0.069964,
		0.729647, -0.411238, 0.546351,
		40.279819, 35.173546, 29.748995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381073, 35.534000, 28.972322>,  <39.769066, 35.461411, 29.366549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381073, 35.534000, 28.972322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510990, 35.275776, 29.248804>,  <40.588940, 35.120842, 29.414692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510990, 35.275776, 29.248804>,  <40.381073, 35.534000, 28.972322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510990, 35.275776, 29.248804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554416, -0.462137, -0.692136,
		0.766247, 0.608012, 0.207814,
		0.324789, -0.645562, 0.691203,
		40.608425, 35.082108, 29.456165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089157, 35.547737, 28.877985>,  <40.381073, 35.534000, 28.972322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089157, 35.547737, 28.877985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020905, 35.205643, 29.073723>,  <40.979954, 35.000385, 29.191166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020905, 35.205643, 29.073723>,  <41.089157, 35.547737, 28.877985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020905, 35.205643, 29.073723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496201, -0.503642, -0.707198,
		0.851275, 0.122143, 0.510306,
		-0.170632, -0.855234, 0.489345,
		40.969715, 34.949074, 29.220526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752533, 35.184097, 29.020153>,  <41.089157, 35.547737, 28.877985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752533, 35.184097, 29.020153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462990, 34.908367, 29.031858>,  <41.289265, 34.742928, 29.038881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462990, 34.908367, 29.031858>,  <41.752533, 35.184097, 29.020153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462990, 34.908367, 29.031858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490670, -0.544144, -0.680551,
		0.485044, -0.478266, 0.732116,
		-0.723861, -0.689325, 0.029263,
		41.245831, 34.701569, 29.040638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043751, 34.531517, 29.002447>,  <41.752533, 35.184097, 29.020153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043751, 34.531517, 29.002447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685291, 34.373676, 28.921251>,  <41.470215, 34.278973, 28.872534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685291, 34.373676, 28.921251>,  <42.043751, 34.531517, 29.002447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685291, 34.373676, 28.921251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435670, -0.695455, -0.571432,
		0.084318, -0.600525, 0.795148,
		-0.896149, -0.394604, -0.202992,
		41.416447, 34.255295, 28.860353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979008, 33.772160, 29.191296>,  <42.043751, 34.531517, 29.002447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979008, 33.772160, 29.191296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718452, 33.866932, 28.902975>,  <41.562119, 33.923794, 28.729982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718452, 33.866932, 28.902975>,  <41.979008, 33.772160, 29.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718452, 33.866932, 28.902975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219552, -0.850495, -0.477971,
		-0.726285, -0.469598, 0.501983,
		-0.651388, 0.236932, -0.720803,
		41.523037, 33.938011, 28.686733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607697, 33.128265, 29.030640>,  <41.979008, 33.772160, 29.191296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607697, 33.128265, 29.030640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562912, 33.344791, 28.697306>,  <41.536041, 33.474705, 28.497305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562912, 33.344791, 28.697306>,  <41.607697, 33.128265, 29.030640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562912, 33.344791, 28.697306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271369, -0.790077, -0.549670,
		-0.955941, -0.287682, -0.058437,
		-0.111961, 0.541310, -0.833335,
		41.529324, 33.507183, 28.447306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101574, 32.801846, 28.618603>,  <41.607697, 33.128265, 29.030640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101574, 32.801846, 28.618603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326595, 33.029106, 28.378357>,  <41.461609, 33.165462, 28.234209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326595, 33.029106, 28.378357>,  <41.101574, 32.801846, 28.618603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326595, 33.029106, 28.378357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133200, -0.779260, -0.612382,
		-0.815962, 0.264494, -0.514052,
		0.562551, 0.568152, -0.600616,
		41.495361, 33.199551, 28.198172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853413, 32.698879, 27.893057>,  <41.101574, 32.801846, 28.618603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853413, 32.698879, 27.893057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226345, 32.838703, 27.856050>,  <41.450104, 32.922596, 27.833847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226345, 32.838703, 27.856050>,  <40.853413, 32.698879, 27.893057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226345, 32.838703, 27.856050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199464, -0.710593, -0.674739,
		-0.301603, 0.610629, -0.732235,
		0.932336, 0.349557, -0.092518,
		41.506046, 32.943569, 27.828295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053547, 32.506863, 27.185482>,  <40.853413, 32.698879, 27.893057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053547, 32.506863, 27.185482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404015, 32.626476, 27.336691>,  <41.614296, 32.698246, 27.427416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404015, 32.626476, 27.336691>,  <41.053547, 32.506863, 27.185482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404015, 32.626476, 27.336691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481960, -0.533714, -0.694884,
		-0.006039, 0.791030, -0.611748,
		0.876173, 0.299034, 0.378022,
		41.666866, 32.716187, 27.450098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476627, 33.027588, 26.667171>,  <41.053547, 32.506863, 27.185482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476627, 33.027588, 26.667171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719002, 32.827858, 26.914885>,  <41.864426, 32.708019, 27.063513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719002, 32.827858, 26.914885>,  <41.476627, 33.027588, 26.667171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719002, 32.827858, 26.914885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343003, -0.538399, -0.769724,
		0.717764, 0.678823, -0.154967,
		0.605940, -0.499326, 0.619281,
		41.900784, 32.678059, 27.100670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162148, 32.875610, 26.231817>,  <41.476627, 33.027588, 26.667171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162148, 32.875610, 26.231817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197308, 32.638496, 26.552036>,  <42.218403, 32.496227, 26.744167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197308, 32.638496, 26.552036>,  <42.162148, 32.875610, 26.231817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197308, 32.638496, 26.552036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546319, -0.643322, -0.536351,
		0.832952, 0.484501, 0.267302,
		0.087901, -0.592787, 0.800548,
		42.223679, 32.460659, 26.792200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726940, 32.581898, 26.041170>,  <42.162148, 32.875610, 26.231817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726940, 32.581898, 26.041170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603668, 32.341595, 26.336226>,  <42.529705, 32.197411, 26.513258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603668, 32.341595, 26.336226>,  <42.726940, 32.581898, 26.041170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603668, 32.341595, 26.336226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321244, -0.795550, -0.513713,
		0.895448, 0.078647, 0.438163,
		-0.308179, -0.600762, 0.737639,
		42.511215, 32.161366, 26.557518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304226, 32.217140, 26.338951>,  <42.726940, 32.581898, 26.041170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304226, 32.217140, 26.338951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985184, 31.995129, 26.433409>,  <42.793758, 31.861923, 26.490084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985184, 31.995129, 26.433409>,  <43.304226, 32.217140, 26.338951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985184, 31.995129, 26.433409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400500, -0.780073, -0.480714,
		0.451020, -0.288846, 0.844481,
		-0.797609, -0.555026, 0.236146,
		42.745899, 31.828621, 26.504253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507648, 31.592665, 26.504877>,  <43.304226, 32.217140, 26.338951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507648, 31.592665, 26.504877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133053, 31.503088, 26.396929>,  <42.908295, 31.449341, 26.332159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133053, 31.503088, 26.396929>,  <43.507648, 31.592665, 26.504877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133053, 31.503088, 26.396929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339276, -0.773279, -0.535660,
		-0.088730, -0.593203, 0.800148,
		-0.936493, -0.223943, -0.269872,
		42.852104, 31.435905, 26.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603134, 30.959202, 26.463655>,  <43.507648, 31.592665, 26.504877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603134, 30.959202, 26.463655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270432, 31.020664, 26.250278>,  <43.070808, 31.057541, 26.122252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270432, 31.020664, 26.250278>,  <43.603134, 30.959202, 26.463655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270432, 31.020664, 26.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262211, -0.738237, -0.621492,
		-0.489304, -0.656808, 0.573746,
		-0.831761, 0.153656, -0.533445,
		43.020905, 31.066761, 26.090244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133575, 30.472446, 26.612617>,  <43.603134, 30.959202, 26.463655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133575, 30.472446, 26.612617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491341, 30.294626, 26.632185>,  <44.706001, 30.187935, 26.643925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491341, 30.294626, 26.632185>,  <44.133575, 30.472446, 26.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491341, 30.294626, 26.632185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398239, 0.841433, 0.365235,
		-0.203526, -0.307192, 0.929629,
		0.894418, -0.444549, 0.048918,
		44.759666, 30.161261, 26.646860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233658, 30.560200, 25.881580>,  <44.133575, 30.472446, 26.612617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233658, 30.560200, 25.881580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331161, 30.220428, 26.068792>,  <44.389664, 30.016565, 26.181120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331161, 30.220428, 26.068792>,  <44.233658, 30.560200, 25.881580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331161, 30.220428, 26.068792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703529, 0.177301, 0.688194,
		-0.667554, -0.497025, -0.554380,
		0.243758, -0.849429, 0.468030,
		44.404289, 29.965599, 26.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558891, 30.134300, 26.062998>,  <44.233658, 30.560200, 25.881580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558891, 30.134300, 26.062998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832310, 29.970945, 26.304983>,  <43.996361, 29.872932, 26.450174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832310, 29.970945, 26.304983>,  <43.558891, 30.134300, 26.062998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832310, 29.970945, 26.304983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661864, 0.002643, 0.749620,
		-0.307737, -0.912803, -0.268492,
		0.683546, -0.408390, 0.604965,
		44.037373, 29.848429, 26.486473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218475, 29.579844, 26.445131>,  <43.558891, 30.134300, 26.062998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218475, 29.579844, 26.445131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529793, 29.693850, 26.668926>,  <43.716583, 29.762253, 26.803204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529793, 29.693850, 26.668926>,  <43.218475, 29.579844, 26.445131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529793, 29.693850, 26.668926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615189, 0.167751, 0.770326,
		0.125695, -0.943732, 0.305894,
		0.778295, 0.285009, 0.559488,
		43.763283, 29.779354, 26.836771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159557, 29.149828, 27.167828>,  <43.218475, 29.579844, 26.445131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159557, 29.149828, 27.167828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388920, 29.467979, 27.246391>,  <43.526539, 29.658871, 27.293530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388920, 29.467979, 27.246391>,  <43.159557, 29.149828, 27.167828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388920, 29.467979, 27.246391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506351, 0.155596, 0.848174,
		0.644057, -0.585803, 0.491960,
		0.573410, 0.795377, 0.196409,
		43.560944, 29.706593, 27.305315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294865, 29.016733, 27.778143>,  <43.159557, 29.149828, 27.167828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294865, 29.016733, 27.778143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389961, 29.402437, 27.731358>,  <43.447021, 29.633860, 27.703287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389961, 29.402437, 27.731358>,  <43.294865, 29.016733, 27.778143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389961, 29.402437, 27.731358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433469, 0.213085, 0.875614,
		0.869242, -0.157473, 0.468637,
		0.237745, 0.964259, -0.116963,
		43.461285, 29.691715, 27.696268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496841, 29.301985, 28.480314>,  <43.294865, 29.016733, 27.778143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496841, 29.301985, 28.480314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366112, 29.614239, 28.267223>,  <43.287674, 29.801590, 28.139370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366112, 29.614239, 28.267223>,  <43.496841, 29.301985, 28.480314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366112, 29.614239, 28.267223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501770, 0.334348, 0.797771,
		0.800883, 0.528036, 0.282425,
		-0.326824, 0.780634, -0.532726,
		43.268066, 29.848429, 28.107405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610271, 29.891319, 28.934090>,  <43.496841, 29.301985, 28.480314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610271, 29.891319, 28.934090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316864, 30.008915, 28.688969>,  <43.140820, 30.079472, 28.541897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316864, 30.008915, 28.688969>,  <43.610271, 29.891319, 28.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316864, 30.008915, 28.688969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504857, 0.367975, 0.780842,
		0.455054, 0.882136, -0.121494,
		-0.733516, 0.293989, -0.612801,
		43.096809, 30.097111, 28.505129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435154, 30.521702, 29.221821>,  <43.610271, 29.891319, 28.934090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435154, 30.521702, 29.221821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116272, 30.395842, 29.015730>,  <42.924942, 30.320326, 28.892075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116272, 30.395842, 29.015730>,  <43.435154, 30.521702, 29.221821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116272, 30.395842, 29.015730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597011, 0.284082, 0.750250,
		-0.089701, 0.905699, -0.414322,
		-0.797203, -0.314653, -0.515230,
		42.877110, 30.301445, 28.861160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042953, 31.034931, 29.304623>,  <43.435154, 30.521702, 29.221821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042953, 31.034931, 29.304623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787483, 30.768221, 29.151001>,  <42.634201, 30.608194, 29.058828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787483, 30.768221, 29.151001>,  <43.042953, 31.034931, 29.304623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787483, 30.768221, 29.151001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720331, 0.342580, 0.603126,
		-0.270581, 0.661851, -0.699099,
		-0.638677, -0.666778, -0.384056,
		42.595879, 30.568188, 29.035784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468800, 31.386099, 29.037394>,  <43.042953, 31.034931, 29.304623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468800, 31.386099, 29.037394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348919, 31.010395, 29.104290>,  <42.276989, 30.784973, 29.144428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348919, 31.010395, 29.104290>,  <42.468800, 31.386099, 29.037394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348919, 31.010395, 29.104290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857818, 0.342026, 0.383623,
		-0.417522, -0.028489, -0.908220,
		-0.299706, -0.939258, 0.167241,
		42.259007, 30.728617, 29.154463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743542, 31.296055, 28.777466>,  <42.468800, 31.386099, 29.037394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743542, 31.296055, 28.777466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818130, 31.011997, 29.049032>,  <41.862885, 30.841562, 29.211971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818130, 31.011997, 29.049032>,  <41.743542, 31.296055, 28.777466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818130, 31.011997, 29.049032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671384, 0.412396, 0.615771,
		-0.717266, -0.570638, -0.399876,
		0.186475, -0.710142, 0.678915,
		41.874073, 30.798954, 29.252707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028141, 31.080667, 29.032761>,  <41.743542, 31.296055, 28.777466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028141, 31.080667, 29.032761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300148, 30.965061, 29.302290>,  <41.463352, 30.895697, 29.464008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300148, 30.965061, 29.302290>,  <41.028141, 31.080667, 29.032761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300148, 30.965061, 29.302290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600119, 0.308582, 0.737994,
		-0.421223, -0.906226, 0.036398,
		0.680021, -0.289017, 0.673825,
		41.504154, 30.878357, 29.504438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599270, 30.689045, 29.433386>,  <41.028141, 31.080667, 29.032761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599270, 30.689045, 29.433386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914227, 30.803478, 29.651808>,  <41.103199, 30.872139, 29.782862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914227, 30.803478, 29.651808>,  <40.599270, 30.689045, 29.433386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914227, 30.803478, 29.651808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601412, 0.161987, 0.782346,
		0.135345, -0.944420, 0.299588,
		0.787392, 0.286062, 0.546061,
		41.150444, 30.889303, 29.815624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416565, 30.467800, 30.073328>,  <40.599270, 30.689045, 29.433386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416565, 30.467800, 30.073328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721394, 30.715775, 30.148079>,  <40.904289, 30.864559, 30.192930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721394, 30.715775, 30.148079>,  <40.416565, 30.467800, 30.073328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721394, 30.715775, 30.148079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498444, 0.377464, 0.780432,
		0.413285, -0.687889, 0.596660,
		0.762069, 0.619943, 0.186874,
		40.950016, 30.901756, 30.204142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487225, 30.447178, 30.864788>,  <40.416565, 30.467800, 30.073328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487225, 30.447178, 30.864788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721607, 30.757530, 30.771263>,  <40.862236, 30.943741, 30.715149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721607, 30.757530, 30.771263>,  <40.487225, 30.447178, 30.864788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721607, 30.757530, 30.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291279, 0.470914, 0.832704,
		0.756183, -0.419823, 0.501932,
		0.585955, 0.775880, -0.233812,
		40.897392, 30.990294, 30.701120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006168, 30.684555, 31.457146>,  <40.487225, 30.447178, 30.864788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006168, 30.684555, 31.457146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912628, 30.995373, 31.223387>,  <40.856506, 31.181864, 31.083132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912628, 30.995373, 31.223387>,  <41.006168, 30.684555, 31.457146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912628, 30.995373, 31.223387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451632, 0.445466, 0.773039,
		0.861013, 0.444705, 0.246766,
		-0.233848, 0.777044, -0.584395,
		40.842472, 31.228485, 31.048069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165623, 31.311842, 31.847904>,  <41.006168, 30.684555, 31.457146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165623, 31.311842, 31.847904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944592, 31.466320, 31.552469>,  <40.811974, 31.559006, 31.375208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944592, 31.466320, 31.552469>,  <41.165623, 31.311842, 31.847904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944592, 31.466320, 31.552469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413455, 0.642431, 0.645242,
		0.723681, 0.661919, -0.195319,
		-0.552577, 0.386194, -0.738589,
		40.778820, 31.582178, 31.330893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243198, 32.012680, 31.880213>,  <41.165623, 31.311842, 31.847904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243198, 32.012680, 31.880213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903072, 31.981562, 31.672014>,  <40.698997, 31.962889, 31.547094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903072, 31.981562, 31.672014>,  <41.243198, 32.012680, 31.880213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903072, 31.981562, 31.672014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385945, 0.764570, 0.516217,
		0.357795, 0.639828, -0.680149,
		-0.850311, -0.077800, -0.520498,
		40.647980, 31.958221, 31.515865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951897, 32.703671, 31.763584>,  <41.243198, 32.012680, 31.880213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951897, 32.703671, 31.763584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636314, 32.465153, 31.704271>,  <40.446964, 32.322041, 31.668684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636314, 32.465153, 31.704271>,  <40.951897, 32.703671, 31.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636314, 32.465153, 31.704271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583006, 0.650235, 0.487132,
		-0.194058, 0.470772, -0.860648,
		-0.788952, -0.596295, -0.148280,
		40.399628, 32.286263, 31.659788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423782, 33.099480, 31.541988>,  <40.951897, 32.703671, 31.763584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423782, 33.099480, 31.541988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249706, 32.774548, 31.697277>,  <40.145260, 32.579586, 31.790451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249706, 32.774548, 31.697277>,  <40.423782, 33.099480, 31.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249706, 32.774548, 31.697277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480985, 0.574278, 0.662463,
		-0.761091, 0.101570, -0.640644,
		-0.435194, -0.812335, 0.388224,
		40.119148, 32.530846, 31.813744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699257, 33.381271, 31.745579>,  <40.423782, 33.099480, 31.541988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699257, 33.381271, 31.745579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784409, 33.050938, 31.954454>,  <39.835499, 32.852737, 32.079781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784409, 33.050938, 31.954454>,  <39.699257, 33.381271, 31.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784409, 33.050938, 31.954454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273843, 0.462590, 0.843220,
		-0.937918, -0.322505, -0.127671,
		0.212883, -0.825834, 0.522187,
		39.848274, 32.803188, 32.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047802, 33.213772, 32.223114>,  <39.699257, 33.381271, 31.745579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047802, 33.213772, 32.223114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398872, 33.075974, 32.356384>,  <39.609516, 32.993294, 32.436344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398872, 33.075974, 32.356384>,  <39.047802, 33.213772, 32.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398872, 33.075974, 32.356384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147695, 0.466934, 0.871871,
		-0.455922, -0.814431, 0.358939,
		0.877679, -0.344491, 0.333173,
		39.662178, 32.972626, 32.456337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914684, 33.157349, 32.873173>,  <39.047802, 33.213772, 32.223114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914684, 33.157349, 32.873173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310249, 33.100559, 32.890564>,  <39.547588, 33.066486, 32.900997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310249, 33.100559, 32.890564>,  <38.914684, 33.157349, 32.873173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310249, 33.100559, 32.890564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011625, 0.365930, 0.930570,
		-0.148028, -0.919749, 0.363524,
		0.988915, -0.141976, 0.043476,
		39.606922, 33.057968, 32.903606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040878, 32.992191, 33.546360>,  <38.914684, 33.157349, 32.873173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040878, 32.992191, 33.546360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409946, 33.083813, 33.422287>,  <39.631386, 33.138786, 33.347843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409946, 33.083813, 33.422287>,  <39.040878, 32.992191, 33.546360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409946, 33.083813, 33.422287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238209, 0.293982, 0.925652,
		0.303220, -0.927958, 0.216684,
		0.922667, 0.229061, -0.310189,
		39.686749, 33.152527, 33.329231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404480, 32.966354, 34.107365>,  <39.040878, 32.992191, 33.546360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404480, 32.966354, 34.107365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681118, 33.146362, 33.881382>,  <39.847099, 33.254368, 33.745792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681118, 33.146362, 33.881382>,  <39.404480, 32.966354, 34.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681118, 33.146362, 33.881382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379406, 0.439230, 0.814327,
		0.614613, -0.777531, 0.133027,
		0.691594, 0.450024, -0.564956,
		39.888596, 33.281368, 33.711895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096443, 32.776127, 34.273453>,  <39.404480, 32.966354, 34.107365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096443, 32.776127, 34.273453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078651, 33.147839, 34.126778>,  <40.067978, 33.370865, 34.038773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078651, 33.147839, 34.126778>,  <40.096443, 32.776127, 34.273453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078651, 33.147839, 34.126778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359773, 0.357323, 0.861907,
		0.931979, -0.093589, -0.350223,
		-0.044478, 0.929280, -0.366689,
		40.065308, 33.426624, 34.016769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714893, 33.040123, 34.440033>,  <40.096443, 32.776127, 34.273453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714893, 33.040123, 34.440033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471584, 33.348148, 34.363079>,  <40.325600, 33.532963, 34.316906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471584, 33.348148, 34.363079>,  <40.714893, 33.040123, 34.440033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471584, 33.348148, 34.363079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107647, 0.320179, 0.941221,
		0.786398, 0.551805, -0.277650,
		-0.608268, 0.770063, -0.192388,
		40.289104, 33.579166, 34.305363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105160, 33.607479, 34.705437>,  <40.714893, 33.040123, 34.440033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105160, 33.607479, 34.705437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729412, 33.741173, 34.674778>,  <40.503963, 33.821388, 34.656384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729412, 33.741173, 34.674778>,  <41.105160, 33.607479, 34.705437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729412, 33.741173, 34.674778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048963, 0.351955, 0.934735,
		0.339400, 0.874307, -0.346980,
		-0.939367, 0.334238, -0.076645,
		40.447601, 33.841446, 34.651783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081528, 34.246025, 35.006664>,  <41.105160, 33.607479, 34.705437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081528, 34.246025, 35.006664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698021, 34.132710, 34.997555>,  <40.467918, 34.064720, 34.992088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698021, 34.132710, 34.997555>,  <41.081528, 34.246025, 35.006664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698021, 34.132710, 34.997555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076701, 0.180754, 0.980533,
		-0.273656, 0.941847, -0.195029,
		-0.958765, -0.283287, -0.022776,
		40.410393, 34.047722, 34.990723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787437, 34.686687, 35.509735>,  <41.081528, 34.246025, 35.006664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787437, 34.686687, 35.509735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542191, 34.374046, 35.463810>,  <40.395042, 34.186462, 35.436253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542191, 34.374046, 35.463810>,  <40.787437, 34.686687, 35.509735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542191, 34.374046, 35.463810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237992, 0.044162, 0.970263,
		-0.753289, 0.622212, -0.213091,
		-0.613119, -0.781602, -0.114815,
		40.358253, 34.139565, 35.429367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199921, 34.861103, 35.730045>,  <40.787437, 34.686687, 35.509735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199921, 34.861103, 35.730045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188381, 34.462620, 35.762901>,  <40.181458, 34.223530, 35.782616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188381, 34.462620, 35.762901>,  <40.199921, 34.861103, 35.730045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188381, 34.462620, 35.762901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292925, 0.086988, 0.952170,
		-0.955700, 0.003409, -0.294322,
		-0.028848, -0.996204, 0.082136,
		40.179726, 34.163757, 35.787540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559433, 34.731632, 36.061008>,  <40.199921, 34.861103, 35.730045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559433, 34.731632, 36.061008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788361, 34.413128, 36.139416>,  <39.925716, 34.222027, 36.186459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788361, 34.413128, 36.139416>,  <39.559433, 34.731632, 36.061008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788361, 34.413128, 36.139416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377539, -0.043659, 0.924964,
		-0.727952, -0.603380, -0.325605,
		0.572320, -0.796258, 0.196017,
		39.960056, 34.174252, 36.198219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087170, 34.448944, 36.465836>,  <39.559433, 34.731632, 36.061008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087170, 34.448944, 36.465836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438179, 34.263683, 36.515537>,  <39.648785, 34.152527, 36.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438179, 34.263683, 36.515537>,  <39.087170, 34.448944, 36.465836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438179, 34.263683, 36.515537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236911, -0.193458, 0.952075,
		-0.416918, -0.864907, -0.279490,
		0.877526, -0.463152, 0.124250,
		39.701435, 34.124737, 36.552811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918209, 33.877651, 36.793797>,  <39.087170, 34.448944, 36.465836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918209, 33.877651, 36.793797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308624, 33.879040, 36.880821>,  <39.542873, 33.879871, 36.933037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308624, 33.879040, 36.880821>,  <38.918209, 33.877651, 36.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308624, 33.879040, 36.880821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203555, -0.338728, 0.918602,
		0.076880, -0.940878, -0.329906,
		0.976040, 0.003469, 0.217562,
		39.601437, 33.880081, 36.946091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027092, 33.276775, 37.163979>,  <38.918209, 33.877651, 36.793797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027092, 33.276775, 37.163979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310329, 33.532024, 37.284908>,  <39.480274, 33.685173, 37.357464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310329, 33.532024, 37.284908>,  <39.027092, 33.276775, 37.163979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310329, 33.532024, 37.284908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122571, -0.310567, 0.942616,
		0.695395, -0.704520, -0.141696,
		0.708098, 0.638122, 0.302320,
		39.522758, 33.723461, 37.375603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521713, 32.819122, 37.437218>,  <39.027092, 33.276775, 37.163979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521713, 32.819122, 37.437218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597191, 33.179577, 37.593342>,  <39.642479, 33.395851, 37.687016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597191, 33.179577, 37.593342>,  <39.521713, 32.819122, 37.437218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597191, 33.179577, 37.593342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138717, -0.417922, 0.897830,
		0.972190, -0.115272, -0.203862,
		0.188693, 0.901140, 0.390310,
		39.653797, 33.449921, 37.710434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153305, 32.839870, 37.942299>,  <39.521713, 32.819122, 37.437218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153305, 32.839870, 37.942299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934673, 33.160168, 38.040325>,  <39.803493, 33.352348, 38.099140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934673, 33.160168, 38.040325>,  <40.153305, 32.839870, 37.942299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934673, 33.160168, 38.040325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054105, -0.258269, 0.964557,
		0.835658, 0.540466, 0.097840,
		-0.546579, 0.800746, 0.245067,
		39.770699, 33.400391, 38.113846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499569, 33.118992, 38.539127>,  <40.153305, 32.839870, 37.942299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499569, 33.118992, 38.539127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134003, 33.280888, 38.551422>,  <39.914665, 33.378025, 38.558800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134003, 33.280888, 38.551422>,  <40.499569, 33.118992, 38.539127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134003, 33.280888, 38.551422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003156, -0.082817, 0.996560,
		0.405897, 0.910672, 0.076965,
		-0.913913, 0.404744, 0.030741,
		39.859829, 33.402309, 38.560646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573006, 33.602444, 39.012905>,  <40.499569, 33.118992, 38.539127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573006, 33.602444, 39.012905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175850, 33.559841, 38.991611>,  <39.937557, 33.534279, 38.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175850, 33.559841, 38.991611>,  <40.573006, 33.602444, 39.012905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175850, 33.559841, 38.991611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053358, -0.001705, 0.998574,
		-0.106446, 0.994310, -0.003990,
		-0.992886, -0.106508, -0.053235,
		39.877983, 33.527889, 38.975639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251270, 34.200092, 39.244648>,  <40.573006, 33.602444, 39.012905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251270, 34.200092, 39.244648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953793, 33.940998, 39.310802>,  <39.775307, 33.785542, 39.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953793, 33.940998, 39.310802>,  <40.251270, 34.200092, 39.244648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953793, 33.940998, 39.310802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125650, 0.107550, 0.986228,
		-0.656602, 0.754236, 0.001403,
		-0.743698, -0.647735, 0.165387,
		39.730682, 33.746677, 39.360420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063484, 34.334267, 39.988327>,  <40.251270, 34.200092, 39.244648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063484, 34.334267, 39.988327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789433, 34.043125, 39.976814>,  <39.625000, 33.868439, 39.969906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789433, 34.043125, 39.976814>,  <40.063484, 34.334267, 39.988327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789433, 34.043125, 39.976814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035864, -0.073173, 0.996674,
		-0.727538, 0.681819, 0.076237,
		-0.685130, -0.727852, -0.028784,
		39.583893, 33.824768, 39.968178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576141, 34.338066, 40.538727>,  <40.063484, 34.334267, 39.988327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576141, 34.338066, 40.538727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631935, 33.955078, 40.437698>,  <39.665413, 33.725285, 40.377083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631935, 33.955078, 40.437698>,  <39.576141, 34.338066, 40.538727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631935, 33.955078, 40.437698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446006, -0.166978, 0.879316,
		-0.884095, -0.235296, 0.403748,
		0.139483, -0.957473, -0.252568,
		39.673779, 33.667835, 40.361927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286057, 33.931633, 41.059238>,  <39.576141, 34.338066, 40.538727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286057, 33.931633, 41.059238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583500, 33.722164, 40.892956>,  <39.761967, 33.596485, 40.793186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583500, 33.722164, 40.892956>,  <39.286057, 33.931633, 41.059238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583500, 33.722164, 40.892956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445672, -0.075267, 0.892027,
		-0.498416, -0.848590, 0.177415,
		0.743612, -0.523669, -0.415707,
		39.806583, 33.565063, 40.768242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368191, 33.274414, 41.398705>,  <39.286057, 33.931633, 41.059238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368191, 33.274414, 41.398705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716465, 33.367016, 41.225124>,  <39.925430, 33.422577, 41.120975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716465, 33.367016, 41.225124>,  <39.368191, 33.274414, 41.398705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716465, 33.367016, 41.225124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466461, -0.108941, 0.877807,
		0.155945, -0.966714, -0.202843,
		0.870687, 0.231508, -0.433946,
		39.977673, 33.436470, 41.094940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744122, 32.762646, 41.704369>,  <39.368191, 33.274414, 41.398705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744122, 32.762646, 41.704369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945778, 33.089561, 41.592739>,  <40.066772, 33.285709, 41.525761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945778, 33.089561, 41.592739>,  <39.744122, 32.762646, 41.704369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945778, 33.089561, 41.592739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342285, 0.107585, 0.933416,
		0.792893, -0.566098, -0.225507,
		0.504144, 0.817287, -0.279071,
		40.097019, 33.334747, 41.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390129, 32.714592, 42.032082>,  <39.744122, 32.762646, 41.704369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390129, 32.714592, 42.032082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433517, 33.090401, 41.902134>,  <40.459549, 33.315884, 41.824165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433517, 33.090401, 41.902134>,  <40.390129, 32.714592, 42.032082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433517, 33.090401, 41.902134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500197, 0.230831, 0.834578,
		0.859091, -0.253024, -0.444906,
		0.108471, 0.939519, -0.324866,
		40.466061, 33.372257, 41.804672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070034, 32.929543, 42.234104>,  <40.390129, 32.714592, 42.032082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070034, 32.929543, 42.234104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832134, 33.247623, 42.186897>,  <40.689396, 33.438473, 42.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832134, 33.247623, 42.186897>,  <41.070034, 32.929543, 42.234104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832134, 33.247623, 42.186897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379796, 0.407319, 0.830570,
		0.708539, 0.449160, -0.544267,
		-0.594749, 0.795202, -0.118012,
		40.653709, 33.486183, 42.151493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476185, 33.510849, 42.252281>,  <41.070034, 32.929543, 42.234104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476185, 33.510849, 42.252281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103622, 33.613037, 42.355988>,  <40.880085, 33.674351, 42.418213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103622, 33.613037, 42.355988>,  <41.476185, 33.510849, 42.252281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103622, 33.613037, 42.355988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352029, 0.451180, 0.820068,
		0.092530, 0.855084, -0.510166,
		-0.931404, 0.255474, 0.259267,
		40.824200, 33.689678, 42.433769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461773, 34.263554, 42.307796>,  <41.476185, 33.510849, 42.252281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461773, 34.263554, 42.307796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149921, 34.102642, 42.499779>,  <40.962811, 34.006096, 42.614967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149921, 34.102642, 42.499779>,  <41.461773, 34.263554, 42.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149921, 34.102642, 42.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098331, 0.678260, 0.728213,
		-0.618476, 0.614929, -0.489233,
		-0.779627, -0.402275, 0.479955,
		40.916035, 33.981960, 42.643764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137093, 34.852989, 42.476761>,  <41.461773, 34.263554, 42.307796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137093, 34.852989, 42.476761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078033, 34.537067, 42.714890>,  <41.042599, 34.347515, 42.857765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078033, 34.537067, 42.714890>,  <41.137093, 34.852989, 42.476761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078033, 34.537067, 42.714890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241971, 0.554779, 0.796034,
		-0.958984, 0.261582, 0.109199,
		-0.147647, -0.789807, 0.595319,
		41.033741, 34.300125, 42.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817535, 35.133034, 43.087261>,  <41.137093, 34.852989, 42.476761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817535, 35.133034, 43.087261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916294, 34.760269, 43.193527>,  <40.975548, 34.536610, 43.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916294, 34.760269, 43.193527>,  <40.817535, 35.133034, 43.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916294, 34.760269, 43.193527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283527, 0.331626, 0.899798,
		-0.926637, -0.146831, 0.346099,
		0.246894, -0.931915, 0.265666,
		40.990364, 34.480694, 43.273228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092400, 35.239094, 43.678307>,  <40.817535, 35.133034, 43.087261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092400, 35.239094, 43.678307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070755, 34.844292, 43.738819>,  <41.057766, 34.607410, 43.775127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070755, 34.844292, 43.738819>,  <41.092400, 35.239094, 43.678307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070755, 34.844292, 43.738819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329061, 0.125410, 0.935944,
		-0.942757, 0.100428, 0.318000,
		-0.054115, -0.987009, 0.151278,
		41.054520, 34.548187, 43.784203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661335, 34.998356, 44.358700>,  <41.092400, 35.239094, 43.678307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661335, 34.998356, 44.358700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961784, 34.744217, 44.286983>,  <41.142056, 34.591732, 44.243954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961784, 34.744217, 44.286983>,  <40.661335, 34.998356, 44.358700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961784, 34.744217, 44.286983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327246, 0.122477, 0.936968,
		-0.573346, -0.762448, 0.299911,
		0.751123, -0.635352, -0.179286,
		41.187122, 34.553612, 44.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731022, 34.666225, 44.962048>,  <40.661335, 34.998356, 44.358700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731022, 34.666225, 44.962048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076591, 34.612438, 44.767910>,  <41.283932, 34.580166, 44.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076591, 34.612438, 44.767910>,  <40.731022, 34.666225, 44.962048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076591, 34.612438, 44.767910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503610, 0.237720, 0.830582,
		0.003688, -0.961981, 0.273091,
		0.863923, -0.134468, -0.485340,
		41.335770, 34.572098, 44.622307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170944, 34.215050, 45.376759>,  <40.731022, 34.666225, 44.962048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170944, 34.215050, 45.376759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406162, 34.447472, 45.151695>,  <41.547291, 34.586926, 45.016659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406162, 34.447472, 45.151695>,  <41.170944, 34.215050, 45.376759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406162, 34.447472, 45.151695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583530, 0.176941, 0.792581,
		0.560088, -0.794400, -0.235011,
		0.588043, 0.581051, -0.562659,
		41.582577, 34.621788, 44.982899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877777, 34.130554, 45.648918>,  <41.170944, 34.215050, 45.376759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877777, 34.130554, 45.648918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858101, 34.481152, 45.457359>,  <41.846294, 34.691509, 45.342422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858101, 34.481152, 45.457359>,  <41.877777, 34.130554, 45.648918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858101, 34.481152, 45.457359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657305, 0.389424, 0.645213,
		0.752018, -0.283043, -0.595278,
		-0.049192, 0.876491, -0.478899,
		41.843342, 34.744099, 45.313690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551765, 34.306007, 45.592548>,  <41.877777, 34.130554, 45.648918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551765, 34.306007, 45.592548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366535, 34.655113, 45.530777>,  <42.255398, 34.864574, 45.493713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366535, 34.655113, 45.530777>,  <42.551765, 34.306007, 45.592548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366535, 34.655113, 45.530777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580992, 0.430486, 0.690747,
		0.669335, 0.230149, -0.706415,
		-0.463076, 0.872762, -0.154425,
		42.227612, 34.916943, 45.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107056, 34.862164, 45.479290>,  <42.551765, 34.306007, 45.592548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107056, 34.862164, 45.479290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779953, 35.060623, 45.595985>,  <42.583691, 35.179699, 45.666004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779953, 35.060623, 45.595985>,  <43.107056, 34.862164, 45.479290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779953, 35.060623, 45.595985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559562, 0.566597, 0.604862,
		0.134803, 0.657875, -0.740965,
		-0.817752, 0.496153, 0.291743,
		42.534626, 35.209469, 45.683510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231743, 35.623024, 45.469772>,  <43.107056, 34.862164, 45.479290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231743, 35.623024, 45.469772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913258, 35.604145, 45.711044>,  <42.722168, 35.592819, 45.855808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913258, 35.604145, 45.711044>,  <43.231743, 35.623024, 45.469772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913258, 35.604145, 45.711044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501135, 0.507141, 0.701194,
		-0.338987, 0.860570, -0.380140,
		-0.796211, -0.047195, 0.603176,
		42.674393, 35.589985, 45.891998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001316, 36.353447, 45.658669>,  <43.231743, 35.623024, 45.469772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001316, 36.353447, 45.658669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861912, 36.108345, 45.942379>,  <42.778267, 35.961285, 46.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861912, 36.108345, 45.942379>,  <43.001316, 36.353447, 45.658669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861912, 36.108345, 45.942379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453818, 0.551791, 0.699697,
		-0.820115, 0.565734, 0.085774,
		-0.348512, -0.612757, 0.709272,
		42.757359, 35.924519, 46.155159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850662, 36.698349, 46.322609>,  <43.001316, 36.353447, 45.658669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850662, 36.698349, 46.322609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934341, 36.329979, 46.454140>,  <42.984547, 36.108955, 46.533058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934341, 36.329979, 46.454140>,  <42.850662, 36.698349, 46.322609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934341, 36.329979, 46.454140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667354, 0.380239, 0.640357,
		-0.714756, 0.085484, 0.694130,
		0.209195, -0.920929, 0.328826,
		42.997101, 36.053699, 46.552788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252293, 36.817314, 46.818634>,  <42.850662, 36.698349, 46.322609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252293, 36.817314, 46.818634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300129, 36.568024, 47.127773>,  <43.328831, 36.418449, 47.313255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300129, 36.568024, 47.127773>,  <43.252293, 36.817314, 46.818634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300129, 36.568024, 47.127773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558191, -0.685959, -0.466780,
		0.821048, -0.375572, -0.429913,
		0.119594, -0.623222, 0.772847,
		43.336006, 36.381058, 47.359627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601242, 36.099499, 46.743439>,  <43.252293, 36.817314, 46.818634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601242, 36.099499, 46.743439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308403, 36.156258, 47.009941>,  <43.132698, 36.190311, 47.169842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308403, 36.156258, 47.009941>,  <43.601242, 36.099499, 46.743439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308403, 36.156258, 47.009941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581206, -0.640238, -0.502290,
		0.355292, -0.754958, 0.551186,
		-0.732097, 0.141893, 0.666258,
		43.088772, 36.198826, 47.209820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389469, 35.393250, 47.090919>,  <43.601242, 36.099499, 46.743439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389469, 35.393250, 47.090919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108986, 35.677849, 47.072689>,  <42.940697, 35.848606, 47.061752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108986, 35.677849, 47.072689>,  <43.389469, 35.393250, 47.090919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108986, 35.677849, 47.072689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581405, -0.607656, -0.541038,
		-0.412640, -0.352884, 0.839762,
		-0.701210, 0.711497, -0.045575,
		42.898624, 35.891296, 47.059017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758305, 35.027256, 47.073597>,  <43.389469, 35.393250, 47.090919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758305, 35.027256, 47.073597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724262, 35.393208, 46.915733>,  <42.703835, 35.612778, 46.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724262, 35.393208, 46.915733>,  <42.758305, 35.027256, 47.073597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724262, 35.393208, 46.915733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618070, -0.359152, -0.699285,
		-0.781502, 0.184408, 0.596027,
		-0.085111, 0.914879, -0.394655,
		42.698730, 35.667671, 46.797337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132248, 34.965172, 46.803017>,  <42.758305, 35.027256, 47.073597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132248, 34.965172, 46.803017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273926, 35.303993, 46.644497>,  <42.358932, 35.507286, 46.549385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273926, 35.303993, 46.644497>,  <42.132248, 34.965172, 46.803017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273926, 35.303993, 46.644497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598838, -0.120053, -0.791821,
		-0.718289, 0.517777, 0.464724,
		0.354195, 0.847050, -0.396297,
		42.380184, 35.558109, 46.525608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552422, 35.433647, 46.522087>,  <42.132248, 34.965172, 46.803017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552422, 35.433647, 46.522087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904045, 35.503197, 46.344540>,  <42.115021, 35.544926, 46.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904045, 35.503197, 46.344540>,  <41.552422, 35.433647, 46.522087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904045, 35.503197, 46.344540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403626, -0.223970, -0.887087,
		-0.253651, 0.958962, -0.126705,
		0.879061, 0.173869, -0.443872,
		42.167763, 35.555359, 46.211376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476440, 35.882015, 45.996887>,  <41.552422, 35.433647, 46.522087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476440, 35.882015, 45.996887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796051, 35.669559, 45.884140>,  <41.987816, 35.542084, 45.816490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796051, 35.669559, 45.884140>,  <41.476440, 35.882015, 45.996887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796051, 35.669559, 45.884140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447475, -0.212118, -0.868776,
		0.401654, 0.820302, -0.407160,
		0.799024, -0.531141, -0.281867,
		42.035759, 35.510216, 45.799580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723366, 36.093937, 45.321918>,  <41.476440, 35.882015, 45.996887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723366, 36.093937, 45.321918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846344, 35.718727, 45.385899>,  <41.920132, 35.493603, 45.424286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846344, 35.718727, 45.385899>,  <41.723366, 36.093937, 45.321918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846344, 35.718727, 45.385899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357351, -0.269607, -0.894210,
		0.881916, 0.217764, -0.418095,
		0.307448, -0.938025, 0.159953,
		41.938580, 35.437321, 45.433884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097542, 35.901424, 44.635853>,  <41.723366, 36.093937, 45.321918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097542, 35.901424, 44.635853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033951, 35.543709, 44.803169>,  <41.995796, 35.329079, 44.903561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033951, 35.543709, 44.803169>,  <42.097542, 35.901424, 44.635853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033951, 35.543709, 44.803169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155699, -0.395667, -0.905100,
		0.974928, -0.209015, -0.076340,
		-0.158974, -0.894293, 0.418291,
		41.986259, 35.275421, 44.928658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304420, 35.394688, 44.198166>,  <42.097542, 35.901424, 44.635853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304420, 35.394688, 44.198166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053940, 35.194397, 44.437214>,  <41.903652, 35.074223, 44.580643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053940, 35.194397, 44.437214>,  <42.304420, 35.394688, 44.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053940, 35.194397, 44.437214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386947, -0.465851, -0.795773,
		0.676867, -0.729558, 0.097961,
		-0.626198, -0.500727, 0.597619,
		41.866081, 35.044178, 44.616501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631767, 34.743862, 44.593182>,  <42.304420, 35.394688, 44.198166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631767, 34.743862, 44.593182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269684, 34.618008, 44.707447>,  <42.052433, 34.542496, 44.776005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269684, 34.618008, 44.707447>,  <42.631767, 34.743862, 44.593182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269684, 34.618008, 44.707447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329227, 0.094153, -0.939545,
		0.268717, -0.944532, -0.188814,
		-0.905207, -0.314635, 0.285665,
		41.998123, 34.523617, 44.793148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436962, 34.630913, 43.919147>,  <42.631767, 34.743862, 44.593182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436962, 34.630913, 43.919147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105782, 34.583248, 44.138348>,  <41.907074, 34.554649, 44.269867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105782, 34.583248, 44.138348>,  <42.436962, 34.630913, 43.919147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105782, 34.583248, 44.138348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517092, -0.216004, -0.828226,
		0.217063, -0.969094, 0.117222,
		-0.827949, -0.119163, 0.547998,
		41.857395, 34.547501, 44.302746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230843, 33.947823, 43.733875>,  <42.436962, 34.630913, 43.919147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230843, 33.947823, 43.733875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909225, 34.108780, 43.908958>,  <41.716255, 34.205357, 44.014008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909225, 34.108780, 43.908958>,  <42.230843, 33.947823, 43.733875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909225, 34.108780, 43.908958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568139, -0.302911, -0.765156,
		-0.175306, -0.863900, 0.472169,
		-0.804043, 0.402394, 0.437713,
		41.668011, 34.229500, 44.040272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690113, 33.411236, 43.742321>,  <42.230843, 33.947823, 43.733875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690113, 33.411236, 43.742321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513161, 33.769630, 43.757870>,  <41.406990, 33.984665, 43.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513161, 33.769630, 43.757870>,  <41.690113, 33.411236, 43.742321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513161, 33.769630, 43.757870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670332, -0.301554, -0.678027,
		-0.595781, -0.326000, 0.734009,
		-0.442380, 0.895985, 0.038868,
		41.380447, 34.038425, 43.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941635, 33.328823, 43.806999>,  <41.690113, 33.411236, 43.742321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941635, 33.328823, 43.806999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999294, 33.677975, 43.620537>,  <41.033890, 33.887466, 43.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999294, 33.677975, 43.620537>,  <40.941635, 33.328823, 43.806999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999294, 33.677975, 43.620537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798893, -0.175337, -0.575350,
		-0.583946, 0.455344, 0.672063,
		0.144144, 0.872880, -0.466159,
		41.042538, 33.939838, 43.480690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229301, 33.761333, 43.761150>,  <40.941635, 33.328823, 43.806999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229301, 33.761333, 43.761150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453495, 33.883949, 43.453415>,  <40.588013, 33.957520, 43.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453495, 33.883949, 43.453415>,  <40.229301, 33.761333, 43.761150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453495, 33.883949, 43.453415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778806, -0.120815, -0.615520,
		-0.281627, 0.944161, 0.171016,
		0.560488, 0.306535, -0.769343,
		40.621643, 33.975910, 43.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822731, 33.740181, 43.215931>,  <40.229301, 33.761333, 43.761150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822731, 33.740181, 43.215931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157745, 33.844372, 43.023811>,  <40.358753, 33.906887, 42.908539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157745, 33.844372, 43.023811>,  <39.822731, 33.740181, 43.215931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157745, 33.844372, 43.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463727, -0.125990, -0.876974,
		-0.288945, 0.957224, 0.015270,
		0.837537, 0.260479, -0.480295,
		40.409008, 33.922516, 42.879723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593605, 34.133400, 42.657078>,  <39.822731, 33.740181, 43.215931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593605, 34.133400, 42.657078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964420, 33.997295, 42.594055>,  <40.186909, 33.915634, 42.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964420, 33.997295, 42.594055>,  <39.593605, 34.133400, 42.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964420, 33.997295, 42.594055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187655, -0.057230, -0.980566,
		0.324630, 0.938589, -0.116906,
		0.927039, -0.340259, -0.157552,
		40.242531, 33.895218, 42.546791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857567, 34.521282, 42.075958>,  <39.593605, 34.133400, 42.657078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857567, 34.521282, 42.075958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095684, 34.200581, 42.097168>,  <40.238556, 34.008160, 42.109894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095684, 34.200581, 42.097168>,  <39.857567, 34.521282, 42.075958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095684, 34.200581, 42.097168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067654, -0.115770, -0.990969,
		0.800654, 0.586332, -0.123159,
		0.595295, -0.801756, 0.053024,
		40.274273, 33.960052, 42.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313839, 34.580574, 41.477345>,  <39.857567, 34.521282, 42.075958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313839, 34.580574, 41.477345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335670, 34.198433, 41.593491>,  <40.348770, 33.969147, 41.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335670, 34.198433, 41.593491>,  <40.313839, 34.580574, 41.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335670, 34.198433, 41.593491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143544, -0.295287, -0.944564,
		0.988138, 0.009876, -0.153253,
		0.054582, -0.955358, 0.290367,
		40.352043, 33.911827, 41.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948830, 34.363102, 41.150337>,  <40.313839, 34.580574, 41.477345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948830, 34.363102, 41.150337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700825, 34.062778, 41.241428>,  <40.552021, 33.882584, 41.296082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700825, 34.062778, 41.241428>,  <40.948830, 34.363102, 41.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700825, 34.062778, 41.241428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090887, -0.219563, -0.971355,
		0.779307, -0.622954, 0.067894,
		-0.620017, -0.750813, 0.227725,
		40.514820, 33.837536, 41.309746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121880, 33.853512, 40.647026>,  <40.948830, 34.363102, 41.150337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121880, 33.853512, 40.647026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757027, 33.759735, 40.781513>,  <40.538113, 33.703468, 40.862206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757027, 33.759735, 40.781513>,  <41.121880, 33.853512, 40.647026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757027, 33.759735, 40.781513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258590, -0.307303, -0.915803,
		0.318023, -0.922281, 0.219678,
		-0.912136, -0.234440, 0.336222,
		40.483387, 33.689404, 40.882381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948704, 33.153839, 40.361168>,  <41.121880, 33.853512, 40.647026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948704, 33.153839, 40.361168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591591, 33.303490, 40.461540>,  <40.377323, 33.393280, 40.521763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591591, 33.303490, 40.461540>,  <40.948704, 33.153839, 40.361168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591591, 33.303490, 40.461540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327767, -0.157352, -0.931563,
		-0.309038, -0.913931, 0.263108,
		-0.892785, 0.374127, 0.250929,
		40.323757, 33.415726, 40.536819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084129, 32.579720, 39.916183>,  <40.948704, 33.153839, 40.361168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084129, 32.579720, 39.916183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244503, 32.884407, 39.712601>,  <41.340725, 33.067219, 39.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244503, 32.884407, 39.712601>,  <41.084129, 32.579720, 39.916183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244503, 32.884407, 39.712601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156966, 0.490227, 0.857344,
		0.902562, -0.423623, 0.076982,
		0.400929, 0.761722, -0.508954,
		41.364780, 33.112923, 39.559914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778759, 32.768135, 40.200314>,  <41.084129, 32.579720, 39.916183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778759, 32.768135, 40.200314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611736, 33.079647, 40.013062>,  <41.511520, 33.266556, 39.900711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611736, 33.079647, 40.013062>,  <41.778759, 32.768135, 40.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611736, 33.079647, 40.013062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237710, 0.590875, 0.770948,
		0.877005, 0.210637, -0.431850,
		-0.417560, 0.778780, -0.468129,
		41.486469, 33.313282, 39.872623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065002, 33.181824, 40.600628>,  <41.778759, 32.768135, 40.200314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065002, 33.181824, 40.600628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795536, 33.371479, 40.373871>,  <41.633854, 33.485271, 40.237816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795536, 33.371479, 40.373871>,  <42.065002, 33.181824, 40.600628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795536, 33.371479, 40.373871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082153, 0.810363, 0.580141,
		0.734451, 0.344252, -0.584869,
		-0.673671, 0.474134, -0.566890,
		41.593433, 33.513718, 40.203804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159069, 32.952934, 41.315426>,  <42.065002, 33.181824, 40.600628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159069, 32.952934, 41.315426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551262, 32.989738, 41.384933>,  <42.786575, 33.011822, 41.426640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551262, 32.989738, 41.384933>,  <42.159069, 32.952934, 41.315426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551262, 32.989738, 41.384933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095581, 0.549295, -0.830144,
		-0.171836, 0.830547, 0.529777,
		0.980478, 0.092012, 0.173773,
		42.845406, 33.017342, 41.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348259, 33.654129, 41.329319>,  <42.159069, 32.952934, 41.315426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348259, 33.654129, 41.329319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666348, 33.429417, 41.238087>,  <42.857201, 33.294590, 41.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666348, 33.429417, 41.238087>,  <42.348259, 33.654129, 41.329319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666348, 33.429417, 41.238087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066826, 0.455095, -0.887932,
		0.602619, 0.690865, 0.399444,
		0.795226, -0.561778, -0.228081,
		42.904915, 33.260883, 41.169662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778362, 34.065205, 41.057568>,  <42.348259, 33.654129, 41.329319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778362, 34.065205, 41.057568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893951, 33.707985, 40.919609>,  <42.963303, 33.493652, 40.836834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893951, 33.707985, 40.919609>,  <42.778362, 34.065205, 41.057568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893951, 33.707985, 40.919609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157037, 0.399601, -0.903138,
		0.944371, 0.206817, 0.255715,
		0.288969, -0.893054, -0.344894,
		42.980640, 33.440067, 40.816139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429092, 34.100338, 40.599190>,  <42.778362, 34.065205, 41.057568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429092, 34.100338, 40.599190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189251, 33.796345, 40.498859>,  <43.045345, 33.613949, 40.438663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189251, 33.796345, 40.498859>,  <43.429092, 34.100338, 40.599190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189251, 33.796345, 40.498859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062639, 0.267884, -0.961413,
		0.797845, -0.592174, -0.113018,
		-0.599600, -0.759979, -0.250823,
		43.009373, 33.568352, 40.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736832, 33.621098, 40.073566>,  <43.429092, 34.100338, 40.599190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736832, 33.621098, 40.073566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345043, 33.692799, 40.110451>,  <43.109970, 33.735821, 40.132580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345043, 33.692799, 40.110451>,  <43.736832, 33.621098, 40.073566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345043, 33.692799, 40.110451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009258, 0.496937, -0.867737,
		-0.201370, -0.849070, -0.488396,
		-0.979471, 0.179257, 0.092208,
		43.051201, 33.746574, 40.138115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538567, 33.477600, 39.490276>,  <43.736832, 33.621098, 40.073566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538567, 33.477600, 39.490276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255413, 33.714249, 39.644619>,  <43.085522, 33.856239, 39.737225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255413, 33.714249, 39.644619>,  <43.538567, 33.477600, 39.490276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255413, 33.714249, 39.644619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104029, 0.627654, -0.771510,
		-0.698627, -0.505999, -0.505852,
		-0.707883, 0.591621, 0.385857,
		43.043049, 33.891735, 39.760376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906734, 32.914314, 39.016651>,  <43.538567, 33.477600, 39.490276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906734, 32.914314, 39.016651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841469, 33.175903, 38.721165>,  <43.802311, 33.332855, 38.543873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841469, 33.175903, 38.721165>,  <43.906734, 32.914314, 39.016651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841469, 33.175903, 38.721165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597630, -0.530237, -0.601404,
		-0.784995, -0.539606, -0.304317,
		-0.163161, 0.653969, -0.738718,
		43.792519, 33.372093, 38.499550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778099, 32.607162, 38.451096>,  <43.906734, 32.914314, 39.016651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778099, 32.607162, 38.451096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914814, 32.960693, 38.323326>,  <43.996845, 33.172813, 38.246666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914814, 32.960693, 38.323326>,  <43.778099, 32.607162, 38.451096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914814, 32.960693, 38.323326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451675, -0.452552, -0.768886,
		-0.824117, 0.118522, -0.553880,
		0.341790, 0.883826, -0.319422,
		44.017349, 33.225842, 38.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079346, 32.457748, 37.892162>,  <43.778099, 32.607162, 38.451096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079346, 32.457748, 37.892162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210476, 32.833694, 37.853832>,  <44.289154, 33.059261, 37.830833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210476, 32.833694, 37.853832>,  <44.079346, 32.457748, 37.892162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210476, 32.833694, 37.853832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461659, -0.247869, -0.851723,
		-0.824258, 0.234977, -0.515155,
		0.327826, 0.939865, -0.095829,
		44.308823, 33.115654, 37.825085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878777, 32.749493, 37.213326>,  <44.079346, 32.457748, 37.892162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878777, 32.749493, 37.213326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229485, 32.892376, 37.342117>,  <44.439911, 32.978107, 37.419392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229485, 32.892376, 37.342117>,  <43.878777, 32.749493, 37.213326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229485, 32.892376, 37.342117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450932, -0.377991, -0.808568,
		-0.167126, 0.854120, -0.492491,
		0.876772, 0.357213, 0.321978,
		44.492516, 32.999538, 37.438709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003372, 32.700214, 36.502865>,  <43.878777, 32.749493, 37.213326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003372, 32.700214, 36.502865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347847, 32.784332, 36.687962>,  <44.554531, 32.834801, 36.799019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347847, 32.784332, 36.687962>,  <44.003372, 32.700214, 36.502865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347847, 32.784332, 36.687962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507166, -0.295137, -0.809739,
		-0.033709, 0.932025, -0.360822,
		0.861189, 0.210292, 0.462743,
		44.606205, 32.847420, 36.826786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402424, 33.192314, 36.224579>,  <44.003372, 32.700214, 36.502865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402424, 33.192314, 36.224579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621895, 32.914394, 36.410572>,  <44.753578, 32.747643, 36.522167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621895, 32.914394, 36.410572>,  <44.402424, 33.192314, 36.224579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621895, 32.914394, 36.410572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356747, -0.308422, -0.881820,
		0.756095, 0.649720, 0.078641,
		0.548682, -0.694795, 0.464982,
		44.786499, 32.705956, 36.550068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145538, 33.335865, 36.059944>,  <44.402424, 33.192314, 36.224579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145538, 33.335865, 36.059944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019707, 32.964462, 36.138863>,  <44.944210, 32.741623, 36.186214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019707, 32.964462, 36.138863>,  <45.145538, 33.335865, 36.059944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019707, 32.964462, 36.138863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313194, -0.297731, -0.901812,
		0.896075, -0.221898, 0.384461,
		-0.314577, -0.928503, 0.197292,
		44.925335, 32.685913, 36.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649075, 33.532055, 35.503719>,  <45.145538, 33.335865, 36.059944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649075, 33.532055, 35.503719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467056, 33.846260, 35.335953>,  <45.357845, 34.034782, 35.235294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467056, 33.846260, 35.335953>,  <45.649075, 33.532055, 35.503719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467056, 33.846260, 35.335953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868903, 0.288652, -0.402104,
		-0.194794, -0.547402, -0.813883,
		-0.455041, 0.785513, -0.419412,
		45.330544, 34.081913, 35.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756325, 33.643841, 34.684902>,  <45.649075, 33.532055, 35.503719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756325, 33.643841, 34.684902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680389, 34.002796, 34.844227>,  <45.634830, 34.218170, 34.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680389, 34.002796, 34.844227>,  <45.756325, 33.643841, 34.684902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680389, 34.002796, 34.844227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841052, 0.357944, -0.405596,
		-0.506552, 0.258008, -0.822701,
		-0.189834, 0.897389, 0.398316,
		45.623440, 34.272015, 34.963722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027645, 34.138161, 34.203552>,  <45.756325, 33.643841, 34.684902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027645, 34.138161, 34.203552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989197, 34.346012, 34.543137>,  <45.966129, 34.470726, 34.746887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989197, 34.346012, 34.543137>,  <46.027645, 34.138161, 34.203552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989197, 34.346012, 34.543137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898457, 0.412391, -0.150691,
		-0.428410, 0.748274, -0.506508,
		-0.096121, 0.519633, 0.848965,
		45.960361, 34.501904, 34.797825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243206, 34.894791, 34.230171>,  <46.027645, 34.138161, 34.203552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243206, 34.894791, 34.230171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292187, 34.768658, 34.606590>,  <46.321575, 34.692978, 34.832443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292187, 34.768658, 34.606590>,  <46.243206, 34.894791, 34.230171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292187, 34.768658, 34.606590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956588, 0.290169, -0.027244,
		-0.264471, 0.903529, 0.337179,
		0.122455, -0.315336, 0.941046,
		46.328922, 34.674057, 34.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416458, 35.413006, 34.901718>,  <46.243206, 34.894791, 34.230171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416458, 35.413006, 34.901718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584587, 35.050632, 34.881313>,  <46.685467, 34.833206, 34.869068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584587, 35.050632, 34.881313>,  <46.416458, 35.413006, 34.901718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584587, 35.050632, 34.881313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900938, 0.423369, -0.095231,
		0.107871, -0.005932, 0.994147,
		0.420327, -0.905938, -0.051014,
		46.710686, 34.778851, 34.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008083, 35.228436, 35.434166>,  <46.416458, 35.413006, 34.901718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008083, 35.228436, 35.434166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025082, 35.031166, 35.086609>,  <47.035282, 34.912804, 34.878075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025082, 35.031166, 35.086609>,  <47.008083, 35.228436, 35.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025082, 35.031166, 35.086609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967703, 0.236613, -0.086971,
		0.248483, -0.837134, 0.487302,
		0.042496, -0.493175, -0.868891,
		47.037830, 34.883213, 34.825943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619473, 34.800343, 35.484161>,  <47.008083, 35.228436, 35.434166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619473, 34.800343, 35.484161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585800, 34.905205, 35.099621>,  <47.565598, 34.968121, 34.868896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585800, 34.905205, 35.099621>,  <47.619473, 34.800343, 35.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585800, 34.905205, 35.099621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981793, 0.186690, -0.035065,
		0.170282, -0.946796, -0.273096,
		-0.084184, 0.262153, -0.961347,
		47.560543, 34.983852, 34.811218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.266350, 28.918524, 30.785925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878159, 28.979490, 30.711151>,  <38.645245, 29.016069, 30.666286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878159, 28.979490, 30.711151>,  <39.266350, 28.918524, 30.785925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878159, 28.979490, 30.711151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069421, 0.565727, 0.821665,
		0.230987, 0.810384, -0.538444,
		-0.970477, 0.152414, -0.186934,
		38.587017, 29.025215, 30.655071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024250, 29.525434, 31.168724>,  <39.266350, 28.918524, 30.785925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024250, 29.525434, 31.168724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669300, 29.354200, 31.100248>,  <38.456329, 29.251461, 31.059164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669300, 29.354200, 31.100248>,  <39.024250, 29.525434, 31.168724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669300, 29.354200, 31.100248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319856, 0.304207, 0.897302,
		-0.332044, 0.851001, -0.406871,
		-0.887377, -0.428084, -0.171188,
		38.403088, 29.225775, 31.048891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506714, 29.982559, 31.432676>,  <39.024250, 29.525434, 31.168724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506714, 29.982559, 31.432676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283520, 29.654665, 31.381012>,  <38.149601, 29.457928, 31.350014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283520, 29.654665, 31.381012>,  <38.506714, 29.982559, 31.432676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283520, 29.654665, 31.381012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521258, 0.225113, 0.823173,
		-0.645708, 0.526648, -0.552904,
		-0.557989, -0.819735, -0.129162,
		38.116123, 29.408745, 31.342264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797169, 30.104988, 31.347519>,  <38.506714, 29.982559, 31.432676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797169, 30.104988, 31.347519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817490, 29.742439, 31.515285>,  <37.829681, 29.524910, 31.615946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817490, 29.742439, 31.515285>,  <37.797169, 30.104988, 31.347519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817490, 29.742439, 31.515285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483744, 0.345076, 0.804310,
		-0.873734, -0.243752, -0.420920,
		0.050803, -0.906371, 0.419418,
		37.832729, 29.470528, 31.641111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198410, 30.013018, 31.602907>,  <37.797169, 30.104988, 31.347519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198410, 30.013018, 31.602907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418934, 29.751629, 31.810381>,  <37.551250, 29.594795, 31.934864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418934, 29.751629, 31.810381>,  <37.198410, 30.013018, 31.602907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418934, 29.751629, 31.810381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546490, 0.186904, 0.816343,
		-0.630401, -0.733514, -0.254073,
		0.551311, -0.653471, 0.518683,
		37.584328, 29.555588, 31.965986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710403, 29.581963, 31.968306>,  <37.198410, 30.013018, 31.602907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710403, 29.581963, 31.968306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063408, 29.546047, 32.152962>,  <37.275211, 29.524498, 32.263756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063408, 29.546047, 32.152962>,  <36.710403, 29.581963, 31.968306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063408, 29.546047, 32.152962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440705, 0.184768, 0.878430,
		-0.164168, -0.978672, 0.123491,
		0.882512, -0.089787, 0.461639,
		37.328163, 29.519112, 32.291454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599949, 29.136236, 32.531082>,  <36.710403, 29.581963, 31.968306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599949, 29.136236, 32.531082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938320, 29.331760, 32.616375>,  <37.141342, 29.449074, 32.667553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938320, 29.331760, 32.616375>,  <36.599949, 29.136236, 32.531082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938320, 29.331760, 32.616375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285523, 0.077414, 0.955240,
		0.450423, -0.868949, 0.205053,
		0.845929, 0.488809, 0.213236,
		37.192101, 29.478403, 32.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959045, 28.885103, 33.182304>,  <36.599949, 29.136236, 32.531082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959045, 28.885103, 33.182304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120792, 29.250841, 33.173729>,  <37.217842, 29.470284, 33.168583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120792, 29.250841, 33.173729>,  <36.959045, 28.885103, 33.182304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120792, 29.250841, 33.173729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032627, 0.037848, 0.998751,
		0.914013, -0.403167, 0.045137,
		0.404371, 0.914344, -0.021440,
		37.242104, 29.525145, 33.167297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537205, 28.877447, 33.681881>,  <36.959045, 28.885103, 33.182304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537205, 28.877447, 33.681881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410229, 29.250910, 33.615528>,  <37.334042, 29.474987, 33.575714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410229, 29.250910, 33.615528>,  <37.537205, 28.877447, 33.681881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410229, 29.250910, 33.615528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022898, 0.182429, 0.982952,
		0.948001, 0.308232, -0.079289,
		-0.317442, 0.933656, -0.165885,
		37.314995, 29.531006, 33.565762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621933, 29.156590, 34.328506>,  <37.537205, 28.877447, 33.681881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621933, 29.156590, 34.328506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454582, 29.457666, 34.125168>,  <37.354172, 29.638313, 34.003166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454582, 29.457666, 34.125168>,  <37.621933, 29.156590, 34.328506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454582, 29.457666, 34.125168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042356, 0.542903, 0.838726,
		0.907284, 0.372438, -0.195260,
		-0.418381, 0.752692, -0.508342,
		37.329067, 29.683474, 33.972664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982410, 29.826883, 34.586208>,  <37.621933, 29.156590, 34.328506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982410, 29.826883, 34.586208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639027, 29.943705, 34.417564>,  <37.432995, 30.013798, 34.316380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639027, 29.943705, 34.417564>,  <37.982410, 29.826883, 34.586208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639027, 29.943705, 34.417564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174664, 0.606422, 0.775723,
		0.482224, 0.739566, -0.469577,
		-0.858459, 0.292054, -0.421606,
		37.381489, 30.031321, 34.291084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018021, 30.490011, 34.625389>,  <37.982410, 29.826883, 34.586208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018021, 30.490011, 34.625389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627285, 30.410995, 34.592484>,  <37.392845, 30.363586, 34.572739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627285, 30.410995, 34.592484>,  <38.018021, 30.490011, 34.625389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627285, 30.410995, 34.592484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155100, 0.388763, 0.908189,
		-0.147421, 0.899912, -0.410396,
		-0.976837, -0.197538, -0.082265,
		37.334232, 30.351734, 34.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665775, 31.122978, 34.951962>,  <38.018021, 30.490011, 34.625389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665775, 31.122978, 34.951962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412308, 30.813934, 34.936306>,  <37.260227, 30.628508, 34.926914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412308, 30.813934, 34.936306>,  <37.665775, 31.122978, 34.951962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412308, 30.813934, 34.936306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253737, 0.159781, 0.953985,
		-0.730805, 0.614446, -0.297288,
		-0.633673, -0.772610, -0.039139,
		37.222206, 30.582151, 34.924564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943195, 31.397934, 35.235992>,  <37.665775, 31.122978, 34.951962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943195, 31.397934, 35.235992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988895, 31.002468, 35.274952>,  <37.016315, 30.765188, 35.298328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988895, 31.002468, 35.274952>,  <36.943195, 31.397934, 35.235992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988895, 31.002468, 35.274952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329545, 0.054774, 0.942550,
		-0.937202, -0.139785, -0.319552,
		0.114251, -0.988666, 0.097399,
		37.023170, 30.705868, 35.304173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360561, 31.221155, 35.645641>,  <36.943195, 31.397934, 35.235992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360561, 31.221155, 35.645641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582283, 30.891613, 35.692989>,  <36.715317, 30.693888, 35.721397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582283, 30.891613, 35.692989>,  <36.360561, 31.221155, 35.645641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582283, 30.891613, 35.692989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043742, 0.113187, 0.992610,
		-0.831167, -0.555382, 0.026702,
		0.554301, -0.823857, 0.118371,
		36.748573, 30.644457, 35.728500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993675, 30.903406, 36.127510>,  <36.360561, 31.221155, 35.645641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993675, 30.903406, 36.127510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354984, 30.732338, 36.141342>,  <36.571770, 30.629698, 36.149643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354984, 30.732338, 36.141342>,  <35.993675, 30.903406, 36.127510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354984, 30.732338, 36.141342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054938, -0.035346, 0.997864,
		-0.425534, -0.903244, -0.055423,
		0.903274, -0.427670, 0.034582,
		36.625965, 30.604036, 36.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960812, 30.224009, 36.552185>,  <35.993675, 30.903406, 36.127510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960812, 30.224009, 36.552185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336647, 30.360029, 36.567871>,  <36.562149, 30.441643, 36.577282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336647, 30.360029, 36.567871>,  <35.960812, 30.224009, 36.552185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336647, 30.360029, 36.567871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015846, -0.071238, 0.997333,
		0.341941, -0.937704, -0.061545,
		0.939588, 0.340054, 0.039218,
		36.618523, 30.462046, 36.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248753, 29.708296, 37.024712>,  <35.960812, 30.224009, 36.552185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248753, 29.708296, 37.024712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462162, 30.046572, 37.019558>,  <36.590206, 30.249537, 37.016464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462162, 30.046572, 37.019558>,  <36.248753, 29.708296, 37.024712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462162, 30.046572, 37.019558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025840, 0.031523, 0.999169,
		0.845391, -0.532746, 0.038671,
		0.533522, 0.845688, -0.012883,
		36.622219, 30.300278, 37.015694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890507, 29.712358, 37.553135>,  <36.248753, 29.708296, 37.024712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890507, 29.712358, 37.553135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814564, 30.095675, 37.467690>,  <36.768997, 30.325665, 37.416420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814564, 30.095675, 37.467690>,  <36.890507, 29.712358, 37.553135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814564, 30.095675, 37.467690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057869, 0.206275, 0.976781,
		0.980106, 0.197807, 0.016294,
		-0.189854, 0.958292, -0.213618,
		36.757607, 30.383162, 37.403603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057030, 29.840525, 38.095612>,  <36.890507, 29.712358, 37.553135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057030, 29.840525, 38.095612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915398, 30.185444, 37.950798>,  <36.830418, 30.392395, 37.863911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915398, 30.185444, 37.950798>,  <37.057030, 29.840525, 38.095612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915398, 30.185444, 37.950798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054974, 0.367250, 0.928496,
		0.933598, 0.348665, -0.082632,
		-0.354081, 0.862299, -0.362032,
		36.809174, 30.444134, 37.842190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542736, 30.318541, 38.397533>,  <37.057030, 29.840525, 38.095612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542736, 30.318541, 38.397533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180443, 30.467451, 38.316483>,  <36.963066, 30.556797, 38.267853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180443, 30.467451, 38.316483>,  <37.542736, 30.318541, 38.397533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180443, 30.467451, 38.316483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081413, 0.316352, 0.945142,
		0.415953, 0.872544, -0.256223,
		-0.905734, 0.372275, -0.202624,
		36.908722, 30.579134, 38.255695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524460, 30.932665, 38.702267>,  <37.542736, 30.318541, 38.397533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524460, 30.932665, 38.702267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141102, 30.828806, 38.654835>,  <36.911087, 30.766491, 38.626377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141102, 30.828806, 38.654835>,  <37.524460, 30.932665, 38.702267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141102, 30.828806, 38.654835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160554, 0.146871, 0.976039,
		-0.236011, 0.954469, -0.182448,
		-0.958395, -0.259649, -0.118581,
		36.853584, 30.750912, 38.619259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950592, 31.525143, 38.725216>,  <37.524460, 30.932665, 38.702267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950592, 31.525143, 38.725216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293217, 31.502071, 38.930336>,  <38.498791, 31.488228, 39.053410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293217, 31.502071, 38.930336>,  <37.950592, 31.525143, 38.725216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293217, 31.502071, 38.930336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400026, -0.553556, -0.730448,
		0.325996, 0.830812, -0.451085,
		0.856566, -0.057677, 0.512804,
		38.550186, 31.484768, 39.084179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377293, 31.673805, 38.225105>,  <37.950592, 31.525143, 38.725216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377293, 31.673805, 38.225105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586525, 31.473742, 38.501141>,  <38.712067, 31.353703, 38.666763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586525, 31.473742, 38.501141>,  <38.377293, 31.673805, 38.225105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586525, 31.473742, 38.501141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364608, -0.600539, -0.711627,
		0.770354, 0.623852, -0.131769,
		0.523083, -0.500161, 0.690089,
		38.743450, 31.323692, 38.708168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056572, 31.702791, 37.971584>,  <38.377293, 31.673805, 38.225105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056572, 31.702791, 37.971584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054733, 31.393007, 38.224628>,  <39.053631, 31.207138, 38.376453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054733, 31.393007, 38.224628>,  <39.056572, 31.702791, 37.971584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054733, 31.393007, 38.224628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470628, -0.559849, -0.681966,
		0.882320, 0.294591, 0.367053,
		-0.004594, -0.774458, 0.632609,
		39.053356, 31.160669, 38.414410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715660, 31.516663, 37.992970>,  <39.056572, 31.702791, 37.971584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715660, 31.516663, 37.992970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492889, 31.204824, 38.107555>,  <39.359226, 31.017723, 38.176308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492889, 31.204824, 38.107555>,  <39.715660, 31.516663, 37.992970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492889, 31.204824, 38.107555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384354, -0.547668, -0.743190,
		0.736275, -0.303800, 0.604652,
		-0.556930, -0.779593, 0.286468,
		39.325809, 30.970947, 38.193497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222069, 31.040220, 38.027149>,  <39.715660, 31.516663, 37.992970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222069, 31.040220, 38.027149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875938, 30.843388, 37.989079>,  <39.668259, 30.725288, 37.966236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875938, 30.843388, 37.989079>,  <40.222069, 31.040220, 38.027149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875938, 30.843388, 37.989079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379550, -0.519359, -0.765642,
		0.327330, -0.698656, 0.636187,
		-0.865330, -0.492083, -0.095174,
		39.616341, 30.695763, 37.960526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417946, 30.362795, 37.891098>,  <40.222069, 31.040220, 38.027149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417946, 30.362795, 37.891098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041981, 30.382725, 37.755993>,  <39.816402, 30.394682, 37.674931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041981, 30.382725, 37.755993>,  <40.417946, 30.362795, 37.891098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041981, 30.382725, 37.755993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252576, -0.564158, -0.786086,
		-0.229714, -0.824162, 0.517676,
		-0.939913, 0.049822, -0.337758,
		39.760006, 30.397671, 37.654667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336975, 29.723511, 37.666412>,  <40.417946, 30.362795, 37.891098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336975, 29.723511, 37.666412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066158, 29.937757, 37.464531>,  <39.903667, 30.066305, 37.343403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066158, 29.937757, 37.464531>,  <40.336975, 29.723511, 37.666412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066158, 29.937757, 37.464531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318828, -0.404624, -0.857104,
		-0.663293, -0.741213, 0.103180,
		-0.677046, 0.535615, -0.504704,
		39.863045, 30.098442, 37.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175564, 29.258772, 37.175140>,  <40.336975, 29.723511, 37.666412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175564, 29.258772, 37.175140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012737, 29.599472, 37.043194>,  <39.915039, 29.803892, 36.964024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012737, 29.599472, 37.043194>,  <40.175564, 29.258772, 37.175140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012737, 29.599472, 37.043194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004915, -0.359097, -0.933287,
		-0.913383, -0.381535, 0.141991,
		-0.407070, 0.851751, -0.329869,
		39.890617, 29.854998, 36.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609280, 29.046169, 36.672722>,  <40.175564, 29.258772, 37.175140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609280, 29.046169, 36.672722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722115, 29.417309, 36.575130>,  <39.789814, 29.639992, 36.516575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722115, 29.417309, 36.575130>,  <39.609280, 29.046169, 36.672722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722115, 29.417309, 36.575130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083620, -0.277119, -0.957190,
		-0.955737, 0.249611, -0.155759,
		0.282089, 0.927847, -0.243981,
		39.806740, 29.695663, 36.501938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256092, 29.191843, 36.068924>,  <39.609280, 29.046169, 36.672722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256092, 29.191843, 36.068924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565601, 29.444897, 36.055996>,  <39.751308, 29.596729, 36.048237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565601, 29.444897, 36.055996>,  <39.256092, 29.191843, 36.068924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565601, 29.444897, 36.055996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144244, -0.225651, -0.963471,
		-0.616818, 0.740848, -0.265857,
		0.773776, 0.632634, -0.032323,
		39.797733, 29.634687, 36.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091301, 29.500700, 35.466259>,  <39.256092, 29.191843, 36.068924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091301, 29.500700, 35.466259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479233, 29.562986, 35.541283>,  <39.711994, 29.600359, 35.586296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479233, 29.562986, 35.541283>,  <39.091301, 29.500700, 35.466259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479233, 29.562986, 35.541283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214639, -0.180711, -0.959830,
		-0.115569, 0.971131, -0.208683,
		0.969832, 0.155718, 0.187558,
		39.770184, 29.609701, 35.597549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417381, 30.072245, 35.011261>,  <39.091301, 29.500700, 35.466259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417381, 30.072245, 35.011261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724319, 29.849562, 35.138542>,  <39.908482, 29.715952, 35.214912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724319, 29.849562, 35.138542>,  <39.417381, 30.072245, 35.011261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724319, 29.849562, 35.138542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277429, -0.159158, -0.947471,
		0.578108, 0.815320, 0.032317,
		0.767348, -0.556707, 0.318204,
		39.954525, 29.682550, 35.234005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952038, 30.241297, 34.563148>,  <39.417381, 30.072245, 35.011261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952038, 30.241297, 34.563148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075935, 29.897198, 34.725155>,  <40.150276, 29.690739, 34.822357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075935, 29.897198, 34.725155>,  <39.952038, 30.241297, 34.563148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075935, 29.897198, 34.725155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317574, -0.307898, -0.896853,
		0.896216, 0.406419, 0.177822,
		0.309747, -0.860246, 0.405011,
		40.168858, 29.639124, 34.846657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560856, 30.133106, 34.155327>,  <39.952038, 30.241297, 34.563148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560856, 30.133106, 34.155327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.425098, 29.786301, 34.301258>,  <40.343643, 29.578218, 34.388817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.425098, 29.786301, 34.301258>,  <40.560856, 30.133106, 34.155327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425098, 29.786301, 34.301258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083867, -0.414196, -0.906316,
		0.936897, -0.277003, 0.213290,
		-0.339396, -0.867013, 0.364828,
		40.323280, 29.526197, 34.410706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051289, 29.722189, 34.121113>,  <40.560856, 30.133106, 34.155327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051289, 29.722189, 34.121113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716095, 29.505526, 34.094593>,  <40.514980, 29.375528, 34.078682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716095, 29.505526, 34.094593>,  <41.051289, 29.722189, 34.121113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716095, 29.505526, 34.094593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211408, -0.210229, -0.954521,
		0.503085, -0.813887, 0.290679,
		-0.837981, -0.541657, -0.066299,
		40.464699, 29.343029, 34.074703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202507, 29.024801, 33.796906>,  <41.051289, 29.722189, 34.121113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202507, 29.024801, 33.796906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.809578, 29.089809, 33.759747>,  <40.573822, 29.128815, 33.737453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.809578, 29.089809, 33.759747>,  <41.202507, 29.024801, 33.796906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809578, 29.089809, 33.759747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037129, -0.317226, -0.947623,
		-0.183473, -0.934321, 0.305585,
		-0.982323, 0.162517, -0.092892,
		40.514881, 29.138565, 33.731880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914280, 28.319439, 33.575851>,  <41.202507, 29.024801, 33.796906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914280, 28.319439, 33.575851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660851, 28.611237, 33.472759>,  <40.508793, 28.786316, 33.410904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660851, 28.611237, 33.472759>,  <40.914280, 28.319439, 33.575851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660851, 28.611237, 33.472759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062129, -0.284079, -0.956786,
		-0.771186, -0.622204, 0.134662,
		-0.633571, 0.729494, -0.257735,
		40.470779, 28.830084, 33.395439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457558, 27.970037, 33.101742>,  <40.914280, 28.319439, 33.575851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457558, 27.970037, 33.101742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420513, 28.360554, 33.023483>,  <40.398285, 28.594864, 32.976528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420513, 28.360554, 33.023483>,  <40.457558, 27.970037, 33.101742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420513, 28.360554, 33.023483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117243, -0.205812, -0.971543,
		-0.988775, -0.067041, 0.133525,
		-0.092615, 0.976292, -0.195642,
		40.392727, 28.653442, 32.964790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.963455, 28.006140, 32.546406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.120346, 28.374001, 32.538452>,  <40.214481, 28.594717, 32.533680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.120346, 28.374001, 32.538452>,  <39.963455, 28.006140, 32.546406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120346, 28.374001, 32.538452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111211, 0.025955, -0.993458,
		-0.913120, 0.391874, 0.112455,
		0.392229, 0.919653, -0.019880,
		40.238014, 28.649897, 32.532490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554646, 28.398281, 32.079742>,  <39.963455, 28.006140, 32.546406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554646, 28.398281, 32.079742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890320, 28.615740, 32.073868>,  <40.091724, 28.746214, 32.070343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890320, 28.615740, 32.073868>,  <39.554646, 28.398281, 32.079742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890320, 28.615740, 32.073868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125473, 0.167266, -0.977895,
		-0.529171, 0.822479, 0.208581,
		0.839187, 0.543645, -0.014687,
		40.142075, 28.778833, 32.069462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453861, 28.951370, 31.491251>,  <39.554646, 28.398281, 32.079742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453861, 28.951370, 31.491251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848759, 28.953424, 31.554903>,  <40.085697, 28.954657, 31.593094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848759, 28.953424, 31.554903>,  <39.453861, 28.951370, 31.491251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848759, 28.953424, 31.554903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159026, 0.016852, -0.987131,
		-0.007752, 0.999845, 0.015820,
		0.987244, 0.005137, 0.159132,
		40.144932, 28.954966, 31.602642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785549, 29.422153, 30.975985>,  <39.453861, 28.951370, 31.491251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785549, 29.422153, 30.975985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072407, 29.174124, 31.103239>,  <40.244522, 29.025307, 31.179592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072407, 29.174124, 31.103239>,  <39.785549, 29.422153, 30.975985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072407, 29.174124, 31.103239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336768, -0.091329, -0.937148,
		0.610156, 0.779209, 0.143325,
		0.717145, -0.620074, 0.318138,
		40.287552, 28.988102, 31.198681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364220, 29.674913, 30.630751>,  <39.785549, 29.422153, 30.975985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364220, 29.674913, 30.630751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439289, 29.297573, 30.740196>,  <40.484329, 29.071169, 30.805864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439289, 29.297573, 30.740196>,  <40.364220, 29.674913, 30.630751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439289, 29.297573, 30.740196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285277, -0.214206, -0.934202,
		0.939892, 0.253379, 0.228916,
		0.187672, -0.943353, 0.273613,
		40.495590, 29.014566, 30.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004879, 29.466726, 30.417828>,  <40.364220, 29.674913, 30.630751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004879, 29.466726, 30.417828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833698, 29.108191, 30.464197>,  <40.730991, 28.893070, 30.492020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833698, 29.108191, 30.464197>,  <41.004879, 29.466726, 30.417828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833698, 29.108191, 30.464197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291650, -0.258356, -0.920974,
		0.855452, -0.360321, 0.371981,
		-0.427950, -0.896337, 0.115924,
		40.705315, 28.839289, 30.498974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527508, 28.945595, 30.294056>,  <41.004879, 29.466726, 30.417828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527508, 28.945595, 30.294056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167583, 28.773930, 30.262661>,  <40.951630, 28.670931, 30.243824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167583, 28.773930, 30.262661>,  <41.527508, 28.945595, 30.294056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167583, 28.773930, 30.262661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247644, -0.354312, -0.901740,
		0.359187, -0.830831, 0.425094,
		-0.899810, -0.429165, -0.078486,
		40.897640, 28.645180, 30.239115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673225, 28.289211, 29.986055>,  <41.527508, 28.945595, 30.294056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673225, 28.289211, 29.986055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282139, 28.352198, 29.930531>,  <41.047485, 28.389990, 29.897215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282139, 28.352198, 29.930531>,  <41.673225, 28.289211, 29.986055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282139, 28.352198, 29.930531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070140, -0.378207, -0.923060,
		-0.197850, -0.912230, 0.358736,
		-0.977720, 0.157466, -0.138812,
		40.988823, 28.399437, 29.888887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450840, 27.677418, 29.988806>,  <41.673225, 28.289211, 29.986055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450840, 27.677418, 29.988806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210880, 27.917950, 29.777706>,  <41.066906, 28.062269, 29.651047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210880, 27.917950, 29.777706>,  <41.450840, 27.677418, 29.988806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210880, 27.917950, 29.777706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248508, -0.486954, -0.837329,
		-0.760502, -0.633464, 0.142688,
		-0.599900, 0.601332, -0.527751,
		41.030910, 28.098349, 29.619381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097267, 27.218166, 29.451750>,  <41.450840, 27.677418, 29.988806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097267, 27.218166, 29.451750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.035572, 27.582228, 29.297953>,  <40.998554, 27.800665, 29.205675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.035572, 27.582228, 29.297953>,  <41.097267, 27.218166, 29.451750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035572, 27.582228, 29.297953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215902, -0.348697, -0.912029,
		-0.964156, -0.223682, -0.142721,
		-0.154238, 0.910152, -0.384492,
		40.989300, 27.855274, 29.182606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791988, 27.160666, 28.858526>,  <41.097267, 27.218166, 29.451750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791988, 27.160666, 28.858526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.942574, 27.527870, 28.808678>,  <41.032925, 27.748194, 28.778769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.942574, 27.527870, 28.808678>,  <40.791988, 27.160666, 28.858526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942574, 27.527870, 28.808678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175516, -0.202754, -0.963371,
		-0.909654, 0.340800, -0.237455,
		0.376462, 0.918012, -0.124620,
		41.055511, 27.803274, 28.771292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803082, 27.129051, 28.247499>,  <40.791988, 27.160666, 28.858526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803082, 27.129051, 28.247499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000748, 27.471827, 28.306084>,  <41.119347, 27.677492, 28.341234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000748, 27.471827, 28.306084>,  <40.803082, 27.129051, 28.247499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000748, 27.471827, 28.306084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295628, -0.007212, -0.955276,
		-0.817559, 0.515364, -0.256900,
		0.494168, 0.856941, 0.146459,
		41.148998, 27.728909, 28.350021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590336, 27.697338, 27.695301>,  <40.803082, 27.129051, 28.247499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590336, 27.697338, 27.695301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951630, 27.754904, 27.857021>,  <41.168407, 27.789442, 27.954054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951630, 27.754904, 27.857021>,  <40.590336, 27.697338, 27.695301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951630, 27.754904, 27.857021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381222, 0.163559, -0.909900,
		-0.197073, 0.975980, 0.092870,
		0.903234, 0.143913, 0.404299,
		41.222599, 27.798077, 27.978312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917023, 28.152397, 27.267374>,  <40.590336, 27.697338, 27.695301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917023, 28.152397, 27.267374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239334, 28.042400, 27.477175>,  <41.432720, 27.976402, 27.603054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239334, 28.042400, 27.477175>,  <40.917023, 28.152397, 27.267374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239334, 28.042400, 27.477175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591904, 0.345165, -0.728362,
		0.019253, 0.897353, 0.440894,
		0.805779, -0.274990, 0.524501,
		41.481068, 27.959904, 27.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491955, 28.618458, 27.022799>,  <40.917023, 28.152397, 27.267374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491955, 28.618458, 27.022799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645195, 28.277390, 27.164892>,  <41.737137, 28.072748, 27.250149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645195, 28.277390, 27.164892>,  <41.491955, 28.618458, 27.022799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645195, 28.277390, 27.164892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595867, -0.065733, -0.800388,
		0.705818, 0.518297, 0.482896,
		0.383097, -0.852670, 0.355232,
		41.760124, 28.021589, 27.271461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214924, 28.719597, 27.081484>,  <41.491955, 28.618458, 27.022799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214924, 28.719597, 27.081484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150105, 28.324894, 27.084379>,  <42.111214, 28.088072, 27.086117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150105, 28.324894, 27.084379>,  <42.214924, 28.719597, 27.081484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150105, 28.324894, 27.084379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654058, -0.112899, -0.747972,
		0.738883, -0.116474, 0.663691,
		-0.162050, -0.986756, 0.007238,
		42.101490, 28.028868, 27.086550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849476, 28.419514, 27.072149>,  <42.214924, 28.719597, 27.081484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849476, 28.419514, 27.072149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616535, 28.120956, 26.943298>,  <42.476772, 27.941822, 26.865988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616535, 28.120956, 26.943298>,  <42.849476, 28.419514, 27.072149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616535, 28.120956, 26.943298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679374, -0.229213, -0.697074,
		0.446456, -0.624785, 0.640563,
		-0.582347, -0.746395, -0.322129,
		42.441830, 27.897038, 26.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284546, 27.773161, 27.005980>,  <42.849476, 28.419514, 27.072149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284546, 27.773161, 27.005980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967758, 27.719080, 26.767820>,  <42.777683, 27.686632, 26.624924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967758, 27.719080, 26.767820>,  <43.284546, 27.773161, 27.005980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967758, 27.719080, 26.767820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604305, -0.312775, -0.732794,
		-0.087151, -0.940155, 0.329412,
		-0.791972, -0.135201, -0.595399,
		42.730167, 27.678520, 26.589201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378750, 27.056349, 26.661047>,  <43.284546, 27.773161, 27.005980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378750, 27.056349, 26.661047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107368, 27.237978, 26.430044>,  <42.944538, 27.346956, 26.291443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107368, 27.237978, 26.430044>,  <43.378750, 27.056349, 26.661047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107368, 27.237978, 26.430044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458743, -0.352144, -0.815812,
		-0.573804, -0.818420, 0.030611,
		-0.678457, 0.454074, -0.577506,
		42.903831, 27.374201, 26.256792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215218, 26.594816, 26.119049>,  <43.378750, 27.056349, 26.661047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215218, 26.594816, 26.119049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114613, 26.951870, 25.969412>,  <43.054249, 27.166101, 25.879629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114613, 26.951870, 25.969412>,  <43.215218, 26.594816, 26.119049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114613, 26.951870, 25.969412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422198, -0.246620, -0.872312,
		-0.870915, -0.377336, -0.314841,
		-0.251508, 0.892634, -0.374095,
		43.039162, 27.219660, 25.857183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953369, 26.388407, 25.477417>,  <43.215218, 26.594816, 26.119049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953369, 26.388407, 25.477417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.016689, 26.782640, 25.453533>,  <43.054684, 27.019180, 25.439203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.016689, 26.782640, 25.453533>,  <42.953369, 26.388407, 25.477417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016689, 26.782640, 25.453533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313940, -0.107572, -0.943329,
		-0.936153, 0.130587, -0.326443,
		0.158302, 0.985584, -0.059708,
		43.064178, 27.078316, 25.435621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618515, 26.712887, 24.747368>,  <42.953369, 26.388407, 25.477417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618515, 26.712887, 24.747368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901264, 26.968979, 24.867657>,  <43.070915, 27.122635, 24.939831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901264, 26.968979, 24.867657>,  <42.618515, 26.712887, 24.747368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901264, 26.968979, 24.867657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238757, 0.184231, -0.953443,
		-0.665828, 0.745762, -0.022633,
		0.706872, 0.640233, 0.300722,
		43.113327, 27.161049, 24.957874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409702, 27.421814, 24.600098>,  <42.618515, 26.712887, 24.747368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409702, 27.421814, 24.600098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.806587, 27.372200, 24.595528>,  <43.044720, 27.342432, 24.592785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.806587, 27.372200, 24.595528>,  <42.409702, 27.421814, 24.600098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806587, 27.372200, 24.595528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036557, 0.377655, -0.925224,
		0.119076, 0.917601, 0.379248,
		0.992212, -0.124036, -0.011425,
		43.104252, 27.334990, 24.592100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781193, 28.134857, 24.525892>,  <42.409702, 27.421814, 24.600098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781193, 28.134857, 24.525892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953213, 27.811726, 24.364662>,  <43.056427, 27.617847, 24.267925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953213, 27.811726, 24.364662>,  <42.781193, 28.134857, 24.525892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953213, 27.811726, 24.364662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150576, 0.504397, -0.850242,
		0.890158, 0.304957, 0.338557,
		0.430054, -0.807828, -0.403073,
		43.082230, 27.569378, 24.243740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117935, 28.453432, 24.324451>,  <42.781193, 28.134857, 24.525892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117935, 28.453432, 24.324451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843204, 28.264736, 24.103281>,  <41.678368, 28.151518, 23.970579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843204, 28.264736, 24.103281>,  <42.117935, 28.453432, 24.324451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843204, 28.264736, 24.103281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722436, 0.359666, 0.590531,
		-0.079707, 0.805048, -0.587830,
		-0.686828, -0.471739, -0.552928,
		41.637157, 28.123215, 23.937403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581043, 28.791067, 24.520313>,  <42.117935, 28.453432, 24.324451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581043, 28.791067, 24.520313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411018, 28.491707, 24.316658>,  <41.309002, 28.312090, 24.194466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411018, 28.491707, 24.316658>,  <41.581043, 28.791067, 24.520313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411018, 28.491707, 24.316658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883996, 0.222290, 0.411264,
		-0.194614, 0.624887, -0.756070,
		-0.425061, -0.748400, -0.509137,
		41.283501, 28.267187, 24.163918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912865, 28.939087, 24.106602>,  <41.581043, 28.791067, 24.520313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912865, 28.939087, 24.106602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867462, 28.549416, 24.184673>,  <40.840221, 28.315613, 24.231516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867462, 28.549416, 24.184673>,  <40.912865, 28.939087, 24.106602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867462, 28.549416, 24.184673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857909, 0.195180, 0.475286,
		-0.501108, -0.113499, -0.857910,
		-0.113502, -0.974178, 0.195178,
		40.833412, 28.257162, 24.243227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227016, 28.897930, 24.087765>,  <40.912865, 28.939087, 24.106602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227016, 28.897930, 24.087765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353027, 28.581963, 24.298206>,  <40.428635, 28.392382, 24.424471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353027, 28.581963, 24.298206>,  <40.227016, 28.897930, 24.087765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353027, 28.581963, 24.298206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769800, 0.111563, 0.628460,
		-0.555127, -0.602976, -0.572935,
		0.315028, -0.789920, 0.526102,
		40.447536, 28.344986, 24.456038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644600, 28.452919, 24.202995>,  <40.227016, 28.897930, 24.087765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644600, 28.452919, 24.202995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892456, 28.342649, 24.496948>,  <40.041168, 28.276487, 24.673321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892456, 28.342649, 24.496948>,  <39.644600, 28.452919, 24.202995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892456, 28.342649, 24.496948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759824, 0.024034, 0.649685,
		-0.196765, -0.960950, -0.194572,
		0.619638, -0.275676, 0.734882,
		40.078346, 28.259947, 24.717413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247116, 28.036713, 24.593172>,  <39.644600, 28.452919, 24.202995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247116, 28.036713, 24.593172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548988, 28.080151, 24.851988>,  <39.730114, 28.106213, 25.007277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548988, 28.080151, 24.851988>,  <39.247116, 28.036713, 24.593172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548988, 28.080151, 24.851988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637314, -0.112900, 0.762289,
		0.155830, -0.987654, -0.015996,
		0.754684, 0.108593, 0.647039,
		39.775394, 28.112728, 25.046099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009315, 27.687668, 25.188622>,  <39.247116, 28.036713, 24.593172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009315, 27.687668, 25.188622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321651, 27.899014, 25.321959>,  <39.509052, 28.025822, 25.401960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321651, 27.899014, 25.321959>,  <39.009315, 27.687668, 25.188622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321651, 27.899014, 25.321959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473199, 0.151841, 0.867771,
		0.407884, -0.835330, 0.368585,
		0.780841, 0.528364, 0.333344,
		39.555904, 28.057522, 25.421961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329731, 27.413929, 25.845217>,  <39.009315, 27.687668, 25.188622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329731, 27.413929, 25.845217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420784, 27.803362, 25.838028>,  <39.475414, 28.037022, 25.833714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420784, 27.803362, 25.838028>,  <39.329731, 27.413929, 25.845217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420784, 27.803362, 25.838028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414618, 0.113609, 0.902876,
		0.881066, -0.198069, 0.429525,
		0.227629, 0.973582, -0.017974,
		39.489075, 28.095436, 25.832636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690712, 27.575203, 26.518417>,  <39.329731, 27.413929, 25.845217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690712, 27.575203, 26.518417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583855, 27.937555, 26.386951>,  <39.519741, 28.154966, 26.308073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583855, 27.937555, 26.386951>,  <39.690712, 27.575203, 26.518417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583855, 27.937555, 26.386951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302969, 0.244812, 0.921019,
		0.914793, 0.345614, 0.209055,
		-0.267139, 0.905880, -0.328663,
		39.503712, 28.209320, 26.288353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874294, 27.983919, 26.926153>,  <39.690712, 27.575203, 26.518417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874294, 27.983919, 26.926153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.608791, 28.237185, 26.766888>,  <39.449490, 28.389143, 26.671328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.608791, 28.237185, 26.766888>,  <39.874294, 27.983919, 26.926153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608791, 28.237185, 26.766888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236405, 0.327456, 0.914815,
		0.709609, 0.701339, -0.067667,
		-0.663753, 0.633164, -0.398165,
		39.409664, 28.427134, 26.647438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845955, 28.614040, 27.259041>,  <39.874294, 27.983919, 26.926153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845955, 28.614040, 27.259041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491859, 28.610531, 27.073021>,  <39.279400, 28.608425, 26.961409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491859, 28.610531, 27.073021>,  <39.845955, 28.614040, 27.259041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491859, 28.610531, 27.073021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435913, 0.364432, 0.822903,
		0.162258, 0.931189, -0.326435,
		-0.885241, -0.008775, -0.465050,
		39.226288, 28.607899, 26.933506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540951, 29.298714, 27.404474>,  <39.845955, 28.614040, 27.259041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540951, 29.298714, 27.404474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251797, 29.031128, 27.335281>,  <39.078304, 28.870577, 27.293766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251797, 29.031128, 27.335281>,  <39.540951, 29.298714, 27.404474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251797, 29.031128, 27.335281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454899, 0.272323, 0.847884,
		-0.520096, 0.691613, -0.501170,
		-0.722888, -0.668963, -0.172980,
		39.034931, 28.830439, 27.283388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975952, 29.621193, 27.730213>,  <39.540951, 29.298714, 27.404474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975952, 29.621193, 27.730213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870068, 29.241236, 27.663727>,  <38.806538, 29.013262, 27.623835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870068, 29.241236, 27.663727>,  <38.975952, 29.621193, 27.730213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870068, 29.241236, 27.663727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505731, -0.010010, 0.862633,
		-0.821074, 0.312412, -0.477741,
		-0.264715, -0.949894, -0.166216,
		38.790653, 28.956268, 27.613863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284801, 29.601725, 27.862408>,  <38.975952, 29.621193, 27.730213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284801, 29.601725, 27.862408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422680, 29.228743, 27.905695>,  <38.505405, 29.004953, 27.931667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422680, 29.228743, 27.905695>,  <38.284801, 29.601725, 27.862408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422680, 29.228743, 27.905695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392033, -0.038247, 0.919156,
		-0.852933, -0.359255, -0.378737,
		0.344697, -0.932455, 0.108218,
		38.526089, 28.949005, 27.938160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794056, 29.291582, 28.284817>,  <38.284801, 29.601725, 27.862408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794056, 29.291582, 28.284817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104248, 29.039299, 28.273188>,  <38.290363, 28.887930, 28.266211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104248, 29.039299, 28.273188>,  <37.794056, 29.291582, 28.284817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104248, 29.039299, 28.273188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163111, -0.244610, 0.955804,
		-0.609942, -0.736462, -0.292565,
		0.775477, -0.630706, -0.029073,
		38.336891, 28.850088, 28.264465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527775, 28.682049, 28.536646>,  <37.794056, 29.291582, 28.284817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527775, 28.682049, 28.536646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923630, 28.657000, 28.588327>,  <38.161144, 28.641970, 28.619337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923630, 28.657000, 28.588327>,  <37.527775, 28.682049, 28.536646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923630, 28.657000, 28.588327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142520, -0.319277, 0.936883,
		-0.017420, -0.945590, -0.324894,
		0.989638, -0.062624, 0.129203,
		38.220520, 28.638212, 28.627089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649578, 28.202868, 28.966137>,  <37.527775, 28.682049, 28.536646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649578, 28.202868, 28.966137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019054, 28.351318, 29.004223>,  <38.240738, 28.440390, 29.027075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019054, 28.351318, 29.004223>,  <37.649578, 28.202868, 28.966137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019054, 28.351318, 29.004223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026282, -0.186546, 0.982095,
		0.382245, -0.909651, -0.162556,
		0.923687, 0.371128, 0.095214,
		38.296162, 28.462656, 29.032787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083309, 27.701544, 29.408688>,  <37.649578, 28.202868, 28.966137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083309, 27.701544, 29.408688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234882, 28.071400, 29.423929>,  <38.325825, 28.293312, 29.433075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234882, 28.071400, 29.423929>,  <38.083309, 27.701544, 29.408688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234882, 28.071400, 29.423929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006661, -0.043900, 0.999014,
		0.925400, -0.378306, -0.022794,
		0.378934, 0.924639, 0.038105,
		38.348564, 28.348791, 29.435360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584797, 27.774508, 30.004545>,  <38.083309, 27.701544, 29.408688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584797, 27.774508, 30.004545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475388, 28.153946, 29.940861>,  <38.409740, 28.381609, 29.902649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475388, 28.153946, 29.940861>,  <38.584797, 27.774508, 30.004545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475388, 28.153946, 29.940861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163167, 0.208886, 0.964232,
		0.947924, 0.237765, -0.211915,
		-0.273527, 0.948596, -0.159212,
		38.393330, 28.438524, 29.893097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100563, 28.308687, 30.322311>,  <38.584797, 27.774508, 30.004545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100563, 28.308687, 30.322311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748173, 28.494896, 30.288439>,  <38.536739, 28.606621, 30.268116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748173, 28.494896, 30.288439>,  <39.100563, 28.308687, 30.322311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748173, 28.494896, 30.288439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049158, 0.268051, 0.962150,
		0.470600, 0.843468, -0.259031,
		-0.880976, 0.465521, -0.084682,
		38.483879, 28.634552, 30.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.029984, 29.135757, 35.532246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665615, 29.281897, 35.455574>,  <40.446995, 29.369581, 35.409573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665615, 29.281897, 35.455574>,  <41.029984, 29.135757, 35.532246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665615, 29.281897, 35.455574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020403, 0.424121, 0.905376,
		0.412072, 0.828639, -0.378887,
		-0.910923, 0.365349, -0.191675,
		40.392338, 29.391500, 35.398071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077423, 29.768950, 35.936413>,  <41.029984, 29.135757, 35.532246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077423, 29.768950, 35.936413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693504, 29.742540, 35.827282>,  <40.463154, 29.726694, 35.761803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693504, 29.742540, 35.827282>,  <41.077423, 29.768950, 35.936413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693504, 29.742540, 35.827282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279465, 0.316000, 0.906666,
		0.026352, 0.946459, -0.321747,
		-0.959794, -0.066024, -0.272830,
		40.405567, 29.722733, 35.745434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793705, 30.456234, 36.258900>,  <41.077423, 29.768950, 35.936413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793705, 30.456234, 36.258900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474552, 30.231936, 36.170410>,  <40.283058, 30.097357, 36.117317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474552, 30.231936, 36.170410>,  <40.793705, 30.456234, 36.258900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474552, 30.231936, 36.170410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454958, 0.319411, 0.831258,
		-0.395465, 0.763897, -0.509970,
		-0.797885, -0.560748, -0.221225,
		40.235188, 30.063711, 36.104042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217793, 30.946327, 36.326881>,  <40.793705, 30.456234, 36.258900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217793, 30.946327, 36.326881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079430, 30.572311, 36.357990>,  <39.996410, 30.347902, 36.376656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079430, 30.572311, 36.357990>,  <40.217793, 30.946327, 36.326881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079430, 30.572311, 36.357990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369258, 0.211860, 0.904856,
		-0.862553, 0.284279, -0.418555,
		-0.345906, -0.935040, 0.077768,
		39.975658, 30.291800, 36.381321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477367, 30.954180, 36.486458>,  <40.217793, 30.946327, 36.326881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477367, 30.954180, 36.486458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598885, 30.600126, 36.627449>,  <39.671795, 30.387693, 36.712044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598885, 30.600126, 36.627449>,  <39.477367, 30.954180, 36.486458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598885, 30.600126, 36.627449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366064, 0.233127, 0.900916,
		-0.879605, -0.402726, -0.253193,
		0.303796, -0.885135, 0.352483,
		39.690025, 30.334585, 36.733192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826092, 30.593822, 36.703457>,  <39.477367, 30.954180, 36.486458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826092, 30.593822, 36.703457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148331, 30.454206, 36.894951>,  <39.341675, 30.370438, 37.009846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148331, 30.454206, 36.894951>,  <38.826092, 30.593822, 36.703457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148331, 30.454206, 36.894951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462828, 0.133697, 0.876308,
		-0.369872, -0.927522, -0.053840,
		0.805596, -0.349040, 0.478734,
		39.390011, 30.349495, 37.038570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532562, 30.515112, 37.293987>,  <38.826092, 30.593822, 36.703457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532562, 30.515112, 37.293987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917042, 30.472614, 37.395817>,  <39.147728, 30.447115, 37.456917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917042, 30.472614, 37.395817>,  <38.532562, 30.515112, 37.293987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917042, 30.472614, 37.395817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240198, 0.131477, 0.961779,
		-0.135656, -0.985609, 0.100855,
		0.961199, -0.106245, 0.254577,
		39.205402, 30.440741, 37.472191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526211, 30.021414, 37.815853>,  <38.532562, 30.515112, 37.293987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526211, 30.021414, 37.815853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855785, 30.241278, 37.870983>,  <39.053532, 30.373196, 37.904060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855785, 30.241278, 37.870983>,  <38.526211, 30.021414, 37.815853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855785, 30.241278, 37.870983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286815, 0.194738, 0.937984,
		0.488733, -0.812373, 0.318103,
		0.823940, 0.549661, 0.137826,
		39.102966, 30.406176, 37.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694843, 29.869513, 38.468292>,  <38.526211, 30.021414, 37.815853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694843, 29.869513, 38.468292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889141, 30.209183, 38.385399>,  <39.005722, 30.412985, 38.335663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889141, 30.209183, 38.385399>,  <38.694843, 29.869513, 38.468292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889141, 30.209183, 38.385399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293996, 0.381992, 0.876156,
		0.823174, -0.364664, 0.435206,
		0.485748, 0.849177, -0.207236,
		39.034866, 30.463936, 38.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939701, 30.062017, 39.092499>,  <38.694843, 29.869513, 38.468292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939701, 30.062017, 39.092499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012592, 30.406033, 38.901867>,  <39.056328, 30.612442, 38.787487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012592, 30.406033, 38.901867>,  <38.939701, 30.062017, 39.092499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012592, 30.406033, 38.901867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342622, 0.509860, 0.789083,
		0.921631, 0.019497, 0.387577,
		0.182225, 0.860036, -0.476583,
		39.067261, 30.664043, 38.758892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450260, 30.488045, 39.474915>,  <38.939701, 30.062017, 39.092499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450260, 30.488045, 39.474915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204159, 30.732771, 39.276058>,  <39.056499, 30.879606, 39.156746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204159, 30.732771, 39.276058>,  <39.450260, 30.488045, 39.474915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204159, 30.732771, 39.276058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166411, 0.515614, 0.840505,
		0.770565, 0.599853, -0.215420,
		-0.615253, 0.611816, -0.497136,
		39.019585, 30.916315, 39.126919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597183, 31.182362, 39.700806>,  <39.450260, 30.488045, 39.474915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597183, 31.182362, 39.700806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245453, 31.273584, 39.533581>,  <39.034416, 31.328318, 39.433247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245453, 31.273584, 39.533581>,  <39.597183, 31.182362, 39.700806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245453, 31.273584, 39.533581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136623, 0.720162, 0.680221,
		0.456199, 0.655253, -0.602101,
		-0.879327, 0.228055, -0.418060,
		38.981655, 31.342001, 39.408161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468990, 31.904697, 39.733479>,  <39.597183, 31.182362, 39.700806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468990, 31.904697, 39.733479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092999, 31.772493, 39.699528>,  <38.867405, 31.693171, 39.679157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092999, 31.772493, 39.699528>,  <39.468990, 31.904697, 39.733479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092999, 31.772493, 39.699528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312596, 0.734271, 0.602602,
		-0.136844, 0.592965, -0.793515,
		-0.939977, -0.330512, -0.084878,
		38.811005, 31.673340, 39.674065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231247, 32.590752, 39.992134>,  <39.468990, 31.904697, 39.733479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231247, 32.590752, 39.992134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285698, 32.983059, 39.936188>,  <39.318367, 33.218445, 39.902618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285698, 32.983059, 39.936188>,  <39.231247, 32.590752, 39.992134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285698, 32.983059, 39.936188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036474, -0.136122, -0.990021,
		-0.990020, 0.139868, 0.017243,
		0.136125, 0.980769, -0.139865,
		39.326534, 33.277290, 39.894230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826633, 32.847794, 39.427647>,  <39.231247, 32.590752, 39.992134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826633, 32.847794, 39.427647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104065, 33.135635, 39.414238>,  <39.270523, 33.308342, 39.406193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104065, 33.135635, 39.414238>,  <38.826633, 32.847794, 39.427647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104065, 33.135635, 39.414238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066214, 0.017340, -0.997655,
		-0.717336, 0.694167, 0.059674,
		0.693574, 0.719605, -0.033525,
		39.312138, 33.351517, 39.404179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593544, 33.308537, 38.832176>,  <38.826633, 32.847794, 39.427647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593544, 33.308537, 38.832176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979591, 33.391243, 38.896416>,  <39.211220, 33.440868, 38.934959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979591, 33.391243, 38.896416>,  <38.593544, 33.308537, 38.832176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979591, 33.391243, 38.896416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128410, 0.160712, -0.978612,
		-0.228155, 0.965100, 0.128556,
		0.965120, 0.206768, 0.160596,
		39.269127, 33.453274, 38.944595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735298, 33.990173, 38.505821>,  <38.593544, 33.308537, 38.832176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735298, 33.990173, 38.505821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094223, 33.816967, 38.540070>,  <39.309578, 33.713043, 38.560619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094223, 33.816967, 38.540070>,  <38.735298, 33.990173, 38.505821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094223, 33.816967, 38.540070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286586, 0.424007, -0.859120,
		0.335706, 0.795436, 0.504562,
		0.897313, -0.433012, 0.085619,
		39.363419, 33.687065, 38.565754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188675, 34.522377, 38.303471>,  <38.735298, 33.990173, 38.505821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188675, 34.522377, 38.303471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371902, 34.169182, 38.262478>,  <39.481838, 33.957264, 38.237885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371902, 34.169182, 38.262478>,  <39.188675, 34.522377, 38.303471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371902, 34.169182, 38.262478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428978, 0.320556, -0.844524,
		0.778556, 0.342890, 0.525620,
		0.458070, -0.882989, -0.102478,
		39.509323, 33.904285, 38.231735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820343, 34.690022, 38.229485>,  <39.188675, 34.522377, 38.303471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820343, 34.690022, 38.229485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.796375, 34.322277, 38.073952>,  <39.781994, 34.101631, 37.980633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.796375, 34.322277, 38.073952>,  <39.820343, 34.690022, 38.229485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796375, 34.322277, 38.073952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378329, 0.339553, -0.861146,
		0.923730, -0.198702, 0.327475,
		-0.059917, -0.919359, -0.388830,
		39.778400, 34.046471, 37.957302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434929, 34.571739, 37.713718>,  <39.820343, 34.690022, 38.229485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434929, 34.571739, 37.713718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158169, 34.304623, 37.603928>,  <39.992115, 34.144352, 37.538052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158169, 34.304623, 37.603928>,  <40.434929, 34.571739, 37.713718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158169, 34.304623, 37.603928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264943, 0.118811, -0.956916,
		0.671627, -0.734809, 0.094720,
		-0.691897, -0.667787, -0.274480,
		39.950600, 34.104286, 37.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811440, 33.963409, 37.369755>,  <40.434929, 34.571739, 37.713718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811440, 33.963409, 37.369755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429691, 33.964905, 37.250309>,  <40.200642, 33.965801, 37.178642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429691, 33.964905, 37.250309>,  <40.811440, 33.963409, 37.369755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429691, 33.964905, 37.250309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297862, -0.060074, -0.952717,
		-0.021500, -0.998187, 0.056220,
		-0.954367, 0.003738, -0.298613,
		40.143383, 33.966026, 37.160725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789490, 33.489277, 36.850857>,  <40.811440, 33.963409, 37.369755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789490, 33.489277, 36.850857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451000, 33.677364, 36.750610>,  <40.247906, 33.790218, 36.690464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451000, 33.677364, 36.750610>,  <40.789490, 33.489277, 36.850857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451000, 33.677364, 36.750610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220628, -0.118912, -0.968082,
		-0.485011, -0.874503, -0.003118,
		-0.846220, 0.470218, -0.250614,
		40.197136, 33.818428, 36.675426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540855, 33.054077, 36.316120>,  <40.789490, 33.489277, 36.850857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540855, 33.054077, 36.316120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356911, 33.408081, 36.287033>,  <40.246544, 33.620483, 36.269581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356911, 33.408081, 36.287033>,  <40.540855, 33.054077, 36.316120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356911, 33.408081, 36.287033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040127, -0.061094, -0.997325,
		-0.887084, -0.461549, -0.007418,
		-0.459861, 0.885009, -0.072716,
		40.218952, 33.673584, 36.265217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000443, 32.849449, 35.859070>,  <40.540855, 33.054077, 36.316120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000443, 32.849449, 35.859070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086311, 33.239792, 35.843006>,  <40.137833, 33.473999, 35.833370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086311, 33.239792, 35.843006>,  <40.000443, 32.849449, 35.859070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086311, 33.239792, 35.843006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023089, -0.046175, -0.998666,
		-0.976413, 0.213459, -0.032444,
		0.214672, 0.975860, -0.040157,
		40.150715, 33.532551, 35.830959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506870, 33.168434, 35.363159>,  <40.000443, 32.849449, 35.859070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506870, 33.168434, 35.363159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.785683, 33.454842, 35.378441>,  <39.952972, 33.626686, 35.387608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.785683, 33.454842, 35.378441>,  <39.506870, 33.168434, 35.363159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785683, 33.454842, 35.378441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119485, 0.168518, -0.978430,
		-0.707012, 0.677435, 0.203016,
		0.697035, 0.716019, 0.038201,
		39.994793, 33.669647, 35.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214790, 33.607952, 35.008636>,  <39.506870, 33.168434, 35.363159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214790, 33.607952, 35.008636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585690, 33.757530, 35.000843>,  <39.808228, 33.847279, 34.996166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585690, 33.757530, 35.000843>,  <39.214790, 33.607952, 35.008636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585690, 33.757530, 35.000843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118068, 0.242596, -0.962916,
		-0.355352, 0.895160, 0.269097,
		0.927246, 0.373946, -0.019483,
		39.863865, 33.869713, 34.994999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186836, 34.256676, 34.610275>,  <39.214790, 33.607952, 35.008636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186836, 34.256676, 34.610275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 34.117775, 34.599033>,  <39.786739, 34.034435, 34.592289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 34.117775, 34.599033>,  <39.186836, 34.256676, 34.610275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561775, 34.117775, 34.599033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071644, -0.113172, -0.990989,
		0.340946, 0.930916, -0.130960,
		0.937349, -0.347256, -0.028109,
		39.842979, 34.013599, 34.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597427, 34.665386, 34.076103>,  <39.186836, 34.256676, 34.610275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597427, 34.665386, 34.076103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789410, 34.321003, 34.143505>,  <39.904598, 34.114372, 34.183945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789410, 34.321003, 34.143505>,  <39.597427, 34.665386, 34.076103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789410, 34.321003, 34.143505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160963, -0.275234, -0.947807,
		0.862399, 0.427784, -0.270683,
		0.479958, -0.860957, 0.168504,
		39.933395, 34.062717, 34.194057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291405, 35.382484, 33.914852>,  <39.597427, 34.665386, 34.076103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291405, 35.382484, 33.914852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985291, 35.551388, 33.720516>,  <38.801620, 35.652729, 33.603916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985291, 35.551388, 33.720516>,  <39.291405, 35.382484, 33.914852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985291, 35.551388, 33.720516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463634, 0.161978, 0.871095,
		0.446524, 0.891885, 0.071815,
		-0.765284, 0.422261, -0.485835,
		38.755707, 35.678066, 33.574764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129650, 35.962978, 34.303089>,  <39.291405, 35.382484, 33.914852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129650, 35.962978, 34.303089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797180, 35.909065, 34.087318>,  <38.597698, 35.876717, 33.957855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797180, 35.909065, 34.087318>,  <39.129650, 35.962978, 34.303089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797180, 35.909065, 34.087318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549601, 0.052249, 0.833792,
		-0.084199, 0.989496, -0.117507,
		-0.831173, -0.134786, -0.539429,
		38.547829, 35.868629, 33.925491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672462, 36.560989, 34.445202>,  <39.129650, 35.962978, 34.303089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672462, 36.560989, 34.445202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438187, 36.262562, 34.318489>,  <38.297619, 36.083508, 34.242462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438187, 36.262562, 34.318489>,  <38.672462, 36.560989, 34.445202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438187, 36.262562, 34.318489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534408, 0.061600, 0.842979,
		-0.609404, 0.663016, -0.434783,
		-0.585691, -0.746066, -0.316782,
		38.262478, 36.038742, 34.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042263, 36.755959, 34.661297>,  <38.672462, 36.560989, 34.445202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042263, 36.755959, 34.661297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976131, 36.371677, 34.572102>,  <37.936455, 36.141109, 34.518585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976131, 36.371677, 34.572102>,  <38.042263, 36.755959, 34.661297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976131, 36.371677, 34.572102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655090, -0.062044, 0.752999,
		-0.737241, 0.270567, -0.619087,
		-0.165326, -0.960700, -0.222987,
		37.926533, 36.083466, 34.505207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343933, 36.715984, 34.585842>,  <38.042263, 36.755959, 34.661297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343933, 36.715984, 34.585842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477211, 36.349129, 34.673325>,  <37.557178, 36.129013, 34.725815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477211, 36.349129, 34.673325>,  <37.343933, 36.715984, 34.585842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477211, 36.349129, 34.673325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469101, 0.039966, 0.882240,
		-0.817880, -0.396551, -0.416916,
		0.333191, -0.917142, 0.218710,
		37.577168, 36.073986, 34.738937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850964, 36.500530, 34.949959>,  <37.343933, 36.715984, 34.585842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850964, 36.500530, 34.949959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094200, 36.202591, 35.059818>,  <37.240143, 36.023827, 35.125736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094200, 36.202591, 35.059818>,  <36.850964, 36.500530, 34.949959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094200, 36.202591, 35.059818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573758, -0.173244, 0.800492,
		-0.548661, -0.644354, -0.532709,
		0.608089, -0.744845, 0.274651,
		37.276627, 35.979137, 35.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407291, 35.997112, 35.158852>,  <36.850964, 36.500530, 34.949959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407291, 35.997112, 35.158852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759483, 35.920856, 35.332481>,  <36.970798, 35.875103, 35.436661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759483, 35.920856, 35.332481>,  <36.407291, 35.997112, 35.158852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759483, 35.920856, 35.332481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470776, -0.243466, 0.847994,
		-0.055976, -0.950990, -0.304113,
		0.880475, -0.190636, 0.434075,
		37.023624, 35.863667, 35.462704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316822, 35.303459, 35.488091>,  <36.407291, 35.997112, 35.158852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316822, 35.303459, 35.488091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624443, 35.480167, 35.672867>,  <36.809017, 35.586193, 35.783733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624443, 35.480167, 35.672867>,  <36.316822, 35.303459, 35.488091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624443, 35.480167, 35.672867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501502, -0.031046, 0.864599,
		0.396299, -0.896589, 0.197674,
		0.769053, 0.441774, 0.461945,
		36.855160, 35.612698, 35.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428177, 34.935520, 36.115948>,  <36.316822, 35.303459, 35.488091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428177, 34.935520, 36.115948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558849, 35.309704, 36.169903>,  <36.637253, 35.534214, 36.202278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558849, 35.309704, 36.169903>,  <36.428177, 34.935520, 36.115948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558849, 35.309704, 36.169903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480312, 0.041402, 0.876120,
		0.813989, -0.351004, 0.462837,
		0.326684, 0.935458, 0.134891,
		36.656853, 35.590340, 36.210369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780373, 34.947010, 36.814648>,  <36.428177, 34.935520, 36.115948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780373, 34.947010, 36.814648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.706059, 35.330437, 36.728271>,  <36.661469, 35.560493, 36.676445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.706059, 35.330437, 36.728271>,  <36.780373, 34.947010, 36.814648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706059, 35.330437, 36.728271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414556, 0.122780, 0.901703,
		0.890857, 0.257046, 0.374569,
		-0.185789, 0.958568, -0.215939,
		36.650322, 35.618008, 36.663490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787697, 35.242611, 37.515369>,  <36.780373, 34.947010, 36.814648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787697, 35.242611, 37.515369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616074, 35.525654, 37.290798>,  <36.513100, 35.695480, 37.156055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616074, 35.525654, 37.290798>,  <36.787697, 35.242611, 37.515369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616074, 35.525654, 37.290798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524458, 0.310897, 0.792646,
		0.735429, 0.634534, 0.237719,
		-0.429055, 0.707608, -0.561429,
		36.487358, 35.737938, 37.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689228, 35.786987, 37.929039>,  <36.787697, 35.242611, 37.515369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689228, 35.786987, 37.929039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435421, 35.857460, 37.628014>,  <36.283138, 35.899746, 37.447399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435421, 35.857460, 37.628014>,  <36.689228, 35.786987, 37.929039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435421, 35.857460, 37.628014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675357, 0.347132, 0.650686,
		0.375879, 0.921118, -0.101273,
		-0.634514, 0.176184, -0.752563,
		36.245068, 35.910316, 37.402245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.233025, 35.657593, 30.577181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898201, 35.498245, 30.427172>,  <40.697308, 35.402637, 30.337166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898201, 35.498245, 30.427172>,  <41.233025, 35.657593, 30.577181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898201, 35.498245, 30.427172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536932, 0.466481, 0.702922,
		-0.105081, 0.789746, -0.604367,
		-0.837056, -0.398367, -0.375021,
		40.647083, 35.378735, 30.314665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793404, 36.192539, 30.559757>,  <41.233025, 35.657593, 30.577181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793404, 36.192539, 30.559757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560486, 35.867870, 30.578215>,  <40.420734, 35.673069, 30.589289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560486, 35.867870, 30.578215>,  <40.793404, 36.192539, 30.559757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560486, 35.867870, 30.578215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475152, 0.385828, 0.790802,
		-0.659673, 0.438552, -0.610330,
		-0.582290, -0.811671, 0.046141,
		40.385799, 35.624371, 30.592056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140694, 36.452168, 30.717384>,  <40.793404, 36.192539, 30.559757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140694, 36.452168, 30.717384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057888, 36.068470, 30.794329>,  <40.008205, 35.838253, 30.840496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057888, 36.068470, 30.794329>,  <40.140694, 36.452168, 30.717384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057888, 36.068470, 30.794329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686659, 0.282517, 0.669839,
		-0.696882, 0.006582, -0.717156,
		-0.207017, -0.959240, 0.192361,
		39.995785, 35.780697, 30.852037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407387, 36.443790, 30.766157>,  <40.140694, 36.452168, 30.717384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407387, 36.443790, 30.766157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544930, 36.120251, 30.956953>,  <39.627457, 35.926125, 31.071430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544930, 36.120251, 30.956953>,  <39.407387, 36.443790, 30.766157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544930, 36.120251, 30.956953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581541, 0.215396, 0.784483,
		-0.737274, -0.547138, -0.396317,
		0.343856, -0.808854, 0.476989,
		39.648087, 35.877594, 31.100050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818085, 36.024372, 31.021099>,  <39.407387, 36.443790, 30.766157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818085, 36.024372, 31.021099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125336, 35.933319, 31.260489>,  <39.309685, 35.878689, 31.404121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125336, 35.933319, 31.260489>,  <38.818085, 36.024372, 31.021099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125336, 35.933319, 31.260489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621995, -0.043364, 0.781819,
		-0.152015, -0.972781, -0.174895,
		0.768123, -0.227633, 0.598473,
		39.355774, 35.865028, 31.440031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435719, 35.700882, 31.461542>,  <38.818085, 36.024372, 31.021099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435719, 35.700882, 31.461542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788010, 35.732109, 31.648399>,  <38.999386, 35.750843, 31.760513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788010, 35.732109, 31.648399>,  <38.435719, 35.700882, 31.461542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788010, 35.732109, 31.648399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467363, -0.016590, 0.883910,
		0.076757, -0.996810, 0.021876,
		0.880727, 0.078071, 0.467145,
		39.052227, 35.755527, 31.788544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644592, 35.083134, 31.911783>,  <38.435719, 35.700882, 31.461542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644592, 35.083134, 31.911783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865677, 35.374443, 32.073830>,  <38.998329, 35.549229, 32.171059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865677, 35.374443, 32.073830>,  <38.644592, 35.083134, 31.911783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865677, 35.374443, 32.073830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441290, -0.156602, 0.883595,
		0.706943, -0.667150, 0.234825,
		0.552716, 0.728277, 0.405115,
		39.031490, 35.592926, 32.195366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051861, 34.855759, 32.567341>,  <38.644592, 35.083134, 31.911783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051861, 34.855759, 32.567341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003628, 35.247807, 32.630367>,  <38.974689, 35.483036, 32.668182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003628, 35.247807, 32.630367>,  <39.051861, 34.855759, 32.567341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003628, 35.247807, 32.630367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337160, -0.189723, 0.922132,
		0.933693, 0.058067, 0.353334,
		-0.120581, 0.980119, 0.157565,
		38.967453, 35.541843, 32.677635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197704, 34.920956, 33.303913>,  <39.051861, 34.855759, 32.567341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197704, 34.920956, 33.303913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011639, 35.260662, 33.204021>,  <38.899998, 35.464485, 33.144089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011639, 35.260662, 33.204021>,  <39.197704, 34.920956, 33.303913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011639, 35.260662, 33.204021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318134, 0.102874, 0.942448,
		0.826081, 0.517842, 0.222327,
		-0.465168, 0.849268, -0.249725,
		38.872089, 35.515442, 33.129105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899086, 34.552723, 33.402111>,  <39.197704, 34.920956, 33.303913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899086, 34.552723, 33.402111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965885, 34.208134, 33.593933>,  <40.005966, 34.001381, 33.709026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965885, 34.208134, 33.593933>,  <39.899086, 34.552723, 33.402111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965885, 34.208134, 33.593933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217093, -0.506578, -0.834415,
		0.961760, 0.035239, -0.271619,
		0.167000, -0.861473, 0.479557,
		40.015984, 33.949692, 33.737801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521915, 34.196323, 33.073685>,  <39.899086, 34.552723, 33.402111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521915, 34.196323, 33.073685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335205, 33.896225, 33.260983>,  <40.223179, 33.716164, 33.373360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335205, 33.896225, 33.260983>,  <40.521915, 34.196323, 33.073685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335205, 33.896225, 33.260983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073716, -0.560625, -0.824782,
		0.881300, -0.350468, 0.316989,
		-0.466772, -0.750248, 0.468244,
		40.195175, 33.671150, 33.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835510, 33.544548, 32.916107>,  <40.521915, 34.196323, 33.073685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835510, 33.544548, 32.916107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476933, 33.432930, 33.053810>,  <40.261784, 33.365959, 33.136433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476933, 33.432930, 33.053810>,  <40.835510, 33.544548, 32.916107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476933, 33.432930, 33.053810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060600, -0.692352, -0.719011,
		0.438985, -0.665418, 0.603748,
		-0.896449, -0.279047, 0.344256,
		40.207996, 33.349216, 33.157085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882603, 32.891891, 32.968456>,  <40.835510, 33.544548, 32.916107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882603, 32.891891, 32.968456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485401, 32.938702, 32.962128>,  <40.247082, 32.966789, 32.958332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485401, 32.938702, 32.962128>,  <40.882603, 32.891891, 32.968456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485401, 32.938702, 32.962128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084301, -0.796290, -0.599013,
		-0.082696, -0.593488, 0.800583,
		-0.993003, 0.117026, -0.015819,
		40.187500, 32.973808, 32.957382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533821, 32.241924, 33.095436>,  <40.882603, 32.891891, 32.968456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533821, 32.241924, 33.095436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285927, 32.473816, 32.883839>,  <40.137188, 32.612953, 32.756882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285927, 32.473816, 32.883839>,  <40.533821, 32.241924, 33.095436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285927, 32.473816, 32.883839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184562, -0.762798, -0.619739,
		-0.762798, -0.286444, 0.579732,
		0.619739, -0.579732, 0.528994,
		40.100006, 32.647736, 32.725140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078426, 31.712084, 32.773388>,  <40.533821, 32.241924, 33.095436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078426, 31.712084, 32.773388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009789, 32.045143, 32.562767>,  <39.968605, 32.244980, 32.436394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009789, 32.045143, 32.562767>,  <40.078426, 31.712084, 32.773388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009789, 32.045143, 32.562767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102014, -0.546621, -0.831143,
		-0.979872, -0.088902, 0.178737,
		-0.171592, 0.832648, -0.526550,
		39.958309, 32.294937, 32.404800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550201, 31.538502, 32.328468>,  <40.078426, 31.712084, 32.773388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550201, 31.538502, 32.328468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738556, 31.849882, 32.162441>,  <39.851566, 32.036713, 32.062824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738556, 31.849882, 32.162441>,  <39.550201, 31.538502, 32.328468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738556, 31.849882, 32.162441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178968, -0.545001, -0.819112,
		-0.863851, 0.311423, -0.395951,
		0.470884, 0.778453, -0.415065,
		39.879822, 32.083420, 32.037922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398270, 31.459797, 31.597742>,  <39.550201, 31.538502, 32.328468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398270, 31.459797, 31.597742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711666, 31.707876, 31.613174>,  <39.899704, 31.856724, 31.622435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711666, 31.707876, 31.613174>,  <39.398270, 31.459797, 31.597742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711666, 31.707876, 31.613174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403169, -0.460113, -0.791044,
		-0.472852, 0.635335, -0.610542,
		0.783496, 0.620198, 0.038582,
		39.946716, 31.893936, 31.624748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537155, 31.834024, 30.885027>,  <39.398270, 31.459797, 31.597742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537155, 31.834024, 30.885027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872623, 31.833666, 31.102882>,  <40.073906, 31.833450, 31.233595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872623, 31.833666, 31.102882>,  <39.537155, 31.834024, 30.885027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872623, 31.833666, 31.102882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514997, -0.324092, -0.793563,
		0.177225, 0.946025, -0.271344,
		0.838671, -0.000898, 0.544638,
		40.124226, 31.833397, 31.266273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019756, 32.076279, 30.403572>,  <39.537155, 31.834024, 30.885027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019756, 32.076279, 30.403572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245579, 31.940281, 30.704418>,  <40.381073, 31.858683, 30.884926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245579, 31.940281, 30.704418>,  <40.019756, 32.076279, 30.403572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245579, 31.940281, 30.704418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747021, -0.177081, -0.640782,
		0.351048, 0.923605, 0.154011,
		0.564557, -0.339995, 0.752117,
		40.414948, 31.838282, 30.930054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687923, 32.294781, 30.236763>,  <40.019756, 32.076279, 30.403572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687923, 32.294781, 30.236763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729763, 31.983763, 30.484789>,  <40.754868, 31.797152, 30.633604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729763, 31.983763, 30.484789>,  <40.687923, 32.294781, 30.236763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729763, 31.983763, 30.484789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556873, -0.470783, -0.684292,
		0.823985, 0.416873, 0.383753,
		0.104598, -0.777548, 0.620064,
		40.761143, 31.750498, 30.670809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373718, 32.153927, 30.223482>,  <40.687923, 32.294781, 30.236763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373718, 32.153927, 30.223482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242321, 31.796473, 30.345797>,  <41.163483, 31.581999, 30.419186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242321, 31.796473, 30.345797>,  <41.373718, 32.153927, 30.223482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242321, 31.796473, 30.345797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612080, -0.447984, -0.651666,
		0.719341, -0.026900, 0.694136,
		-0.328492, -0.893637, 0.305789,
		41.143772, 31.528381, 30.437532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982769, 31.773428, 30.386169>,  <41.373718, 32.153927, 30.223482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982769, 31.773428, 30.386169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674438, 31.525688, 30.326515>,  <41.489441, 31.377045, 30.290722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674438, 31.525688, 30.326515>,  <41.982769, 31.773428, 30.386169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674438, 31.525688, 30.326515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530254, -0.494022, -0.689038,
		0.353078, -0.610205, 0.709215,
		-0.770822, -0.619348, -0.149135,
		41.443192, 31.339884, 30.281775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270039, 31.098324, 30.460602>,  <41.982769, 31.773428, 30.386169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270039, 31.098324, 30.460602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920410, 31.040276, 30.275154>,  <41.710632, 31.005445, 30.163885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920410, 31.040276, 30.275154>,  <42.270039, 31.098324, 30.460602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920410, 31.040276, 30.275154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470548, -0.490167, -0.733703,
		-0.120773, -0.859462, 0.496728,
		-0.874070, -0.145122, -0.463617,
		41.658188, 30.996738, 30.136068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.839821, 31.267584, 28.100880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222507, 31.178909, 28.176306>,  <36.452118, 31.125706, 28.221561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222507, 31.178909, 28.176306>,  <35.839821, 31.267584, 28.100880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222507, 31.178909, 28.176306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217531, -0.114268, 0.969342,
		-0.193340, -0.968400, -0.157545,
		0.956713, -0.221683, 0.188564,
		36.509521, 31.112404, 28.232876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830448, 30.666412, 28.522404>,  <35.839821, 31.267584, 28.100880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830448, 30.666412, 28.522404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165096, 30.880184, 28.570475>,  <36.365887, 31.008448, 28.599318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165096, 30.880184, 28.570475>,  <35.830448, 30.666412, 28.522404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165096, 30.880184, 28.570475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224944, 0.135147, 0.964954,
		0.499460, -0.834337, 0.233284,
		0.836624, 0.534431, 0.120178,
		36.416084, 31.040514, 28.606527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019314, 30.378393, 29.160097>,  <35.830448, 30.666412, 28.522404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019314, 30.378393, 29.160097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244720, 30.707638, 29.131998>,  <36.379963, 30.905186, 29.115139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244720, 30.707638, 29.131998>,  <36.019314, 30.378393, 29.160097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244720, 30.707638, 29.131998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114165, 0.161814, 0.980195,
		0.818179, -0.544334, 0.185155,
		0.563515, 0.823114, -0.070249,
		36.413776, 30.954573, 29.110924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625050, 30.348339, 29.720530>,  <36.019314, 30.378393, 29.160097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625050, 30.348339, 29.720530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557381, 30.731457, 29.627569>,  <36.516781, 30.961327, 29.571793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557381, 30.731457, 29.627569>,  <36.625050, 30.348339, 29.720530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557381, 30.731457, 29.627569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168617, 0.204197, 0.964299,
		0.971056, 0.202319, 0.126956,
		-0.169172, 0.957795, -0.232401,
		36.506630, 31.018795, 29.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143574, 30.759615, 30.107878>,  <36.625050, 30.348339, 29.720530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143574, 30.759615, 30.107878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865879, 31.033792, 30.020056>,  <36.699261, 31.198299, 29.967361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865879, 31.033792, 30.020056>,  <37.143574, 30.759615, 30.107878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865879, 31.033792, 30.020056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016878, 0.320467, 0.947109,
		0.719550, 0.653811, -0.234049,
		-0.694235, 0.685443, -0.219557,
		36.657608, 31.239426, 29.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449432, 31.438341, 30.274940>,  <37.143574, 30.759615, 30.107878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449432, 31.438341, 30.274940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055737, 31.508795, 30.268639>,  <36.819519, 31.551067, 30.264856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055737, 31.508795, 30.268639>,  <37.449432, 31.438341, 30.274940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055737, 31.508795, 30.268639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030934, 0.259221, 0.965323,
		0.174109, 0.949622, -0.260584,
		-0.984241, 0.176132, -0.015757,
		36.760464, 31.561634, 30.263912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289364, 32.076595, 30.666405>,  <37.449432, 31.438341, 30.274940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289364, 32.076595, 30.666405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929703, 31.902021, 30.679379>,  <36.713905, 31.797277, 30.687162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929703, 31.902021, 30.679379>,  <37.289364, 32.076595, 30.666405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929703, 31.902021, 30.679379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108979, 0.295068, 0.949241,
		-0.423848, 0.849979, -0.312873,
		-0.899153, -0.436430, 0.032434,
		36.659958, 31.771091, 30.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955261, 32.512825, 31.098333>,  <37.289364, 32.076595, 30.666405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955261, 32.512825, 31.098333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694622, 32.209755, 31.113054>,  <36.538239, 32.027912, 31.121887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694622, 32.209755, 31.113054>,  <36.955261, 32.512825, 31.098333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694622, 32.209755, 31.113054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204361, 0.222056, 0.953377,
		-0.730519, 0.613697, -0.299530,
		-0.651597, -0.757672, 0.036800,
		36.499142, 31.982452, 31.124094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448753, 32.706688, 31.517126>,  <36.955261, 32.512825, 31.098333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448753, 32.706688, 31.517126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413937, 32.308231, 31.521723>,  <36.393047, 32.069157, 31.524481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413937, 32.308231, 31.521723>,  <36.448753, 32.706688, 31.517126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413937, 32.308231, 31.521723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201156, 0.028871, 0.979134,
		-0.975684, 0.082912, -0.202892,
		-0.087040, -0.996139, 0.011491,
		36.387825, 32.009388, 31.525169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916897, 32.694576, 31.960588>,  <36.448753, 32.706688, 31.517126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916897, 32.694576, 31.960588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070347, 32.326042, 31.935387>,  <36.162418, 32.104923, 31.920265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070347, 32.326042, 31.935387>,  <35.916897, 32.694576, 31.960588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070347, 32.326042, 31.935387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256121, -0.171696, 0.951274,
		-0.887261, -0.348798, -0.301841,
		0.383627, -0.921336, -0.063005,
		36.185436, 32.049641, 31.916485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402054, 32.212799, 32.114151>,  <35.916897, 32.694576, 31.960588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402054, 32.212799, 32.114151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751686, 32.031967, 32.185257>,  <35.961468, 31.923468, 32.227921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751686, 32.031967, 32.185257>,  <35.402054, 32.212799, 32.114151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751686, 32.031967, 32.185257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256878, -0.119555, 0.959021,
		-0.412304, -0.883927, -0.220631,
		0.874082, -0.452083, 0.177768,
		36.013912, 31.896343, 32.238586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298298, 31.543058, 32.370171>,  <35.402054, 32.212799, 32.114151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298298, 31.543058, 32.370171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663975, 31.657869, 32.484619>,  <35.883381, 31.726757, 32.553288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663975, 31.657869, 32.484619>,  <35.298298, 31.543058, 32.370171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663975, 31.657869, 32.484619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205484, -0.280234, 0.937681,
		0.349321, -0.916015, -0.197209,
		0.914194, 0.287029, 0.286118,
		35.938232, 31.743979, 32.570454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456059, 31.087275, 32.885628>,  <35.298298, 31.543058, 32.370171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456059, 31.087275, 32.885628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749187, 31.354628, 32.936596>,  <35.925064, 31.515039, 32.967178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749187, 31.354628, 32.936596>,  <35.456059, 31.087275, 32.885628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749187, 31.354628, 32.936596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187107, 0.017905, 0.982176,
		0.654187, -0.743603, 0.138180,
		0.732823, 0.668382, 0.127420,
		35.969036, 31.555141, 32.974823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755554, 30.817654, 33.406960>,  <35.456059, 31.087275, 32.885628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755554, 30.817654, 33.406960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906212, 31.188173, 33.411053>,  <35.996609, 31.410486, 33.413509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906212, 31.188173, 33.411053>,  <35.755554, 30.817654, 33.406960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906212, 31.188173, 33.411053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167388, 0.057188, 0.984231,
		0.911108, -0.372421, 0.176591,
		0.376648, 0.926300, 0.010234,
		36.019207, 31.466063, 33.414124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508774, 30.634804, 33.527905>,  <35.755554, 30.817654, 33.406960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508774, 30.634804, 33.527905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769085, 30.362989, 33.663387>,  <36.925270, 30.199902, 33.744678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769085, 30.362989, 33.663387>,  <36.508774, 30.634804, 33.527905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769085, 30.362989, 33.663387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305848, -0.173691, -0.936103,
		0.694946, 0.712785, 0.094801,
		0.650774, -0.679536, 0.338710,
		36.964317, 30.159128, 33.764999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118694, 30.728111, 33.201557>,  <36.508774, 30.634804, 33.527905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118694, 30.728111, 33.201557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175323, 30.359863, 33.347111>,  <37.209301, 30.138914, 33.434444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175323, 30.359863, 33.347111>,  <37.118694, 30.728111, 33.201557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175323, 30.359863, 33.347111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381851, -0.288356, -0.878089,
		0.913317, 0.263265, 0.310716,
		0.141573, -0.920621, 0.363889,
		37.217796, 30.083677, 33.456276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770317, 30.617586, 32.881332>,  <37.118694, 30.728111, 33.201557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770317, 30.617586, 32.881332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631382, 30.256773, 32.983856>,  <37.548019, 30.040285, 33.045368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631382, 30.256773, 32.983856>,  <37.770317, 30.617586, 32.881332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631382, 30.256773, 32.983856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199220, -0.338068, -0.919794,
		0.916333, -0.268420, 0.297128,
		-0.347341, -0.902031, 0.256307,
		37.527180, 29.986164, 33.060749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335979, 30.137560, 32.955284>,  <37.770317, 30.617586, 32.881332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335979, 30.137560, 32.955284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019444, 29.903088, 32.885803>,  <37.829521, 29.762405, 32.844116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019444, 29.903088, 32.885803>,  <38.335979, 30.137560, 32.955284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019444, 29.903088, 32.885803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364223, -0.223817, -0.904018,
		0.491039, -0.778653, 0.390616,
		-0.791342, -0.586179, -0.173701,
		37.782040, 29.727234, 32.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515217, 29.372145, 32.699360>,  <38.335979, 30.137560, 32.955284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515217, 29.372145, 32.699360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129147, 29.405104, 32.600052>,  <37.897503, 29.424879, 32.540466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129147, 29.405104, 32.600052>,  <38.515217, 29.372145, 32.699360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129147, 29.405104, 32.600052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162393, -0.555332, -0.815619,
		-0.205078, -0.827537, 0.522615,
		-0.965179, 0.082397, -0.248273,
		37.839592, 29.429823, 32.525570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285889, 28.677797, 32.516499>,  <38.515217, 29.372145, 32.699360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285889, 28.677797, 32.516499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039444, 28.943033, 32.346451>,  <37.891579, 29.102175, 32.244423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039444, 28.943033, 32.346451>,  <38.285889, 28.677797, 32.516499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039444, 28.943033, 32.346451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224535, -0.369471, -0.901707,
		-0.754978, -0.651004, 0.078748,
		-0.616110, 0.663088, -0.425116,
		37.854610, 29.141960, 32.218918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004906, 28.268896, 31.991802>,  <38.285889, 28.677797, 32.516499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004906, 28.268896, 31.991802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.949631, 28.655037, 31.903261>,  <37.916466, 28.886723, 31.850136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.949631, 28.655037, 31.903261>,  <38.004906, 28.268896, 31.991802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949631, 28.655037, 31.903261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263982, -0.179512, -0.947676,
		-0.954578, -0.189387, -0.230030,
		-0.138184, 0.965354, -0.221353,
		37.908176, 28.944643, 31.836855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512135, 28.228594, 31.456394>,  <38.004906, 28.268896, 31.991802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512135, 28.228594, 31.456394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691071, 28.584410, 31.419300>,  <37.798431, 28.797899, 31.397043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691071, 28.584410, 31.419300>,  <37.512135, 28.228594, 31.456394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691071, 28.584410, 31.419300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130128, -0.167320, -0.977277,
		-0.884844, 0.425112, -0.190604,
		0.447345, 0.889541, -0.092733,
		37.825275, 28.851273, 31.391479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264656, 28.627329, 31.020451>,  <37.512135, 28.228594, 31.456394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264656, 28.627329, 31.020451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627823, 28.794937, 31.016331>,  <37.845722, 28.895502, 31.013859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627823, 28.794937, 31.016331>,  <37.264656, 28.627329, 31.020451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627823, 28.794937, 31.016331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014334, 0.006480, -0.999876,
		-0.418903, 0.907953, 0.011890,
		0.907918, 0.419021, -0.010300,
		37.900200, 28.920643, 31.013241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253616, 29.093262, 30.479143>,  <37.264656, 28.627329, 31.020451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253616, 29.093262, 30.479143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641472, 29.011856, 30.533390>,  <37.874184, 28.963013, 30.565939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641472, 29.011856, 30.533390>,  <37.253616, 29.093262, 30.479143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641472, 29.011856, 30.533390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133506, -0.024140, -0.990754,
		0.204904, 0.978775, 0.003763,
		0.969634, -0.203512, 0.135619,
		37.932362, 28.950802, 30.574076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657310, 29.578680, 30.088520>,  <37.253616, 29.093262, 30.479143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657310, 29.578680, 30.088520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922787, 29.287786, 30.158550>,  <38.082073, 29.113251, 30.200569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922787, 29.287786, 30.158550>,  <37.657310, 29.578680, 30.088520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922787, 29.287786, 30.158550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181045, -0.070923, -0.980914,
		0.725770, 0.682716, 0.084591,
		0.663687, -0.727233, 0.175077,
		38.121891, 29.069616, 30.211073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213970, 29.742113, 29.762197>,  <37.657310, 29.578680, 30.088520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213970, 29.742113, 29.762197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263844, 29.347073, 29.800346>,  <38.293766, 29.110048, 29.823235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263844, 29.347073, 29.800346>,  <38.213970, 29.742113, 29.762197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263844, 29.347073, 29.800346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024883, -0.092978, -0.995357,
		0.991884, 0.126479, 0.012982,
		0.124685, -0.987602, 0.095371,
		38.301250, 29.050793, 29.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834305, 29.579903, 29.471092>,  <38.213970, 29.742113, 29.762197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834305, 29.579903, 29.471092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677338, 29.212236, 29.457598>,  <38.583157, 28.991636, 29.449501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677338, 29.212236, 29.457598>,  <38.834305, 29.579903, 29.471092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677338, 29.212236, 29.457598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304930, -0.095404, -0.947584,
		0.867769, -0.382140, 0.317721,
		-0.392421, -0.919167, -0.033737,
		38.559612, 28.936487, 29.447477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391445, 29.106409, 29.219053>,  <38.834305, 29.579903, 29.471092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391445, 29.106409, 29.219053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038124, 28.930727, 29.153481>,  <38.826130, 28.825317, 29.114136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038124, 28.930727, 29.153481>,  <39.391445, 29.106409, 29.219053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038124, 28.930727, 29.153481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236593, -0.115749, -0.964689,
		0.404723, -0.890898, 0.206155,
		-0.883302, -0.439206, -0.163934,
		38.773132, 28.798965, 29.104300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695103, 28.582390, 29.686878>,  <39.391445, 29.106409, 29.219053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695103, 28.582390, 29.686878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087093, 28.527111, 29.744226>,  <40.322289, 28.493944, 29.778635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087093, 28.527111, 29.744226>,  <39.695103, 28.582390, 29.686878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087093, 28.527111, 29.744226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111725, 0.214420, 0.970331,
		-0.164839, -0.966915, 0.194686,
		0.979973, -0.138197, 0.143373,
		40.381084, 28.485653, 29.787239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732864, 28.008402, 30.115561>,  <39.695103, 28.582390, 29.686878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732864, 28.008402, 30.115561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073963, 28.214394, 30.150463>,  <40.278622, 28.337988, 30.171406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073963, 28.214394, 30.150463>,  <39.732864, 28.008402, 30.115561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073963, 28.214394, 30.150463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140227, 0.064795, 0.987997,
		0.503146, -0.854749, 0.127468,
		0.852749, 0.514981, 0.087258,
		40.329788, 28.368887, 30.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098938, 27.739182, 30.664045>,  <39.732864, 28.008402, 30.115561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098938, 27.739182, 30.664045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318195, 28.071484, 30.625299>,  <40.449749, 28.270864, 30.602053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318195, 28.071484, 30.625299>,  <40.098938, 27.739182, 30.664045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318195, 28.071484, 30.625299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000107, 0.115742, 0.993279,
		0.836382, -0.544474, 0.063355,
		0.548147, 0.830754, -0.096862,
		40.482639, 28.320709, 30.596241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735085, 27.781223, 31.189554>,  <40.098938, 27.739182, 30.664045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735085, 27.781223, 31.189554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633415, 28.154119, 31.086540>,  <40.572414, 28.377857, 31.024733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633415, 28.154119, 31.086540>,  <40.735085, 27.781223, 31.189554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633415, 28.154119, 31.086540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034860, 0.257275, 0.965709,
		0.966531, 0.254434, -0.032894,
		-0.254172, 0.932241, -0.257533,
		40.557163, 28.433792, 31.009281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166420, 28.169132, 31.591238>,  <40.735085, 27.781223, 31.189554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166420, 28.169132, 31.591238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904221, 28.443850, 31.465616>,  <40.746899, 28.608681, 31.390244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904221, 28.443850, 31.465616>,  <41.166420, 28.169132, 31.591238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904221, 28.443850, 31.465616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079221, 0.351032, 0.933006,
		0.751026, 0.636468, -0.175694,
		-0.655503, 0.686793, -0.314055,
		40.707569, 28.649887, 31.371399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450813, 28.794958, 31.754995>,  <41.166420, 28.169132, 31.591238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450813, 28.794958, 31.754995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.053917, 28.822729, 31.713753>,  <40.815777, 28.839392, 31.689007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.053917, 28.822729, 31.713753>,  <41.450813, 28.794958, 31.754995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053917, 28.822729, 31.713753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072181, 0.353478, 0.932654,
		0.101195, 0.932863, -0.345726,
		-0.992245, 0.069425, -0.103105,
		40.756245, 28.843557, 31.682821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251938, 29.399973, 32.077076>,  <41.450813, 28.794958, 31.754995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251938, 29.399973, 32.077076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.923378, 29.171843, 32.074955>,  <40.726242, 29.034966, 32.073681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.923378, 29.171843, 32.074955>,  <41.251938, 29.399973, 32.077076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923378, 29.171843, 32.074955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096533, 0.129858, 0.986822,
		-0.562120, 0.811090, -0.161721,
		-0.821403, -0.570324, -0.005301,
		40.676956, 29.000746, 32.073364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831516, 29.797752, 32.446152>,  <41.251938, 29.399973, 32.077076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831516, 29.797752, 32.446152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633049, 29.451885, 32.477562>,  <40.513969, 29.244366, 32.496407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633049, 29.451885, 32.477562>,  <40.831516, 29.797752, 32.446152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633049, 29.451885, 32.477562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178238, 0.189957, 0.965478,
		-0.849732, 0.465048, -0.248368,
		-0.496172, -0.864666, 0.078523,
		40.484196, 29.192486, 32.501118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079811, 29.915712, 32.768383>,  <40.831516, 29.797752, 32.446152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079811, 29.915712, 32.768383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151237, 29.527296, 32.831875>,  <40.194096, 29.294247, 32.869972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151237, 29.527296, 32.831875>,  <40.079811, 29.915712, 32.768383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151237, 29.527296, 32.831875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114276, 0.139767, 0.983568,
		-0.977269, -0.193775, -0.086009,
		0.178569, -0.971039, 0.158734,
		40.204807, 29.235985, 32.879494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462524, 29.637156, 33.142952>,  <40.079811, 29.915712, 32.768383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462524, 29.637156, 33.142952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778671, 29.398777, 33.199760>,  <39.968357, 29.255749, 33.233845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778671, 29.398777, 33.199760>,  <39.462524, 29.637156, 33.142952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778671, 29.398777, 33.199760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167533, 0.012744, 0.985784,
		-0.589287, -0.802921, -0.089768,
		0.790363, -0.595949, 0.142025,
		40.015781, 29.219992, 33.242367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221714, 29.065893, 33.586315>,  <39.462524, 29.637156, 33.142952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221714, 29.065893, 33.586315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613277, 29.111031, 33.654449>,  <39.848213, 29.138113, 33.695328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613277, 29.111031, 33.654449>,  <39.221714, 29.065893, 33.586315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613277, 29.111031, 33.654449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155540, -0.129034, 0.979366,
		0.132492, -0.985199, -0.108761,
		0.978904, 0.112841, 0.170334,
		39.906948, 29.144882, 33.705551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475288, 28.541756, 34.115742>,  <39.221714, 29.065893, 33.586315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475288, 28.541756, 34.115742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784679, 28.794044, 34.090691>,  <39.970314, 28.945417, 34.075661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784679, 28.794044, 34.090691>,  <39.475288, 28.541756, 34.115742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784679, 28.794044, 34.090691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044626, 0.044365, 0.998018,
		0.632252, -0.774738, 0.006168,
		0.773476, 0.630724, -0.062624,
		40.016724, 28.983261, 34.071903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943707, 28.348310, 34.693287>,  <39.475288, 28.541756, 34.115742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943707, 28.348310, 34.693287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061508, 28.721998, 34.612789>,  <40.132191, 28.946211, 34.564491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061508, 28.721998, 34.612789>,  <39.943707, 28.348310, 34.693287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061508, 28.721998, 34.612789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201114, 0.145280, 0.968735,
		0.934249, -0.325769, -0.145099,
		0.294503, 0.934221, -0.201245,
		40.149860, 29.002264, 34.552414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470581, 28.433384, 35.214111>,  <39.943707, 28.348310, 34.693287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470581, 28.433384, 35.214111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.364529, 28.804260, 35.108265>,  <40.300900, 29.026787, 35.044758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.364529, 28.804260, 35.108265>,  <40.470581, 28.433384, 35.214111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364529, 28.804260, 35.108265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058632, 0.289431, 0.955402,
		0.962429, 0.237790, -0.131099,
		-0.265129, 0.927192, -0.264615,
		40.284988, 29.082418, 35.028881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.194134, 30.361095, 30.447760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.983475, 30.530581, 30.152977>,  <41.857079, 30.632271, 29.976107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.983475, 30.530581, 30.152977>,  <42.194134, 30.361095, 30.447760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983475, 30.530581, 30.152977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416676, -0.626973, -0.658245,
		-0.740960, -0.653737, 0.153644,
		-0.526650, 0.423713, -0.736958,
		41.825478, 30.657694, 29.931890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926670, 29.791904, 30.105404>,  <42.194134, 30.361095, 30.447760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926670, 29.791904, 30.105404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936623, 30.111069, 29.864498>,  <41.942596, 30.302567, 29.719955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936623, 30.111069, 29.864498>,  <41.926670, 29.791904, 30.105404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936623, 30.111069, 29.864498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445835, -0.548080, -0.707701,
		-0.894769, -0.250898, -0.369375,
		0.024886, 0.797909, -0.602264,
		41.944088, 30.350441, 29.683819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685066, 29.588945, 29.346096>,  <41.926670, 29.791904, 30.105404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685066, 29.588945, 29.346096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894962, 29.927174, 29.306787>,  <42.020901, 30.130110, 29.283201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894962, 29.927174, 29.306787>,  <41.685066, 29.588945, 29.346096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894962, 29.927174, 29.306787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579092, -0.439198, -0.686846,
		-0.623937, 0.303509, -0.720129,
		0.524743, 0.845569, -0.098272,
		42.052383, 30.180845, 29.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776585, 29.615112, 28.641869>,  <41.685066, 29.588945, 29.346096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776585, 29.615112, 28.641869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012520, 29.920145, 28.748117>,  <42.154083, 30.103165, 28.811867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012520, 29.920145, 28.748117>,  <41.776585, 29.615112, 28.641869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012520, 29.920145, 28.748117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664437, -0.271383, -0.696329,
		-0.458922, 0.587214, -0.666761,
		0.589842, 0.762582, 0.265623,
		42.189472, 30.148920, 28.827805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901722, 30.059591, 28.071226>,  <41.776585, 29.615112, 28.641869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901722, 30.059591, 28.071226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208897, 30.097446, 28.324623>,  <42.393204, 30.120159, 28.476662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208897, 30.097446, 28.324623>,  <41.901722, 30.059591, 28.071226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208897, 30.097446, 28.324623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634029, -0.252788, -0.730825,
		0.090974, 0.962882, -0.254131,
		0.767940, 0.094640, 0.633492,
		42.439278, 30.125839, 28.514671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249706, 30.602156, 27.722893>,  <41.901722, 30.059591, 28.071226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249706, 30.602156, 27.722893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.506676, 30.433718, 27.979010>,  <42.660858, 30.332655, 28.132679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.506676, 30.433718, 27.979010>,  <42.249706, 30.602156, 27.722893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506676, 30.433718, 27.979010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669527, -0.098113, -0.736280,
		0.372864, 0.901695, 0.218905,
		0.642422, -0.421095, 0.640292,
		42.699402, 30.307390, 28.171097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916946, 30.837200, 27.411949>,  <42.249706, 30.602156, 27.722893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916946, 30.837200, 27.411949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009613, 30.518837, 27.635687>,  <43.065212, 30.327820, 27.769930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009613, 30.518837, 27.635687>,  <42.916946, 30.837200, 27.411949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009613, 30.518837, 27.635687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749552, -0.220467, -0.624152,
		0.620084, 0.563850, 0.545499,
		0.231664, -0.795907, 0.559343,
		43.079113, 30.280066, 27.803490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628105, 30.926937, 27.385277>,  <42.916946, 30.837200, 27.411949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628105, 30.926937, 27.385277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573196, 30.545895, 27.493868>,  <43.540253, 30.317270, 27.559023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573196, 30.545895, 27.493868>,  <43.628105, 30.926937, 27.385277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573196, 30.545895, 27.493868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661903, -0.292115, -0.690328,
		0.736913, 0.084929, 0.670631,
		-0.137272, -0.952605, 0.271478,
		43.532013, 30.260113, 27.575312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222031, 30.802382, 27.581486>,  <43.628105, 30.926937, 27.385277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222031, 30.802382, 27.581486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035255, 30.457703, 27.502037>,  <43.923191, 30.250896, 27.454369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035255, 30.457703, 27.502037>,  <44.222031, 30.802382, 27.581486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035255, 30.457703, 27.502037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781789, -0.297300, -0.548105,
		0.413250, -0.411210, 0.812484,
		-0.466938, -0.861695, -0.198620,
		43.895176, 30.199194, 27.442451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717712, 30.130356, 27.604519>,  <44.222031, 30.802382, 27.581486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717712, 30.130356, 27.604519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.416630, 30.024883, 27.363218>,  <44.235981, 29.961599, 27.218439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.416630, 30.024883, 27.363218>,  <44.717712, 30.130356, 27.604519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416630, 30.024883, 27.363218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658243, -0.318823, -0.681959,
		-0.012509, -0.910397, 0.413546,
		-0.752702, -0.263683, -0.603250,
		44.190819, 29.945778, 27.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003010, 29.530500, 27.308723>,  <44.717712, 30.130356, 27.604519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003010, 29.530500, 27.308723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.700825, 29.631321, 27.066818>,  <44.519512, 29.691814, 26.921675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.700825, 29.631321, 27.066818>,  <45.003010, 29.530500, 27.308723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700825, 29.631321, 27.066818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484144, -0.407161, -0.774483,
		-0.441447, -0.877889, 0.185567,
		-0.755466, 0.252052, -0.604765,
		44.474186, 29.706936, 26.885389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823971, 28.983234, 26.910299>,  <45.003010, 29.530500, 27.308723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823971, 28.983234, 26.910299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.713169, 29.301838, 26.695324>,  <44.646687, 29.493000, 26.566338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.713169, 29.301838, 26.695324>,  <44.823971, 28.983234, 26.910299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713169, 29.301838, 26.695324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637730, -0.265974, -0.722882,
		-0.718727, -0.542985, -0.434280,
		-0.277006, 0.796508, -0.537440,
		44.630066, 29.540791, 26.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636688, 28.760283, 26.312872>,  <44.823971, 28.983234, 26.910299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636688, 28.760283, 26.312872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.751629, 29.141411, 26.273745>,  <44.820591, 29.370087, 26.250269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.751629, 29.141411, 26.273745>,  <44.636688, 28.760283, 26.312872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751629, 29.141411, 26.273745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765826, -0.289883, -0.574003,
		-0.575276, 0.090027, -0.812990,
		0.287347, 0.952819, -0.097817,
		44.837833, 29.427256, 26.244400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048954, 28.372978, 26.046406>,  <44.636688, 28.760283, 26.312872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048954, 28.372978, 26.046406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.978165, 28.598345, 25.723608>,  <43.935692, 28.733564, 25.529928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.978165, 28.598345, 25.723608>,  <44.048954, 28.372978, 26.046406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978165, 28.598345, 25.723608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616708, 0.702492, 0.355214,
		0.767042, -0.434819, -0.471784,
		-0.176971, 0.563416, -0.806997,
		43.925072, 28.767370, 25.481508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979969, 28.088686, 25.291887>,  <44.048954, 28.372978, 26.046406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979969, 28.088686, 25.291887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.696800, 27.825584, 25.188961>,  <43.526901, 27.667725, 25.127205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.696800, 27.825584, 25.188961>,  <43.979969, 28.088686, 25.291887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696800, 27.825584, 25.188961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402563, 0.076409, 0.912198,
		-0.580339, 0.749348, -0.318879,
		-0.707919, -0.657753, -0.257316,
		43.484425, 27.628258, 25.111767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240120, 28.453497, 25.384249>,  <43.979969, 28.088686, 25.291887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240120, 28.453497, 25.384249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.222622, 28.053881, 25.384285>,  <43.212124, 27.814110, 25.384306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.222622, 28.053881, 25.384285>,  <43.240120, 28.453497, 25.384249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222622, 28.053881, 25.384285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563768, 0.024759, 0.825562,
		-0.824774, 0.036064, -0.564312,
		-0.043745, -0.999043, 0.000089,
		43.209499, 27.754168, 25.384312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674038, 28.374969, 25.513151>,  <43.240120, 28.453497, 25.384249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674038, 28.374969, 25.513151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790001, 28.005596, 25.613728>,  <42.859577, 27.783972, 25.674072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790001, 28.005596, 25.613728>,  <42.674038, 28.374969, 25.513151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790001, 28.005596, 25.613728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819815, -0.104055, 0.563095,
		-0.493818, -0.369380, -0.787212,
		0.289909, -0.923435, 0.251439,
		42.876972, 27.728565, 25.689159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060646, 27.940977, 25.485065>,  <42.674038, 28.374969, 25.513151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060646, 27.940977, 25.485065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.330956, 27.806183, 25.747293>,  <42.493141, 27.725306, 25.904631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.330956, 27.806183, 25.747293>,  <42.060646, 27.940977, 25.485065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330956, 27.806183, 25.747293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708587, -0.051976, 0.703707,
		-0.203066, -0.940073, -0.273909,
		0.675773, -0.336987, 0.655569,
		42.533688, 27.705088, 25.943964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684914, 27.414425, 25.821932>,  <42.060646, 27.940977, 25.485065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684914, 27.414425, 25.821932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993690, 27.525187, 26.050819>,  <42.178955, 27.591644, 26.188152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993690, 27.525187, 26.050819>,  <41.684914, 27.414425, 25.821932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993690, 27.525187, 26.050819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558172, -0.135540, 0.818580,
		0.304227, -0.951290, 0.049932,
		0.771939, 0.276905, 0.572218,
		42.225273, 27.608257, 26.222485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711533, 26.926863, 26.420670>,  <41.684914, 27.414425, 25.821932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711533, 26.926863, 26.420670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941944, 27.231232, 26.540125>,  <42.080193, 27.413853, 26.611799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941944, 27.231232, 26.540125>,  <41.711533, 26.926863, 26.420670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941944, 27.231232, 26.540125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490137, 0.029140, 0.871158,
		0.654180, -0.648190, 0.389741,
		0.576033, 0.760921, 0.298639,
		42.114754, 27.459507, 26.629717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008118, 26.730616, 27.108324>,  <41.711533, 26.926863, 26.420670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008118, 26.730616, 27.108324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020138, 27.130054, 27.090895>,  <42.027348, 27.369719, 27.080437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020138, 27.130054, 27.090895>,  <42.008118, 26.730616, 27.108324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020138, 27.130054, 27.090895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442779, 0.052380, 0.895100,
		0.896127, -0.007602, 0.443732,
		0.030048, 0.998598, -0.043573,
		42.029152, 27.429634, 27.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203362, 26.899797, 27.796913>,  <42.008118, 26.730616, 27.108324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203362, 26.899797, 27.796913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.071396, 27.242767, 27.638937>,  <41.992214, 27.448549, 27.544151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.071396, 27.242767, 27.638937>,  <42.203362, 26.899797, 27.796913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071396, 27.242767, 27.638937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401963, 0.250946, 0.880597,
		0.854154, 0.449276, 0.261862,
		-0.329918, 0.857425, -0.394939,
		41.972420, 27.499994, 27.520454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515331, 27.512602, 28.244373>,  <42.203362, 26.899797, 27.796913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515331, 27.512602, 28.244373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.182743, 27.630669, 28.056101>,  <41.983192, 27.701509, 27.943138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.182743, 27.630669, 28.056101>,  <42.515331, 27.512602, 28.244373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182743, 27.630669, 28.056101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393676, 0.284783, 0.874024,
		0.392024, 0.912017, -0.120588,
		-0.831467, 0.295166, -0.470681,
		41.933304, 27.719219, 27.914896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401142, 28.195852, 28.469177>,  <42.515331, 27.512602, 28.244373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401142, 28.195852, 28.469177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050575, 28.072289, 28.321411>,  <41.840237, 27.998150, 28.232752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050575, 28.072289, 28.321411>,  <42.401142, 28.195852, 28.469177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050575, 28.072289, 28.321411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459107, 0.304539, 0.834552,
		-0.145298, 0.901017, -0.408725,
		-0.876418, -0.308908, -0.369414,
		41.787651, 27.979616, 28.210587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956436, 28.637930, 28.753246>,  <42.401142, 28.195852, 28.469177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956436, 28.637930, 28.753246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701630, 28.372299, 28.596680>,  <41.548744, 28.212921, 28.502739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701630, 28.372299, 28.596680>,  <41.956436, 28.637930, 28.753246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701630, 28.372299, 28.596680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647479, 0.185412, 0.739184,
		-0.418301, 0.724310, -0.548087,
		-0.637020, -0.664077, -0.391418,
		41.510525, 28.173077, 28.479254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387573, 29.017649, 28.526279>,  <41.956436, 28.637930, 28.753246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387573, 29.017649, 28.526279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.293724, 28.640139, 28.619434>,  <41.237415, 28.413631, 28.675327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.293724, 28.640139, 28.619434>,  <41.387573, 29.017649, 28.526279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293724, 28.640139, 28.619434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606809, 0.329362, 0.723398,
		-0.759430, 0.028411, -0.649969,
		-0.234627, -0.943776, 0.232887,
		41.223335, 28.357006, 28.689301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807903, 29.066257, 28.773720>,  <41.387573, 29.017649, 28.526279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807903, 29.066257, 28.773720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.864277, 28.693535, 28.907513>,  <40.898102, 28.469902, 28.987789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.864277, 28.693535, 28.907513>,  <40.807903, 29.066257, 28.773720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864277, 28.693535, 28.907513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430032, 0.246701, 0.868454,
		-0.891746, -0.266230, -0.365938,
		0.140932, -0.931805, 0.334482,
		40.906555, 28.413994, 29.007856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141064, 28.800829, 28.990309>,  <40.807903, 29.066257, 28.773720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141064, 28.800829, 28.990309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405983, 28.572279, 29.184172>,  <40.564934, 28.435150, 29.300489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405983, 28.572279, 29.184172>,  <40.141064, 28.800829, 28.990309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405983, 28.572279, 29.184172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377710, 0.304036, 0.874584,
		-0.647067, -0.762296, -0.014451,
		0.662298, -0.571373, 0.484659,
		40.604671, 28.400867, 29.329569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472469, 28.517239, 28.771204>,  <40.141064, 28.800829, 28.990309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472469, 28.517239, 28.771204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075600, 28.558378, 28.742907>,  <38.837479, 28.583061, 28.725927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075600, 28.558378, 28.742907>,  <39.472469, 28.517239, 28.771204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075600, 28.558378, 28.742907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042339, -0.255869, -0.965784,
		-0.117428, -0.961225, 0.249514,
		-0.992178, 0.102846, -0.070744,
		38.777946, 28.589231, 28.721684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326477, 27.981524, 28.347885>,  <39.472469, 28.517239, 28.771204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326477, 27.981524, 28.347885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996571, 28.207493, 28.337910>,  <38.798626, 28.343075, 28.331924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996571, 28.207493, 28.337910>,  <39.326477, 27.981524, 28.347885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996571, 28.207493, 28.337910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071316, -0.147666, -0.986463,
		-0.560959, -0.811822, 0.162078,
		-0.824766, 0.564924, -0.024939,
		38.749142, 28.376970, 28.330427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698750, 27.671501, 27.876657>,  <39.326477, 27.981524, 28.347885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698750, 27.671501, 27.876657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681889, 28.070192, 27.904251>,  <38.671772, 28.309406, 27.920807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681889, 28.070192, 27.904251>,  <38.698750, 27.671501, 27.876657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681889, 28.070192, 27.904251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057710, 0.071358, -0.995780,
		-0.997443, -0.037998, -0.060530,
		-0.042157, 0.996727, 0.068983,
		38.669243, 28.369211, 27.924946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348068, 27.768080, 27.299484>,  <38.698750, 27.671501, 27.876657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348068, 27.768080, 27.299484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466625, 28.136553, 27.400341>,  <38.537762, 28.357635, 27.460855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466625, 28.136553, 27.400341>,  <38.348068, 27.768080, 27.299484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466625, 28.136553, 27.400341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181271, 0.204949, -0.961840,
		-0.937705, 0.330790, -0.106238,
		0.296394, 0.921180, 0.252144,
		38.555542, 28.412907, 27.475985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912437, 28.293392, 26.934767>,  <38.348068, 27.768080, 27.299484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912437, 28.293392, 26.934767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289062, 28.401293, 27.015457>,  <38.515038, 28.466034, 27.063871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289062, 28.401293, 27.015457>,  <37.912437, 28.293392, 26.934767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289062, 28.401293, 27.015457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107628, 0.326546, -0.939034,
		-0.319180, 0.905870, 0.278431,
		0.941563, 0.269754, 0.201724,
		38.571533, 28.482220, 27.075974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102070, 28.504063, 26.262941>,  <37.912437, 28.293392, 26.934767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102070, 28.504063, 26.262941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446083, 28.552759, 26.461143>,  <38.652493, 28.581978, 26.580065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446083, 28.552759, 26.461143>,  <38.102070, 28.504063, 26.262941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446083, 28.552759, 26.461143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473344, 0.172215, -0.863879,
		-0.190503, 0.977508, 0.090485,
		0.860031, 0.121741, 0.495505,
		38.704094, 28.589281, 26.609795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491390, 29.069818, 26.016624>,  <38.102070, 28.504063, 26.262941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491390, 29.069818, 26.016624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767818, 28.861212, 26.216801>,  <38.933678, 28.736048, 26.336906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767818, 28.861212, 26.216801>,  <38.491390, 29.069818, 26.016624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767818, 28.861212, 26.216801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617511, 0.066181, -0.783773,
		0.375632, 0.850670, 0.367778,
		0.691072, -0.521517, 0.500438,
		38.975140, 28.704756, 26.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717491, 29.862770, 26.264273>,  <38.491390, 29.069818, 26.016624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717491, 29.862770, 26.264273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718185, 30.257469, 26.199368>,  <38.718601, 30.494287, 26.160425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718185, 30.257469, 26.199368>,  <38.717491, 29.862770, 26.264273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718185, 30.257469, 26.199368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518042, 0.139679, 0.843873,
		0.855353, 0.082591, 0.511419,
		0.001738, 0.986746, -0.162261,
		38.718708, 30.553493, 26.150690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846966, 30.232685, 26.972759>,  <38.717491, 29.862770, 26.264273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846966, 30.232685, 26.972759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.655315, 30.490149, 26.734047>,  <38.540325, 30.644627, 26.590820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.655315, 30.490149, 26.734047>,  <38.846966, 30.232685, 26.972759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655315, 30.490149, 26.734047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727690, 0.088908, 0.680120,
		0.490822, 0.760133, 0.425784,
		-0.479126, 0.643656, -0.596779,
		38.511578, 30.683245, 26.555014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567806, 30.847681, 27.342638>,  <38.846966, 30.232685, 26.972759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567806, 30.847681, 27.342638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347115, 30.902800, 27.013613>,  <38.214699, 30.935871, 26.816198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347115, 30.902800, 27.013613>,  <38.567806, 30.847681, 27.342638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347115, 30.902800, 27.013613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804766, 0.170984, 0.568434,
		0.218973, 0.975591, 0.016556,
		-0.551728, 0.137795, -0.822563,
		38.181595, 30.944138, 26.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367786, 31.494417, 27.331537>,  <38.567806, 30.847681, 27.342638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367786, 31.494417, 27.331537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102852, 31.269066, 27.133986>,  <37.943893, 31.133854, 27.015453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102852, 31.269066, 27.133986>,  <38.367786, 31.494417, 27.331537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102852, 31.269066, 27.133986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695998, 0.218678, 0.683935,
		-0.277314, 0.796732, -0.536949,
		-0.662332, -0.563380, -0.493881,
		37.904152, 31.100052, 26.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787899, 31.995037, 27.182026>,  <38.367786, 31.494417, 27.331537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787899, 31.995037, 27.182026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639824, 31.623861, 27.164637>,  <37.550980, 31.401155, 27.154203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639824, 31.623861, 27.164637>,  <37.787899, 31.995037, 27.182026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639824, 31.623861, 27.164637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696127, 0.246113, 0.674414,
		-0.615118, 0.279919, -0.737072,
		-0.370185, -0.927940, -0.043471,
		37.528767, 31.345480, 27.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142826, 32.015572, 27.112524>,  <37.787899, 31.995037, 27.182026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142826, 32.015572, 27.112524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143536, 31.641048, 27.252996>,  <37.143963, 31.416334, 27.337280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143536, 31.641048, 27.252996>,  <37.142826, 32.015572, 27.112524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143536, 31.641048, 27.252996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641722, 0.268265, 0.718489,
		-0.766935, -0.226636, -0.600372,
		0.001777, -0.936307, 0.351179,
		37.144070, 31.360157, 27.358351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438179, 31.813728, 27.260258>,  <37.142826, 32.015572, 27.112524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438179, 31.813728, 27.260258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679661, 31.597254, 27.494408>,  <36.824551, 31.467369, 27.634897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679661, 31.597254, 27.494408>,  <36.438179, 31.813728, 27.260258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679661, 31.597254, 27.494408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636313, 0.115240, 0.762775,
		-0.480260, -0.832970, -0.274793,
		0.603702, -0.541185, 0.585375,
		36.860771, 31.434898, 27.670021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.381813, 31.484539, 25.018742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.602741, 31.267172, 25.271610>,  <42.735298, 31.136751, 25.423332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.602741, 31.267172, 25.271610>,  <42.381813, 31.484539, 25.018742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602741, 31.267172, 25.271610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492593, 0.399037, 0.773383,
		-0.672531, -0.738556, -0.047289,
		0.552317, -0.543419, 0.632172,
		42.768436, 31.104147, 25.461262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919437, 31.307528, 25.474825>,  <42.381813, 31.484539, 25.018742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919437, 31.307528, 25.474825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261684, 31.244471, 25.672031>,  <42.467033, 31.206636, 25.790356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261684, 31.244471, 25.672031>,  <41.919437, 31.307528, 25.474825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261684, 31.244471, 25.672031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415025, 0.360241, 0.835452,
		-0.309306, -0.919443, 0.242805,
		0.855619, -0.157640, 0.493017,
		42.518372, 31.197178, 25.819937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670311, 31.167974, 26.102175>,  <41.919437, 31.307528, 25.474825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670311, 31.167974, 26.102175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058086, 31.230347, 26.177944>,  <42.290752, 31.267771, 26.223406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058086, 31.230347, 26.177944>,  <41.670311, 31.167974, 26.102175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058086, 31.230347, 26.177944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243187, 0.508462, 0.826031,
		0.032489, -0.846849, 0.530841,
		0.969435, 0.155930, 0.189423,
		42.348915, 31.277126, 26.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636108, 31.247440, 26.776377>,  <41.670311, 31.167974, 26.102175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636108, 31.247440, 26.776377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.982620, 31.426327, 26.687330>,  <42.190529, 31.533659, 26.633904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.982620, 31.426327, 26.687330>,  <41.636108, 31.247440, 26.776377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982620, 31.426327, 26.687330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105253, 0.599014, 0.793791,
		0.488344, -0.664215, 0.565985,
		0.866280, 0.447215, -0.222614,
		42.242504, 31.560492, 26.620546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102619, 31.225273, 27.332249>,  <41.636108, 31.247440, 26.776377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102619, 31.225273, 27.332249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193871, 31.538340, 27.100595>,  <42.248619, 31.726179, 26.961603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193871, 31.538340, 27.100595>,  <42.102619, 31.225273, 27.332249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193871, 31.538340, 27.100595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107359, 0.611411, 0.783997,
		0.967694, -0.116675, 0.223505,
		0.228127, 0.782664, -0.579133,
		42.262310, 31.773138, 26.926855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171265, 31.688768, 27.800398>,  <42.102619, 31.225273, 27.332249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171265, 31.688768, 27.800398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.226879, 31.916370, 27.476200>,  <42.260250, 32.052933, 27.281681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.226879, 31.916370, 27.476200>,  <42.171265, 31.688768, 27.800398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226879, 31.916370, 27.476200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028698, 0.815784, 0.577645,
		0.989871, -0.103575, 0.097096,
		0.139039, 0.569007, -0.810493,
		42.268593, 32.087074, 27.233051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700214, 32.117706, 28.012470>,  <42.171265, 31.688768, 27.800398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700214, 32.117706, 28.012470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459251, 32.268730, 27.731173>,  <42.314674, 32.359344, 27.562395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459251, 32.268730, 27.731173>,  <42.700214, 32.117706, 28.012470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459251, 32.268730, 27.731173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256364, 0.742848, 0.618429,
		0.755897, 0.552834, -0.350706,
		-0.602410, 0.377560, -0.703243,
		42.278530, 32.382000, 27.520199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817673, 32.912830, 27.943115>,  <42.700214, 32.117706, 28.012470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817673, 32.912830, 27.943115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.452301, 32.835289, 27.799967>,  <42.233078, 32.788765, 27.714077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.452301, 32.835289, 27.799967>,  <42.817673, 32.912830, 27.943115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452301, 32.835289, 27.799967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370666, 0.759383, 0.534736,
		0.168101, 0.621094, -0.765496,
		-0.913427, -0.193854, -0.357871,
		42.178272, 32.777134, 27.692606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614372, 33.509232, 27.587435>,  <42.817673, 32.912830, 27.943115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614372, 33.509232, 27.587435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.272964, 33.325462, 27.685764>,  <42.068119, 33.215199, 27.744762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.272964, 33.325462, 27.685764>,  <42.614372, 33.509232, 27.587435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272964, 33.325462, 27.685764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323632, 0.837168, 0.440921,
		-0.408365, 0.296780, -0.863226,
		-0.853522, -0.459425, 0.245823,
		42.016907, 33.187634, 27.759512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154354, 33.991898, 27.344223>,  <42.614372, 33.509232, 27.587435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154354, 33.991898, 27.344223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.946095, 33.762577, 27.597286>,  <41.821140, 33.624985, 27.749125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.946095, 33.762577, 27.597286>,  <42.154354, 33.991898, 27.344223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946095, 33.762577, 27.597286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376104, 0.819250, 0.432868,
		-0.766467, -0.012573, -0.642161,
		-0.520648, -0.573298, 0.632657,
		41.789902, 33.590588, 27.787083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454319, 34.290340, 27.438217>,  <42.154354, 33.991898, 27.344223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454319, 34.290340, 27.438217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461773, 34.041866, 27.751595>,  <41.466244, 33.892780, 27.939621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461773, 34.041866, 27.751595>,  <41.454319, 34.290340, 27.438217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461773, 34.041866, 27.751595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431490, 0.701855, 0.566758,
		-0.901925, -0.348610, -0.254955,
		0.018636, -0.621184, 0.783443,
		41.467365, 33.855511, 27.986628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789597, 34.335720, 27.691908>,  <41.454319, 34.290340, 27.438217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789597, 34.335720, 27.691908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029640, 34.223755, 27.991646>,  <41.173668, 34.156578, 28.171488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029640, 34.223755, 27.991646>,  <40.789597, 34.335720, 27.691908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029640, 34.223755, 27.991646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256407, 0.820038, 0.511657,
		-0.757709, -0.499189, 0.420343,
		0.600110, -0.279908, 0.749346,
		41.209675, 34.139782, 28.216450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025066, 33.834435, 27.806063>,  <40.789597, 34.335720, 27.691908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025066, 33.834435, 27.806063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654163, 33.882126, 27.664093>,  <39.431622, 33.910740, 27.578911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654163, 33.882126, 27.664093>,  <40.025066, 33.834435, 27.806063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654163, 33.882126, 27.664093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274895, -0.426793, -0.861557,
		-0.254201, -0.896455, 0.362973,
		-0.927262, 0.119229, -0.354923,
		39.375984, 33.917896, 27.557615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920506, 33.367699, 27.292116>,  <40.025066, 33.834435, 27.806063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920506, 33.367699, 27.292116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.614819, 33.610565, 27.205103>,  <39.431408, 33.756287, 27.152895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.614819, 33.610565, 27.205103>,  <39.920506, 33.367699, 27.292116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614819, 33.610565, 27.205103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142424, -0.170085, -0.975083,
		-0.629037, -0.776157, 0.043507,
		-0.764217, 0.607167, -0.217533,
		39.385555, 33.792717, 27.139843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481647, 33.064373, 26.686678>,  <39.920506, 33.367699, 27.292116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481647, 33.064373, 26.686678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419357, 33.458050, 26.720427>,  <39.381985, 33.694256, 26.740677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419357, 33.458050, 26.720427>,  <39.481647, 33.064373, 26.686678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419357, 33.458050, 26.720427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180515, 0.112330, -0.977137,
		-0.971166, -0.136935, -0.195154,
		-0.155725, 0.984191, 0.084373,
		39.372639, 33.753307, 26.745739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013149, 33.239052, 26.077658>,  <39.481647, 33.064373, 26.686678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013149, 33.239052, 26.077658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186424, 33.580177, 26.194309>,  <39.290390, 33.784855, 26.264299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186424, 33.580177, 26.194309>,  <39.013149, 33.239052, 26.077658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186424, 33.580177, 26.194309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151287, 0.250171, -0.956309,
		-0.888514, 0.458385, -0.020648,
		0.433192, 0.852818, 0.291628,
		39.316383, 33.836021, 26.281797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580799, 33.750614, 25.731922>,  <39.013149, 33.239052, 26.077658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580799, 33.750614, 25.731922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.934097, 33.898594, 25.847174>,  <39.146076, 33.987381, 25.916325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.934097, 33.898594, 25.847174>,  <38.580799, 33.750614, 25.731922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934097, 33.898594, 25.847174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209042, 0.239380, -0.948155,
		-0.419740, 0.897684, 0.134097,
		0.883244, 0.369947, 0.288131,
		39.199070, 34.009579, 25.933613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620716, 34.355812, 25.339939>,  <38.580799, 33.750614, 25.731922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620716, 34.355812, 25.339939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996212, 34.266613, 25.445044>,  <39.221508, 34.213093, 25.508106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996212, 34.266613, 25.445044>,  <38.620716, 34.355812, 25.339939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996212, 34.266613, 25.445044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283450, 0.065902, -0.956720,
		0.196031, 0.972589, 0.125073,
		0.938737, -0.222999, 0.262762,
		39.277832, 34.199715, 25.523872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104004, 34.635780, 24.893183>,  <38.620716, 34.355812, 25.339939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104004, 34.635780, 24.893183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360893, 34.373219, 25.051514>,  <39.515026, 34.215683, 25.146513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360893, 34.373219, 25.051514>,  <39.104004, 34.635780, 24.893183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360893, 34.373219, 25.051514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395745, -0.158306, -0.904613,
		0.656453, 0.737613, 0.158101,
		0.642226, -0.656404, 0.395827,
		39.553562, 34.176296, 25.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794899, 34.763042, 24.649632>,  <39.104004, 34.635780, 24.893183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794899, 34.763042, 24.649632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.784740, 34.384281, 24.777838>,  <39.778645, 34.157024, 24.854761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.784740, 34.384281, 24.777838>,  <39.794899, 34.763042, 24.649632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784740, 34.384281, 24.777838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443590, -0.298002, -0.845235,
		0.895870, 0.120709, 0.427606,
		-0.025400, -0.946902, 0.320517,
		39.777119, 34.100212, 24.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384617, 34.574661, 24.650213>,  <39.794899, 34.763042, 24.649632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384617, 34.574661, 24.650213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.199657, 34.220840, 24.625702>,  <40.088680, 34.008549, 24.610994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.199657, 34.220840, 24.625702>,  <40.384617, 34.574661, 24.650213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199657, 34.220840, 24.625702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635197, -0.282243, -0.718932,
		0.618637, -0.371358, 0.692374,
		-0.462399, -0.884552, -0.061279,
		40.060936, 33.955475, 24.607319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901184, 34.152336, 24.574356>,  <40.384617, 34.574661, 24.650213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901184, 34.152336, 24.574356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585655, 33.963829, 24.416540>,  <40.396339, 33.850723, 24.321852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585655, 33.963829, 24.416540>,  <40.901184, 34.152336, 24.574356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585655, 33.963829, 24.416540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603044, -0.469451, -0.644945,
		0.118728, -0.746672, 0.654512,
		-0.788823, -0.471272, -0.394539,
		40.349007, 33.822449, 24.298178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191013, 33.502274, 24.412840>,  <40.901184, 34.152336, 24.574356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191013, 33.502274, 24.412840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845810, 33.502708, 24.210764>,  <40.638687, 33.502968, 24.089520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845810, 33.502708, 24.210764>,  <41.191013, 33.502274, 24.412840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845810, 33.502708, 24.210764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462187, -0.402034, -0.790412,
		-0.203959, -0.915624, 0.346459,
		-0.863009, 0.001083, -0.505188,
		40.586906, 33.503033, 24.059208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134842, 32.742977, 24.149435>,  <41.191013, 33.502274, 24.412840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134842, 32.742977, 24.149435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.923630, 32.993294, 23.919802>,  <40.796902, 33.143482, 23.782022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.923630, 32.993294, 23.919802>,  <41.134842, 32.742977, 24.149435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923630, 32.993294, 23.919802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401153, -0.412031, -0.818112,
		-0.748507, -0.662281, -0.033474,
		-0.528027, 0.625791, -0.574084,
		40.765221, 33.181030, 23.747576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761856, 32.508961, 24.313696>,  <41.134842, 32.742977, 24.149435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761856, 32.508961, 24.313696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126827, 32.672482, 24.306185>,  <42.345810, 32.770596, 24.301678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126827, 32.672482, 24.306185>,  <41.761856, 32.508961, 24.313696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126827, 32.672482, 24.306185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026771, 0.013833, -0.999546,
		-0.408359, 0.912517, 0.023566,
		0.912429, 0.408804, -0.018780,
		42.400555, 32.795124, 24.300550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730404, 31.991648, 24.887480>,  <41.761856, 32.508961, 24.313696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730404, 31.991648, 24.887480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445728, 31.945065, 24.610369>,  <41.274925, 31.917114, 24.444101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445728, 31.945065, 24.610369>,  <41.730404, 31.991648, 24.887480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445728, 31.945065, 24.610369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583926, -0.450190, 0.675544,
		-0.390555, 0.885306, 0.252390,
		-0.711686, -0.116460, -0.692777,
		41.232224, 31.910126, 24.402536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089088, 32.259518, 25.183672>,  <41.730404, 31.991648, 24.887480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089088, 32.259518, 25.183672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984497, 32.010315, 24.888784>,  <40.921741, 31.860794, 24.711851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984497, 32.010315, 24.888784>,  <41.089088, 32.259518, 25.183672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984497, 32.010315, 24.888784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734761, -0.366814, 0.570592,
		-0.625903, 0.690880, -0.361844,
		-0.261481, -0.623003, -0.737221,
		40.906052, 31.823414, 24.667618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404774, 32.341335, 25.084805>,  <41.089088, 32.259518, 25.183672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404774, 32.341335, 25.084805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479744, 31.989168, 24.910572>,  <40.524727, 31.777868, 24.806032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479744, 31.989168, 24.910572>,  <40.404774, 32.341335, 25.084805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479744, 31.989168, 24.910572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810062, -0.389352, 0.438411,
		-0.555580, 0.270676, -0.786171,
		0.187430, -0.880420, -0.435581,
		40.535973, 31.725042, 24.779898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783295, 32.178490, 24.820868>,  <40.404774, 32.341335, 25.084805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783295, 32.178490, 24.820868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 31.837757, 24.882763>,  <40.103577, 31.633318, 24.919901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 31.837757, 24.882763>,  <39.783295, 32.178490, 24.820868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983471, 31.837757, 24.882763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799199, -0.385795, 0.460915,
		-0.332922, -0.354332, -0.873849,
		0.500443, -0.851828, 0.154742,
		40.133602, 31.582209, 24.929184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465591, 31.633884, 24.415586>,  <39.783295, 32.178490, 24.820868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465591, 31.633884, 24.415586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659912, 31.487446, 24.733070>,  <39.776505, 31.399584, 24.923561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659912, 31.487446, 24.733070>,  <39.465591, 31.633884, 24.415586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659912, 31.487446, 24.733070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853081, -0.396384, 0.339311,
		0.190393, -0.841935, -0.504873,
		0.485801, -0.366095, 0.793708,
		39.805653, 31.377617, 24.971182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032799, 31.151434, 24.585388>,  <39.465591, 31.633884, 24.415586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032799, 31.151434, 24.585388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269119, 31.128349, 24.907288>,  <39.410912, 31.114498, 25.100428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269119, 31.128349, 24.907288>,  <39.032799, 31.151434, 24.585388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269119, 31.128349, 24.907288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768774, -0.342929, 0.539802,
		0.244820, -0.937587, -0.246969,
		0.590804, -0.057709, 0.804749,
		39.446362, 31.111036, 25.148712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909565, 30.467266, 24.912708>,  <39.032799, 31.151434, 24.585388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909565, 30.467266, 24.912708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070339, 30.662489, 25.222610>,  <39.166805, 30.779623, 25.408552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070339, 30.662489, 25.222610>,  <38.909565, 30.467266, 24.912708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070339, 30.662489, 25.222610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735581, -0.331788, 0.590625,
		0.545314, -0.807289, 0.225648,
		0.401938, 0.488059, 0.774755,
		39.190922, 30.808907, 25.455036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974571, 29.977537, 25.538578>,  <38.909565, 30.467266, 24.912708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974571, 29.977537, 25.538578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973301, 30.356144, 25.667633>,  <38.972538, 30.583307, 25.745066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973301, 30.356144, 25.667633>,  <38.974571, 29.977537, 25.538578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973301, 30.356144, 25.667633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636926, -0.250643, 0.729043,
		0.770918, -0.203183, 0.603657,
		-0.003174, 0.946517, 0.322638,
		38.972347, 30.640099, 25.764425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192169, 29.307247, 25.724182>,  <38.974571, 29.977537, 25.538578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192169, 29.307247, 25.724182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274986, 28.960083, 25.904787>,  <39.324677, 28.751785, 26.013151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274986, 28.960083, 25.904787>,  <39.192169, 29.307247, 25.724182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274986, 28.960083, 25.904787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689004, -0.198291, -0.697104,
		0.694555, 0.455426, 0.556939,
		0.207044, -0.867910, 0.451515,
		39.337101, 28.699711, 26.040241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831314, 29.338140, 25.798742>,  <39.192169, 29.307247, 25.724182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831314, 29.338140, 25.798742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732090, 28.950645, 25.800161>,  <39.672554, 28.718149, 25.801014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732090, 28.950645, 25.800161>,  <39.831314, 29.338140, 25.798742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732090, 28.950645, 25.800161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683696, -0.177665, -0.707810,
		0.686313, -0.173154, 0.706394,
		-0.248062, -0.968738, 0.003549,
		39.657673, 28.660025, 25.801226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440258, 28.925100, 25.766373>,  <39.831314, 29.338140, 25.798742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440258, 28.925100, 25.766373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.177067, 28.641088, 25.666037>,  <40.019154, 28.470680, 25.605835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.177067, 28.641088, 25.666037>,  <40.440258, 28.925100, 25.766373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177067, 28.641088, 25.666037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655953, -0.376813, -0.654016,
		0.369852, -0.594869, 0.713682,
		-0.657978, -0.710031, -0.250841,
		39.979675, 28.428080, 25.590784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744087, 28.347765, 25.861572>,  <40.440258, 28.925100, 25.766373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744087, 28.347765, 25.861572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455627, 28.262232, 25.597994>,  <40.282551, 28.210911, 25.439846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455627, 28.262232, 25.597994>,  <40.744087, 28.347765, 25.861572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455627, 28.262232, 25.597994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690936, -0.291258, -0.661647,
		-0.050440, -0.932439, 0.357789,
		-0.721154, -0.213836, -0.658947,
		40.239281, 28.198082, 25.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949036, 27.775202, 25.535122>,  <40.744087, 28.347765, 25.861572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949036, 27.775202, 25.535122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681221, 27.922941, 25.277346>,  <40.520531, 28.011585, 25.122681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681221, 27.922941, 25.277346>,  <40.949036, 27.775202, 25.535122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681221, 27.922941, 25.277346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592215, -0.258234, -0.763281,
		-0.448334, -0.892690, -0.045838,
		-0.669536, 0.369350, -0.644439,
		40.480362, 28.033747, 25.084013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735481, 27.230677, 25.062130>,  <40.949036, 27.775202, 25.535122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735481, 27.230677, 25.062130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.663918, 27.578665, 24.878326>,  <40.620979, 27.787457, 24.768044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.663918, 27.578665, 24.878326>,  <40.735481, 27.230677, 25.062130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663918, 27.578665, 24.878326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602453, -0.272376, -0.750241,
		-0.777845, -0.411055, -0.475385,
		-0.178907, 0.869968, -0.459508,
		40.610245, 27.839655, 24.740475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680943, 27.010931, 24.361153>,  <40.735481, 27.230677, 25.062130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680943, 27.010931, 24.361153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758991, 27.403078, 24.372530>,  <40.805820, 27.638367, 24.379356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758991, 27.403078, 24.372530>,  <40.680943, 27.010931, 24.361153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758991, 27.403078, 24.372530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603992, -0.097262, -0.791033,
		-0.772735, 0.171530, -0.611112,
		0.195124, 0.980366, 0.028445,
		40.817528, 27.697187, 24.381063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055378, 27.098341, 23.697887>,  <40.680943, 27.010931, 24.361153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055378, 27.098341, 23.697887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066502, 27.473427, 23.836403>,  <41.073177, 27.698479, 23.919512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066502, 27.473427, 23.836403>,  <41.055378, 27.098341, 23.697887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066502, 27.473427, 23.836403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650130, 0.246179, -0.718837,
		-0.759314, 0.245125, -0.602790,
		0.027811, 0.937715, 0.346290,
		41.074844, 27.754742, 23.940290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863461, 27.549084, 23.083752>,  <41.055378, 27.098341, 23.697887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863461, 27.549084, 23.083752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117783, 27.704247, 23.350668>,  <41.270378, 27.797344, 23.510818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117783, 27.704247, 23.350668>,  <40.863461, 27.549084, 23.083752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117783, 27.704247, 23.350668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701786, 0.069374, -0.709002,
		-0.321318, 0.919085, -0.228118,
		0.635807, 0.387906, 0.667292,
		41.308525, 27.820618, 23.550856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.548500, 30.637043, 38.439964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944187, 30.664404, 38.491772>,  <36.181599, 30.680820, 38.522854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944187, 30.664404, 38.491772>,  <35.548500, 30.637043, 38.439964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944187, 30.664404, 38.491772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135037, -0.083435, -0.987322,
		-0.056729, 0.994163, -0.091772,
		0.989215, 0.068403, 0.129516,
		36.240952, 30.684925, 38.530628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743874, 31.089487, 37.896984>,  <35.548500, 30.637043, 38.439964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743874, 31.089487, 37.896984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107357, 30.963755, 38.006859>,  <36.325447, 30.888315, 38.072784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107357, 30.963755, 38.006859>,  <35.743874, 31.089487, 37.896984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107357, 30.963755, 38.006859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290103, 0.002383, -0.956992,
		0.300159, 0.949310, 0.093355,
		0.908705, -0.314332, 0.274682,
		36.379967, 30.869455, 38.089264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158642, 31.548576, 37.536598>,  <35.743874, 31.089487, 37.896984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158642, 31.548576, 37.536598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375095, 31.224293, 37.625973>,  <36.504967, 31.029722, 37.679596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375095, 31.224293, 37.625973>,  <36.158642, 31.548576, 37.536598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375095, 31.224293, 37.625973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357109, -0.019015, -0.933869,
		0.761345, 0.585140, 0.279222,
		0.541135, -0.810709, 0.223436,
		36.537437, 30.981079, 37.693005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671665, 31.618662, 37.093159>,  <36.158642, 31.548576, 37.536598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671665, 31.618662, 37.093159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709442, 31.239458, 37.214722>,  <36.732109, 31.011936, 37.287659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709442, 31.239458, 37.214722>,  <36.671665, 31.618662, 37.093159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709442, 31.239458, 37.214722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229256, -0.276357, -0.933311,
		0.968773, 0.157821, 0.191236,
		0.094447, -0.948008, 0.303909,
		36.737778, 30.955055, 37.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311813, 31.383329, 36.886257>,  <36.671665, 31.618662, 37.093159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311813, 31.383329, 36.886257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092613, 31.055578, 36.953568>,  <36.961094, 30.858927, 36.993954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092613, 31.055578, 36.953568>,  <37.311813, 31.383329, 36.886257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092613, 31.055578, 36.953568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273033, -0.365368, -0.889921,
		0.790664, -0.441731, 0.423938,
		-0.547999, -0.819378, 0.168277,
		36.928215, 30.809765, 37.004051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862354, 30.784988, 36.702026>,  <37.311813, 31.383329, 36.886257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862354, 30.784988, 36.702026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477219, 30.685534, 36.659859>,  <37.246136, 30.625860, 36.634556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477219, 30.685534, 36.659859>,  <37.862354, 30.784988, 36.702026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477219, 30.685534, 36.659859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179847, -0.299113, -0.937116,
		0.201468, -0.921255, 0.332715,
		-0.962843, -0.248637, -0.105423,
		37.188366, 30.610943, 36.628231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893547, 30.223188, 36.242798>,  <37.862354, 30.784988, 36.702026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893547, 30.223188, 36.242798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508648, 30.327002, 36.209988>,  <37.277710, 30.389290, 36.190300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508648, 30.327002, 36.209988>,  <37.893547, 30.223188, 36.242798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508648, 30.327002, 36.209988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013469, -0.346388, -0.937995,
		-0.271849, -0.901477, 0.336805,
		-0.962246, 0.259530, -0.082023,
		37.219975, 30.404861, 36.185379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583221, 29.697557, 35.886730>,  <37.893547, 30.223188, 36.242798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583221, 29.697557, 35.886730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314064, 29.990288, 35.843571>,  <37.152569, 30.165926, 35.817673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314064, 29.990288, 35.843571>,  <37.583221, 29.697557, 35.886730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314064, 29.990288, 35.843571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150901, -0.278594, -0.948480,
		-0.724184, -0.621944, 0.297898,
		-0.672894, 0.731827, -0.107902,
		37.112194, 30.209835, 35.811199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005203, 29.369349, 35.526852>,  <37.583221, 29.697557, 35.886730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005203, 29.369349, 35.526852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017952, 29.762032, 35.451771>,  <37.025600, 29.997641, 35.406723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017952, 29.762032, 35.451771>,  <37.005203, 29.369349, 35.526852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017952, 29.762032, 35.451771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099412, -0.189985, -0.976741,
		-0.994536, 0.012475, -0.103650,
		0.031876, 0.981708, -0.187707,
		37.027515, 30.056543, 35.395458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541149, 29.450480, 34.971340>,  <37.005203, 29.369349, 35.526852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541149, 29.450480, 34.971340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733753, 29.800753, 34.956802>,  <36.849316, 30.010918, 34.948078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733753, 29.800753, 34.956802>,  <36.541149, 29.450480, 34.971340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733753, 29.800753, 34.956802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000111, -0.041528, -0.999137,
		-0.876438, 0.481095, -0.020093,
		0.481515, 0.875684, -0.036343,
		36.878208, 30.063457, 34.945900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148296, 29.962629, 34.631695>,  <36.541149, 29.450480, 34.971340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148296, 29.962629, 34.631695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530174, 30.081261, 34.621868>,  <36.759300, 30.152439, 34.615971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530174, 30.081261, 34.621868>,  <36.148296, 29.962629, 34.631695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530174, 30.081261, 34.621868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047965, -0.234824, -0.970854,
		-0.293701, 0.925689, -0.238411,
		0.954693, 0.296576, -0.024567,
		36.816582, 30.170233, 34.614498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163097, 30.193361, 33.963181>,  <36.148296, 29.962629, 34.631695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163097, 30.193361, 33.963181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549858, 30.147686, 34.054459>,  <36.781914, 30.120281, 34.109226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549858, 30.147686, 34.054459>,  <36.163097, 30.193361, 33.963181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549858, 30.147686, 34.054459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193118, -0.257036, -0.946910,
		0.166779, 0.959632, -0.226475,
		0.966897, -0.114188, 0.228191,
		36.839928, 30.113430, 34.122917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016388, 30.921854, 34.081882>,  <36.163097, 30.193361, 33.963181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016388, 30.921854, 34.081882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991360, 31.291443, 33.930958>,  <35.976341, 31.513197, 33.840405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991360, 31.291443, 33.930958>,  <36.016388, 30.921854, 34.081882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991360, 31.291443, 33.930958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163076, 0.363504, 0.917208,
		0.984627, 0.118920, 0.127933,
		-0.062571, 0.923971, -0.377309,
		35.972588, 31.568634, 33.817764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408096, 31.417967, 34.561378>,  <36.016388, 30.921854, 34.081882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408096, 31.417967, 34.561378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130939, 31.627108, 34.362774>,  <35.964645, 31.752592, 34.243610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130939, 31.627108, 34.362774>,  <36.408096, 31.417967, 34.561378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130939, 31.627108, 34.362774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205109, 0.517230, 0.830905,
		0.691251, 0.677568, -0.251144,
		-0.692894, 0.522852, -0.496512,
		35.923073, 31.783964, 34.213821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484535, 32.233440, 34.673237>,  <36.408096, 31.417967, 34.561378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484535, 32.233440, 34.673237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110115, 32.174587, 34.545383>,  <35.885464, 32.139275, 34.468670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110115, 32.174587, 34.545383>,  <36.484535, 32.233440, 34.673237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110115, 32.174587, 34.545383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341102, 0.602470, 0.721581,
		0.086398, 0.784462, -0.614129,
		-0.936047, -0.147137, -0.319634,
		35.829300, 32.130447, 34.449493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296516, 32.838665, 34.748947>,  <36.484535, 32.233440, 34.673237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296516, 32.838665, 34.748947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956757, 32.634769, 34.694256>,  <35.752903, 32.512432, 34.661442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956757, 32.634769, 34.694256>,  <36.296516, 32.838665, 34.748947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956757, 32.634769, 34.694256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486498, 0.655830, 0.577240,
		-0.204569, 0.556824, -0.805045,
		-0.849395, -0.509738, -0.136731,
		35.701939, 32.481850, 34.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821960, 33.266918, 34.494804>,  <36.296516, 32.838665, 34.748947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821960, 33.266918, 34.494804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603153, 32.969513, 34.648663>,  <35.471867, 32.791069, 34.740978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603153, 32.969513, 34.648663>,  <35.821960, 33.266918, 34.494804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603153, 32.969513, 34.648663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588113, 0.668322, 0.455486,
		-0.595726, 0.022948, -0.802860,
		-0.547022, -0.743518, 0.384641,
		35.439045, 32.746456, 34.764053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016003, 33.270840, 34.317841>,  <35.821960, 33.266918, 34.494804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016003, 33.270840, 34.317841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086952, 33.080360, 34.662346>,  <35.129520, 32.966072, 34.869049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086952, 33.080360, 34.662346>,  <35.016003, 33.270840, 34.317841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086952, 33.080360, 34.662346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685994, 0.567673, 0.455148,
		-0.705656, -0.671554, -0.225978,
		0.177375, -0.476197, 0.861263,
		35.140163, 32.937500, 34.920727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370693, 33.173798, 34.575203>,  <35.016003, 33.270840, 34.317841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370693, 33.173798, 34.575203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591072, 33.103809, 34.901600>,  <34.723301, 33.061817, 35.097439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591072, 33.103809, 34.901600>,  <34.370693, 33.173798, 34.575203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591072, 33.103809, 34.901600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678688, 0.475042, 0.560105,
		-0.485633, -0.862392, 0.142972,
		0.550948, -0.174972, 0.815991,
		34.756355, 33.051319, 35.146397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866844, 32.944145, 35.083389>,  <34.370693, 33.173798, 34.575203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866844, 32.944145, 35.083389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186695, 33.066662, 35.289989>,  <34.378605, 33.140171, 35.413952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186695, 33.066662, 35.289989>,  <33.866844, 32.944145, 35.083389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186695, 33.066662, 35.289989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593673, 0.532502, 0.603319,
		-0.090245, -0.789066, 0.607644,
		0.799630, 0.306295, 0.516503,
		34.426582, 33.158550, 35.444939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707077, 32.866482, 35.742916>,  <33.866844, 32.944145, 35.083389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707077, 32.866482, 35.742916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015675, 33.117889, 35.782421>,  <34.200832, 33.268734, 35.806126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015675, 33.117889, 35.782421>,  <33.707077, 32.866482, 35.742916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015675, 33.117889, 35.782421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472420, 0.461937, 0.750622,
		0.426159, -0.625759, 0.653310,
		0.771497, 0.628521, 0.098763,
		34.247124, 33.306446, 35.812050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782684, 32.873344, 36.408863>,  <33.707077, 32.866482, 35.742916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782684, 32.873344, 36.408863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980137, 33.193928, 36.273815>,  <34.098610, 33.386280, 36.192787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980137, 33.193928, 36.273815>,  <33.782684, 32.873344, 36.408863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980137, 33.193928, 36.273815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492781, 0.577646, 0.650763,
		0.716585, -0.154866, 0.680090,
		0.493632, 0.801462, -0.337617,
		34.128227, 33.434368, 36.172531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015171, 33.267689, 36.977306>,  <33.782684, 32.873344, 36.408863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015171, 33.267689, 36.977306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980663, 33.494736, 36.649803>,  <33.959957, 33.630962, 36.453300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980663, 33.494736, 36.649803>,  <34.015171, 33.267689, 36.977306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980663, 33.494736, 36.649803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612937, 0.617641, 0.492775,
		0.785407, 0.544362, 0.294627,
		-0.086274, 0.567617, -0.818760,
		33.954781, 33.665020, 36.404175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094318, 33.969028, 37.232037>,  <34.015171, 33.267689, 36.977306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094318, 33.969028, 37.232037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911625, 34.023205, 36.880344>,  <33.802010, 34.055710, 36.669331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911625, 34.023205, 36.880344>,  <34.094318, 33.969028, 37.232037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911625, 34.023205, 36.880344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675139, 0.590818, 0.441726,
		0.579292, 0.795356, -0.178410,
		-0.456738, 0.135437, -0.879231,
		33.774605, 34.063835, 36.616573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932476, 34.623917, 37.231251>,  <34.094318, 33.969028, 37.232037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932476, 34.623917, 37.231251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706230, 34.501125, 36.925087>,  <33.570484, 34.427448, 36.741390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706230, 34.501125, 36.925087>,  <33.932476, 34.623917, 37.231251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706230, 34.501125, 36.925087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663022, 0.721193, 0.200702,
		0.490393, 0.621000, -0.611451,
		-0.565611, -0.306983, -0.765406,
		33.536549, 34.409031, 36.695465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847569, 35.172230, 36.714073>,  <33.932476, 34.623917, 37.231251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847569, 35.172230, 36.714073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543846, 34.914864, 36.675137>,  <33.361614, 34.760445, 36.651775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543846, 34.914864, 36.675137>,  <33.847569, 35.172230, 36.714073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543846, 34.914864, 36.675137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647616, 0.732535, 0.209730,
		-0.063638, 0.222287, -0.972902,
		-0.759305, -0.643414, -0.097339,
		33.316055, 34.721840, 36.645935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434761, 35.507202, 36.320480>,  <33.847569, 35.172230, 36.714073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434761, 35.507202, 36.320480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181511, 35.259789, 36.506626>,  <33.029560, 35.111340, 36.618313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181511, 35.259789, 36.506626>,  <33.434761, 35.507202, 36.320480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181511, 35.259789, 36.506626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682769, 0.729499, 0.040715,
		-0.364668, -0.291960, -0.884181,
		-0.633122, -0.618539, 0.465367,
		32.991573, 35.074226, 36.646236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128246, 36.259583, 36.581322>,  <33.434761, 35.507202, 36.320480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128246, 36.259583, 36.581322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454407, 36.474705, 36.495636>,  <33.650105, 36.603779, 36.444225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454407, 36.474705, 36.495636>,  <33.128246, 36.259583, 36.581322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454407, 36.474705, 36.495636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090787, -0.246658, -0.964841,
		-0.571734, 0.806180, -0.152299,
		0.815401, 0.537805, -0.214213,
		33.699028, 36.636047, 36.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095520, 36.594982, 35.922527>,  <33.128246, 36.259583, 36.581322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095520, 36.594982, 35.922527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490860, 36.615719, 35.979767>,  <33.728065, 36.628162, 36.014111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490860, 36.615719, 35.979767>,  <33.095520, 36.594982, 35.922527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490860, 36.615719, 35.979767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142962, 0.006270, -0.989708,
		-0.052207, 0.998635, -0.001215,
		0.988350, 0.051843, 0.143094,
		33.787365, 36.631271, 36.022694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316463, 37.211056, 35.464355>,  <33.095520, 36.594982, 35.922527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316463, 37.211056, 35.464355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625740, 36.971775, 35.548576>,  <33.811306, 36.828205, 35.599110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625740, 36.971775, 35.548576>,  <33.316463, 37.211056, 35.464355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625740, 36.971775, 35.548576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356236, 0.135007, -0.924591,
		0.524665, 0.789891, 0.317487,
		0.773190, -0.598201, 0.210554,
		33.857697, 36.792316, 35.611744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907948, 37.512566, 35.183350>,  <33.316463, 37.211056, 35.464355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907948, 37.512566, 35.183350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011581, 37.127365, 35.213017>,  <34.073761, 36.896244, 35.230816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011581, 37.127365, 35.213017>,  <33.907948, 37.512566, 35.183350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011581, 37.127365, 35.213017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511105, 0.071535, -0.856537,
		0.819542, 0.259822, 0.510729,
		0.259082, -0.963003, 0.074171,
		34.089306, 36.838463, 35.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570755, 37.500095, 34.852734>,  <33.907948, 37.512566, 35.183350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570755, 37.500095, 34.852734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428982, 37.126072, 34.850147>,  <34.343918, 36.901657, 34.848595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428982, 37.126072, 34.850147>,  <34.570755, 37.500095, 34.852734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428982, 37.126072, 34.850147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459204, -0.168029, -0.872295,
		0.814561, -0.312138, 0.488938,
		-0.354432, -0.935059, -0.006465,
		34.322651, 36.845554, 34.848209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208260, 37.081066, 34.743244>,  <34.570755, 37.500095, 34.852734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208260, 37.081066, 34.743244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913525, 36.825966, 34.653488>,  <34.736683, 36.672905, 34.599632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913525, 36.825966, 34.653488>,  <35.208260, 37.081066, 34.743244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913525, 36.825966, 34.653488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459782, -0.229365, -0.857900,
		0.495657, -0.735301, 0.462229,
		-0.736834, -0.637749, -0.224392,
		34.692474, 36.634640, 34.586170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538425, 36.397404, 34.528206>,  <35.208260, 37.081066, 34.743244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538425, 36.397404, 34.528206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180557, 36.408096, 34.349838>,  <34.965836, 36.414513, 34.242817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180557, 36.408096, 34.349838>,  <35.538425, 36.397404, 34.528206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180557, 36.408096, 34.349838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425850, -0.250511, -0.869422,
		-0.134946, -0.967744, 0.212744,
		-0.894674, 0.026729, -0.445920,
		34.912155, 36.416115, 34.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487007, 35.759502, 34.123219>,  <35.538425, 36.397404, 34.528206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487007, 35.759502, 34.123219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225075, 36.029625, 33.987476>,  <35.067917, 36.191696, 33.906033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225075, 36.029625, 33.987476>,  <35.487007, 35.759502, 34.123219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225075, 36.029625, 33.987476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215230, -0.263795, -0.940259,
		-0.724479, -0.688752, 0.027396,
		-0.654832, 0.675302, -0.339355,
		35.028625, 36.232216, 33.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187691, 35.359104, 33.685314>,  <35.487007, 35.759502, 34.123219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187691, 35.359104, 33.685314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109730, 35.734009, 33.569691>,  <35.062954, 35.958950, 33.500317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109730, 35.734009, 33.569691>,  <35.187691, 35.359104, 33.685314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109730, 35.734009, 33.569691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322290, -0.217143, -0.921400,
		-0.926359, -0.272747, -0.259747,
		-0.194906, 0.937261, -0.289056,
		35.051258, 36.015186, 33.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866486, 35.249065, 32.985424>,  <35.187691, 35.359104, 33.685314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866486, 35.249065, 32.985424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968014, 35.635944, 32.981228>,  <35.028931, 35.868073, 32.978710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968014, 35.635944, 32.981228>,  <34.866486, 35.249065, 32.985424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968014, 35.635944, 32.981228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269161, -0.081043, -0.959679,
		-0.929046, 0.240766, -0.280901,
		0.253824, 0.967194, -0.010487,
		35.044159, 35.926102, 32.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632538, 35.511322, 32.234959>,  <34.866486, 35.249065, 32.985424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632538, 35.511322, 32.234959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917343, 35.730335, 32.410801>,  <35.088226, 35.861744, 32.516304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917343, 35.730335, 32.410801>,  <34.632538, 35.511322, 32.234959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917343, 35.730335, 32.410801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531176, -0.010545, -0.847196,
		-0.459233, 0.836717, -0.298345,
		0.712009, 0.547535, 0.439602,
		35.130947, 35.894596, 32.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766552, 36.046047, 31.711758>,  <34.632538, 35.511322, 32.234959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766552, 36.046047, 31.711758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087162, 36.092300, 31.946426>,  <35.279530, 36.120052, 32.087227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087162, 36.092300, 31.946426>,  <34.766552, 36.046047, 31.711758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087162, 36.092300, 31.946426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594703, -0.051872, -0.802270,
		-0.062339, 0.991936, -0.110346,
		0.801525, 0.115635, 0.586674,
		35.327618, 36.126991, 32.122429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169903, 36.547146, 31.410330>,  <34.766552, 36.046047, 31.711758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169903, 36.547146, 31.410330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411819, 36.332138, 31.645378>,  <35.556969, 36.203133, 31.786407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411819, 36.332138, 31.645378>,  <35.169903, 36.547146, 31.410330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411819, 36.332138, 31.645378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585631, -0.199848, -0.785555,
		0.539684, 0.819229, 0.193919,
		0.604795, -0.537516, 0.587621,
		35.593258, 36.170883, 31.821665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824768, 36.782291, 31.290003>,  <35.169903, 36.547146, 31.410330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824768, 36.782291, 31.290003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893772, 36.433636, 31.473515>,  <35.935173, 36.224442, 31.583622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893772, 36.433636, 31.473515>,  <35.824768, 36.782291, 31.290003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893772, 36.433636, 31.473515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769328, -0.171633, -0.615367,
		0.615122, 0.459110, 0.640970,
		0.172510, -0.871642, 0.458781,
		35.945526, 36.172142, 31.611149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416538, 36.794273, 31.448856>,  <35.824768, 36.782291, 31.290003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416538, 36.794273, 31.448856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339764, 36.402084, 31.431726>,  <36.293701, 36.166771, 31.421448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339764, 36.402084, 31.431726>,  <36.416538, 36.794273, 31.448856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339764, 36.402084, 31.431726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792238, -0.129034, -0.596414,
		0.579242, -0.148400, 0.801534,
		-0.191933, -0.980473, -0.042826,
		36.282185, 36.107941, 31.418879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163490, 36.466526, 31.458160>,  <36.416538, 36.794273, 31.448856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163490, 36.466526, 31.458160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909657, 36.189362, 31.321239>,  <36.757355, 36.023064, 31.239086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909657, 36.189362, 31.321239>,  <37.163490, 36.466526, 31.458160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909657, 36.189362, 31.321239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709904, -0.347521, -0.612589,
		0.305515, -0.631742, 0.712435,
		-0.634584, -0.692915, -0.342303,
		36.719280, 35.981487, 31.218548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508335, 35.783787, 31.500923>,  <37.163490, 36.466526, 31.458160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508335, 35.783787, 31.500923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226528, 35.770027, 31.217381>,  <37.057446, 35.761772, 31.047255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226528, 35.770027, 31.217381>,  <37.508335, 35.783787, 31.500923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226528, 35.770027, 31.217381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641657, -0.457618, -0.615517,
		-0.303210, -0.888483, 0.344473,
		-0.704514, -0.034403, -0.708856,
		37.015175, 35.759708, 31.004725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693108, 35.242424, 31.074797>,  <37.508335, 35.783787, 31.500923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693108, 35.242424, 31.074797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399178, 35.341251, 30.822134>,  <37.222820, 35.400547, 30.670536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399178, 35.341251, 30.822134>,  <37.693108, 35.242424, 31.074797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399178, 35.341251, 30.822134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397982, -0.597051, -0.696521,
		-0.549217, -0.763209, 0.340401,
		-0.734827, 0.247068, -0.631654,
		37.178730, 35.415371, 30.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455452, 34.606636, 30.785118>,  <37.693108, 35.242424, 31.074797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455452, 34.606636, 30.785118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371948, 34.913544, 30.542559>,  <37.321846, 35.097687, 30.397022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371948, 34.913544, 30.542559>,  <37.455452, 34.606636, 30.785118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371948, 34.913544, 30.542559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282486, -0.546321, -0.788502,
		-0.936280, -0.335908, -0.102692,
		-0.208762, 0.767267, -0.606398,
		37.309319, 35.143723, 30.360640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990810, 34.318531, 30.363070>,  <37.455452, 34.606636, 30.785118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990810, 34.318531, 30.363070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152531, 34.631710, 30.173950>,  <37.249561, 34.819618, 30.060478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152531, 34.631710, 30.173950>,  <36.990810, 34.318531, 30.363070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152531, 34.631710, 30.173950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369208, -0.612649, -0.698818,
		-0.836797, 0.107968, -0.536761,
		0.404296, 0.782946, -0.472800,
		37.273819, 34.866592, 30.032110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830784, 34.215530, 29.616776>,  <36.990810, 34.318531, 30.363070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830784, 34.215530, 29.616776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137592, 34.469685, 29.652475>,  <37.321678, 34.622177, 29.673895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137592, 34.469685, 29.652475>,  <36.830784, 34.215530, 29.616776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137592, 34.469685, 29.652475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504661, -0.511520, -0.695460,
		-0.396233, 0.578472, -0.713001,
		0.767018, 0.635388, 0.089251,
		37.367699, 34.660301, 29.679251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950920, 34.485233, 28.910717>,  <36.830784, 34.215530, 29.616776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950920, 34.485233, 28.910717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293629, 34.543453, 29.108612>,  <37.499252, 34.578384, 29.227348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293629, 34.543453, 29.108612>,  <36.950920, 34.485233, 28.910717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293629, 34.543453, 29.108612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497423, -0.486393, -0.718326,
		0.136088, 0.861533, -0.489123,
		0.856768, 0.145545, 0.494738,
		37.550659, 34.587116, 29.257034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387039, 34.869099, 28.481239>,  <36.950920, 34.485233, 28.910717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387039, 34.869099, 28.481239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653206, 34.702721, 28.729179>,  <37.812904, 34.602894, 28.877943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653206, 34.702721, 28.729179>,  <37.387039, 34.869099, 28.481239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653206, 34.702721, 28.729179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549945, -0.288334, -0.783852,
		0.504761, 0.862471, 0.036883,
		0.665415, -0.415942, 0.619851,
		37.852829, 34.577938, 28.915134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935165, 35.113979, 28.255220>,  <37.387039, 34.869099, 28.481239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935165, 35.113979, 28.255220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044338, 34.786175, 28.456781>,  <38.109840, 34.589493, 28.577717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044338, 34.786175, 28.456781>,  <37.935165, 35.113979, 28.255220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044338, 34.786175, 28.456781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673019, -0.211627, -0.708703,
		0.687427, 0.532560, 0.493786,
		0.272929, -0.819508, 0.503901,
		38.126217, 34.540321, 28.607952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624130, 35.185226, 28.345652>,  <37.935165, 35.113979, 28.255220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624130, 35.185226, 28.345652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540775, 34.794773, 28.370113>,  <38.490761, 34.560501, 28.384790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540775, 34.794773, 28.370113>,  <38.624130, 35.185226, 28.345652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540775, 34.794773, 28.370113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767270, -0.201936, -0.608702,
		0.606523, -0.079928, 0.791038,
		-0.208391, -0.976132, 0.061153,
		38.478256, 34.501934, 28.388458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178799, 34.893456, 28.225206>,  <38.624130, 35.185226, 28.345652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178799, 34.893456, 28.225206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008091, 34.532578, 28.200195>,  <38.905666, 34.316051, 28.185188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008091, 34.532578, 28.200195>,  <39.178799, 34.893456, 28.225206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008091, 34.532578, 28.200195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658975, -0.262878, -0.704732,
		0.619368, -0.341965, 0.706713,
		-0.426773, -0.902194, -0.062528,
		38.880058, 34.261921, 28.181437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745815, 34.385033, 28.245317>,  <39.178799, 34.893456, 28.225206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745815, 34.385033, 28.245317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433449, 34.207554, 28.069450>,  <39.246029, 34.101067, 27.963930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433449, 34.207554, 28.069450>,  <39.745815, 34.385033, 28.245317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433449, 34.207554, 28.069450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589582, -0.291080, -0.753435,
		0.206319, -0.847587, 0.488905,
		-0.780913, -0.443698, -0.439667,
		39.199173, 34.074444, 27.937550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224911, 33.843632, 28.560850>,  <39.745815, 34.385033, 28.245317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224911, 33.843632, 28.560850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585995, 33.978966, 28.667158>,  <40.802647, 34.060165, 28.730944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585995, 33.978966, 28.667158>,  <40.224911, 33.843632, 28.560850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585995, 33.978966, 28.667158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412375, 0.504255, 0.758731,
		0.122690, -0.794515, 0.594720,
		0.902715, 0.338337, 0.265771,
		40.856808, 34.080467, 28.746889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403923, 33.704338, 29.202755>,  <40.224911, 33.843632, 28.560850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403923, 33.704338, 29.202755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.632610, 34.026787, 29.141695>,  <40.769821, 34.220257, 29.105059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.632610, 34.026787, 29.141695>,  <40.403923, 33.704338, 29.202755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632610, 34.026787, 29.141695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381127, 0.425708, 0.820680,
		0.726554, -0.411019, 0.550621,
		0.571719, 0.806124, -0.152650,
		40.804127, 34.268623, 29.095900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573727, 33.864315, 29.848333>,  <40.403923, 33.704338, 29.202755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573727, 33.864315, 29.848333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710693, 34.193035, 29.666174>,  <40.792873, 34.390266, 29.556877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710693, 34.193035, 29.666174>,  <40.573727, 33.864315, 29.848333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710693, 34.193035, 29.666174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273419, 0.550883, 0.788524,
		0.898884, -0.145489, 0.413328,
		0.342417, 0.821804, -0.455400,
		40.813419, 34.439575, 29.529554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029613, 34.207146, 30.315605>,  <40.573727, 33.864315, 29.848333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029613, 34.207146, 30.315605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876682, 34.462788, 30.048662>,  <40.784924, 34.616173, 29.888496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876682, 34.462788, 30.048662>,  <41.029613, 34.207146, 30.315605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876682, 34.462788, 30.048662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177316, 0.658062, 0.731788,
		0.906854, 0.398117, -0.138272,
		-0.382329, 0.639107, -0.667359,
		40.761982, 34.654518, 29.848455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251240, 34.925823, 30.584845>,  <41.029613, 34.207146, 30.315605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251240, 34.925823, 30.584845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.963951, 35.008251, 30.319004>,  <40.791576, 35.057709, 30.159500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.963951, 35.008251, 30.319004>,  <41.251240, 34.925823, 30.584845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963951, 35.008251, 30.319004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323729, 0.746505, 0.581316,
		0.615921, 0.632664, -0.469444,
		-0.718220, 0.206073, -0.664600,
		40.748486, 35.070072, 30.119623>
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
