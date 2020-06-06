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
	<24.108690, 34.561619, 34.933071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200340, 34.898403, 34.737682>,  <24.255329, 35.100471, 34.620449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200340, 34.898403, 34.737682>,  <24.108690, 34.561619, 34.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200340, 34.898403, 34.737682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973017, -0.212126, 0.090771,
		-0.027192, -0.496091, -0.867844,
		0.229124, 0.841959, -0.488474,
		24.269077, 35.150990, 34.591141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655722, 34.468369, 34.224575>,  <24.108690, 34.561619, 34.933071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655722, 34.468369, 34.224575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662464, 34.776703, 34.479298>,  <24.666510, 34.961704, 34.632130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662464, 34.776703, 34.479298>,  <24.655722, 34.468369, 34.224575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662464, 34.776703, 34.479298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955508, -0.200002, 0.216805,
		0.294485, 0.604818, -0.739915,
		0.016857, 0.770840, 0.636806,
		24.667521, 35.007954, 34.670338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011562, 35.213066, 34.046165>,  <24.655722, 34.468369, 34.224575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011562, 35.213066, 34.046165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041128, 35.069969, 34.418522>,  <25.058868, 34.984112, 34.641937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041128, 35.069969, 34.418522>,  <25.011562, 35.213066, 34.046165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041128, 35.069969, 34.418522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979673, -0.148503, -0.134859,
		0.186484, 0.921938, 0.339491,
		0.073917, -0.357740, 0.930891,
		25.063303, 34.962646, 34.697788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604664, 35.525211, 34.288517>,  <25.011562, 35.213066, 34.046165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604664, 35.525211, 34.288517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517700, 35.161217, 34.429745>,  <25.465523, 34.942822, 34.514481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517700, 35.161217, 34.429745>,  <25.604664, 35.525211, 34.288517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517700, 35.161217, 34.429745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872833, -0.343163, -0.346989,
		0.436916, 0.232733, 0.868873,
		-0.217409, -0.909986, 0.353071,
		25.452477, 34.888222, 34.535667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112982, 35.209942, 34.619484>,  <25.604664, 35.525211, 34.288517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112982, 35.209942, 34.619484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894987, 34.890976, 34.515858>,  <25.764191, 34.699596, 34.453682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894987, 34.890976, 34.515858>,  <26.112982, 35.209942, 34.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894987, 34.890976, 34.515858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795396, -0.393972, -0.460578,
		0.265205, -0.457072, 0.848971,
		-0.544988, -0.797415, -0.259070,
		25.731491, 34.651752, 34.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484341, 34.556511, 34.675011>,  <26.112982, 35.209942, 34.619484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484341, 34.556511, 34.675011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205029, 34.484653, 34.397846>,  <26.037441, 34.441540, 34.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205029, 34.484653, 34.397846>,  <26.484341, 34.556511, 34.675011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205029, 34.484653, 34.397846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703269, -0.352666, -0.617285,
		-0.133473, -0.918343, 0.372600,
		-0.698282, -0.179647, -0.692913,
		25.995544, 34.430759, 34.189972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812054, 34.065834, 34.449913>,  <26.484341, 34.556511, 34.675011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812054, 34.065834, 34.449913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541843, 34.141174, 34.164764>,  <26.379717, 34.186378, 33.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541843, 34.141174, 34.164764>,  <26.812054, 34.065834, 34.449913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541843, 34.141174, 34.164764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582860, -0.455739, -0.672738,
		-0.451589, -0.869959, 0.198089,
		-0.675531, 0.188343, -0.712871,
		26.339186, 34.197681, 33.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552420, 34.029270, 34.343941>,  <26.812054, 34.065834, 34.449913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552420, 34.029270, 34.343941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951033, 34.005947, 34.367683>,  <28.190201, 33.991955, 34.381927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951033, 34.005947, 34.367683>,  <27.552420, 34.029270, 34.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951033, 34.005947, 34.367683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066153, 0.987907, -0.140228,
		-0.050463, 0.143668, 0.988338,
		0.996533, -0.058305, 0.059357,
		28.249992, 33.988457, 34.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775549, 34.637451, 34.790432>,  <27.552420, 34.029270, 34.343941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775549, 34.637451, 34.790432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062813, 34.526546, 34.535130>,  <28.235172, 34.460003, 34.381947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062813, 34.526546, 34.535130>,  <27.775549, 34.637451, 34.790432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062813, 34.526546, 34.535130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087424, 0.945880, -0.312519,
		0.690363, 0.168640, 0.703533,
		0.718161, -0.277257, -0.638258,
		28.278261, 34.443371, 34.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206945, 35.033337, 35.027985>,  <27.775549, 34.637451, 34.790432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206945, 35.033337, 35.027985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346476, 34.921150, 34.670288>,  <28.430193, 34.853840, 34.455669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346476, 34.921150, 34.670288>,  <28.206945, 35.033337, 35.027985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346476, 34.921150, 34.670288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202536, 0.954184, -0.220257,
		0.915042, -0.104284, 0.389646,
		0.348824, -0.280462, -0.894239,
		28.451122, 34.837013, 34.402016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668381, 35.471165, 34.983719>,  <28.206945, 35.033337, 35.027985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668381, 35.471165, 34.983719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640411, 35.346111, 34.604801>,  <28.623631, 35.271080, 34.377449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640411, 35.346111, 34.604801>,  <28.668381, 35.471165, 34.983719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640411, 35.346111, 34.604801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226238, 0.919905, -0.320297,
		0.971559, -0.236710, 0.006407,
		-0.069923, -0.312637, -0.947296,
		28.619434, 35.252319, 34.320614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276924, 35.709263, 34.640511>,  <28.668381, 35.471165, 34.983719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276924, 35.709263, 34.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019104, 35.661678, 34.338409>,  <28.864412, 35.633125, 34.157150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019104, 35.661678, 34.338409>,  <29.276924, 35.709263, 34.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019104, 35.661678, 34.338409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366178, 0.819125, -0.441529,
		0.671171, -0.561144, -0.484405,
		-0.644549, -0.118963, -0.755251,
		28.825739, 35.625988, 34.111835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661465, 35.914375, 34.014702>,  <29.276924, 35.709263, 34.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661465, 35.914375, 34.014702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275251, 35.904140, 33.911095>,  <29.043524, 35.897999, 33.848930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275251, 35.904140, 33.911095>,  <29.661465, 35.914375, 34.014702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275251, 35.904140, 33.911095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093290, 0.895023, -0.436155,
		0.242987, -0.445286, -0.861788,
		-0.965533, -0.025584, -0.259020,
		28.985592, 35.896465, 33.833389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619532, 36.046715, 33.131229>,  <29.661465, 35.914375, 34.014702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619532, 36.046715, 33.131229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291826, 36.148724, 33.336662>,  <29.095203, 36.209930, 33.459923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291826, 36.148724, 33.336662>,  <29.619532, 36.046715, 33.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291826, 36.148724, 33.336662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026873, 0.877598, -0.478644,
		-0.572784, -0.405938, -0.712133,
		-0.819266, 0.255023, 0.513583,
		29.046047, 36.225231, 33.490738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200510, 36.367996, 32.589245>,  <29.619532, 36.046715, 33.131229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200510, 36.367996, 32.589245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037374, 36.501804, 32.929073>,  <28.939493, 36.582088, 33.132969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037374, 36.501804, 32.929073>,  <29.200510, 36.367996, 32.589245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037374, 36.501804, 32.929073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091980, 0.940787, -0.326281,
		-0.908409, -0.054928, -0.414459,
		-0.407840, 0.334519, 0.849567,
		28.915022, 36.602161, 33.183945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717604, 36.847015, 32.438515>,  <29.200510, 36.367996, 32.589245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717604, 36.847015, 32.438515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820944, 36.925724, 32.816833>,  <28.882948, 36.972950, 33.043823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820944, 36.925724, 32.816833>,  <28.717604, 36.847015, 32.438515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820944, 36.925724, 32.816833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197056, 0.947717, -0.251002,
		-0.945740, 0.251222, 0.206066,
		0.258350, 0.196776, 0.945798,
		28.898449, 36.984756, 33.100574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231203, 37.418739, 32.618919>,  <28.717604, 36.847015, 32.438515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231203, 37.418739, 32.618919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555016, 37.428444, 32.853550>,  <28.749302, 37.434265, 32.994328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555016, 37.428444, 32.853550>,  <28.231203, 37.418739, 32.618919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555016, 37.428444, 32.853550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041206, 0.994334, -0.097992,
		-0.585630, 0.103498, 0.803943,
		0.809530, 0.024259, 0.586577,
		28.797874, 37.435722, 33.029522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160351, 38.031239, 32.901611>,  <28.231203, 37.418739, 32.618919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160351, 38.031239, 32.901611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539507, 37.947060, 32.997288>,  <28.767000, 37.896553, 33.054691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539507, 37.947060, 32.997288>,  <28.160351, 38.031239, 32.901611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539507, 37.947060, 32.997288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245277, 0.961188, -0.126321,
		-0.203320, 0.178406, 0.962721,
		0.947892, -0.210450, 0.239188,
		28.823875, 37.883926, 33.069046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399649, 38.596642, 33.225815>,  <28.160351, 38.031239, 32.901611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399649, 38.596642, 33.225815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745340, 38.421703, 33.126350>,  <28.952755, 38.316742, 33.066673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745340, 38.421703, 33.126350>,  <28.399649, 38.596642, 33.225815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745340, 38.421703, 33.126350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372330, 0.888413, -0.268500,
		0.338340, 0.139462, 0.930632,
		0.864232, -0.437347, -0.248660,
		29.004610, 38.290501, 33.051754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961802, 38.876686, 33.585949>,  <28.399649, 38.596642, 33.225815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961802, 38.876686, 33.585949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137606, 38.718128, 33.263531>,  <29.243088, 38.622993, 33.070080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137606, 38.718128, 33.263531>,  <28.961802, 38.876686, 33.585949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137606, 38.718128, 33.263531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389645, 0.892669, -0.226538,
		0.809326, -0.214505, 0.546790,
		0.439509, -0.396397, -0.806041,
		29.269459, 38.599209, 33.021717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600075, 39.070545, 33.615818>,  <28.961802, 38.876686, 33.585949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600075, 39.070545, 33.615818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553556, 38.981613, 33.228615>,  <29.525646, 38.928253, 32.996292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553556, 38.981613, 33.228615>,  <29.600075, 39.070545, 33.615818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553556, 38.981613, 33.228615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283035, 0.926794, -0.246867,
		0.952033, -0.302691, -0.044856,
		-0.116296, -0.222330, -0.968011,
		29.518667, 38.914913, 32.938213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115408, 39.380276, 33.252377>,  <29.600075, 39.070545, 33.615818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115408, 39.380276, 33.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852316, 39.301346, 32.961597>,  <29.694460, 39.253986, 32.787132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852316, 39.301346, 32.961597>,  <30.115408, 39.380276, 33.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852316, 39.301346, 32.961597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275108, 0.835477, -0.475704,
		0.701216, -0.512874, -0.495234,
		-0.657732, -0.197328, -0.726945,
		29.654997, 39.242146, 32.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441757, 39.612625, 32.653927>,  <30.115408, 39.380276, 33.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441757, 39.612625, 32.653927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073992, 39.554970, 32.507553>,  <29.853333, 39.520378, 32.419731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073992, 39.554970, 32.507553>,  <30.441757, 39.612625, 32.653927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073992, 39.554970, 32.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208825, 0.609527, -0.764767,
		0.333276, -0.779552, -0.530308,
		-0.919412, -0.144136, -0.365931,
		29.798168, 39.511730, 32.397774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519840, 39.501156, 31.947689>,  <30.441757, 39.612625, 32.653927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519840, 39.501156, 31.947689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146812, 39.638535, 31.992165>,  <29.922997, 39.720963, 32.018848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146812, 39.638535, 31.992165>,  <30.519840, 39.501156, 31.947689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146812, 39.638535, 31.992165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179283, 0.707969, -0.683109,
		-0.313330, -0.617110, -0.721803,
		-0.932568, 0.343445, 0.111190,
		29.867043, 39.741570, 32.025520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250473, 39.624310, 31.233137>,  <30.519840, 39.501156, 31.947689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250473, 39.624310, 31.233137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047384, 39.837803, 31.503645>,  <29.925531, 39.965900, 31.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047384, 39.837803, 31.503645>,  <30.250473, 39.624310, 31.233137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047384, 39.837803, 31.503645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009833, 0.781332, -0.624038,
		-0.861464, -0.323488, -0.391452,
		-0.507723, 0.533737, 0.676270,
		29.895067, 39.997925, 31.706526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822119, 40.074814, 30.929857>,  <30.250473, 39.624310, 31.233137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822119, 40.074814, 30.929857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877373, 40.255638, 31.282349>,  <29.910524, 40.364132, 31.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877373, 40.255638, 31.282349>,  <29.822119, 40.074814, 30.929857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877373, 40.255638, 31.282349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177032, 0.864159, -0.471051,
		-0.974463, 0.221074, 0.039341,
		0.138134, 0.452058, 0.881228,
		29.918814, 40.391254, 31.546717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288494, 40.621735, 31.151495>,  <29.822119, 40.074814, 30.929857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288494, 40.621735, 31.151495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656265, 40.703976, 31.285585>,  <29.876928, 40.753319, 31.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656265, 40.703976, 31.285585>,  <29.288494, 40.621735, 31.151495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656265, 40.703976, 31.285585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080271, 0.736375, -0.671795,
		-0.384976, 0.644577, 0.660541,
		0.919429, 0.205602, 0.335227,
		29.932095, 40.765656, 31.386154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400591, 41.485321, 31.274399>,  <29.288494, 40.621735, 31.151495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400591, 41.485321, 31.274399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739555, 41.290775, 31.189220>,  <29.942934, 41.174049, 31.138113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739555, 41.290775, 31.189220>,  <29.400591, 41.485321, 31.274399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739555, 41.290775, 31.189220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205197, 0.669926, -0.713508,
		0.489680, 0.560939, 0.667503,
		0.847412, -0.486360, -0.212946,
		29.993778, 41.144867, 31.125336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965254, 41.917118, 31.304392>,  <29.400591, 41.485321, 31.274399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965254, 41.917118, 31.304392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089273, 41.650673, 31.033051>,  <30.163685, 41.490807, 30.870245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089273, 41.650673, 31.033051>,  <29.965254, 41.917118, 31.304392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089273, 41.650673, 31.033051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193663, 0.742805, -0.640886,
		0.930788, 0.067333, 0.359306,
		0.310047, -0.666113, -0.678354,
		30.182287, 41.450840, 30.829544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462786, 42.219357, 30.996349>,  <29.965254, 41.917118, 31.304392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462786, 42.219357, 30.996349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380760, 41.927414, 30.735502>,  <30.331545, 41.752247, 30.578993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380760, 41.927414, 30.735502>,  <30.462786, 42.219357, 30.996349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380760, 41.927414, 30.735502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242278, 0.607691, -0.756316,
		0.948289, -0.313085, 0.052214,
		-0.205062, -0.729856, -0.652120,
		30.319242, 41.708458, 30.539865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045565, 42.036617, 30.482697>,  <30.462786, 42.219357, 30.996349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045565, 42.036617, 30.482697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680529, 41.965424, 30.335455>,  <30.461508, 41.922707, 30.247110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680529, 41.965424, 30.335455>,  <31.045565, 42.036617, 30.482697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680529, 41.965424, 30.335455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181380, 0.630630, -0.754590,
		0.366444, -0.755398, -0.543224,
		-0.912589, -0.177985, -0.368105,
		30.406752, 41.912029, 30.225023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075920, 41.655548, 29.801609>,  <31.045565, 42.036617, 30.482697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075920, 41.655548, 29.801609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749380, 41.884087, 29.835398>,  <30.553455, 42.021210, 29.855671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749380, 41.884087, 29.835398>,  <31.075920, 41.655548, 29.801609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749380, 41.884087, 29.835398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354911, 0.611640, -0.707060,
		-0.455642, -0.547229, -0.702090,
		-0.816350, 0.571346, 0.084472,
		30.504475, 42.055489, 29.860739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571527, 41.721268, 29.154987>,  <31.075920, 41.655548, 29.801609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571527, 41.721268, 29.154987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573046, 42.061077, 29.366001>,  <30.573956, 42.264961, 29.492609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573046, 42.061077, 29.366001>,  <30.571527, 41.721268, 29.154987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573046, 42.061077, 29.366001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380890, 0.486545, -0.786255,
		-0.924613, 0.203915, -0.321729,
		0.003794, 0.849525, 0.527535,
		30.574184, 42.315933, 29.524261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005396, 41.067780, 29.156242>,  <30.571527, 41.721268, 29.154987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005396, 41.067780, 29.156242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367327, 41.200859, 29.049959>,  <31.584484, 41.280708, 28.986189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367327, 41.200859, 29.049959>,  <31.005396, 41.067780, 29.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367327, 41.200859, 29.049959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416780, -0.564431, 0.712539,
		0.087090, -0.755465, -0.649375,
		0.904826, 0.332702, -0.265707,
		31.638775, 41.300671, 28.970247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492197, 40.529419, 28.876028>,  <31.005396, 41.067780, 29.156242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492197, 40.529419, 28.876028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653067, 40.824303, 29.093201>,  <31.749588, 41.001232, 29.223505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653067, 40.824303, 29.093201>,  <31.492197, 40.529419, 28.876028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653067, 40.824303, 29.093201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352119, -0.671935, 0.651549,
		0.845144, -0.070859, -0.529821,
		0.402173, 0.737213, 0.542931,
		31.773718, 41.045467, 29.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285275, 40.437862, 28.957636>,  <31.492197, 40.529419, 28.876028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285275, 40.437862, 28.957636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122643, 40.653439, 29.252728>,  <32.025063, 40.782784, 29.429783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122643, 40.653439, 29.252728>,  <32.285275, 40.437862, 28.957636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122643, 40.653439, 29.252728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451522, -0.583444, 0.675071,
		0.794244, 0.607568, -0.006127,
		-0.406576, 0.538938, 0.737727,
		32.000671, 40.815121, 29.474045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806023, 40.456142, 29.454210>,  <32.285275, 40.437862, 28.957636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806023, 40.456142, 29.454210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472237, 40.557346, 29.650026>,  <32.271965, 40.618069, 29.767515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472237, 40.557346, 29.650026>,  <32.806023, 40.456142, 29.454210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472237, 40.557346, 29.650026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231440, -0.645304, 0.728024,
		0.500096, 0.720812, 0.479931,
		-0.834469, 0.253007, 0.489539,
		32.221897, 40.633247, 29.796888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980312, 40.544212, 30.125853>,  <32.806023, 40.456142, 29.454210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980312, 40.544212, 30.125853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590271, 40.455517, 30.125206>,  <32.356247, 40.402298, 30.124819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590271, 40.455517, 30.125206>,  <32.980312, 40.544212, 30.125853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590271, 40.455517, 30.125206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184917, -0.817151, 0.545958,
		-0.122382, 0.532067, 0.837811,
		-0.975104, -0.221741, -0.001617,
		32.297741, 40.388996, 30.124722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731102, 40.386524, 30.902534>,  <32.980312, 40.544212, 30.125853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731102, 40.386524, 30.902534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474453, 40.227505, 30.640152>,  <32.320465, 40.132095, 30.482723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474453, 40.227505, 30.640152>,  <32.731102, 40.386524, 30.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474453, 40.227505, 30.640152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033116, -0.868760, 0.494125,
		-0.766306, 0.295319, 0.570580,
		-0.641622, -0.397547, -0.655956,
		32.281967, 40.108242, 30.443365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305412, 39.985294, 31.318485>,  <32.731102, 40.386524, 30.902534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305412, 39.985294, 31.318485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239681, 39.831841, 30.954987>,  <32.200245, 39.739769, 30.736887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239681, 39.831841, 30.954987>,  <32.305412, 39.985294, 31.318485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239681, 39.831841, 30.954987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078398, -0.923435, 0.375661,
		-0.983286, -0.009514, 0.181820,
		-0.164325, -0.383636, -0.908747,
		32.190384, 39.716751, 30.682364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697515, 39.532833, 31.372993>,  <32.305412, 39.985294, 31.318485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697515, 39.532833, 31.372993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917347, 39.423645, 31.057159>,  <32.049248, 39.358131, 30.867659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917347, 39.423645, 31.057159>,  <31.697515, 39.532833, 31.372993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917347, 39.423645, 31.057159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120041, -0.909504, 0.397985,
		-0.826773, -0.313507, -0.467077,
		0.549579, -0.272975, -0.789587,
		32.082222, 39.341751, 30.820284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426626, 38.812767, 31.202267>,  <31.697515, 39.532833, 31.372993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426626, 38.812767, 31.202267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789345, 38.857086, 31.039568>,  <32.006977, 38.883678, 30.941948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789345, 38.857086, 31.039568>,  <31.426626, 38.812767, 31.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789345, 38.857086, 31.039568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230119, -0.938514, 0.257365,
		-0.353221, -0.326978, -0.876539,
		0.906796, 0.110801, -0.406747,
		32.061382, 38.890327, 30.917543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456253, 38.254845, 30.868814>,  <31.426626, 38.812767, 31.202267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456253, 38.254845, 30.868814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848604, 38.332619, 30.872301>,  <32.084015, 38.379284, 30.874393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848604, 38.332619, 30.872301>,  <31.456253, 38.254845, 30.868814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848604, 38.332619, 30.872301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182730, -0.935383, 0.302767,
		0.067025, -0.295383, -0.953025,
		0.980876, 0.194440, 0.008719,
		32.142868, 38.390949, 30.874916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751186, 37.752113, 30.470945>,  <31.456253, 38.254845, 30.868814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751186, 37.752113, 30.470945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015759, 37.902527, 30.730516>,  <32.174503, 37.992775, 30.886259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015759, 37.902527, 30.730516>,  <31.751186, 37.752113, 30.470945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015759, 37.902527, 30.730516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107692, -0.903882, 0.414005,
		0.742234, -0.203952, -0.638351,
		0.661431, 0.376034, 0.648928,
		32.214188, 38.015339, 30.925196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372910, 37.387711, 30.425243>,  <31.751186, 37.752113, 30.470945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372910, 37.387711, 30.425243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363964, 37.537807, 30.795906>,  <32.358597, 37.627865, 31.018305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363964, 37.537807, 30.795906>,  <32.372910, 37.387711, 30.425243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363964, 37.537807, 30.795906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163947, -0.912966, 0.373651,
		0.986216, 0.160278, -0.041105,
		-0.022360, 0.375240, 0.926658,
		32.357258, 37.650379, 31.073904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819668, 36.942596, 30.713583>,  <32.372910, 37.387711, 30.425243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819668, 36.942596, 30.713583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650951, 37.128754, 31.024839>,  <32.549721, 37.240448, 31.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650951, 37.128754, 31.024839>,  <32.819668, 36.942596, 30.713583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650951, 37.128754, 31.024839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075890, -0.837086, 0.541782,
		0.903513, 0.287570, 0.317753,
		-0.421787, 0.465393, 0.778142,
		32.524414, 37.268372, 31.258282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215565, 36.808849, 31.306952>,  <32.819668, 36.942596, 30.713583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215565, 36.808849, 31.306952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866688, 36.915794, 31.470800>,  <32.657360, 36.979961, 31.569111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866688, 36.915794, 31.470800>,  <33.215565, 36.808849, 31.306952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866688, 36.915794, 31.470800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198464, -0.571965, 0.795907,
		0.447087, 0.775482, 0.445803,
		-0.872196, 0.267364, 0.409623,
		32.605030, 36.996002, 31.593687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383064, 36.817947, 32.053989>,  <33.215565, 36.808849, 31.306952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383064, 36.817947, 32.053989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986225, 36.807903, 32.004822>,  <32.748123, 36.801876, 31.975321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986225, 36.807903, 32.004822>,  <33.383064, 36.817947, 32.053989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986225, 36.807903, 32.004822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082699, -0.605888, 0.791241,
		-0.094349, 0.795154, 0.599023,
		-0.992098, -0.025114, -0.122923,
		32.688595, 36.800369, 31.967945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156445, 36.820652, 32.710381>,  <33.383064, 36.817947, 32.053989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156445, 36.820652, 32.710381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846184, 36.688641, 32.495182>,  <32.660027, 36.609436, 32.366062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846184, 36.688641, 32.495182>,  <33.156445, 36.820652, 32.710381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846184, 36.688641, 32.495182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262621, -0.606348, 0.750581,
		-0.573926, 0.723482, 0.383645,
		-0.775654, -0.330025, -0.538001,
		32.613487, 36.589634, 32.333782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629795, 36.900635, 33.135853>,  <33.156445, 36.820652, 32.710381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629795, 36.900635, 33.135853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515457, 36.616611, 32.878448>,  <32.446854, 36.446198, 32.724007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515457, 36.616611, 32.878448>,  <32.629795, 36.900635, 33.135853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515457, 36.616611, 32.878448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377472, -0.533807, 0.756680,
		-0.880798, 0.459203, -0.115440,
		-0.285847, -0.710058, -0.643513,
		32.429703, 36.403595, 32.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951103, 36.828110, 33.205566>,  <32.629795, 36.900635, 33.135853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951103, 36.828110, 33.205566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097885, 36.484146, 33.063633>,  <32.185955, 36.277767, 32.978474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097885, 36.484146, 33.063633>,  <31.951103, 36.828110, 33.205566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097885, 36.484146, 33.063633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466863, -0.500167, 0.729295,
		-0.804601, -0.101961, -0.584997,
		0.366956, -0.859905, -0.354833,
		32.207973, 36.226173, 32.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405418, 36.418854, 33.369560>,  <31.951103, 36.828110, 33.205566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405418, 36.418854, 33.369560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702223, 36.157578, 33.309204>,  <31.880306, 36.000813, 33.272991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702223, 36.157578, 33.309204>,  <31.405418, 36.418854, 33.369560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702223, 36.157578, 33.309204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423780, -0.631425, 0.649395,
		-0.519451, -0.417913, -0.745331,
		0.742011, -0.653185, -0.150891,
		31.924826, 35.961620, 33.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068470, 35.771244, 33.335331>,  <31.405418, 36.418854, 33.369560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068470, 35.771244, 33.335331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452623, 35.676201, 33.393585>,  <31.683115, 35.619175, 33.428535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452623, 35.676201, 33.393585>,  <31.068470, 35.771244, 33.335331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452623, 35.676201, 33.393585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273486, -0.703091, 0.656406,
		-0.053572, -0.670230, -0.740218,
		0.960383, -0.237604, 0.145632,
		31.740738, 35.604919, 33.437275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160236, 35.057926, 33.272682>,  <31.068470, 35.771244, 33.335331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160236, 35.057926, 33.272682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464418, 35.185425, 33.498997>,  <31.646927, 35.261925, 33.634785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464418, 35.185425, 33.498997>,  <31.160236, 35.057926, 33.272682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464418, 35.185425, 33.498997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196181, -0.717780, 0.668061,
		0.619049, -0.619025, -0.483307,
		0.760455, 0.318747, 0.565782,
		31.692554, 35.281048, 33.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529879, 34.381310, 33.392628>,  <31.160236, 35.057926, 33.272682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529879, 34.381310, 33.392628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630053, 34.645252, 33.675999>,  <31.690157, 34.803619, 33.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630053, 34.645252, 33.675999>,  <31.529879, 34.381310, 33.392628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630053, 34.645252, 33.675999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290127, -0.646963, 0.705171,
		0.923639, -0.382133, 0.029422,
		0.250434, 0.659859, 0.708427,
		31.705183, 34.843208, 33.888527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922911, 34.009872, 33.925709>,  <31.529879, 34.381310, 33.392628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922911, 34.009872, 33.925709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797083, 34.338642, 34.115646>,  <31.721586, 34.535904, 34.229610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797083, 34.338642, 34.115646>,  <31.922911, 34.009872, 33.925709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797083, 34.338642, 34.115646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346122, -0.565120, 0.748891,
		0.883881, 0.071224, 0.462258,
		-0.314570, 0.821928, 0.474847,
		31.702711, 34.585220, 34.258099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151161, 33.928886, 34.573429>,  <31.922911, 34.009872, 33.925709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151161, 33.928886, 34.573429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861092, 34.203827, 34.589783>,  <31.687050, 34.368793, 34.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861092, 34.203827, 34.589783>,  <32.151161, 33.928886, 34.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861092, 34.203827, 34.589783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362246, -0.431326, 0.826278,
		0.585580, 0.584383, 0.561776,
		-0.725171, 0.687353, 0.040886,
		31.643539, 34.410034, 34.602047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064827, 34.065704, 35.223961>,  <32.151161, 33.928886, 34.573429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064827, 34.065704, 35.223961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704422, 34.203773, 35.118866>,  <31.488178, 34.286613, 35.055809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704422, 34.203773, 35.118866>,  <32.064827, 34.065704, 35.223961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704422, 34.203773, 35.118866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409240, -0.475508, 0.778727,
		0.143861, 0.809166, 0.569697,
		-0.901014, 0.345171, -0.262736,
		31.434118, 34.307323, 35.040047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910402, 34.415886, 35.775776>,  <32.064827, 34.065704, 35.223961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910402, 34.415886, 35.775776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596754, 34.257420, 35.584690>,  <31.408566, 34.162338, 35.470039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596754, 34.257420, 35.584690>,  <31.910402, 34.415886, 35.775776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596754, 34.257420, 35.584690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354892, -0.345235, 0.868829,
		-0.509125, 0.850802, 0.130109,
		-0.784120, -0.396168, -0.477711,
		31.361519, 34.138569, 35.441376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606270, 34.535496, 36.043011>,  <31.910402, 34.415886, 35.775776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606270, 34.535496, 36.043011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467522, 34.903831, 35.971745>,  <32.384274, 35.124832, 35.928986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467522, 34.903831, 35.971745>,  <32.606270, 34.535496, 36.043011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467522, 34.903831, 35.971745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369325, 0.308707, 0.876527,
		0.862138, 0.238238, -0.447169,
		-0.346866, 0.920838, -0.178161,
		32.363461, 35.180084, 35.918297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174709, 35.037476, 36.154068>,  <32.606270, 34.535496, 36.043011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174709, 35.037476, 36.154068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821449, 35.224384, 36.170589>,  <32.609493, 35.336529, 36.180504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821449, 35.224384, 36.170589>,  <33.174709, 35.037476, 36.154068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821449, 35.224384, 36.170589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297613, 0.490068, 0.819304,
		0.362598, 0.735859, -0.571869,
		-0.883148, 0.467274, 0.041304,
		32.556503, 35.364567, 36.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235432, 35.723370, 36.067333>,  <33.174709, 35.037476, 36.154068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235432, 35.723370, 36.067333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912598, 35.659561, 36.294724>,  <32.718895, 35.621277, 36.431156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912598, 35.659561, 36.294724>,  <33.235432, 35.723370, 36.067333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912598, 35.659561, 36.294724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399856, 0.560733, 0.725047,
		-0.434424, 0.812484, -0.388774,
		-0.807088, -0.159524, 0.568473,
		32.670471, 35.611706, 36.465267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949261, 36.337128, 36.054256>,  <33.235432, 35.723370, 36.067333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949261, 36.337128, 36.054256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857880, 36.132893, 36.385822>,  <32.803051, 36.010349, 36.584763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857880, 36.132893, 36.385822>,  <32.949261, 36.337128, 36.054256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857880, 36.132893, 36.385822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231184, 0.798629, 0.555649,
		-0.945707, 0.318573, -0.064409,
		-0.228454, -0.510591, 0.828918,
		32.789345, 35.979713, 36.634499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395382, 36.775909, 36.577469>,  <32.949261, 36.337128, 36.054256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395382, 36.775909, 36.577469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660919, 36.531101, 36.749397>,  <32.820240, 36.384216, 36.852554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660919, 36.531101, 36.749397>,  <32.395382, 36.775909, 36.577469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660919, 36.531101, 36.749397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122096, 0.655699, 0.745085,
		-0.737842, -0.442137, 0.510004,
		0.663839, -0.612024, 0.429819,
		32.860069, 36.347492, 36.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365852, 36.789665, 37.338875>,  <32.395382, 36.775909, 36.577469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365852, 36.789665, 37.338875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728298, 36.625351, 37.298454>,  <32.945766, 36.526764, 37.274204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728298, 36.625351, 37.298454>,  <32.365852, 36.789665, 37.338875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728298, 36.625351, 37.298454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264311, 0.363254, 0.893413,
		-0.330295, -0.836243, 0.437725,
		0.906115, -0.410785, -0.101047,
		33.000134, 36.502117, 37.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374382, 36.283600, 37.797482>,  <32.365852, 36.789665, 37.338875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374382, 36.283600, 37.797482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754803, 36.364201, 37.703754>,  <32.983055, 36.412560, 37.647518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754803, 36.364201, 37.703754>,  <32.374382, 36.283600, 37.797482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754803, 36.364201, 37.703754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202837, 0.165042, 0.965204,
		0.233161, -0.965484, 0.116091,
		0.951049, 0.201500, -0.234317,
		33.040119, 36.424648, 37.633461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781498, 36.007404, 38.305435>,  <32.374382, 36.283600, 37.797482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781498, 36.007404, 38.305435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044628, 36.266418, 38.151573>,  <33.202507, 36.421825, 38.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044628, 36.266418, 38.151573>,  <32.781498, 36.007404, 38.305435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044628, 36.266418, 38.151573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310904, 0.231715, 0.921763,
		0.686006, -0.725951, -0.048894,
		0.657826, 0.647537, -0.384659,
		33.241978, 36.460678, 38.036175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275558, 35.990871, 38.744389>,  <32.781498, 36.007404, 38.305435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275558, 35.990871, 38.744389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377296, 36.313648, 38.531166>,  <33.438339, 36.507317, 38.403233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377296, 36.313648, 38.531166>,  <33.275558, 35.990871, 38.744389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377296, 36.313648, 38.531166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419123, 0.404758, 0.812716,
		0.871576, -0.430125, -0.235262,
		0.254346, 0.806947, -0.533053,
		33.453602, 36.555733, 38.371250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011051, 35.998440, 38.796688>,  <33.275558, 35.990871, 38.744389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011051, 35.998440, 38.796688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874378, 36.362877, 38.704460>,  <33.792374, 36.581539, 38.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874378, 36.362877, 38.704460>,  <34.011051, 35.998440, 38.796688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874378, 36.362877, 38.704460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515683, 0.386862, 0.764466,
		0.785699, 0.142302, -0.602019,
		-0.341683, 0.911092, -0.230574,
		33.771873, 36.636204, 38.635288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584759, 36.442329, 38.839828>,  <34.011051, 35.998440, 38.796688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584759, 36.442329, 38.839828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249310, 36.659897, 38.851635>,  <34.048042, 36.790436, 38.858719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249310, 36.659897, 38.851635>,  <34.584759, 36.442329, 38.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249310, 36.659897, 38.851635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378055, 0.542175, 0.750414,
		0.392161, 0.640470, -0.660309,
		-0.838620, 0.543916, 0.029513,
		33.997723, 36.823071, 38.860489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910229, 37.066105, 39.058399>,  <34.584759, 36.442329, 38.839828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910229, 37.066105, 39.058399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516869, 37.091148, 39.126518>,  <34.280853, 37.106174, 39.167389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516869, 37.091148, 39.126518>,  <34.910229, 37.066105, 39.058399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516869, 37.091148, 39.126518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171865, 0.622350, 0.763638,
		-0.058179, 0.780231, -0.622780,
		-0.983401, 0.062607, 0.170302,
		34.221848, 37.109932, 39.177608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796272, 37.738827, 39.165916>,  <34.910229, 37.066105, 39.058399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796272, 37.738827, 39.165916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458687, 37.570652, 39.299156>,  <34.256134, 37.469746, 39.379101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458687, 37.570652, 39.299156>,  <34.796272, 37.738827, 39.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458687, 37.570652, 39.299156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034388, 0.577306, 0.815803,
		-0.535295, 0.699964, -0.472768,
		-0.843965, -0.420437, 0.333099,
		34.205498, 37.444519, 39.399086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389957, 38.240170, 39.372349>,  <34.796272, 37.738827, 39.165916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389957, 38.240170, 39.372349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260887, 37.914112, 39.564774>,  <34.183445, 37.718475, 39.680229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260887, 37.914112, 39.564774>,  <34.389957, 38.240170, 39.372349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260887, 37.914112, 39.564774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041304, 0.495634, 0.867549,
		-0.945607, 0.299809, -0.126261,
		-0.322678, -0.815145, 0.481058,
		34.164085, 37.669567, 39.709091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961853, 38.465466, 39.920738>,  <34.389957, 38.240170, 39.372349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961853, 38.465466, 39.920738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074028, 38.098946, 40.035107>,  <34.141335, 37.879032, 40.103729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074028, 38.098946, 40.035107>,  <33.961853, 38.465466, 39.920738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074028, 38.098946, 40.035107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018941, 0.292534, 0.956068,
		-0.959685, -0.273534, 0.064683,
		0.280439, -0.916299, 0.285921,
		34.158161, 37.824055, 40.120884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526394, 38.342163, 40.473385>,  <33.961853, 38.465466, 39.920738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526394, 38.342163, 40.473385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837044, 38.093586, 40.514687>,  <34.023434, 37.944439, 40.539467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837044, 38.093586, 40.514687>,  <33.526394, 38.342163, 40.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837044, 38.093586, 40.514687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140398, 0.330530, 0.933294,
		-0.614122, -0.710320, 0.343947,
		0.776622, -0.621446, 0.103258,
		34.070030, 37.907150, 40.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377213, 37.950356, 41.016224>,  <33.526394, 38.342163, 40.473385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377213, 37.950356, 41.016224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774750, 37.917732, 40.986244>,  <34.013271, 37.898159, 40.968258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774750, 37.917732, 40.986244>,  <33.377213, 37.950356, 41.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774750, 37.917732, 40.986244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097283, 0.319201, 0.942680,
		-0.052956, -0.944171, 0.325171,
		0.993847, -0.081554, -0.074948,
		34.072903, 37.893265, 40.963760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626831, 37.609196, 41.704292>,  <33.377213, 37.950356, 41.016224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626831, 37.609196, 41.704292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942715, 37.788429, 41.536686>,  <34.132244, 37.895969, 41.436123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942715, 37.788429, 41.536686>,  <33.626831, 37.609196, 41.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942715, 37.788429, 41.536686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389269, 0.161902, 0.906784,
		0.474156, -0.879209, -0.046569,
		0.789713, 0.448084, -0.419015,
		34.179630, 37.922855, 41.410980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133583, 37.386452, 42.080269>,  <33.626831, 37.609196, 41.704292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133583, 37.386452, 42.080269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260681, 37.726681, 41.912666>,  <34.336941, 37.930817, 41.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260681, 37.726681, 41.912666>,  <34.133583, 37.386452, 42.080269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260681, 37.726681, 41.912666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373384, 0.293959, 0.879871,
		0.871562, -0.436030, -0.224183,
		0.317749, 0.850568, -0.419010,
		34.356007, 37.981850, 41.786964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833382, 37.437790, 42.180103>,  <34.133583, 37.386452, 42.080269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833382, 37.437790, 42.180103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708447, 37.814953, 42.133865>,  <34.633484, 38.041252, 42.106121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708447, 37.814953, 42.133865>,  <34.833382, 37.437790, 42.180103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708447, 37.814953, 42.133865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478503, 0.261279, 0.838313,
		0.820656, 0.206528, -0.532794,
		-0.312343, 0.942910, -0.115596,
		34.614742, 38.097824, 42.099186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284866, 37.889954, 42.410408>,  <34.833382, 37.437790, 42.180103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284866, 37.889954, 42.410408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959049, 38.121876, 42.417831>,  <34.763557, 38.261028, 42.422283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959049, 38.121876, 42.417831>,  <35.284866, 37.889954, 42.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959049, 38.121876, 42.417831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193354, 0.241196, 0.951020,
		0.546932, 0.778234, -0.308573,
		-0.814542, 0.579807, 0.018556,
		34.714687, 38.295818, 42.423397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461472, 38.415569, 42.813053>,  <35.284866, 37.889954, 42.410408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461472, 38.415569, 42.813053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064110, 38.460445, 42.803604>,  <34.825691, 38.487370, 42.797935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064110, 38.460445, 42.803604>,  <35.461472, 38.415569, 42.813053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064110, 38.460445, 42.803604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006319, 0.259305, 0.965775,
		0.114477, 0.959257, -0.258304,
		-0.993406, 0.112191, -0.023623,
		34.766087, 38.494102, 42.796516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355942, 38.958660, 43.210403>,  <35.461472, 38.415569, 42.813053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355942, 38.958660, 43.210403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980312, 38.821754, 43.197723>,  <34.754936, 38.739613, 43.190117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980312, 38.821754, 43.197723>,  <35.355942, 38.958660, 43.210403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980312, 38.821754, 43.197723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065284, 0.087051, 0.994062,
		-0.337472, 0.935563, -0.104091,
		-0.939069, -0.342263, -0.031700,
		34.698593, 38.719074, 43.188213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924313, 39.392872, 43.652927>,  <35.355942, 38.958660, 43.210403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924313, 39.392872, 43.652927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733448, 39.043491, 43.614155>,  <34.618927, 38.833862, 43.590893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733448, 39.043491, 43.614155>,  <34.924313, 39.392872, 43.652927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733448, 39.043491, 43.614155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142879, -0.031721, 0.989232,
		-0.867121, 0.485875, -0.109662,
		-0.477165, -0.873452, -0.096927,
		34.590298, 38.781456, 43.585075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450897, 39.451077, 44.157082>,  <34.924313, 39.392872, 43.652927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450897, 39.451077, 44.157082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438946, 39.056179, 44.094528>,  <34.431774, 38.819241, 44.056995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438946, 39.056179, 44.094528>,  <34.450897, 39.451077, 44.157082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438946, 39.056179, 44.094528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433001, -0.128228, 0.892227,
		-0.900898, 0.094374, -0.423646,
		-0.029879, -0.987244, -0.156385,
		34.429981, 38.760006, 44.047611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724270, 39.150826, 44.327950>,  <34.450897, 39.451077, 44.157082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724270, 39.150826, 44.327950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965038, 38.833260, 44.362335>,  <34.109497, 38.642719, 44.382965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965038, 38.833260, 44.362335>,  <33.724270, 39.150826, 44.327950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965038, 38.833260, 44.362335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358587, -0.172536, 0.917413,
		-0.713519, -0.583033, -0.388541,
		0.601919, -0.793917, 0.085960,
		34.145615, 38.595085, 44.388123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410923, 38.710800, 44.751553>,  <33.724270, 39.150826, 44.327950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410923, 38.710800, 44.751553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765839, 38.527081, 44.734730>,  <33.978786, 38.416847, 44.724636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765839, 38.527081, 44.734730>,  <33.410923, 38.710800, 44.751553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765839, 38.527081, 44.734730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149127, -0.371983, 0.916182,
		-0.436447, -0.806643, -0.398549,
		0.887285, -0.459300, -0.042059,
		34.032024, 38.389290, 44.722111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370972, 38.050259, 45.226345>,  <33.410923, 38.710800, 44.751553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370972, 38.050259, 45.226345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762768, 38.113052, 45.175816>,  <33.997845, 38.150730, 45.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762768, 38.113052, 45.175816>,  <33.370972, 38.050259, 45.226345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762768, 38.113052, 45.175816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157903, -0.208539, 0.965183,
		0.125176, -0.965332, -0.229050,
		0.979488, 0.156985, -0.126325,
		34.056614, 38.160149, 45.137917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716248, 37.483246, 45.632072>,  <33.370972, 38.050259, 45.226345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716248, 37.483246, 45.632072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980251, 37.778778, 45.577644>,  <34.138653, 37.956097, 45.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980251, 37.778778, 45.577644>,  <33.716248, 37.483246, 45.632072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980251, 37.778778, 45.577644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311382, -0.104207, 0.944554,
		0.683688, -0.665783, -0.298837,
		0.660009, 0.738833, -0.136068,
		34.178253, 38.000427, 45.536823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270123, 37.249424, 45.912853>,  <33.716248, 37.483246, 45.632072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270123, 37.249424, 45.912853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318779, 37.646450, 45.914597>,  <34.347973, 37.884666, 45.915642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318779, 37.646450, 45.914597>,  <34.270123, 37.249424, 45.912853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318779, 37.646450, 45.914597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373142, -0.049794, 0.926437,
		0.919765, -0.111068, -0.376425,
		0.121641, 0.992565, 0.004355,
		34.355270, 37.944218, 45.915901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994202, 37.414291, 46.226589>,  <34.270123, 37.249424, 45.912853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994202, 37.414291, 46.226589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747265, 37.725616, 46.272411>,  <34.599102, 37.912411, 46.299904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747265, 37.725616, 46.272411>,  <34.994202, 37.414291, 46.226589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747265, 37.725616, 46.272411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347522, 0.139167, 0.927287,
		0.705773, 0.612265, -0.356393,
		-0.617344, 0.778308, 0.114555,
		34.562061, 37.959110, 46.306778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366066, 37.904228, 46.614532>,  <34.994202, 37.414291, 46.226589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366066, 37.904228, 46.614532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989056, 38.029690, 46.660587>,  <34.762848, 38.104969, 46.688221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989056, 38.029690, 46.660587>,  <35.366066, 37.904228, 46.614532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989056, 38.029690, 46.660587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205883, 0.273791, 0.939495,
		0.263155, 0.909207, -0.322632,
		-0.942529, 0.313658, 0.115141,
		34.706295, 38.123787, 46.695129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437531, 38.522564, 46.987629>,  <35.366066, 37.904228, 46.614532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437531, 38.522564, 46.987629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047359, 38.437851, 47.011929>,  <34.813255, 38.387024, 47.026508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047359, 38.437851, 47.011929>,  <35.437531, 38.522564, 46.987629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047359, 38.437851, 47.011929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032764, 0.412071, 0.910562,
		-0.217875, 0.886197, -0.408884,
		-0.975427, -0.211786, 0.060745,
		34.754730, 38.374317, 47.030151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157852, 39.140110, 47.241390>,  <35.437531, 38.522564, 46.987629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157852, 39.140110, 47.241390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888653, 38.861893, 47.342018>,  <34.727135, 38.694962, 47.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888653, 38.861893, 47.342018>,  <35.157852, 39.140110, 47.241390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888653, 38.861893, 47.342018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136468, 0.451055, 0.882001,
		-0.726947, 0.559253, -0.398478,
		-0.672997, -0.695548, 0.251573,
		34.686752, 38.653229, 47.417488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475445, 39.464333, 47.311455>,  <35.157852, 39.140110, 47.241390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475445, 39.464333, 47.311455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491791, 39.134232, 47.536770>,  <34.501598, 38.936172, 47.671959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491791, 39.134232, 47.536770>,  <34.475445, 39.464333, 47.311455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491791, 39.134232, 47.536770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065414, 0.560336, 0.825678,
		-0.997021, -0.070587, -0.031086,
		0.040863, -0.825252, 0.563285,
		34.504051, 38.886658, 47.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040730, 39.681637, 47.855320>,  <34.475445, 39.464333, 47.311455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040730, 39.681637, 47.855320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208450, 39.347820, 47.998276>,  <34.309082, 39.147530, 48.084049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208450, 39.347820, 47.998276>,  <34.040730, 39.681637, 47.855320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208450, 39.347820, 47.998276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108699, 0.344690, 0.932402,
		-0.901315, -0.429808, 0.053817,
		0.419304, -0.834538, 0.357394,
		34.334240, 39.097458, 48.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663052, 39.494072, 48.419338>,  <34.040730, 39.681637, 47.855320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663052, 39.494072, 48.419338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995037, 39.284817, 48.496788>,  <34.194229, 39.159264, 48.543259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995037, 39.284817, 48.496788>,  <33.663052, 39.494072, 48.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995037, 39.284817, 48.496788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129566, 0.156817, 0.979092,
		-0.542568, -0.837693, 0.062371,
		0.829960, -0.523143, 0.193621,
		34.244026, 39.127872, 48.554874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578770, 39.020409, 49.114647>,  <33.663052, 39.494072, 48.419338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578770, 39.020409, 49.114647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967064, 39.089275, 49.047684>,  <34.200043, 39.130596, 49.007507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967064, 39.089275, 49.047684>,  <33.578770, 39.020409, 49.114647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967064, 39.089275, 49.047684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084302, 0.408439, 0.908884,
		0.224850, -0.896402, 0.381975,
		0.970740, 0.172162, -0.167406,
		34.258286, 39.140923, 48.997463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823376, 38.725887, 49.708801>,  <33.578770, 39.020409, 49.114647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823376, 38.725887, 49.708801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105690, 38.964211, 49.555500>,  <34.275078, 39.107204, 49.463520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105690, 38.964211, 49.555500>,  <33.823376, 38.725887, 49.708801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105690, 38.964211, 49.555500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308609, 0.228384, 0.923364,
		0.637677, -0.769970, -0.022682,
		0.705782, 0.595808, -0.383255,
		34.317425, 39.142952, 49.440525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574825, 38.466972, 49.809601>,  <33.823376, 38.725887, 49.708801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574825, 38.466972, 49.809601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529026, 38.863815, 49.789185>,  <34.501549, 39.101921, 49.776936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529026, 38.863815, 49.789185>,  <34.574825, 38.466972, 49.809601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529026, 38.863815, 49.789185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235895, 0.077064, 0.968718,
		0.965010, 0.098871, -0.242858,
		-0.114494, 0.992112, -0.051044,
		34.494678, 39.161449, 49.773872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169834, 38.748390, 50.136562>,  <34.574825, 38.466972, 49.809601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169834, 38.748390, 50.136562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889385, 39.032181, 50.165035>,  <34.721115, 39.202454, 50.182121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889385, 39.032181, 50.165035>,  <35.169834, 38.748390, 50.136562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889385, 39.032181, 50.165035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179927, 0.079433, 0.980468,
		0.689964, 0.700238, -0.183346,
		-0.701125, 0.709476, 0.071186,
		34.679047, 39.245022, 50.186390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376373, 39.268211, 50.595394>,  <35.169834, 38.748390, 50.136562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376373, 39.268211, 50.595394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980835, 39.325867, 50.580421>,  <34.743511, 39.360462, 50.571438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980835, 39.325867, 50.580421>,  <35.376373, 39.268211, 50.595394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980835, 39.325867, 50.580421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015851, 0.148079, 0.988849,
		0.148079, 0.978415, -0.144143,
		-0.988849, 0.144143, -0.037436,
		34.684181, 39.369110, 50.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346825, 39.741604, 51.117786>,  <35.376373, 39.268211, 50.595394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346825, 39.741604, 51.117786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970554, 39.626240, 51.046291>,  <34.744793, 39.557022, 51.003395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970554, 39.626240, 51.046291>,  <35.346825, 39.741604, 51.117786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970554, 39.626240, 51.046291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182760, -0.013153, 0.983070,
		-0.285882, 0.957415, -0.040338,
		-0.940675, -0.288414, -0.178737,
		34.688351, 39.539715, 50.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867313, 40.203358, 51.433922>,  <35.346825, 39.741604, 51.117786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867313, 40.203358, 51.433922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704258, 39.838848, 51.410564>,  <34.606426, 39.620144, 51.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704258, 39.838848, 51.410564>,  <34.867313, 40.203358, 51.433922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704258, 39.838848, 51.410564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051823, -0.086928, 0.994866,
		-0.911672, 0.402520, 0.082660,
		-0.407639, -0.911274, -0.058390,
		34.581966, 39.565464, 51.393047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344727, 40.235752, 51.958179>,  <34.867313, 40.203358, 51.433922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344727, 40.235752, 51.958179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420845, 39.850811, 51.880554>,  <34.466518, 39.619846, 51.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420845, 39.850811, 51.880554>,  <34.344727, 40.235752, 51.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420845, 39.850811, 51.880554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104874, -0.176617, 0.978677,
		-0.976108, -0.206593, 0.067316,
		0.190299, -0.962354, -0.194063,
		34.477936, 39.562103, 51.822334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968231, 39.884872, 52.489704>,  <34.344727, 40.235752, 51.958179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968231, 39.884872, 52.489704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253372, 39.640053, 52.352745>,  <34.424458, 39.493160, 52.270569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253372, 39.640053, 52.352745>,  <33.968231, 39.884872, 52.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253372, 39.640053, 52.352745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059943, -0.433267, 0.899270,
		-0.698745, -0.661574, -0.272168,
		0.712855, -0.612046, -0.342400,
		34.467228, 39.456440, 52.250027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793133, 39.226067, 52.407345>,  <33.968231, 39.884872, 52.489704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793133, 39.226067, 52.407345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186878, 39.229073, 52.477730>,  <34.423126, 39.230877, 52.519962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186878, 39.229073, 52.477730>,  <33.793133, 39.226067, 52.407345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186878, 39.229073, 52.477730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168707, -0.246717, 0.954290,
		0.050584, -0.969058, -0.241593,
		0.984367, 0.007513, 0.175967,
		34.482189, 39.231327, 52.530521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859608, 38.797703, 52.926041>,  <33.793133, 39.226067, 52.407345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859608, 38.797703, 52.926041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232624, 38.941952, 52.933132>,  <34.456436, 39.028500, 52.937386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232624, 38.941952, 52.933132>,  <33.859608, 38.797703, 52.926041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232624, 38.941952, 52.933132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117268, -0.348962, 0.929771,
		0.341479, -0.864974, -0.367712,
		0.932545, 0.360618, 0.017730,
		34.512386, 39.050137, 52.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097092, 38.476284, 53.552418>,  <33.859608, 38.797703, 52.926041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097092, 38.476284, 53.552418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343246, 38.782677, 53.478035>,  <34.490940, 38.966511, 53.433407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343246, 38.782677, 53.478035>,  <34.097092, 38.476284, 53.552418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343246, 38.782677, 53.478035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273608, 0.013669, 0.961744,
		0.739217, -0.642721, -0.201165,
		0.615384, 0.765978, -0.185958,
		34.527863, 39.012470, 53.422249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914917, 38.411507, 53.674412>,  <34.097092, 38.476284, 53.552418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914917, 38.411507, 53.674412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920845, 38.207027, 54.018147>,  <34.924400, 38.084339, 54.224388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920845, 38.207027, 54.018147>,  <34.914917, 38.411507, 53.674412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920845, 38.207027, 54.018147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514194, -0.733184, -0.445024,
		0.857546, 0.448459, 0.251992,
		0.014819, -0.511201, 0.859334,
		34.925289, 38.053669, 54.275948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605156, 38.310661, 54.030838>,  <34.914917, 38.411507, 53.674412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605156, 38.310661, 54.030838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359966, 38.004478, 54.109158>,  <35.212852, 37.820770, 54.156151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359966, 38.004478, 54.109158>,  <35.605156, 38.310661, 54.030838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359966, 38.004478, 54.109158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674031, -0.635914, -0.375892,
		0.412242, -0.098437, 0.905741,
		-0.612975, -0.765456, 0.195801,
		35.176075, 37.774841, 54.167896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891926, 37.763088, 54.508350>,  <35.605156, 38.310661, 54.030838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891926, 37.763088, 54.508350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625824, 37.607521, 54.253418>,  <35.466164, 37.514183, 54.100460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625824, 37.607521, 54.253418>,  <35.891926, 37.763088, 54.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625824, 37.607521, 54.253418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715510, -0.575933, -0.395407,
		-0.213278, -0.719059, 0.661413,
		-0.665250, -0.388915, -0.637328,
		35.426250, 37.490845, 54.062222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743271, 37.058052, 54.617977>,  <35.891926, 37.763088, 54.508350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743271, 37.058052, 54.617977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713673, 37.190319, 54.241638>,  <35.695911, 37.269680, 54.015835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713673, 37.190319, 54.241638>,  <35.743271, 37.058052, 54.617977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713673, 37.190319, 54.241638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864228, -0.449506, -0.225953,
		-0.497629, -0.829823, -0.252505,
		-0.073999, 0.330663, -0.940843,
		35.691475, 37.289516, 53.959385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000587, 36.459148, 54.331043>,  <35.743271, 37.058052, 54.617977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000587, 36.459148, 54.331043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053699, 36.770908, 54.086124>,  <36.085567, 36.957962, 53.939175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053699, 36.770908, 54.086124>,  <36.000587, 36.459148, 54.331043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053699, 36.770908, 54.086124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894146, -0.360733, -0.265281,
		-0.427636, -0.512260, -0.744794,
		0.132779, 0.779398, -0.612298,
		36.093533, 37.004726, 53.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276794, 36.105480, 54.355724>,  <36.000587, 36.459148, 54.331043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276794, 36.105480, 54.355724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649323, 36.012947, 54.243206>,  <35.872841, 35.957428, 54.175697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649323, 36.012947, 54.243206>,  <35.276794, 36.105480, 54.355724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649323, 36.012947, 54.243206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363536, -0.543870, -0.756338,
		0.021980, 0.806654, -0.590616,
		0.931321, -0.231335, -0.281294,
		35.928719, 35.943546, 54.158817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195717, 35.893200, 53.705978>,  <35.276794, 36.105480, 54.355724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195717, 35.893200, 53.705978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572430, 35.793095, 53.795792>,  <35.798458, 35.733032, 53.849678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572430, 35.793095, 53.795792>,  <35.195717, 35.893200, 53.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572430, 35.793095, 53.795792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114569, -0.388976, -0.914096,
		0.316103, 0.886604, -0.337658,
		0.941782, -0.250264, 0.224533,
		35.854965, 35.718014, 53.863152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765808, 36.029263, 53.034840>,  <35.195717, 35.893200, 53.705978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765808, 36.029263, 53.034840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683971, 36.372349, 52.846172>,  <34.634869, 36.578201, 52.732971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683971, 36.372349, 52.846172>,  <34.765808, 36.029263, 53.034840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683971, 36.372349, 52.846172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223167, -0.428300, -0.875646,
		-0.953069, -0.284408, -0.103788,
		-0.204588, 0.857713, -0.471670,
		34.622597, 36.629662, 52.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505157, 35.803150, 52.436161>,  <34.765808, 36.029263, 53.034840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505157, 35.803150, 52.436161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568741, 36.183903, 52.331348>,  <34.606892, 36.412354, 52.268459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568741, 36.183903, 52.331348>,  <34.505157, 35.803150, 52.436161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568741, 36.183903, 52.331348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152780, -0.285926, -0.945994,
		-0.975392, 0.110343, -0.190880,
		0.158962, 0.951877, -0.262031,
		34.616428, 36.469467, 52.252739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067802, 35.976357, 51.986580>,  <34.505157, 35.803150, 52.436161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067802, 35.976357, 51.986580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348331, 36.253685, 51.920303>,  <34.516651, 36.420082, 51.880539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348331, 36.253685, 51.920303>,  <34.067802, 35.976357, 51.986580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348331, 36.253685, 51.920303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068002, -0.296445, -0.952626,
		-0.709589, 0.656834, -0.255052,
		0.701326, 0.693317, -0.165688,
		34.558731, 36.461681, 51.870598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872608, 36.448727, 51.352032>,  <34.067802, 35.976357, 51.986580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872608, 36.448727, 51.352032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263130, 36.480042, 51.432720>,  <34.497444, 36.498829, 51.481133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263130, 36.480042, 51.432720>,  <33.872608, 36.448727, 51.352032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263130, 36.480042, 51.432720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211776, -0.154366, -0.965050,
		-0.044412, 0.984907, -0.167288,
		0.976309, 0.078287, 0.201724,
		34.556023, 36.503529, 51.493237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183327, 36.911640, 50.782135>,  <33.872608, 36.448727, 51.352032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183327, 36.911640, 50.782135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486851, 36.714302, 50.952225>,  <34.668964, 36.595898, 51.054279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486851, 36.714302, 50.952225>,  <34.183327, 36.911640, 50.782135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486851, 36.714302, 50.952225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431967, -0.107408, -0.895471,
		0.487450, 0.863176, 0.131607,
		0.758813, -0.493347, 0.425220,
		34.714493, 36.566299, 51.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808960, 37.240417, 50.540703>,  <34.183327, 36.911640, 50.782135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808960, 37.240417, 50.540703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896996, 36.867767, 50.656384>,  <34.949818, 36.644176, 50.725792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896996, 36.867767, 50.656384>,  <34.808960, 37.240417, 50.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896996, 36.867767, 50.656384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375441, -0.192736, -0.906585,
		0.900337, 0.308105, 0.307352,
		0.220085, -0.931625, 0.289203,
		34.963020, 36.588280, 50.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540222, 37.159081, 50.305851>,  <34.808960, 37.240417, 50.540703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540222, 37.159081, 50.305851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376160, 36.799496, 50.367355>,  <35.277721, 36.583744, 50.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376160, 36.799496, 50.367355>,  <35.540222, 37.159081, 50.305851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376160, 36.799496, 50.367355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268006, -0.279951, -0.921846,
		0.871749, -0.336891, 0.355750,
		-0.410154, -0.898962, 0.153758,
		35.253113, 36.529808, 50.413483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112537, 36.667385, 50.241344>,  <35.540222, 37.159081, 50.305851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112537, 36.667385, 50.241344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762505, 36.481842, 50.186108>,  <35.552486, 36.370514, 50.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762505, 36.481842, 50.186108>,  <36.112537, 36.667385, 50.241344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762505, 36.481842, 50.186108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284107, -0.261349, -0.922486,
		0.391816, -0.846480, 0.360488,
		-0.875079, -0.463862, -0.138090,
		35.499981, 36.342682, 50.144680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348534, 36.047085, 49.857456>,  <36.112537, 36.667385, 50.241344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348534, 36.047085, 49.857456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953999, 36.081593, 49.801311>,  <35.717278, 36.102295, 49.767624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953999, 36.081593, 49.801311>,  <36.348534, 36.047085, 49.857456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953999, 36.081593, 49.801311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118671, -0.218928, -0.968498,
		-0.114276, -0.971920, 0.205700,
		-0.986336, 0.086266, -0.140357,
		35.658096, 36.107471, 49.759205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118896, 35.539455, 49.405144>,  <36.348534, 36.047085, 49.857456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118896, 35.539455, 49.405144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794399, 35.772415, 49.384357>,  <35.599701, 35.912193, 49.371883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794399, 35.772415, 49.384357>,  <36.118896, 35.539455, 49.405144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794399, 35.772415, 49.384357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001985, -0.091624, -0.995792,
		-0.584712, -0.807721, 0.075485,
		-0.811239, 0.582401, -0.051970,
		35.551029, 35.947136, 49.368767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696041, 35.189575, 48.917732>,  <36.118896, 35.539455, 49.405144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696041, 35.189575, 48.917732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541393, 35.558468, 48.916050>,  <35.448605, 35.779804, 48.915039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541393, 35.558468, 48.916050>,  <35.696041, 35.189575, 48.917732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541393, 35.558468, 48.916050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077428, -0.037007, -0.996311,
		-0.918983, -0.384869, 0.085714,
		-0.386621, 0.922229, -0.004209,
		35.425407, 35.835136, 48.914787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259117, 35.184254, 48.340660>,  <35.696041, 35.189575, 48.917732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259117, 35.184254, 48.340660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288868, 35.580044, 48.390316>,  <35.306717, 35.817516, 48.420109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288868, 35.580044, 48.390316>,  <35.259117, 35.184254, 48.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288868, 35.580044, 48.390316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001648, 0.124358, -0.992236,
		-0.997229, 0.074006, 0.007618,
		0.074378, 0.989474, 0.124136,
		35.311180, 35.876884, 48.427555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863682, 35.533726, 47.838062>,  <35.259117, 35.184254, 48.340660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863682, 35.533726, 47.838062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122643, 35.815643, 47.954090>,  <35.278019, 35.984795, 48.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122643, 35.815643, 47.954090>,  <34.863682, 35.533726, 47.838062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122643, 35.815643, 47.954090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154617, 0.251227, -0.955499,
		-0.746302, 0.663440, 0.053672,
		0.647400, 0.704792, 0.290070,
		35.316864, 36.027081, 48.041111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827751, 36.055885, 47.393776>,  <34.863682, 35.533726, 47.838062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827751, 36.055885, 47.393776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171764, 36.163204, 47.567375>,  <35.378174, 36.227596, 47.671535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171764, 36.163204, 47.567375>,  <34.827751, 36.055885, 47.393776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171764, 36.163204, 47.567375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325802, 0.365832, -0.871791,
		-0.392670, 0.891169, 0.227217,
		0.860037, 0.268298, 0.433996,
		35.429775, 36.243694, 47.697575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022953, 36.873363, 47.212837>,  <34.827751, 36.055885, 47.393776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022953, 36.873363, 47.212837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347664, 36.660145, 47.308231>,  <35.542492, 36.532211, 47.365467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347664, 36.660145, 47.308231>,  <35.022953, 36.873363, 47.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347664, 36.660145, 47.308231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420923, 0.251044, -0.871665,
		0.404770, 0.807983, 0.428165,
		0.811779, -0.533048, 0.238484,
		35.591198, 36.500229, 47.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487068, 37.273109, 47.033630>,  <35.022953, 36.873363, 47.212837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487068, 37.273109, 47.033630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 36.921791, 47.046734>,  <35.792339, 36.710999, 47.054596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 36.921791, 47.046734>,  <35.487068, 37.273109, 47.033630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677864, 36.921791, 47.046734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391380, 0.178885, -0.902675,
		0.786959, 0.443385, 0.429075,
		0.476987, -0.878299, 0.032756,
		35.820961, 36.658302, 47.056561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211872, 37.326775, 46.730526>,  <35.487068, 37.273109, 47.033630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211872, 37.326775, 46.730526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130581, 36.937031, 46.691895>,  <36.081806, 36.703186, 46.668716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130581, 36.937031, 46.691895>,  <36.211872, 37.326775, 46.730526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130581, 36.937031, 46.691895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385088, 0.011148, -0.922813,
		0.900225, -0.224732, 0.372948,
		-0.203227, -0.974357, -0.096577,
		36.069614, 36.644722, 46.662922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774021, 36.994076, 46.358223>,  <36.211872, 37.326775, 46.730526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774021, 36.994076, 46.358223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472294, 36.734871, 46.316124>,  <36.291256, 36.579350, 46.290863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472294, 36.734871, 46.316124>,  <36.774021, 36.994076, 46.358223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472294, 36.734871, 46.316124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251667, -0.137354, -0.958017,
		0.606351, -0.749141, 0.266693,
		-0.754322, -0.648013, -0.105250,
		36.245998, 36.540466, 46.284550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016045, 36.462551, 45.893661>,  <36.774021, 36.994076, 46.358223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016045, 36.462551, 45.893661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619511, 36.411617, 45.880707>,  <36.381592, 36.381058, 45.872936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619511, 36.411617, 45.880707>,  <37.016045, 36.462551, 45.893661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619511, 36.411617, 45.880707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054114, -0.171099, -0.983767,
		0.119726, -0.976991, 0.176506,
		-0.991331, -0.127334, -0.032384,
		36.322113, 36.373417, 45.870991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833614, 35.876289, 45.529190>,  <37.016045, 36.462551, 45.893661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833614, 35.876289, 45.529190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488605, 36.073956, 45.485630>,  <36.281601, 36.192554, 45.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488605, 36.073956, 45.485630>,  <36.833614, 35.876289, 45.529190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488605, 36.073956, 45.485630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003232, -0.220583, -0.975363,
		-0.506014, -0.840917, 0.191854,
		-0.862519, 0.494168, -0.108900,
		36.229851, 36.222206, 45.452961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365002, 35.462608, 45.135155>,  <36.833614, 35.876289, 45.529190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365002, 35.462608, 45.135155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204556, 35.827847, 45.105854>,  <36.108288, 36.046989, 45.088276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204556, 35.827847, 45.105854>,  <36.365002, 35.462608, 45.135155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204556, 35.827847, 45.105854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003032, -0.078639, -0.996899,
		-0.916021, -0.400098, 0.028775,
		-0.401120, 0.913092, -0.073248,
		36.084221, 36.101776, 45.083881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872955, 35.320705, 44.685600>,  <36.365002, 35.462608, 45.135155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872955, 35.320705, 44.685600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938065, 35.715363, 44.688293>,  <35.977131, 35.952156, 44.689911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938065, 35.715363, 44.688293>,  <35.872955, 35.320705, 44.685600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938065, 35.715363, 44.688293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031463, 0.012013, -0.999433,
		-0.986162, 0.162471, 0.032998,
		0.162775, 0.986640, 0.006735,
		35.986897, 36.011356, 44.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288067, 35.624767, 44.426651>,  <35.872955, 35.320705, 44.685600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288067, 35.624767, 44.426651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591160, 35.877331, 44.360733>,  <35.773018, 36.028870, 44.321182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591160, 35.877331, 44.360733>,  <35.288067, 35.624767, 44.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591160, 35.877331, 44.360733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256335, 0.055768, -0.964978,
		-0.600106, 0.773441, 0.204110,
		0.757737, 0.631410, -0.164794,
		35.818481, 36.066753, 44.311295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012276, 36.013493, 43.898811>,  <35.288067, 35.624767, 44.426651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012276, 36.013493, 43.898811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405010, 36.089344, 43.896423>,  <35.640652, 36.134857, 43.894989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405010, 36.089344, 43.896423>,  <35.012276, 36.013493, 43.898811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405010, 36.089344, 43.896423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023959, 0.092695, -0.995406,
		-0.188206, 0.977470, 0.095555,
		0.981837, 0.189631, -0.005974,
		35.699562, 36.146233, 43.894630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068275, 36.529793, 43.412334>,  <35.012276, 36.013493, 43.898811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068275, 36.529793, 43.412334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436848, 36.388992, 43.478127>,  <35.657993, 36.304512, 43.517601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436848, 36.388992, 43.478127>,  <35.068275, 36.529793, 43.412334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436848, 36.388992, 43.478127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199850, 0.066346, -0.977578,
		0.333194, 0.933646, 0.131481,
		0.921435, -0.351999, 0.164483,
		35.713280, 36.283394, 43.527470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367599, 36.884056, 42.967342>,  <35.068275, 36.529793, 43.412334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367599, 36.884056, 42.967342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629681, 36.593361, 43.049870>,  <35.786930, 36.418945, 43.099384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629681, 36.593361, 43.049870>,  <35.367599, 36.884056, 42.967342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629681, 36.593361, 43.049870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150465, -0.142091, -0.978351,
		0.740318, 0.672060, 0.016251,
		0.655201, -0.726736, 0.206314,
		35.826241, 36.375340, 43.111763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967842, 37.067215, 42.543041>,  <35.367599, 36.884056, 42.967342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967842, 37.067215, 42.543041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956409, 36.679356, 42.640167>,  <35.949551, 36.446640, 42.698441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956409, 36.679356, 42.640167>,  <35.967842, 37.067215, 42.543041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956409, 36.679356, 42.640167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151721, -0.244305, -0.957756,
		0.988010, 0.009462, 0.154100,
		-0.028586, -0.969652, 0.242811,
		35.947834, 36.388458, 42.713009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518551, 36.664658, 42.110737>,  <35.967842, 37.067215, 42.543041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518551, 36.664658, 42.110737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263920, 36.378681, 42.226414>,  <36.111141, 36.207096, 42.295818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263920, 36.378681, 42.226414>,  <36.518551, 36.664658, 42.110737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263920, 36.378681, 42.226414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130488, -0.469422, -0.873278,
		0.760093, -0.518174, 0.392115,
		-0.636577, -0.714939, 0.289190,
		36.072945, 36.164200, 42.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772602, 36.071739, 41.785320>,  <36.518551, 36.664658, 42.110737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772602, 36.071739, 41.785320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388901, 35.989452, 41.862793>,  <36.158680, 35.940079, 41.909275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388901, 35.989452, 41.862793>,  <36.772602, 36.071739, 41.785320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388901, 35.989452, 41.862793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090219, -0.426584, -0.899937,
		0.267758, -0.880741, 0.390642,
		-0.959253, -0.205722, 0.193681,
		36.101124, 35.927734, 41.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691620, 35.430962, 41.481499>,  <36.772602, 36.071739, 41.785320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691620, 35.430962, 41.481499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316654, 35.561600, 41.529823>,  <36.091675, 35.639984, 41.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316654, 35.561600, 41.529823>,  <36.691620, 35.430962, 41.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316654, 35.561600, 41.529823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233591, -0.332466, -0.913730,
		-0.258255, -0.884761, 0.387947,
		-0.937411, 0.326596, 0.120811,
		36.035431, 35.659580, 41.566067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290447, 34.830505, 41.248528>,  <36.691620, 35.430962, 41.481499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290447, 34.830505, 41.248528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032497, 35.136147, 41.241699>,  <35.877728, 35.319530, 41.237602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032497, 35.136147, 41.241699>,  <36.290447, 34.830505, 41.248528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032497, 35.136147, 41.241699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337267, -0.304538, -0.890790,
		-0.685852, -0.568687, 0.454094,
		-0.644870, 0.764102, -0.017069,
		35.839035, 35.365376, 41.236580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680218, 34.538811, 41.178963>,  <36.290447, 34.830505, 41.248528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680218, 34.538811, 41.178963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686779, 34.915092, 41.043434>,  <35.690716, 35.140862, 40.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686779, 34.915092, 41.043434>,  <35.680218, 34.538811, 41.178963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686779, 34.915092, 41.043434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406424, -0.303335, -0.861863,
		-0.913537, 0.151839, 0.377352,
		0.016400, 0.940709, -0.338819,
		35.691700, 35.197304, 40.941788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122101, 34.524895, 40.780140>,  <35.680218, 34.538811, 41.178963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122101, 34.524895, 40.780140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300404, 34.855827, 40.643425>,  <35.407387, 35.054386, 40.561394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300404, 34.855827, 40.643425>,  <35.122101, 34.524895, 40.780140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300404, 34.855827, 40.643425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274149, -0.237301, -0.931950,
		-0.852140, 0.509126, 0.121033,
		0.445758, 0.827333, -0.341790,
		35.434132, 35.104027, 40.540890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825363, 34.560528, 40.063374>,  <35.122101, 34.524895, 40.780140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825363, 34.560528, 40.063374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131016, 34.818539, 40.061066>,  <35.314407, 34.973347, 40.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131016, 34.818539, 40.061066>,  <34.825363, 34.560528, 40.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131016, 34.818539, 40.061066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093780, -0.119933, -0.988343,
		-0.638202, 0.754688, -0.152136,
		0.764136, 0.645029, -0.005767,
		35.360256, 35.012047, 40.059334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694630, 35.056351, 39.470184>,  <34.825363, 34.560528, 40.063374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694630, 35.056351, 39.470184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084412, 35.086666, 39.554745>,  <35.318279, 35.104855, 39.605480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084412, 35.086666, 39.554745>,  <34.694630, 35.056351, 39.470184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084412, 35.086666, 39.554745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209129, 0.036890, -0.977192,
		-0.081859, 0.996441, 0.020098,
		0.974456, 0.075789, 0.211404,
		35.376747, 35.109402, 39.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984116, 35.768021, 39.144073>,  <34.694630, 35.056351, 39.470184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984116, 35.768021, 39.144073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296299, 35.524323, 39.200211>,  <35.483608, 35.378101, 39.233891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296299, 35.524323, 39.200211>,  <34.984116, 35.768021, 39.144073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296299, 35.524323, 39.200211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138087, -0.050947, -0.989109,
		0.609763, 0.791341, 0.044367,
		0.780462, -0.609249, 0.140339,
		35.530437, 35.341549, 39.242313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453152, 36.091930, 38.805187>,  <34.984116, 35.768021, 39.144073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453152, 36.091930, 38.805187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553776, 35.707760, 38.853016>,  <35.614151, 35.477257, 38.881714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553776, 35.707760, 38.853016>,  <35.453152, 36.091930, 38.805187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553776, 35.707760, 38.853016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150472, -0.083231, -0.985104,
		0.956074, 0.265801, 0.123580,
		0.251556, -0.960428, 0.119570,
		35.629242, 35.419632, 38.888885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023987, 35.978977, 38.297115>,  <35.453152, 36.091930, 38.805187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023987, 35.978977, 38.297115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877640, 35.619522, 38.393936>,  <35.789833, 35.403851, 38.452030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877640, 35.619522, 38.393936>,  <36.023987, 35.978977, 38.297115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877640, 35.619522, 38.393936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298492, -0.359654, -0.884054,
		0.881502, -0.251193, 0.399821,
		-0.365865, -0.898639, 0.242056,
		35.767879, 35.349930, 38.466553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390610, 35.459892, 37.750572>,  <36.023987, 35.978977, 38.297115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390610, 35.459892, 37.750572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110054, 35.226189, 37.913883>,  <35.941723, 35.085964, 38.011871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110054, 35.226189, 37.913883>,  <36.390610, 35.459892, 37.750572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110054, 35.226189, 37.913883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029666, -0.596232, -0.802263,
		0.712163, -0.550585, 0.435523,
		-0.701387, -0.584263, 0.408281,
		35.899639, 35.050911, 38.036369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628216, 34.679028, 37.887608>,  <36.390610, 35.459892, 37.750572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628216, 34.679028, 37.887608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232159, 34.711525, 37.841972>,  <35.994526, 34.731022, 37.814590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232159, 34.711525, 37.841972>,  <36.628216, 34.679028, 37.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232159, 34.711525, 37.841972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024296, -0.702592, -0.711178,
		-0.137936, -0.706939, 0.693693,
		-0.990143, 0.081243, -0.114089,
		35.935116, 34.735897, 37.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963444, 34.537899, 38.473900>,  <36.628216, 34.679028, 37.887608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963444, 34.537899, 38.473900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362896, 34.529194, 38.454872>,  <37.602566, 34.523972, 38.443455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362896, 34.529194, 38.454872>,  <36.963444, 34.537899, 38.473900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362896, 34.529194, 38.454872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049155, 0.079538, 0.995619,
		-0.017885, -0.996594, 0.080499,
		0.998631, -0.021764, -0.047565,
		37.662487, 34.522667, 38.440601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199570, 33.971851, 38.862431>,  <36.963444, 34.537899, 38.473900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199570, 33.971851, 38.862431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524170, 34.204849, 38.843784>,  <37.718929, 34.344646, 38.832596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524170, 34.204849, 38.843784>,  <37.199570, 33.971851, 38.862431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524170, 34.204849, 38.843784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094715, -0.052403, 0.994124,
		0.576627, -0.811145, -0.097696,
		0.811499, 0.582492, -0.046611,
		37.767620, 34.379597, 38.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556026, 33.713688, 39.253841>,  <37.199570, 33.971851, 38.862431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556026, 33.713688, 39.253841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774200, 34.047699, 39.224926>,  <37.905106, 34.248104, 39.207577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774200, 34.047699, 39.224926>,  <37.556026, 33.713688, 39.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774200, 34.047699, 39.224926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291801, -0.108333, 0.950325,
		0.785715, -0.539438, -0.302751,
		0.545439, 0.835027, -0.072290,
		37.937832, 34.298206, 39.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184139, 33.659618, 39.560802>,  <37.556026, 33.713688, 39.253841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184139, 33.659618, 39.560802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178631, 34.059425, 39.571987>,  <38.175327, 34.299309, 39.578697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178631, 34.059425, 39.571987>,  <38.184139, 33.659618, 39.560802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178631, 34.059425, 39.571987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074928, -0.026856, 0.996827,
		0.997094, 0.015823, -0.074521,
		-0.013771, 0.999514, 0.027964,
		38.174500, 34.359280, 39.580376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816364, 33.865444, 40.013775>,  <38.184139, 33.659618, 39.560802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816364, 33.865444, 40.013775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559715, 34.172165, 40.021130>,  <38.405724, 34.356197, 40.025543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559715, 34.172165, 40.021130>,  <38.816364, 33.865444, 40.013775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559715, 34.172165, 40.021130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174811, 0.122848, 0.976908,
		0.746833, 0.630022, -0.212868,
		-0.641624, 0.766799, 0.018388,
		38.367229, 34.402206, 40.026646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224995, 34.389030, 40.301785>,  <38.816364, 33.865444, 40.013775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224995, 34.389030, 40.301785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847202, 34.514400, 40.341244>,  <38.620529, 34.589622, 40.364922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847202, 34.514400, 40.341244>,  <39.224995, 34.389030, 40.301785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847202, 34.514400, 40.341244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210704, 0.347334, 0.913763,
		0.252128, 0.883814, -0.394088,
		-0.944476, 0.313421, 0.098650,
		38.563858, 34.608425, 40.370838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182480, 35.139420, 40.471474>,  <39.224995, 34.389030, 40.301785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182480, 35.139420, 40.471474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849514, 34.956287, 40.596359>,  <38.649734, 34.846409, 40.671291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849514, 34.956287, 40.596359>,  <39.182480, 35.139420, 40.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849514, 34.956287, 40.596359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097569, 0.433518, 0.895847,
		-0.545492, 0.776182, -0.316198,
		-0.832418, -0.457826, 0.312212,
		38.599789, 34.818939, 40.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038826, 35.580128, 41.026173>,  <39.182480, 35.139420, 40.471474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038826, 35.580128, 41.026173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788960, 35.271999, 41.077400>,  <38.639042, 35.087124, 41.108139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788960, 35.271999, 41.077400>,  <39.038826, 35.580128, 41.026173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788960, 35.271999, 41.077400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073787, 0.221498, 0.972365,
		-0.777400, 0.597951, -0.195201,
		-0.624664, -0.770320, 0.128072,
		38.601559, 35.040905, 41.115822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431591, 35.857994, 41.358753>,  <39.038826, 35.580128, 41.026173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431591, 35.857994, 41.358753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451523, 35.467106, 41.441265>,  <38.463482, 35.232571, 41.490772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451523, 35.467106, 41.441265>,  <38.431591, 35.857994, 41.358753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451523, 35.467106, 41.441265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259583, 0.186769, 0.947488,
		-0.964435, -0.100758, -0.244365,
		0.049827, -0.977223, 0.206282,
		38.466473, 35.173939, 41.503151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867115, 35.700226, 41.682304>,  <38.431591, 35.857994, 41.358753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867115, 35.700226, 41.682304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090309, 35.378452, 41.763824>,  <38.224228, 35.185387, 41.812737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090309, 35.378452, 41.763824>,  <37.867115, 35.700226, 41.682304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090309, 35.378452, 41.763824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330098, 0.010163, 0.943892,
		-0.761370, -0.593955, -0.259871,
		0.557988, -0.804434, 0.203801,
		38.257706, 35.137123, 41.824966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520714, 35.366249, 42.220066>,  <37.867115, 35.700226, 41.682304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520714, 35.366249, 42.220066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899841, 35.240273, 42.239887>,  <38.127316, 35.164688, 42.251778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899841, 35.240273, 42.239887>,  <37.520714, 35.366249, 42.220066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899841, 35.240273, 42.239887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025461, 0.080148, 0.996458,
		-0.317799, -0.945720, 0.067946,
		0.947817, -0.314943, 0.049550,
		38.184185, 35.145790, 42.254753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631546, 34.816273, 42.851677>,  <37.520714, 35.366249, 42.220066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631546, 34.816273, 42.851677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988010, 34.979294, 42.771942>,  <38.201889, 35.077106, 42.724102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988010, 34.979294, 42.771942>,  <37.631546, 34.816273, 42.851677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988010, 34.979294, 42.771942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208535, 0.022239, 0.977762,
		0.402927, -0.912909, -0.065171,
		0.891158, 0.407557, -0.199335,
		38.255360, 35.101562, 42.712143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204021, 34.373741, 43.280781>,  <37.631546, 34.816273, 42.851677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204021, 34.373741, 43.280781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358910, 34.731236, 43.190193>,  <38.451843, 34.945732, 43.135841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358910, 34.731236, 43.190193>,  <38.204021, 34.373741, 43.280781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358910, 34.731236, 43.190193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225060, 0.146574, 0.963257,
		0.894096, -0.423963, -0.144388,
		0.387222, 0.893740, -0.226469,
		38.475075, 34.999359, 43.122253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947262, 34.254158, 43.456112>,  <38.204021, 34.373741, 43.280781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947262, 34.254158, 43.456112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842319, 34.639999, 43.466808>,  <38.779354, 34.871502, 43.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842319, 34.639999, 43.466808>,  <38.947262, 34.254158, 43.456112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842319, 34.639999, 43.466808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350457, 0.069427, 0.934002,
		0.899082, 0.254415, -0.356266,
		-0.262358, 0.964600, 0.026741,
		38.763611, 34.929379, 43.474831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556934, 34.529400, 43.803829>,  <38.947262, 34.254158, 43.456112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556934, 34.529400, 43.803829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 34.829159, 43.830666>,  <39.135357, 35.009014, 43.846767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 34.829159, 43.830666>,  <39.556934, 34.529400, 43.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293449, 34.829159, 43.830666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399132, 0.272451, 0.875480,
		0.637801, 0.603469, -0.478575,
		-0.658713, 0.749397, 0.067094,
		39.095837, 35.053978, 43.850792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834217, 34.965580, 44.230415>,  <39.556934, 34.529400, 43.803829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834217, 34.965580, 44.230415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462841, 35.113491, 44.244637>,  <39.240017, 35.202236, 44.253170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462841, 35.113491, 44.244637>,  <39.834217, 34.965580, 44.230415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462841, 35.113491, 44.244637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116680, 0.199424, 0.972942,
		0.352684, 0.907466, -0.228298,
		-0.928439, 0.369779, 0.035549,
		39.184311, 35.224426, 44.255302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749268, 35.755932, 44.504883>,  <39.834217, 34.965580, 44.230415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749268, 35.755932, 44.504883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408791, 35.559513, 44.579010>,  <39.204502, 35.441662, 44.623486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408791, 35.559513, 44.579010>,  <39.749268, 35.755932, 44.504883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408791, 35.559513, 44.579010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048306, 0.424888, 0.903956,
		-0.522621, 0.760491, -0.385383,
		-0.851195, -0.491043, 0.185319,
		39.153431, 35.412201, 44.634605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331272, 36.159634, 44.951153>,  <39.749268, 35.755932, 44.504883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331272, 36.159634, 44.951153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133686, 35.817764, 45.015076>,  <39.015137, 35.612644, 45.053429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133686, 35.817764, 45.015076>,  <39.331272, 36.159634, 44.951153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133686, 35.817764, 45.015076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199838, 0.290469, 0.935785,
		-0.846207, 0.430307, -0.314276,
		-0.493962, -0.854672, 0.159805,
		38.985497, 35.561363, 45.063019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691265, 36.334843, 45.158894>,  <39.331272, 36.159634, 44.951153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691265, 36.334843, 45.158894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711193, 35.952934, 45.276150>,  <38.723148, 35.723789, 45.346504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711193, 35.952934, 45.276150>,  <38.691265, 36.334843, 45.158894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711193, 35.952934, 45.276150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480263, 0.234447, 0.845211,
		-0.875709, -0.182892, -0.446861,
		0.049817, -0.954770, 0.293144,
		38.726139, 35.666504, 45.364094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074669, 36.113247, 45.410027>,  <38.691265, 36.334843, 45.158894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074669, 36.113247, 45.410027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327511, 35.851654, 45.576283>,  <38.479218, 35.694698, 45.676037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327511, 35.851654, 45.576283>,  <38.074669, 36.113247, 45.410027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327511, 35.851654, 45.576283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210902, 0.370944, 0.904390,
		-0.745631, -0.659328, 0.096550,
		0.632104, -0.653978, 0.415641,
		38.517143, 35.655460, 45.700974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661816, 35.908478, 45.991535>,  <38.074669, 36.113247, 45.410027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661816, 35.908478, 45.991535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043327, 35.812511, 46.063915>,  <38.272236, 35.754932, 46.107342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043327, 35.812511, 46.063915>,  <37.661816, 35.908478, 45.991535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043327, 35.812511, 46.063915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128089, 0.220131, 0.967024,
		-0.271836, -0.945507, 0.179227,
		0.953781, -0.239915, 0.180949,
		38.329460, 35.740536, 46.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637993, 35.598305, 46.627605>,  <37.661816, 35.908478, 45.991535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637993, 35.598305, 46.627605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024048, 35.694088, 46.585323>,  <38.255680, 35.751560, 46.559956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024048, 35.694088, 46.585323>,  <37.637993, 35.598305, 46.627605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024048, 35.694088, 46.585323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075849, 0.130660, 0.988522,
		0.250527, -0.962073, 0.107941,
		0.965134, 0.239464, -0.105706,
		38.313587, 35.765926, 46.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969551, 35.223221, 47.127438>,  <37.637993, 35.598305, 46.627605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969551, 35.223221, 47.127438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222691, 35.514023, 47.020882>,  <38.374573, 35.688503, 46.956947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222691, 35.514023, 47.020882>,  <37.969551, 35.223221, 47.127438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222691, 35.514023, 47.020882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061981, 0.390515, 0.918508,
		0.771793, -0.564762, 0.292196,
		0.632845, 0.727009, -0.266392,
		38.412544, 35.732124, 46.940964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486843, 35.287487, 47.700432>,  <37.969551, 35.223221, 47.127438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486843, 35.287487, 47.700432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461872, 35.631966, 47.498661>,  <38.446888, 35.838654, 47.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461872, 35.631966, 47.498661>,  <38.486843, 35.287487, 47.700432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461872, 35.631966, 47.498661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001373, 0.505341, 0.862919,
		0.998048, 0.054566, -0.030366,
		-0.062431, 0.861193, -0.504430,
		38.443142, 35.890324, 47.347332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085415, 35.634048, 47.948460>,  <38.486843, 35.287487, 47.700432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085415, 35.634048, 47.948460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811020, 35.891457, 47.812630>,  <38.646385, 36.045902, 47.731133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811020, 35.891457, 47.812630>,  <39.085415, 35.634048, 47.948460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811020, 35.891457, 47.812630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029788, 0.491138, 0.870572,
		0.727008, 0.587082, -0.356082,
		-0.685983, 0.643520, -0.339573,
		38.605225, 36.084511, 47.710758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319248, 36.364716, 48.140759>,  <39.085415, 35.634048, 47.948460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319248, 36.364716, 48.140759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925793, 36.385094, 48.071636>,  <38.689720, 36.397320, 48.030163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925793, 36.385094, 48.071636>,  <39.319248, 36.364716, 48.140759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925793, 36.385094, 48.071636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058609, 0.816504, 0.574356,
		0.170357, 0.575086, -0.800159,
		-0.983638, 0.050949, -0.172802,
		38.630703, 36.400379, 48.019794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113808, 37.074379, 48.082249>,  <39.319248, 36.364716, 48.140759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113808, 37.074379, 48.082249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757774, 36.902275, 48.142422>,  <38.544155, 36.799011, 48.178524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757774, 36.902275, 48.142422>,  <39.113808, 37.074379, 48.082249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757774, 36.902275, 48.142422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252457, 0.740165, 0.623235,
		-0.379498, 0.516752, -0.767430,
		-0.890082, -0.430260, 0.150434,
		38.490749, 36.773197, 48.187553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711693, 37.707577, 48.154102>,  <39.113808, 37.074379, 48.082249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711693, 37.707577, 48.154102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479248, 37.407303, 48.279819>,  <38.339783, 37.227139, 48.355251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479248, 37.407303, 48.279819>,  <38.711693, 37.707577, 48.154102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479248, 37.407303, 48.279819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509617, 0.636761, 0.578642,
		-0.634510, 0.176083, -0.752590,
		-0.581109, -0.750687, 0.314296,
		38.304916, 37.182098, 48.374107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992565, 37.778187, 48.038334>,  <38.711693, 37.707577, 48.154102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992565, 37.778187, 48.038334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972027, 37.525494, 48.347729>,  <37.959702, 37.373878, 48.533367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972027, 37.525494, 48.347729>,  <37.992565, 37.778187, 48.038334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972027, 37.525494, 48.347729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412846, 0.718660, 0.559542,
		-0.909352, -0.290598, -0.297710,
		-0.051350, -0.631729, 0.773487,
		37.956623, 37.335976, 48.579773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348724, 37.874348, 48.352253>,  <37.992565, 37.778187, 48.038334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348724, 37.874348, 48.352253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570782, 37.709930, 48.641491>,  <37.704014, 37.611279, 48.815033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570782, 37.709930, 48.641491>,  <37.348724, 37.874348, 48.352253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570782, 37.709930, 48.641491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429220, 0.603085, 0.672354,
		-0.712454, -0.683615, 0.158367,
		0.555140, -0.411047, 0.723091,
		37.737324, 37.586617, 48.858418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907864, 37.744072, 48.806278>,  <37.348724, 37.874348, 48.352253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907864, 37.744072, 48.806278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239445, 37.748852, 49.029953>,  <37.438393, 37.751720, 49.164158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239445, 37.748852, 49.029953>,  <36.907864, 37.744072, 48.806278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239445, 37.748852, 49.029953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528536, 0.343821, 0.776168,
		-0.182987, -0.938959, 0.291327,
		0.828955, 0.011948, 0.559188,
		37.488132, 37.752438, 49.197708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684120, 37.428860, 49.469112>,  <36.907864, 37.744072, 48.806278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684120, 37.428860, 49.469112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020901, 37.631145, 49.544334>,  <37.222969, 37.752518, 49.589466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020901, 37.631145, 49.544334>,  <36.684120, 37.428860, 49.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020901, 37.631145, 49.544334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340171, 0.227005, 0.912553,
		0.418801, -0.832299, 0.363157,
		0.841956, 0.505714, 0.188054,
		37.273487, 37.782860, 49.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950386, 37.248508, 50.129143>,  <36.684120, 37.428860, 49.469112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950386, 37.248508, 50.129143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107635, 37.613041, 50.080276>,  <37.201984, 37.831760, 50.050957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107635, 37.613041, 50.080276>,  <36.950386, 37.248508, 50.129143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107635, 37.613041, 50.080276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300944, 0.253067, 0.919451,
		0.868843, -0.324692, 0.373747,
		0.393121, 0.911336, -0.122161,
		37.225571, 37.886440, 50.043629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202641, 37.447842, 50.813103>,  <36.950386, 37.248508, 50.129143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202641, 37.447842, 50.813103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177315, 37.794983, 50.615997>,  <37.162121, 38.003269, 50.497734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177315, 37.794983, 50.615997>,  <37.202641, 37.447842, 50.813103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177315, 37.794983, 50.615997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401902, 0.429779, 0.808558,
		0.913492, 0.249235, 0.321583,
		-0.063311, 0.867855, -0.492767,
		37.158321, 38.055340, 50.468166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276848, 37.935173, 51.380466>,  <37.202641, 37.447842, 50.813103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276848, 37.935173, 51.380466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142536, 38.163078, 51.080433>,  <37.061951, 38.299824, 50.900414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142536, 38.163078, 51.080433>,  <37.276848, 37.935173, 51.380466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142536, 38.163078, 51.080433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386038, 0.643125, 0.661335,
		0.859201, 0.511622, 0.004004,
		-0.335779, 0.569766, -0.750080,
		37.041801, 38.334007, 50.855408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446747, 38.657078, 51.559284>,  <37.276848, 37.935173, 51.380466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446747, 38.657078, 51.559284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150509, 38.691887, 51.292767>,  <36.972767, 38.712772, 51.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150509, 38.691887, 51.292767>,  <37.446747, 38.657078, 51.559284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150509, 38.691887, 51.292767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365404, 0.779990, 0.508031,
		0.563913, 0.619711, -0.545857,
		-0.740596, 0.087027, -0.666291,
		36.928329, 38.717995, 51.092880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353416, 39.443367, 51.438347>,  <37.446747, 38.657078, 51.559284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353416, 39.443367, 51.438347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021336, 39.265839, 51.303417>,  <36.822086, 39.159321, 51.222458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021336, 39.265839, 51.303417>,  <37.353416, 39.443367, 51.438347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021336, 39.265839, 51.303417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555503, 0.709330, 0.433899,
		0.046703, 0.547609, -0.835430,
		-0.830202, -0.443820, -0.337326,
		36.772274, 39.132694, 51.202221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752647, 40.137695, 51.493153>,  <37.353416, 39.443367, 51.438347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752647, 40.137695, 51.493153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070274, 40.380554, 51.504684>,  <38.260849, 40.526268, 51.511604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070274, 40.380554, 51.504684>,  <37.752647, 40.137695, 51.493153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070274, 40.380554, 51.504684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412181, -0.503010, -0.759663,
		-0.446724, 0.615107, -0.649678,
		0.794068, 0.607145, 0.028828,
		38.308495, 40.562698, 51.513332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968372, 40.300282, 50.740494>,  <37.752647, 40.137695, 51.493153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968372, 40.300282, 50.740494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295544, 40.427536, 50.932236>,  <38.491848, 40.503887, 51.047283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295544, 40.427536, 50.932236>,  <37.968372, 40.300282, 50.740494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295544, 40.427536, 50.932236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565675, -0.292769, -0.770907,
		-0.104912, 0.901707, -0.419425,
		0.817927, 0.318136, 0.479358,
		38.540920, 40.522976, 51.076042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347443, 40.611221, 50.274471>,  <37.968372, 40.300282, 50.740494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347443, 40.611221, 50.274471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641354, 40.562721, 50.541424>,  <38.817699, 40.533623, 50.701595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641354, 40.562721, 50.541424>,  <38.347443, 40.611221, 50.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641354, 40.562721, 50.541424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649112, -0.159877, -0.743702,
		0.196870, 0.979663, -0.038772,
		0.734776, -0.121246, 0.667386,
		38.861786, 40.526348, 50.741638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929104, 40.966084, 49.946140>,  <38.347443, 40.611221, 50.274471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929104, 40.966084, 49.946140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085739, 40.715202, 50.215443>,  <39.179722, 40.564674, 50.377026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085739, 40.715202, 50.215443>,  <38.929104, 40.966084, 49.946140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085739, 40.715202, 50.215443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765090, -0.184537, -0.616915,
		0.511170, 0.756681, 0.407602,
		0.391590, -0.627200, 0.673259,
		39.203217, 40.527042, 50.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653992, 41.016529, 49.980545>,  <38.929104, 40.966084, 49.946140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653992, 41.016529, 49.980545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582542, 40.655037, 50.136166>,  <39.539673, 40.438141, 50.229538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582542, 40.655037, 50.136166>,  <39.653992, 41.016529, 49.980545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582542, 40.655037, 50.136166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656332, -0.404026, -0.637175,
		0.733022, 0.141531, 0.665317,
		-0.178625, -0.903732, 0.389051,
		39.528954, 40.383919, 50.252880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275562, 40.761780, 50.089375>,  <39.653992, 41.016529, 49.980545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275562, 40.761780, 50.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063461, 40.422649, 50.087315>,  <39.936199, 40.219173, 50.086079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063461, 40.422649, 50.087315>,  <40.275562, 40.761780, 50.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063461, 40.422649, 50.087315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603516, -0.373181, -0.704631,
		0.595482, -0.376739, 0.709556,
		-0.530254, -0.847823, -0.005146,
		39.904385, 40.168301, 50.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768368, 40.207066, 49.989834>,  <40.275562, 40.761780, 50.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768368, 40.207066, 49.989834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414951, 40.054996, 49.880421>,  <40.202900, 39.963753, 49.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414951, 40.054996, 49.880421>,  <40.768368, 40.207066, 49.989834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414951, 40.054996, 49.880421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418553, -0.378887, -0.825384,
		0.210154, -0.843748, 0.493887,
		-0.883543, -0.380176, -0.273528,
		40.149887, 39.940945, 49.798363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935631, 39.564201, 49.792778>,  <40.768368, 40.207066, 49.989834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935631, 39.564201, 49.792778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589287, 39.592224, 49.594635>,  <40.381481, 39.609035, 49.475750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589287, 39.592224, 49.594635>,  <40.935631, 39.564201, 49.792778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589287, 39.592224, 49.594635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392424, -0.519050, -0.759335,
		-0.310312, -0.851868, 0.421933,
		-0.865858, 0.070054, -0.495361,
		40.329529, 39.613239, 49.446026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785530, 38.813747, 49.539886>,  <40.935631, 39.564201, 49.792778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785530, 38.813747, 49.539886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582573, 39.087708, 49.330708>,  <40.460800, 39.252083, 49.205200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582573, 39.087708, 49.330708>,  <40.785530, 38.813747, 49.539886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582573, 39.087708, 49.330708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279512, -0.443241, -0.851710,
		-0.815125, -0.578318, 0.033459,
		-0.507390, 0.684898, -0.522944,
		40.430355, 39.293179, 49.173824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291756, 38.432571, 48.979893>,  <40.785530, 38.813747, 49.539886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291756, 38.432571, 48.979893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322613, 38.799561, 48.823792>,  <40.341125, 39.019753, 48.730129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322613, 38.799561, 48.823792>,  <40.291756, 38.432571, 48.979893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322613, 38.799561, 48.823792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140125, -0.397513, -0.906835,
		-0.987124, 0.015271, -0.159225,
		0.077142, 0.917470, -0.390254,
		40.345757, 39.074802, 48.706715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789841, 38.399239, 48.436825>,  <40.291756, 38.432571, 48.979893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789841, 38.399239, 48.436825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016598, 38.718113, 48.353760>,  <40.152653, 38.909439, 48.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016598, 38.718113, 48.353760>,  <39.789841, 38.399239, 48.436825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016598, 38.718113, 48.353760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145868, -0.345236, -0.927111,
		-0.810773, 0.495284, -0.311997,
		0.566895, 0.797186, -0.207662,
		40.186665, 38.957268, 48.291462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578552, 38.804790, 47.873161>,  <39.789841, 38.399239, 48.436825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578552, 38.804790, 47.873161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966938, 38.899467, 47.887012>,  <40.199970, 38.956272, 47.895325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966938, 38.899467, 47.887012>,  <39.578552, 38.804790, 47.873161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966938, 38.899467, 47.887012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075470, -0.165745, -0.983277,
		-0.226994, 0.957343, -0.178796,
		0.970968, 0.236691, 0.034628,
		40.258228, 38.970474, 47.897400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705013, 39.184776, 47.195732>,  <39.578552, 38.804790, 47.873161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705013, 39.184776, 47.195732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058670, 39.059231, 47.334167>,  <40.270866, 38.983902, 47.417229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058670, 39.059231, 47.334167>,  <39.705013, 39.184776, 47.195732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058670, 39.059231, 47.334167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327812, -0.111075, -0.938190,
		0.332905, 0.942949, 0.004682,
		0.884145, -0.313863, 0.346088,
		40.323914, 38.965073, 47.437992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178032, 39.391781, 46.621098>,  <39.705013, 39.184776, 47.195732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178032, 39.391781, 46.621098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376396, 39.118149, 46.835049>,  <40.495415, 38.953968, 46.963421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376396, 39.118149, 46.835049>,  <40.178032, 39.391781, 46.621098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376396, 39.118149, 46.835049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424324, -0.346518, -0.836585,
		0.757641, 0.641836, 0.118431,
		0.495912, -0.684085, 0.534882,
		40.525169, 38.912922, 46.995514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869209, 39.414173, 46.425461>,  <40.178032, 39.391781, 46.621098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869209, 39.414173, 46.425461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831341, 39.039036, 46.559021>,  <40.808620, 38.813953, 46.639156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831341, 39.039036, 46.559021>,  <40.869209, 39.414173, 46.425461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831341, 39.039036, 46.559021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398407, -0.343072, -0.850632,
		0.912310, 0.052500, 0.406121,
		-0.094670, -0.937841, 0.333904,
		40.802940, 38.757683, 46.659191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510075, 38.967415, 46.178883>,  <40.869209, 39.414173, 46.425461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510075, 38.967415, 46.178883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224045, 38.714413, 46.297943>,  <41.052425, 38.562611, 46.369381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224045, 38.714413, 46.297943>,  <41.510075, 38.967415, 46.178883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224045, 38.714413, 46.297943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298554, -0.661345, -0.688105,
		0.632086, -0.403181, 0.661749,
		-0.715075, -0.632509, 0.297656,
		41.009521, 38.524658, 46.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773460, 38.303467, 46.166649>,  <41.510075, 38.967415, 46.178883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773460, 38.303467, 46.166649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378952, 38.237560, 46.162380>,  <41.142246, 38.198017, 46.159821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378952, 38.237560, 46.162380>,  <41.773460, 38.303467, 46.166649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378952, 38.237560, 46.162380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121321, -0.679335, -0.723730,
		0.111999, -0.715091, 0.690001,
		-0.986275, -0.164768, -0.010671,
		41.083069, 38.188129, 46.159180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769279, 37.649239, 45.936832>,  <41.773460, 38.303467, 46.166649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769279, 37.649239, 45.936832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 37.774139, 45.900871>,  <41.164013, 37.849079, 45.879295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 37.774139, 45.900871>,  <41.769279, 37.649239, 45.936832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390987, 37.774139, 45.900871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200691, -0.778909, -0.594158,
		-0.255559, -0.543872, 0.799308,
		-0.945734, 0.312256, -0.089907,
		41.107265, 37.867817, 45.873898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298656, 37.034454, 45.923664>,  <41.769279, 37.649239, 45.936832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298656, 37.034454, 45.923664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094597, 37.334068, 45.754578>,  <40.972160, 37.513836, 45.653126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094597, 37.334068, 45.754578>,  <41.298656, 37.034454, 45.923664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094597, 37.334068, 45.754578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298905, -0.615252, -0.729467,
		-0.806476, -0.245784, 0.537761,
		-0.510150, 0.749037, -0.422719,
		40.941551, 37.558781, 45.627762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628971, 36.812988, 45.799946>,  <41.298656, 37.034454, 45.923664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628971, 36.812988, 45.799946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698532, 37.110600, 45.541901>,  <40.740269, 37.289165, 45.387074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698532, 37.110600, 45.541901>,  <40.628971, 36.812988, 45.799946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698532, 37.110600, 45.541901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249114, -0.600554, -0.759787,
		-0.952734, 0.292834, 0.080912,
		0.173900, 0.744031, -0.645117,
		40.750702, 37.333809, 45.348366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153820, 36.722492, 45.321796>,  <40.628971, 36.812988, 45.799946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153820, 36.722492, 45.321796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380501, 36.994617, 45.135883>,  <40.516510, 37.157894, 45.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380501, 36.994617, 45.135883>,  <40.153820, 36.722492, 45.321796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380501, 36.994617, 45.135883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150144, -0.469391, -0.870132,
		-0.810127, 0.562889, -0.163859,
		0.566701, 0.680315, -0.464781,
		40.550510, 37.198711, 44.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800072, 36.885387, 44.733891>,  <40.153820, 36.722492, 45.321796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800072, 36.885387, 44.733891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178879, 36.965424, 44.633400>,  <40.406162, 37.013447, 44.573105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178879, 36.965424, 44.633400>,  <39.800072, 36.885387, 44.733891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178879, 36.965424, 44.633400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099472, -0.561028, -0.821799,
		-0.305380, 0.803251, -0.511401,
		0.947021, 0.200091, -0.251228,
		40.462986, 37.025452, 44.558033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825283, 37.144470, 44.060646>,  <39.800072, 36.885387, 44.733891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825283, 37.144470, 44.060646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210068, 37.042622, 44.100227>,  <40.440941, 36.981510, 44.123974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210068, 37.042622, 44.100227>,  <39.825283, 37.144470, 44.060646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210068, 37.042622, 44.100227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019449, -0.297465, -0.954535,
		0.272482, 0.920153, -0.281198,
		0.961964, -0.254625, 0.098950,
		40.498657, 36.966232, 44.129913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105957, 37.441818, 43.490318>,  <39.825283, 37.144470, 44.060646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105957, 37.441818, 43.490318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367973, 37.168369, 43.619057>,  <40.525185, 37.004299, 43.696301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367973, 37.168369, 43.619057>,  <40.105957, 37.441818, 43.490318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367973, 37.168369, 43.619057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166859, -0.284559, -0.944025,
		0.736937, 0.672081, -0.072331,
		0.655044, -0.683618, 0.321845,
		40.564487, 36.963284, 43.715611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685276, 37.606968, 43.136856>,  <40.105957, 37.441818, 43.490318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685276, 37.606968, 43.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659321, 37.223450, 43.247494>,  <40.643745, 36.993340, 43.313877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659321, 37.223450, 43.247494>,  <40.685276, 37.606968, 43.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659321, 37.223450, 43.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133974, -0.283041, -0.949705,
		0.988858, -0.024572, 0.146820,
		-0.064892, -0.958793, 0.276595,
		40.639854, 36.935810, 43.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083141, 37.218071, 42.628689>,  <40.685276, 37.606968, 43.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083141, 37.218071, 42.628689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968712, 36.892838, 42.831490>,  <40.900055, 36.697697, 42.953171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968712, 36.892838, 42.831490>,  <41.083141, 37.218071, 42.628689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968712, 36.892838, 42.831490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184194, -0.565910, -0.803628,
		0.940338, -0.136507, 0.311656,
		-0.286071, -0.813087, 0.507003,
		40.882889, 36.648911, 42.983589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622353, 36.636772, 42.605129>,  <41.083141, 37.218071, 42.628689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622353, 36.636772, 42.605129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288612, 36.430164, 42.682148>,  <41.088367, 36.306198, 42.728359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288612, 36.430164, 42.682148>,  <41.622353, 36.636772, 42.605129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288612, 36.430164, 42.682148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176478, -0.581200, -0.794394,
		0.522227, -0.628820, 0.576077,
		-0.834347, -0.516519, 0.192545,
		41.038307, 36.275208, 42.739910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764038, 35.845444, 42.638851>,  <41.622353, 36.636772, 42.605129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764038, 35.845444, 42.638851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379723, 35.901875, 42.543373>,  <41.149132, 35.935730, 42.486084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379723, 35.901875, 42.543373>,  <41.764038, 35.845444, 42.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379723, 35.901875, 42.543373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150674, -0.457037, -0.876593,
		-0.232756, -0.878189, 0.417862,
		-0.960793, 0.141072, -0.238698,
		41.091484, 35.944195, 42.471764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535709, 35.298836, 42.401421>,  <41.764038, 35.845444, 42.638851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535709, 35.298836, 42.401421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249802, 35.535660, 42.252518>,  <41.078259, 35.677753, 42.163174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249802, 35.535660, 42.252518>,  <41.535709, 35.298836, 42.401421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249802, 35.535660, 42.252518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044196, -0.492982, -0.868916,
		-0.697966, -0.637524, 0.326200,
		-0.714766, 0.592057, -0.372261,
		41.035370, 35.713276, 42.140839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959354, 34.839344, 42.053638>,  <41.535709, 35.298836, 42.401421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959354, 34.839344, 42.053638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971741, 35.203960, 41.889622>,  <40.979172, 35.422729, 41.791210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971741, 35.203960, 41.889622>,  <40.959354, 34.839344, 42.053638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971741, 35.203960, 41.889622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030612, -0.410913, -0.911161,
		-0.999052, 0.015663, -0.040628,
		0.030967, 0.911540, -0.410044,
		40.981030, 35.477421, 41.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705811, 34.729706, 41.375286>,  <40.959354, 34.839344, 42.053638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705811, 34.729706, 41.375286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798016, 35.118160, 41.350758>,  <40.853336, 35.351234, 41.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798016, 35.118160, 41.350758>,  <40.705811, 34.729706, 41.375286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798016, 35.118160, 41.350758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135300, -0.094392, -0.986298,
		-0.963618, 0.219053, -0.153152,
		0.230508, 0.971136, -0.061320,
		40.867168, 35.409500, 41.332363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352364, 35.011131, 40.811184>,  <40.705811, 34.729706, 41.375286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352364, 35.011131, 40.811184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669159, 35.248379, 40.869095>,  <40.859238, 35.390728, 40.903843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669159, 35.248379, 40.869095>,  <40.352364, 35.011131, 40.811184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669159, 35.248379, 40.869095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325153, -0.209055, -0.922265,
		-0.516743, 0.777503, -0.358423,
		0.791993, 0.593115, 0.144780,
		40.906757, 35.426315, 40.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349617, 35.524658, 40.265938>,  <40.352364, 35.011131, 40.811184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349617, 35.524658, 40.265938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722023, 35.538837, 40.411243>,  <40.945465, 35.547344, 40.498428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722023, 35.538837, 40.411243>,  <40.349617, 35.524658, 40.265938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722023, 35.538837, 40.411243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363295, -0.185877, -0.912944,
		0.035160, 0.981933, -0.185932,
		0.931011, 0.035449, 0.363266,
		41.001328, 35.549473, 40.520222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657753, 36.088490, 39.872215>,  <40.349617, 35.524658, 40.265938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657753, 36.088490, 39.872215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951946, 35.841042, 39.982761>,  <41.128460, 35.692574, 40.049091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951946, 35.841042, 39.982761>,  <40.657753, 36.088490, 39.872215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951946, 35.841042, 39.982761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270214, -0.106246, -0.956920,
		0.621334, 0.778473, 0.089018,
		0.735478, -0.618621, 0.276368,
		41.172588, 35.655457, 40.065670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329529, 36.268402, 39.568993>,  <40.657753, 36.088490, 39.872215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329529, 36.268402, 39.568993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447155, 35.904236, 39.685383>,  <41.517731, 35.685738, 39.755219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447155, 35.904236, 39.685383>,  <41.329529, 36.268402, 39.568993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447155, 35.904236, 39.685383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641107, -0.037907, -0.766515,
		0.708877, 0.411956, 0.572526,
		0.294068, -0.910415, 0.290979,
		41.535374, 35.631111, 39.772675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973232, 36.339394, 39.535961>,  <41.329529, 36.268402, 39.568993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973232, 36.339394, 39.535961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904362, 35.945805, 39.517395>,  <41.863041, 35.709652, 39.506256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904362, 35.945805, 39.517395>,  <41.973232, 36.339394, 39.535961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904362, 35.945805, 39.517395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558954, -0.058789, -0.827112,
		0.811127, -0.168349, 0.560117,
		-0.172172, -0.983973, -0.046414,
		41.852711, 35.650612, 39.503471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639023, 35.976585, 39.565994>,  <41.973232, 36.339394, 39.535961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639023, 35.976585, 39.565994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375816, 35.733494, 39.388145>,  <42.217892, 35.587639, 39.281437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375816, 35.733494, 39.388145>,  <42.639023, 35.976585, 39.565994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375816, 35.733494, 39.388145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464431, 0.137236, -0.874912,
		0.592725, -0.782199, 0.191944,
		-0.658013, -0.607727, -0.444620,
		42.178413, 35.551174, 39.254761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013477, 35.575207, 39.175888>,  <42.639023, 35.976585, 39.565994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013477, 35.575207, 39.175888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660019, 35.508442, 39.000931>,  <42.447945, 35.468384, 38.895958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660019, 35.508442, 39.000931>,  <43.013477, 35.575207, 39.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660019, 35.508442, 39.000931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400539, 0.214137, -0.890906,
		0.242363, -0.962438, -0.122367,
		-0.883645, -0.166910, -0.437393,
		42.394924, 35.458370, 38.869713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212620, 35.191288, 38.622593>,  <43.013477, 35.575207, 39.175888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212620, 35.191288, 38.622593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849586, 35.329723, 38.527508>,  <42.631767, 35.412785, 38.470459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849586, 35.329723, 38.527508>,  <43.212620, 35.191288, 38.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849586, 35.329723, 38.527508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299558, 0.137060, -0.944182,
		-0.294194, -0.928135, -0.228068,
		-0.907587, 0.346092, -0.237708,
		42.577309, 35.433552, 38.456196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036530, 35.011059, 37.873676>,  <43.212620, 35.191288, 38.622593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036530, 35.011059, 37.873676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766602, 35.304352, 37.907112>,  <42.604645, 35.480328, 37.927174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766602, 35.304352, 37.907112>,  <43.036530, 35.011059, 37.873676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766602, 35.304352, 37.907112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384462, 0.445973, -0.808268,
		-0.629928, -0.513298, -0.582852,
		-0.674818, 0.733235, 0.083588,
		42.564156, 35.524323, 37.932190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667076, 35.090977, 37.209488>,  <43.036530, 35.011059, 37.873676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667076, 35.090977, 37.209488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721527, 35.409752, 37.444897>,  <42.754200, 35.601017, 37.586140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721527, 35.409752, 37.444897>,  <42.667076, 35.090977, 37.209488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721527, 35.409752, 37.444897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721539, 0.327309, -0.610123,
		-0.678859, 0.507697, -0.530466,
		0.136131, 0.796939, 0.588520,
		42.762367, 35.648834, 37.621452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515434, 35.647282, 36.780659>,  <42.667076, 35.090977, 37.209488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515434, 35.647282, 36.780659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764896, 35.723186, 37.083984>,  <42.914574, 35.768730, 37.265980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764896, 35.723186, 37.083984>,  <42.515434, 35.647282, 36.780659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764896, 35.723186, 37.083984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705944, 0.279872, -0.650626,
		-0.335697, 0.941096, 0.040581,
		0.623659, 0.189765, 0.758313,
		42.951996, 35.780117, 37.311478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186314, 35.297089, 36.185810>,  <42.515434, 35.647282, 36.780659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186314, 35.297089, 36.185810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303070, 34.915096, 36.206978>,  <42.373123, 34.685902, 36.219681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303070, 34.915096, 36.206978>,  <42.186314, 35.297089, 36.185810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303070, 34.915096, 36.206978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362063, 0.059113, -0.930277,
		0.885272, 0.290705, 0.363020,
		0.291895, -0.954985, 0.052923,
		42.390640, 34.628601, 36.222855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907562, 35.225491, 36.120800>,  <42.186314, 35.297089, 36.185810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907562, 35.225491, 36.120800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741676, 34.883224, 35.996960>,  <42.642147, 34.677864, 35.922657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741676, 34.883224, 35.996960>,  <42.907562, 35.225491, 36.120800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741676, 34.883224, 35.996960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556859, 0.030438, -0.830049,
		0.719669, -0.516632, 0.463863,
		-0.414711, -0.855667, -0.309596,
		42.617264, 34.626526, 35.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365845, 34.660889, 35.826279>,  <42.907562, 35.225491, 36.120800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365845, 34.660889, 35.826279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995502, 34.703259, 35.681190>,  <42.773296, 34.728680, 35.594139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995502, 34.703259, 35.681190>,  <43.365845, 34.660889, 35.826279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995502, 34.703259, 35.681190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375952, 0.161714, -0.912419,
		-0.037991, -0.981136, -0.189547,
		-0.925860, 0.105924, -0.362716,
		42.717743, 34.735035, 35.572376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267132, 34.224380, 35.185638>,  <43.365845, 34.660889, 35.826279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267132, 34.224380, 35.185638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996147, 34.517036, 35.155304>,  <42.833557, 34.692631, 35.137104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996147, 34.517036, 35.155304>,  <43.267132, 34.224380, 35.185638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996147, 34.517036, 35.155304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065481, -0.042698, -0.996940,
		-0.732635, -0.680357, -0.018981,
		-0.677465, 0.731636, -0.075832,
		42.792908, 34.736526, 35.132553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668163, 34.039604, 34.786732>,  <43.267132, 34.224380, 35.185638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668163, 34.039604, 34.786732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699013, 34.431850, 34.714684>,  <42.717522, 34.667198, 34.671455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699013, 34.431850, 34.714684>,  <42.668163, 34.039604, 34.786732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699013, 34.431850, 34.714684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002247, -0.180833, -0.983511,
		-0.997019, 0.075447, -0.016150,
		0.077124, 0.980616, -0.180124,
		42.722149, 34.726036, 34.660645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150112, 34.244076, 34.404678>,  <42.668163, 34.039604, 34.786732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150112, 34.244076, 34.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456112, 34.497002, 34.355770>,  <42.639713, 34.648758, 34.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456112, 34.497002, 34.355770>,  <42.150112, 34.244076, 34.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456112, 34.497002, 34.355770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083198, -0.285284, -0.954825,
		-0.638630, 0.720272, -0.270850,
		0.765003, 0.632315, -0.122266,
		42.685612, 34.686695, 34.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156464, 34.706108, 33.789051>,  <42.150112, 34.244076, 34.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156464, 34.706108, 33.789051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544430, 34.698624, 33.886143>,  <42.777210, 34.694134, 33.944397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544430, 34.698624, 33.886143>,  <42.156464, 34.706108, 33.789051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544430, 34.698624, 33.886143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229984, -0.256615, -0.938752,
		0.079851, 0.966333, -0.244592,
		0.969913, -0.018708, 0.242732,
		42.835403, 34.693012, 33.958961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457989, 34.778999, 33.211109>,  <42.156464, 34.706108, 33.789051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457989, 34.778999, 33.211109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782734, 34.674423, 33.419926>,  <42.977581, 34.611675, 33.545216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782734, 34.674423, 33.419926>,  <42.457989, 34.778999, 33.211109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782734, 34.674423, 33.419926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330237, -0.531741, -0.779868,
		0.481485, 0.805542, -0.345361,
		0.811859, -0.261444, 0.522045,
		43.026291, 34.595989, 33.576538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042950, 34.959671, 32.765335>,  <42.457989, 34.778999, 33.211109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042950, 34.959671, 32.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151901, 34.677780, 33.027378>,  <43.217274, 34.508644, 33.184605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151901, 34.677780, 33.027378>,  <43.042950, 34.959671, 32.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151901, 34.677780, 33.027378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433040, -0.518212, -0.737518,
		0.859235, 0.484572, 0.164026,
		0.272380, -0.704731, 0.655105,
		43.233616, 34.466362, 33.223911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686378, 34.787270, 32.534096>,  <43.042950, 34.959671, 32.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686378, 34.787270, 32.534096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572086, 34.480202, 32.763546>,  <43.503513, 34.295959, 32.901215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572086, 34.480202, 32.763546>,  <43.686378, 34.787270, 32.534096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572086, 34.480202, 32.763546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236889, -0.636580, -0.733927,
		0.928571, -0.073818, 0.363741,
		-0.285727, -0.767669, 0.573623,
		43.486366, 34.249901, 32.935635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228477, 34.175957, 32.405994>,  <43.686378, 34.787270, 32.534096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228477, 34.175957, 32.405994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899635, 34.012203, 32.564259>,  <43.702332, 33.913952, 32.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899635, 34.012203, 32.564259>,  <44.228477, 34.175957, 32.405994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899635, 34.012203, 32.564259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056721, -0.750387, -0.658560,
		0.566503, -0.518964, 0.640118,
		-0.822105, -0.409384, 0.395660,
		43.653004, 33.889389, 32.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426895, 33.450630, 32.618412>,  <44.228477, 34.175957, 32.405994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426895, 33.450630, 32.618412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033356, 33.476078, 32.551483>,  <43.797234, 33.491348, 32.511326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033356, 33.476078, 32.551483>,  <44.426895, 33.450630, 32.618412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033356, 33.476078, 32.551483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067719, -0.732973, -0.676878,
		-0.165710, -0.677276, 0.716825,
		-0.983847, 0.063623, -0.167325,
		43.738201, 33.495167, 32.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213997, 32.752617, 32.407204>,  <44.426895, 33.450630, 32.618412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213997, 32.752617, 32.407204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935551, 33.002193, 32.265148>,  <43.768482, 33.151939, 32.179916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935551, 33.002193, 32.265148>,  <44.213997, 32.752617, 32.407204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935551, 33.002193, 32.265148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068952, -0.550486, -0.831992,
		-0.714615, -0.554672, 0.426222,
		-0.696111, 0.623943, -0.355139,
		43.726719, 33.189377, 32.158607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666718, 32.299412, 32.160549>,  <44.213997, 32.752617, 32.407204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666718, 32.299412, 32.160549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617710, 32.637810, 31.952978>,  <43.588306, 32.840847, 31.828436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617710, 32.637810, 31.952978>,  <43.666718, 32.299412, 32.160549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617710, 32.637810, 31.952978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073031, -0.529132, -0.845391,
		-0.989776, -0.065678, 0.126612,
		-0.122518, 0.845994, -0.518925,
		43.580956, 32.891609, 31.797300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079617, 32.167236, 31.627575>,  <43.666718, 32.299412, 32.160549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079617, 32.167236, 31.627575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272091, 32.491405, 31.493904>,  <43.387577, 32.685905, 31.413702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272091, 32.491405, 31.493904>,  <43.079617, 32.167236, 31.627575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272091, 32.491405, 31.493904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121959, -0.315613, -0.941018,
		-0.868093, 0.493560, -0.053030,
		0.481186, 0.810424, -0.334176,
		43.416447, 32.734531, 31.393652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671543, 32.443604, 31.036396>,  <43.079617, 32.167236, 31.627575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671543, 32.443604, 31.036396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046463, 32.574562, 30.988594>,  <43.271416, 32.653137, 30.959913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046463, 32.574562, 30.988594>,  <42.671543, 32.443604, 31.036396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046463, 32.574562, 30.988594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039040, -0.242106, -0.969464,
		-0.346334, 0.913343, -0.214144,
		0.937298, 0.327398, -0.119507,
		43.327652, 32.672783, 30.952742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629417, 32.745308, 30.358473>,  <42.671543, 32.443604, 31.036396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629417, 32.745308, 30.358473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020351, 32.690113, 30.422693>,  <43.254913, 32.656994, 30.461226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020351, 32.690113, 30.422693>,  <42.629417, 32.745308, 30.358473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020351, 32.690113, 30.422693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132389, -0.193412, -0.972144,
		0.165198, 0.971365, -0.170760,
		0.977334, -0.137989, 0.160549,
		43.313553, 32.648716, 30.470858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758400, 32.909561, 29.699072>,  <42.629417, 32.745308, 30.358473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758400, 32.909561, 29.699072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120010, 32.802856, 29.832678>,  <43.336979, 32.738834, 29.912842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120010, 32.802856, 29.832678>,  <42.758400, 32.909561, 29.699072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120010, 32.802856, 29.832678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358883, 0.049139, -0.932088,
		0.232234, 0.962509, 0.140160,
		0.904030, -0.266763, 0.334016,
		43.391220, 32.722828, 29.932882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313198, 33.360889, 29.428652>,  <42.758400, 32.909561, 29.699072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313198, 33.360889, 29.428652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440353, 32.991806, 29.515882>,  <43.516647, 32.770355, 29.568220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440353, 32.991806, 29.515882>,  <43.313198, 33.360889, 29.428652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440353, 32.991806, 29.515882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338941, -0.104215, -0.935017,
		0.885474, 0.371149, 0.279615,
		0.317891, -0.922707, 0.218077,
		43.535721, 32.714993, 29.581306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017418, 33.422935, 29.136099>,  <43.313198, 33.360889, 29.428652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017418, 33.422935, 29.136099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912533, 33.039425, 29.179895>,  <43.849602, 32.809319, 29.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912533, 33.039425, 29.179895>,  <44.017418, 33.422935, 29.136099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912533, 33.039425, 29.179895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340869, -0.198170, -0.918987,
		0.902804, -0.203644, 0.378780,
		-0.262209, -0.958779, 0.109493,
		43.833870, 32.751793, 29.212744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542221, 33.138966, 28.887619>,  <44.017418, 33.422935, 29.136099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542221, 33.138966, 28.887619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261887, 32.854301, 28.868118>,  <44.093685, 32.683502, 28.856419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261887, 32.854301, 28.868118>,  <44.542221, 33.138966, 28.887619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261887, 32.854301, 28.868118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229060, -0.159800, -0.960206,
		0.675547, -0.684111, 0.275005,
		-0.700833, -0.711657, -0.048750,
		44.051636, 32.640804, 28.853493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874599, 32.626732, 28.631052>,  <44.542221, 33.138966, 28.887619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874599, 32.626732, 28.631052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494846, 32.515617, 28.572384>,  <44.266994, 32.448948, 28.537184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494846, 32.515617, 28.572384>,  <44.874599, 32.626732, 28.631052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494846, 32.515617, 28.572384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151026, 0.005778, -0.988513,
		0.275444, -0.960625, 0.036468,
		-0.949380, -0.277787, -0.146671,
		44.210033, 32.432281, 28.528383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936871, 31.932306, 28.224649>,  <44.874599, 32.626732, 28.631052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936871, 31.932306, 28.224649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579140, 32.101299, 28.165735>,  <44.364502, 32.202694, 28.130386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579140, 32.101299, 28.165735>,  <44.936871, 31.932306, 28.224649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579140, 32.101299, 28.165735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167877, 0.011723, -0.985738,
		-0.414729, -0.906296, -0.081409,
		-0.894325, 0.422481, -0.147284,
		44.310841, 32.228043, 28.121550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587658, 31.621321, 27.612535>,  <44.936871, 31.932306, 28.224649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587658, 31.621321, 27.612535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382164, 31.963732, 27.635494>,  <44.258869, 32.169178, 27.649269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382164, 31.963732, 27.635494>,  <44.587658, 31.621321, 27.612535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382164, 31.963732, 27.635494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079835, 0.114306, -0.990232,
		-0.854229, -0.504130, -0.127063,
		-0.513730, 0.856029, 0.057396,
		44.228046, 32.220539, 27.652714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253433, 31.679607, 26.945982>,  <44.587658, 31.621321, 27.612535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253433, 31.679607, 26.945982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219830, 32.050438, 27.092117>,  <44.199669, 32.272938, 27.179798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219830, 32.050438, 27.092117>,  <44.253433, 31.679607, 26.945982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219830, 32.050438, 27.092117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072392, 0.359988, -0.930144,
		-0.993832, -0.104584, 0.036872,
		-0.084005, 0.927076, 0.365339,
		44.194630, 32.328560, 27.201719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588051, 32.039024, 26.697998>,  <44.253433, 31.679607, 26.945982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588051, 32.039024, 26.697998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829685, 32.335621, 26.814810>,  <43.974667, 32.513577, 26.884897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829685, 32.335621, 26.814810>,  <43.588051, 32.039024, 26.697998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829685, 32.335621, 26.814810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076353, 0.418611, -0.904950,
		-0.793256, 0.524367, 0.309490,
		0.604082, 0.741488, 0.292029,
		44.010910, 32.558067, 26.902418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214859, 32.645676, 26.500547>,  <43.588051, 32.039024, 26.697998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214859, 32.645676, 26.500547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604687, 32.725792, 26.540743>,  <43.838585, 32.773861, 26.564861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604687, 32.725792, 26.540743>,  <43.214859, 32.645676, 26.500547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604687, 32.725792, 26.540743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013885, 0.393609, -0.919173,
		-0.223656, 0.897193, 0.380818,
		0.974569, 0.200291, 0.100491,
		43.897057, 32.785881, 26.570890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421551, 33.444412, 26.403376>,  <43.214859, 32.645676, 26.500547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421551, 33.444412, 26.403376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732639, 33.219170, 26.291616>,  <43.919292, 33.084023, 26.224562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732639, 33.219170, 26.291616>,  <43.421551, 33.444412, 26.403376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732639, 33.219170, 26.291616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092864, 0.542510, -0.834900,
		0.621715, 0.623371, 0.474213,
		0.777718, -0.563108, -0.279398,
		43.965954, 33.050236, 26.207796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781853, 33.936329, 25.906853>,  <43.421551, 33.444412, 26.403376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781853, 33.936329, 25.906853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908859, 33.559467, 25.863914>,  <43.985062, 33.333351, 25.838152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908859, 33.559467, 25.863914>,  <43.781853, 33.936329, 25.906853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908859, 33.559467, 25.863914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021943, 0.120473, -0.992474,
		0.948000, 0.312769, 0.058926,
		0.317514, -0.942158, -0.107346,
		44.004112, 33.276821, 25.831711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867233, 34.114159, 25.172274>,  <43.781853, 33.936329, 25.906853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867233, 34.114159, 25.172274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467556, 34.120899, 25.157703>,  <43.227749, 34.124943, 25.148960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467556, 34.120899, 25.157703>,  <43.867233, 34.114159, 25.172274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467556, 34.120899, 25.157703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024286, 0.468715, 0.883016,
		0.031954, 0.883189, -0.467928,
		-0.999194, 0.016852, -0.036427,
		43.167797, 34.125954, 25.146776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531384, 34.757118, 25.003649>,  <43.867233, 34.114159, 25.172274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531384, 34.757118, 25.003649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 34.519047, 25.268383>,  <43.239685, 34.376202, 25.427223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 34.519047, 25.268383>,  <43.531384, 34.757118, 25.003649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349072, 34.519047, 25.268383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184084, 0.664451, 0.724305,
		-0.870849, 0.451957, -0.193281,
		-0.455780, -0.595180, 0.661834,
		43.212337, 34.340492, 25.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032848, 35.217258, 25.257906>,  <43.531384, 34.757118, 25.003649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032848, 35.217258, 25.257906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134720, 34.928631, 25.515425>,  <43.195843, 34.755455, 25.669937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134720, 34.928631, 25.515425>,  <43.032848, 35.217258, 25.257906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134720, 34.928631, 25.515425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224818, 0.691688, 0.686312,
		-0.940531, -0.030049, 0.338377,
		0.254675, -0.721571, 0.643798,
		43.211121, 34.712158, 25.708565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635124, 35.292049, 25.881506>,  <43.032848, 35.217258, 25.257906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635124, 35.292049, 25.881506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991432, 35.134048, 25.971394>,  <43.205219, 35.039249, 26.025326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991432, 35.134048, 25.971394>,  <42.635124, 35.292049, 25.881506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991432, 35.134048, 25.971394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088483, 0.635773, 0.766788,
		-0.445749, -0.663151, 0.601281,
		0.890774, -0.394998, 0.224718,
		43.258663, 35.015549, 26.038809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703163, 35.141441, 26.584511>,  <42.635124, 35.292049, 25.881506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703163, 35.141441, 26.584511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067089, 35.219013, 26.437742>,  <43.285442, 35.265556, 26.349680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067089, 35.219013, 26.437742>,  <42.703163, 35.141441, 26.584511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067089, 35.219013, 26.437742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167706, 0.636913, 0.752473,
		0.379626, -0.746145, 0.546948,
		0.909813, 0.193932, -0.366922,
		43.340034, 35.277191, 26.327665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109798, 35.052662, 27.191927>,  <42.703163, 35.141441, 26.584511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109798, 35.052662, 27.191927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269062, 35.276829, 26.901436>,  <43.364620, 35.411327, 26.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269062, 35.276829, 26.901436>,  <43.109798, 35.052662, 27.191927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269062, 35.276829, 26.901436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238348, 0.701291, 0.671849,
		0.885812, -0.440595, 0.145648,
		0.398155, 0.560417, -0.726227,
		43.388508, 35.444954, 26.683567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852886, 35.173668, 27.141579>,  <43.109798, 35.052662, 27.191927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852886, 35.173668, 27.141579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631420, 35.483166, 27.018435>,  <43.498543, 35.668865, 26.944548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631420, 35.483166, 27.018435>,  <43.852886, 35.173668, 27.141579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631420, 35.483166, 27.018435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310265, 0.534749, 0.785989,
		0.772783, 0.339653, -0.536136,
		-0.553662, 0.773743, -0.307862,
		43.465321, 35.715290, 26.926075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321232, 35.880684, 27.051640>,  <43.852886, 35.173668, 27.141579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321232, 35.880684, 27.051640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940216, 35.943211, 27.156120>,  <43.711605, 35.980728, 27.218809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940216, 35.943211, 27.156120>,  <44.321232, 35.880684, 27.051640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940216, 35.943211, 27.156120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304173, 0.522138, 0.796775,
		-0.011834, 0.838413, -0.544906,
		-0.952543, 0.156317, 0.261201,
		43.654453, 35.990105, 27.234480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157295, 36.654552, 27.177500>,  <44.321232, 35.880684, 27.051640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157295, 36.654552, 27.177500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927536, 36.414463, 27.400141>,  <43.789680, 36.270409, 27.533726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927536, 36.414463, 27.400141>,  <44.157295, 36.654552, 27.177500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927536, 36.414463, 27.400141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415489, 0.372084, 0.830014,
		-0.705294, 0.708017, 0.035662,
		-0.574394, -0.600221, 0.556602,
		43.755219, 36.234398, 27.567122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051987, 37.031826, 27.817316>,  <44.157295, 36.654552, 27.177500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051987, 37.031826, 27.817316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960102, 36.658775, 27.928631>,  <43.904972, 36.434944, 27.995420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960102, 36.658775, 27.928631>,  <44.051987, 37.031826, 27.817316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960102, 36.658775, 27.928631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371088, 0.180406, 0.910905,
		-0.899736, 0.312516, 0.304644,
		-0.229713, -0.932624, 0.278289,
		43.891190, 36.378986, 28.012117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696785, 37.122032, 28.456385>,  <44.051987, 37.031826, 27.817316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696785, 37.122032, 28.456385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807701, 36.737850, 28.466406>,  <43.874252, 36.507339, 28.472418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807701, 36.737850, 28.466406>,  <43.696785, 37.122032, 28.456385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807701, 36.737850, 28.466406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384966, 0.134956, 0.913010,
		-0.880290, -0.243524, 0.407167,
		0.277290, -0.960459, 0.025052,
		43.890888, 36.449711, 28.473921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537174, 36.926327, 29.169865>,  <43.696785, 37.122032, 28.456385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537174, 36.926327, 29.169865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807503, 36.668522, 29.026825>,  <43.969700, 36.513840, 28.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807503, 36.668522, 29.026825>,  <43.537174, 36.926327, 29.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807503, 36.668522, 29.026825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425682, -0.054778, 0.903213,
		-0.601719, -0.762630, 0.237337,
		0.675817, -0.644511, -0.357599,
		44.010246, 36.475170, 28.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489925, 36.278641, 29.629051>,  <43.537174, 36.926327, 29.169865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489925, 36.278641, 29.629051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839451, 36.282898, 29.434597>,  <44.049168, 36.285454, 29.317924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839451, 36.282898, 29.434597>,  <43.489925, 36.278641, 29.629051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839451, 36.282898, 29.434597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485325, 0.042707, 0.873290,
		0.030050, -0.999031, 0.032156,
		0.873818, 0.010636, -0.486138,
		44.101597, 36.286091, 29.288755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818054, 35.754700, 30.037497>,  <43.489925, 36.278641, 29.629051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818054, 35.754700, 30.037497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109535, 35.947109, 29.842512>,  <44.284424, 36.062553, 29.725521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109535, 35.947109, 29.842512>,  <43.818054, 35.754700, 30.037497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109535, 35.947109, 29.842512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597951, -0.099912, 0.795281,
		0.333844, -0.870997, -0.360433,
		0.728699, 0.481022, -0.487459,
		44.328144, 36.091415, 29.696274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351913, 35.299091, 30.039764>,  <43.818054, 35.754700, 30.037497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351913, 35.299091, 30.039764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484936, 35.674011, 29.998045>,  <44.564751, 35.898964, 29.973013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484936, 35.674011, 29.998045>,  <44.351913, 35.299091, 30.039764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484936, 35.674011, 29.998045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533629, -0.095830, 0.840272,
		0.777591, -0.335093, -0.532039,
		0.332554, 0.937299, -0.104299,
		44.584702, 35.955200, 29.966755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933083, 35.146679, 30.082029>,  <44.351913, 35.299091, 30.039764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933083, 35.146679, 30.082029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930923, 35.538261, 30.163631>,  <44.929626, 35.773212, 30.212593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930923, 35.538261, 30.163631>,  <44.933083, 35.146679, 30.082029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930923, 35.538261, 30.163631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370387, -0.187538, 0.909749,
		0.928862, 0.080475, -0.361579,
		-0.005402, 0.978955, 0.204004,
		44.929302, 35.831947, 30.224833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640656, 35.375061, 30.282461>,  <44.933083, 35.146679, 30.082029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640656, 35.375061, 30.282461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384159, 35.643105, 30.431997>,  <45.230263, 35.803932, 30.521719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384159, 35.643105, 30.431997>,  <45.640656, 35.375061, 30.282461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384159, 35.643105, 30.431997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421355, -0.099673, 0.901402,
		0.641302, 0.735538, -0.218440,
		-0.641242, 0.670112, 0.373842,
		45.191788, 35.844139, 30.544149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060528, 35.762108, 30.721563>,  <45.640656, 35.375061, 30.282461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060528, 35.762108, 30.721563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694717, 35.846329, 30.859732>,  <45.475231, 35.896862, 30.942633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694717, 35.846329, 30.859732>,  <46.060528, 35.762108, 30.721563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694717, 35.846329, 30.859732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354988, 0.008241, 0.934835,
		0.193982, 0.977549, -0.082279,
		-0.914524, 0.210549, 0.345420,
		45.420361, 35.909492, 30.963358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245438, 36.156010, 31.322390>,  <46.060528, 35.762108, 30.721563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245438, 36.156010, 31.322390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856537, 36.073471, 31.366480>,  <45.623196, 36.023949, 31.392935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856537, 36.073471, 31.366480>,  <46.245438, 36.156010, 31.322390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856537, 36.073471, 31.366480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117390, -0.022755, 0.992825,
		-0.202357, 0.978215, 0.046347,
		-0.972251, -0.206346, 0.110228,
		45.564861, 36.011566, 31.399548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994286, 36.512520, 31.912609>,  <46.245438, 36.156010, 31.322390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994286, 36.512520, 31.912609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714844, 36.229927, 31.867290>,  <45.547180, 36.060371, 31.840099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714844, 36.229927, 31.867290>,  <45.994286, 36.512520, 31.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714844, 36.229927, 31.867290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173845, 0.013999, 0.984674,
		-0.694070, 0.707590, -0.132599,
		-0.698602, -0.706484, -0.113295,
		45.505264, 36.017982, 31.833302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507225, 36.664944, 32.401924>,  <45.994286, 36.512520, 31.912609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507225, 36.664944, 32.401924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386448, 36.290672, 32.328884>,  <45.313980, 36.066109, 32.285061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386448, 36.290672, 32.328884>,  <45.507225, 36.664944, 32.401924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386448, 36.290672, 32.328884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341955, -0.072496, 0.936916,
		-0.889886, 0.345338, -0.298068,
		-0.301944, -0.935674, -0.182603,
		45.295864, 36.009972, 32.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864105, 36.507908, 32.690224>,  <45.507225, 36.664944, 32.401924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864105, 36.507908, 32.690224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023125, 36.142422, 32.656570>,  <45.118538, 35.923130, 32.636379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023125, 36.142422, 32.656570>,  <44.864105, 36.507908, 32.690224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023125, 36.142422, 32.656570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283416, -0.209483, 0.935838,
		-0.872713, -0.348200, -0.342242,
		0.397552, -0.913714, -0.084133,
		45.142391, 35.868309, 32.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396744, 36.035454, 33.104824>,  <44.864105, 36.507908, 32.690224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396744, 36.035454, 33.104824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734203, 35.830250, 33.041481>,  <44.936680, 35.707127, 33.003475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734203, 35.830250, 33.041481>,  <44.396744, 36.035454, 33.104824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734203, 35.830250, 33.041481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065526, -0.391125, 0.918002,
		-0.532879, -0.764096, -0.363588,
		0.843650, -0.513009, -0.158355,
		44.987297, 35.676346, 32.993977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303032, 35.356445, 33.244831>,  <44.396744, 36.035454, 33.104824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303032, 35.356445, 33.244831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701920, 35.365917, 33.273121>,  <44.941250, 35.371601, 33.290096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701920, 35.365917, 33.273121>,  <44.303032, 35.356445, 33.244831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701920, 35.365917, 33.273121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051565, -0.466220, 0.883165,
		0.053890, -0.884352, -0.463700,
		0.997214, 0.023683, 0.070726,
		45.001083, 35.373024, 33.294338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472477, 34.680466, 33.326126>,  <44.303032, 35.356445, 33.244831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472477, 34.680466, 33.326126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753387, 34.920326, 33.479603>,  <44.921932, 35.064243, 33.571690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753387, 34.920326, 33.479603>,  <44.472477, 34.680466, 33.326126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753387, 34.920326, 33.479603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186490, -0.365190, 0.912062,
		0.687043, -0.712077, -0.144635,
		0.702277, 0.599653, 0.383696,
		44.964069, 35.100224, 33.594711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056393, 34.291370, 33.754856>,  <44.472477, 34.680466, 33.326126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056393, 34.291370, 33.754856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010105, 34.654953, 33.915062>,  <44.982334, 34.873104, 34.011185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010105, 34.654953, 33.915062>,  <45.056393, 34.291370, 33.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010105, 34.654953, 33.915062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199040, -0.416261, 0.887192,
		0.973135, 0.022948, 0.229088,
		-0.115719, 0.908956, 0.400510,
		44.975388, 34.927639, 34.035213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223564, 34.143452, 34.403019>,  <45.056393, 34.291370, 33.754856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223564, 34.143452, 34.403019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083084, 34.517853, 34.393604>,  <44.998795, 34.742493, 34.387955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083084, 34.517853, 34.393604>,  <45.223564, 34.143452, 34.403019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083084, 34.517853, 34.393604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103665, -0.013889, 0.994515,
		0.930544, 0.351714, 0.101909,
		-0.351201, 0.936004, -0.023537,
		44.977722, 34.798653, 34.386543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635128, 34.488724, 34.808830>,  <45.223564, 34.143452, 34.403019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635128, 34.488724, 34.808830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305439, 34.714996, 34.798561>,  <45.107624, 34.850761, 34.792400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305439, 34.714996, 34.798561>,  <45.635128, 34.488724, 34.808830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305439, 34.714996, 34.798561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140316, -0.160099, 0.977077,
		0.548604, 0.808933, 0.211332,
		-0.824224, 0.565682, -0.025675,
		45.058170, 34.884701, 34.790859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687492, 35.046394, 35.283005>,  <45.635128, 34.488724, 34.808830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687492, 35.046394, 35.283005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294212, 34.985348, 35.242939>,  <45.058247, 34.948719, 35.218899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294212, 34.985348, 35.242939>,  <45.687492, 35.046394, 35.283005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294212, 34.985348, 35.242939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118318, 0.114935, 0.986302,
		-0.139012, 0.981580, -0.131061,
		-0.983197, -0.152615, -0.100161,
		44.999252, 34.939564, 35.212891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994453, 35.535069, 34.862156>,  <45.687492, 35.046394, 35.283005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994453, 35.535069, 34.862156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344189, 35.503143, 34.670670>,  <46.554028, 35.483990, 34.555779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344189, 35.503143, 34.670670>,  <45.994453, 35.535069, 34.862156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344189, 35.503143, 34.670670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202384, 0.956486, 0.210179,
		0.441110, -0.280652, 0.852442,
		0.874336, -0.079809, -0.478715,
		46.606491, 35.479202, 34.527054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501625, 35.689926, 35.247578>,  <45.994453, 35.535069, 34.862156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501625, 35.689926, 35.247578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704147, 35.741730, 34.906548>,  <46.825661, 35.772812, 34.701931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704147, 35.741730, 34.906548>,  <46.501625, 35.689926, 35.247578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704147, 35.741730, 34.906548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292065, 0.904476, 0.310841,
		0.811391, -0.406387, 0.420113,
		0.506304, 0.129513, -0.852574,
		46.856037, 35.780582, 34.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199478, 35.792118, 35.407433>,  <46.501625, 35.689926, 35.247578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199478, 35.792118, 35.407433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097630, 35.985153, 35.072224>,  <47.036522, 36.100975, 34.871098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097630, 35.985153, 35.072224>,  <47.199478, 35.792118, 35.407433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097630, 35.985153, 35.072224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463321, 0.821524, 0.332312,
		0.848824, -0.303661, -0.432766,
		-0.254618, 0.482585, -0.838023,
		47.021244, 36.129929, 34.820816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499165, 35.171608, 35.139969>,  <47.199478, 35.792118, 35.407433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499165, 35.171608, 35.139969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869476, 35.032146, 35.081490>,  <48.091663, 34.948471, 35.046402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869476, 35.032146, 35.081490>,  <47.499165, 35.171608, 35.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869476, 35.032146, 35.081490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250645, -0.276515, -0.927748,
		0.283032, 0.895535, -0.343380,
		0.925780, -0.348649, -0.146199,
		48.147209, 34.927551, 35.037628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.659557, 41.703640, 44.570324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318398, 41.496601, 44.597614>,  <36.113701, 41.372379, 44.613991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318398, 41.496601, 44.597614>,  <36.659557, 41.703640, 44.570324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318398, 41.496601, 44.597614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201060, -0.446257, -0.872026,
		0.481805, -0.730033, 0.484681,
		-0.852900, -0.517597, 0.068228,
		36.062527, 41.341324, 44.618084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860153, 41.054619, 44.251431>,  <36.659557, 41.703640, 44.570324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860153, 41.054619, 44.251431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460178, 41.052402, 44.255367>,  <36.220192, 41.051075, 44.257729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460178, 41.052402, 44.255367>,  <36.860153, 41.054619, 44.251431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460178, 41.052402, 44.255367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004986, -0.565612, -0.824656,
		0.010136, -0.824653, 0.565549,
		-0.999936, -0.005539, 0.009845,
		36.160198, 41.050739, 44.258320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631435, 40.339203, 44.186840>,  <36.860153, 41.054619, 44.251431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631435, 40.339203, 44.186840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311729, 40.548145, 44.067963>,  <36.119907, 40.673512, 43.996635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311729, 40.548145, 44.067963>,  <36.631435, 40.339203, 44.186840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311729, 40.548145, 44.067963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050849, -0.433959, -0.899497,
		-0.598826, -0.734046, 0.320286,
		-0.799263, 0.522356, -0.297191,
		36.071949, 40.704853, 43.978806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188099, 39.863033, 43.755695>,  <36.631435, 40.339203, 44.186840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188099, 39.863033, 43.755695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073002, 40.233891, 43.659687>,  <36.003944, 40.456406, 43.602081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073002, 40.233891, 43.659687>,  <36.188099, 39.863033, 43.755695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073002, 40.233891, 43.659687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010424, -0.253640, -0.967242,
		-0.957651, -0.275814, 0.082648,
		-0.287742, 0.927142, -0.240024,
		35.986679, 40.512032, 43.587681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588802, 39.847118, 43.322441>,  <36.188099, 39.863033, 43.755695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588802, 39.847118, 43.322441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781387, 40.186359, 43.233967>,  <35.896938, 40.389904, 43.180882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781387, 40.186359, 43.233967>,  <35.588802, 39.847118, 43.322441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781387, 40.186359, 43.233967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192476, -0.143894, -0.970694,
		-0.855071, 0.509926, 0.093959,
		0.481462, 0.848098, -0.221189,
		35.925827, 40.440788, 43.167610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104877, 40.310703, 42.849915>,  <35.588802, 39.847118, 43.322441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104877, 40.310703, 42.849915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478794, 40.431103, 42.774483>,  <35.703144, 40.503342, 42.729225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478794, 40.431103, 42.774483>,  <35.104877, 40.310703, 42.849915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478794, 40.431103, 42.774483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157922, -0.123342, -0.979718,
		-0.318154, 0.945614, -0.067765,
		0.934793, 0.301000, -0.188575,
		35.759232, 40.521404, 42.717911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932575, 40.682064, 42.208851>,  <35.104877, 40.310703, 42.849915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932575, 40.682064, 42.208851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328560, 40.646538, 42.252815>,  <35.566151, 40.625221, 42.279194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328560, 40.646538, 42.252815>,  <34.932575, 40.682064, 42.208851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328560, 40.646538, 42.252815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097993, -0.128883, -0.986806,
		0.101810, 0.987674, -0.118887,
		0.989966, -0.088817, 0.109907,
		35.625549, 40.619892, 42.285786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207577, 41.040417, 41.636780>,  <34.932575, 40.682064, 42.208851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207577, 41.040417, 41.636780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.479576, 40.766815, 41.742409>,  <35.642776, 40.602654, 41.805786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.479576, 40.766815, 41.742409>,  <35.207577, 41.040417, 41.636780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479576, 40.766815, 41.742409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254838, -0.117227, -0.959852,
		0.687501, 0.719996, 0.094596,
		0.680000, -0.684006, 0.264076,
		35.683575, 40.561615, 41.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764751, 41.062817, 41.221783>,  <35.207577, 41.040417, 41.636780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764751, 41.062817, 41.221783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804070, 40.689243, 41.359249>,  <35.827660, 40.465099, 41.441727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804070, 40.689243, 41.359249>,  <35.764751, 41.062817, 41.221783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804070, 40.689243, 41.359249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288927, -0.303679, -0.907910,
		0.952292, 0.188535, 0.239989,
		0.098293, -0.933934, 0.343664,
		35.833557, 40.409061, 41.462349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415470, 40.851440, 41.016991>,  <35.764751, 41.062817, 41.221783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415470, 40.851440, 41.016991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233822, 40.505566, 41.102875>,  <36.124832, 40.298042, 41.154404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233822, 40.505566, 41.102875>,  <36.415470, 40.851440, 41.016991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233822, 40.505566, 41.102875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328466, -0.386504, -0.861815,
		0.828184, -0.320839, 0.459537,
		-0.454117, -0.864683, 0.214711,
		36.097588, 40.246162, 41.167290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876789, 40.391109, 40.979092>,  <36.415470, 40.851440, 41.016991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876789, 40.391109, 40.979092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533958, 40.195877, 40.913113>,  <36.328262, 40.078739, 40.873524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533958, 40.195877, 40.913113>,  <36.876789, 40.391109, 40.979092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533958, 40.195877, 40.913113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402694, -0.434954, -0.805390,
		0.321349, -0.756700, 0.569333,
		-0.857072, -0.488078, -0.164947,
		36.276836, 40.049454, 40.863628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054737, 39.651379, 41.013779>,  <36.876789, 40.391109, 40.979092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054737, 39.651379, 41.013779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718880, 39.655754, 40.796570>,  <36.517365, 39.658379, 40.666245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718880, 39.655754, 40.796570>,  <37.054737, 39.651379, 41.013779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718880, 39.655754, 40.796570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402744, -0.658257, -0.635999,
		-0.364408, -0.752713, 0.548297,
		-0.839645, 0.010940, -0.543024,
		36.466988, 39.659035, 40.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915726, 39.009125, 40.916588>,  <37.054737, 39.651379, 41.013779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915726, 39.009125, 40.916588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672794, 39.173401, 40.644562>,  <36.527035, 39.271969, 40.481346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672794, 39.173401, 40.644562>,  <36.915726, 39.009125, 40.916588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672794, 39.173401, 40.644562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249632, -0.714006, -0.654124,
		-0.754214, -0.567033, 0.331112,
		-0.607326, 0.410693, -0.680063,
		36.490597, 39.296608, 40.440544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618290, 38.453674, 40.481884>,  <36.915726, 39.009125, 40.916588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618290, 38.453674, 40.481884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567570, 38.785282, 40.264023>,  <36.537136, 38.984249, 40.133308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567570, 38.785282, 40.264023>,  <36.618290, 38.453674, 40.481884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567570, 38.785282, 40.264023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438532, -0.445656, -0.780437,
		-0.889725, -0.337807, -0.307043,
		-0.126802, 0.829022, -0.544650,
		36.529530, 39.033989, 40.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153767, 38.256248, 39.869213>,  <36.618290, 38.453674, 40.481884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153767, 38.256248, 39.869213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358273, 38.589592, 39.785191>,  <36.480976, 38.789597, 39.734776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358273, 38.589592, 39.785191>,  <36.153767, 38.256248, 39.869213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358273, 38.589592, 39.785191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360056, -0.429634, -0.828115,
		-0.780363, 0.347755, -0.519712,
		0.511267, 0.833355, -0.210059,
		36.511654, 38.839600, 39.722172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136093, 38.206463, 39.210873>,  <36.153767, 38.256248, 39.869213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136093, 38.206463, 39.210873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425285, 38.474930, 39.276402>,  <36.598801, 38.636009, 39.315720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425285, 38.474930, 39.276402>,  <36.136093, 38.206463, 39.210873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425285, 38.474930, 39.276402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429117, -0.250421, -0.867841,
		-0.541439, 0.697732, -0.469057,
		0.722982, 0.671163, 0.163821,
		36.642181, 38.676277, 39.325546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293629, 38.531239, 38.485207>,  <36.136093, 38.206463, 39.210873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293629, 38.531239, 38.485207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610168, 38.605862, 38.718090>,  <36.800091, 38.650635, 38.857819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610168, 38.605862, 38.718090>,  <36.293629, 38.531239, 38.485207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610168, 38.605862, 38.718090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602551, -0.076877, -0.794369,
		-0.103437, 0.979432, -0.173247,
		0.791349, 0.186557, 0.582205,
		36.847572, 38.661827, 38.892750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678364, 39.023338, 38.140457>,  <36.293629, 38.531239, 38.485207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678364, 39.023338, 38.140457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966213, 38.875172, 38.375381>,  <37.138924, 38.786274, 38.516335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966213, 38.875172, 38.375381>,  <36.678364, 39.023338, 38.140457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966213, 38.875172, 38.375381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606976, -0.075208, -0.791153,
		0.337225, 0.925817, 0.170712,
		0.719624, -0.370415, 0.587311,
		37.182102, 38.764046, 38.551575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249584, 39.376026, 37.892525>,  <36.678364, 39.023338, 38.140457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249584, 39.376026, 37.892525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407574, 39.075489, 38.103985>,  <37.502369, 38.895164, 38.230862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407574, 39.075489, 38.103985>,  <37.249584, 39.376026, 37.892525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407574, 39.075489, 38.103985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673323, -0.154732, -0.722976,
		0.625004, 0.641513, 0.444782,
		0.394977, -0.751344, 0.528654,
		37.526066, 38.850086, 38.262581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021301, 39.549942, 37.975636>,  <37.249584, 39.376026, 37.892525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021301, 39.549942, 37.975636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941822, 39.158691, 38.000267>,  <37.894135, 38.923943, 38.015045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941822, 39.158691, 38.000267>,  <38.021301, 39.549942, 37.975636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941822, 39.158691, 38.000267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672964, -0.181847, -0.716973,
		0.712487, -0.101018, 0.694375,
		-0.198697, -0.978124, 0.061582,
		37.882214, 38.865253, 38.018742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621647, 39.354168, 38.007168>,  <38.021301, 39.549942, 37.975636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621647, 39.354168, 38.007168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390720, 39.040882, 37.914829>,  <38.252163, 38.852913, 37.859428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390720, 39.040882, 37.914829>,  <38.621647, 39.354168, 38.007168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390720, 39.040882, 37.914829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714734, -0.348037, -0.606651,
		0.394793, -0.515220, 0.760715,
		-0.577315, -0.783211, -0.230843,
		38.217525, 38.805920, 37.845577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087215, 38.814289, 38.140190>,  <38.621647, 39.354168, 38.007168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087215, 38.814289, 38.140190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799744, 38.696941, 37.888020>,  <38.627262, 38.626534, 37.736717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799744, 38.696941, 37.888020>,  <39.087215, 38.814289, 38.140190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799744, 38.696941, 37.888020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694575, -0.345518, -0.631018,
		-0.032698, -0.891375, 0.452086,
		-0.718677, -0.293374, -0.630424,
		38.584141, 38.608929, 37.698891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319317, 38.127605, 37.920269>,  <39.087215, 38.814289, 38.140190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319317, 38.127605, 37.920269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713421, 38.140350, 37.987507>,  <39.949883, 38.147999, 38.027851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713421, 38.140350, 37.987507>,  <39.319317, 38.127605, 37.920269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713421, 38.140350, 37.987507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166585, 0.402658, 0.900064,
		-0.039004, -0.914796, 0.402029,
		0.985255, 0.031866, 0.168096,
		40.008999, 38.149910, 38.037937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447781, 37.882042, 38.595531>,  <39.319317, 38.127605, 37.920269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447781, 37.882042, 38.595531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.770771, 38.103024, 38.512802>,  <39.964565, 38.235611, 38.463165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.770771, 38.103024, 38.512802>,  <39.447781, 37.882042, 38.595531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770771, 38.103024, 38.512802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086346, 0.457523, 0.884995,
		0.583544, -0.696756, 0.417142,
		0.807478, 0.552453, -0.206823,
		40.013016, 38.268761, 38.450756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916264, 37.892239, 39.115372>,  <39.447781, 37.882042, 38.595531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916264, 37.892239, 39.115372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039124, 38.217503, 38.917610>,  <40.112839, 38.412663, 38.798954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039124, 38.217503, 38.917610>,  <39.916264, 37.892239, 39.115372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039124, 38.217503, 38.917610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121910, 0.548853, 0.826982,
		0.943822, -0.193731, 0.267710,
		0.307146, 0.813160, -0.494402,
		40.131268, 38.461449, 38.769291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494671, 38.156685, 39.450665>,  <39.916264, 37.892239, 39.115372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494671, 38.156685, 39.450665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335152, 38.478687, 39.274971>,  <40.239441, 38.671890, 39.169556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335152, 38.478687, 39.274971>,  <40.494671, 38.156685, 39.450665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335152, 38.478687, 39.274971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236350, 0.553013, 0.798946,
		0.886058, 0.214806, -0.410803,
		-0.398798, 0.805006, -0.439233,
		40.215511, 38.720188, 39.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830704, 38.754143, 39.873039>,  <40.494671, 38.156685, 39.450665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830704, 38.754143, 39.873039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566891, 38.941399, 39.637798>,  <40.408604, 39.053753, 39.496655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566891, 38.941399, 39.637798>,  <40.830704, 38.754143, 39.873039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566891, 38.941399, 39.637798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075266, 0.737326, 0.671331,
		0.747902, 0.487026, -0.451052,
		-0.659528, 0.468141, -0.588104,
		40.369034, 39.081841, 39.461369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999580, 39.440914, 39.907852>,  <40.830704, 38.754143, 39.873039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999580, 39.440914, 39.907852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612820, 39.434998, 39.805969>,  <40.380764, 39.431450, 39.744839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612820, 39.434998, 39.805969>,  <40.999580, 39.440914, 39.907852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612820, 39.434998, 39.805969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197570, 0.675082, 0.710796,
		0.161439, 0.737595, -0.655661,
		-0.966904, -0.014789, -0.254712,
		40.322750, 39.430561, 39.729557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802353, 40.177307, 39.942093>,  <40.999580, 39.440914, 39.907852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802353, 40.177307, 39.942093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478222, 39.944752, 39.971367>,  <40.283745, 39.805218, 39.988934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478222, 39.944752, 39.971367>,  <40.802353, 40.177307, 39.942093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478222, 39.944752, 39.971367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338184, 0.565998, 0.751850,
		-0.478541, 0.584494, -0.655260,
		-0.810327, -0.581389, 0.073186,
		40.235123, 39.770336, 39.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332600, 40.574650, 40.190975>,  <40.802353, 40.177307, 39.942093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332600, 40.574650, 40.190975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165070, 40.219734, 40.268238>,  <40.064552, 40.006786, 40.314594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165070, 40.219734, 40.268238>,  <40.332600, 40.574650, 40.190975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165070, 40.219734, 40.268238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289205, 0.331971, 0.897862,
		-0.860782, 0.320185, -0.395645,
		-0.418824, -0.887286, 0.193156,
		40.039421, 39.953548, 40.326183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639740, 40.716152, 40.475334>,  <40.332600, 40.574650, 40.190975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639740, 40.716152, 40.475334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707668, 40.344650, 40.607136>,  <39.748425, 40.121750, 40.686218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707668, 40.344650, 40.607136>,  <39.639740, 40.716152, 40.475334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707668, 40.344650, 40.607136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264309, 0.279183, 0.923146,
		-0.949369, -0.243863, -0.198066,
		0.169825, -0.928756, 0.329503,
		39.758617, 40.066025, 40.705986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186058, 40.689133, 41.059185>,  <39.639740, 40.716152, 40.475334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186058, 40.689133, 41.059185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386497, 40.347420, 41.114456>,  <39.506763, 40.142391, 41.147617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386497, 40.347420, 41.114456>,  <39.186058, 40.689133, 41.059185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386497, 40.347420, 41.114456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118477, 0.090441, 0.988830,
		-0.857239, -0.511876, -0.055893,
		0.501103, -0.854285, 0.138175,
		39.536827, 40.091133, 41.155907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773235, 40.092590, 41.413456>,  <39.186058, 40.689133, 41.059185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773235, 40.092590, 41.413456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164860, 40.069668, 41.491585>,  <39.399834, 40.055916, 41.538460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164860, 40.069668, 41.491585>,  <38.773235, 40.092590, 41.413456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164860, 40.069668, 41.491585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194120, 0.025835, 0.980637,
		-0.061242, -0.998022, 0.014170,
		0.979064, -0.057306, 0.195319,
		39.458580, 40.052475, 41.550179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811039, 39.604488, 41.897667>,  <38.773235, 40.092590, 41.413456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811039, 39.604488, 41.897667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154301, 39.808670, 41.919621>,  <39.360256, 39.931179, 41.932793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154301, 39.808670, 41.919621>,  <38.811039, 39.604488, 41.897667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154301, 39.808670, 41.919621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093201, 0.049760, 0.994403,
		0.504868, -0.858463, 0.090276,
		0.858150, 0.510456, 0.054888,
		39.411747, 39.961807, 41.936089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127529, 39.330456, 42.436337>,  <38.811039, 39.604488, 41.897667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127529, 39.330456, 42.436337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292583, 39.693291, 42.403065>,  <39.391617, 39.910992, 42.383102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292583, 39.693291, 42.403065>,  <39.127529, 39.330456, 42.436337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292583, 39.693291, 42.403065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014680, 0.084677, 0.996300,
		0.910779, -0.412328, 0.021625,
		0.412633, 0.907092, -0.083175,
		39.416374, 39.965420, 42.378113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627487, 39.435261, 43.006538>,  <39.127529, 39.330456, 42.436337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627487, 39.435261, 43.006538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557434, 39.806976, 42.876461>,  <39.515404, 40.030006, 42.798412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557434, 39.806976, 42.876461>,  <39.627487, 39.435261, 43.006538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557434, 39.806976, 42.876461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108509, 0.346508, 0.931750,
		0.978548, 0.127891, -0.161520,
		-0.175130, 0.929288, -0.325197,
		39.504894, 40.085762, 42.778900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996826, 39.911648, 43.494766>,  <39.627487, 39.435261, 43.006538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996826, 39.911648, 43.494766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717152, 40.127373, 43.307030>,  <39.549347, 40.256809, 43.194386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717152, 40.127373, 43.307030>,  <39.996826, 39.911648, 43.494766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717152, 40.127373, 43.307030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344761, 0.320770, 0.882183,
		0.626324, 0.778619, -0.038343,
		-0.699184, 0.539313, -0.469344,
		39.507397, 40.289165, 43.166225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949818, 40.496838, 43.835541>,  <39.996826, 39.911648, 43.494766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949818, 40.496838, 43.835541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612732, 40.553722, 43.627846>,  <39.410480, 40.587852, 43.503227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612732, 40.553722, 43.627846>,  <39.949818, 40.496838, 43.835541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612732, 40.553722, 43.627846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472026, 0.268631, 0.839660,
		0.258890, 0.952688, -0.159253,
		-0.842714, 0.142208, -0.519240,
		39.359917, 40.596386, 43.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668571, 41.199085, 43.964458>,  <39.949818, 40.496838, 43.835541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668571, 41.199085, 43.964458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.358288, 40.971394, 43.855465>,  <39.172115, 40.834778, 43.790070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.358288, 40.971394, 43.855465>,  <39.668571, 41.199085, 43.964458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358288, 40.971394, 43.855465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511066, 0.313308, 0.800406,
		-0.370245, 0.760142, -0.533951,
		-0.775713, -0.569230, -0.272482,
		39.125572, 40.800625, 43.773720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124550, 41.691547, 43.981369>,  <39.668571, 41.199085, 43.964458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124550, 41.691547, 43.981369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974152, 41.320923, 43.985584>,  <38.883915, 41.098549, 43.988113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974152, 41.320923, 43.985584>,  <39.124550, 41.691547, 43.981369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974152, 41.320923, 43.985584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713144, 0.296609, 0.635177,
		-0.591656, 0.231308, -0.772295,
		-0.375991, -0.926563, 0.010535,
		38.861355, 41.042953, 43.988743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.348747, 41.857105, 43.791115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413235, 41.505589, 43.970776>,  <38.451927, 41.294678, 44.078571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413235, 41.505589, 43.970776>,  <38.348747, 41.857105, 43.791115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413235, 41.505589, 43.970776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590236, 0.278893, 0.757522,
		-0.790968, -0.387236, -0.473729,
		0.161220, -0.878787, 0.449156,
		38.461601, 41.241951, 44.105522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791931, 41.865402, 44.049801>,  <38.348747, 41.857105, 43.791115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791931, 41.865402, 44.049801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990082, 41.565922, 44.226006>,  <38.108971, 41.386234, 44.331726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990082, 41.565922, 44.226006>,  <37.791931, 41.865402, 44.049801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990082, 41.565922, 44.226006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444267, 0.217407, 0.869115,
		-0.746480, -0.626239, -0.224927,
		0.495374, -0.748704, 0.440507,
		38.138695, 41.341312, 44.358158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403160, 41.537418, 44.522675>,  <37.791931, 41.865402, 44.049801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403160, 41.537418, 44.522675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768463, 41.462303, 44.667282>,  <37.987644, 41.417233, 44.754047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768463, 41.462303, 44.667282>,  <37.403160, 41.537418, 44.522675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768463, 41.462303, 44.667282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323542, 0.204904, 0.923761,
		-0.247551, -0.960598, 0.126372,
		0.913257, -0.187792, 0.361518,
		38.042439, 41.405964, 44.775738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264439, 41.237350, 45.098892>,  <37.403160, 41.537418, 44.522675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264439, 41.237350, 45.098892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638481, 41.368416, 45.152874>,  <37.862907, 41.447056, 45.185265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638481, 41.368416, 45.152874>,  <37.264439, 41.237350, 45.098892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638481, 41.368416, 45.152874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189326, 0.140011, 0.971881,
		0.299555, -0.934362, 0.192961,
		0.935105, 0.327665, 0.134959,
		37.919014, 41.466713, 45.193363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530952, 40.939976, 45.765331>,  <37.264439, 41.237350, 45.098892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530952, 40.939976, 45.765331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783169, 41.246361, 45.715176>,  <37.934498, 41.430191, 45.685081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783169, 41.246361, 45.715176>,  <37.530952, 40.939976, 45.765331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783169, 41.246361, 45.715176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034521, 0.189063, 0.981358,
		0.775389, -0.614456, 0.145654,
		0.630539, 0.765962, -0.125386,
		37.972332, 41.476151, 45.677559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077209, 40.800995, 46.174179>,  <37.530952, 40.939976, 45.765331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077209, 40.800995, 46.174179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062042, 41.196026, 46.113190>,  <38.052944, 41.433044, 46.076595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062042, 41.196026, 46.113190>,  <38.077209, 40.800995, 46.174179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062042, 41.196026, 46.113190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115382, 0.147235, 0.982349,
		0.992597, 0.054837, 0.108366,
		-0.037913, 0.987580, -0.152472,
		38.050667, 41.492298, 46.067448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468811, 41.072220, 46.678139>,  <38.077209, 40.800995, 46.174179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468811, 41.072220, 46.678139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274811, 41.394772, 46.542770>,  <38.158409, 41.588303, 46.461548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274811, 41.394772, 46.542770>,  <38.468811, 41.072220, 46.678139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274811, 41.394772, 46.542770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022095, 0.375561, 0.926534,
		0.874232, 0.456851, -0.164332,
		-0.485005, 0.806375, -0.338422,
		38.129311, 41.636684, 46.441242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809505, 41.625854, 47.051815>,  <38.468811, 41.072220, 46.678139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809505, 41.625854, 47.051815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462246, 41.774345, 46.920048>,  <38.253891, 41.863438, 46.840988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462246, 41.774345, 46.920048>,  <38.809505, 41.625854, 47.051815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462246, 41.774345, 46.920048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160649, 0.417810, 0.894218,
		0.469587, 0.829234, -0.303084,
		-0.868147, 0.371223, -0.329414,
		38.201801, 41.885712, 46.821224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764801, 42.285248, 47.314487>,  <38.809505, 41.625854, 47.051815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764801, 42.285248, 47.314487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385681, 42.172607, 47.254650>,  <38.158211, 42.105022, 47.218746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385681, 42.172607, 47.254650>,  <38.764801, 42.285248, 47.314487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385681, 42.172607, 47.254650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285230, 0.538975, 0.792559,
		-0.142562, 0.793854, -0.591162,
		-0.947798, -0.281605, -0.149594,
		38.101341, 42.088127, 47.209770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375141, 42.937965, 47.505295>,  <38.764801, 42.285248, 47.314487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375141, 42.937965, 47.505295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109123, 42.639282, 47.500420>,  <37.949512, 42.460072, 47.497494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109123, 42.639282, 47.500420>,  <38.375141, 42.937965, 47.505295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109123, 42.639282, 47.500420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352338, 0.299337, 0.886711,
		-0.658464, 0.593995, -0.462165,
		-0.665044, -0.746705, -0.012184,
		37.909611, 42.415272, 47.496765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802692, 43.148827, 47.829979>,  <38.375141, 42.937965, 47.505295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802692, 43.148827, 47.829979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758739, 42.752464, 47.861053>,  <37.732368, 42.514648, 47.879700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758739, 42.752464, 47.861053>,  <37.802692, 43.148827, 47.829979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758739, 42.752464, 47.861053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290072, 0.106727, 0.951035,
		-0.950675, 0.081971, -0.299161,
		-0.109886, -0.990903, 0.077685,
		37.725773, 42.455193, 47.884357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121277, 43.042645, 48.147675>,  <37.802692, 43.148827, 47.829979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121277, 43.042645, 48.147675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351521, 42.720108, 48.202068>,  <37.489666, 42.526588, 48.234703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351521, 42.720108, 48.202068>,  <37.121277, 43.042645, 48.147675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351521, 42.720108, 48.202068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197851, 0.024025, 0.979938,
		-0.793427, -0.590968, -0.145706,
		0.575611, -0.806337, 0.135986,
		37.524204, 42.478207, 48.242863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799221, 42.655685, 48.638783>,  <37.121277, 43.042645, 48.147675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799221, 42.655685, 48.638783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188690, 42.565262, 48.650543>,  <37.422371, 42.511005, 48.657600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188690, 42.565262, 48.650543>,  <36.799221, 42.655685, 48.638783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188690, 42.565262, 48.650543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047775, -0.076220, 0.995946,
		-0.222904, -0.971126, -0.085013,
		0.973669, -0.226062, 0.029406,
		37.480789, 42.497444, 48.659367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805561, 42.208607, 49.164616>,  <36.799221, 42.655685, 48.638783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805561, 42.208607, 49.164616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190437, 42.308056, 49.120125>,  <37.421364, 42.367725, 49.093430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190437, 42.308056, 49.120125>,  <36.805561, 42.208607, 49.164616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190437, 42.308056, 49.120125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124798, -0.039440, 0.991398,
		0.242095, -0.967798, -0.068976,
		0.962193, 0.248621, -0.111231,
		37.479095, 42.382641, 49.086754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021317, 41.760357, 49.591446>,  <36.805561, 42.208607, 49.164616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021317, 41.760357, 49.591446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349373, 41.987343, 49.562183>,  <37.546207, 42.123535, 49.544624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349373, 41.987343, 49.562183>,  <37.021317, 41.760357, 49.591446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349373, 41.987343, 49.562183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032531, 0.173908, 0.984224,
		0.571237, -0.804822, 0.161089,
		0.820140, 0.567466, -0.073161,
		37.595413, 42.157581, 49.540234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475384, 41.480846, 50.066235>,  <37.021317, 41.760357, 49.591446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475384, 41.480846, 50.066235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605209, 41.852673, 49.996300>,  <37.683105, 42.075768, 49.954338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605209, 41.852673, 49.996300>,  <37.475384, 41.480846, 50.066235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605209, 41.852673, 49.996300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011237, 0.181041, 0.983411,
		0.945798, -0.321142, 0.048313,
		0.324561, 0.929566, -0.174837,
		37.702579, 42.131542, 49.943848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086277, 41.624855, 50.423141>,  <37.475384, 41.480846, 50.066235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086277, 41.624855, 50.423141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968040, 41.998173, 50.341568>,  <37.897099, 42.222164, 50.292622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968040, 41.998173, 50.341568>,  <38.086277, 41.624855, 50.423141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968040, 41.998173, 50.341568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227233, 0.276039, 0.933899,
		0.927895, 0.229713, -0.293670,
		-0.295593, 0.933292, -0.203937,
		37.879364, 42.278160, 50.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576397, 42.109886, 50.742615>,  <38.086277, 41.624855, 50.423141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576397, 42.109886, 50.742615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240219, 42.322613, 50.701008>,  <38.038513, 42.450249, 50.676044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240219, 42.322613, 50.701008>,  <38.576397, 42.109886, 50.742615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240219, 42.322613, 50.701008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090300, 0.326712, 0.940800,
		0.534321, 0.781298, -0.322607,
		-0.840445, 0.531821, -0.104017,
		37.988087, 42.482159, 50.669804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701817, 42.695156, 51.094673>,  <38.576397, 42.109886, 50.742615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701817, 42.695156, 51.094673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309711, 42.763641, 51.055134>,  <38.074448, 42.804733, 51.031410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309711, 42.763641, 51.055134>,  <38.701817, 42.695156, 51.094673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309711, 42.763641, 51.055134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057174, 0.233138, 0.970762,
		0.189253, 0.957253, -0.218747,
		-0.980262, 0.171213, -0.098852,
		38.015633, 42.815006, 51.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514839, 43.312366, 51.350143>,  <38.701817, 42.695156, 51.094673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514839, 43.312366, 51.350143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163578, 43.121109, 51.356197>,  <37.952820, 43.006355, 51.359829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163578, 43.121109, 51.356197>,  <38.514839, 43.312366, 51.350143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163578, 43.121109, 51.356197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083708, 0.184736, 0.979217,
		-0.471002, 0.858634, -0.202251,
		-0.878151, -0.478143, 0.015137,
		37.900131, 42.977665, 51.360737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030186, 43.759010, 51.649384>,  <38.514839, 43.312366, 51.350143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030186, 43.759010, 51.649384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868404, 43.396984, 51.701962>,  <37.771336, 43.179768, 51.733509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868404, 43.396984, 51.701962>,  <38.030186, 43.759010, 51.649384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868404, 43.396984, 51.701962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134249, 0.200920, 0.970365,
		-0.904650, 0.374825, -0.202767,
		-0.404458, -0.905062, 0.131442,
		37.747066, 43.125465, 51.741394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353157, 43.859177, 51.982384>,  <38.030186, 43.759010, 51.649384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353157, 43.859177, 51.982384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451172, 43.476570, 52.045673>,  <37.509979, 43.247005, 52.083649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451172, 43.476570, 52.045673>,  <37.353157, 43.859177, 51.982384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451172, 43.476570, 52.045673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185143, 0.114030, 0.976073,
		-0.951672, -0.268466, -0.149151,
		0.245035, -0.956516, 0.158223,
		37.524681, 43.189617, 52.093140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828129, 43.444660, 52.382030>,  <37.353157, 43.859177, 51.982384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828129, 43.444660, 52.382030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189468, 43.284145, 52.442589>,  <37.406273, 43.187836, 52.478924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189468, 43.284145, 52.442589>,  <36.828129, 43.444660, 52.382030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189468, 43.284145, 52.442589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209106, -0.103877, 0.972360,
		-0.374472, -0.910042, -0.177749,
		0.903352, -0.401290, 0.151396,
		37.460476, 43.163757, 52.488007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826340, 42.703354, 52.514290>,  <36.828129, 43.444660, 52.382030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826340, 42.703354, 52.514290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105953, 42.928627, 52.690552>,  <37.273720, 43.063789, 52.796310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105953, 42.928627, 52.690552>,  <36.826340, 42.703354, 52.514290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105953, 42.928627, 52.690552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361778, -0.253021, 0.897272,
		0.616823, -0.786643, 0.026877,
		0.699032, 0.563181, 0.440659,
		37.315662, 43.097580, 52.822750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473759, 42.783653, 51.849785>,  <36.826340, 42.703354, 52.514290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473759, 42.783653, 51.849785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110611, 42.731934, 52.009312>,  <35.892723, 42.700901, 52.105026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110611, 42.731934, 52.009312>,  <36.473759, 42.783653, 51.849785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110611, 42.731934, 52.009312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207241, -0.688502, -0.694994,
		0.364450, -0.713615, 0.598273,
		-0.907870, -0.129304, 0.398815,
		35.838249, 42.693142, 52.128956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410744, 42.130322, 52.007366>,  <36.473759, 42.783653, 51.849785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410744, 42.130322, 52.007366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067112, 42.321491, 51.934074>,  <35.860935, 42.436192, 51.890099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067112, 42.321491, 51.934074>,  <36.410744, 42.130322, 52.007366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067112, 42.321491, 51.934074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186734, -0.625954, -0.757173,
		-0.476566, -0.616255, 0.626988,
		-0.859078, 0.477923, -0.183233,
		35.809387, 42.464867, 51.879105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983742, 41.622280, 51.787056>,  <36.410744, 42.130322, 52.007366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983742, 41.622280, 51.787056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824207, 41.962639, 51.650291>,  <35.728489, 42.166855, 51.568233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824207, 41.962639, 51.650291>,  <35.983742, 41.622280, 51.787056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824207, 41.962639, 51.650291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127188, -0.420578, -0.898297,
		-0.908161, -0.314783, 0.275964,
		-0.398833, 0.850897, -0.341916,
		35.704556, 42.217907, 51.547718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480141, 41.370743, 51.410458>,  <35.983742, 41.622280, 51.787056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480141, 41.370743, 51.410458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518372, 41.745899, 51.277050>,  <35.541309, 41.970993, 51.197006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518372, 41.745899, 51.277050>,  <35.480141, 41.370743, 51.410458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518372, 41.745899, 51.277050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229765, -0.305218, -0.924148,
		-0.968542, 0.164955, 0.186323,
		0.095574, 0.937887, -0.333517,
		35.547043, 42.027264, 51.176994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777843, 41.626804, 51.125786>,  <35.480141, 41.370743, 51.410458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777843, 41.626804, 51.125786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059921, 41.856255, 50.959099>,  <35.229168, 41.993923, 50.859085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059921, 41.856255, 50.959099>,  <34.777843, 41.626804, 51.125786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059921, 41.856255, 50.959099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247429, -0.351692, -0.902824,
		-0.664441, 0.739774, -0.106079,
		0.705193, 0.573626, -0.416720,
		35.271481, 42.028343, 50.834084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423721, 41.774578, 50.557991>,  <34.777843, 41.626804, 51.125786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423721, 41.774578, 50.557991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803375, 41.886414, 50.500072>,  <35.031170, 41.953514, 50.465321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803375, 41.886414, 50.500072>,  <34.423721, 41.774578, 50.557991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803375, 41.886414, 50.500072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154761, 0.013778, -0.987856,
		-0.274201, 0.960020, 0.056347,
		0.949138, 0.279591, -0.144795,
		35.088116, 41.970291, 50.456635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340900, 42.149605, 49.978989>,  <34.423721, 41.774578, 50.557991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340900, 42.149605, 49.978989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732845, 42.071045, 49.993374>,  <34.968014, 42.023911, 50.002003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732845, 42.071045, 49.993374>,  <34.340900, 42.149605, 49.978989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732845, 42.071045, 49.993374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023659, -0.064628, -0.997629,
		0.198260, 0.978392, -0.058680,
		0.979864, -0.196401, 0.035961,
		35.026806, 42.012123, 50.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628223, 42.533257, 49.430035>,  <34.340900, 42.149605, 49.978989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628223, 42.533257, 49.430035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893772, 42.240307, 49.490570>,  <35.053101, 42.064537, 49.526890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893772, 42.240307, 49.490570>,  <34.628223, 42.533257, 49.430035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893772, 42.240307, 49.490570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024857, -0.180639, -0.983235,
		0.747436, 0.656501, -0.101715,
		0.663868, -0.732378, 0.151335,
		35.092934, 42.020592, 49.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216984, 42.631565, 49.167072>,  <34.628223, 42.533257, 49.430035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216984, 42.631565, 49.167072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224869, 42.232040, 49.184898>,  <35.229599, 41.992325, 49.195595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224869, 42.232040, 49.184898>,  <35.216984, 42.631565, 49.167072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224869, 42.232040, 49.184898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097657, -0.042442, -0.994315,
		0.995025, 0.023954, 0.096704,
		0.019713, -0.998812, 0.044570,
		35.230782, 41.932396, 49.198269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690041, 42.379280, 48.704109>,  <35.216984, 42.631565, 49.167072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690041, 42.379280, 48.704109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.496284, 42.033260, 48.756351>,  <35.380032, 41.825649, 48.787697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.496284, 42.033260, 48.756351>,  <35.690041, 42.379280, 48.704109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496284, 42.033260, 48.756351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198733, -0.254191, -0.946516,
		0.851978, -0.432531, 0.295042,
		-0.484394, -0.865046, 0.130606,
		35.350967, 41.773746, 48.795532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055725, 41.877819, 48.446239>,  <35.690041, 42.379280, 48.704109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055725, 41.877819, 48.446239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701794, 41.691452, 48.446529>,  <35.489433, 41.579632, 48.446705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701794, 41.691452, 48.446529>,  <36.055725, 41.877819, 48.446239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701794, 41.691452, 48.446529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114815, -0.219552, -0.968821,
		0.451550, -0.857157, 0.247760,
		-0.884828, -0.465917, 0.000725,
		35.436344, 41.551678, 48.446747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112625, 41.196808, 48.109848>,  <36.055725, 41.877819, 48.446239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112625, 41.196808, 48.109848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721802, 41.280571, 48.094334>,  <35.487309, 41.330830, 48.085026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721802, 41.280571, 48.094334>,  <36.112625, 41.196808, 48.109848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721802, 41.280571, 48.094334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014214, -0.245825, -0.969210,
		-0.212495, -0.946424, 0.243162,
		-0.977059, 0.209408, -0.038784,
		35.428684, 41.343391, 48.082699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877548, 40.681667, 47.757874>,  <36.112625, 41.196808, 48.109848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877548, 40.681667, 47.757874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578655, 40.946720, 47.737659>,  <35.399319, 41.105751, 47.725529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578655, 40.946720, 47.737659>,  <35.877548, 40.681667, 47.757874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578655, 40.946720, 47.737659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022676, -0.101427, -0.994585,
		-0.664173, -0.742042, 0.090816,
		-0.747235, 0.662636, -0.050538,
		35.354485, 41.145512, 47.722500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369301, 40.410149, 47.230343>,  <35.877548, 40.681667, 47.757874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369301, 40.410149, 47.230343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299168, 40.802887, 47.259312>,  <35.257088, 41.038528, 47.276691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299168, 40.802887, 47.259312>,  <35.369301, 40.410149, 47.230343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299168, 40.802887, 47.259312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049392, 0.064697, -0.996682,
		-0.983269, -0.178331, 0.037151,
		-0.175336, 0.981841, 0.072423,
		35.246567, 41.097439, 47.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013103, 40.562908, 46.628254>,  <35.369301, 40.410149, 47.230343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013103, 40.562908, 46.628254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084354, 40.938263, 46.746708>,  <35.127106, 41.163475, 46.817780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084354, 40.938263, 46.746708>,  <35.013103, 40.562908, 46.628254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084354, 40.938263, 46.746708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172651, 0.266470, -0.948254,
		-0.968742, 0.220038, -0.114548,
		0.178128, 0.938391, 0.296131,
		35.137794, 41.219780, 46.835548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575821, 41.016338, 46.244228>,  <35.013103, 40.562908, 46.628254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575821, 41.016338, 46.244228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911060, 41.215366, 46.333683>,  <35.112206, 41.334782, 46.387356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911060, 41.215366, 46.333683>,  <34.575821, 41.016338, 46.244228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911060, 41.215366, 46.333683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098196, 0.265659, -0.959053,
		-0.536609, 0.825741, 0.173788,
		0.838098, 0.497571, 0.223640,
		35.162491, 41.364639, 46.400776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547489, 41.688229, 45.900436>,  <34.575821, 41.016338, 46.244228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547489, 41.688229, 45.900436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930691, 41.630287, 45.999432>,  <35.160610, 41.595520, 46.058830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930691, 41.630287, 45.999432>,  <34.547489, 41.688229, 45.900436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930691, 41.630287, 45.999432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270836, 0.173376, -0.946884,
		0.094253, 0.974144, 0.205327,
		0.958000, -0.144857, 0.247492,
		35.218090, 41.586830, 46.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898140, 42.177513, 45.538475>,  <34.547489, 41.688229, 45.900436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898140, 42.177513, 45.538475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192074, 41.921371, 45.627892>,  <35.368435, 41.767689, 45.681541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192074, 41.921371, 45.627892>,  <34.898140, 42.177513, 45.538475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192074, 41.921371, 45.627892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234385, -0.069537, -0.969654,
		0.636464, 0.764927, 0.098991,
		0.734831, -0.640352, 0.223545,
		35.412521, 41.729267, 45.694954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429855, 42.344162, 45.089890>,  <34.898140, 42.177513, 45.538475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429855, 42.344162, 45.089890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561405, 41.992901, 45.228848>,  <35.640335, 41.782143, 45.312222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561405, 41.992901, 45.228848>,  <35.429855, 42.344162, 45.089890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561405, 41.992901, 45.228848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172112, -0.305959, -0.936358,
		0.928557, 0.367735, 0.050519,
		0.328874, -0.878157, 0.347392,
		35.660069, 41.729454, 45.333065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007912, 42.252384, 44.759155>,  <35.429855, 42.344162, 45.089890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007912, 42.252384, 44.759155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906399, 41.885361, 44.881592>,  <35.845493, 41.665146, 44.955051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906399, 41.885361, 44.881592>,  <36.007912, 42.252384, 44.759155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906399, 41.885361, 44.881592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163514, -0.352590, -0.921381,
		0.953341, -0.183779, 0.239514,
		-0.253780, -0.917554, 0.306088,
		35.830265, 41.610096, 44.973419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.153740, 33.207897, 26.672829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771984, 33.091488, 26.646158>,  <44.542931, 33.021641, 26.630156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771984, 33.091488, 26.646158>,  <45.153740, 33.207897, 26.672829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771984, 33.091488, 26.646158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041040, -0.349072, 0.936197,
		-0.295730, 0.890760, 0.345094,
		-0.954390, -0.291024, -0.066674,
		44.485668, 33.004181, 26.626156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782684, 33.510052, 27.274939>,  <45.153740, 33.207897, 26.672829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782684, 33.510052, 27.274939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540623, 33.217522, 27.149109>,  <44.395386, 33.042004, 27.073610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540623, 33.217522, 27.149109>,  <44.782684, 33.510052, 27.274939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540623, 33.217522, 27.149109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304803, -0.152196, 0.940177,
		-0.735450, 0.664833, -0.130808,
		-0.605152, -0.731323, -0.314575,
		44.359077, 32.998123, 27.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143963, 33.550411, 27.677315>,  <44.782684, 33.510052, 27.274939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143963, 33.550411, 27.677315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164387, 33.169991, 27.555405>,  <44.176640, 32.941738, 27.482260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164387, 33.169991, 27.555405>,  <44.143963, 33.550411, 27.677315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164387, 33.169991, 27.555405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439466, -0.295434, 0.848286,
		-0.896807, 0.090624, -0.433041,
		0.051060, -0.951055, -0.304774,
		44.179707, 32.884674, 27.463972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565212, 33.265591, 27.834003>,  <44.143963, 33.550411, 27.677315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565212, 33.265591, 27.834003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757332, 32.921093, 27.767572>,  <43.872604, 32.714394, 27.727715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757332, 32.921093, 27.767572>,  <43.565212, 33.265591, 27.834003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757332, 32.921093, 27.767572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387748, -0.378324, 0.840549,
		-0.786746, -0.339316, -0.515651,
		0.480295, -0.861241, -0.166076,
		43.901421, 32.662720, 27.717749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094185, 32.701748, 27.886969>,  <43.565212, 33.265591, 27.834003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094185, 32.701748, 27.886969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457382, 32.547832, 27.953291>,  <43.675301, 32.455482, 27.993084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457382, 32.547832, 27.953291>,  <43.094185, 32.701748, 27.886969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457382, 32.547832, 27.953291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274091, -0.246182, 0.929660,
		-0.316908, -0.889567, -0.328999,
		0.907989, -0.384792, 0.165805,
		43.729778, 32.432396, 28.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956806, 32.054493, 28.266369>,  <43.094185, 32.701748, 27.886969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956806, 32.054493, 28.266369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328091, 32.176228, 28.351976>,  <43.550861, 32.249268, 28.403341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328091, 32.176228, 28.351976>,  <42.956806, 32.054493, 28.266369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328091, 32.176228, 28.351976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177998, -0.141890, 0.973747,
		0.326714, -0.941938, -0.077532,
		0.928210, 0.304336, 0.214021,
		43.606552, 32.267529, 28.416183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003460, 31.864662, 28.934555>,  <42.956806, 32.054493, 28.266369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003460, 31.864662, 28.934555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345287, 32.068497, 28.894476>,  <43.550385, 32.190796, 28.870428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345287, 32.068497, 28.894476>,  <43.003460, 31.864662, 28.934555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345287, 32.068497, 28.894476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073100, 0.072985, 0.994650,
		0.514173, -0.857319, 0.025120,
		0.854566, 0.509586, -0.100197,
		43.601658, 32.221371, 28.864416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586243, 31.473551, 29.345102>,  <43.003460, 31.864662, 28.934555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586243, 31.473551, 29.345102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656204, 31.863302, 29.288546>,  <43.698181, 32.097153, 29.254612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656204, 31.863302, 29.288546>,  <43.586243, 31.473551, 29.345102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656204, 31.863302, 29.288546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099324, 0.125414, 0.987120,
		0.979563, -0.186692, -0.074845,
		0.174901, 0.974380, -0.141394,
		43.708675, 32.155617, 29.246128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980461, 31.554394, 29.848331>,  <43.586243, 31.473551, 29.345102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980461, 31.554394, 29.848331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859100, 31.923971, 29.755142>,  <43.786282, 32.145718, 29.699228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859100, 31.923971, 29.755142>,  <43.980461, 31.554394, 29.848331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859100, 31.923971, 29.755142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094091, 0.214255, 0.972235,
		0.948205, 0.316902, 0.021929,
		-0.303405, 0.923941, -0.232975,
		43.768078, 32.201153, 29.685249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355965, 31.961786, 30.428314>,  <43.980461, 31.554394, 29.848331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355965, 31.961786, 30.428314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087936, 32.219738, 30.281269>,  <43.927120, 32.374508, 30.193041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087936, 32.219738, 30.281269>,  <44.355965, 31.961786, 30.428314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087936, 32.219738, 30.281269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064546, 0.442744, 0.894322,
		0.739488, 0.622984, -0.255044,
		-0.670068, 0.644879, -0.367615,
		43.886917, 32.413200, 30.170984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614964, 32.633072, 30.560946>,  <44.355965, 31.961786, 30.428314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614964, 32.633072, 30.560946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215698, 32.649036, 30.542744>,  <43.976139, 32.658615, 30.531822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215698, 32.649036, 30.542744>,  <44.614964, 32.633072, 30.560946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215698, 32.649036, 30.542744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017896, 0.523592, 0.851781,
		0.057823, 0.851034, -0.521918,
		-0.998166, 0.039912, -0.045505,
		43.916248, 32.661011, 30.529093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465702, 33.205791, 30.947073>,  <44.614964, 32.633072, 30.560946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465702, 33.205791, 30.947073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098454, 33.051048, 30.912691>,  <43.878105, 32.958202, 30.892061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098454, 33.051048, 30.912691>,  <44.465702, 33.205791, 30.947073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098454, 33.051048, 30.912691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348804, 0.685921, 0.638630,
		-0.188100, 0.616324, -0.764698,
		-0.918125, -0.386856, -0.085954,
		43.823017, 32.934990, 30.886906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862892, 33.799622, 30.866566>,  <44.465702, 33.205791, 30.947073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862892, 33.799622, 30.866566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730740, 33.463886, 31.039240>,  <43.651447, 33.262444, 31.142845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730740, 33.463886, 31.039240>,  <43.862892, 33.799622, 30.866566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730740, 33.463886, 31.039240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217343, 0.512733, 0.830583,
		-0.918483, 0.180584, -0.351822,
		-0.330380, -0.839342, 0.431687,
		43.631626, 33.212082, 31.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452652, 34.017632, 31.209455>,  <43.862892, 33.799622, 30.866566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452652, 34.017632, 31.209455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511448, 33.666580, 31.391953>,  <43.546726, 33.455948, 31.501451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511448, 33.666580, 31.391953>,  <43.452652, 34.017632, 31.209455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511448, 33.666580, 31.391953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209007, 0.423282, 0.881560,
		-0.966805, -0.224934, -0.121215,
		0.146985, -0.877631, 0.456244,
		43.555542, 33.403290, 31.528826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771099, 33.855957, 31.709721>,  <43.452652, 34.017632, 31.209455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771099, 33.855957, 31.709721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081348, 33.647285, 31.851854>,  <43.267498, 33.522083, 31.937134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081348, 33.647285, 31.851854>,  <42.771099, 33.855957, 31.709721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081348, 33.647285, 31.851854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194516, 0.338004, 0.920824,
		-0.600475, -0.783331, 0.160690,
		0.775624, -0.521675, 0.355333,
		43.314037, 33.490784, 31.958454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465206, 33.506554, 32.375916>,  <42.771099, 33.855957, 31.709721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465206, 33.506554, 32.375916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863636, 33.523495, 32.407017>,  <43.102692, 33.533657, 32.425678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863636, 33.523495, 32.407017>,  <42.465206, 33.506554, 32.375916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863636, 33.523495, 32.407017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088536, 0.471596, 0.877359,
		0.000488, -0.880797, 0.473494,
		0.996073, 0.042350, 0.077752,
		43.162457, 33.536201, 32.430344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486774, 33.356068, 33.037807>,  <42.465206, 33.506554, 32.375916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486774, 33.356068, 33.037807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841412, 33.501263, 32.923126>,  <43.054192, 33.588379, 32.854317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841412, 33.501263, 32.923126>,  <42.486774, 33.356068, 33.037807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841412, 33.501263, 32.923126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122185, 0.414027, 0.902027,
		0.446133, -0.834756, 0.322719,
		0.886587, 0.362992, -0.286706,
		43.107388, 33.610161, 32.837116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051655, 33.182129, 33.566956>,  <42.486774, 33.356068, 33.037807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051655, 33.182129, 33.566956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184631, 33.511116, 33.382336>,  <43.264416, 33.708508, 33.271564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184631, 33.511116, 33.382336>,  <43.051655, 33.182129, 33.566956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184631, 33.511116, 33.382336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124468, 0.523368, 0.842967,
		0.934874, -0.222789, 0.276361,
		0.332442, 0.822466, -0.461554,
		43.284363, 33.757854, 33.243870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639057, 33.472668, 33.981506>,  <43.051655, 33.182129, 33.566956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639057, 33.472668, 33.981506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478199, 33.763428, 33.758835>,  <43.381683, 33.937885, 33.625233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478199, 33.763428, 33.758835>,  <43.639057, 33.472668, 33.981506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478199, 33.763428, 33.758835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010020, 0.604478, 0.796558,
		0.915521, 0.325909, -0.235804,
		-0.402144, 0.726904, -0.556678,
		43.357555, 33.981499, 33.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969879, 34.059826, 34.325554>,  <43.639057, 33.472668, 33.981506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969879, 34.059826, 34.325554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686794, 34.216965, 34.090672>,  <43.516945, 34.311249, 33.949741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686794, 34.216965, 34.090672>,  <43.969879, 34.059826, 34.325554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686794, 34.216965, 34.090672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159962, 0.720466, 0.674790,
		0.688155, 0.571487, -0.447040,
		-0.707711, 0.392851, -0.587208,
		43.474480, 34.334820, 33.914509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126091, 34.774075, 34.321190>,  <43.969879, 34.059826, 34.325554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126091, 34.774075, 34.321190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739422, 34.724407, 34.231640>,  <43.507420, 34.694607, 34.177910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739422, 34.724407, 34.231640>,  <44.126091, 34.774075, 34.321190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739422, 34.724407, 34.231640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232014, 0.794569, 0.561097,
		0.108214, 0.594341, -0.796900,
		-0.966674, -0.124173, -0.223879,
		43.449421, 34.687157, 34.164474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709309, 35.073578, 34.898422>,  <44.126091, 34.774075, 34.321190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709309, 35.073578, 34.898422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089657, 35.010082, 35.004738>,  <44.317867, 34.971985, 35.068527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089657, 35.010082, 35.004738>,  <43.709309, 35.073578, 34.898422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089657, 35.010082, 35.004738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308215, 0.404862, -0.860866,
		0.029047, 0.900494, 0.433898,
		0.950873, -0.158740, 0.265785,
		44.374920, 34.962460, 35.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104179, 35.761646, 34.796024>,  <43.709309, 35.073578, 34.898422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104179, 35.761646, 34.796024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377064, 35.469185, 34.796120>,  <44.540794, 35.293709, 34.796177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377064, 35.469185, 34.796120>,  <44.104179, 35.761646, 34.796024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377064, 35.469185, 34.796120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288109, 0.268527, -0.919177,
		0.671999, 0.627139, 0.393845,
		0.682210, -0.731157, 0.000235,
		44.581726, 35.249840, 34.796188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678692, 36.100365, 34.392838>,  <44.104179, 35.761646, 34.796024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678692, 36.100365, 34.392838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.765266, 35.709896, 34.399010>,  <44.817211, 35.475613, 34.402714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.765266, 35.709896, 34.399010>,  <44.678692, 36.100365, 34.392838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765266, 35.709896, 34.399010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398452, 0.073889, -0.914208,
		0.891286, 0.204018, 0.404951,
		0.216436, -0.976175, 0.015435,
		44.830196, 35.417042, 34.403641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457966, 35.987381, 34.440884>,  <44.678692, 36.100365, 34.392838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457966, 35.987381, 34.440884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292175, 35.670380, 34.261932>,  <45.192703, 35.480179, 34.154560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292175, 35.670380, 34.261932>,  <45.457966, 35.987381, 34.440884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292175, 35.670380, 34.261932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517003, 0.199514, -0.832407,
		0.748947, -0.576305, 0.327035,
		-0.414472, -0.792507, -0.447377,
		45.167835, 35.432629, 34.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980450, 35.786182, 34.090576>,  <45.457966, 35.987381, 34.440884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980450, 35.786182, 34.090576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681713, 35.570248, 33.935246>,  <45.502472, 35.440685, 33.842049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.681713, 35.570248, 33.935246>,  <45.980450, 35.786182, 34.090576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681713, 35.570248, 33.935246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277348, 0.277878, -0.919707,
		0.604403, -0.794579, -0.057807,
		-0.746843, -0.539841, -0.388325,
		45.457661, 35.408295, 33.818748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237587, 35.533092, 33.499752>,  <45.980450, 35.786182, 34.090576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237587, 35.533092, 33.499752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847305, 35.486076, 33.425789>,  <45.613136, 35.457867, 33.381409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847305, 35.486076, 33.425789>,  <46.237587, 35.533092, 33.499752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847305, 35.486076, 33.425789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170424, 0.123280, -0.977629,
		0.137722, -0.985385, -0.100250,
		-0.975699, -0.117556, -0.184911,
		45.554596, 35.450813, 33.370316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115719, 35.112209, 32.878925>,  <46.237587, 35.533092, 33.499752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115719, 35.112209, 32.878925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750404, 35.271660, 32.912418>,  <45.531216, 35.367329, 32.932514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750404, 35.271660, 32.912418>,  <46.115719, 35.112209, 32.878925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750404, 35.271660, 32.912418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046401, 0.306057, -0.950882,
		-0.404674, -0.864539, -0.298013,
		-0.913283, 0.398625, 0.083737,
		45.476418, 35.391247, 32.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605976, 34.686600, 32.352196>,  <46.115719, 35.112209, 32.878925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605976, 34.686600, 32.352196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450344, 35.044857, 32.438393>,  <45.356964, 35.259811, 32.490112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450344, 35.044857, 32.438393>,  <45.605976, 34.686600, 32.352196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450344, 35.044857, 32.438393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041348, 0.216713, -0.975359,
		-0.920273, -0.388408, -0.047287,
		-0.389085, 0.895642, 0.215495,
		45.333618, 35.313549, 32.503040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064693, 34.792179, 31.923613>,  <45.605976, 34.686600, 32.352196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064693, 34.792179, 31.923613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118084, 35.168873, 32.047115>,  <45.150116, 35.394890, 32.121216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118084, 35.168873, 32.047115>,  <45.064693, 34.792179, 31.923613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118084, 35.168873, 32.047115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096519, 0.297709, -0.949765,
		-0.986341, 0.156570, -0.051158,
		0.133474, 0.941730, 0.308755,
		45.158127, 35.451393, 32.139740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594467, 35.089432, 31.587967>,  <45.064693, 34.792179, 31.923613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594467, 35.089432, 31.587967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871395, 35.363865, 31.677401>,  <45.037552, 35.528522, 31.731060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871395, 35.363865, 31.677401>,  <44.594467, 35.089432, 31.587967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871395, 35.363865, 31.677401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006159, 0.315453, -0.948921,
		-0.721565, 0.655580, 0.222619,
		0.692319, 0.686079, 0.223583,
		45.079090, 35.569687, 31.744474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327278, 35.697918, 31.610296>,  <44.594467, 35.089432, 31.587967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327278, 35.697918, 31.610296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710316, 35.793999, 31.546648>,  <44.940140, 35.851646, 31.508459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710316, 35.793999, 31.546648>,  <44.327278, 35.697918, 31.610296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710316, 35.793999, 31.546648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243183, 0.377613, -0.893459,
		-0.154528, 0.894265, 0.420013,
		0.957592, 0.240204, -0.159118,
		44.997593, 35.866058, 31.498913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287933, 36.354336, 31.418028>,  <44.327278, 35.697918, 31.610296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287933, 36.354336, 31.418028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.634838, 36.207432, 31.283577>,  <44.842979, 36.119289, 31.202906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.634838, 36.207432, 31.283577>,  <44.287933, 36.354336, 31.418028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634838, 36.207432, 31.283577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186622, 0.386104, -0.903380,
		0.461559, 0.846192, 0.266312,
		0.867258, -0.367263, -0.336128,
		44.895016, 36.097252, 31.182739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455608, 36.871166, 30.939701>,  <44.287933, 36.354336, 31.418028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455608, 36.871166, 30.939701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674908, 36.553379, 30.835203>,  <44.806488, 36.362709, 30.772505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674908, 36.553379, 30.835203>,  <44.455608, 36.871166, 30.939701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674908, 36.553379, 30.835203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130347, 0.227387, -0.965041,
		0.826096, 0.563134, 0.021108,
		0.548247, -0.794465, -0.261247,
		44.839382, 36.315041, 30.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836357, 37.110188, 30.405602>,  <44.455608, 36.871166, 30.939701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836357, 37.110188, 30.405602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852741, 36.713886, 30.353865>,  <44.862572, 36.476105, 30.322823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852741, 36.713886, 30.353865>,  <44.836357, 37.110188, 30.405602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852741, 36.713886, 30.353865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183011, 0.119819, -0.975782,
		0.982257, 0.063639, -0.176411,
		0.040960, -0.990754, -0.129340,
		44.865028, 36.416660, 30.315063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182323, 37.064198, 29.730247>,  <44.836357, 37.110188, 30.405602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182323, 37.064198, 29.730247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021114, 36.707500, 29.812576>,  <44.924389, 36.493481, 29.861973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021114, 36.707500, 29.812576>,  <45.182323, 37.064198, 29.730247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021114, 36.707500, 29.812576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329630, -0.068360, -0.941632,
		0.853768, -0.447341, -0.266396,
		-0.403020, -0.891747, 0.205821,
		44.900208, 36.439976, 29.874323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453720, 36.582150, 29.208195>,  <45.182323, 37.064198, 29.730247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453720, 36.582150, 29.208195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094894, 36.457615, 29.333633>,  <44.879601, 36.382893, 29.408895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094894, 36.457615, 29.333633>,  <45.453720, 36.582150, 29.208195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094894, 36.457615, 29.333633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307144, -0.070917, -0.949017,
		0.317708, -0.947648, -0.032010,
		-0.897064, -0.311342, 0.313596,
		44.825775, 36.364212, 29.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298920, 36.018200, 28.758499>,  <45.453720, 36.582150, 29.208195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298920, 36.018200, 28.758499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944710, 36.110180, 28.919977>,  <44.732185, 36.165367, 29.016865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944710, 36.110180, 28.919977>,  <45.298920, 36.018200, 28.758499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944710, 36.110180, 28.919977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451196, -0.218486, -0.865267,
		-0.110762, -0.948361, 0.297226,
		-0.885525, 0.229946, 0.403696,
		44.679054, 36.179165, 29.041086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798759, 35.523464, 28.492075>,  <45.298920, 36.018200, 28.758499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798759, 35.523464, 28.492075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568459, 35.828781, 28.609312>,  <44.430279, 36.011971, 28.679653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568459, 35.828781, 28.609312>,  <44.798759, 35.523464, 28.492075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568459, 35.828781, 28.609312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684310, -0.253664, -0.683648,
		-0.447476, -0.594173, 0.668374,
		-0.575748, 0.763291, 0.293090,
		44.395733, 36.057770, 28.697239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271885, 35.205387, 28.533958>,  <44.798759, 35.523464, 28.492075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271885, 35.205387, 28.533958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169014, 35.590797, 28.504358>,  <44.107292, 35.822044, 28.486597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169014, 35.590797, 28.504358>,  <44.271885, 35.205387, 28.533958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169014, 35.590797, 28.504358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648098, -0.228773, -0.726382,
		-0.716819, -0.138847, 0.683295,
		-0.257175, 0.963527, -0.074002,
		44.091862, 35.879856, 28.482157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576927, 35.195248, 28.338961>,  <44.271885, 35.205387, 28.533958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576927, 35.195248, 28.338961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.673607, 35.569908, 28.237556>,  <43.731613, 35.794704, 28.176714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.673607, 35.569908, 28.237556>,  <43.576927, 35.195248, 28.338961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673607, 35.569908, 28.237556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596189, -0.062786, -0.800386,
		-0.765599, 0.344590, 0.543246,
		0.241697, 0.936651, -0.253509,
		43.746117, 35.850903, 28.161503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005272, 35.521835, 28.273788>,  <43.576927, 35.195248, 28.338961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005272, 35.521835, 28.273788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267643, 35.717503, 28.043839>,  <43.425064, 35.834904, 27.905869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267643, 35.717503, 28.043839>,  <43.005272, 35.521835, 28.273788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267643, 35.717503, 28.043839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549109, -0.213341, -0.808062,
		-0.517919, 0.845697, 0.128668,
		0.655926, 0.489164, -0.574874,
		43.464420, 35.864250, 27.871376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.523514, 40.591316, 42.125652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 40.403984, 42.070095>,  <39.965069, 40.291584, 42.036762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 40.403984, 42.070095>,  <40.523514, 40.591316, 42.125652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174484, 40.403984, 42.070095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325222, -0.344803, -0.880535,
		0.364490, -0.813498, 0.453176,
		-0.872569, -0.468329, -0.138890,
		39.912712, 40.263485, 42.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729683, 39.951134, 41.787441>,  <40.523514, 40.591316, 42.125652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729683, 39.951134, 41.787441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339523, 40.000694, 41.714504>,  <40.105427, 40.030430, 41.670742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339523, 40.000694, 41.714504>,  <40.729683, 39.951134, 41.787441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339523, 40.000694, 41.714504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085612, -0.549338, -0.831203,
		-0.203154, -0.826364, 0.525215,
		-0.975397, 0.123898, -0.182347,
		40.046906, 40.037865, 41.659801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599545, 39.410934, 41.350811>,  <40.729683, 39.951134, 41.787441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599545, 39.410934, 41.350811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255711, 39.608543, 41.298580>,  <40.049412, 39.727108, 41.267242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255711, 39.608543, 41.298580>,  <40.599545, 39.410934, 41.350811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255711, 39.608543, 41.298580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086057, -0.391849, -0.915996,
		-0.503694, -0.776139, 0.379342,
		-0.859585, 0.494027, -0.130580,
		39.997833, 39.756752, 41.259407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942020, 38.916115, 41.189075>,  <40.599545, 39.410934, 41.350811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942020, 38.916115, 41.189075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896732, 39.282345, 41.034729>,  <39.869560, 39.502083, 40.942120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896732, 39.282345, 41.034729>,  <39.942020, 38.916115, 41.189075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896732, 39.282345, 41.034729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030833, -0.391418, -0.919696,
		-0.993092, -0.092228, 0.072545,
		-0.113217, 0.915579, -0.385871,
		39.862766, 39.557018, 40.918968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480785, 38.782661, 40.653225>,  <39.942020, 38.916115, 41.189075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480785, 38.782661, 40.653225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640331, 39.136410, 40.556240>,  <39.736057, 39.348660, 40.498047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640331, 39.136410, 40.556240>,  <39.480785, 38.782661, 40.653225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640331, 39.136410, 40.556240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070752, -0.293299, -0.953399,
		-0.914278, 0.363119, -0.179557,
		0.398862, 0.884375, -0.242465,
		39.759991, 39.401722, 40.483501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099625, 38.996426, 40.046875>,  <39.480785, 38.782661, 40.653225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099625, 38.996426, 40.046875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412918, 39.243603, 40.019485>,  <39.600895, 39.391911, 40.003052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412918, 39.243603, 40.019485>,  <39.099625, 38.996426, 40.046875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412918, 39.243603, 40.019485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144736, -0.288330, -0.946529,
		-0.604644, 0.731444, -0.315269,
		0.783235, 0.617944, -0.068471,
		39.647888, 39.428986, 39.998943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082520, 39.294331, 39.408730>,  <39.099625, 38.996426, 40.046875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082520, 39.294331, 39.408730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465168, 39.381516, 39.486050>,  <39.694756, 39.433826, 39.532440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465168, 39.381516, 39.486050>,  <39.082520, 39.294331, 39.408730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465168, 39.381516, 39.486050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253891, -0.298350, -0.920069,
		-0.142872, 0.929236, -0.340747,
		0.956623, 0.217965, 0.193299,
		39.752155, 39.446903, 39.544041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325058, 39.569042, 38.776997>,  <39.082520, 39.294331, 39.408730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325058, 39.569042, 38.776997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641514, 39.417465, 38.969044>,  <39.831387, 39.326519, 39.084270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641514, 39.417465, 38.969044>,  <39.325058, 39.569042, 38.776997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641514, 39.417465, 38.969044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324046, -0.406066, -0.854462,
		0.518747, 0.831574, -0.198460,
		0.791136, -0.378940, 0.480113,
		39.878853, 39.303783, 39.113079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936287, 39.808605, 38.428486>,  <39.325058, 39.569042, 38.776997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936287, 39.808605, 38.428486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035728, 39.478424, 38.631195>,  <40.095394, 39.280315, 38.752823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035728, 39.478424, 38.631195>,  <39.936287, 39.808605, 38.428486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035728, 39.478424, 38.631195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357922, -0.407882, -0.839955,
		0.900048, 0.390204, 0.194047,
		0.248605, -0.825453, 0.506776,
		40.110310, 39.230789, 38.783226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531082, 39.496338, 38.074181>,  <39.936287, 39.808605, 38.428486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531082, 39.496338, 38.074181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395878, 39.192505, 38.296455>,  <40.314754, 39.010204, 38.429821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395878, 39.192505, 38.296455>,  <40.531082, 39.496338, 38.074181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395878, 39.192505, 38.296455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241361, -0.640651, -0.728911,
		0.909666, -0.112261, 0.399881,
		-0.338013, -0.759582, 0.555683,
		40.294476, 38.964630, 38.463161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019077, 39.078480, 38.027958>,  <40.531082, 39.496338, 38.074181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019077, 39.078480, 38.027958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721252, 38.842327, 38.152588>,  <40.542557, 38.700634, 38.227364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721252, 38.842327, 38.152588>,  <41.019077, 39.078480, 38.027958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721252, 38.842327, 38.152588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214115, -0.653281, -0.726208,
		0.632287, -0.473993, 0.612817,
		-0.744559, -0.590385, 0.311572,
		40.497883, 38.665211, 38.246059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213791, 38.437057, 38.027431>,  <41.019077, 39.078480, 38.027958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213791, 38.437057, 38.027431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817829, 38.381134, 38.018097>,  <40.580254, 38.347580, 38.012497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817829, 38.381134, 38.018097>,  <41.213791, 38.437057, 38.027431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817829, 38.381134, 38.018097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104410, -0.607871, -0.787142,
		0.095863, -0.781631, 0.616331,
		-0.989904, -0.139809, -0.023338,
		40.520859, 38.339191, 38.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121284, 37.807823, 37.653404>,  <41.213791, 38.437057, 38.027431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121284, 37.807823, 37.653404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758633, 37.976562, 37.656601>,  <40.541042, 38.077805, 37.658520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758633, 37.976562, 37.656601>,  <41.121284, 37.807823, 37.653404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758633, 37.976562, 37.656601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282602, -0.593086, -0.753913,
		-0.313297, -0.685780, 0.656925,
		-0.906632, 0.421847, 0.007991,
		40.486645, 38.103115, 37.658997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592621, 37.130657, 37.501389>,  <41.121284, 37.807823, 37.653404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592621, 37.130657, 37.501389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649788, 37.082390, 37.894329>,  <41.684090, 37.053429, 38.130093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649788, 37.082390, 37.894329>,  <41.592621, 37.130657, 37.501389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649788, 37.082390, 37.894329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965099, 0.203080, 0.165353,
		-0.219449, -0.971698, -0.087438,
		0.142916, -0.120673, 0.982351,
		41.692661, 37.046188, 38.189034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217022, 36.591694, 37.667721>,  <41.592621, 37.130657, 37.501389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217022, 36.591694, 37.667721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246704, 36.853558, 37.968632>,  <41.264511, 37.010674, 38.149178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246704, 36.853558, 37.968632>,  <41.217022, 36.591694, 37.667721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246704, 36.853558, 37.968632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997054, 0.033986, 0.068769,
		0.019453, -0.755163, 0.655248,
		0.074201, 0.654656, 0.752277,
		41.268963, 37.049953, 38.194313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725437, 36.466114, 38.192776>,  <41.217022, 36.591694, 37.667721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725437, 36.466114, 38.192776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975800, 36.166351, 38.106392>,  <42.126019, 35.986496, 38.054562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975800, 36.166351, 38.106392>,  <41.725437, 36.466114, 38.192776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975800, 36.166351, 38.106392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310650, -0.493553, 0.812343,
		-0.715359, -0.441363, -0.541720,
		0.625906, -0.749403, -0.215958,
		42.163570, 35.941532, 38.041603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352650, 35.859035, 38.203491>,  <41.725437, 36.466114, 38.192776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352650, 35.859035, 38.203491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730022, 35.746403, 38.273510>,  <41.956448, 35.678822, 38.315521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730022, 35.746403, 38.273510>,  <41.352650, 35.859035, 38.203491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730022, 35.746403, 38.273510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300157, -0.501102, 0.811667,
		-0.140837, -0.818296, -0.557276,
		0.943436, -0.281583, 0.175043,
		42.013054, 35.661926, 38.326023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206467, 35.317379, 38.438011>,  <41.352650, 35.859035, 38.203491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206467, 35.317379, 38.438011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590946, 35.334248, 38.547050>,  <41.821636, 35.344368, 38.612476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590946, 35.334248, 38.547050>,  <41.206467, 35.317379, 38.438011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590946, 35.334248, 38.547050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233108, -0.404189, 0.884473,
		0.147484, -0.913703, -0.378676,
		0.961202, 0.042173, 0.272602,
		41.879307, 35.346901, 38.628830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369919, 34.639156, 38.718700>,  <41.206467, 35.317379, 38.438011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369919, 34.639156, 38.718700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607002, 34.916248, 38.883053>,  <41.749252, 35.082504, 38.981663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607002, 34.916248, 38.883053>,  <41.369919, 34.639156, 38.718700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607002, 34.916248, 38.883053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347270, -0.240487, 0.906405,
		0.726709, -0.679915, 0.098028,
		0.592704, 0.692735, 0.410878,
		41.784813, 35.124069, 39.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547108, 34.377934, 39.314720>,  <41.369919, 34.639156, 38.718700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547108, 34.377934, 39.314720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615177, 34.765663, 39.385651>,  <41.656017, 34.998302, 39.428207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615177, 34.765663, 39.385651>,  <41.547108, 34.377934, 39.314720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615177, 34.765663, 39.385651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182501, -0.145833, 0.972330,
		0.968367, -0.197825, 0.152087,
		0.170172, 0.969329, 0.177323,
		41.666229, 35.056461, 39.438847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772640, 34.427757, 40.002407>,  <41.547108, 34.377934, 39.314720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772640, 34.427757, 40.002407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712658, 34.814575, 39.920097>,  <41.676666, 35.046665, 39.870712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712658, 34.814575, 39.920097>,  <41.772640, 34.427757, 40.002407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712658, 34.814575, 39.920097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287058, 0.156574, 0.945030,
		0.946103, 0.200783, 0.254118,
		-0.149958, 0.967042, -0.205771,
		41.667671, 35.104687, 39.858368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121269, 34.889980, 40.503826>,  <41.772640, 34.427757, 40.002407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121269, 34.889980, 40.503826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819565, 35.112492, 40.364315>,  <41.638542, 35.245998, 40.280609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819565, 35.112492, 40.364315>,  <42.121269, 34.889980, 40.503826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819565, 35.112492, 40.364315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307268, 0.170382, 0.936246,
		0.580240, 0.813340, 0.042415,
		-0.754260, 0.556281, -0.348775,
		41.593288, 35.279377, 40.259682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216015, 35.439251, 40.920002>,  <42.121269, 34.889980, 40.503826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216015, 35.439251, 40.920002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839077, 35.486706, 40.794842>,  <41.612915, 35.515179, 40.719746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839077, 35.486706, 40.794842>,  <42.216015, 35.439251, 40.920002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839077, 35.486706, 40.794842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273603, 0.265220, 0.924554,
		0.192677, 0.956861, -0.217469,
		-0.942346, 0.118640, -0.312902,
		41.556374, 35.522297, 40.700970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998730, 36.093868, 41.111340>,  <42.216015, 35.439251, 40.920002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998730, 36.093868, 41.111340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652103, 35.907024, 41.041061>,  <41.444126, 35.794918, 40.998894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652103, 35.907024, 41.041061>,  <41.998730, 36.093868, 41.111340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652103, 35.907024, 41.041061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366957, 0.357796, 0.858676,
		-0.338231, 0.808575, -0.481463,
		-0.866569, -0.467107, -0.175695,
		41.392132, 35.766891, 40.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434940, 36.556324, 41.198959>,  <41.998730, 36.093868, 41.111340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434940, 36.556324, 41.198959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259972, 36.201000, 41.254921>,  <41.154991, 35.987808, 41.288498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259972, 36.201000, 41.254921>,  <41.434940, 36.556324, 41.198959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259972, 36.201000, 41.254921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342766, 0.308532, 0.887310,
		-0.831366, 0.340179, -0.439440,
		-0.437426, -0.888305, 0.139901,
		41.128742, 35.934509, 41.296890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858387, 36.701992, 41.506237>,  <41.434940, 36.556324, 41.198959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858387, 36.701992, 41.506237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860378, 36.308941, 41.580448>,  <40.861572, 36.073109, 41.624973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860378, 36.308941, 41.580448>,  <40.858387, 36.701992, 41.506237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860378, 36.308941, 41.580448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470669, 0.161393, 0.867423,
		-0.882296, -0.091641, -0.461689,
		0.004978, -0.982626, 0.185528,
		40.861874, 36.014153, 41.636108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117973, 36.517220, 41.742146>,  <40.858387, 36.701992, 41.506237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117973, 36.517220, 41.742146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402485, 36.266094, 41.868587>,  <40.573193, 36.115417, 41.944454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402485, 36.266094, 41.868587>,  <40.117973, 36.517220, 41.742146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402485, 36.266094, 41.868587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347441, 0.076915, 0.934542,
		-0.611033, -0.774553, -0.163420,
		0.711283, -0.627815, 0.316109,
		40.615871, 36.077751, 41.963421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818703, 36.111374, 42.182785>,  <40.117973, 36.517220, 41.742146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818703, 36.111374, 42.182785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203842, 36.106873, 42.290707>,  <40.434925, 36.104172, 42.355461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203842, 36.106873, 42.290707>,  <39.818703, 36.111374, 42.182785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203842, 36.106873, 42.290707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267093, 0.107549, 0.957651,
		-0.039797, -0.994136, 0.100547,
		0.962849, -0.011256, 0.269807,
		40.492699, 36.103497, 42.371647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442635, 35.551743, 42.438168>,  <39.818703, 36.111374, 42.182785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442635, 35.551743, 42.438168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080833, 35.407509, 42.529259>,  <38.863754, 35.320969, 42.583912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080833, 35.407509, 42.529259>,  <39.442635, 35.551743, 42.438168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080833, 35.407509, 42.529259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106620, -0.325818, -0.939401,
		0.412934, -0.873967, 0.256256,
		-0.904498, -0.360588, 0.227723,
		38.809483, 35.299332, 42.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476040, 34.812340, 42.365070>,  <39.442635, 35.551743, 42.438168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476040, 34.812340, 42.365070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098709, 34.938751, 42.324570>,  <38.872311, 35.014599, 42.300270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098709, 34.938751, 42.324570>,  <39.476040, 34.812340, 42.365070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098709, 34.938751, 42.324570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048798, -0.433883, -0.899647,
		-0.328243, -0.843725, 0.424718,
		-0.943332, 0.316028, -0.101246,
		38.815708, 35.033562, 42.294197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078056, 34.152222, 42.212223>,  <39.476040, 34.812340, 42.365070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078056, 34.152222, 42.212223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854691, 34.461121, 42.091026>,  <38.720669, 34.646461, 42.018311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854691, 34.461121, 42.091026>,  <39.078056, 34.152222, 42.212223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854691, 34.461121, 42.091026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149133, -0.452743, -0.879081,
		-0.816045, -0.445708, 0.367988,
		-0.558417, 0.772249, -0.302989,
		38.687164, 34.692795, 42.000130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576496, 33.885193, 41.721333>,  <39.078056, 34.152222, 42.212223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576496, 33.885193, 41.721333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578568, 34.281563, 41.667614>,  <38.579811, 34.519386, 41.635384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578568, 34.281563, 41.667614>,  <38.576496, 33.885193, 41.721333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578568, 34.281563, 41.667614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277233, -0.127612, -0.952290,
		-0.960789, 0.042166, 0.274056,
		0.005181, 0.990927, -0.134298,
		38.580120, 34.578842, 41.627323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892212, 33.985851, 41.401352>,  <38.576496, 33.885193, 41.721333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892212, 33.985851, 41.401352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099434, 34.313271, 41.302082>,  <38.223766, 34.509724, 41.242519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099434, 34.313271, 41.302082>,  <37.892212, 33.985851, 41.401352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099434, 34.313271, 41.302082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223428, -0.150572, -0.963021,
		-0.825650, 0.554348, 0.104883,
		0.518056, 0.818552, -0.248176,
		38.254852, 34.558838, 41.227631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477322, 34.356991, 41.069035>,  <37.892212, 33.985851, 41.401352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477322, 34.356991, 41.069035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824959, 34.497051, 40.929279>,  <38.033539, 34.581089, 40.845425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824959, 34.497051, 40.929279>,  <37.477322, 34.356991, 41.069035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824959, 34.497051, 40.929279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326445, -0.124675, -0.936958,
		-0.371638, 0.928359, 0.005951,
		0.869091, 0.350152, -0.349392,
		38.085686, 34.602097, 40.824463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325916, 34.943531, 40.651752>,  <37.477322, 34.356991, 41.069035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325916, 34.943531, 40.651752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698994, 34.849918, 40.541981>,  <37.922840, 34.793751, 40.476116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698994, 34.849918, 40.541981>,  <37.325916, 34.943531, 40.651752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698994, 34.849918, 40.541981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281483, 0.003393, -0.959560,
		0.225497, 0.972223, -0.062711,
		0.932694, -0.234030, -0.274429,
		37.978802, 34.779709, 40.459652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452293, 35.329208, 39.959839>,  <37.325916, 34.943531, 40.651752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452293, 35.329208, 39.959839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746101, 35.058929, 39.984840>,  <37.922386, 34.896763, 39.999844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746101, 35.058929, 39.984840>,  <37.452293, 35.329208, 39.959839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746101, 35.058929, 39.984840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091859, 0.007743, -0.995742,
		0.672340, 0.737136, 0.067756,
		0.734521, -0.675701, 0.062507,
		37.966457, 34.856220, 40.003593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080559, 35.657207, 39.638775>,  <37.452293, 35.329208, 39.959839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080559, 35.657207, 39.638775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080620, 35.257874, 39.615692>,  <38.080654, 35.018272, 39.601845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080620, 35.257874, 39.615692>,  <38.080559, 35.657207, 39.638775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080620, 35.257874, 39.615692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038510, 0.057654, -0.997593,
		0.999258, 0.002371, -0.038438,
		0.000149, -0.998334, -0.057703,
		38.080666, 34.958374, 39.598381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523979, 35.430111, 39.154625>,  <38.080559, 35.657207, 39.638775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523979, 35.430111, 39.154625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325451, 35.083809, 39.180336>,  <38.206333, 34.876026, 39.195763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325451, 35.083809, 39.180336>,  <38.523979, 35.430111, 39.154625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325451, 35.083809, 39.180336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018981, -0.084844, -0.996213,
		0.867933, -0.493218, 0.058543,
		-0.496318, -0.865758, 0.064277,
		38.176556, 34.824081, 39.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866310, 35.018997, 38.663113>,  <38.523979, 35.430111, 39.154625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866310, 35.018997, 38.663113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526508, 34.815941, 38.720573>,  <38.322628, 34.694107, 38.755051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526508, 34.815941, 38.720573>,  <38.866310, 35.018997, 38.663113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526508, 34.815941, 38.720573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030860, -0.224013, -0.974097,
		0.526676, -0.831934, 0.174634,
		-0.849506, -0.507645, 0.143656,
		38.271656, 34.663647, 38.763672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937714, 34.494171, 38.239437>,  <38.866310, 35.018997, 38.663113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937714, 34.494171, 38.239437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543926, 34.502827, 38.309128>,  <38.307655, 34.508018, 38.350941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543926, 34.502827, 38.309128>,  <38.937714, 34.494171, 38.239437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543926, 34.502827, 38.309128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175454, -0.155891, -0.972067,
		0.006128, -0.987537, 0.157266,
		-0.984468, 0.021636, 0.174223,
		38.248585, 34.509319, 38.361393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.570610, 35.412460, 46.205952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178986, 35.493893, 46.206047>,  <38.944012, 35.542751, 46.206104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178986, 35.493893, 46.206047>,  <39.570610, 35.412460, 46.205952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178986, 35.493893, 46.206047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104327, -0.500727, -0.859295,
		-0.174813, -0.841326, 0.511480,
		-0.979059, 0.203577, 0.000239,
		38.885269, 35.554966, 46.206120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290741, 34.751289, 46.134106>,  <39.570610, 35.412460, 46.205952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290741, 34.751289, 46.134106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036671, 35.034752, 46.011238>,  <38.884228, 35.204830, 45.937515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036671, 35.034752, 46.011238>,  <39.290741, 34.751289, 46.134106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036671, 35.034752, 46.011238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076513, -0.453477, -0.887977,
		-0.768569, -0.540519, 0.342259,
		-0.635176, 0.708659, -0.307172,
		38.846119, 35.247349, 45.919086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701000, 34.399639, 45.752731>,  <39.290741, 34.751289, 46.134106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701000, 34.399639, 45.752731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775146, 34.771057, 45.624077>,  <38.819633, 34.993908, 45.546883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775146, 34.771057, 45.624077>,  <38.701000, 34.399639, 45.752731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775146, 34.771057, 45.624077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004299, -0.328073, -0.944642,
		-0.982659, 0.173725, -0.064806,
		0.185370, 0.928540, -0.321637,
		38.830757, 35.049618, 45.527584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311420, 34.477009, 45.171127>,  <38.701000, 34.399639, 45.752731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311420, 34.477009, 45.171127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531132, 34.808426, 45.127663>,  <38.662960, 35.007275, 45.101585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531132, 34.808426, 45.127663>,  <38.311420, 34.477009, 45.171127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531132, 34.808426, 45.127663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012422, -0.138112, -0.990339,
		-0.835545, 0.542626, -0.086154,
		0.549282, 0.828543, -0.108658,
		38.695915, 35.056988, 45.095066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937489, 34.949459, 44.721149>,  <38.311420, 34.477009, 45.171127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937489, 34.949459, 44.721149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312866, 35.086182, 44.701202>,  <38.538094, 35.168217, 44.689236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312866, 35.086182, 44.701202>,  <37.937489, 34.949459, 44.721149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312866, 35.086182, 44.701202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035629, -0.047813, -0.998221,
		-0.343583, 0.938553, -0.032692,
		0.938446, 0.341807, -0.049867,
		38.594398, 35.188725, 44.686241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915600, 35.427223, 44.289845>,  <37.937489, 34.949459, 44.721149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915600, 35.427223, 44.289845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310600, 35.364929, 44.280212>,  <38.547600, 35.327553, 44.274433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310600, 35.364929, 44.280212>,  <37.915600, 35.427223, 44.289845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310600, 35.364929, 44.280212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016382, 0.050540, -0.998588,
		0.156733, 0.986505, 0.047357,
		0.987505, -0.155736, -0.024082,
		38.606853, 35.318207, 44.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160141, 35.974873, 43.934959>,  <37.915600, 35.427223, 44.289845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160141, 35.974873, 43.934959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440201, 35.690212, 43.911812>,  <38.608238, 35.519417, 43.897923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440201, 35.690212, 43.911812>,  <38.160141, 35.974873, 43.934959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440201, 35.690212, 43.911812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020506, 0.060980, -0.997929,
		0.713703, 0.699884, 0.028102,
		0.700148, -0.711648, -0.057874,
		38.650246, 35.476719, 43.894451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611256, 36.242516, 43.381912>,  <38.160141, 35.974873, 43.934959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611256, 36.242516, 43.381912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653286, 35.846657, 43.420998>,  <38.678505, 35.609142, 43.444450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653286, 35.846657, 43.420998>,  <38.611256, 36.242516, 43.381912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653286, 35.846657, 43.420998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018162, -0.096336, -0.995183,
		0.994298, 0.106346, 0.007851,
		0.105078, -0.989651, 0.097718,
		38.684811, 35.549763, 43.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015572, 36.088417, 42.829502>,  <38.611256, 36.242516, 43.381912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015572, 36.088417, 42.829502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834026, 35.746754, 42.931019>,  <38.725098, 35.541756, 42.991928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834026, 35.746754, 42.931019>,  <39.015572, 36.088417, 42.829502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834026, 35.746754, 42.931019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031767, -0.269130, -0.962580,
		0.890503, -0.444945, 0.095015,
		-0.453867, -0.854162, 0.253796,
		38.697865, 35.490505, 43.007156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747288, 36.047718, 42.930595>,  <39.015572, 36.088417, 42.829502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747288, 36.047718, 42.930595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139030, 36.112789, 42.882607>,  <40.374077, 36.151833, 42.853813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139030, 36.112789, 42.882607>,  <39.747288, 36.047718, 42.930595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139030, 36.112789, 42.882607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089897, 0.181039, 0.979359,
		0.181039, -0.969928, 0.162678,
		-0.979359, -0.162678, 0.119968,
		40.432838, 36.161594, 42.846615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134048, 35.728649, 43.492489>,  <39.747288, 36.047718, 42.930595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134048, 35.728649, 43.492489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376068, 36.003719, 43.331985>,  <40.521282, 36.168762, 43.235683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376068, 36.003719, 43.331985>,  <40.134048, 35.728649, 43.492489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376068, 36.003719, 43.331985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147694, 0.398283, 0.905294,
		0.782366, -0.607014, 0.139416,
		0.605054, 0.687681, -0.401256,
		40.557583, 36.210022, 43.211609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910889, 35.719391, 43.647751>,  <40.134048, 35.728649, 43.492489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910889, 35.719391, 43.647751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.785713, 36.091858, 43.572918>,  <40.710606, 36.315338, 43.528019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.785713, 36.091858, 43.572918>,  <40.910889, 35.719391, 43.647751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785713, 36.091858, 43.572918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409790, 0.310072, 0.857862,
		0.856820, 0.191798, -0.478616,
		-0.312942, 0.931165, -0.187079,
		40.691830, 36.371208, 43.516796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397758, 36.077255, 44.109325>,  <40.910889, 35.719391, 43.647751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397758, 36.077255, 44.109325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.132793, 36.359459, 44.008564>,  <40.973812, 36.528782, 43.948105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.132793, 36.359459, 44.008564>,  <41.397758, 36.077255, 44.109325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132793, 36.359459, 44.008564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251850, 0.526419, 0.812068,
		0.705532, 0.474485, -0.526392,
		-0.662417, 0.705512, -0.251907,
		40.934067, 36.571114, 43.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688046, 36.621136, 44.384022>,  <41.397758, 36.077255, 44.109325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688046, 36.621136, 44.384022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319485, 36.745110, 44.290241>,  <41.098351, 36.819496, 44.233974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319485, 36.745110, 44.290241>,  <41.688046, 36.621136, 44.384022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319485, 36.745110, 44.290241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053503, 0.698703, 0.713408,
		0.384921, 0.644789, -0.660366,
		-0.921397, 0.309938, -0.234448,
		41.043064, 36.838089, 44.219906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690441, 37.375046, 44.367790>,  <41.688046, 36.621136, 44.384022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690441, 37.375046, 44.367790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.306454, 37.274223, 44.416664>,  <41.076061, 37.213730, 44.445988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.306454, 37.274223, 44.416664>,  <41.690441, 37.375046, 44.367790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306454, 37.274223, 44.416664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101568, 0.719735, 0.686778,
		-0.261045, 0.646876, -0.716524,
		-0.959968, -0.252056, 0.122181,
		41.018463, 37.198608, 44.453320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332626, 38.018574, 44.359409>,  <41.690441, 37.375046, 44.367790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332626, 38.018574, 44.359409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092915, 37.767136, 44.557697>,  <40.949089, 37.616272, 44.676670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092915, 37.767136, 44.557697>,  <41.332626, 38.018574, 44.359409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092915, 37.767136, 44.557697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176720, 0.707829, 0.683921,
		-0.780794, 0.322253, -0.535270,
		-0.599276, -0.628594, 0.495720,
		40.913132, 37.578556, 44.706413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746021, 38.380074, 44.551819>,  <41.332626, 38.018574, 44.359409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746021, 38.380074, 44.551819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749386, 38.070915, 44.805611>,  <40.751404, 37.885422, 44.957886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749386, 38.070915, 44.805611>,  <40.746021, 38.380074, 44.551819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749386, 38.070915, 44.805611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055086, 0.633176, 0.772045,
		-0.998446, -0.041447, -0.037248,
		0.008414, -0.772897, 0.634475,
		40.751911, 37.839046, 44.995953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314960, 38.546894, 45.102707>,  <40.746021, 38.380074, 44.551819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314960, 38.546894, 45.102707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508972, 38.233471, 45.258034>,  <40.625378, 38.045418, 45.351231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508972, 38.233471, 45.258034>,  <40.314960, 38.546894, 45.102707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508972, 38.233471, 45.258034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063113, 0.411525, 0.909211,
		-0.872219, -0.465499, 0.150148,
		0.485026, -0.783555, 0.388319,
		40.654480, 37.998405, 45.374531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933926, 38.249943, 45.592857>,  <40.314960, 38.546894, 45.102707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933926, 38.249943, 45.592857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.299881, 38.123161, 45.692875>,  <40.519455, 38.047092, 45.752884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.299881, 38.123161, 45.692875>,  <39.933926, 38.249943, 45.592857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299881, 38.123161, 45.692875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143946, 0.322548, 0.935544,
		-0.377174, -0.891910, 0.249471,
		0.914888, -0.316953, 0.250043,
		40.574348, 38.028076, 45.767887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829048, 37.958485, 46.269981>,  <39.933926, 38.249943, 45.592857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829048, 37.958485, 46.269981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222218, 38.024406, 46.237221>,  <40.458118, 38.063957, 46.217564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222218, 38.024406, 46.237221>,  <39.829048, 37.958485, 46.269981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222218, 38.024406, 46.237221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002736, 0.431905, 0.901915,
		0.184010, -0.886735, 0.424078,
		0.982921, 0.164801, -0.081901,
		40.517094, 38.073849, 46.212650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232788, 37.592644, 46.794720>,  <39.829048, 37.958485, 46.269981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232788, 37.592644, 46.794720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459824, 37.901627, 46.680767>,  <40.596043, 38.087017, 46.612396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459824, 37.901627, 46.680767>,  <40.232788, 37.592644, 46.794720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459824, 37.901627, 46.680767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195248, 0.209865, 0.958037,
		0.799829, -0.599390, -0.031704,
		0.567584, 0.772456, -0.284886,
		40.630100, 38.133362, 46.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862473, 37.537125, 47.157413>,  <40.232788, 37.592644, 46.794720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862473, 37.537125, 47.157413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822109, 37.919727, 47.047935>,  <40.797894, 38.149288, 46.982246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822109, 37.919727, 47.047935>,  <40.862473, 37.537125, 47.157413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822109, 37.919727, 47.047935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160206, 0.287133, 0.944398,
		0.981912, 0.051445, -0.182212,
		-0.100904, 0.956508, -0.273698,
		40.791840, 38.206680, 46.965828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172165, 37.952808, 47.673862>,  <40.862473, 37.537125, 47.157413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172165, 37.952808, 47.673862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988377, 38.237259, 47.460999>,  <40.878105, 38.407928, 47.333282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988377, 38.237259, 47.460999>,  <41.172165, 37.952808, 47.673862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988377, 38.237259, 47.460999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137948, 0.534740, 0.833681,
		0.877415, 0.456461, -0.147599,
		-0.459470, 0.711123, -0.532157,
		40.850536, 38.450596, 47.301350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.505768, 38.514336, 46.669468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883720, 38.386246, 46.696751>,  <34.110493, 38.309391, 46.713120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883720, 38.386246, 46.696751>,  <33.505768, 38.514336, 46.669468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883720, 38.386246, 46.696751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137669, 0.199579, -0.970163,
		0.297058, 0.926080, 0.232663,
		0.944883, -0.320225, 0.068206,
		34.167187, 38.290176, 46.717213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944126, 39.095013, 46.419243>,  <33.505768, 38.514336, 46.669468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944126, 39.095013, 46.419243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139343, 38.749592, 46.368511>,  <34.256474, 38.542339, 46.338074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139343, 38.749592, 46.368511>,  <33.944126, 39.095013, 46.419243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139343, 38.749592, 46.368511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031747, 0.127646, -0.991312,
		0.872241, 0.487830, 0.034882,
		0.488044, -0.863555, -0.126826,
		34.285755, 38.490524, 46.330463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524117, 39.260674, 46.032837>,  <33.944126, 39.095013, 46.419243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524117, 39.260674, 46.032837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493668, 38.864059, 45.990776>,  <34.475399, 38.626091, 45.965538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493668, 38.864059, 45.990776>,  <34.524117, 39.260674, 46.032837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493668, 38.864059, 45.990776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009627, 0.104721, -0.994455,
		0.997052, -0.076708, 0.001574,
		-0.076118, -0.991539, -0.105151,
		34.470833, 38.566597, 45.959232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958202, 39.054440, 45.516304>,  <34.524117, 39.260674, 46.032837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958202, 39.054440, 45.516304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707905, 38.742443, 45.519257>,  <34.557728, 38.555244, 45.521030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707905, 38.742443, 45.519257>,  <34.958202, 39.054440, 45.516304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707905, 38.742443, 45.519257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022848, -0.027789, -0.999353,
		0.779696, -0.625168, 0.035210,
		-0.625741, -0.779996, 0.007383,
		34.520184, 38.508446, 45.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233273, 38.582653, 45.130848>,  <34.958202, 39.054440, 45.516304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233273, 38.582653, 45.130848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852493, 38.460155, 45.130238>,  <34.624023, 38.386658, 45.129871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852493, 38.460155, 45.130238>,  <35.233273, 38.582653, 45.130848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852493, 38.460155, 45.130238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025699, -0.074929, -0.996858,
		0.305171, -0.948999, 0.079199,
		-0.951951, -0.306247, -0.001523,
		34.566910, 38.368282, 45.129780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229904, 37.962494, 44.763252>,  <35.233273, 38.582653, 45.130848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229904, 37.962494, 44.763252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848415, 38.080860, 44.741928>,  <34.619522, 38.151882, 44.729134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848415, 38.080860, 44.741928>,  <35.229904, 37.962494, 44.763252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848415, 38.080860, 44.741928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012566, -0.137922, -0.990363,
		-0.300421, -0.945203, 0.127821,
		-0.953724, 0.295919, -0.053312,
		34.562298, 38.169636, 44.725933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894299, 37.503597, 44.358051>,  <35.229904, 37.962494, 44.763252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894299, 37.503597, 44.358051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665443, 37.831631, 44.353691>,  <34.528130, 38.028450, 44.351074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665443, 37.831631, 44.353691>,  <34.894299, 37.503597, 44.358051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665443, 37.831631, 44.353691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099097, -0.082312, -0.991668,
		-0.814151, -0.566288, 0.128361,
		-0.572135, 0.820087, -0.010897,
		34.493801, 38.077656, 44.350422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261314, 37.417484, 43.969173>,  <34.894299, 37.503597, 44.358051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261314, 37.417484, 43.969173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310272, 37.814476, 43.968479>,  <34.339645, 38.052670, 43.968063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310272, 37.814476, 43.968479>,  <34.261314, 37.417484, 43.969173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310272, 37.814476, 43.968479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065598, 0.006343, -0.997826,
		-0.990311, 0.122242, 0.065881,
		0.122394, 0.992480, -0.001737,
		34.346989, 38.112221, 43.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844227, 37.689049, 43.415768>,  <34.261314, 37.417484, 43.969173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844227, 37.689049, 43.415768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090717, 37.998028, 43.477203>,  <34.238613, 38.183414, 43.514065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090717, 37.998028, 43.477203>,  <33.844227, 37.689049, 43.415768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090717, 37.998028, 43.477203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039791, 0.225302, -0.973476,
		-0.786563, 0.593771, 0.169573,
		0.616227, 0.772448, 0.153587,
		34.275585, 38.229763, 43.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448540, 38.274788, 43.166004>,  <33.844227, 37.689049, 43.415768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448540, 38.274788, 43.166004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834572, 38.379112, 43.175743>,  <34.066193, 38.441708, 43.181587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834572, 38.379112, 43.175743>,  <33.448540, 38.274788, 43.166004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834572, 38.379112, 43.175743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081692, 0.387988, -0.918037,
		-0.248878, 0.883993, 0.395747,
		0.965083, 0.260809, 0.024346,
		34.124096, 38.457355, 43.183048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541824, 38.840939, 42.827923>,  <33.448540, 38.274788, 43.166004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541824, 38.840939, 42.827923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926182, 38.731346, 42.811852>,  <34.156796, 38.665592, 42.802208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926182, 38.731346, 42.811852>,  <33.541824, 38.840939, 42.827923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926182, 38.731346, 42.811852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028115, 0.240869, -0.970150,
		0.275478, 0.931084, 0.239153,
		0.960896, -0.273979, -0.040177,
		34.214451, 38.649151, 42.799797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821182, 39.187050, 42.247540>,  <33.541824, 38.840939, 42.827923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821182, 39.187050, 42.247540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103882, 38.908039, 42.294811>,  <34.273502, 38.740631, 42.323174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103882, 38.908039, 42.294811>,  <33.821182, 39.187050, 42.247540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103882, 38.908039, 42.294811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184691, 0.020653, -0.982580,
		0.682935, 0.716261, 0.143423,
		0.706746, -0.697527, 0.118183,
		34.315907, 38.698780, 42.330265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197227, 39.264717, 41.690685>,  <33.821182, 39.187050, 42.247540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197227, 39.264717, 41.690685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344761, 38.911942, 41.808090>,  <34.433281, 38.700275, 41.878532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344761, 38.911942, 41.808090>,  <34.197227, 39.264717, 41.690685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344761, 38.911942, 41.808090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025378, -0.306107, -0.951659,
		0.929149, 0.358453, -0.090520,
		0.368833, -0.881936, 0.293516,
		34.455410, 38.647362, 41.896145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743961, 39.059292, 41.182308>,  <34.197227, 39.264717, 41.690685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743961, 39.059292, 41.182308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641964, 38.729031, 41.383610>,  <34.580765, 38.530872, 41.504391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641964, 38.729031, 41.383610>,  <34.743961, 39.059292, 41.182308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641964, 38.729031, 41.383610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192167, -0.466809, -0.863227,
		0.947654, -0.316830, -0.039629,
		-0.254998, -0.825656, 0.503258,
		34.565464, 38.481335, 41.534588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423504, 39.231319, 41.541389>,  <34.743961, 39.059292, 41.182308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423504, 39.231319, 41.541389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668716, 39.518219, 41.408882>,  <35.815845, 39.690361, 41.329380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668716, 39.518219, 41.408882>,  <35.423504, 39.231319, 41.541389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668716, 39.518219, 41.408882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039288, 0.391100, 0.919509,
		0.789078, -0.576706, 0.211579,
		0.613035, 0.717252, -0.331266,
		35.852627, 39.733395, 41.309502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020844, 39.243263, 41.947361>,  <35.423504, 39.231319, 41.541389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020844, 39.243263, 41.947361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992916, 39.613602, 41.798801>,  <35.976162, 39.835804, 41.709663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992916, 39.613602, 41.798801>,  <36.020844, 39.243263, 41.947361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992916, 39.613602, 41.798801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014636, 0.373221, 0.927627,
		0.997452, 0.059327, -0.039607,
		-0.069815, 0.925844, -0.371402,
		35.971973, 39.891354, 41.687382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610374, 39.655735, 42.322605>,  <36.020844, 39.243263, 41.947361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610374, 39.655735, 42.322605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369148, 39.925659, 42.152462>,  <36.224411, 40.087616, 42.050377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369148, 39.925659, 42.152462>,  <36.610374, 39.655735, 42.322605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369148, 39.925659, 42.152462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068689, 0.487331, 0.870512,
		0.794725, 0.554197, -0.247542,
		-0.603070, 0.674814, -0.425361,
		36.188229, 40.128105, 42.024853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978775, 40.390530, 42.434132>,  <36.610374, 39.655735, 42.322605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978775, 40.390530, 42.434132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583134, 40.442699, 42.406834>,  <36.345749, 40.473999, 42.390453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583134, 40.442699, 42.406834>,  <36.978775, 40.390530, 42.434132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583134, 40.442699, 42.406834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027507, 0.619230, 0.784728,
		0.144605, 0.774302, -0.616073,
		-0.989107, 0.130422, -0.068245,
		36.286400, 40.481827, 42.386360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850986, 41.117725, 42.402367>,  <36.978775, 40.390530, 42.434132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850986, 41.117725, 42.402367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515453, 40.934238, 42.519634>,  <36.314133, 40.824146, 42.589993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515453, 40.934238, 42.519634>,  <36.850986, 41.117725, 42.402367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515453, 40.934238, 42.519634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027891, 0.501596, 0.864652,
		-0.543681, 0.733472, -0.407959,
		-0.838828, -0.458717, 0.293166,
		36.263805, 40.796623, 42.607582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451904, 41.568207, 42.793152>,  <36.850986, 41.117725, 42.402367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451904, 41.568207, 42.793152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301701, 41.214989, 42.905743>,  <36.211578, 41.003059, 42.973297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301701, 41.214989, 42.905743>,  <36.451904, 41.568207, 42.793152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301701, 41.214989, 42.905743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303260, 0.404049, 0.863005,
		-0.875798, 0.238710, -0.419517,
		-0.375514, -0.883041, 0.281474,
		36.189045, 40.950077, 42.990185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808846, 41.738537, 43.206890>,  <36.451904, 41.568207, 42.793152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808846, 41.738537, 43.206890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878601, 41.363811, 43.328190>,  <35.920452, 41.138977, 43.400970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878601, 41.363811, 43.328190>,  <35.808846, 41.738537, 43.206890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878601, 41.363811, 43.328190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206136, 0.266416, 0.941558,
		-0.962859, -0.226707, -0.146652,
		0.174387, -0.936818, 0.303253,
		35.930916, 41.082767, 43.419167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205936, 41.600910, 43.737236>,  <35.808846, 41.738537, 43.206890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205936, 41.600910, 43.737236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457706, 41.298016, 43.807003>,  <35.608768, 41.116280, 43.848866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457706, 41.298016, 43.807003>,  <35.205936, 41.600910, 43.737236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457706, 41.298016, 43.807003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140181, 0.110128, 0.983982,
		-0.764313, -0.643792, -0.036833,
		0.629424, -0.757234, 0.174420,
		35.646534, 41.070847, 43.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882042, 41.121437, 44.155735>,  <35.205936, 41.600910, 43.737236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882042, 41.121437, 44.155735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272217, 41.061459, 44.220276>,  <35.506321, 41.025471, 44.258999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272217, 41.061459, 44.220276>,  <34.882042, 41.121437, 44.155735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272217, 41.061459, 44.220276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151199, 0.076883, 0.985509,
		-0.160180, -0.985700, 0.052323,
		0.975439, -0.149948, 0.161352,
		35.564850, 41.016476, 44.268681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908539, 40.715008, 44.762398>,  <34.882042, 41.121437, 44.155735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908539, 40.715008, 44.762398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268059, 40.884861, 44.718861>,  <35.483768, 40.986774, 44.692738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268059, 40.884861, 44.718861>,  <34.908539, 40.715008, 44.762398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268059, 40.884861, 44.718861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019102, 0.285992, 0.958042,
		0.437948, -0.859006, 0.265160,
		0.898797, 0.424638, -0.108841,
		35.537697, 41.012253, 44.686207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339920, 40.457214, 45.237823>,  <34.908539, 40.715008, 44.762398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339920, 40.457214, 45.237823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528305, 40.798943, 45.149891>,  <35.641335, 41.003979, 45.097130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528305, 40.798943, 45.149891>,  <35.339920, 40.457214, 45.237823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528305, 40.798943, 45.149891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011012, 0.243490, 0.969841,
		0.882087, -0.459176, 0.105266,
		0.470958, 0.854324, -0.219836,
		35.669594, 41.055241, 45.083939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792934, 40.465904, 45.784687>,  <35.339920, 40.457214, 45.237823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792934, 40.465904, 45.784687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768330, 40.832237, 45.625957>,  <35.753567, 41.052036, 45.530720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768330, 40.832237, 45.625957>,  <35.792934, 40.465904, 45.784687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768330, 40.832237, 45.625957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048356, 0.394371, 0.917678,
		0.996934, 0.075640, 0.020026,
		-0.061515, 0.915833, -0.396820,
		35.749874, 41.106987, 45.506912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328918, 40.853836, 46.090725>,  <35.792934, 40.465904, 45.784687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328918, 40.853836, 46.090725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062710, 41.129768, 45.976730>,  <35.902985, 41.295326, 45.908333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062710, 41.129768, 45.976730>,  <36.328918, 40.853836, 46.090725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062710, 41.129768, 45.976730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064688, 0.327083, 0.942779,
		0.743570, 0.645875, -0.173057,
		-0.665522, 0.689827, -0.284990,
		35.863052, 41.336716, 45.891232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496181, 41.534283, 46.468956>,  <36.328918, 40.853836, 46.090725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496181, 41.534283, 46.468956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110325, 41.519001, 46.364639>,  <35.878811, 41.509834, 46.302048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110325, 41.519001, 46.364639>,  <36.496181, 41.534283, 46.468956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110325, 41.519001, 46.364639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259905, 0.302399, 0.917063,
		0.043829, 0.952416, -0.301634,
		-0.964639, -0.038202, -0.260791,
		35.820934, 41.507542, 46.286404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006516, 42.230148, 46.437553>,  <36.496181, 41.534283, 46.468956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006516, 42.230148, 46.437553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365894, 42.111271, 46.566845>,  <37.581520, 42.039944, 46.644421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365894, 42.111271, 46.566845>,  <37.006516, 42.230148, 46.437553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365894, 42.111271, 46.566845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315298, -0.075673, -0.945971,
		0.305595, 0.951814, 0.025716,
		0.898442, -0.297192, 0.323231,
		37.635426, 42.022114, 46.663815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515884, 42.721916, 46.104748>,  <37.006516, 42.230148, 46.437553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515884, 42.721916, 46.104748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707333, 42.385490, 46.205570>,  <37.822201, 42.183636, 46.266064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707333, 42.385490, 46.205570>,  <37.515884, 42.721916, 46.104748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707333, 42.385490, 46.205570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375592, -0.063361, -0.924617,
		0.793633, 0.537211, 0.285572,
		0.478620, -0.841065, 0.252057,
		37.850918, 42.133171, 46.281189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248714, 42.744225, 45.908016>,  <37.515884, 42.721916, 46.104748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248714, 42.744225, 45.908016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166767, 42.354172, 45.941837>,  <38.117599, 42.120140, 45.962132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166767, 42.354172, 45.941837>,  <38.248714, 42.744225, 45.908016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166767, 42.354172, 45.941837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308216, -0.146262, -0.940006,
		0.928996, -0.166514, 0.330515,
		-0.204866, -0.975131, 0.084554,
		38.105309, 42.061634, 45.967205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759636, 42.442757, 45.488888>,  <38.248714, 42.744225, 45.908016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759636, 42.442757, 45.488888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488861, 42.151733, 45.533459>,  <38.326397, 41.977119, 45.560200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488861, 42.151733, 45.533459>,  <38.759636, 42.442757, 45.488888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488861, 42.151733, 45.533459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307732, -0.417281, -0.855089,
		0.668620, -0.544555, 0.506366,
		-0.676940, -0.727555, 0.111425,
		38.285778, 41.933468, 45.566887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130840, 41.795082, 45.422123>,  <38.759636, 42.442757, 45.488888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130840, 41.795082, 45.422123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.749008, 41.731030, 45.321617>,  <38.519909, 41.692600, 45.261314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.749008, 41.731030, 45.321617>,  <39.130840, 41.795082, 45.422123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749008, 41.731030, 45.321617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297248, -0.569724, -0.766198,
		-0.020461, -0.806086, 0.591445,
		-0.954581, -0.160129, -0.251264,
		38.462635, 41.682991, 45.246239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248138, 41.154999, 45.145012>,  <39.130840, 41.795082, 45.422123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248138, 41.154999, 45.145012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879459, 41.253662, 45.025253>,  <38.658253, 41.312859, 44.953400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879459, 41.253662, 45.025253>,  <39.248138, 41.154999, 45.145012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879459, 41.253662, 45.025253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098259, -0.598184, -0.795312,
		-0.375258, -0.762455, 0.527108,
		-0.921697, 0.246654, -0.299392,
		38.602951, 41.327660, 44.935436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814396, 40.508526, 45.022152>,  <39.248138, 41.154999, 45.145012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814396, 40.508526, 45.022152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608147, 40.784946, 44.819538>,  <38.484398, 40.950798, 44.697968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608147, 40.784946, 44.819538>,  <38.814396, 40.508526, 45.022152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608147, 40.784946, 44.819538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031093, -0.605889, -0.794941,
		-0.856251, -0.394141, 0.333898,
		-0.515624, 0.691051, -0.506538,
		38.453461, 40.992260, 44.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380299, 40.046619, 44.686012>,  <38.814396, 40.508526, 45.022152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380299, 40.046619, 44.686012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446751, 40.405563, 44.522480>,  <38.486622, 40.620930, 44.424362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446751, 40.405563, 44.522480>,  <38.380299, 40.046619, 44.686012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446751, 40.405563, 44.522480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175516, -0.434877, -0.883219,
		-0.970358, 0.074972, -0.229747,
		0.166128, 0.897364, -0.408827,
		38.496590, 40.674774, 44.399834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393085, 39.831470, 44.103600>,  <38.380299, 40.046619, 44.686012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393085, 39.831470, 44.103600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505245, 40.210316, 44.041183>,  <38.572540, 40.437622, 44.003735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505245, 40.210316, 44.041183>,  <38.393085, 39.831470, 44.103600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505245, 40.210316, 44.041183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, -0.263309, -0.877361,
		-0.872048, 0.183422, -0.453750,
		0.280404, 0.947114, -0.156041,
		38.589367, 40.494450, 43.994370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159611, 40.025295, 43.418007>,  <38.393085, 39.831470, 44.103600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159611, 40.025295, 43.418007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453545, 40.276573, 43.520298>,  <38.629906, 40.427341, 43.581673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453545, 40.276573, 43.520298>,  <38.159611, 40.025295, 43.418007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453545, 40.276573, 43.520298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402071, -0.099821, -0.910151,
		-0.546227, 0.771625, -0.325931,
		0.734830, 0.628196, 0.255723,
		38.673992, 40.465031, 43.597015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217739, 40.614006, 42.830658>,  <38.159611, 40.025295, 43.418007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217739, 40.614006, 42.830658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567749, 40.616734, 43.024265>,  <38.777756, 40.618370, 43.140430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567749, 40.616734, 43.024265>,  <38.217739, 40.614006, 42.830658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567749, 40.616734, 43.024265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483551, 0.033966, -0.874657,
		-0.022407, 0.999400, 0.026422,
		0.875029, 0.006822, 0.484022,
		38.830257, 40.618782, 43.169472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628304, 41.054596, 42.551384>,  <38.217739, 40.614006, 42.830658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628304, 41.054596, 42.551384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889713, 40.809299, 42.728851>,  <39.046558, 40.662121, 42.835331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889713, 40.809299, 42.728851>,  <38.628304, 41.054596, 42.551384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889713, 40.809299, 42.728851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452193, -0.153725, -0.878573,
		0.606977, 0.774794, 0.176839,
		0.653529, -0.613239, 0.443664,
		39.085773, 40.625328, 42.861950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358585, 41.283672, 42.325665>,  <38.628304, 41.054596, 42.551384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358585, 41.283672, 42.325665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404766, 40.910416, 42.461845>,  <39.432476, 40.686462, 42.543556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404766, 40.910416, 42.461845>,  <39.358585, 41.283672, 42.325665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404766, 40.910416, 42.461845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405135, -0.268709, -0.873877,
		0.906938, 0.238821, 0.347027,
		0.115451, -0.933146, 0.340457,
		39.439400, 40.630470, 42.563984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966988, 41.111263, 42.098270>,  <39.358585, 41.283672, 42.325665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966988, 41.111263, 42.098270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787544, 40.761688, 42.173084>,  <39.679878, 40.551945, 42.217972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787544, 40.761688, 42.173084>,  <39.966988, 41.111263, 42.098270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787544, 40.761688, 42.173084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286577, -0.338887, -0.896119,
		0.846535, -0.348410, 0.402479,
		-0.448612, -0.873937, 0.187033,
		39.652962, 40.499508, 42.229195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.170664, 40.637291, 32.537201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367245, 40.440693, 32.249615>,  <29.485193, 40.322735, 32.077065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367245, 40.440693, 32.249615>,  <29.170664, 40.637291, 32.537201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367245, 40.440693, 32.249615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370349, -0.865117, 0.338252,
		-0.788237, 0.100033, -0.607187,
		0.491451, -0.491494, -0.718964,
		29.514681, 40.293243, 32.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654829, 40.164928, 32.214085>,  <29.170664, 40.637291, 32.537201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654829, 40.164928, 32.214085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028713, 40.028473, 32.174191>,  <29.253044, 39.946602, 32.150253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028713, 40.028473, 32.174191>,  <28.654829, 40.164928, 32.214085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028713, 40.028473, 32.174191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286151, -0.888752, 0.358103,
		-0.210803, -0.306182, -0.928340,
		0.934709, -0.341134, -0.099737,
		29.309126, 39.926132, 32.144268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602930, 39.460766, 31.954048>,  <28.654829, 40.164928, 32.214085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602930, 39.460766, 31.954048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970520, 39.483025, 32.110195>,  <29.191074, 39.496380, 32.203884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970520, 39.483025, 32.110195>,  <28.602930, 39.460766, 31.954048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970520, 39.483025, 32.110195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135800, -0.884769, 0.445805,
		0.370192, -0.462696, -0.805525,
		0.918976, 0.055643, 0.390368,
		29.246212, 39.499718, 32.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848774, 38.897694, 31.748943>,  <28.602930, 39.460766, 31.954048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848774, 38.897694, 31.748943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073761, 39.000816, 32.063183>,  <29.208754, 39.062691, 32.251728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073761, 39.000816, 32.063183>,  <28.848774, 38.897694, 31.748943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073761, 39.000816, 32.063183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008519, -0.948289, 0.317293,
		0.826774, -0.185160, -0.531188,
		0.562470, 0.257804, 0.785599,
		29.242502, 39.078159, 32.298862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303711, 38.381435, 31.761147>,  <28.848774, 38.897694, 31.748943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303711, 38.381435, 31.761147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369167, 38.552006, 32.116985>,  <29.408442, 38.654350, 32.330490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369167, 38.552006, 32.116985>,  <29.303711, 38.381435, 31.761147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369167, 38.552006, 32.116985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030296, -0.899154, 0.436582,
		0.986055, -0.098394, -0.134219,
		0.163641, 0.426428, 0.889596,
		29.418259, 38.679935, 32.383865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875135, 38.001610, 32.092686>,  <29.303711, 38.381435, 31.761147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875135, 38.001610, 32.092686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692333, 38.181866, 32.399429>,  <29.582653, 38.290020, 32.583473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692333, 38.181866, 32.399429>,  <29.875135, 38.001610, 32.092686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692333, 38.181866, 32.399429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111523, -0.884382, 0.453245,
		0.882446, 0.121613, 0.454423,
		-0.457004, 0.450643, 0.766856,
		29.555233, 38.317059, 32.629486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159071, 37.689297, 32.711708>,  <29.875135, 38.001610, 32.092686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159071, 37.689297, 32.711708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827597, 37.873745, 32.838612>,  <29.628712, 37.984413, 32.914753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827597, 37.873745, 32.838612>,  <30.159071, 37.689297, 32.711708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827597, 37.873745, 32.838612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298015, -0.843296, 0.447257,
		0.473783, 0.276086, 0.836246,
		-0.828684, 0.461116, 0.317262,
		29.578991, 38.012081, 32.933788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046785, 37.519741, 33.368912>,  <30.159071, 37.689297, 32.711708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046785, 37.519741, 33.368912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680143, 37.627964, 33.251175>,  <29.460157, 37.692898, 33.180534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680143, 37.627964, 33.251175>,  <30.046785, 37.519741, 33.368912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680143, 37.627964, 33.251175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393015, -0.744779, 0.539299,
		-0.073306, 0.610003, 0.789001,
		-0.916605, 0.270555, -0.294338,
		29.405161, 37.709129, 33.162872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724531, 37.522076, 33.963627>,  <30.046785, 37.519741, 33.368912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724531, 37.522076, 33.963627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438908, 37.486969, 33.685802>,  <29.267534, 37.465904, 33.519108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438908, 37.486969, 33.685802>,  <29.724531, 37.522076, 33.963627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438908, 37.486969, 33.685802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266096, -0.883629, 0.385219,
		-0.647546, 0.459889, 0.607607,
		-0.714057, -0.087765, -0.694565,
		29.224691, 37.460640, 33.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187544, 37.213787, 34.358616>,  <29.724531, 37.522076, 33.963627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187544, 37.213787, 34.358616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104736, 37.153332, 33.971981>,  <29.055052, 37.117058, 33.739998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104736, 37.153332, 33.971981>,  <29.187544, 37.213787, 34.358616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104736, 37.153332, 33.971981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548215, -0.800389, 0.242565,
		-0.810311, 0.580116, 0.082841,
		-0.207021, -0.151139, -0.966592,
		29.042629, 37.107990, 33.682003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489168, 37.059372, 34.411934>,  <29.187544, 37.213787, 34.358616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489168, 37.059372, 34.411934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595526, 36.919918, 34.052433>,  <28.659340, 36.836246, 33.836731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595526, 36.919918, 34.052433>,  <28.489168, 37.059372, 34.411934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595526, 36.919918, 34.052433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290274, -0.917999, 0.270220,
		-0.919267, 0.189042, -0.345271,
		0.265875, -0.348628, -0.898760,
		28.675295, 36.815327, 33.782806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884523, 36.596691, 34.026169>,  <28.489168, 37.059372, 34.411934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884523, 36.596691, 34.026169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243460, 36.503796, 33.876053>,  <28.458822, 36.448059, 33.785984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243460, 36.503796, 33.876053>,  <27.884523, 36.596691, 34.026169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243460, 36.503796, 33.876053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218076, -0.972612, 0.080430,
		-0.383693, 0.009669, -0.923410,
		0.897342, -0.232234, -0.375293,
		28.512663, 36.434124, 33.763466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733377, 36.069275, 33.524166>,  <27.884523, 36.596691, 34.026169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733377, 36.069275, 33.524166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111328, 36.022144, 33.646362>,  <28.338099, 35.993866, 33.719681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111328, 36.022144, 33.646362>,  <27.733377, 36.069275, 33.524166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111328, 36.022144, 33.646362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108930, -0.992981, -0.046072,
		0.308778, 0.010254, -0.951079,
		0.944876, -0.117827, 0.305494,
		28.394791, 35.986797, 33.738010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029451, 35.450733, 33.138355>,  <27.733377, 36.069275, 33.524166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029451, 35.450733, 33.138355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265537, 35.498745, 33.457664>,  <28.407188, 35.527554, 33.649250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265537, 35.498745, 33.457664>,  <28.029451, 35.450733, 33.138355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265537, 35.498745, 33.457664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041694, -0.983031, 0.178641,
		0.806167, -0.138720, -0.575197,
		0.590217, 0.120032, 0.798271,
		28.442602, 35.534756, 33.697147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527800, 34.868416, 33.107960>,  <28.029451, 35.450733, 33.138355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527800, 34.868416, 33.107960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549177, 34.983334, 33.490501>,  <28.562004, 35.052284, 33.720024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549177, 34.983334, 33.490501>,  <28.527800, 34.868416, 33.107960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549177, 34.983334, 33.490501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085968, -0.955487, 0.282230,
		0.994863, 0.067132, -0.075764,
		0.053445, 0.287293, 0.956351,
		28.565210, 35.069523, 33.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017616, 34.539745, 33.273338>,  <28.527800, 34.868416, 33.107960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017616, 34.539745, 33.273338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831476, 34.644581, 33.611511>,  <28.719791, 34.707481, 33.814415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831476, 34.644581, 33.611511>,  <29.017616, 34.539745, 33.273338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831476, 34.644581, 33.611511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203335, -0.897957, 0.390292,
		0.861454, 0.353529, 0.364573,
		-0.465351, 0.262089, 0.845434,
		28.691872, 34.723206, 33.865143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433353, 34.288212, 33.824440>,  <29.017616, 34.539745, 33.273338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433353, 34.288212, 33.824440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063976, 34.310455, 33.976315>,  <28.842350, 34.323803, 34.067440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063976, 34.310455, 33.976315>,  <29.433353, 34.288212, 33.824440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063976, 34.310455, 33.976315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090104, -0.930361, 0.355401,
		0.373010, 0.362404, 0.854124,
		-0.923442, 0.055608, 0.379687,
		28.786943, 34.327137, 34.090221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477558, 34.115009, 34.488747>,  <29.433353, 34.288212, 33.824440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477558, 34.115009, 34.488747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088936, 34.047501, 34.422302>,  <28.855762, 34.006996, 34.382435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088936, 34.047501, 34.422302>,  <29.477558, 34.115009, 34.488747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088936, 34.047501, 34.422302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064198, -0.862919, 0.501247,
		-0.227936, 0.476326, 0.849210,
		-0.971557, -0.168770, -0.166111,
		28.797468, 33.996868, 34.372467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261541, 34.042427, 34.556892>,  <29.477558, 34.115009, 34.488747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261541, 34.042427, 34.556892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521526, 34.166595, 34.834366>,  <30.677517, 34.241096, 35.000851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521526, 34.166595, 34.834366>,  <30.261541, 34.042427, 34.556892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521526, 34.166595, 34.834366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431995, 0.600053, -0.673288,
		-0.625245, 0.737277, 0.255911,
		0.649960, 0.310418, 0.693681,
		30.716515, 34.259720, 35.042469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349737, 34.799915, 34.387688>,  <30.261541, 34.042427, 34.556892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349737, 34.799915, 34.387688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661228, 34.673454, 34.604439>,  <30.848122, 34.597576, 34.734489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661228, 34.673454, 34.604439>,  <30.349737, 34.799915, 34.387688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661228, 34.673454, 34.604439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608955, 0.588618, -0.531698,
		-0.150862, 0.744027, 0.650895,
		0.778726, -0.316153, 0.541879,
		30.894846, 34.578609, 34.767002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791281, 35.391758, 34.682007>,  <30.349737, 34.799915, 34.387688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791281, 35.391758, 34.682007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050367, 35.087517, 34.664356>,  <31.205820, 34.904972, 34.653767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050367, 35.087517, 34.664356>,  <30.791281, 35.391758, 34.682007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050367, 35.087517, 34.664356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605512, 0.549066, -0.576092,
		0.462404, 0.346427, 0.816193,
		0.647718, -0.760602, -0.044125,
		31.244682, 34.859337, 34.651119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460102, 35.720951, 34.805782>,  <30.791281, 35.391758, 34.682007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460102, 35.720951, 34.805782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541006, 35.368816, 34.634155>,  <31.589548, 35.157536, 34.531178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541006, 35.368816, 34.634155>,  <31.460102, 35.720951, 34.805782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541006, 35.368816, 34.634155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592340, 0.458868, -0.662249,
		0.779888, -0.120210, 0.614267,
		0.202258, -0.880335, -0.429071,
		31.601683, 35.104717, 34.505436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162205, 35.677292, 34.756123>,  <31.460102, 35.720951, 34.805782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162205, 35.677292, 34.756123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043400, 35.405903, 34.487362>,  <31.972116, 35.243069, 34.326103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043400, 35.405903, 34.487362>,  <32.162205, 35.677292, 34.756123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043400, 35.405903, 34.487362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484971, 0.498960, -0.718221,
		0.822547, -0.539177, 0.180841,
		-0.297016, -0.678474, -0.671904,
		31.954294, 35.202362, 34.285789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742676, 35.559620, 34.304104>,  <32.162205, 35.677292, 34.756123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742676, 35.559620, 34.304104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410252, 35.467758, 34.101479>,  <32.210796, 35.412640, 33.979904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410252, 35.467758, 34.101479>,  <32.742676, 35.559620, 34.304104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410252, 35.467758, 34.101479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369846, 0.452046, -0.811707,
		0.415392, -0.861926, -0.290744,
		-0.831061, -0.229646, -0.506557,
		32.160934, 35.398861, 33.949512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002380, 35.292492, 33.646179>,  <32.742676, 35.559620, 34.304104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002380, 35.292492, 33.646179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616920, 35.377357, 33.581226>,  <32.385643, 35.428276, 33.542255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616920, 35.377357, 33.581226>,  <33.002380, 35.292492, 33.646179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616920, 35.377357, 33.581226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243771, 0.449474, -0.859389,
		-0.109341, -0.867734, -0.484854,
		-0.963649, 0.212160, -0.162383,
		32.327827, 35.441006, 33.532513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925835, 35.214779, 32.895218>,  <33.002380, 35.292492, 33.646179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925835, 35.214779, 32.895218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.612022, 35.427326, 33.023071>,  <32.423737, 35.554855, 33.099785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.612022, 35.427326, 33.023071>,  <32.925835, 35.214779, 32.895218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612022, 35.427326, 33.023071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051335, 0.458036, -0.887450,
		-0.617966, -0.712637, -0.332065,
		-0.784527, 0.531367, 0.319634,
		32.376663, 35.586735, 33.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416321, 35.159771, 32.292988>,  <32.925835, 35.214779, 32.895218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416321, 35.159771, 32.292988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356804, 35.495880, 32.501526>,  <32.321095, 35.697548, 32.626648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356804, 35.495880, 32.501526>,  <32.416321, 35.159771, 32.292988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356804, 35.495880, 32.501526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062203, 0.518213, -0.852987,
		-0.986910, -0.159350, -0.024841,
		-0.148796, 0.840276, 0.521341,
		32.312164, 35.747963, 32.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889317, 35.506615, 31.897863>,  <32.416321, 35.159771, 32.292988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889317, 35.506615, 31.897863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.072430, 35.786057, 32.117821>,  <32.182297, 35.953720, 32.249794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.072430, 35.786057, 32.117821>,  <31.889317, 35.506615, 31.897863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072430, 35.786057, 32.117821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038072, 0.633346, -0.772931,
		-0.888248, 0.332900, 0.316533,
		0.457784, 0.698606, 0.549895,
		32.209766, 35.995640, 32.282787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774427, 36.074184, 31.533590>,  <31.889317, 35.506615, 31.897863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774427, 36.074184, 31.533590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019901, 36.241230, 31.801617>,  <32.167187, 36.341457, 31.962433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019901, 36.241230, 31.801617>,  <31.774427, 36.074184, 31.533590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019901, 36.241230, 31.801617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071494, 0.874575, -0.479591,
		-0.786307, 0.246413, 0.566571,
		0.613686, 0.417612, 0.670067,
		32.204006, 36.366512, 32.002636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419655, 36.730873, 31.882801>,  <31.774427, 36.074184, 31.533590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419655, 36.730873, 31.882801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818701, 36.754196, 31.868027>,  <32.058128, 36.768192, 31.859161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818701, 36.754196, 31.868027>,  <31.419655, 36.730873, 31.882801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818701, 36.754196, 31.868027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068074, 0.919735, -0.386593,
		0.011429, 0.388185, 0.921510,
		0.997615, 0.058312, -0.036937,
		32.117985, 36.771690, 31.856945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458662, 37.444973, 32.012905>,  <31.419655, 36.730873, 31.882801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458662, 37.444973, 32.012905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818630, 37.311779, 31.900286>,  <32.034611, 37.231861, 31.832716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818630, 37.311779, 31.900286>,  <31.458662, 37.444973, 32.012905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818630, 37.311779, 31.900286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185412, 0.876585, -0.444096,
		0.394674, 0.347448, 0.850595,
		0.899919, -0.332984, -0.281544,
		32.088608, 37.211884, 31.815823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968454, 37.935047, 32.228939>,  <31.458662, 37.444973, 32.012905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968454, 37.935047, 32.228939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.173923, 37.730789, 31.953146>,  <32.297207, 37.608234, 31.787670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.173923, 37.730789, 31.953146>,  <31.968454, 37.935047, 32.228939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173923, 37.730789, 31.953146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270380, 0.859002, -0.434753,
		0.814269, 0.036900, 0.579314,
		0.513675, -0.510641, -0.689481,
		32.328026, 37.577599, 31.746302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566151, 38.269474, 32.195778>,  <31.968454, 37.935047, 32.228939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566151, 38.269474, 32.195778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.520138, 38.072777, 31.850533>,  <32.492531, 37.954758, 31.643387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.520138, 38.072777, 31.850533>,  <32.566151, 38.269474, 32.195778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520138, 38.072777, 31.850533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111304, 0.857027, -0.503107,
		0.987106, -0.153942, -0.043854,
		-0.115033, -0.491739, -0.863111,
		32.485626, 37.925255, 31.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099907, 38.486080, 31.729576>,  <32.566151, 38.269474, 32.195778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099907, 38.486080, 31.729576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.839546, 38.326893, 31.470984>,  <32.683331, 38.231380, 31.315828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.839546, 38.326893, 31.470984>,  <33.099907, 38.486080, 31.729576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839546, 38.326893, 31.470984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054865, 0.874011, -0.482798,
		0.757175, -0.278786, -0.590733,
		-0.650904, -0.397973, -0.646483,
		32.644276, 38.207500, 31.277039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342739, 38.697472, 31.161116>,  <33.099907, 38.486080, 31.729576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342739, 38.697472, 31.161116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965546, 38.597160, 31.073580>,  <32.739231, 38.536972, 31.021057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965546, 38.597160, 31.073580>,  <33.342739, 38.697472, 31.161116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965546, 38.597160, 31.073580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105273, 0.848461, -0.518682,
		0.315755, -0.466070, -0.826485,
		-0.942983, -0.250783, -0.218841,
		32.682652, 38.521927, 31.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216320, 38.922131, 30.422220>,  <33.342739, 38.697472, 31.161116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216320, 38.922131, 30.422220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.842270, 38.908524, 30.563295>,  <32.617840, 38.900360, 30.647940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.842270, 38.908524, 30.563295>,  <33.216320, 38.922131, 30.422220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842270, 38.908524, 30.563295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237455, 0.798951, -0.552532,
		-0.262985, -0.600433, -0.755195,
		-0.935122, -0.034016, 0.352688,
		32.561733, 38.898319, 30.669102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693012, 38.941090, 29.771563>,  <33.216320, 38.922131, 30.422220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693012, 38.941090, 29.771563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532562, 39.072056, 30.113766>,  <32.436291, 39.150635, 30.319088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532562, 39.072056, 30.113766>,  <32.693012, 38.941090, 29.771563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532562, 39.072056, 30.113766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291834, 0.839596, -0.458161,
		-0.868291, -0.433448, -0.241234,
		-0.401128, 0.327417, 0.855508,
		32.412224, 39.170280, 30.370419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967806, 39.103580, 29.582832>,  <32.693012, 38.941090, 29.771563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967806, 39.103580, 29.582832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049068, 39.307728, 29.917080>,  <32.097824, 39.430214, 30.117628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049068, 39.307728, 29.917080>,  <31.967806, 39.103580, 29.582832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049068, 39.307728, 29.917080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379290, 0.827803, -0.413379,
		-0.902700, -0.232961, 0.361749,
		0.203156, 0.510365, 0.835617,
		32.110016, 39.460838, 30.167765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410921, 39.555958, 29.669443>,  <31.967806, 39.103580, 29.582832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410921, 39.555958, 29.669443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677071, 39.722843, 29.917059>,  <31.836760, 39.822975, 30.065628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677071, 39.722843, 29.917059>,  <31.410921, 39.555958, 29.669443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677071, 39.722843, 29.917059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337514, 0.907779, -0.249041,
		-0.665855, -0.043230, 0.744828,
		0.665373, 0.417215, 0.619040,
		31.876682, 39.848007, 30.102772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048494, 40.006489, 30.149286>,  <31.410921, 39.555958, 29.669443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048494, 40.006489, 30.149286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.431562, 40.114876, 30.110405>,  <31.661404, 40.179909, 30.087076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.431562, 40.114876, 30.110405>,  <31.048494, 40.006489, 30.149286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431562, 40.114876, 30.110405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285943, 0.934400, -0.212446,
		0.033261, 0.231247, 0.972327,
		0.957669, 0.270964, -0.097203,
		31.718863, 40.196163, 30.081244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951483, 40.679432, 30.346924>,  <31.048494, 40.006489, 30.149286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951483, 40.679432, 30.346924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.314400, 40.667580, 30.179142>,  <31.532150, 40.660469, 30.078472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.314400, 40.667580, 30.179142>,  <30.951483, 40.679432, 30.346924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314400, 40.667580, 30.179142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094315, 0.957758, -0.271670,
		0.409788, 0.286045, 0.866171,
		0.907292, -0.029634, -0.419456,
		31.586588, 40.658688, 30.053305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343613, 41.324104, 30.492975>,  <30.951483, 40.679432, 30.346924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343613, 41.324104, 30.492975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511177, 41.171989, 30.163153>,  <31.611717, 41.080719, 29.965260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511177, 41.171989, 30.163153>,  <31.343613, 41.324104, 30.492975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511177, 41.171989, 30.163153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114242, 0.878787, -0.463339,
		0.900811, 0.288298, 0.324691,
		0.418913, -0.380287, -0.824556,
		31.636850, 41.057903, 29.915785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.464447, 38.594170, 47.922142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113647, 38.696457, 47.759422>,  <40.903168, 38.757828, 47.661789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113647, 38.696457, 47.759422>,  <41.464447, 38.594170, 47.922142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113647, 38.696457, 47.759422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200014, 0.575502, 0.792964,
		0.436888, 0.776793, -0.453566,
		-0.876997, 0.255717, -0.406799,
		40.850548, 38.773170, 47.637383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462357, 39.379684, 47.999542>,  <41.464447, 38.594170, 47.922142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462357, 39.379684, 47.999542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085552, 39.251282, 47.960419>,  <40.859470, 39.174240, 47.936943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085552, 39.251282, 47.960419>,  <41.462357, 39.379684, 47.999542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085552, 39.251282, 47.960419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277244, 0.580260, 0.765790,
		-0.189069, 0.748501, -0.635609,
		-0.942013, -0.321006, -0.097808,
		40.802948, 39.154980, 47.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038021, 39.945107, 48.142059>,  <41.462357, 39.379684, 47.999542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038021, 39.945107, 48.142059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780827, 39.640789, 48.177299>,  <40.626511, 39.458199, 48.198444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780827, 39.640789, 48.177299>,  <41.038021, 39.945107, 48.142059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780827, 39.640789, 48.177299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478945, 0.489187, 0.728909,
		-0.597649, 0.426481, -0.678918,
		-0.642984, -0.760795, 0.088101,
		40.587933, 39.412552, 48.203732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405460, 40.287754, 48.296093>,  <41.038021, 39.945107, 48.142059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405460, 40.287754, 48.296093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.364330, 39.909435, 48.419312>,  <40.339653, 39.682442, 48.493240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.364330, 39.909435, 48.419312>,  <40.405460, 40.287754, 48.296093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364330, 39.909435, 48.419312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343841, 0.324391, 0.881218,
		-0.933381, -0.015302, -0.358561,
		-0.102829, -0.945800, 0.308042,
		40.333481, 39.625694, 48.511723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676945, 40.162254, 48.429203>,  <40.405460, 40.287754, 48.296093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676945, 40.162254, 48.429203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.874989, 39.891052, 48.646523>,  <39.993816, 39.728333, 48.776913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.874989, 39.891052, 48.646523>,  <39.676945, 40.162254, 48.429203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874989, 39.891052, 48.646523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400390, 0.376910, 0.835240,
		-0.771071, -0.631071, -0.084853,
		0.495114, -0.678003, 0.543299,
		40.023521, 39.687653, 48.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222084, 39.686016, 48.795040>,  <39.676945, 40.162254, 48.429203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222084, 39.686016, 48.795040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566914, 39.698017, 48.997398>,  <39.773811, 39.705219, 49.118813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566914, 39.698017, 48.997398>,  <39.222084, 39.686016, 48.795040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566914, 39.698017, 48.997398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498065, 0.234556, 0.834814,
		-0.093617, -0.971639, 0.217147,
		0.862071, 0.030001, 0.505898,
		39.825535, 39.707016, 49.149166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007778, 39.456612, 49.430473>,  <39.222084, 39.686016, 48.795040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007778, 39.456612, 49.430473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366817, 39.597855, 49.536022>,  <39.582241, 39.682602, 49.599354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366817, 39.597855, 49.536022>,  <39.007778, 39.456612, 49.430473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366817, 39.597855, 49.536022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369802, 0.277379, 0.886739,
		0.239913, -0.893522, 0.379553,
		0.897602, 0.353100, 0.263880,
		39.636097, 39.703789, 49.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191082, 39.093063, 50.104370>,  <39.007778, 39.456612, 49.430473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191082, 39.093063, 50.104370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396080, 39.434925, 50.071110>,  <39.519081, 39.640041, 50.051155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396080, 39.434925, 50.071110>,  <39.191082, 39.093063, 50.104370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396080, 39.434925, 50.071110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470964, 0.360735, 0.805024,
		0.718010, -0.373414, 0.587387,
		0.512498, 0.854653, -0.083147,
		39.549831, 39.691322, 50.046165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455555, 39.231956, 50.845158>,  <39.191082, 39.093063, 50.104370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455555, 39.231956, 50.845158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.461090, 39.571983, 50.634563>,  <39.464413, 39.776001, 50.508205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.461090, 39.571983, 50.634563>,  <39.455555, 39.231956, 50.845158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461090, 39.571983, 50.634563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417750, 0.483298, 0.769356,
		0.908456, 0.209291, 0.361807,
		0.013841, 0.850071, -0.526486,
		39.465244, 39.827003, 50.476616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706615, 39.627033, 51.282139>,  <39.455555, 39.231956, 50.845158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706615, 39.627033, 51.282139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541527, 39.877895, 51.017914>,  <39.442474, 40.028412, 50.859379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541527, 39.877895, 51.017914>,  <39.706615, 39.627033, 51.282139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541527, 39.877895, 51.017914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268000, 0.609496, 0.746117,
		0.870540, 0.484966, -0.083473,
		-0.412718, 0.627154, -0.660562,
		39.417713, 40.066040, 50.819744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839066, 40.269550, 51.565754>,  <39.706615, 39.627033, 51.282139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839066, 40.269550, 51.565754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528774, 40.337723, 51.322708>,  <39.342598, 40.378628, 51.176880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528774, 40.337723, 51.322708>,  <39.839066, 40.269550, 51.565754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528774, 40.337723, 51.322708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491902, 0.439841, 0.751380,
		0.395314, 0.881755, -0.257362,
		-0.775731, 0.170434, -0.607613,
		39.296055, 40.388851, 51.140423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636997, 40.959583, 51.632050>,  <39.839066, 40.269550, 51.565754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636997, 40.959583, 51.632050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.310059, 40.795921, 51.469799>,  <39.113895, 40.697723, 51.372448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.310059, 40.795921, 51.469799>,  <39.636997, 40.959583, 51.632050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310059, 40.795921, 51.469799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528548, 0.252298, 0.810545,
		-0.229296, 0.876893, -0.422471,
		-0.817350, -0.409151, -0.405629,
		39.064854, 40.673176, 51.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133671, 41.217388, 52.142872>,  <39.636997, 40.959583, 51.632050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133671, 41.217388, 52.142872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908985, 40.983704, 51.908546>,  <38.774174, 40.843494, 51.767952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908985, 40.983704, 51.908546>,  <39.133671, 41.217388, 52.142872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908985, 40.983704, 51.908546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656500, -0.116159, 0.745329,
		-0.503474, 0.803249, -0.318284,
		-0.561713, -0.584208, -0.585815,
		38.740471, 40.808441, 51.732803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384659, 41.484421, 52.070621>,  <39.133671, 41.217388, 52.142872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384659, 41.484421, 52.070621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464329, 41.092789, 52.054024>,  <38.512131, 40.857807, 52.044064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464329, 41.092789, 52.054024>,  <38.384659, 41.484421, 52.070621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464329, 41.092789, 52.054024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569132, -0.150041, 0.808441,
		-0.797758, -0.137407, -0.587113,
		0.199176, -0.979085, -0.041494,
		38.524082, 40.799065, 52.041576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784885, 41.933857, 52.199375>,  <38.384659, 41.484421, 52.070621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784885, 41.933857, 52.199375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636715, 42.305161, 52.185982>,  <37.547813, 42.527943, 52.177944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636715, 42.305161, 52.185982>,  <37.784885, 41.933857, 52.199375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636715, 42.305161, 52.185982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091158, -0.072203, -0.993215,
		-0.924377, -0.364863, 0.111365,
		-0.370428, 0.928257, -0.033483,
		37.525585, 42.583637, 52.175938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181561, 41.918907, 51.804871>,  <37.784885, 41.933857, 52.199375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181561, 41.918907, 51.804871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.353325, 42.279575, 51.784500>,  <37.456383, 42.495975, 51.772278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.353325, 42.279575, 51.784500>,  <37.181561, 41.918907, 51.804871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353325, 42.279575, 51.784500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041214, -0.075901, -0.996263,
		-0.902169, 0.425705, -0.069754,
		0.429409, 0.901673, -0.050931,
		37.482147, 42.550076, 51.769222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753555, 42.334270, 51.333565>,  <37.181561, 41.918907, 51.804871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753555, 42.334270, 51.333565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118629, 42.496552, 51.353230>,  <37.337673, 42.593922, 51.365028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118629, 42.496552, 51.353230>,  <36.753555, 42.334270, 51.333565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118629, 42.496552, 51.353230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015353, 0.086181, -0.996161,
		-0.408382, 0.909933, 0.072427,
		0.912682, 0.405703, 0.049165,
		37.392433, 42.618263, 51.367977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744629, 42.938633, 50.901001>,  <36.753555, 42.334270, 51.333565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744629, 42.938633, 50.901001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141407, 42.903675, 50.937672>,  <37.379475, 42.882702, 50.959675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141407, 42.903675, 50.937672>,  <36.744629, 42.938633, 50.901001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141407, 42.903675, 50.937672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094026, 0.023176, -0.995300,
		0.084855, 0.995905, 0.031206,
		0.991947, -0.087391, 0.091675,
		37.438992, 42.877457, 50.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022701, 43.460926, 50.487335>,  <36.744629, 42.938633, 50.901001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022701, 43.460926, 50.487335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262375, 43.145767, 50.544186>,  <37.406178, 42.956673, 50.578297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262375, 43.145767, 50.544186>,  <37.022701, 43.460926, 50.487335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262375, 43.145767, 50.544186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192465, -0.030557, -0.980828,
		0.777134, 0.615049, 0.133334,
		0.599183, -0.787897, 0.142122,
		37.442131, 42.909397, 50.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545509, 43.493923, 50.063206>,  <37.022701, 43.460926, 50.487335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545509, 43.493923, 50.063206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651253, 43.112034, 50.117790>,  <37.714699, 42.882900, 50.150539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651253, 43.112034, 50.117790>,  <37.545509, 43.493923, 50.063206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651253, 43.112034, 50.117790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126650, -0.105903, -0.986278,
		0.956072, 0.278015, 0.092919,
		0.264359, -0.954721, 0.136462,
		37.730560, 42.825619, 50.158730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119080, 43.321411, 49.641869>,  <37.545509, 43.493923, 50.063206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119080, 43.321411, 49.641869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036972, 42.944614, 49.748093>,  <37.987709, 42.718536, 49.811829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036972, 42.944614, 49.748093>,  <38.119080, 43.321411, 49.641869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036972, 42.944614, 49.748093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095570, -0.289336, -0.952445,
		0.974029, -0.170124, 0.149416,
		-0.205265, -0.941988, 0.265563,
		37.975391, 42.662018, 49.827763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610626, 42.909184, 49.426231>,  <38.119080, 43.321411, 49.641869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610626, 42.909184, 49.426231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291641, 42.670624, 49.462784>,  <38.100250, 42.527489, 49.484715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291641, 42.670624, 49.462784>,  <38.610626, 42.909184, 49.426231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291641, 42.670624, 49.462784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043901, -0.208412, -0.977055,
		0.601765, -0.775156, 0.192385,
		-0.797465, -0.596404, 0.091385,
		38.052402, 42.491703, 49.490200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725887, 42.584808, 48.847019>,  <38.610626, 42.909184, 49.426231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725887, 42.584808, 48.847019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344612, 42.494633, 48.927631>,  <38.115849, 42.440529, 48.975998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344612, 42.494633, 48.927631>,  <38.725887, 42.584808, 48.847019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344612, 42.494633, 48.927631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108795, -0.366172, -0.924165,
		0.282135, -0.902827, 0.324504,
		-0.953186, -0.225435, 0.201533,
		38.058655, 42.427002, 48.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610897, 41.882320, 48.568729>,  <38.725887, 42.584808, 48.847019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610897, 41.882320, 48.568729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259232, 42.071289, 48.593689>,  <38.048233, 42.184669, 48.608665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259232, 42.071289, 48.593689>,  <38.610897, 41.882320, 48.568729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259232, 42.071289, 48.593689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257308, -0.360415, -0.896601,
		-0.401080, -0.804315, 0.438420,
		-0.879163, 0.472418, 0.062401,
		37.995483, 42.213017, 48.612408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111706, 41.338871, 48.502510>,  <38.610897, 41.882320, 48.568729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111706, 41.338871, 48.502510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936729, 41.689289, 48.421333>,  <37.831745, 41.899540, 48.372627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936729, 41.689289, 48.421333>,  <38.111706, 41.338871, 48.502510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936729, 41.689289, 48.421333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069339, -0.257867, -0.963689,
		-0.896570, -0.407485, 0.173545,
		-0.437440, 0.876048, -0.202941,
		37.805496, 41.952103, 48.360451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626740, 41.171375, 47.993443>,  <38.111706, 41.338871, 48.502510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626740, 41.171375, 47.993443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669044, 41.567150, 47.953793>,  <37.694427, 41.804615, 47.930000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669044, 41.567150, 47.953793>,  <37.626740, 41.171375, 47.993443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669044, 41.567150, 47.953793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061833, -0.106038, -0.992437,
		-0.992467, 0.098837, -0.072395,
		0.105766, 0.989438, -0.099128,
		37.700775, 41.863983, 47.924053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283291, 41.326771, 47.337967>,  <37.626740, 41.171375, 47.993443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283291, 41.326771, 47.337967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466587, 41.672768, 47.419754>,  <37.576565, 41.880367, 47.468826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466587, 41.672768, 47.419754>,  <37.283291, 41.326771, 47.337967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466587, 41.672768, 47.419754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238679, 0.101844, -0.965743,
		-0.856183, 0.491344, -0.159786,
		0.458238, 0.864991, 0.204471,
		37.604057, 41.932266, 47.481094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850410, 41.846966, 47.071556>,  <37.283291, 41.326771, 47.337967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850410, 41.846966, 47.071556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244381, 41.913815, 47.089375>,  <37.480762, 41.953922, 47.100063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244381, 41.913815, 47.089375>,  <36.850410, 41.846966, 47.071556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244381, 41.913815, 47.089375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046944, -0.010453, -0.998843,
		-0.166459, 0.985882, -0.018141,
		0.984930, 0.167118, 0.044541,
		37.539860, 41.963951, 47.102737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171028, 42.038361, 46.896553>,  <36.850410, 41.846966, 47.071556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171028, 42.038361, 46.896553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864315, 41.833038, 46.742378>,  <35.680286, 41.709846, 46.649872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864315, 41.833038, 46.742378>,  <36.171028, 42.038361, 46.896553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864315, 41.833038, 46.742378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486186, 0.072345, 0.870856,
		-0.419130, 0.855151, -0.305034,
		-0.766781, -0.513305, -0.385440,
		35.634281, 41.679047, 46.626747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548313, 42.392059, 47.049046>,  <36.171028, 42.038361, 46.896553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548313, 42.392059, 47.049046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431492, 42.012070, 47.004768>,  <35.361401, 41.784077, 46.978203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431492, 42.012070, 47.004768>,  <35.548313, 42.392059, 47.049046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431492, 42.012070, 47.004768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473463, 0.043041, 0.879761,
		-0.830987, 0.309345, -0.462348,
		-0.292050, -0.949975, -0.110697,
		35.343876, 41.727077, 46.971558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870064, 42.347309, 47.187515>,  <35.548313, 42.392059, 47.049046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870064, 42.347309, 47.187515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004200, 41.974419, 47.241932>,  <35.084682, 41.750687, 47.274582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004200, 41.974419, 47.241932>,  <34.870064, 42.347309, 47.187515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004200, 41.974419, 47.241932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540922, -0.072300, 0.837959,
		-0.771329, -0.354590, -0.528505,
		0.335343, -0.932222, 0.136039,
		35.104801, 41.694752, 47.282745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345856, 42.024799, 47.577267>,  <34.870064, 42.347309, 47.187515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345856, 42.024799, 47.577267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665806, 41.789135, 47.623043>,  <34.857777, 41.647736, 47.650509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665806, 41.789135, 47.623043>,  <34.345856, 42.024799, 47.577267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665806, 41.789135, 47.623043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274888, -0.190131, 0.942490,
		-0.533519, -0.785329, -0.314033,
		0.799871, -0.589160, 0.114439,
		34.905766, 41.612389, 47.657375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108105, 41.474121, 48.098705>,  <34.345856, 42.024799, 47.577267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108105, 41.474121, 48.098705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506409, 41.438076, 48.091373>,  <34.745392, 41.416447, 48.086975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506409, 41.438076, 48.091373>,  <34.108105, 41.474121, 48.098705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506409, 41.438076, 48.091373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005462, -0.140973, 0.989998,
		-0.091794, -0.985904, -0.139883,
		0.995763, -0.090112, -0.018326,
		34.805138, 41.411041, 48.085876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322025, 40.970924, 48.512997>,  <34.108105, 41.474121, 48.098705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322025, 40.970924, 48.512997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677044, 41.155025, 48.504696>,  <34.890057, 41.265488, 48.499718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677044, 41.155025, 48.504696>,  <34.322025, 40.970924, 48.512997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677044, 41.155025, 48.504696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084465, -0.118281, 0.989381,
		0.452912, -0.879873, -0.143855,
		0.887546, 0.460253, -0.020748,
		34.943306, 41.293102, 48.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809200, 40.628048, 48.951099>,  <34.322025, 40.970924, 48.512997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809200, 40.628048, 48.951099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960773, 40.993153, 48.890072>,  <35.051716, 41.212215, 48.853455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960773, 40.993153, 48.890072>,  <34.809200, 40.628048, 48.951099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960773, 40.993153, 48.890072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205443, 0.077780, 0.975573,
		0.902332, -0.401020, -0.158047,
		0.378932, 0.912761, -0.152571,
		35.074451, 41.266979, 48.844299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192928, 40.062046, 48.893929>,  <34.809200, 40.628048, 48.951099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192928, 40.062046, 48.893929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956356, 39.789104, 49.065792>,  <34.814411, 39.625340, 49.168911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956356, 39.789104, 49.065792>,  <35.192928, 40.062046, 48.893929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956356, 39.789104, 49.065792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011290, -0.539793, -0.841722,
		0.806274, -0.492973, 0.326956,
		-0.591435, -0.682349, 0.429656,
		34.778927, 39.584400, 49.194687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463509, 39.386448, 48.637897>,  <35.192928, 40.062046, 48.893929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463509, 39.386448, 48.637897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094177, 39.327244, 48.779636>,  <34.872578, 39.291721, 48.864681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094177, 39.327244, 48.779636>,  <35.463509, 39.386448, 48.637897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094177, 39.327244, 48.779636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246067, -0.480382, -0.841834,
		0.294820, -0.864481, 0.407130,
		-0.923327, -0.148008, 0.354346,
		34.817181, 39.282841, 48.885941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381203, 38.580696, 48.655849>,  <35.463509, 39.386448, 48.637897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381203, 38.580696, 48.655849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032303, 38.772141, 48.615612>,  <34.822964, 38.887009, 48.591469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032303, 38.772141, 48.615612>,  <35.381203, 38.580696, 48.655849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032303, 38.772141, 48.615612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190305, -0.521624, -0.831681,
		-0.450522, -0.706287, 0.546066,
		-0.872247, 0.478610, -0.100592,
		34.770630, 38.915722, 48.585434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846424, 38.050171, 48.729618>,  <35.381203, 38.580696, 48.655849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846424, 38.050171, 48.729618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706234, 38.362198, 48.522285>,  <34.622120, 38.549412, 48.397884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706234, 38.362198, 48.522285>,  <34.846424, 38.050171, 48.729618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706234, 38.362198, 48.522285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247914, -0.610962, -0.751840,
		-0.903165, -0.134998, 0.407515,
		-0.350473, 0.780065, -0.518332,
		34.601093, 38.596218, 48.366787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273880, 37.719147, 48.383785>,  <34.846424, 38.050171, 48.729618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273880, 37.719147, 48.383785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364655, 38.060535, 48.196129>,  <34.419117, 38.265369, 48.083534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364655, 38.060535, 48.196129>,  <34.273880, 37.719147, 48.383785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364655, 38.060535, 48.196129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095915, -0.459783, -0.882836,
		-0.969176, 0.245341, -0.022479,
		0.226931, 0.853468, -0.469143,
		34.432735, 38.316574, 48.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115166, 37.499142, 47.714813>,  <34.273880, 37.719147, 48.383785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115166, 37.499142, 47.714813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231682, 37.874897, 47.642475>,  <34.301594, 38.100349, 47.599072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231682, 37.874897, 47.642475>,  <34.115166, 37.499142, 47.714813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231682, 37.874897, 47.642475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065080, -0.169143, -0.983441,
		-0.954418, 0.298238, 0.011866,
		0.291292, 0.939385, -0.180842,
		34.319069, 38.156712, 47.588223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575272, 37.839825, 47.252724>,  <34.115166, 37.499142, 47.714813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575272, 37.839825, 47.252724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932163, 38.014671, 47.207386>,  <34.146297, 38.119579, 47.180183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932163, 38.014671, 47.207386>,  <33.575272, 37.839825, 47.252724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932163, 38.014671, 47.207386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148801, 0.047607, -0.987720,
		-0.426354, 0.898144, 0.107520,
		0.892234, 0.437117, -0.113347,
		34.199833, 38.145805, 47.173382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.249214, 38.036934, 50.347481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571529, 37.907372, 50.149170>,  <36.764919, 37.829636, 50.030182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571529, 37.907372, 50.149170>,  <36.249214, 38.036934, 50.347481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571529, 37.907372, 50.149170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545890, 0.730816, 0.409772,
		0.229596, -0.600829, 0.765696,
		0.805786, -0.323904, -0.495778,
		36.813267, 37.810200, 50.000435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784401, 38.531914, 50.637848>,  <36.249214, 38.036934, 50.347481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784401, 38.531914, 50.637848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.071877, 38.738300, 50.824295>,  <36.244362, 38.862133, 50.936165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.071877, 38.738300, 50.824295>,  <35.784401, 38.531914, 50.637848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071877, 38.738300, 50.824295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682193, -0.393508, -0.616250,
		-0.134541, 0.760876, -0.634797,
		0.718687, 0.515965, 0.466121,
		36.287483, 38.893089, 50.964130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029552, 38.931538, 50.188469>,  <35.784401, 38.531914, 50.637848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029552, 38.931538, 50.188469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307415, 38.858494, 50.466782>,  <36.474133, 38.814667, 50.633770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307415, 38.858494, 50.466782>,  <36.029552, 38.931538, 50.188469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307415, 38.858494, 50.466782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634647, -0.299765, -0.712295,
		0.338642, 0.936373, -0.092341,
		0.694655, -0.182609, 0.695779,
		36.515812, 38.803711, 50.675514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583160, 39.024807, 49.778801>,  <36.029552, 38.931538, 50.188469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583160, 39.024807, 49.778801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719234, 38.817413, 50.092602>,  <36.800877, 38.692978, 50.280884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719234, 38.817413, 50.092602>,  <36.583160, 39.024807, 49.778801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719234, 38.817413, 50.092602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675474, -0.445679, -0.587457,
		0.654225, 0.729756, 0.198611,
		0.340183, -0.518485, 0.784505,
		36.821289, 38.661869, 50.327953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297466, 39.095078, 49.698746>,  <36.583160, 39.024807, 49.778801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297466, 39.095078, 49.698746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.253166, 38.789688, 49.953251>,  <37.226585, 38.606453, 50.105953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.253166, 38.789688, 49.953251>,  <37.297466, 39.095078, 49.698746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253166, 38.789688, 49.953251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748079, -0.485520, -0.452381,
		0.654303, 0.425877, 0.624913,
		-0.110749, -0.763478, 0.636267,
		37.219940, 38.560646, 50.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880138, 38.952156, 49.735767>,  <37.297466, 39.095078, 49.698746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880138, 38.952156, 49.735767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.692318, 38.620193, 49.856289>,  <37.579628, 38.421017, 49.928600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.692318, 38.620193, 49.856289>,  <37.880138, 38.952156, 49.735767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692318, 38.620193, 49.856289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563158, -0.544347, -0.621723,
		0.679984, -0.122249, 0.722965,
		-0.469548, -0.829905, 0.301302,
		37.551453, 38.371223, 49.946678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372074, 38.478245, 49.825218>,  <37.880138, 38.952156, 49.735767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372074, 38.478245, 49.825218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.040047, 38.259060, 49.783802>,  <37.840832, 38.127548, 49.758953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.040047, 38.259060, 49.783802>,  <38.372074, 38.478245, 49.825218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040047, 38.259060, 49.783802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507834, -0.666042, -0.546345,
		0.230416, -0.506085, 0.831136,
		-0.830068, -0.547966, -0.103540,
		37.791027, 38.094669, 49.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539734, 37.741665, 49.977478>,  <38.372074, 38.478245, 49.825218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539734, 37.741665, 49.977478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.229668, 37.748169, 49.724857>,  <38.043629, 37.752071, 49.573284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.229668, 37.748169, 49.724857>,  <38.539734, 37.741665, 49.977478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229668, 37.748169, 49.724857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523701, -0.542597, -0.656754,
		-0.353353, -0.839836, 0.412089,
		-0.775164, 0.016254, -0.631551,
		37.997120, 37.753044, 49.535393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465485, 37.093746, 49.808338>,  <38.539734, 37.741665, 49.977478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465485, 37.093746, 49.808338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235268, 37.247784, 49.519768>,  <38.097137, 37.340206, 49.346626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235268, 37.247784, 49.519768>,  <38.465485, 37.093746, 49.808338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235268, 37.247784, 49.519768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333094, -0.695294, -0.636879,
		-0.746865, -0.606850, 0.271894,
		-0.575536, 0.385097, -0.721428,
		38.062607, 37.363312, 49.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047871, 36.496143, 49.586342>,  <38.465485, 37.093746, 49.808338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047871, 36.496143, 49.586342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.021099, 36.748882, 49.277462>,  <38.005035, 36.900524, 49.092133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.021099, 36.748882, 49.277462>,  <38.047871, 36.496143, 49.586342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021099, 36.748882, 49.277462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082828, -0.767747, -0.635377,
		-0.994314, -0.106483, -0.000952,
		-0.066925, 0.631843, -0.772202,
		38.001022, 36.938435, 49.045803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636425, 36.174187, 49.002235>,  <38.047871, 36.496143, 49.586342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636425, 36.174187, 49.002235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.810276, 36.475357, 48.804569>,  <37.914585, 36.656059, 48.685970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.810276, 36.475357, 48.804569>,  <37.636425, 36.174187, 49.002235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810276, 36.475357, 48.804569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021564, -0.539845, -0.841488,
		-0.900352, 0.376390, -0.218395,
		0.434627, 0.752926, -0.494167,
		37.940662, 36.701237, 48.656319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302956, 36.260765, 48.321571>,  <37.636425, 36.174187, 49.002235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302956, 36.260765, 48.321571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663322, 36.426693, 48.270538>,  <37.879543, 36.526249, 48.239918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663322, 36.426693, 48.270538>,  <37.302956, 36.260765, 48.321571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663322, 36.426693, 48.270538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057498, -0.405462, -0.912302,
		-0.430169, 0.814571, -0.389139,
		0.900916, 0.414818, -0.127581,
		37.933598, 36.551140, 48.232265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608315, 36.312904, 48.230000>,  <37.302956, 36.260765, 48.321571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608315, 36.312904, 48.230000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.251335, 36.301659, 48.049889>,  <36.037148, 36.294910, 47.941822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.251335, 36.301659, 48.049889>,  <36.608315, 36.312904, 48.230000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251335, 36.301659, 48.049889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450357, 0.114879, 0.885427,
		0.026835, 0.992982, -0.115184,
		-0.892445, -0.028114, -0.450279,
		35.983601, 36.293224, 47.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250340, 36.908474, 48.367077>,  <36.608315, 36.312904, 48.230000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250340, 36.908474, 48.367077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970528, 36.636402, 48.279427>,  <35.802643, 36.473160, 48.226837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970528, 36.636402, 48.279427>,  <36.250340, 36.908474, 48.367077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970528, 36.636402, 48.279427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476538, 0.215505, 0.852331,
		-0.532515, 0.700652, -0.474884,
		-0.699527, -0.680180, -0.219128,
		35.760670, 36.432346, 48.213688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651684, 37.103741, 48.685787>,  <36.250340, 36.908474, 48.367077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651684, 37.103741, 48.685787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554008, 36.722935, 48.611980>,  <35.495403, 36.494453, 48.567696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554008, 36.722935, 48.611980>,  <35.651684, 37.103741, 48.685787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554008, 36.722935, 48.611980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583458, -0.007742, 0.812106,
		-0.774562, 0.305966, -0.553568,
		-0.244191, -0.952011, -0.184515,
		35.480751, 36.437332, 48.556625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992958, 37.040497, 48.925079>,  <35.651684, 37.103741, 48.685787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992958, 37.040497, 48.925079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136978, 36.667351, 48.920727>,  <35.223392, 36.443462, 48.918114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136978, 36.667351, 48.920727>,  <34.992958, 37.040497, 48.925079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136978, 36.667351, 48.920727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257615, -0.110626, 0.959894,
		-0.896659, -0.342810, -0.280152,
		0.360053, -0.932869, -0.010881,
		35.244995, 36.387489, 48.917461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544994, 36.738636, 49.356503>,  <34.992958, 37.040497, 48.925079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544994, 36.738636, 49.356503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.859795, 36.491886, 49.352684>,  <35.048676, 36.343834, 49.350391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.859795, 36.491886, 49.352684>,  <34.544994, 36.738636, 49.356503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859795, 36.491886, 49.352684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138673, -0.191949, 0.971558,
		-0.601167, -0.763293, -0.236608,
		0.787000, -0.616879, -0.009546,
		35.095894, 36.306824, 49.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330582, 36.229950, 49.806602>,  <34.544994, 36.738636, 49.356503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330582, 36.229950, 49.806602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723289, 36.164021, 49.768719>,  <34.958912, 36.124462, 49.745991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723289, 36.164021, 49.768719>,  <34.330582, 36.229950, 49.806602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723289, 36.164021, 49.768719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045623, -0.279336, 0.959109,
		-0.184537, -0.945941, -0.266723,
		0.981766, -0.164823, -0.094705,
		35.017818, 36.114574, 49.740307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479759, 35.544613, 50.087803>,  <34.330582, 36.229950, 49.806602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479759, 35.544613, 50.087803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788956, 35.796986, 50.114338>,  <34.974476, 35.948410, 50.130260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788956, 35.796986, 50.114338>,  <34.479759, 35.544613, 50.087803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788956, 35.796986, 50.114338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153275, 0.084261, 0.984585,
		0.615620, -0.771245, 0.161840,
		0.772993, 0.630937, 0.066340,
		35.020855, 35.986267, 50.134239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971008, 35.243198, 50.595444>,  <34.479759, 35.544613, 50.087803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971008, 35.243198, 50.595444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063774, 35.629841, 50.551826>,  <35.119434, 35.861828, 50.525658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063774, 35.629841, 50.551826>,  <34.971008, 35.243198, 50.595444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063774, 35.629841, 50.551826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000634, 0.112250, 0.993680,
		0.972736, -0.230380, 0.026646,
		0.231915, 0.966605, -0.109044,
		35.133350, 35.919823, 50.519112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353672, 35.472832, 51.220020>,  <34.971008, 35.243198, 50.595444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353672, 35.472832, 51.220020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219856, 35.813221, 51.058067>,  <35.139568, 36.017456, 50.960896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.219856, 35.813221, 51.058067>,  <35.353672, 35.472832, 51.220020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219856, 35.813221, 51.058067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003306, 0.428570, 0.903503,
		0.942378, 0.303592, -0.140558,
		-0.334535, 0.850976, -0.404878,
		35.119495, 36.068512, 50.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634453, 35.833740, 51.721764>,  <35.353672, 35.472832, 51.220020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634453, 35.833740, 51.721764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362465, 36.051487, 51.525272>,  <35.199272, 36.182137, 51.407375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362465, 36.051487, 51.525272>,  <35.634453, 35.833740, 51.721764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362465, 36.051487, 51.525272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204690, 0.502390, 0.840063,
		0.704093, 0.671766, -0.230182,
		-0.679967, 0.544367, -0.491233,
		35.158474, 36.214798, 51.377903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797699, 36.543922, 51.707874>,  <35.634453, 35.833740, 51.721764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797699, 36.543922, 51.707874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402889, 36.510136, 51.653252>,  <35.166004, 36.489864, 51.620480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402889, 36.510136, 51.653252>,  <35.797699, 36.543922, 51.707874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402889, 36.510136, 51.653252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160556, 0.507814, 0.846373,
		-0.002145, 0.857316, -0.514786,
		-0.987024, -0.084468, -0.136557,
		35.106781, 36.484795, 51.612286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556118, 37.219818, 51.790096>,  <35.797699, 36.543922, 51.707874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556118, 37.219818, 51.790096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234127, 36.982868, 51.803406>,  <35.040932, 36.840698, 51.811394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234127, 36.982868, 51.803406>,  <35.556118, 37.219818, 51.790096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234127, 36.982868, 51.803406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318482, 0.478748, 0.818150,
		-0.500580, 0.647995, -0.574041,
		-0.804978, -0.592371, 0.033277,
		34.992634, 36.805157, 51.813389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944187, 37.659664, 51.858524>,  <35.556118, 37.219818, 51.790096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944187, 37.659664, 51.858524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828754, 37.308746, 52.011921>,  <34.759495, 37.098194, 52.103958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828754, 37.308746, 52.011921>,  <34.944187, 37.659664, 51.858524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828754, 37.308746, 52.011921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289477, 0.461738, 0.838452,
		-0.912646, 0.130951, -0.387207,
		-0.288584, -0.877297, 0.383496,
		34.742180, 37.045559, 52.126968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352127, 37.812828, 52.197800>,  <34.944187, 37.659664, 51.858524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352127, 37.812828, 52.197800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.437313, 37.461617, 52.369244>,  <34.488422, 37.250889, 52.472111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.437313, 37.461617, 52.369244>,  <34.352127, 37.812828, 52.197800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437313, 37.461617, 52.369244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169420, 0.398845, 0.901232,
		-0.962260, -0.264544, -0.063817,
		0.212963, -0.878031, 0.428611,
		34.501202, 37.198208, 52.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495987, 38.300747, 51.674343>,  <34.352127, 37.812828, 52.197800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495987, 38.300747, 51.674343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480206, 38.699883, 51.695328>,  <34.470737, 38.939365, 51.707920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480206, 38.699883, 51.695328>,  <34.495987, 38.300747, 51.674343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480206, 38.699883, 51.695328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277618, 0.039490, -0.959879,
		-0.959881, -0.052434, 0.275462,
		-0.039453, 0.997843, 0.052463,
		34.468369, 38.999237, 51.711067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075996, 38.411236, 51.232643>,  <34.495987, 38.300747, 51.674343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075996, 38.411236, 51.232643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220490, 38.779480, 51.291958>,  <34.307186, 39.000427, 51.327545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220490, 38.779480, 51.291958>,  <34.075996, 38.411236, 51.232643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220490, 38.779480, 51.291958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200905, 0.232128, -0.951711,
		-0.910576, 0.313998, 0.268807,
		0.361233, 0.920609, 0.148287,
		34.328857, 39.055664, 51.336445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636051, 38.850262, 50.896568>,  <34.075996, 38.411236, 51.232643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636051, 38.850262, 50.896568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.975674, 39.060425, 50.918663>,  <34.179447, 39.186523, 50.931919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.975674, 39.060425, 50.918663>,  <33.636051, 38.850262, 50.896568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975674, 39.060425, 50.918663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079535, 0.230481, -0.969821,
		-0.522281, 0.819039, 0.237480,
		0.849056, 0.525407, 0.055234,
		34.230392, 39.218048, 50.935234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420094, 39.435631, 50.601280>,  <33.636051, 38.850262, 50.896568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420094, 39.435631, 50.601280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.817924, 39.398869, 50.581799>,  <34.056622, 39.376812, 50.570110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.817924, 39.398869, 50.581799>,  <33.420094, 39.435631, 50.601280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817924, 39.398869, 50.581799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013952, 0.346149, -0.938076,
		0.103075, 0.933667, 0.342989,
		0.994576, -0.091907, -0.048706,
		34.116299, 39.371296, 50.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642231, 40.095123, 50.254692>,  <33.420094, 39.435631, 50.601280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642231, 40.095123, 50.254692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933487, 39.821472, 50.237808>,  <34.108242, 39.657284, 50.227676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933487, 39.821472, 50.237808>,  <33.642231, 40.095123, 50.254692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933487, 39.821472, 50.237808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234962, 0.306985, -0.922255,
		0.643895, 0.661615, 0.384272,
		0.728143, -0.684124, -0.042212,
		34.151932, 39.616234, 50.225143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263905, 40.455193, 49.868057>,  <33.642231, 40.095123, 50.254692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263905, 40.455193, 49.868057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290272, 40.056259, 49.855518>,  <34.306091, 39.816898, 49.847996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290272, 40.056259, 49.855518>,  <34.263905, 40.455193, 49.868057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290272, 40.056259, 49.855518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165700, 0.041924, -0.985285,
		0.983971, 0.059751, 0.168022,
		0.065916, -0.997332, -0.031352,
		34.310047, 39.757061, 49.846111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903809, 40.282696, 49.599586>,  <34.263905, 40.455193, 49.868057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903809, 40.282696, 49.599586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618324, 40.016071, 49.513500>,  <34.447033, 39.856098, 49.461849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618324, 40.016071, 49.513500>,  <34.903809, 40.282696, 49.599586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618324, 40.016071, 49.513500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195240, 0.105768, -0.975036,
		0.672680, -0.737913, 0.054650,
		-0.713711, -0.666557, -0.215218,
		34.404209, 39.816105, 49.448936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448681, 40.677334, 49.346741>,  <34.903809, 40.282696, 49.599586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448681, 40.677334, 49.346741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355179, 41.062405, 49.292183>,  <35.299076, 41.293449, 49.259449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355179, 41.062405, 49.292183>,  <35.448681, 40.677334, 49.346741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355179, 41.062405, 49.292183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264641, 0.197979, 0.943806,
		0.935587, 0.184523, -0.301044,
		-0.233754, 0.962681, -0.136395,
		35.285053, 41.351208, 49.251263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851868, 40.908955, 49.842236>,  <35.448681, 40.677334, 49.346741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851868, 40.908955, 49.842236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622860, 41.226238, 49.759247>,  <35.485455, 41.416607, 49.709454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622860, 41.226238, 49.759247>,  <35.851868, 40.908955, 49.842236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622860, 41.226238, 49.759247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152359, 0.351574, 0.923679,
		0.805610, 0.497214, -0.322135,
		-0.572520, 0.793205, -0.207477,
		35.451103, 41.464199, 49.697002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203762, 41.527317, 50.146862>,  <35.851868, 40.908955, 49.842236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203762, 41.527317, 50.146862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829624, 41.663113, 50.107117>,  <35.605141, 41.744591, 50.083267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829624, 41.663113, 50.107117>,  <36.203762, 41.527317, 50.146862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829624, 41.663113, 50.107117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165637, 0.668552, 0.724985,
		0.312557, 0.661653, -0.681560,
		-0.935346, 0.339491, -0.099366,
		35.549019, 41.764961, 50.077309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350876, 42.239952, 50.175175>,  <36.203762, 41.527317, 50.146862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350876, 42.239952, 50.175175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968071, 42.166962, 50.265362>,  <35.738388, 42.123169, 50.319473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968071, 42.166962, 50.265362>,  <36.350876, 42.239952, 50.175175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968071, 42.166962, 50.265362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049026, 0.664378, 0.745787,
		-0.285882, 0.724779, -0.626871,
		-0.957010, -0.182474, 0.225467,
		35.680969, 42.112221, 50.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032974, 42.916363, 50.240650>,  <36.350876, 42.239952, 50.175175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032974, 42.916363, 50.240650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.826977, 42.634266, 50.435551>,  <35.703377, 42.465008, 50.552490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.826977, 42.634266, 50.435551>,  <36.032974, 42.916363, 50.240650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826977, 42.634266, 50.435551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027237, 0.554675, 0.831622,
		-0.856758, 0.441555, -0.266448,
		-0.514998, -0.705242, 0.487249,
		35.672478, 42.422695, 50.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675747, 43.303207, 50.697781>,  <36.032974, 42.916363, 50.240650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675747, 43.303207, 50.697781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638256, 42.937603, 50.855667>,  <35.615761, 42.718243, 50.950401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638256, 42.937603, 50.855667>,  <35.675747, 43.303207, 50.697781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638256, 42.937603, 50.855667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088839, 0.402562, 0.911072,
		-0.991626, 0.050328, -0.118932,
		-0.093729, -0.914008, 0.394720,
		35.610138, 42.663399, 50.974083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048435, 43.211205, 51.126587>,  <35.675747, 43.303207, 50.697781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048435, 43.211205, 51.126587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278091, 42.909058, 51.252941>,  <35.415886, 42.727772, 51.328754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278091, 42.909058, 51.252941>,  <35.048435, 43.211205, 51.126587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278091, 42.909058, 51.252941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283505, 0.178529, 0.942206,
		-0.768104, -0.630517, -0.111648,
		0.574144, -0.755365, 0.315883,
		35.450336, 42.682449, 51.347706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616501, 42.967422, 51.735085>,  <35.048435, 43.211205, 51.126587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616501, 42.967422, 51.735085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974499, 42.798088, 51.791328>,  <35.189297, 42.696487, 51.825073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974499, 42.798088, 51.791328>,  <34.616501, 42.967422, 51.735085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974499, 42.798088, 51.791328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045672, 0.400525, 0.915147,
		-0.443731, -0.812631, 0.377802,
		0.894996, -0.423334, 0.140611,
		35.242996, 42.671089, 51.833511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542183, 42.559376, 52.334789>,  <34.616501, 42.967422, 51.735085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542183, 42.559376, 52.334789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935848, 42.612488, 52.287800>,  <35.172047, 42.644356, 52.259605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935848, 42.612488, 52.287800>,  <34.542183, 42.559376, 52.334789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935848, 42.612488, 52.287800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026441, 0.545296, 0.837827,
		0.175302, -0.827661, 0.533147,
		0.984159, 0.132776, -0.117475,
		35.231094, 42.652321, 52.252556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.515705, 38.189514, 36.946529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841778, 38.289257, 37.155640>,  <38.037422, 38.349102, 37.281105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841778, 38.289257, 37.155640>,  <37.515705, 38.189514, 36.946529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841778, 38.289257, 37.155640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560505, 0.112136, 0.820524,
		0.145992, -0.961894, 0.231185,
		0.815181, 0.249371, 0.522776,
		38.086334, 38.364067, 37.312473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369823, 37.857033, 37.607468>,  <37.515705, 38.189514, 36.946529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369823, 37.857033, 37.607468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639862, 38.144306, 37.674942>,  <37.801888, 38.316669, 37.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639862, 38.144306, 37.674942>,  <37.369823, 37.857033, 37.607468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639862, 38.144306, 37.674942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352773, 0.113454, 0.928805,
		0.647913, -0.686544, 0.329948,
		0.675100, 0.718182, 0.168686,
		37.842392, 38.359760, 37.725548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738289, 37.564037, 38.176685>,  <37.369823, 37.857033, 37.607468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738289, 37.564037, 38.176685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774654, 37.959427, 38.128269>,  <37.796474, 38.196659, 38.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774654, 37.959427, 38.128269>,  <37.738289, 37.564037, 38.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774654, 37.959427, 38.128269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525703, 0.150867, 0.837183,
		0.845796, -0.012479, 0.533360,
		0.090914, 0.988475, -0.121043,
		37.801929, 38.255970, 38.091957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010361, 37.748310, 38.791336>,  <37.738289, 37.564037, 38.176685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010361, 37.748310, 38.791336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868961, 38.083874, 38.625801>,  <37.784122, 38.285213, 38.526482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868961, 38.083874, 38.625801>,  <38.010361, 37.748310, 38.791336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868961, 38.083874, 38.625801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570148, 0.157503, 0.806303,
		0.741599, 0.520977, 0.422627,
		-0.353501, 0.838913, -0.413838,
		37.762913, 38.335548, 38.501648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166515, 38.308041, 39.253860>,  <38.010361, 37.748310, 38.791336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166515, 38.308041, 39.253860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859669, 38.443317, 39.035812>,  <37.675560, 38.524483, 38.904984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859669, 38.443317, 39.035812>,  <38.166515, 38.308041, 39.253860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859669, 38.443317, 39.035812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436178, 0.348142, 0.829787,
		0.470407, 0.874313, -0.119554,
		-0.767116, 0.338191, -0.545124,
		37.629536, 38.544773, 38.872276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900894, 38.815517, 39.686310>,  <38.166515, 38.308041, 39.253860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900894, 38.815517, 39.686310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594067, 38.782719, 39.431789>,  <37.409969, 38.763039, 39.279076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594067, 38.782719, 39.431789>,  <37.900894, 38.815517, 39.686310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594067, 38.782719, 39.431789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591022, 0.476169, 0.651119,
		0.249597, 0.875522, -0.413718,
		-0.767069, -0.081999, -0.636303,
		37.363945, 38.758118, 39.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628300, 39.431950, 39.641468>,  <37.900894, 38.815517, 39.686310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628300, 39.431950, 39.641468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325459, 39.191956, 39.538074>,  <37.143753, 39.047958, 39.476040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325459, 39.191956, 39.538074>,  <37.628300, 39.431950, 39.641468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325459, 39.191956, 39.538074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608594, 0.503897, 0.612944,
		-0.237511, 0.621371, -0.746650,
		-0.757101, -0.599988, -0.258482,
		37.098328, 39.011959, 39.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150185, 39.937149, 39.452808>,  <37.628300, 39.431950, 39.641468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150185, 39.937149, 39.452808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960243, 39.596180, 39.540340>,  <36.846279, 39.391598, 39.592857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960243, 39.596180, 39.540340>,  <37.150185, 39.937149, 39.452808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960243, 39.596180, 39.540340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748933, 0.521994, 0.408192,
		-0.462178, 0.029947, -0.886281,
		-0.474858, -0.852423, 0.218826,
		36.817787, 39.340454, 39.605988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425816, 40.090366, 39.324818>,  <37.150185, 39.937149, 39.452808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425816, 40.090366, 39.324818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439827, 39.763725, 39.555271>,  <36.448235, 39.567741, 39.693542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439827, 39.763725, 39.555271>,  <36.425816, 40.090366, 39.324818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439827, 39.763725, 39.555271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591232, 0.447852, 0.670726,
		-0.805740, -0.364119, -0.467118,
		0.035024, -0.816606, 0.576131,
		36.450333, 39.518742, 39.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773232, 39.909065, 39.499008>,  <36.425816, 40.090366, 39.324818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773232, 39.909065, 39.499008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981213, 39.734661, 39.792824>,  <36.105999, 39.630020, 39.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981213, 39.734661, 39.792824>,  <35.773232, 39.909065, 39.499008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981213, 39.734661, 39.792824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583825, 0.446320, 0.678194,
		-0.623539, -0.781469, -0.022490,
		0.519950, -0.436011, 0.734539,
		36.137199, 39.603859, 40.013184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297913, 39.750954, 40.051830>,  <35.773232, 39.909065, 39.499008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297913, 39.750954, 40.051830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659470, 39.726799, 40.221218>,  <35.876404, 39.712307, 40.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659470, 39.726799, 40.221218>,  <35.297913, 39.750954, 40.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659470, 39.726799, 40.221218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349731, 0.465704, 0.812901,
		-0.246301, -0.882878, 0.399828,
		0.903894, -0.060386, 0.423473,
		35.930637, 39.708683, 40.348259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190178, 39.356991, 40.715858>,  <35.297913, 39.750954, 40.051830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190178, 39.356991, 40.715858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521271, 39.577431, 40.758110>,  <35.719925, 39.709694, 40.783463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521271, 39.577431, 40.758110>,  <35.190178, 39.356991, 40.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521271, 39.577431, 40.758110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368154, 0.391302, 0.843413,
		0.423475, -0.737001, 0.526781,
		0.827727, 0.551101, 0.105623,
		35.769588, 39.742760, 40.789799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103882, 38.555614, 40.763504>,  <35.190178, 39.356991, 40.715858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103882, 38.555614, 40.763504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839676, 38.349182, 40.981632>,  <34.681152, 38.225323, 41.112511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839676, 38.349182, 40.981632>,  <35.103882, 38.555614, 40.763504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839676, 38.349182, 40.981632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153448, -0.618188, -0.770907,
		0.734964, -0.592875, 0.329131,
		-0.660516, -0.516084, 0.545322,
		34.641521, 38.194359, 41.145229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339851, 37.888729, 40.710003>,  <35.103882, 38.555614, 40.763504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339851, 37.888729, 40.710003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955967, 37.869659, 40.820774>,  <34.725636, 37.858219, 40.887238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955967, 37.869659, 40.820774>,  <35.339851, 37.888729, 40.710003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955967, 37.869659, 40.820774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184716, -0.635620, -0.749578,
		0.211756, -0.770528, 0.601203,
		-0.959708, -0.047676, 0.276926,
		34.668053, 37.855358, 40.903851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162983, 37.176403, 40.675117>,  <35.339851, 37.888729, 40.710003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162983, 37.176403, 40.675117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830868, 37.396252, 40.638149>,  <34.631599, 37.528160, 40.615967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830868, 37.396252, 40.638149>,  <35.162983, 37.176403, 40.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830868, 37.396252, 40.638149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268826, -0.540202, -0.797442,
		-0.488214, -0.637262, 0.596275,
		-0.830289, 0.549617, -0.092422,
		34.581783, 37.561138, 40.610424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554581, 36.726654, 40.615967>,  <35.162983, 37.176403, 40.675117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554581, 36.726654, 40.615967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430027, 37.072041, 40.457237>,  <34.355293, 37.279270, 40.362000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430027, 37.072041, 40.457237>,  <34.554581, 36.726654, 40.615967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430027, 37.072041, 40.457237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360497, -0.493705, -0.791389,
		-0.879250, -0.103373, 0.465009,
		-0.311385, 0.863464, -0.396825,
		34.336613, 37.331081, 40.338188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833630, 36.620098, 40.414948>,  <34.554581, 36.726654, 40.615967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833630, 36.620098, 40.414948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957005, 36.932384, 40.197559>,  <34.031029, 37.119755, 40.067127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957005, 36.932384, 40.197559>,  <33.833630, 36.620098, 40.414948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957005, 36.932384, 40.197559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490452, -0.359010, -0.794084,
		-0.815059, 0.511470, 0.272169,
		0.308439, 0.780711, -0.543466,
		34.049538, 37.166599, 40.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252441, 36.781544, 40.056507>,  <33.833630, 36.620098, 40.414948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252441, 36.781544, 40.056507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540489, 36.976452, 39.858925>,  <33.713318, 37.093399, 39.740376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540489, 36.976452, 39.858925>,  <33.252441, 36.781544, 40.056507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540489, 36.976452, 39.858925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385153, -0.311430, -0.868716,
		-0.577135, 0.815829, -0.036592,
		0.720120, 0.487273, -0.493956,
		33.756527, 37.122635, 39.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912857, 37.172047, 39.496170>,  <33.252441, 36.781544, 40.056507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912857, 37.172047, 39.496170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291866, 37.162876, 39.368622>,  <33.519272, 37.157372, 39.292091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291866, 37.162876, 39.368622>,  <32.912857, 37.172047, 39.496170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291866, 37.162876, 39.368622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314274, -0.249754, -0.915890,
		-0.058638, 0.968037, -0.243854,
		0.947520, -0.022931, -0.318874,
		33.576122, 37.155998, 39.272961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866425, 37.482559, 38.893124>,  <32.912857, 37.172047, 39.496170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866425, 37.482559, 38.893124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 37.304520, 38.887871>,  <33.439472, 37.197697, 38.884720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 37.304520, 38.887871>,  <32.866425, 37.482559, 38.893124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224579, 37.304520, 38.887871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103883, -0.180117, -0.978144,
		0.433010, 0.877178, -0.207512,
		0.895383, -0.445103, -0.013131,
		33.493195, 37.170990, 38.883930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313633, 37.901245, 38.417755>,  <32.866425, 37.482559, 38.893124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313633, 37.901245, 38.417755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440327, 37.524406, 38.461819>,  <33.516342, 37.298302, 38.488258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440327, 37.524406, 38.461819>,  <33.313633, 37.901245, 38.417755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440327, 37.524406, 38.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048811, -0.132178, -0.990023,
		0.947259, 0.308194, -0.087849,
		0.316731, -0.942096, 0.110163,
		33.535347, 37.241779, 38.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798573, 37.680786, 37.875919>,  <33.313633, 37.901245, 38.417755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798573, 37.680786, 37.875919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685287, 37.330227, 38.031723>,  <33.617317, 37.119892, 38.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685287, 37.330227, 38.031723>,  <33.798573, 37.680786, 37.875919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685287, 37.330227, 38.031723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019408, -0.411289, -0.911298,
		0.958861, -0.250530, 0.133490,
		-0.283211, -0.876399, 0.389507,
		33.600323, 37.067307, 38.148575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188763, 37.230610, 37.489403>,  <33.798573, 37.680786, 37.875919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188763, 37.230610, 37.489403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896664, 37.013042, 37.654762>,  <33.721405, 36.882504, 37.753979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896664, 37.013042, 37.654762>,  <34.188763, 37.230610, 37.489403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896664, 37.013042, 37.654762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121914, -0.491645, -0.862219,
		0.672220, -0.680030, 0.292711,
		-0.730245, -0.543915, 0.413398,
		33.677589, 36.849869, 37.778782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343685, 36.545120, 37.415146>,  <34.188763, 37.230610, 37.489403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343685, 36.545120, 37.415146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946815, 36.543549, 37.465065>,  <33.708694, 36.542606, 37.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946815, 36.543549, 37.465065>,  <34.343685, 36.545120, 37.415146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946815, 36.543549, 37.465065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098425, -0.590414, -0.801077,
		0.076833, -0.807091, 0.585406,
		-0.992174, -0.003930, 0.124801,
		33.649162, 36.542370, 37.502506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152447, 35.904331, 37.138237>,  <34.343685, 36.545120, 37.415146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152447, 35.904331, 37.138237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812946, 36.114624, 37.160923>,  <33.609245, 36.240799, 37.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812946, 36.114624, 37.160923>,  <34.152447, 35.904331, 37.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812946, 36.114624, 37.160923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402442, -0.572658, -0.714215,
		-0.343007, -0.629020, 0.697625,
		-0.848756, 0.525735, 0.056718,
		33.558319, 36.272343, 37.177937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733246, 35.327271, 37.030769>,  <34.152447, 35.904331, 37.138237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733246, 35.327271, 37.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852112, 35.346531, 37.412212>,  <33.923431, 35.358086, 37.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852112, 35.346531, 37.412212>,  <33.733246, 35.327271, 37.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852112, 35.346531, 37.412212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503519, -0.840670, 0.199356,
		0.811271, -0.539403, -0.225574,
		0.297167, 0.048151, 0.953611,
		33.941261, 35.360977, 37.698296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265289, 34.722694, 37.167053>,  <33.733246, 35.327271, 37.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265289, 34.722694, 37.167053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023457, 34.849216, 37.459473>,  <33.878357, 34.925129, 37.634926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023457, 34.849216, 37.459473>,  <34.265289, 34.722694, 37.167053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023457, 34.849216, 37.459473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461751, -0.887007, 0.001910,
		0.649053, -0.336410, 0.682319,
		-0.604580, 0.316301, 0.731052,
		33.842083, 34.944107, 37.678787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911697, 35.040981, 37.279362>,  <34.265289, 34.722694, 37.167053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911697, 35.040981, 37.279362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173958, 34.754570, 37.375221>,  <35.331314, 34.582722, 37.432735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173958, 34.754570, 37.375221>,  <34.911697, 35.040981, 37.279362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173958, 34.754570, 37.375221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109695, 0.223693, 0.968467,
		-0.747056, -0.661261, 0.068119,
		0.655648, -0.716027, 0.239648,
		35.370651, 34.539761, 37.447117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629097, 34.653008, 37.881386>,  <34.911697, 35.040981, 37.279362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629097, 34.653008, 37.881386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027683, 34.658119, 37.848194>,  <35.266834, 34.661186, 37.828281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027683, 34.658119, 37.848194>,  <34.629097, 34.653008, 37.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027683, 34.658119, 37.848194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074422, 0.322963, 0.943481,
		0.038850, -0.946325, 0.320872,
		0.996470, 0.012774, -0.082975,
		35.326626, 34.661953, 37.823303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003010, 34.219997, 38.384876>,  <34.629097, 34.653008, 37.881386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003010, 34.219997, 38.384876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300777, 34.475918, 38.308468>,  <35.479439, 34.629471, 38.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300777, 34.475918, 38.308468>,  <35.003010, 34.219997, 38.384876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300777, 34.475918, 38.308468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215245, 0.040870, 0.975704,
		0.632065, -0.767451, -0.107290,
		0.744421, 0.639803, -0.191023,
		35.524105, 34.667858, 38.251160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684242, 33.973892, 38.570560>,  <35.003010, 34.219997, 38.384876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684242, 33.973892, 38.570560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682369, 34.373371, 38.590923>,  <35.681248, 34.613056, 38.603142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682369, 34.373371, 38.590923>,  <35.684242, 33.973892, 38.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682369, 34.373371, 38.590923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424621, -0.044105, 0.904296,
		0.905359, 0.025846, -0.423859,
		-0.004678, 0.998692, 0.050905,
		35.680965, 34.672977, 38.606194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842037, 34.117668, 39.235207>,  <35.684242, 33.973892, 38.570560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842037, 34.117668, 39.235207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845097, 34.495022, 39.102562>,  <35.846931, 34.721436, 39.022976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845097, 34.495022, 39.102562>,  <35.842037, 34.117668, 39.235207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845097, 34.495022, 39.102562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220898, 0.321837, 0.920665,
		0.975267, -0.080299, -0.205929,
		0.007653, 0.943384, -0.331615,
		35.847393, 34.778038, 39.003078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443661, 34.465534, 39.501892>,  <35.842037, 34.117668, 39.235207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443661, 34.465534, 39.501892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165028, 34.739071, 39.415047>,  <35.997849, 34.903194, 39.362938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165028, 34.739071, 39.415047>,  <36.443661, 34.465534, 39.501892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165028, 34.739071, 39.415047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126651, 0.415052, 0.900939,
		0.706212, 0.600078, -0.375726,
		-0.696580, 0.683840, -0.217114,
		35.956055, 34.944221, 39.349911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687923, 35.088802, 39.754692>,  <36.443661, 34.465534, 39.501892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687923, 35.088802, 39.754692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292152, 35.137886, 39.723751>,  <36.054691, 35.167336, 39.705185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292152, 35.137886, 39.723751>,  <36.687923, 35.088802, 39.754692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292152, 35.137886, 39.723751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033820, 0.323421, 0.945651,
		0.141055, 0.938266, -0.315850,
		-0.989424, 0.122706, -0.077352,
		35.995327, 35.174698, 39.700546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411797, 35.767456, 40.088947>,  <36.687923, 35.088802, 39.754692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411797, 35.767456, 40.088947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084251, 35.537872, 40.086643>,  <35.887726, 35.400124, 40.085258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084251, 35.537872, 40.086643>,  <36.411797, 35.767456, 40.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084251, 35.537872, 40.086643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234653, 0.325580, 0.915934,
		-0.523832, 0.751378, -0.401287,
		-0.818864, -0.573958, -0.005763,
		35.838593, 35.365685, 40.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800640, 36.246109, 40.118118>,  <36.411797, 35.767456, 40.088947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800640, 36.246109, 40.118118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710014, 35.879784, 40.250759>,  <35.655640, 35.659988, 40.330341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710014, 35.879784, 40.250759>,  <35.800640, 36.246109, 40.118118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710014, 35.879784, 40.250759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287342, 0.388146, 0.875658,
		-0.930648, 0.103107, -0.351090,
		-0.226560, -0.915812, 0.331600,
		35.642048, 35.605042, 40.350239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248020, 36.338421, 40.516853>,  <35.800640, 36.246109, 40.118118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248020, 36.338421, 40.516853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361111, 35.987427, 40.671822>,  <35.428967, 35.776833, 40.764801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361111, 35.987427, 40.671822>,  <35.248020, 36.338421, 40.516853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361111, 35.987427, 40.671822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097922, 0.375381, 0.921683,
		-0.954189, -0.298521, 0.020205,
		0.282726, -0.877482, 0.387417,
		35.445930, 35.724182, 40.788048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038349, 36.400955, 41.171131>,  <35.248020, 36.338421, 40.516853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038349, 36.400955, 41.171131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273849, 36.078461, 41.194340>,  <35.415150, 35.884964, 41.208263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273849, 36.078461, 41.194340>,  <35.038349, 36.400955, 41.171131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273849, 36.078461, 41.194340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051500, 0.109045, 0.992702,
		-0.806675, -0.581462, 0.105721,
		0.588747, -0.806233, 0.058018,
		35.450474, 35.836590, 41.211746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740578, 35.958660, 41.670288>,  <35.038349, 36.400955, 41.171131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740578, 35.958660, 41.670288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135849, 35.904278, 41.641972>,  <35.373013, 35.871647, 41.624981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135849, 35.904278, 41.641972>,  <34.740578, 35.958660, 41.670288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135849, 35.904278, 41.641972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087663, 0.122420, 0.988599,
		-0.125743, -0.983122, 0.132892,
		0.988182, -0.135959, -0.070790,
		35.432304, 35.863491, 41.620735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969990, 35.480007, 42.255089>,  <34.740578, 35.958660, 41.670288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969990, 35.480007, 42.255089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322201, 35.637604, 42.149677>,  <35.533527, 35.732162, 42.086430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322201, 35.637604, 42.149677>,  <34.969990, 35.480007, 42.255089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322201, 35.637604, 42.149677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223392, 0.145422, 0.963820,
		0.418060, -0.907537, 0.040033,
		0.880524, 0.393992, -0.263531,
		35.586357, 35.755802, 42.070618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279064, 35.375862, 42.812626>,  <34.969990, 35.480007, 42.255089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279064, 35.375862, 42.812626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556480, 35.598484, 42.629654>,  <35.722931, 35.732059, 42.519871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556480, 35.598484, 42.629654>,  <35.279064, 35.375862, 42.812626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556480, 35.598484, 42.629654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368550, 0.271473, 0.889086,
		0.619008, -0.785204, -0.016842,
		0.693541, 0.556559, -0.457431,
		35.764542, 35.765453, 42.492424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863178, 35.092850, 43.006187>,  <35.279064, 35.375862, 42.812626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863178, 35.092850, 43.006187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890739, 35.484364, 42.929008>,  <35.907276, 35.719273, 42.882702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890739, 35.484364, 42.929008>,  <35.863178, 35.092850, 43.006187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890739, 35.484364, 42.929008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101044, 0.185564, 0.977423,
		0.992493, -0.086842, -0.086115,
		0.068902, 0.978787, -0.192946,
		35.911411, 35.778000, 42.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465157, 35.274036, 43.298664>,  <35.863178, 35.092850, 43.006187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465157, 35.274036, 43.298664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262699, 35.614532, 43.243240>,  <36.141224, 35.818832, 43.209988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262699, 35.614532, 43.243240>,  <36.465157, 35.274036, 43.298664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262699, 35.614532, 43.243240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238264, 0.292419, 0.926132,
		0.828882, 0.435746, -0.350828,
		-0.506147, 0.851244, -0.138559,
		36.110855, 35.869907, 43.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885815, 35.797222, 43.645294>,  <36.465157, 35.274036, 43.298664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885815, 35.797222, 43.645294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521259, 35.954433, 43.596451>,  <36.302528, 36.048759, 43.567146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521259, 35.954433, 43.596451>,  <36.885815, 35.797222, 43.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521259, 35.954433, 43.596451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049669, 0.399563, 0.915359,
		0.408549, 0.828179, -0.383676,
		-0.911384, 0.393026, -0.122106,
		36.247845, 36.072342, 43.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995834, 36.302929, 43.985241>,  <36.885815, 35.797222, 43.645294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995834, 36.302929, 43.985241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598400, 36.268650, 43.955746>,  <36.359940, 36.248085, 43.938049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598400, 36.268650, 43.955746>,  <36.995834, 36.302929, 43.985241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598400, 36.268650, 43.955746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093892, 0.262176, 0.960441,
		-0.062970, 0.961208, -0.268541,
		-0.993589, -0.085692, -0.073740,
		36.300323, 36.242943, 43.933624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712925, 36.991646, 44.201962>,  <36.995834, 36.302929, 43.985241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712925, 36.991646, 44.201962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424591, 36.714882, 44.218307>,  <36.251591, 36.548824, 44.228115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424591, 36.714882, 44.218307>,  <36.712925, 36.991646, 44.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424591, 36.714882, 44.218307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126244, 0.189035, 0.973821,
		-0.681517, 0.696802, -0.223611,
		-0.720831, -0.691905, 0.040863,
		36.208344, 36.507309, 44.230568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127319, 37.299446, 44.642742>,  <36.712925, 36.991646, 44.201962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127319, 37.299446, 44.642742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074318, 36.903114, 44.653248>,  <36.042515, 36.665314, 44.659554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074318, 36.903114, 44.653248>,  <36.127319, 37.299446, 44.642742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074318, 36.903114, 44.653248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179313, 0.050027, 0.982519,
		-0.974827, 0.125481, -0.184299,
		-0.132508, -0.990834, 0.026267,
		36.034565, 36.605865, 44.661129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371155, 37.170185, 44.992554>,  <36.127319, 37.299446, 44.642742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371155, 37.170185, 44.992554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609955, 36.850372, 45.018875>,  <35.753235, 36.658485, 45.034668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609955, 36.850372, 45.018875>,  <35.371155, 37.170185, 44.992554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609955, 36.850372, 45.018875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244211, -0.102991, 0.964237,
		-0.764164, -0.591724, -0.256741,
		0.597004, -0.799535, 0.065804,
		35.789055, 36.610512, 45.038616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102749, 36.807354, 45.492828>,  <35.371155, 37.170185, 44.992554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102749, 36.807354, 45.492828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461136, 36.636806, 45.443100>,  <35.676167, 36.534477, 45.413261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461136, 36.636806, 45.443100>,  <35.102749, 36.807354, 45.492828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461136, 36.636806, 45.443100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056758, -0.387555, 0.920097,
		-0.440487, -0.817317, -0.371435,
		0.895963, -0.426373, -0.124324,
		35.729927, 36.508896, 45.405804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999485, 36.046440, 45.744049>,  <35.102749, 36.807354, 45.492828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999485, 36.046440, 45.744049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386856, 36.140717, 45.776527>,  <35.619278, 36.197281, 45.796013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386856, 36.140717, 45.776527>,  <34.999485, 36.046440, 45.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386856, 36.140717, 45.776527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006217, -0.302783, 0.953039,
		0.249208, -0.923456, -0.291759,
		0.968430, 0.235691, 0.081198,
		35.677383, 36.211422, 45.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300957, 35.606709, 46.221661>,  <34.999485, 36.046440, 45.744049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300957, 35.606709, 46.221661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581619, 35.890068, 46.252262>,  <35.750015, 36.060081, 46.270622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581619, 35.890068, 46.252262>,  <35.300957, 35.606709, 46.221661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581619, 35.890068, 46.252262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155747, -0.257259, 0.953709,
		0.695285, -0.657261, -0.290838,
		0.701656, 0.708397, 0.076502,
		35.792114, 36.102589, 46.275211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912712, 35.333275, 46.593426>,  <35.300957, 35.606709, 46.221661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912712, 35.333275, 46.593426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926128, 35.732265, 46.618435>,  <35.934177, 35.971661, 46.633442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926128, 35.732265, 46.618435>,  <35.912712, 35.333275, 46.593426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926128, 35.732265, 46.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079945, -0.065039, 0.994675,
		0.996235, -0.028365, -0.081925,
		0.033542, 0.997480, 0.062527,
		35.936192, 36.031509, 46.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398300, 35.515358, 47.130119>,  <35.912712, 35.333275, 46.593426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398300, 35.515358, 47.130119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210964, 35.867332, 47.098194>,  <36.098564, 36.078518, 47.079041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210964, 35.867332, 47.098194>,  <36.398300, 35.515358, 47.130119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210964, 35.867332, 47.098194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142781, 0.013771, 0.989659,
		0.871937, 0.474890, 0.119189,
		-0.468338, 0.879937, -0.079812,
		36.070461, 36.131313, 47.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760860, 35.939503, 47.609516>,  <36.398300, 35.515358, 47.130119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760860, 35.939503, 47.609516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395401, 36.088055, 47.543392>,  <36.176125, 36.177185, 47.503716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395401, 36.088055, 47.543392>,  <36.760860, 35.939503, 47.609516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395401, 36.088055, 47.543392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113047, 0.158505, 0.980865,
		0.390479, 0.914850, -0.102833,
		-0.913645, 0.371383, -0.165313,
		36.121307, 36.199471, 47.493797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435623, 36.299671, 47.622810>,  <36.760860, 35.939503, 47.609516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435623, 36.299671, 47.622810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791275, 36.413280, 47.766361>,  <38.004665, 36.481445, 47.852489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791275, 36.413280, 47.766361>,  <37.435623, 36.299671, 47.622810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791275, 36.413280, 47.766361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421427, -0.202284, -0.884014,
		-0.178482, 0.937238, -0.299549,
		0.889125, 0.284019, 0.358873,
		38.058014, 36.498486, 47.874023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721771, 36.894707, 47.197128>,  <37.435623, 36.299671, 47.622810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721771, 36.894707, 47.197128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009167, 36.676300, 47.369469>,  <38.181606, 36.545254, 47.472874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009167, 36.676300, 47.369469>,  <37.721771, 36.894707, 47.197128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009167, 36.676300, 47.369469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384752, -0.204027, -0.900188,
		0.579425, 0.812549, 0.063490,
		0.718493, -0.546019, 0.430849,
		38.224716, 36.512493, 47.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497471, 37.082355, 46.912292>,  <37.721771, 36.894707, 47.197128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497471, 37.082355, 46.912292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517830, 36.699116, 47.025043>,  <38.530045, 36.469173, 47.092693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517830, 36.699116, 47.025043>,  <38.497471, 37.082355, 46.912292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517830, 36.699116, 47.025043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056492, -0.279025, -0.958621,
		0.997105, 0.064719, 0.039922,
		0.050902, -0.958100, 0.281873,
		38.533100, 36.411686, 47.109604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100349, 36.778271, 46.557323>,  <38.497471, 37.082355, 46.912292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100349, 36.778271, 46.557323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895874, 36.457600, 46.681259>,  <38.773190, 36.265198, 46.755619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895874, 36.457600, 46.681259>,  <39.100349, 36.778271, 46.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895874, 36.457600, 46.681259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215386, -0.468491, -0.856811,
		0.832041, -0.371260, 0.412159,
		-0.511192, -0.801675, 0.309839,
		38.742516, 36.217098, 46.774212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523026, 36.125172, 46.322987>,  <39.100349, 36.778271, 46.557323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523026, 36.125172, 46.322987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154064, 35.996769, 46.408905>,  <38.932690, 35.919727, 46.460457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154064, 35.996769, 46.408905>,  <39.523026, 36.125172, 46.322987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154064, 35.996769, 46.408905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044435, -0.640619, -0.766572,
		0.383673, -0.697541, 0.605171,
		-0.922400, -0.321003, 0.214793,
		38.877346, 35.900467, 46.473343>
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
